const std = @import("std");

const ScriptHookVDLLStruct = struct {
    dynLib: std.DynLib,
};

var ScriptHookVDLL: std.DynLib = undefined;

pub fn init() !void {
    ScriptHookVDLL = try std.DynLib.open("ScriptHookV.dll");
}

pub fn deInit() void {
    ScriptHookVDLL.close();
}
