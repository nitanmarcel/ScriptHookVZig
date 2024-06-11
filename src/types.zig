const std = @import("std");
const DWORD = std.os.windows.DWORD;

pub const Void = DWORD;

pub const Any = DWORD;

pub const uint = DWORD;

pub const Hash = DWORD;

pub const Entity = c_int;

pub const Player = c_int;

pub const FireId = c_int;

pub const Ped = c_int;

pub const Vehicle = c_int;

pub const Cam = c_int;

pub const CarGenerator = c_int;

pub const Group = c_int;

pub const Train = c_int;

pub const Pickup = c_int;

pub const Object = c_int;

pub const Weapon = c_int;

pub const Interior = c_int;

pub const Blip = c_int;

pub const Texture = c_int;

pub const TextureDict = c_int;

pub const CoverPoint = c_int;

pub const Camera = c_int;

pub const TaskSequence = c_int;

pub const ColourIndex = c_int;

pub const Sphere = c_int;

pub const ScrHandle = c_int;

pub const Vector3 = extern struct { x: f32, _paddingx: DWORD, y: f32, _paddingy: DWORD, z: f32, _paddingz: DWORD };
