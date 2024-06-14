const std = @import("std");
const shvz = @import("shvz");

// Script entry point
pub export fn scriptMain() void {
    var c_string = "Hello World".*;
    var c_text_entry = "STRING".*;

    // Start loop
    while (true) {
        // Write text on the screen.
        // All of this and more usage examples can be found in the ScriptHookV sdk: http://www.dev-c.com/gtav/scripthookv/
        shvz.natives.UI.SET_TEXT_FONT(0);
        shvz.natives.UI.SET_TEXT_SCALE(0.55, 0.55);
        shvz.natives.UI.SET_TEXT_COLOUR(255, 255, 255, 255);
        shvz.natives.UI.SET_TEXT_WRAP(0.0, 1.0);
        shvz.natives.UI.SET_TEXT_CENTRE(std.os.windows.TRUE);
        shvz.natives.UI.SET_TEXT_DROPSHADOW(0, 0, 0, 0, 0);
        shvz.natives.UI.SET_TEXT_EDGE(1, 0, 0, 0, 205);
        shvz.natives.UI._SET_TEXT_ENTRY(&c_text_entry);
        shvz.natives.UI._ADD_TEXT_COMPONENT_STRING(&c_string);
        shvz.natives.UI._DRAW_TEXT(0.5, 0.5);

        // Wait 0 seconds.
        shvz.main.WAIT(0);
    }
}

// Required for the main entry point;
pub const DLL_PROCESS_ATTACH: std.os.windows.DWORD = 1;
pub const DLL_THREAD_ATTACH: std.os.windows.DWORD = 2;
pub const DLL_THREAD_DETACH: std.os.windows.DWORD = 3;
pub const DLL_PROCESS_DETACH: std.os.windows.DWORD = 4;

/// Main entry point. Will be loaded by ScriptHookV.dll
pub export fn DllMain(hInstance: std.os.windows.HINSTANCE, reason: std.os.windows.DWORD, lpReserved: std.os.windows.LPVOID) std.os.windows.BOOL {
    _ = lpReserved;

    switch (reason) {
        DLL_PROCESS_ATTACH => {
            // shvz.init() REQUIRED
            // It handles opening the ScriptHookV.dll library and read symbols from it
            shvz.init() catch {};
            // register the script's entry point
            shvz.main.scriptRegister(hInstance, scriptMain);
        },
        DLL_PROCESS_DETACH => {
            // Unregister the script's entry point
            // Call this before shvz.deInit() to ensure taht we didn't unloaded ScriptHookV.dll library.
            shvz.main.scriptUnregister(scriptMain);
            // call shvz.deInit() REQUIRED
            // Will close the loaded ScriptHookV.dll library freeing memory
            shvz.deinit();
        },
        else => {},
    }

    return std.os.windows.TRUE;
}
