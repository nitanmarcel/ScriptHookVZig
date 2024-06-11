const std = @import("std");

pub fn build(b: *std.Build) void {
    _ = b.addModule("shvz", .{ .root_source_file = b.path("src/shvz.zig") });
}
