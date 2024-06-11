const std = @import("std");
const utils = @import("utils.zig");
const root = @import("root.zig");

/// Create texture
///	texFileName	- texture file name, it's best to specify full texture path and use PNG textures
///	returns	internal texture id
///	Texture deletion is performed automatically when game reloads scripts
///	Can be called only in the same thread as natives
pub fn createTexture_(texFileName: [*c]const u8) c_int {
    const sym = utils.findSymbol(&root.ScriptHookVDLL, *const fn ([*c]const u8) callconv(.C) c_int, "?createTexture@@YAHPEBD@Z");
    return sym.?(texFileName);
}

/// Draw texture
///	id		-	texture id recieved from createTexture()
///	index	-	each texture can have up to 64 different instances on screen at one time
///	level	-	draw level, being used in global draw order, texture instance with least level draws first
///	time	-	how much time (ms) texture instance will stay on screen, the amount of time should be enough
///				for it to stay on screen until the next corresponding drawTexture() call
///	sizeX,Y	-	size in screen space, should be in the range from 0.0 to 1.0, e.g setting this to 0.2 means that
///				texture instance will take 20% of the screen space
///	centerX,Y -	center position in texture space, e.g. 0.5 means real texture center
///	posX,Y	-	position in screen space, [0.0, 0.0] - top left corner, [1.0, 1.0] - bottom right,
///				texture instance is positioned according to it's center
///	rotation -	should be in the range from 0.0 to 1.0
///	screenHeightScaleFactor - screen aspect ratio, used for texture size correction, you can get it using natives
///	r,g,b,a	-	color, should be in the range from 0.0 to 1.0
///
///	Texture instance draw parameters are updated each time script performs corresponding call to drawTexture()
///	You should always check your textures layout for 16:9, 16:10 and 4:3 screen aspects, for ex. in 1280x720,
///	1440x900 and 1024x768 screen resolutions, use windowed mode for this
///	Can be called only in the same thread as natives
pub fn drawTexture_(id: c_int, index: c_int, level: c_int, time: c_int, sizeX: f32, sizeY: f32, centerX: f32, centerY: f32, posX: f32, posY: f32, rotation: f32, screenHeightScaleFactor: f32, r: f32, g: f32, b: f32, a: f32) void {
    const sym = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (c_int, c_int, c_int, c_int, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32) callconv(.C) void, "?drawTexture@@YAXHHHHMMMMMMMMMMMM@Z");
    sym.?(id, index, level, time, sizeX, sizeY, centerX, centerY, posX, posY, rotation, screenHeightScaleFactor, r, g, b, a);
}

/// IDXGISwapChain::Present callback
/// Called right before the actual Present method call, render test calls don't trigger callbacks
/// When the game uses DX10 it actually uses DX11 with DX10 feature level
/// Remember that you can't call natives inside
/// void OnPresent(IDXGISwapChain *swapChain);
pub const PresentCallback = ?*const fn (?*anyopaque) callconv(.C) void;

/// Register IDXGISwapChain::Present callback
/// must be called on dll attach
pub fn presentCallbackRegister_(cb: PresentCallback) void {
    const sym = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (PresentCallback) callconv(.C) void, "?presentCallbackRegister@@YAXP6AXPEAX@Z@Z");
    sym.?(cb);
}

/// Unregister IDXGISwapChain::Present callback
/// must be called on dll detach
pub fn presentCallbackUnregister_(cb: PresentCallback) void {
    const sym = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (PresentCallback) callconv(.C) void, "?presentCallbackUnregister@@YAXP6AXPEAX@Z@Z");
    sym.?(cb);
}

/// DWORD key, WORD repeats, BYTE scanCode, BOOL isExtended, BOOL isWithAlt, BOOL wasDownBefore, BOOL isUpNow
pub const KeyboardHandler = ?*const fn (std.os.windows.DWORD, std.os.windows.WORD, std.os.windows.BYTE, std.os.windows.BOOL, std.os.windows.BOOL, std.os.windows.BOOL, std.os.windows.BOOL) callconv(.C) void;

