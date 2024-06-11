const std = @import("std");
const root = @import("root.zig");
const utils = @import("utils.zig");

fn nativeCall() u64 {
    const call = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn () callconv(.C) u64, "?nativeCall@@YAPEA_KXZ");
    return call.?();
}

fn nativeInit(hash: u64) void {
    const call = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (u64) callconv(.C) void, "?nativeInit@@YAX_K@Z");
    call.?(hash);
}

fn nativePush64(val: u64) void {
    const call = utils.findSymbol(&root.ScriptHookVDLL.?.dynLib, *const fn (u64) callconv(.C) void, "?nativePush64@@YAX_K@Z");
    call.?(val);
}

pub fn nativePush(val: anytype) void {
    if (@sizeOf(@TypeOf(val)) > @sizeOf(u64)) {
        @compileError("val is larger than u64");
    }
    var v64: u64 = 0;
    const src = std.mem.asBytes(&val);
    @memcpy(std.mem.asBytes(&v64)[0..src.len], src);
    nativePush64(v64);
}

pub fn invoke0(hash: u64) type {
    nativeInit(hash);
    return nativeCall();
}

pub fn invoke1(hash: u64, T1: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    return nativeCall();
}

pub fn invoke2(hash: u64, T1: anytype, T2: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    return nativeCall();
}

pub fn invoke3(hash: u64, T1: anytype, T2: anytype, T3: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    return nativeCall();
}

pub fn invoke4(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    return nativeCall();
}

pub fn invoke5(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    return nativeCall();
}

pub fn invoke6(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    return nativeCall();
}

pub fn invoke7(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    return nativeCall();
}

pub fn invoke8(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    return nativeCall();
}

pub fn invoke9(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    return nativeCall();
}

pub fn invoke10(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    return nativeCall();
}

pub fn invoke11(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    return nativeCall();
}

pub fn invoke12(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    return nativeCall();
}

pub fn invoke13(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    return nativeCall();
}

pub fn invoke14(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    return nativeCall();
}

pub fn invoke15(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype, T15: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    nativePush(T15);
    return nativeCall();
}

pub fn invoke16(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype, T15: anytype, T16: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    nativePush(T15);
    nativePush(T16);
    return nativeCall();
}

pub fn invoke17(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype, T15: anytype, T16: anytype, T17: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    nativePush(T15);
    nativePush(T16);
    nativePush(T17);
    return nativeCall();
}

pub fn invoke18(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype, T15: anytype, T16: anytype, T17: anytype, T18: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    nativePush(T15);
    nativePush(T16);
    nativePush(T17);
    nativePush(T18);
    return nativeCall();
}

pub fn invoke19(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype, T15: anytype, T16: anytype, T17: anytype, T18: anytype, T19: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    nativePush(T15);
    nativePush(T16);
    nativePush(T17);
    nativePush(T18);
    nativePush(T19);
    return nativeCall();
}

pub fn invoke20(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype, T15: anytype, T16: anytype, T17: anytype, T18: anytype, T19: anytype, T20: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    nativePush(T15);
    nativePush(T16);
    nativePush(T17);
    nativePush(T18);
    nativePush(T19);
    nativePush(T20);
    return nativeCall();
}

pub fn invoke21(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype, T15: anytype, T16: anytype, T17: anytype, T18: anytype, T19: anytype, T20: anytype, T21: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    nativePush(T15);
    nativePush(T16);
    nativePush(T17);
    nativePush(T18);
    nativePush(T19);
    nativePush(T20);
    nativePush(T21);
    return nativeCall();
}

pub fn invoke22(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype, T15: anytype, T16: anytype, T17: anytype, T18: anytype, T19: anytype, T20: anytype, T21: anytype, T22: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    nativePush(T15);
    nativePush(T16);
    nativePush(T17);
    nativePush(T18);
    nativePush(T19);
    nativePush(T20);
    nativePush(T21);
    nativePush(T22);
    return nativeCall();
}

pub fn invoke23(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype, T15: anytype, T16: anytype, T17: anytype, T18: anytype, T19: anytype, T20: anytype, T21: anytype, T22: anytype, T23: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    nativePush(T15);
    nativePush(T16);
    nativePush(T17);
    nativePush(T18);
    nativePush(T19);
    nativePush(T20);
    nativePush(T21);
    nativePush(T22);
    nativePush(T23);
    return nativeCall();
}

pub fn invoke24(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype, T15: anytype, T16: anytype, T17: anytype, T18: anytype, T19: anytype, T20: anytype, T21: anytype, T22: anytype, T23: anytype, T24: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    nativePush(T15);
    nativePush(T16);
    nativePush(T17);
    nativePush(T18);
    nativePush(T19);
    nativePush(T20);
    nativePush(T21);
    nativePush(T22);
    nativePush(T23);
    nativePush(T24);
    return nativeCall();
}

pub fn invoke25(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype, T15: anytype, T16: anytype, T17: anytype, T18: anytype, T19: anytype, T20: anytype, T21: anytype, T22: anytype, T23: anytype, T24: anytype, T25: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    nativePush(T15);
    nativePush(T16);
    nativePush(T17);
    nativePush(T18);
    nativePush(T19);
    nativePush(T20);
    nativePush(T21);
    nativePush(T22);
    nativePush(T23);
    nativePush(T24);
    nativePush(T25);
    return nativeCall();
}

pub fn invoke26(hash: u64, T1: anytype, T2: anytype, T3: anytype, T4: anytype, T5: anytype, T6: anytype, T7: anytype, T8: anytype, T9: anytype, T10: anytype, T11: anytype, T12: anytype, T13: anytype, T14: anytype, T15: anytype, T16: anytype, T17: anytype, T18: anytype, T19: anytype, T20: anytype, T21: anytype, T22: anytype, T23: anytype, T24: anytype, T25: anytype, T26: anytype) u64 {
    nativeInit(hash);
    nativePush(T1);
    nativePush(T2);
    nativePush(T3);
    nativePush(T4);
    nativePush(T5);
    nativePush(T6);
    nativePush(T7);
    nativePush(T8);
    nativePush(T9);
    nativePush(T10);
    nativePush(T11);
    nativePush(T12);
    nativePush(T13);
    nativePush(T14);
    nativePush(T15);
    nativePush(T16);
    nativePush(T17);
    nativePush(T18);
    nativePush(T19);
    nativePush(T20);
    nativePush(T21);
    nativePush(T22);
    nativePush(T23);
    nativePush(T24);
    nativePush(T25);
    nativePush(T26);
    return nativeCall();
}
