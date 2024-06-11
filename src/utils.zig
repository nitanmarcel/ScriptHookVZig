const std = @import("std");
const Logger = @import("logger.zig").Logger;

pub fn findSymbol(dynLib: *std.DynLib, comptime T: type, name: [:0]const u8) ?T {
    const sym = dynLib.lookup(T, name);
    if (sym == null) {
        Logger.warn("Failed to find symbol {s}", .{name});
        return null;
    }
    return sym;
}