/// Register keyboard handler
/// must be called on dll attach
pub fn keyboardHandlerRegister_(handler: KeyboardHandler) void {
    const sym = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (KeyboardHandler) callconv(.C) void, "?keyboardHandlerRegister@@YAXP6AXKGEHHHH@Z@Z");
    sym.?(handler);
}

/// Unregister keyboard handler
/// must be called on dll detach
pub fn keyboardHandlerUnegister_(handler: KeyboardHandler) void {
    const sym = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (KeyboardHandler) callconv(.C) void, "?keyboardHandlerUnregister@@YAXP6AXKGEHHHH@Z@Z");
    sym.?(handler);
}

pub fn scriptWait(ms: std.os.windows.DWORD) void {
    const sym = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (std.os.windows.DWORD) callconv(.C) void, "?scriptWait@@YAXK@Z");
    sym.?(ms);
}

pub fn scriptRegister(instance: std.os.windows.HINSTANCE, LP_SCRIPT_MAIN: *const fn () callconv(.C) void) void {
    const sym = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (std.os.windows.HINSTANCE, *const fn () callconv(.C) void) callconv(.C) void, "?scriptRegister@@YAXPEAUHINSTANCE__@@P6AXXZ@Z");
    sym.?(instance, LP_SCRIPT_MAIN);
}

pub fn scriptRegisterAdditionalThread(instance: std.os.windows.HINSTANCE, LP_SCRIPT_MAIN: *const fn () callconv(.C) void) void {
    const sym = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (std.os.windows.HINSTANCE, *const fn () callconv(.C) void) callconv(.C) void, "?scriptRegisterAdditionalThread@@YAXPEAUHINSTANCE__@@P6AXXZ@Z");
    sym.?(instance, LP_SCRIPT_MAIN);
}

pub fn scriptUnregister(LP_SCRIPT_MAIN: *const fn () callconv(.C) void) void {
    const sym = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (*const fn () callconv(.C) void) callconv(.C) void, "?scriptUnregister@@YAXP6AXXZ@Z");
    sym.?(LP_SCRIPT_MAIN);
}

pub fn scriptUnregisterInstance(instance: std.os.windows.HINSTANCE) void {
    const sym = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (std.os.windows.HINSTANCE) callconv(.C) void, "?scriptUnregister@@YAXPEAUHINSTANCE__@@@Z");
    sym.?(instance);
}


fn nativeCall() u64 {
    const call = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn () callconv(.C) u64, "?nativeCall@@YAPEA_KXZ");
    return call.?();
}

fn nativeInit(hash: u64) void {
    const call = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (u64) callconv(.C) void, "?nativeInit@@YAX_K@Z");
    call.?(hash);
}

fn nativePush64(val: u64) void {
    const call = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (u64) callconv(.C) void, "?nativePush64@@YAX_K@Z");
    call.?(val);
}

pub fn nativePush(val: anytype) void {
    if (@sizeOf(@TypeOf(val)) > @sizeOf(u64)) {
        @compileError("val is larger than u64");
    }
    var v64: u64 = 0;
    const src = std.mem.asBytes(&val);
    @memcpy(std.mem.asBytes(&v64)[0..src.len], src);
    nativePush64(v64);
}

pub fn WAIT(time: std.os.windows.DWORD) void {
    scriptWait(time);
}

pub fn TERMINATE() void {
    scriptWait(@as(std.os.windows.DWORD, @intCast(4294967295)));
}

/// Returns pointer to global variable
/// make sure that you check game version before accessing globals because
/// ids may differ between patches
pub fn getGlobalPtr(globalId: c_int) [*c]u64 {
    const sym = utils.findSymbol(root.ScriptHookVDLL.?.dynLib, *const fn (c_int) callconv(.C) [*]u64, "?getGlobalPtr@@YAPEA_KH@Z");
    return sym.?(globalId);
}

/// Get entities from internal pools
/// return value represents filled array elements count
/// can be called only in the same thread as natives
pub fn worldGetAllVehicles(arr: [*c]c_int, arrSize: c_int) c_int {
    const sym = utils.findSymbol(root.ScriptHookVDLL.?.dynLib, *const fn([*c]c_int, c_int) callconv(.C) c_int, "?worldGetAllVehicles@@YAHPEAHH@Z");
    return sym.?(arr, arrSize);
}

