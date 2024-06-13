const std = @import("std");
const Logger = @import("logger.zig").Logger;
const root = @import("root.zig");

pub fn findSymbol(comptime T: type, name: [:0]const u8) ?T {
    const sym = @as(T, @ptrCast(@alignCast(std.os.windows.kernel32.GetProcAddress(root.ScriptHookVINSTANCE, name))));
    if (sym == null) {
        Logger.warn("Failed to find symbol {s}", .{name});
        return null;
    }
    return sym;
}
