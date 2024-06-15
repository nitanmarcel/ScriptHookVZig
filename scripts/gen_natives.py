import urllib.request
import json
import os
import subprocess

JSON_URL = "https://raw.githubusercontent.com/alloc8or/gta5-nativedb-data/master/natives.json"
NATIVES_PATH = os.path.join(os.path.dirname(__file__), "../src/natives.zig")

TYPE_MAPPINGS = {
    "bool": "bool",
    "char": "u8",
    "signed char": "i8",
    "unsigned char": "u8",
    "short": "c_short",
    "unsigned short": "c_ushort",
    "int": "c_int",
    "unsigned int": "c_uint",
    "long": "c_long",
    "unsigned long": "c_ulong",
    "long long": "c_longlong",
    "unsigned long long": "c_ulonglong",
    "float": "f32",
    "double": "f64",
    "long double": "c_longdouble",
    "int8_t": "i8",
    "uint8_t": "u8",
    "int16_t": "i16",
    "uint16_t": "u16",
    "int32_t": "i32",
    "uint32_t": "u32",
    "int64_t": "i64",
    "uint64_t": "u64",
    "__int128": "i128",
    "unsigned __int128": "u128",
    "intptr_t": "isize",
    "uintptr_t": "usize",
    "size_t": "usize",
    "va_list": "[*c]u8",
    "__va_list_tag": "[*c]u8",
    "ptrdiff_t": "isize",
    "ssize_t": "isize",
    "std::vector": "cpp.Vector",
    "std::array": "cpp.Array",
    "std::string": "cpp.String",
    "Any": "types.Any",
    "uint": "types.uint",
    "Hash": "types.Hash",
    "Entity": "types.Entity",
    "Player": "types.Player",
    "FireId": "types.FireId",
    "Ped": "types.Ped",
    "Vehicle": "types.Vehicle",
    "Cam": "types.Cam",
    "CarGenerator": "types.CarGenerator",
    "Group": "types.Group",
    "Train": "types.Train",
    "Pickup": "types.Pickup",
    "Object": "types.Object",
    "Weapon": "types.Weapon",
    "Interior": "types.Interior",
    "Blip": "types.Blip",
    "Texture": "types.Texture",
    "TextureDict": "types.TextureDict",
    "CoverPoint": "types.CoverPoint",
    "Camera": "types.Camera",
    "TaskSequence": "types.TaskSequence",
    "ColourIndex": "types.ColourIndex",
    "Sphere": "types.Sphere",
    "ScrHandle": "types.ScrHandle",
    "Vector3": "types.Vector3",
    "BOOL": "windows.BOOL"
}

IDS = [
    "SYSTEM", "APP", "AUDIO", "BRAIN", "CAM", "CLOCK", "CUTSCENE", "DATAFILE", "DECORATOR",
    "DLC", "ENTITY", "EVENT", "FILES", "FIRE", "GRAPHICS", "HUD", "INTERIOR", "ITEMSET",
    "LOADINGSCREEN", "LOCALIZATION", "MISC", "MOBILE", "MONEY", "NETSHOPPING", "NETWORK",
    "OBJECT", "PAD", "PATHFIND", "PED", "PHYSICS", "PLAYER", "RECORDING", "REPLAY",
    "SAVEMIGRATION", "SCRIPT", "SECURITY", "SHAPETEST", "SOCIALCLUB", "STATS", "STREAMING",
    "TASK", "VEHICLE", "WATER", "WEAPON", "ZONE"
]

def convert_type(type):
    is_const = type.startswith("const")
    is_pointer = type.endswith("*")
    
    if is_const:
        type = type[len("const "):].rstrip("*")
    
    if is_pointer:
        type = type.rstrip("*")
    
    type = TYPE_MAPPINGS.get(type, type)
    
    if is_const:
        type = f"const {type}"
    
    if is_pointer:
        type = f"[*c]{type}"
    
    return type

def convert_return_type(type):
    return "void" if type == "void" else convert_type(type)

def write_comment(io, comment):
    if comment:
        io.write(f"\t/// {comment}\n")
        io.write("\t///\n")

def write_struct_start(io, name):
    io.write(f"pub const {name} = struct {{\n")

def write_struct_end(io):
    io.write("\n};\n\n")

def write_func(io, hash, comments, name, aliases, params, return_type):
    for comment in comments:
        write_comment(io, comment)

    for alias in aliases:
        write_comment(io, f"Used to be known as {alias}")
    
    joined_params = ', '.join(f"@\"{param['name']}\": {convert_type(param['type'])}" for param in params) if params else ""
    io.write(f"\tpub fn {name}({joined_params}) {convert_return_type(return_type)} {{\n")
    
    joined_param_names = f"@as(u64, @intCast({int(hash, 16)}))"
    if params:
        joined_param_names += ", " + ', '.join(f'@"{param['name']}"' for param in params)
    
    invoke_statement = "_ = nativeCaller.invoke" if return_type == "void" else "return nativeCaller.invoke"
    io.write(f"\t\t{invoke_statement}{len(params)}({joined_param_names});\n")
    io.write("\t}\n")

with urllib.request.urlopen(JSON_URL) as response:
    natives = json.load(response)
    with open(NATIVES_PATH, "w") as out_file:
        out_file.write('const std = @import("std");\n')
        out_file.write('const nativeCaller = @import("nativeCaller.zig");\n')
        out_file.write('const types = @import("types.zig");\n')
        out_file.write('const windows = std.os.windows;\n\n');
        for id in IDS:
            namespace = natives[id]
            write_struct_start(out_file, id)
            for hash, details in namespace.items():
                comments = details.get("comment", "").split("\n")
                name = details["name"]
                params = details.get("params", [])
                return_type = details["return_type"]
                old_names = details.get("old_names", [])
                write_func(out_file, hash, comments, name, old_names, params, return_type)
            write_struct_end(out_file)

    subprocess.run(["zig", "fmt", NATIVES_PATH])