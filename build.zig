const std = @import("std");

pub fn build(b: *std.Build) void {

    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Compile a library to allow building docs 
    const natives_lib = b.addSharedLibrary(.{
        .name = "natives",
        .root_source_file = b.path("src/natives.zig"),
        .target = target,
        .optimize = optimize,
    });

    b.installDirectory(.{
        .source_dir = natives_lib.getEmittedDocs(),
        .install_dir = .prefix,
        .install_subdir = "docs",
    });
    
    // MODULE
    _ = b.addModule("shvz", .{ .root_source_file = b.path("src/shvz.zig") });
}
