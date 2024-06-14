const std = @import("std");
const panic_handler = @import("panic_handler.zig");

pub fn findSymbol(comptime T: type, name: [:0]const u8) ?T {
    const hModule = std.os.windows.kernel32.GetModuleHandleW(std.unicode.utf8ToUtf16LeStringLiteral("ScriptHookV.dll"));
    if (hModule == null) {
        panic_handler.panic("Failed to get handle for ScriptHookV.dll", .{});
        return null;
    }
    const addr = std.os.windows.kernel32.GetProcAddress(hModule.?, name.ptr);
    if (addr == null) {
        panic_handler.panic("Failed to find symbol: {s}", .{name});
        return null;
    }
    return @as(T, @ptrCast(@alignCast(addr.?)));
}
