# ScriptHookVZig
Develop GTA V mods with the help of Zig

- [ScriptHookVZig](#scripthookvzig)
  - [Requirements](#requirements)
  - [Usage](#usage)
    - [Adding to build.zig.zon](#adding-to-buildzigzon)
    - [Adding to build.zig](#adding-to-buildzig)
    - [Your first script](#your-first-script)
  - [Logging](#logging)
    - [Setting up logging](#setting-up-logging)
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
            // Setup logging. See logging section of this README
            shvz.Logger.setLogger(..);
            // shvz.init() REQUIRED
            // It handles opening the ScriptHookV.dll library and read symbols from it
            shvz.init() catch |e| { shvz.Logger.err(e); };
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

## Logging

By default, no logs will be written anywhere, except error logs on the stderr. It's up to the developer to come with it's own implementation.

The developer can make a call to `shvz.Logger.setLogger` to assign their own methods.
I recommend using [log.zig](https://github.com/karlseguin/log.zig) since the logging system has been tested with it.
A note here, not only for logz, but for every logging system, you want to create/open files on a separate thread or the ASI loader might fail to load the library.
An example of using logz can be found in the example project.

### Setting up logging

```zig
shvz.Logger.setLogger(.{
    .logDebug = &debug,
    .logError = &err,
    .logInfo = &info,
    .logWarn = &warn,
});

fn info(message: []u8) void {}

fn debug(message: []u8) void {}

fn err(e: anyerror) void {}

fn warn(message: []u8) void {}

```

## Documentation

You can find a set of examples (C) and a readme in the [ScriptHookV SDK](http://www.dev-c.com/gtav/scripthookv/) archive and help on [gtaforums](https://gtaforums.com).

The example project in here only showcases the setup for this respective zig library.

## Thanks

- [Alexander Blade - Script Hook V](http://www.dev-c.com).
- Discord Zig - For guiding me with some things.
- [c2z](https://github.com/lassade/c2z/) - Helped in the translation of over 6000 native methods from ScriptHookV sdk.

## LICENSE

- MIT