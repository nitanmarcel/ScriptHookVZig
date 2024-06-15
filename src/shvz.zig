const std = @import("std");

/// Natives
pub const natives = @import("natives.zig");
/// Enums
pub const enums = @import("enums.zig");
/// Main
pub const main = @import("main.zig");
// Types
pub const types = @import("types.zig");

var ScriptHookVDLL: std.DynLib = undefined;

pub fn init() !void {
    ScriptHookVDLL = try std.DynLib.open("ScriptHookV.dll");
}

pub fn deinit() void {
    ScriptHookVDLL.close();
}
