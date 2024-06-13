const std = @import("std");
const logger = @import("logger.zig");
const root = @import("root");
const builtin = @import("builtin");
const main = @import("main.zig");

const logz = @import("logz");

pub var ScriptHookVINSTANCE: ?std.windows.HINSTANCE = null;


This should raise an error

// Required for the main entry point;
pub const DLL_PROCESS_ATTACH: std.os.windows.DWORD = 1;
pub const DLL_THREAD_ATTACH: std.os.windows.DWORD = 2;
pub const DLL_THREAD_DETACH: std.os.windows.DWORD = 3;
pub const DLL_PROCESS_DETACH: std.os.windows.DWORD = 4;

comptime {


    @compileError("COMPILE ERROR");
    // allow overriding dllmain
    if (!@hasDecl(root, "DllMain")) {

        if (!@hasDecl(root, "onLoad")) {
            @compileError("onLoad not defined in root module.");
        }

        @export(DllMain, .{ .name = "_DllMainCRTStartup" });
        if (!builtin.single_threaded and !builtin.link_libc) {
            // https://github.com/ziglang/zig/blob/8e155959ca95abbc243e276fa8596964f2fed3b2/lib/std/start_windows_tls.zig#L10
            if (builtin.target.cpu.arch == .x86 and builtin.zig_backend != .stage2_c) {
                asm (
                    \\ .global __tls_array
                    \\ __tls_array = 0x2C
                );
            }
        }
    }
}

/// Main entry point. Will be loaded by ScriptHookV.dll
pub export fn DllMain(hInstance: std.os.windows.HINSTANCE, reason: std.os.windows.DWORD, lpReserved: std.os.windows.LPVOID) callconv(std.os.windows.WINAPI) std.os.windows.BOOL {
    _ = lpReserved;
    ScriptHookVINSTANCE = hInstance;

    switch (reason) {
        DLL_PROCESS_ATTACH => {
            //if (@hasDecl(root, "onLoad")) {
                root.onLoad(hInstance);
            //}
        },
        DLL_PROCESS_DETACH => {
            if (@hasDecl(root, "onUnload")) {
                root.onUnload(hInstance);
            }
        },
        else => {},
    }

    return std.os.windows.TRUE;
}
