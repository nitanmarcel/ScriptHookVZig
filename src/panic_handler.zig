const std = @import("std");
const allocator = std.heap.page_allocator;

pub fn panicThread(comptime fmt: []const u8, args: anytype) noreturn {
    const cwd = std.fs.cwd();

    if (std.fmt.allocPrint(allocator, fmt, args)) |message| {
        defer allocator.free(message);
        if (std.fmt.allocPrint(allocator, "ScriptHookVZig-Panic-{any}.log", .{std.time.timestamp()})) |filename| {
            defer allocator.free(filename);
            if (cwd.createFile(filename, .{})) |f| {
                defer f.close();
                _ = f.writeAll(message) catch {};
            } else |_| {}
        } else |_| {}
    } else |_| {}

    @panic("PANIC");
}

pub fn panic(comptime fmt: []const u8, args: anytype) void {
    if (std.Thread.spawn(.{}, panicThread, .{ fmt, args })) |thread| {
        thread.detach();
    } else |_| {}
}