/// Get entities from internal pools
/// return value represents filled array elements count
/// can be called only in the same thread as natives
pub fn worldGetAllPeds(arr: [*c]c_int, arrSize: c_int) c_int {
    const sym = utils.findSymbol(root.ScriptHookVDLL.?.dynLib, *const fn([*c]c_int, c_int) callconv(.C) c_int, "?worldGetAllPeds@@YAHPEAHH@Z");
    return sym.?(arr, arrSize);
}

/// Get entities from internal pools
/// return value represents filled array elements count
/// can be called only in the same thread as natives
pub fn worldGetAllObjects(arr: [*c]c_int, arrSize: c_int) c_int {
    const sym = utils.findSymbol(root.ScriptHookVDLL.?.dynLib, *const fn([*c]c_int, c_int) callconv(.C) c_int, "?worldGetAllObjects@@YAHPEAHH@Z");
    return sym.?(arr, arrSize);
}

/// Get entities from internal pools
/// return value represents filled array elements count
/// can be called only in the same thread as natives
pub fn worldGetAllPickups(arr: [*c]c_int, arrSize: c_int) c_int {
    const sym = utils.findSymbol(root.ScriptHookVDLL.?.dynLib, *const fn([*c]c_int, c_int) callconv(.C) c_int, "?worldGetAllPickups@@YAHPEAHH@Z");
    return sym.?(arr, arrSize);
}

/// Returns base object pointer using it's script handle
/// make sure that you check game version before accessing object fields because
/// offsets may differ between patches
pub fn getScriptHandleBaseAddress(handle: c_int) [*c]std.os.windows.BYTE {
    const sym = utils.findSymbol(root.ScriptHookVDLL.?.dynLib, *const fn (c_int) callconv(.C) [*c]std.os.windows.BYTE, "?getScriptHandleBaseAddress@@YAPEAEH@Z");
    return sym.?(handle);
}

pub const eGameVersion = extern struct {
    bits: c_int = 0,

    pub const VER_1_0_335_2_STEAM: eGameVersion = .{ .bits = 0 };
    pub const VER_1_0_335_2_NOSTEAM: eGameVersion = .{ .bits = 1 };
    pub const VER_1_0_350_1_STEAM: eGameVersion = .{ .bits = 2 };
    pub const VER_1_0_350_2_NOSTEAM: eGameVersion = .{ .bits = 3 };
    pub const VER_1_0_372_2_STEAM: eGameVersion = .{ .bits = 4 };
    pub const VER_1_0_372_2_NOSTEAM: eGameVersion = .{ .bits = 5 };
    pub const VER_1_0_393_2_STEAM: eGameVersion = .{ .bits = 6 };
    pub const VER_1_0_393_2_NOSTEAM: eGameVersion = .{ .bits = 7 };
    pub const VER_1_0_393_4_STEAM: eGameVersion = .{ .bits = 8 };
    pub const VER_1_0_393_4_NOSTEAM: eGameVersion = .{ .bits = 9 };
    pub const VER_1_0_463_1_STEAM: eGameVersion = .{ .bits = 10 };
    pub const VER_1_0_463_1_NOSTEAM: eGameVersion = .{ .bits = 11 };
    pub const VER_1_0_505_2_STEAM: eGameVersion = .{ .bits = 12 };
    pub const VER_1_0_505_2_NOSTEAM: eGameVersion = .{ .bits = 13 };
    pub const VER_1_0_573_1_STEAM: eGameVersion = .{ .bits = 14 };
    pub const VER_1_0_573_1_NOSTEAM: eGameVersion = .{ .bits = 15 };
    pub const VER_1_0_617_1_STEAM: eGameVersion = .{ .bits = 16 };
    pub const VER_1_0_617_1_NOSTEAM: eGameVersion = .{ .bits = 17 };
    pub const VER_SIZE: eGameVersion = .{ .bits = 18 };
    pub const VER_UNK: eGameVersion = .{ .bits = -1 };
};

pub fn getGameVersion() eGameVersion {
    const sym = utils.findSymbol(root.ScriptHookVDLL.?.dynLib, *const fn () callconv(.C) eGameVersion, "?getGameVersion@@YA?AW4eGameVersion@@XZ");
    return sym.?();
}