const std = @import("std");
const allocator = std.heap.page_allocator;

fn _info(message: []u8) void {
    _ = message;
}
fn _debug(message: []u8) void {
    _ = message;
}
fn _warn(message: []u8) void {
    _ = message;
}
fn _err(err: anyerror) void {
    std.debug.print("Discarded error: {any}", .{err});
}

fn formatMessage(comptime format: []const u8, args: anytype) []u8 {
    var msg: []u8 = "";
    if (std.fmt.allocPrint(allocator, format, args)) |res| {
        msg = res;
        allocator.free(res);
    } else |err| {
        Logger.err(err);
    }
    return msg;
}

pub const Logger = struct {
    logInfo: *const fn ([]u8) void,
    logDebug: *const fn ([]u8) void,
    logError: *const fn (anyerror) void,
    logWarn: *const fn ([]u8) void,

    var _logger: Logger = getDefaultLogger();

    pub fn info(comptime format: []const u8, args: anytype) void {
        _logger.logInfo(formatMessage(format, args));
    }
    pub fn debug(comptime format: []const u8, args: anytype) void {
        _logger.logDebug(formatMessage(format, args));
    }
    pub fn err(e: anyerror) void {
        _logger.logError(e);
    }
    pub fn warn(comptime format: []const u8, args: anytype) void {
        _logger.logWarn(formatMessage(format, args));
    }

    pub fn setLogger(logger: Logger) void {
        _logger = logger;
    }

    fn getDefaultLogger() Logger {
        return Logger{
            .logInfo = &_info,
            .logDebug = &_debug,
            .logError = &_err,
            .logWarn = &_warn,
        };
    }
};
