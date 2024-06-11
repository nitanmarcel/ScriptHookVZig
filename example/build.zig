const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Shared/Dynamic library is required
    const lib = b.addSharedLibrary(.{
        .name = "example",
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    // Add ScriptHookVZig as a dependency
    const shvz_dep = b.dependency("shvz", .{});

    // Import is as a module
    lib.root_module.addImport("shvz", shvz_dep.module("shvz"));

    // https://github.com/karlseguin/log.zig

    const logz = b.dependency("logz", .{});
    lib.root_module.addImport("logz", logz.module("logz"));
    b.installArtifact(lib);
}
