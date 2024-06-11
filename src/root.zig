const std = @import("std");
const logger = @import("logger.zig");

const ScriptHookVDLLStruct = struct {
    dynLib: std.DynLib,
};

pub var ScriptHookVDLL: ?ScriptHookVDLLStruct = null;

pub fn init() !void {
    ScriptHookVDLL = .{ .dynLib = try std.DynLib.open("ScriptHookV.dll") };
}

pub fn deInit() void {
    ScriptHookVDLL.?.dynLib.close();
}
