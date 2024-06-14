# ScriptHookVZig
Develop GTA V mods with the help of Zig

- [ScriptHookVZig](#scripthookvzig)
  - [Requirements](#requirements)
  - [Usage](#usage)
    - [Adding to build.zig.zon](#adding-to-buildzigzon)
    - [Adding to build.zig](#adding-to-buildzig)
    - [Your first script](#your-first-script)
  - [Documentation](#documentation)
  - [Thanks](#thanks)
  - [LICENSE](#license)

## Requirements

- Zig 0.12.0=>
- [ScriptHookV v1.0.3179.0](http://www.dev-c.com/gtav/scripthookv/) and it's [requirements](https://gtaforums.com/topic/932648-script-hook-v/)

## Usage

### Adding to build.zig.zon

```zig
zig fetch git+https://github.com/nitanmarcel/ScriptHookVZig#{LastCommitHash} -- save
```

### Adding to build.zig

```zig
    // Shared/Dynamic library is required
    const lib = b.addSharedLibrary(.{
        .name = "{name}",
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    // Add ScriptHookVZig as a dependency
    const shvz_dep = b.dependency("shvz", .{});

    // Import is as a module
    lib.root_module.addImport("shvz", shvz_dep.module("shvz"));

    // https://github.com/karlseguin/log.zig
    // See logging section of this README
    const logz = b.dependency("logz", .{});
    lib.root_module.addImport("logz", logz.module("logz"));

    // Save the dll
    b.installArtifact(lib);
    // Copy bin/{name}.dll (zig-0.13.0 and above) / lib/{name}.dll (zig-0.12.0) to the GTA root folder where ScriptHookV.dll is located and rename the library extension to .asi: {name}.dll -> {name}.asi
```

### Your first script

```zig
// import the module
const shvz = @import("shvz");

// Create the script main function
pub export fn scriptMain() void {}

pub const DLL_PROCESS_ATTACH: std.os.windows.DWORD = 1;
pub const DLL_THREAD_ATTACH: std.os.windows.DWORD = 2;
pub const DLL_THREAD_DETACH: std.os.windows.DWORD = 3;
pub const DLL_PROCESS_DETACH: std.os.windows.DWORD = 4;

/// Main entry point. Will be loaded by ScriptHookV.dll
pub fn DllMain(hInstance: std.os.windows.HINSTANCE, reason: std.os.windows.DWORD, lpReserved: std.os.windows.LPVOID) std.os.windows.BOOL {
    _ = lpReserved;

    switch (reason) {
        DLL_PROCESS_ATTACH => {
            // shvz.init() REQUIRED
            // It handles opening the ScriptHookV.dll library and read symbols from it
            shvz.init() catch |e| { };
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
```

## Documentation

- You can find a set of examples (C) and a readme in the [ScriptHookV SDK](http://www.dev-c.com/gtav/scripthookv/) archive and help on [gtaforums](https://gtaforums.com).
- Some natives are documented by the [alloc8or](https://alloc8or.re/gta5/nativedb/).
- The example project in here only showcases the setup for this respective zig library.

## Thanks

- [Alexander Blade - Script Hook V](http://www.dev-c.com).
- Discord Zig - For guiding me with some things.
- [c2z](https://github.com/lassade/c2z/) - Helped in the translation of over 6000 native methods from ScriptHookV sdk.
- [alloc8or](https://github.com/alloc8or/gta5-nativedb-data) - Most of the native methods are pulled from his [gta5-nativedb-data repo](https://github.com/alloc8or/gta5-nativedb-data/blob/master/natives.json)
## LICENSE

- MIT
