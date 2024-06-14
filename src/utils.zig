const std = @import("std");
const Logger = @import("logger.zig").Logger;

pub fn findSymbol(comptime T: type, name: [:0]const u8) ?T {
    const hModule = std.os.windows.kernel32.GetModuleHandleW(std.unicode.utf8ToUtf16LeStringLiteral("ScriptHookV.dll"));
    if (hModule == null) {
        return null;
    }
    const addr = std.os.windows.kernel32.GetProcAddress(hModule.?, name.ptr);
    if (addr == null) {
        return null;
    }
    return @as(T, @ptrCast(@alignCast(addr.?)));
}
