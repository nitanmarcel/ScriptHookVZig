
const std = @import("std");
const types = @import("types.zig");
const nativeCaller = @import("nativeCaller.zig");
const windows = std.os.windows;

const SYSTEM = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const APP = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const AUDIO = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const BRAIN = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const CAM = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const CLOCK = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const CUTSCENE = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const DATAFILE = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const DECORATOR = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const DLC = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const ENTITY = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const EVENT = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const FILES = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const FIRE = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

pub const UI = struct {
    pub fn _0xABA17D7CE615ADBF(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(12367304027125689791, p0);
    }

    pub fn _0xBD12F8228410D9B4(p0: c_int) void {
        _ = nativeCaller.invoke1(13624224649877445044, p0);
    }

    pub fn _0x10D373323E5B9C0D() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1212439384324545549)));
    }

    pub fn _0xC65AB383CD91DF98() void {
        _ = nativeCaller.invoke0(14292933746084667288);
    }

    pub fn _0xD422FCC5F239A915() windows.BOOL {
        return nativeCaller.invoke0(15286058012351506709);
    }

    pub fn _0xB2A592B04648A9CB() types.Any {
        return nativeCaller.invoke0(12872856395699497419);
    }

    pub fn _0x9245E81072704B8A(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(10540085660267596682, p0);
    }

    pub fn _SHOW_CURSOR_THIS_FRAME() void {
        _ = nativeCaller.invoke0(12315038331679700003);
    }

    pub fn _0x8DB8CFFD58B62552(p0: types.Any) void {
        _ = nativeCaller.invoke1(10212140842084607314, p0);
    }

    pub fn _0x98215325A695E78A(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(10962134389170235274, p0);
    }

    pub fn _0x3D9ACB1EB139E702() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4439083715409864450)));
    }

    pub fn _0x632B2940C67F4EA9(scaleformHandle: c_int, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(7145850591938301609)), scaleformHandle, p1, p2, p3);
    }

    pub fn _0x6F1554B0CC2089FA(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8004397031036586490)), p0);
    }

    pub fn _0x55598D21339CB998(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6150101939890469272)), p0);
    }

    pub fn _0x25F87B30C382FCA7() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2736072222996364455)));
    }

    pub fn _0xA8FDB297A8D25FBA() void {
        _ = nativeCaller.invoke0(12177085331921854394);
    }

    pub fn _REMOVE_NOTIFICATION(handle: c_int) void {
        _ = nativeCaller.invoke1(13709960893284214311, handle);
    }

    pub fn _0xA13C11E1B5C06BFC() void {
        _ = nativeCaller.invoke0(11618180799823637500);
    }

    pub fn _0x583049884A2EEE3C() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6354659923928739388)));
    }

    pub fn _0xFDB423997FA30340() void {
        _ = nativeCaller.invoke0(18281275929582043968);
    }

    pub fn _0xE1CD1E48E025E661() void {
        _ = nativeCaller.invoke0(16270694327106528865);
    }

    pub fn _0xA9CBFD40B3FA3010() types.Any {
        return nativeCaller.invoke0(12235151267021336592);
    }

    pub fn _0xD4438C0564490E63() void {
        _ = nativeCaller.invoke0(15295222714265570915);
    }

    pub fn _0xB695E2CD0A2DA9EE() void {
        _ = nativeCaller.invoke0(13156671256699709934);
    }

    pub fn _GET_ACTIVE_NOTIFICATION_HANDLE() types.Any {
        return nativeCaller.invoke0(9382448590019246282);
    }

    pub fn _0x56C8B608CFD49854() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6253448231566743636)));
    }

    pub fn _0xADED7F5748ACAFE6() void {
        _ = nativeCaller.invoke0(12532813350900117478);
    }

    pub fn _0x92F0DA1E27DB96DC(p0: types.Any) void {
        _ = nativeCaller.invoke1(10588202547000612572, p0);
    }

    pub fn _0x17430B918701C342(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(1676196205975159618)), p0, p1, p2, p3);
    }

    pub fn _0x17AD8C9706BDD88A(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1706174414124341386)), p0);
    }

    pub fn _0x4A0C7C9BB10ABB36(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5335776666659240758)), p0);
    }

    pub fn _0xFDD85225B2DEA55E() void {
        _ = nativeCaller.invoke0(18291460208433472862);
    }

    pub fn _0xFDEC055AB549E328() void {
        _ = nativeCaller.invoke0(18297005273246196520);
    }

    pub fn _0x80FE4F3AB4E1B62A() void {
        _ = nativeCaller.invoke0(9294953794500671018);
    }

    pub fn _0xBAE4F9B97CD43B30(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(13467163360803175216, p0);
    }

    pub fn _0x317EBA71D7543F52(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(3566492953030704978)), p0, p1, p2, p3);
    }

    pub fn _SET_NOTIFICATION_TEXT_ENTRY(type_: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2316831480196236324)), type_);
    }

    pub fn _0x2B7E9A4EAAA93C89(p0: [*c]u8, p1: c_int, p2: c_int, p3: c_int, p4: windows.BOOL, picName1: [*c]u8, picName2: [*c]u8) c_int {
        return nativeCaller.invoke7(@as(u64, @intCast(3134112053357788297)), p0, p1, p2, p3, p4, picName1, picName2);
    }

    pub fn _SET_NOTIFICATION_MESSAGE(picName1: [*c]u8, picName2: [*c]u8, flash: windows.BOOL, iconType: c_int, sender: [*c]u8, subject: [*c]u8) c_int {
        return nativeCaller.invoke6(@as(u64, @intCast(2075484565200204495)), picName1, picName2, flash, iconType, sender, subject);
    }

    pub fn _0xC6F580E4C94926AC(picName1: [*c]u8, picName2: [*c]u8, p2: windows.BOOL, p3: types.Any, p4: [*c]u8, p5: [*c]u8) types.Any {
        return nativeCaller.invoke6(14336506708921755308, picName1, picName2, p2, p3, p4, p5);
    }

    pub fn _0x1E6611149DB3DB6B(picName1: [*c]u8, picName2: [*c]u8, flash: windows.BOOL, iconType: c_int, sender: [*c]u8, subject: [*c]u8, duration: f32) c_int {
        return nativeCaller.invoke7(@as(u64, @intCast(2190457049005153131)), picName1, picName2, flash, iconType, sender, subject, duration);
    }

    pub fn _SET_NOTIFICATION_MESSAGE_CLAN_TAG(picName1: [*c]u8, picName2: [*c]u8, flash: windows.BOOL, iconType: c_int, sender: [*c]u8, subject: [*c]u8, duration: f32, clanTag: [*c]u8) c_int {
        return nativeCaller.invoke8(@as(u64, @intCast(6683196358793214270)), picName1, picName2, flash, iconType, sender, subject, duration, clanTag);
    }

    pub fn _SET_NOTIFICATION_MESSAGE_CLAN_TAG_2(picName1: [*c]u8, picName2: [*c]u8, flash: windows.BOOL, iconType1: c_int, sender: [*c]u8, subject: [*c]u8, duration: f32, clanTag: [*c]u8, iconType2: c_int, p9: c_int) c_int {
        return nativeCaller.invoke10(@as(u64, @intCast(5988526260858920886)), picName1, picName2, flash, iconType1, sender, subject, duration, clanTag, iconType2, p9);
    }

    pub fn _DRAW_NOTIFICATION(blink: windows.BOOL, p1: windows.BOOL) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(3375311854262816803)), blink, p1);
    }

    pub fn _DRAW_NOTIFICATION_2(blink: windows.BOOL, p1: windows.BOOL) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(4970289087243395310)), blink, p1);
    }

    pub fn _DRAW_NOTIFICATION_3(blink: windows.BOOL, p1: windows.BOOL) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(4003278526116448320)), blink, p1);
    }

    pub fn _0xAA295B6F28BD587D(p0: [*c]u8, p1: [*c]u8, p2: c_int, p3: c_int, p4: [*c]u8) c_int {
        return nativeCaller.invoke5(12261431993475881085, p0, p1, p2, p3, p4);
    }

    pub fn _0x97C9E4E7024A8F2C(p0: windows.BOOL, p1: windows.BOOL, p2: [*c]types.Any, p3: types.Any, p4: windows.BOOL, p5: windows.BOOL, p6: types.Any, p7: types.Any, p8: types.Any, p9: types.Any) types.Any {
        return nativeCaller.invoke10(10937524850872979244, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn _0x137BC35589E34E1E(p0: windows.BOOL, p1: windows.BOOL, p2: [*c]types.Any, p3: types.Any, p4: windows.BOOL, p5: windows.BOOL, p6: types.Any, p7: [*c]types.Any, p8: types.Any, p9: types.Any, p10: types.Any) types.Any {
        return nativeCaller.invoke11(@as(u64, @intCast(1403930481009053214)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
    }

    pub fn _0x33EE12743CCD6343(p0: types.Any, p1: types.Any, p2: types.Any) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(3741948630837060419)), p0, p1, p2);
    }

    pub fn _0xC8F3AAF93D0600BF(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) types.Any {
        return nativeCaller.invoke4(14480105214373658815, p0, p1, p2, p3);
    }

    pub fn _0x7AE0589093A2E088(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) types.Any {
        return nativeCaller.invoke6(@as(u64, @intCast(8854174245385855112)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _DRAW_NOTIFICATION_4(blink: windows.BOOL, p1: windows.BOOL) c_int {
        return nativeCaller.invoke2(17303051221525879610, blink, p1);
    }

    pub fn _0x8EFCCF6EC66D85E4(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: windows.BOOL, p4: windows.BOOL) types.Any {
        return nativeCaller.invoke5(10303338122199270884, p0, p1, p2, p3, p4);
    }

    pub fn _0xB6871B0555B02996(p0: [*c]types.Any, p1: [*c]types.Any, p2: types.Any, p3: [*c]types.Any, p4: [*c]types.Any, p5: types.Any) types.Any {
        return nativeCaller.invoke6(13152510946485217686, p0, p1, p2, p3, p4, p5);
    }

    pub fn _0xD202B92CBF1D816F(type_: c_int, image: c_int, text: [*c]u8) types.Any {
        return nativeCaller.invoke3(15132861299754369391, type_, image, text);
    }

    pub fn _0xDD6CB2CCE7C2735C(type_: c_int, button: [*c]u8, text: [*c]u8) types.Any {
        return nativeCaller.invoke3(15955324172998177628, type_, button, text);
    }

    pub fn _SET_TEXT_ENTRY_2(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(13292998748565841533, p0);
    }

    pub fn _DRAW_SUBTITLE_TIMED(time: c_int, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11346543740400845814, time, p1);
    }

    pub fn _0x853648FD1063A213(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(9598939907525681683, p0);
    }

    pub fn _0x8A9BA1AB3E237613() types.Any {
        return nativeCaller.invoke0(9987754355478197779);
    }

    pub fn _SET_TEXT_ENTRY(text: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2736978246810207435)), text);
    }

    pub fn _DRAW_TEXT(x: f32, y: f32) void {
        _ = nativeCaller.invoke2(14772192000654010967, x, y);
    }

    pub fn _SET_TEXT_ENTRY_FOR_WIDTH(text: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6110974342664948907)), text);
    }

    pub fn _GET_TEXT_SCREEN_WIDTH(p0: windows.BOOL) f32 {
        return nativeCaller.invoke1(9651321592079003495, p0);
    }

    pub fn _SET_TEXT_GXT_ENTRY(entry: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5917642232252190948)), entry);
    }

    pub fn _0x9040DFB09BE75706(p0: f32, p1: f32) types.Any {
        return nativeCaller.invoke2(10394553889593972486, p0, p1);
    }

    pub fn _SET_TEXT_COMPONENT_FORMAT(inputType: [*c]u8) void {
        _ = nativeCaller.invoke1(9586393620515641873, inputType);
    }

    pub fn _DISPLAY_HELP_TEXT_FROM_STRING_LABEL(p0: types.Any, loop: windows.BOOL, beep: windows.BOOL, shape: c_int) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(2562546386151446694)), p0, loop, beep, shape);
    }

    pub fn _0x0A24DA3A41B718F5(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(730948983286339829)), p0);
    }

    pub fn _0x10BDDBFC529428DD(p0: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1206362151968843997)), p0);
    }

    pub fn BEGIN_TEXT_COMMAND_SET_BLIP_NAME(gxtentry: [*c]u8) void {
        _ = nativeCaller.invoke1(17947189971611575920, gxtentry);
    }

    pub fn END_TEXT_COMMAND_SET_BLIP_NAME(blip: types.Blip) void {
        _ = nativeCaller.invoke1(13562788859053587611, blip);
    }

    pub fn _0x23D69E0465570028(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2582425178060816424)), p0);
    }

    pub fn _0xCFDBDF5AE59BA0F4(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14977810567242948852, p0);
    }

    pub fn _0xE124FA80A759019C(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(16223367188165755292, p0);
    }

    pub fn _0xFCC75460ABA29378() void {
        _ = nativeCaller.invoke0(18214619992096412536);
    }

    pub fn _0x8F9EE5687F8EECCD(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(10348961230723411149, p0);
    }

    pub fn _0xA86911979638106F(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(12135250013684502639, p0);
    }

    pub fn ADD_TEXT_COMPONENT_INTEGER(value: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(267125040633950652)), value);
    }

    pub fn ADD_TEXT_COMPONENT_FLOAT(value: f32, decimalPlaces: c_int) void {
        _ = nativeCaller.invoke2(16707428521474840942, value, decimalPlaces);
    }

    pub fn _ADD_TEXT_COMPONENT_ITEM_STRING(labelName: [*c]u8) void {
        _ = nativeCaller.invoke1(14284527218482400231, labelName);
    }

    pub fn _0x17299B63C7683A2B(inputName: types.Hash) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1669035989767043627)), inputName);
    }

    pub fn _0x80EAD8E2E1D5D52E(blip: types.Blip) void {
        _ = nativeCaller.invoke1(9289475650368165166, blip);
    }

    pub fn _ADD_TEXT_COMPONENT_STRING(text: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7789129354908300458)), text);
    }

    pub fn ADD_TEXT_COMPONENT_SUBSTRING_TIME(timestamp: c_int, flags: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1231155517346932927)), timestamp, flags);
    }

    pub fn _0x0E4C749FF9DE9CC4(p0: c_int, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1030326645201738948)), p0, p1);
    }

    pub fn _0x761B77454205A61D(p0: [*c]u8, p1: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8510527060190799389)), p0, p1);
    }

    pub fn _ADD_TEXT_COMPONENT_STRING2(text: [*c]u8) void {
        _ = nativeCaller.invoke1(10722871427172256134, text);
    }

    pub fn _ADD_TEXT_COMPONENT_STRING3(text: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6874835027791089684)), text);
    }

    pub fn _0x39BBF623FC803EAC(p0: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4160189315227336364)), p0);
    }

    pub fn _GET_TEXT_SUBSTRING(text: [*c]u8, position: c_int, length: c_int) [*c]u8 {
        return nativeCaller.invoke3(@as(u64, @intCast(1629134525311535296)), text, position, length);
    }

    pub fn _GET_TEXT_SUBSTRING_SAFE(text: [*c]u8, position: c_int, length: c_int, maxLength: c_int) [*c]u8 {
        return nativeCaller.invoke4(12860457834078406085, text, position, length, maxLength);
    }

    pub fn _GET_TEXT_SUBSTRING_SLICE(text: [*c]u8, startPosition: c_int, endPosition: c_int) [*c]u8 {
        return nativeCaller.invoke3(14885714783822319754, text, startPosition, endPosition);
    }

    pub fn _GET_LABEL_TEXT(labelName: [*c]u8) [*c]u8 {
        return nativeCaller.invoke1(@as(u64, @intCast(8886306764405083250)), labelName);
    }

    pub fn CLEAR_PRINTS() void {
        _ = nativeCaller.invoke0(14714379805468572121);
    }

    pub fn CLEAR_BRIEF() void {
        _ = nativeCaller.invoke0(11324634911882449683);
    }

    pub fn CLEAR_ALL_HELP_MESSAGES() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7023634693725934496)));
    }

    pub fn CLEAR_THIS_PRINT(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(14947587908815894237, p0);
    }

    pub fn CLEAR_SMALL_PRINTS() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3236443508323387820)));
    }

    pub fn DOES_TEXT_BLOCK_EXIST(gxt: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2049985447167629193)), gxt);
    }

    pub fn REQUEST_ADDITIONAL_TEXT(gxt: [*c]u8, slot: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8189655201140380708)), gxt, slot);
    }

    pub fn _REQUEST_ADDITIONAL_TEXT_2(gxt: [*c]u8, slot: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6920337118842640550)), gxt, slot);
    }

    pub fn HAS_ADDITIONAL_TEXT_LOADED(additionalText: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(154353723296127160)), additionalText);
    }

    pub fn CLEAR_ADDITIONAL_TEXT(additionalText: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3033066534563939533)), additionalText, p1);
    }

    pub fn IS_STREAMING_ADDITIONAL_TEXT(additionalText: types.Any) windows.BOOL {
        return nativeCaller.invoke1(10045305044058106864, additionalText);
    }

    pub fn HAS_THIS_ADDITIONAL_TEXT_LOADED(gxt: [*c]u8, slot: c_int) windows.BOOL {
        return nativeCaller.invoke2(12519732147037193660, gxt, slot);
    }

    pub fn IS_MESSAGE_BEING_DISPLAYED() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(8756334933637345089)));
    }

    pub fn DOES_TEXT_LABEL_EXIST(gxt: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(12396662200215159378, gxt);
    }

    pub fn GET_LENGTH_OF_STRING_WITH_THIS_TEXT_LABEL(gxt: [*c]u8) types.Any {
        return nativeCaller.invoke1(9231203256139661172, gxt);
    }

    pub fn GET_LENGTH_OF_LITERAL_STRING(string: [*c]u8) c_int {
        return nativeCaller.invoke1(17307492233653037565, string);
    }

    pub fn _0x43E4111189E54F0E(p0: [*c]u8) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(4892053862256824078)), p0);
    }

    pub fn GET_STREET_NAME_FROM_HASH_KEY(hash: types.Hash) [*c]u8 {
        return nativeCaller.invoke1(15055404454487149753, hash);
    }

    pub fn IS_HUD_PREFERENCE_SWITCHED_ON() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(1815196559013396164)));
    }

    pub fn IS_RADAR_PREFERENCE_SWITCHED_ON() windows.BOOL {
        return nativeCaller.invoke0(11436418664070324990);
    }

    pub fn IS_SUBTITLE_PREFERENCE_SWITCHED_ON() windows.BOOL {
        return nativeCaller.invoke0(12496834364523667620);
    }

    pub fn DISPLAY_HUD(Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(11973181459913502762, Toggle);
    }

    pub fn _0x7669F9E39DC17063() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8532625725029707875)));
    }

    pub fn _0x402F9ED62087E898() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4625089984838756504)));
    }

    pub fn DISPLAY_RADAR(Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(11595565366281037459, Toggle);
    }

    pub fn IS_HUD_HIDDEN() windows.BOOL {
        return nativeCaller.invoke0(12133956090350482885);
    }

    pub fn IS_RADAR_HIDDEN() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(1549119181875577954)));
    }

    pub fn _0xAF754F20EB5CD51A() types.Any {
        return nativeCaller.invoke0(12643098531718812954);
    }

    pub fn SET_BLIP_ROUTE(blip: types.Blip, enabled: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5727886703621522409)), blip, enabled);
    }

    pub fn SET_BLIP_ROUTE_COLOUR(blip: types.Blip, colour: c_int) void {
        _ = nativeCaller.invoke2(9471445831088593417, blip, colour);
    }

    pub fn ADD_NEXT_MESSAGE_TO_PREVIOUS_BRIEFS(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6929187101012700101)), p0);
    }

    pub fn _0x57D760D55F54E071(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6329634270836220017)), p0);
    }

    pub fn RESPONDING_AS_TEMP(p0: f32) void {
        _ = nativeCaller.invoke1(13624169452525634359, p0);
    }

    pub fn SET_RADAR_ZOOM(p0: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(679750498325732282)), p0);
    }

    pub fn _0xF98E4B3E56AFC7B1(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(17982393093251385265, p0, p1);
    }

    pub fn _SET_RADAR_ZOOM_LEVEL_THIS_FRAME(zoomLevel: f32) void {
        _ = nativeCaller.invoke1(14662806510087023937, zoomLevel);
    }

    pub fn _0xD2049635DEB9C375() void {
        _ = nativeCaller.invoke0(15133385805985858421);
    }

    pub fn GET_HUD_COLOUR(hudColour: c_int, r: [*c]c_int, g: [*c]c_int, b: [*c]c_int, a: [*c]c_int) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(8979211922652018191)), hudColour, r, g, b, a);
    }

    pub fn _0xD68A5FF8A3A89874(r: c_int, g: c_int, b: c_int, a: c_int) void {
        _ = nativeCaller.invoke4(15459274192404912244, r, g, b, a);
    }

    pub fn _0x16A304E6CB2BFAB9(r: c_int, g: c_int, b: c_int, a: c_int) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(1631152879335897785)), r, g, b, a);
    }

    pub fn _0x1CCC708F0F850613(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2075157288053966355)), p0, p1);
    }

    pub fn _0xF314CF4F0211894E(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(17515852788994771278, p0, p1, p2, p3, p4);
    }

    pub fn FLASH_ABILITY_BAR(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(202585071617734094)), p0);
    }

    pub fn SET_ABILITY_BAR_VALUE(p0: f32, p1: f32) void {
        _ = nativeCaller.invoke2(11054465290396358750, p0, p1);
    }

    pub fn FLASH_WANTED_DISPLAY(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11640392409260190239, p0);
    }

    pub fn _0xBA8D65C1C65702E5(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(13442512345701483237, p0);
    }

    pub fn _0xDB88A37483346780(size: f32, p1: types.Any) f32 {
        return nativeCaller.invoke2(15819073411951650688, size, p1);
    }

    pub fn SET_TEXT_SCALE(p0: f32, size: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(560759698880214217)), p0, size);
    }

    pub fn SET_TEXT_COLOUR(red: c_int, green: c_int, blue: c_int, alpha: c_int) void {
        _ = nativeCaller.invoke4(13721100270610396226, red, green, blue, alpha);
    }

    pub fn SET_TEXT_CENTRE(align_: windows.BOOL) void {
        _ = nativeCaller.invoke1(13848372864960272523, align_);
    }

    pub fn SET_TEXT_RIGHT_JUSTIFY(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7727128373235543623)), toggle);
    }

    pub fn SET_TEXT_JUSTIFICATION(justifyType: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5623137247512493770)), justifyType);
    }

    pub fn SET_TEXT_WRAP(start: f32, end: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7139434236170869360)), start, end);
    }

    pub fn SET_TEXT_LEADING(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11892524688486562559, p0);
    }

    pub fn SET_TEXT_PROPORTIONAL(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(255613713711619320)), p0);
    }

    pub fn SET_TEXT_FONT(fontType: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7412968334783068634)), fontType);
    }

    pub fn SET_TEXT_DROP_SHADOW() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2063750248883895902)));
    }

    pub fn SET_TEXT_DROPSHADOW(distance: c_int, r: c_int, g: c_int, b: c_int, a: c_int) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(5070073224473199441)), distance, r, g, b, a);
    }

    pub fn SET_TEXT_OUTLINE() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2671724955187806462)));
    }

    pub fn SET_TEXT_EDGE(p0: types.Hash, r: c_int, g: c_int, b: c_int, a: c_int) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(4906112297440653222)), p0, r, g, b, a);
    }

    pub fn SET_TEXT_RENDER_ID(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6851435361686548753)), p0);
    }

    pub fn GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5976444026706024118)));
    }

    pub fn REGISTER_NAMED_RENDERTARGET(p0: [*c]u8, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(6330303121102888163)), p0, p1);
    }

    pub fn IS_NAMED_RENDERTARGET_REGISTERED(p0: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8709077765568140980)), p0);
    }

    pub fn RELEASE_NAMED_RENDERTARGET(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(16858943627931766228, p0);
    }

    pub fn LINK_NAMED_RENDERTARGET(hash: types.Hash) void {
        _ = nativeCaller.invoke1(17780385220993433389, hash);
    }

    pub fn GET_NAMED_RENDERTARGET_RENDER_ID(p0: [*c]u8) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(1901777666213403707)), p0);
    }

    pub fn IS_NAMED_RENDERTARGET_LINKED(hash: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1240548542186197656)), hash);
    }

    pub fn CLEAR_HELP(Enable: windows.BOOL) void {
        _ = nativeCaller.invoke1(10231313563422525442, Enable);
    }

    pub fn IS_HELP_MESSAGE_ON_SCREEN() windows.BOOL {
        return nativeCaller.invoke0(15768086655799919022);
    }

    pub fn _0x214CD562A939246A() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(2399527321204237418)));
    }

    pub fn IS_HELP_MESSAGE_BEING_DISPLAYED() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(5582567543607241831)));
    }

    pub fn IS_HELP_MESSAGE_FADING_OUT() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(3638590665636823913)));
    }

    pub fn _0x4A9923385BDB9DAD() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(5375366355209657773)));
    }

    pub fn _GET_BLIP_INFO_ID_ITERATOR() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1760446918642962045)));
    }

    pub fn GET_NUMBER_OF_ACTIVE_BLIPS() types.Any {
        return nativeCaller.invoke0(11114870540554220776);
    }

    pub fn GET_NEXT_BLIP_INFO_ID(blip: types.Blip) types.Blip {
        return nativeCaller.invoke1(@as(u64, @intCast(1511356407087087271)), blip);
    }

    pub fn GET_FIRST_BLIP_INFO_ID(blip: types.Blip) types.Blip {
        return nativeCaller.invoke1(@as(u64, @intCast(2012513321047894559)), blip);
    }

    pub fn GET_BLIP_INFO_ID_COORD(p0: types.Any) types.Vector3 {
        return nativeCaller.invoke1(18049441090438847753, p0);
    }

    pub fn GET_BLIP_INFO_ID_DISPLAY(blip: types.Blip) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(2175592009778191419)), blip);
    }

    pub fn GET_BLIP_INFO_ID_TYPE(blip: types.Blip) types.Any {
        return nativeCaller.invoke1(13734581770745051035, blip);
    }

    pub fn GET_BLIP_INFO_ID_ENTITY_INDEX(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(5450730304715021356)), p0);
    }

    pub fn GET_BLIP_INFO_ID_PICKUP_INDEX(p0: types.Any) types.Any {
        return nativeCaller.invoke1(11198067315515970434, p0);
    }

    pub fn GET_BLIP_FROM_ENTITY(p0: types.Entity) types.Blip {
        return nativeCaller.invoke1(13586724326735280104, p0);
    }

    pub fn ADD_BLIP_FOR_RADIUS(x: f32, y: f32, z: f32, radius: f32) types.Blip {
        return nativeCaller.invoke4(@as(u64, @intCast(5080497408466962842)), x, y, z, radius);
    }

    pub fn ADD_BLIP_FOR_ENTITY(entity: types.Entity) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(6691947479759912167)), entity);
    }

    pub fn ADD_BLIP_FOR_PICKUP(p0: types.Any) types.Any {
        return nativeCaller.invoke1(13705460156381510966, p0);
    }

    pub fn ADD_BLIP_FOR_COORD(x: f32, y: f32, z: f32) types.Blip {
        return nativeCaller.invoke3(@as(u64, @intCast(6486199071725192374)), x, y, z);
    }

    pub fn _0x72DD432F3CDFC0EE(p0: f32, p1: f32, p2: f32, p3: f32, p4: c_int) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(8276845560340660462)), p0, p1, p2, p3, p4);
    }

    pub fn _0x60734CC207C9833C(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6949983046200820540)), p0);
    }

    pub fn SET_BLIP_COORDS(p0: types.Blip, p1: f32, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(12550114335291799133, p0, p1, p2, p3);
    }

    pub fn GET_BLIP_COORDS(p0: types.Any) types.Vector3 {
        return nativeCaller.invoke1(@as(u64, @intCast(6371184173552343406)), p0);
    }

    pub fn SET_BLIP_SPRITE(blip: types.Blip, spriteId: c_int) void {
        _ = nativeCaller.invoke2(16101307653538016687, blip, spriteId);
    }

    pub fn GET_BLIP_SPRITE(blip: types.Blip) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(2290211554291153999)), blip);
    }

    pub fn SET_BLIP_NAME_FROM_TEXT_FILE(blip: types.Blip, blipname: [*c]u8) void {
        _ = nativeCaller.invoke2(16906794343532668804, blip, blipname);
    }

    pub fn SET_BLIP_NAME_TO_PLAYER_NAME(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1332475816669390499)), p0, p1);
    }

    pub fn SET_BLIP_ALPHA(blip: types.Blip, alpha: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5043916472936335156)), blip, alpha);
    }

    pub fn GET_BLIP_ALPHA(blip: types.Blip) c_int {
        return nativeCaller.invoke1(10885024991924373637, blip);
    }

    pub fn SET_BLIP_FADE(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3093567789283289484)), p0, p1, p2);
    }

    pub fn SET_BLIP_ROTATION(blip: types.Blip, rotation: c_int) void {
        _ = nativeCaller.invoke2(17903642289297440622, blip, rotation);
    }

    pub fn SET_BLIP_FLASH_TIMER(blip: types.Blip, duration: c_int) void {
        _ = nativeCaller.invoke2(15261977662507091916, blip, duration);
    }

    pub fn SET_BLIP_FLASH_INTERVAL(blip: types.Blip, p1: types.Any) void {
        _ = nativeCaller.invoke2(12272831464067893886, blip, p1);
    }

    pub fn SET_BLIP_COLOUR(blip: types.Blip, color: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(276965922061511550)), blip, color);
    }

    pub fn SET_BLIP_SECONDARY_COLOUR(blip: types.Blip, r: f32, g: f32, b: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(1479754035503172075)), blip, r, g, b);
    }

    pub fn GET_BLIP_COLOUR(blip: types.Blip) c_int {
        return nativeCaller.invoke1(16101105946780988199, blip);
    }

    pub fn GET_BLIP_HUD_COLOUR(blip: types.Blip) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(8258298928391301870)), blip);
    }

    pub fn IS_BLIP_SHORT_RANGE(blip: types.Blip) windows.BOOL {
        return nativeCaller.invoke1(15735444228579637542, blip);
    }

    pub fn IS_BLIP_ON_MINIMAP(blip: types.Blip) windows.BOOL {
        return nativeCaller.invoke1(16437194366933105191, blip);
    }

    pub fn _0xDD2238F57B977751(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(15934361058581903185, p0);
    }

    pub fn _0x54318C915D27E4CE(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6066784729005810894)), p0, p1);
    }

    pub fn SET_BLIP_HIGH_DETAIL(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(16310080455802146491, p0, p1);
    }

    pub fn SET_BLIP_AS_MISSION_CREATOR_BLIP(blip: types.Blip, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2642488418240536533)), blip, toggle);
    }

    pub fn IS_MISSION_CREATOR_BLIP(blip: types.Blip) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2807039936679482173)), blip);
    }

    pub fn DISABLE_BLIP_NAME_FOR_VAR() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6669998785878170356)));
    }

    pub fn _0x4167EFE0527D706E() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4712999281802178670)));
    }

    pub fn _0xF1A6C18B35BCADE6(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17412817812920774118, p0);
    }

    pub fn SET_BLIP_FLASHES(blip: types.Blip, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(12773706319605124670, blip, toggle);
    }

    pub fn SET_BLIP_FLASHES_ALTERNATE(blip: types.Blip, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3354500681329135825)), blip, toggle);
    }

    pub fn IS_BLIP_FLASHING(blip: types.Blip) windows.BOOL {
        return nativeCaller.invoke1(11953714324508692208, blip);
    }

    pub fn SET_BLIP_AS_SHORT_RANGE(blip: types.Blip, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(13730319670167370610, blip, p1);
    }

    pub fn SET_BLIP_SCALE(blip: types.Blip, scale: f32) void {
        _ = nativeCaller.invoke2(15242226327205421655, blip, scale);
    }

    pub fn SET_BLIP_PRIORITY(blip: types.Blip, p1: types.Any) void {
        _ = nativeCaller.invoke2(12582997914019671161, blip, p1);
    }

    pub fn SET_BLIP_DISPLAY(blip: types.Blip, p1: c_int) void {
        _ = nativeCaller.invoke2(10388030775920576808, blip, p1);
    }

    pub fn SET_BLIP_CATEGORY(blip: types.Blip, index: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2543651177335553434)), blip, index);
    }

    pub fn REMOVE_BLIP(blip: [*c]types.Blip) void {
        _ = nativeCaller.invoke1(9702532981073061341, blip);
    }

    pub fn SET_BLIP_AS_FRIENDLY(blip: types.Blip, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8029681744942738100)), blip, toggle);
    }

    pub fn PULSE_BLIP(blip: types.Blip) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8371470239498874739)), blip);
    }

    pub fn SHOW_NUMBER_ON_BLIP(blip: types.Blip, number: c_int) void {
        _ = nativeCaller.invoke2(11799628222247225526, blip, number);
    }

    pub fn HIDE_NUMBER_ON_BLIP(blip: types.Blip) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5993446006920315208)), blip);
    }

    pub fn _0x75A16C3DA34F1245(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8476174985676657221)), p0, p1);
    }

    pub fn _0x74513EA3E505181E(blip: types.Blip, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8381549255156111390)), blip, toggle);
    }

    pub fn _SET_BLIP_SHOW_HEADING_INDICATOR(blip: types.Blip, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6898569612438869215)), blip, toggle);
    }

    pub fn _0xB81656BC81FE24D1(blip: types.Blip, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(13264885120101131473, blip, toggle);
    }

    pub fn _0x23C3EB807312F01A(blip: types.Blip, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2577162348705017882)), blip, toggle);
    }

    pub fn _0xDCFB5D4DB8BF367E(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(15923423495891924606, p0, p1);
    }

    pub fn _0xC4278F70131BAA6D(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(14134423667045280365, p0, p1);
    }

    pub fn _0x2B6D467DAB714E8D(blip: types.Blip, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3129234821653548685)), blip, toggle);
    }

    pub fn _0x25615540D894B814(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2693527789144160276)), p0, p1);
    }

    pub fn DOES_BLIP_EXIST(blip: types.Blip) windows.BOOL {
        return nativeCaller.invoke1(12023247411461470170, blip);
    }

    pub fn SET_WAYPOINT_OFF() void {
        _ = nativeCaller.invoke0(12098043896530100863);
    }

    pub fn _0xD8E694757BCEA8E9() void {
        _ = nativeCaller.invoke0(15629342789145110761);
    }

    pub fn REFRESH_WAYPOINT() void {
        _ = nativeCaller.invoke0(9365823934806974673);
    }

    pub fn IS_WAYPOINT_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(2148768492990438821)));
    }

    pub fn SET_NEW_WAYPOINT(x: f32, y: f32) void {
        _ = nativeCaller.invoke2(18321547689007051516, x, y);
    }

    pub fn SET_BLIP_BRIGHT(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(12827255829962061956, p0, p1);
    }

    pub fn SET_BLIP_SHOW_CONE(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1374300214002618081)), p0, p1);
    }

    pub fn _0xC594B315EDF2D4AF(ped: types.Ped) void {
        _ = nativeCaller.invoke1(14237201228792779951, ped);
    }

    pub fn SET_MINIMAP_COMPONENT(p0: types.Any, p1: types.Any, p2: types.Any) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(8478484834750160550)), p0, p1, p2);
    }

    pub fn _0x60E892BA4F5BDCA4() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6982992551130946724)));
    }

    pub fn GET_MAIN_PLAYER_BLIP_ID() types.Blip {
        return nativeCaller.invoke0(15912603139834708730);
    }

    pub fn _0x41350B4FC28E3941(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4698674223425403201)), p0);
    }

    pub fn HIDE_LOADING_ON_FADE_THIS_FRAME() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5405183579162698895)));
    }

    pub fn SET_RADAR_AS_INTERIOR_THIS_FRAME(interior: types.Hash, x: f32, y: f32, z: c_int, p4: c_int) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(6478190164825072410)), interior, x, y, z, p4);
    }

    pub fn SET_RADAR_AS_EXTERIOR_THIS_FRAME() void {
        _ = nativeCaller.invoke0(16725099261547195777);
    }

    pub fn _SET_PLAYER_BLIP_POSITION_THIS_FRAME(x: f32, y: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8638710128135168463)), x, y);
    }

    pub fn _0x9049FE339D5F6F6F() types.Any {
        return nativeCaller.invoke0(10397120712398565231);
    }

    pub fn _DISABLE_RADAR_THIS_FRAME() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6898077731183497417)));
    }

    pub fn _0x20FE7FDFEEAD38C0() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2377478253056964800)));
    }

    pub fn _CENTER_PLAYER_ON_RADAR_THIS_FRAME() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7860118202149457749)));
    }

    pub fn SET_WIDESCREEN_FORMAT(p0: types.Any) void {
        _ = nativeCaller.invoke1(14100906360598409457, p0);
    }

    pub fn DISPLAY_AREA_NAME(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2840483713975006840)), toggle);
    }

    pub fn DISPLAY_CASH(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(10871347368796752055, toggle);
    }

    pub fn _0x170F541E1CADD1DE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1661639275829907934)), p0);
    }

    pub fn _SET_SINGLEPLAYER_HUD_CASH(pocketcash: c_int, bankcash: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(536737010038877744)), pocketcash, bankcash);
    }

    pub fn DISPLAY_AMMO_THIS_FRAME(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11954677266752150613, p0);
    }

    pub fn DISPLAY_SNIPER_SCOPE_THIS_FRAME() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8291498716230143586)));
    }

    pub fn HIDE_HUD_AND_RADAR_THIS_FRAME() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8187532053442985248)));
    }

    pub fn _0xE67C6DFD386EA5E7(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(16608270460176475623, p0);
    }

    pub fn _0xC2D15BEF167E27BC() void {
        _ = nativeCaller.invoke0(14038102595923224508);
    }

    pub fn _0x95CF81BD06EE1887() void {
        _ = nativeCaller.invoke0(10794989480695437447);
    }

    pub fn SET_MULTIPLAYER_BANK_CASH() void {
        _ = nativeCaller.invoke0(15934216371787123978);
    }

    pub fn REMOVE_MULTIPLAYER_BANK_CASH() void {
        _ = nativeCaller.invoke0(14395325864471424464);
    }

    pub fn SET_MULTIPLAYER_HUD_CASH(p0: c_int, p1: c_int) void {
        _ = nativeCaller.invoke2(18238771464696018980, p0, p1);
    }

    pub fn REMOVE_MULTIPLAYER_HUD_CASH() void {
        _ = nativeCaller.invoke0(10848932969399459530);
    }

    pub fn HIDE_HELP_TEXT_THIS_FRAME() void {
        _ = nativeCaller.invoke0(15305804375043908229);
    }

    pub fn DISPLAY_HELP_TEXT_THIS_FRAME(message: [*c]u8, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(10812192697039119388, message, p1);
    }

    pub fn _SHOW_WEAPON_WHEEL(forcedShow: windows.BOOL) void {
        _ = nativeCaller.invoke1(16948538893060047271, forcedShow);
    }

    pub fn _0x0AFC4AF510774B47() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(791590050914061127)));
    }

    pub fn _0xA48931185F0536FE() types.Hash {
        return nativeCaller.invoke0(11856061474772694782);
    }

    pub fn _0x72C1056D678BB7D8(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8268896358275725272)), p0);
    }

    pub fn _0xA13E93403F26C812(p0: types.Any) types.Any {
        return nativeCaller.invoke1(11618885992809154578, p0);
    }

    pub fn _0x14C9FDCC41F81F63(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1498007404799336291)), p0);
    }

    pub fn SET_GPS_FLAGS(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6576389480415547739)), p0, p1);
    }

    pub fn CLEAR_GPS_FLAGS() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2420798229104011312)));
    }

    pub fn _0x1EAC5F91BCBC5073(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2210246596673425523)), p0);
    }

    pub fn CLEAR_GPS_RACE_TRACK() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8837668642037204363)));
    }

    pub fn _0xDB34E8D56FC13B08(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(15795505796495784712, p0, p1, p2);
    }

    pub fn _0x311438A071DD9B1A(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3536513869148953370)), p0, p1, p2);
    }

    pub fn _0x900086F371220B6F(p0: windows.BOOL, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(10376441921594854255, p0, p1, p2);
    }

    pub fn _0xE6DE0561D9232A64() void {
        _ = nativeCaller.invoke0(16635739991366117988);
    }

    pub fn _0x3D3D15AF7BCAAF83(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4412707053333294979)), p0, p1, p2);
    }

    pub fn _0xA905192A6781C41B(x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke3(12179168437209252891, x, y, z);
    }

    pub fn _0x3DDA37128DD1ACA8(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4456935334064794792)), p0);
    }

    pub fn _0x67EEDEA1B9BAFD94() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7489168016550854036)));
    }

    pub fn CLEAR_GPS_PLAYER_WAYPOINT() void {
        _ = nativeCaller.invoke0(18397125075908836775);
    }

    pub fn SET_GPS_FLASHES(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3606554328064200347)), toggle);
    }

    pub fn _0x7B21E0BB01E8224A(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8872619834692084298)), p0);
    }

    pub fn FLASH_MINIMAP_DISPLAY() void {
        _ = nativeCaller.invoke0(17500275170792791002);
    }

    pub fn _0x6B1DE27EE78E6A19(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7718574371061525017)), p0);
    }

    pub fn TOGGLE_STEALTH_RADAR(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7709594747874660551)), toggle);
    }

    pub fn KEY_HUD_COLOUR(p0: windows.BOOL, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1899630041123425491)), p0, p1);
    }

    pub fn SET_MISSION_NAME(p0: windows.BOOL, name: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6856990973919262511)), p0, name);
    }

    pub fn _0xE45087D85F468BC2(p0: windows.BOOL, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(16451798802165566402, p0, p1);
    }

    pub fn _0x817B86108EB94E51(p0: windows.BOOL, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any, p4: [*c]types.Any, p5: [*c]types.Any, p6: [*c]types.Any, p7: [*c]types.Any, p8: [*c]types.Any) void {
        _ = nativeCaller.invoke9(9330198458700222033, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn SET_MINIMAP_BLOCK_WAYPOINT(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6411681030037084124)), p0);
    }

    pub fn _SET_DRAW_MAP_VISIBLE(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(10462870595005426007, toggle);
    }

    pub fn _0xF8DEE0A5600CBB93(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17933017767121566611, p0);
    }

    pub fn _0xE0130B41D3CF4574() types.Any {
        return nativeCaller.invoke0(16146261466407716212);
    }

    pub fn _0x6E31B91145873922(p0: f32, p1: f32, p2: f32) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(7940331101862967586)), p0, p1, p2);
    }

    pub fn _0x62E849B7EB28E770(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7127027464586979184)), p0);
    }

    pub fn _0x0923DBF87DFF735E(x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(658611830838489950)), x, y, z);
    }

    pub fn _0x71BDB63DBAF8DA59(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8195907273130302041)), p0);
    }

    pub fn _0x35EDD5B2E3FF01C0() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3885997017796641216)));
    }

    pub fn LOCK_MINIMAP_ANGLE(angle: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2999307995311693915)), angle);
    }

    pub fn UNLOCK_MINIMAP_ANGLE() void {
        _ = nativeCaller.invoke0(9332379123252997690);
    }

    pub fn LOCK_MINIMAP_POSITION(x: f32, y: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1331350670911596351)), x, y);
    }

    pub fn UNLOCK_MINIMAP_POSITION() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4509194413786734384)));
    }

    pub fn _SET_MINIMAP_ATTITUDE_INDICATOR_LEVEL(p0: f32, p1: types.Any) void {
        _ = nativeCaller.invoke2(15132644501924499565, p0, p1);
    }

    pub fn _0x3F5CC444DCAAA8F2(p0: types.Any, p1: types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4565739922285832434)), p0, p1, p2);
    }

    pub fn _0x975D66A0BC17064C(p0: types.Any) void {
        _ = nativeCaller.invoke1(10906986713097635404, p0);
    }

    pub fn _0x06A320535F5F0248(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(478261527885840968)), p0);
    }

    pub fn _SET_RADAR_BIGMAP_ENABLED(toggleBigMap: windows.BOOL, showFullMap: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2530054912743808399)), toggleBigMap, showFullMap);
    }

    pub fn IS_HUD_COMPONENT_ACTIVE(id: c_int) windows.BOOL {
        return nativeCaller.invoke1(13568394209825573901, id);
    }

    pub fn IS_SCRIPTED_HUD_COMPONENT_ACTIVE(id: c_int) windows.BOOL {
        return nativeCaller.invoke1(15929248037438029669, id);
    }

    pub fn HIDE_SCRIPTED_HUD_COMPONENT_THIS_FRAME(id: c_int) void {
        _ = nativeCaller.invoke1(16389941104658275348, id);
    }

    pub fn _0x09C0403ED9A751C2(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(702632180553568706)), p0);
    }

    pub fn HIDE_HUD_COMPONENT_THIS_FRAME(id: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7495895348773880760)), id);
    }

    pub fn SHOW_HUD_COMPONENT_THIS_FRAME(id: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(814573165291300452)), id);
    }

    pub fn _0xA4DEDE28B1814289() void {
        _ = nativeCaller.invoke0(11880177133408043657);
    }

    pub fn RESET_RETICULE_VALUES() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1330863033260894704)));
    }

    pub fn RESET_HUD_COMPONENT_VALUES(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4974561028181810445)), p0);
    }

    pub fn SET_HUD_COMPONENT_POSITION(p0: types.Any, p1: f32, p2: f32) void {
        _ = nativeCaller.invoke3(12302461265122524397, p0, p1, p2);
    }

    pub fn GET_HUD_COMPONENT_POSITION(p0: types.Any) types.Vector3 {
        return nativeCaller.invoke1(@as(u64, @intCast(2467029878600636413)), p0);
    }

    pub fn _0xB57D8DD645CFA2CF() void {
        _ = nativeCaller.invoke0(13077764844387541711);
    }

    pub fn _0xF9904D11F1ACBEC3(x: f32, y: f32, z: f32, p3: [*c]types.Any, p4: [*c]types.Any) types.Any {
        return nativeCaller.invoke5(17982958051554803395, x, y, z, p3, p4);
    }

    pub fn _0x523A590C1A3CC0D3() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5925146168273977555)));
    }

    pub fn _0xEE4C0E6DBC6F2C6F() void {
        _ = nativeCaller.invoke0(17171115343732485231);
    }

    pub fn _0x9135584D09A3437E() types.Any {
        return nativeCaller.invoke0(10463366397162636158);
    }

    pub fn _0x2432784ACA090DA4(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2608279396813442468)), p0);
    }

    pub fn _0x7679CC1BCEBE3D4C(p0: types.Any, p1: f32, p2: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(8537078988462243148)), p0, p1, p2);
    }

    pub fn _0x784BA7E0ECEB4178(p0: types.Any, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8668206492294005112)), p0, x, y, z);
    }

    pub fn _0xB094BC1DB4018240(p0: types.Any, p1: types.Any, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(12724001682988565056, p0, p1, p2, p3);
    }

    pub fn _0x788E7FD431BD67F1(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(8687021280588556273)), p0, p1, p2, p3, p4, p5);
    }

    pub fn CLEAR_FLOATING_HELP(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5766949786331905786)), p0, p1);
    }

    pub fn _0x6DD05E9D83EFA4C9(headDisplayId: c_int, username: [*c]u8, pointedClanTag: windows.BOOL, isRockstarClan: windows.BOOL, clanTag: [*c]u8, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(7912928575906358473)), headDisplayId, username, pointedClanTag, isRockstarClan, clanTag, p5, p6, p7, p8);
    }

    pub fn _0x6E0EB3EB47C8D7AA() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(7930473816949053354)));
    }

    pub fn _CREATE_HEAD_DISPLAY(ped: types.Ped, username: [*c]u8, pointedClanTag: windows.BOOL, isRockstarClan: windows.BOOL, clanTag: [*c]u8, p5: types.Any) c_int {
        return nativeCaller.invoke6(13830522785006309397, ped, username, pointedClanTag, isRockstarClan, clanTag, p5);
    }

    pub fn _0x31698AA80E0223F8(headDisplayId: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3560529434807247864)), headDisplayId);
    }

    pub fn _HAS_HEAD_DISPLAY_LOADED(headDisplayId: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5661761929850846502)), headDisplayId);
    }

    pub fn ADD_TREVOR_RANDOM_MODIFIER(headDisplayId: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6438829671920624025)), headDisplayId);
    }

    pub fn _SET_HEAD_DISPLAY_FLAG(headDisplayId: c_int, sprite: c_int, enabled: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7186467011688527520)), headDisplayId, sprite, enabled);
    }

    pub fn _0xEE76FF7E6A0166B0(headDisplayId: c_int, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(17183202346688145072, headDisplayId, p1);
    }

    pub fn _0xA67F9C46D612B6F1(headDisplayId: c_int, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11997479760391485169, headDisplayId, p1);
    }

    pub fn _0x613ED644950626AE(headDisplayId: c_int, p1: types.Any, flag: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7007273660281398958)), headDisplayId, p1, flag);
    }

    pub fn _0x3158C77A7E888AB4(headDisplayId: c_int, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3555811234731821748)), headDisplayId, p1);
    }

    pub fn _0xD48FE545CD46F857(headDisplayId: c_int, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(15316712945669830743, headDisplayId, p1, p2);
    }

    pub fn _SET_HEAD_DISPLAY_WANTED(headDisplayId: c_int, wantedlvl: c_int) void {
        _ = nativeCaller.invoke2(14925648428786555331, headDisplayId, wantedlvl);
    }

    pub fn _SET_HEAD_DISPLAY_STRING(headDisplayId: c_int, string: [*c]u8) void {
        _ = nativeCaller.invoke2(16042587305586342212, headDisplayId, string);
    }

    pub fn _0xEB709A36958ABE0D(headDisplayId: c_int) windows.BOOL {
        return nativeCaller.invoke1(16965229355532467725, headDisplayId);
    }

    pub fn _0x7B7723747CCB55B6(headDisplayId: c_int, string: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8896618572110583222)), headDisplayId, string);
    }

    pub fn _0x01A358D9128B7A86() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(118035704584043142)));
    }

    pub fn GET_CURRENT_WEBSITE_ID() c_int {
        return nativeCaller.invoke0(10940503084174461869);
    }

    pub fn _0xE3B05614DCE1D014(p0: types.Any) types.Any {
        return nativeCaller.invoke1(16406708090115837972, p0);
    }

    pub fn _0xB99C4E4D9499DF29(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(13374651088496090921, p0);
    }

    pub fn _0xAF42195A42C63BBA() types.Any {
        return nativeCaller.invoke0(12628684180558330810);
    }

    pub fn SET_WARNING_MESSAGE(entryLine1: [*c]u8, instructionalKey: c_int, entryLine2: [*c]u8, p3: windows.BOOL, p4: types.Any, p5: [*c]types.Any, p6: [*c]types.Any, background: windows.BOOL) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(8869688505341545844)), entryLine1, instructionalKey, entryLine2, p3, p4, p5, p6, background);
    }

    pub fn _SET_WARNING_MESSAGE_2(entryHeader: [*c]u8, entryLine1: [*c]u8, instructionalKey: c_int, entryLine2: [*c]u8, p4: windows.BOOL, p5: types.Any, p6: [*c]types.Any, p7: [*c]types.Any, background: windows.BOOL) void {
        _ = nativeCaller.invoke9(15868657717162190295, entryHeader, entryLine1, instructionalKey, entryLine2, p4, p5, p6, p7, background);
    }

    pub fn _SET_WARNING_MESSAGE_3(entryHeader: [*c]u8, entryLine1: [*c]u8, instructionalKey: types.Any, entryLine2: [*c]u8, p4: windows.BOOL, p5: types.Any, p6: types.Any, p7: [*c]types.Any, p8: [*c]types.Any, p9: windows.BOOL) void {
        _ = nativeCaller.invoke10(@as(u64, @intCast(8077515204439881131)), entryHeader, entryLine1, instructionalKey, entryLine2, p4, p5, p6, p7, p8, p9);
    }

    pub fn _0x0C5A80A9E096D529(p0: types.Any, p1: [*c]types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(890165343464903977)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _0xDAF87174BE7454FF(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(15778486040717972735, p0);
    }

    pub fn _0x6EF54AB721DC6242() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7995378863873745474)));
    }

    pub fn _0xE18B138FABC53103() windows.BOOL {
        return nativeCaller.invoke0(16252105188079644931);
    }

    pub fn _0x7792424AA0EAC32E() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8616021925407933230)));
    }

    pub fn _0x5354C5BA2EA868A4(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6004641606629091492)), p0);
    }

    pub fn _0x1EAE6DD17B7A5EFA(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2210825213572701946)), p0);
    }

    pub fn _0x551DF99658DB6EE8(p0: f32, p1: f32, p2: f32) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(6133332691679669992)), p0, p1, p2);
    }

    pub fn _0x2708FC083123F9FF() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2812775079407254015)));
    }

    pub fn _0x1121BFA1A1A522A8() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1234478473798820520)));
    }

    pub fn _0x82CEDC33687E1F50(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(9425713183487565648, p0);
    }

    pub fn _0x211C4EF450086857() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2385868713821235287)));
    }

    pub fn _0xBF4F34A85CA2970C() void {
        _ = nativeCaller.invoke0(13785294882117687052);
    }

    pub fn ACTIVATE_FRONTEND_MENU(menuhash: types.Hash, p1: windows.BOOL, p2: c_int) void {
        _ = nativeCaller.invoke3(17222278909183986811, menuhash, p1, p2);
    }

    pub fn RESTART_FRONTEND_MENU(menuHash: types.Hash, p1: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1184567402074819008)), menuHash, p1);
    }

    pub fn _0x2309595AD6145265() types.Hash {
        return nativeCaller.invoke0(@as(u64, @intCast(2524647312791458405)));
    }

    pub fn SET_PAUSE_MENU_ACTIVE(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(16089105643441842639, toggle);
    }

    pub fn DISABLE_FRONTEND_THIS_FRAME() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7869026217671979238)));
    }

    pub fn _0xBA751764F0821256() void {
        _ = nativeCaller.invoke0(13435670785628967510);
    }

    pub fn _0xCC3FDDED67BCFC63() void {
        _ = nativeCaller.invoke0(14717726118987496547);
    }

    pub fn SET_FRONTEND_ACTIVE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8383188641852199543)), p0);
    }

    pub fn IS_PAUSE_MENU_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(12683062486377168843);
    }

    pub fn _0x2F057596F2BD0061() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3388243585844183137)));
    }

    pub fn GET_PAUSE_MENU_STATE() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(2822294085854325189)));
    }

    pub fn _0x5BFF36D6ED83E0AE() types.Vector3 {
        return nativeCaller.invoke0(@as(u64, @intCast(6629077473248403630)));
    }

    pub fn IS_PAUSE_MENU_RESTARTING() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(2038185694189597127)));
    }

    pub fn _0x2162C446DFDF38FD(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2405700959651969277)), p0);
    }

    pub fn _0x77F16B447824DA6C(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8642807101718321772)), p0);
    }

    pub fn _0xCDCA26E80FAECB8F() void {
        _ = nativeCaller.invoke0(14828707501208161167);
    }

    pub fn _0xDD564BDD0472C936(hash: types.Hash) void {
        _ = nativeCaller.invoke1(15949018543013677366, hash);
    }

    pub fn OBJECT_DECAL_TOGGLE(hash: types.Hash) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4921744939901789637)), hash);
    }

    pub fn _0x84698AB38D0C6636(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(9541309789331285558, p0);
    }

    pub fn _0x2A25ADC48F87841F() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3037024583464485919)));
    }

    pub fn _0xDE03620F8703A9DF() types.Any {
        return nativeCaller.invoke0(15997738120179329503);
    }

    pub fn _0x359AF31A4B52F5ED() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3862666924682049005)));
    }

    pub fn _0x13C4B962653A5280() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1424467214412173952)));
    }

    pub fn _0xC8E1071177A23BE5(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(14474858448948444133, p0, p1, p2);
    }

    pub fn ENABLE_DEATHBLOOD_SEETHROUGH(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5230295355364982912)), p0);
    }

    pub fn _0xC78E239AC5B2DDB9(p0: windows.BOOL, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(14379469807889341881, p0, p1, p2);
    }

    pub fn _0xF06EBB91A81E09E3(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17324991050806069731, p0);
    }

    pub fn _0x3BAB9A4E4F2FF5C7() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4299699930381940167)));
    }

    pub fn _0xEC9264727EEC0F28() void {
        _ = nativeCaller.invoke0(17046797982469197608);
    }

    pub fn _0x14621BB1DF14E2B2() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1468766879242052274)));
    }

    pub fn _0x66E7CB63C97B7D20() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7415118940931325216)));
    }

    pub fn _0x593FEAE1F73392D4() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6431117049144251092)));
    }

    pub fn _0x4E3CD0EF8A489541() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5637610560796792129)));
    }

    pub fn _0xF284AC67940C6812() types.Any {
        return nativeCaller.invoke0(17475282014969817106);
    }

    pub fn _0x2E22FEFA0100275E() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3324499824664913758)));
    }

    pub fn _0x0CF54F20DE43879C(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(933739500335761308)), p0);
    }

    pub fn _0x36C1451A88A09630(p0: [*c]types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3945510728816956976)), p0, p1);
    }

    pub fn _0x7E17BE53E1AAABAF(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(9085940040720886703)), p0, p1, p2);
    }

    pub fn _0xA238192F33110615(p0: [*c]c_int, p1: [*c]c_int, p2: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke3(11689120523351033365, p0, p1, p2);
    }

    pub fn SET_USERIDS_UIHIDDEN(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(17243418215069965421, p0, p1);
    }

    pub fn _0xCA6B2F7CE32AB653(p0: types.Any, p1: [*c]types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(14585804031603160659, p0, p1, p2);
    }

    pub fn _0x90A6526CF0381030(p0: types.Any, p1: [*c]types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(10423109015435743280, p0, p1, p2, p3);
    }

    pub fn _0x24A49BEAF468DC90(p0: types.Any, p1: [*c]types.Any, p2: types.Any, p3: types.Any, p4: types.Any) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(2640406714971118736)), p0, p1, p2, p3, p4);
    }

    pub fn _0x5FBD7095FE7AE57F(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(6898793993723372927)), p0, p1);
    }

    pub fn _0x8F08017F9D7C47BD(p0: types.Any, p1: [*c]types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(10306489394852022205, p0, p1, p2);
    }

    pub fn _0x052991E59076E4E4(p0: types.Hash, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(371988859392025828)), p0, p1);
    }

    pub fn CLEAR_PED_IN_PAUSE_MENU() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6801207697238564358)));
    }

    pub fn GIVE_PED_TO_PAUSE_MENU(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(12397279322583338516, p0, p1);
    }

    pub fn _0x3CA6050692BC61B0(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4370186014199407024)), p0);
    }

    pub fn _0xECF128344E9FF9F1(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17073471867460778481, p0);
    }

    pub fn _SHOW_SOCIAL_CLUB_LEGAL_SCREEN() void {
        _ = nativeCaller.invoke0(9249686353212173388);
    }

    pub fn _0xF13FE2A80C05C561() types.Any {
        return nativeCaller.invoke0(17383862298057491809);
    }

    pub fn _0x6F72CD94F7B5B68C() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8030707125249750668)));
    }

    pub fn _0x75D3691713C3B05A() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8490245270360272986)));
    }

    pub fn _0xD2B32BE3FC1626C6() void {
        _ = nativeCaller.invoke0(15182527026982954694);
    }

    pub fn _0x9E778248D6685FE0(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(11418738629567602656, p0);
    }

    pub fn _0xC406BE343FC4B9AF() types.Any {
        return nativeCaller.invoke0(14125186412911573423);
    }

    pub fn _0x1185A8087587322C(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1262600024832291372)), p0);
    }

    pub fn _0x8817605C2BA76200() void {
        _ = nativeCaller.invoke0(9806412662608192000);
    }

    pub fn _IS_TEXT_CHAT_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(12761142339698897569);
    }

    pub fn _ABORT_TEXT_CHAT() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1930061465283338535)));
    }

    pub fn _SET_TEXT_CHAT_UNK(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2139801655277685667)), p0);
    }

    pub fn _0xCEF214315D276FD1(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14912003518425952209, p0);
    }

    pub fn _0xD30C50DF888D58B5(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(15207618962722216117, p0, p1);
    }

    pub fn DOES_PED_HAVE_AI_BLIP(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1565261421563766765)), p0);
    }

    pub fn _0xE52B8E7F85D39A08(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(16513449137041283592, p0, p1);
    }

    pub fn HIDE_SPECIAL_ABILITY_LOCKON_OPERATION(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4534422099245292714)), p0, p1);
    }

    pub fn _0x0C4BBF625CA98C4E(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(886012180890750030)), p0, p1);
    }

    pub fn _0x97C65887D4B37FA9(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(10936526085528190889, p0, p1);
    }

    pub fn _0x7CD934010E115C2C(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(8996278909784906796)), p0);
    }

    pub fn _0x56176892826A4FE8(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(6203541990188666856)), p0);
    }

    pub fn _0xA277800A9EAE340E() types.Any {
        return nativeCaller.invoke0(11706966539473138702);
    }

    pub fn _0x2632482FD6B9AB87() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2752341692579949447)));
    }

    pub fn _0x808519373FD336A3(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(9260835933841995427, p0);
    }

    pub fn _0x04655F9D075D0AE5(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(316764476837530341)), p0);
    }
};const GRAPHICS = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const HUD = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const INTERIOR = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const ITEMSET = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const LOADINGSCREEN = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const LOCALIZATION = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const MISC = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const MOBILE = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const MONEY = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const NETSHOPPING = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const NETWORK = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const OBJECT = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const PAD = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const PATHFIND = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const PED = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const PHYSICS = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const PLAYER = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const RECORDING = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const REPLAY = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const SAVEMIGRATION = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const SCRIPT = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const SECURITY = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const SHAPETEST = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const SOCIALCLUB = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const STATS = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const STREAMING = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const TASK = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const VEHICLE = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const WATER = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const WEAPON = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

const ZONE = struct {

    /// Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
    pub fn WAIT(ms: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x4EDE34FBADD967A6)) , ms); 
    }

    /// Examples:
    ///  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
    ///  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
    ///  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
    ///  SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
    ///  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
    ///  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
    ///  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
    ///  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
    /// Decompiled examples of usage when starting a script:
    ///  
    ///     SCRIPT::REQUEST_SCRIPT(a_0);
    ///     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
    ///         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
    ///         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
    ///         return 1;
    ///     }
    ///  
    /// or:
    ///     v_2 = "MrsPhilips2";
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    ///     SCRIPT::REQUEST_SCRIPT(v_2);
    ///     SYSTEM::WAIT(0);
    ///     }
    ///     sub_8792(36);
    ///     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    ///     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE81651AD79516E48)) , scriptName, stackSize); 
    }

    /// return : script thread id, 0 if failed
    /// Pass pointer to struct of args in p1, size of struct goes into p2
    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xB8BA7F44DF1575E1)) , scriptName, args, argCount, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash: types.Hash, stackSize: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEB1C67C3A5333A92)) , scriptHash, stackSize); 
    }

    pub fn START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int { 
            return nativeCaller.invoke4(@as(u64, @intCast(0xC4BB298BD441BE78)) , scriptHash, args, argCount, stackSize); 
    }

    /// Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
    pub fn TIMERA() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x83666F9FB8FEBD4B)) ); 
    }

    pub fn TIMERB() c_int { 
            return nativeCaller.invoke0(@as(u64, @intCast(0xC9D9444186B5A374)) ); 
    }

    pub fn SETTIMERA(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xC1B1E9A034A63A62)) , value); 
    }

    pub fn SETTIMERB(value: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x5AE11BC36633DE4E)) , value); 
    }

    /// Gets the current frame time.
    pub fn TIMESTEP() f32 { 
            return nativeCaller.invoke0(@as(u64, @intCast(0x0000000050597EE2)) ); 
    }

    pub fn SIN(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x0BADBFA3B172435F)) , value); 
    }

    pub fn COS(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xD0FFB162F40A139C)) , value); 
    }

    pub fn SQRT(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x71D93B57D07F9804)) , value); 
    }

    pub fn POW(base: f32, exponent: f32) f32 { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xE3621CC40F31FE2E)) , base, exponent); 
    }

    pub fn LOG10(value: f32) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xE816E655DE37FE20)) , value); 
    }

    /// Calculates the magnitude of a vector.
    pub fn VMAG(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0x652D2EEEF1D3E62C)) , x, y, z); 
    }

    /// Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
    pub fn VMAG2(x: f32, y: f32, z: f32) f32 { 
            return nativeCaller.invoke3(@as(u64, @intCast(0xA8CEACB4F35AE058)) , x, y, z); 
    }

    /// Calculates distance between vectors.
    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0x2A488C176D52CCA5)) , x1, y1, z1, x2, y2, z2); 
    }

    /// Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 { 
            return nativeCaller.invoke6(@as(u64, @intCast(0xB7A628320EFF8E47)) , x1, y1, z1, x2, y2, z2); 
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0xEDD95A39E5544DE8)) , value, bitShift); 
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int { 
            return nativeCaller.invoke2(@as(u64, @intCast(0x97EF1E5BCE9DC075)) , value, bitShift); 
    }

    pub fn FLOOR(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF34EE736CF047844)) , value); 
    }

    /// I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
    pub fn CEIL(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x11E019C8F43ACC8A)) , value); 
    }

    pub fn ROUND(value: f32) c_int { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xF2DB717A73826179)) , value); 
    }

    pub fn TO_FLOAT(value: c_int) f32 { 
            return nativeCaller.invoke1(@as(u64, @intCast(0xBBDA792448DB5A89)) , value); 
    }

    /// THREAD_PRIO_HIGHEST = 0
    /// THREAD_PRIO_NORMAL = 1
    /// THREAD_PRIO_LOWEST = 2
    /// THREAD_PRIO_MANUAL_UPDATE = 100
    pub fn SET_THIS_THREAD_PRIORITY(priority: c_int) void { 
            return nativeCaller.invoke1(@as(u64, @intCast(0x42B65DEEF2EDF2A1)) , priority); 
    }
};

