const std = @import("std");

const nativeCaller = @import("nativeCaller.zig");

const types = @import("types.zig");

const windows = std.os.windows;

pub const PLAYER = struct {
    pub fn GET_PLAYER_PED(player: types.Player) types.Ped {
        return nativeCaller.invoke1(@as(u64, @intCast(4874702607714914752)), player);
    }

    pub fn GET_PLAYER_PED_SCRIPT_INDEX(player: types.Player) types.Ped {
        return nativeCaller.invoke1(@as(u64, @intCast(5835191375820269281)), player);
    }

    pub fn SET_PLAYER_MODEL(player: types.Player, model: types.Hash) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(45540521788082230)), player, model);
    }

    pub fn CHANGE_PLAYER_PED(player: types.Player, ped: types.Ped, b1: windows.BOOL, b2: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(324692358308552430)), player, ped, b1, b2);
    }

    pub fn GET_PLAYER_RGB_COLOUR(player: types.Player, r: [*c]c_int, g: [*c]c_int, b: [*c]c_int) void {
        _ = nativeCaller.invoke4(16790245784519841679, player, r, g, b);
    }

    pub fn GET_NUMBER_OF_PLAYERS() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(4646729180006083606)));
    }

    pub fn GET_PLAYER_TEAM(player: types.Player) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(3964173737923747848)), player);
    }

    pub fn SET_PLAYER_TEAM(player: types.Player, team: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(187455978900965696)), player, team);
    }

    pub fn GET_PLAYER_NAME(player: types.Player) [*c]u8 {
        return nativeCaller.invoke1(@as(u64, @intCast(7858190532816302584)), player);
    }

    pub fn GET_WANTED_LEVEL_RADIUS(player: types.Player) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(602896624907716626)), player);
    }

    pub fn GET_PLAYER_WANTED_CENTRE_POSITION(player: types.Player) types.Vector3 {
        return nativeCaller.invoke1(@as(u64, @intCast(905991576682964728)), player);
    }

    pub fn SET_PLAYER_WANTED_CENTRE_POSITION(player: types.Player, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(5912755833973846868)), player, x, y, z);
    }

    pub fn GET_WANTED_LEVEL_THRESHOLD(wantedLevel: c_int) c_int {
        return nativeCaller.invoke1(18289533611757229420, wantedLevel);
    }

    pub fn SET_PLAYER_WANTED_LEVEL(player: types.Player, wantedLevel: c_int, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4179087318742194779)), player, wantedLevel, p2);
    }

    pub fn SET_PLAYER_WANTED_LEVEL_NO_DROP(player: types.Player, wantedLevel: c_int, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3751043147892200805)), player, wantedLevel, p2);
    }

    pub fn SET_PLAYER_WANTED_LEVEL_NOW(player: types.Player, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(16188138165339409775, player, p1);
    }

    pub fn ARE_PLAYER_FLASHING_STARS_ABOUT_TO_DROP(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(12659484430345729257, player);
    }

    pub fn ARE_PLAYER_STARS_GREYED_OUT(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(751735369465373403)), player);
    }

    pub fn SET_DISPATCH_COPS_FOR_PLAYER(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(15787126758079550452, player, toggle);
    }

    pub fn IS_PLAYER_WANTED_LEVEL_GREATER(player: types.Player, wantedLevel: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(2561900175157029359)), player, wantedLevel);
    }

    pub fn CLEAR_PLAYER_WANTED_LEVEL(player: types.Player) void {
        _ = nativeCaller.invoke1(12898964665736385689, player);
    }

    pub fn IS_PLAYER_DEAD(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4777552329540785746)), player);
    }

    pub fn IS_PLAYER_PRESSING_HORN(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(18022891105905121529, player);
    }

    pub fn SET_PLAYER_CONTROL(player: types.Player, toggle: windows.BOOL, possiblyFlags: c_int) void {
        _ = nativeCaller.invoke3(10174252221492641954, player, toggle, possiblyFlags);
    }

    pub fn GET_PLAYER_WANTED_LEVEL(player: types.Player) c_int {
        return nativeCaller.invoke1(16325078576001511725, player);
    }

    pub fn SET_MAX_WANTED_LEVEL(maxWantedLevel: c_int) void {
        _ = nativeCaller.invoke1(12276534250078405817, maxWantedLevel);
    }

    pub fn SET_POLICE_RADAR_BLIPS(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4839238016204716223)), toggle);
    }

    pub fn SET_POLICE_IGNORE_PLAYER(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3658658653323582058)), player, toggle);
    }

    pub fn IS_PLAYER_PLAYING(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6815464490581856410)), player);
    }

    pub fn SET_EVERYONE_IGNORE_PLAYER(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(10299065303624326052, player, toggle);
    }

    pub fn SET_ALL_RANDOM_PEDS_FLEE(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(391267708132141385)), player, toggle);
    }

    pub fn SET_ALL_RANDOM_PEDS_FLEE_THIS_FRAME(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5124304676750406898)), player);
    }

    pub fn SET_HUD_ANIM_STOP_LEVEL(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(16016438143247314529, player, toggle);
    }

    pub fn SET_AREAS_GENERATOR_ORIENTATION(player: types.Player) void {
        _ = nativeCaller.invoke1(14066834293359561926, player);
    }

    pub fn SET_IGNORE_LOW_PRIORITY_SHOCKING_EVENTS(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6442811240944981760)), player, toggle);
    }

    pub fn SET_WANTED_LEVEL_MULTIPLIER(multiplier: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(148160294804391866)), multiplier);
    }

    pub fn SET_WANTED_LEVEL_DIFFICULTY(player: types.Player, difficulty: f32) void {
        _ = nativeCaller.invoke2(11172220366678417018, player, difficulty);
    }

    pub fn RESET_WANTED_LEVEL_DIFFICULTY(player: types.Player) void {
        _ = nativeCaller.invoke1(13389445341602988509, player);
    }

    pub fn START_FIRING_AMNESTY(duration: c_int) void {
        _ = nativeCaller.invoke1(13806865574565084744, duration);
    }

    pub fn REPORT_CRIME(player: types.Player, crimeType: c_int, wantedLvlThresh: c_int) void {
        _ = nativeCaller.invoke3(16839123424570066407, player, crimeType, wantedLvlThresh);
    }

    pub fn _0x9A987297ED8BD838(player: types.Player, p1: c_int) void {
        _ = nativeCaller.invoke2(11139779675151915064, player, p1);
    }

    pub fn _0xBC9490CA15AEA8FB(player: types.Player) void {
        _ = nativeCaller.invoke1(13588645173305190651, player);
    }

    pub fn _0x4669B3ED80F24B4E(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5073784287861558094)), player);
    }

    pub fn _0xAD73CE5A09E42D12(player: types.Player) void {
        _ = nativeCaller.invoke1(12498560276991585554, player);
    }

    pub fn _0x36F1B38855F2A8DF(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3959142945574267103)), player);
    }

    pub fn _0xDC64D2C53493ED12(player: types.Player) void {
        _ = nativeCaller.invoke1(15881049930447711506, player);
    }

    pub fn _0xB45EFF719D8427A6(p0: f32) void {
        _ = nativeCaller.invoke1(12997106438076901286, p0);
    }

    pub fn _0x0032A6DBA562C518() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(14257211138295064)));
    }

    pub fn CAN_PLAYER_START_MISSION(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(16029548722278906886, player);
    }

    pub fn IS_PLAYER_READY_FOR_CUTSCENE(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(10415909822333073040, player);
    }

    pub fn IS_PLAYER_TARGETTING_ENTITY(player: types.Player, entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(8724308091205739702)), player, entity);
    }

    pub fn GET_PLAYER_TARGET_ENTITY(player: types.Player, entity: [*c]types.Entity) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(1436051958677346249)), player, entity);
    }

    pub fn IS_PLAYER_FREE_AIMING(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3330833943310335111)), player);
    }

    pub fn IS_PLAYER_FREE_AIMING_AT_ENTITY(player: types.Player, entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(4325344363702095739)), player, entity);
    }

    pub fn GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(player: types.Player, entity: [*c]types.Entity) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(2987514272108589712)), player, entity);
    }

    pub fn SET_PLAYER_LOCKON_RANGE_OVERRIDE(player: types.Player, range: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2996614801672115453)), player, range);
    }

    pub fn SET_PLAYER_CAN_DO_DRIVE_BY(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7964673893782916215)), player, toggle);
    }

    pub fn SET_PLAYER_CAN_BE_HASSLED_BY_GANGS(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(15412550122795475526, player, toggle);
    }

    pub fn SET_PLAYER_CAN_USE_COVER(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(15304824011544815636, player, toggle);
    }

    pub fn GET_MAX_WANTED_LEVEL() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(5056994522776984671)));
    }

    pub fn IS_PLAYER_TARGETTING_ANYTHING(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8705428498500991140)), player);
    }

    pub fn SET_PLAYER_SPRINT(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(11536956114075201012, player, toggle);
    }

    pub fn RESET_PLAYER_STAMINA(player: types.Player) void {
        _ = nativeCaller.invoke1(12029979906644123134, player);
    }

    pub fn RESTORE_PLAYER_STAMINA(player: types.Player, p1: f32) void {
        _ = nativeCaller.invoke2(11768681773981695283, player, p1);
    }

    pub fn GET_PLAYER_SPRINT_STAMINA_REMAINING(player: types.Player) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(4584408203958845143)), player);
    }

    pub fn GET_PLAYER_SPRINT_TIME_REMAINING(player: types.Player) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(1767025802996305049)), player);
    }

    pub fn GET_PLAYER_UNDERWATER_TIME_REMAINING(player: types.Player) f32 {
        return nativeCaller.invoke1(11672478003903903537, player);
    }

    pub fn GET_PLAYER_GROUP(player: types.Player) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(941944490316279983)), player);
    }

    pub fn GET_PLAYER_MAX_ARMOUR(player: types.Player) c_int {
        return nativeCaller.invoke1(10549008456688745651, player);
    }

    pub fn IS_PLAYER_CONTROL_ON(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5315141875575487047)), player);
    }

    pub fn _0x7C814D2FB49F40C0() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8971536799987876032)));
    }

    pub fn IS_PLAYER_SCRIPT_CONTROL_ON(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(9982064081789376471, player);
    }

    pub fn IS_PLAYER_CLIMBING(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(10802155550941313948, player);
    }

    pub fn IS_PLAYER_BEING_ARRESTED(player: types.Player, atArresting: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(4074147724792802446)), player, atArresting);
    }

    pub fn RESET_PLAYER_ARREST_STATE(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3243683805626065110)), player);
    }

    pub fn GET_PLAYERS_LAST_VEHICLE() types.Vehicle {
        return nativeCaller.invoke0(13157682470943312064);
    }

    pub fn GET_PLAYER_INDEX() types.Player {
        return nativeCaller.invoke0(11956428154230912141);
    }

    pub fn INT_TO_PLAYERINDEX(value: c_int) types.Player {
        return nativeCaller.invoke1(@as(u64, @intCast(4736989022120507222)), value);
    }

    pub fn INT_TO_PARTICIPANTINDEX(value: c_int) c_int {
        return nativeCaller.invoke1(11440937697330480912, value);
    }

    pub fn GET_TIME_SINCE_PLAYER_HIT_VEHICLE(player: types.Player) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(6716534950534450912)), player);
    }

    pub fn GET_TIME_SINCE_PLAYER_HIT_PED(player: types.Player) c_int {
        return nativeCaller.invoke1(16386951091587342146, player);
    }

    pub fn GET_TIME_SINCE_PLAYER_DROVE_ON_PAVEMENT(player: types.Player) c_int {
        return nativeCaller.invoke1(15373550519145956667, player);
    }

    pub fn GET_TIME_SINCE_PLAYER_DROVE_AGAINST_TRAFFIC(player: types.Player) c_int {
        return nativeCaller.invoke1(15819273152188223874, player);
    }

    pub fn IS_PLAYER_FREE_FOR_AMBIENT_TASK(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(15911169040677300916, player);
    }

    pub fn PLAYER_ID() types.Player {
        return nativeCaller.invoke0(@as(u64, @intCast(5730343094349521110)));
    }

    pub fn PLAYER_PED_ID() types.Ped {
        return nativeCaller.invoke0(15567071428299294886);
    }

    pub fn NETWORK_PLAYER_ID_TO_INT() c_int {
        return nativeCaller.invoke0(17178991153621971998);
    }

    pub fn HAS_FORCE_CLEANUP_OCCURRED(cleanupFlags: c_int) windows.BOOL {
        return nativeCaller.invoke1(14512963100351546073, cleanupFlags);
    }

    pub fn FORCE_CLEANUP(cleanupFlags: c_int) void {
        _ = nativeCaller.invoke1(13585534833047170385, cleanupFlags);
    }

    pub fn FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME(name: [*c]u8, cleanupFlags: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5505894489745093399)), name, cleanupFlags);
    }

    pub fn FORCE_CLEANUP_FOR_THREAD_WITH_THIS_ID(id: c_int, cleanupFlags: c_int) void {
        _ = nativeCaller.invoke2(17817844820968675179, id, cleanupFlags);
    }

    pub fn GET_CAUSE_OF_MOST_RECENT_FORCE_CLEANUP() c_int {
        return nativeCaller.invoke0(11115393256838472306);
    }

    pub fn SET_PLAYER_MAY_ONLY_ENTER_THIS_VEHICLE(player: types.Player, vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke2(9234348980891588490, player, vehicle);
    }

    pub fn SET_PLAYER_MAY_NOT_ENTER_ANY_VEHICLE(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2153701109743272266)), player);
    }

    pub fn GIVE_ACHIEVEMENT_TO_PLAYER(achievement: c_int) windows.BOOL {
        return nativeCaller.invoke1(13746964553983525269, achievement);
    }

    pub fn _0xC2AFFFDABBDC2C5C(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(14028712679202106460, p0, p1);
    }

    pub fn _0x1C186837D0619335(p0: types.Any) types.Cam {
        return nativeCaller.invoke1(@as(u64, @intCast(2024482621431583541)), p0);
    }

    pub fn HAS_ACHIEVEMENT_BEEN_PASSED(achievement: c_int) windows.BOOL {
        return nativeCaller.invoke1(9688199240742057707, achievement);
    }

    pub fn IS_PLAYER_ONLINE() windows.BOOL {
        return nativeCaller.invoke0(17464171132920953788);
    }

    pub fn IS_PLAYER_LOGGING_IN_NP() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(8382727314144132810)));
    }

    pub fn DISPLAY_SYSTEM_SIGNIN_UI(scrHandle: types.ScrHandle) void {
        _ = nativeCaller.invoke1(10726862416215971742, scrHandle);
    }

    pub fn IS_SYSTEM_UI_BEING_DISPLAYED() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(6724188946249052473)));
    }

    pub fn SET_PLAYER_INVINCIBLE(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2564000551796991966)), player, toggle);
    }

    pub fn GET_PLAYER_INVINCIBLE(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(13195995625634897415, player);
    }

    pub fn _0xCAC57395B151135F(player: types.Player, p1: types.Any) void {
        _ = nativeCaller.invoke2(14611211652835644255, player, p1);
    }

    pub fn REMOVE_PLAYER_HELMET(player: types.Player, p2: windows.BOOL) void {
        _ = nativeCaller.invoke2(17558451738318955816, player, p2);
    }

    pub fn GIVE_PLAYER_RAGDOLL_CONTROL(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4344223702803483176)), player, toggle);
    }

    pub fn SET_PLAYER_LOCKON(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6668475646901236366)), player, toggle);
    }

    pub fn SET_PLAYER_TARGETING_MODE(player: types.Player) void {
        _ = nativeCaller.invoke1(12794841531097256947, player);
    }

    pub fn _0x5702B917B99DB1CD(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6269777142802657741)), p0);
    }

    pub fn _0xB9CF1F793A9F1BF1() types.Any {
        return nativeCaller.invoke0(13388954822730783729);
    }

    pub fn CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_PED(player: types.Player) void {
        _ = nativeCaller.invoke1(17345185489865105304, player);
    }

    pub fn HAS_PLAYER_DAMAGED_AT_LEAST_ONE_PED(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2363968351086004940)), player);
    }

    pub fn CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5380879485422869041)), player);
    }

    pub fn HAS_PLAYER_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(16481221038019450706, player);
    }

    pub fn SET_AIR_DRAG_MULTIPLIER_FOR_PLAYERS_VEHICLE(player: types.Player, multiplier: f32) void {
        _ = nativeCaller.invoke2(14591038487492435614, player, multiplier);
    }

    pub fn SET_SWIM_MULTIPLIER_FOR_PLAYER(player: types.Player, multiplier: f32) void {
        _ = nativeCaller.invoke2(12185736806130608659, player, multiplier);
    }

    pub fn SET_RUN_SPRINT_MULTIPLIER_FOR_PLAYER(player: types.Player, multiplier: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7905078105765137929)), player, multiplier);
    }

    pub fn GET_TIME_SINCE_LAST_ARREST() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(5792747526117565206)));
    }

    pub fn GET_TIME_SINCE_LAST_DEATH() c_int {
        return nativeCaller.invoke0(14340384834815123402);
    }

    pub fn ASSISTED_MOVEMENT_CLOSE_ROUTE() void {
        _ = nativeCaller.invoke0(12591792016616722014);
    }

    pub fn ASSISTED_MOVEMENT_FLUSH_ROUTE() void {
        _ = nativeCaller.invoke0(9665069012116897311);
    }

    pub fn SET_PLAYER_FORCED_AIM(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1147942369090643750)), player, toggle);
    }

    pub fn SET_PLAYER_FORCED_ZOOM(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8495993443580991746)), player, toggle);
    }

    pub fn SET_PLAYER_FORCE_SKIP_AIM_INTRO(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8525802710196937000)), player, toggle);
    }

    pub fn DISABLE_PLAYER_FIRING(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6804024751275371192)), player, toggle);
    }

    pub fn _0xB885852C39CC265D() void {
        _ = nativeCaller.invoke0(13296179899875993181);
    }

    pub fn SET_DISABLE_AMBIENT_MELEE_MOVE(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3353681963845701516)), player, toggle);
    }

    pub fn SET_PLAYER_MAX_ARMOUR(player: types.Player, value: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8637847965451127921)), player, value);
    }

    pub fn SPECIAL_ABILITY_DEACTIVATE(player: types.Player) void {
        _ = nativeCaller.invoke1(15467986508560539735, player);
    }

    pub fn SPECIAL_ABILITY_DEACTIVATE_FAST(player: types.Player) void {
        _ = nativeCaller.invoke1(11292158172906032474, player);
    }

    pub fn SPECIAL_ABILITY_RESET(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3989923684365507220)), player);
    }

    pub fn _0xC9A763D8FE87436A(player: types.Player) void {
        _ = nativeCaller.invoke1(14530692506368557930, player);
    }

    pub fn SPECIAL_ABILITY_CHARGE_SMALL(player: types.Player, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3349441619739895933)), player, p1, p2);
    }

    pub fn SPECIAL_ABILITY_CHARGE_MEDIUM(player: types.Player, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(17371478509595477523, player, p1, p2);
    }

    pub fn SPECIAL_ABILITY_CHARGE_LARGE(player: types.Player, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(17812849642795793811, player, p1, p2);
    }

    pub fn SPECIAL_ABILITY_CHARGE_CONTINUOUS(player: types.Player, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(17097941492585458071, player, p1);
    }

    pub fn SPECIAL_ABILITY_CHARGE_ABSOLUTE(player: types.Player, p1: c_int, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(13236227802081120397, player, p1, p2);
    }

    pub fn SPECIAL_ABILITY_CHARGE_NORMALIZED(player: types.Player, p1: f32, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(11558886904674512408, player, p1, p2);
    }

    pub fn SPECIAL_ABILITY_FILL_METER(player: types.Player, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4444112602787563904)), player, p1);
    }

    pub fn SPECIAL_ABILITY_DEPLETE_METER(player: types.Player, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2112308878322558539)), player, p1);
    }

    pub fn SPECIAL_ABILITY_LOCK(playerModel: types.Hash) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7640867858484067603)), playerModel);
    }

    pub fn SPECIAL_ABILITY_UNLOCK(playerModel: types.Hash) void {
        _ = nativeCaller.invoke1(17385569934691179067, playerModel);
    }

    pub fn IS_SPECIAL_ABILITY_UNLOCKED(Johnelle: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(14267825189556299412, Johnelle);
    }

    pub fn IS_SPECIAL_ABILITY_ACTIVE(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4494451451678248469)), player);
    }

    pub fn IS_SPECIAL_ABILITY_METER_FULL(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(405885062257517959)), player);
    }

    pub fn ENABLE_SPECIAL_ABILITY(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1738039364168966433)), player, toggle);
    }

    pub fn IS_SPECIAL_ABILITY_ENABLED(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(12813304981393175499, player);
    }

    pub fn SET_SPECIAL_ABILITY_MULTIPLIER(multiplier: f32) void {
        _ = nativeCaller.invoke1(11861428562303797943, multiplier);
    }

    pub fn _0xFFEE8FA29AB9A18E(player: types.Player) void {
        _ = nativeCaller.invoke1(18441835452672090510, player);
    }

    pub fn _0x5FC472C501CCADB3(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6900766719502757299)), player);
    }

    pub fn _0xF10B44FD479D69F3(player: types.Player, p1: c_int) windows.BOOL {
        return nativeCaller.invoke2(17369052242503363059, player, p1);
    }

    pub fn _0xDD2620B7B9D16FF1(player: types.Player, p1: f32) windows.BOOL {
        return nativeCaller.invoke2(15935460304965693425, player, p1);
    }

    pub fn START_PLAYER_TELEPORT(player: types.Player, x: f32, y: f32, z: f32, heading: f32, p5: windows.BOOL, p6: windows.BOOL, p7: windows.BOOL) void {
        _ = nativeCaller.invoke8(12472139131140050910, player, x, y, z, heading, p5, p6, p7);
    }

    pub fn _HAS_PLAYER_TELEPORT_FINISHED(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(16302283480354081889, player);
    }

    pub fn STOP_PLAYER_TELEPORT() void {
        _ = nativeCaller.invoke0(14144097709538345116);
    }

    pub fn IS_PLAYER_TELEPORT_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(194031241483815023)));
    }

    pub fn GET_PLAYER_CURRENT_STEALTH_NOISE(player: types.Player) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(3402853668735809655)), player);
    }

    pub fn SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER(player: types.Player, regenRate: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6752691015583894065)), player, regenRate);
    }

    pub fn SET_PLAYER_WEAPON_DAMAGE_MODIFIER(player: types.Player, damageAmount: f32) void {
        _ = nativeCaller.invoke2(14846039169330490787, player, damageAmount);
    }

    pub fn SET_PLAYER_WEAPON_DEFENSE_MODIFIER(player: types.Player, modifier: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3279671666617174588)), player, modifier);
    }

    pub fn SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER(player: types.Player, modifier: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5349651752238059570)), player, modifier);
    }

    pub fn SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER(player: types.Player, modifier: f32) void {
        _ = nativeCaller.invoke2(12561668789842461922, player, modifier);
    }

    pub fn SET_PLAYER_VEHICLE_DAMAGE_MODIFIER(player: types.Player, damageAmount: f32) void {
        _ = nativeCaller.invoke2(11893462893929705228, player, damageAmount);
    }

    pub fn SET_PLAYER_VEHICLE_DEFENSE_MODIFIER(player: types.Player, modifier: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5503652662492472418)), player, modifier);
    }

    pub fn SET_PLAYER_PARACHUTE_TINT_INDEX(player: types.Player, tintIndex: c_int) void {
        _ = nativeCaller.invoke2(11804186708958356965, player, tintIndex);
    }

    pub fn GET_PLAYER_PARACHUTE_TINT_INDEX(player: types.Player, tintIndex: [*c]c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8490401996352368965)), player, tintIndex);
    }

    pub fn SET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX(player: types.Player, index: c_int) void {
        _ = nativeCaller.invoke2(12611425305903619896, player, index);
    }

    pub fn GET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX(player: types.Player, index: [*c]c_int) void {
        _ = nativeCaller.invoke2(15393328524069293888, player, index);
    }

    pub fn SET_PLAYER_PARACHUTE_PACK_TINT_INDEX(player: types.Player, tintIndex: c_int) void {
        _ = nativeCaller.invoke2(10642282067781501024, player, tintIndex);
    }

    pub fn GET_PLAYER_PARACHUTE_PACK_TINT_INDEX(player: types.Player, tintIndex: [*c]c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7970373186624480674)), player, tintIndex);
    }

    pub fn SET_PLAYER_HAS_RESERVE_PARACHUTE(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(9068757119162565475)), player);
    }

    pub fn GET_PLAYER_HAS_RESERVE_PARACHUTE(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6764374752099253411)), player);
    }

    pub fn SET_PLAYER_CAN_LEAVE_PARACHUTE_SMOKE_TRAIL(player: types.Player, enabled: windows.BOOL) void {
        _ = nativeCaller.invoke2(17582529595820257107, player, enabled);
    }

    pub fn SET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR(player: types.Player, r: c_int, g: c_int, b: c_int) void {
        _ = nativeCaller.invoke4(9374239562500810191, player, r, g, b);
    }

    pub fn GET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR(player: types.Player, r: [*c]c_int, g: [*c]c_int, b: [*c]c_int) void {
        _ = nativeCaller.invoke4(17246213354101229703, player, r, g, b);
    }

    pub fn SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS(player: types.Player, flags: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1285205011011698912)), player, flags);
    }

    pub fn SET_PLAYER_NOISE_MULTIPLIER(player: types.Player, multiplier: f32) void {
        _ = nativeCaller.invoke2(15819438297272679657, player, multiplier);
    }

    pub fn SET_PLAYER_SNEAKING_NOISE_MULTIPLIER(player: types.Player, multiplier: f32) void {
        _ = nativeCaller.invoke2(12880755172382995580, player, multiplier);
    }

    pub fn CAN_PED_HEAR_PLAYER(player: types.Player, ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke2(17480502303258429993, player, ped);
    }

    pub fn SIMULATE_PLAYER_INPUT_GAIT(player: types.Player, amount: f32, gaitType: c_int, speed: f32, p4: windows.BOOL, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(5151376232427735645)), player, amount, gaitType, speed, p4, p5);
    }

    pub fn RESET_PLAYER_INPUT_GAIT(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1824833368012609169)), player);
    }

    pub fn SET_AUTO_GIVE_PARACHUTE_WHEN_ENTER_PLANE(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(11471849700316629942, player, toggle);
    }

    pub fn _0xD2B315B6689D537D(player: types.Player, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(15182502641979446141, player, p1);
    }

    pub fn SET_PLAYER_STEALTH_PERCEPTION_MODIFIER(player: types.Player, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5661061848659480698)), player, value);
    }

    pub fn _0x690A61A6D13583F6(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7568969492851950582)), p0);
    }

    pub fn _0x9EDD76E87D5D51BA(player: types.Player) void {
        _ = nativeCaller.invoke1(11447436568753426874, player);
    }

    pub fn SET_PLAYER_SIMULATE_AIMING(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(14216902889763161525, player, toggle);
    }

    pub fn SET_PLAYER_CLOTH_PIN_FRAMES(player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8403626605533980976)), player, toggle);
    }

    pub fn SET_PLAYER_CLOTH_PACKAGE_INDEX(index: c_int) void {
        _ = nativeCaller.invoke1(11491983583685846272, index);
    }

    pub fn SET_PLAYER_CLOTH_LOCK_COUNTER(value: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1502253629415880154)), value);
    }

    pub fn PLAYER_ATTACH_VIRTUAL_BOUND(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32) void {
        _ = nativeCaller.invoke8(17100575969275211089, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn PLAYER_DETACH_VIRTUAL_BOUND() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2149775572197631945)));
    }

    pub fn HAS_PLAYER_BEEN_SPOTTED_IN_STOLEN_VEHICLE(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(15493917686594916172, player);
    }

    pub fn _0x38D28DA81E4E9BF9(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4094490764435692537)), player);
    }

    pub fn _0xBC0753C9CA14B506(p0: types.Any, p1: c_int, p2: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(13548890130111313158, p0, p1, p2);
    }

    pub fn _0x5006D96C995A5827(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5766535433347029031)), p0, p1, p2);
    }

    pub fn IS_PLAYER_RIDING_TRAIN(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5674859435992752534)), player);
    }

    pub fn HAS_PLAYER_LEFT_THE_WORLD(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(15374690669139436180, player);
    }

    pub fn _0xFF300C7649724A0B(player: types.Player, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(18388210980731636235, player, p1);
    }

    pub fn SET_PLAYER_PARACHUTE_VARIATION_OVERRIDE(player: types.Player, p1: c_int, p2: types.Any, p3: types.Any, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(15647838870677501228, player, p1, p2, p3, p4);
    }

    pub fn CLEAR_PLAYER_PARACHUTE_VARIATION_OVERRIDE(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1102477168737024801)), player);
    }

    pub fn SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(player: types.Player, model: types.Hash) void {
        _ = nativeCaller.invoke2(10916079413933097947, player, model);
    }

    pub fn CLEAR_PLAYER_PARACHUTE_MODEL_OVERRIDE(player: types.Player) void {
        _ = nativeCaller.invoke1(9751306387685043775, player);
    }

    pub fn SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(player: types.Player, model: types.Hash) void {
        _ = nativeCaller.invoke2(15888880642546084708, player, model);
    }

    pub fn CLEAR_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1208458126999759682)), player);
    }

    pub fn DISABLE_PLAYER_VEHICLE_REWARDS(player: types.Player) void {
        _ = nativeCaller.invoke1(13925902161512632927, player);
    }

    pub fn _0x2F7CEB6520288061(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3421868636458483809)), p0);
    }

    pub fn _0x5DC40A8869C22141(p0: windows.BOOL, p1: types.ScrHandle) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6756536921968746817)), p0, p1);
    }

    pub fn _0x65FAEE425DE637B0(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7348447710819006384)), p0);
    }

    pub fn _0x5501B7A5CDB79D37(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6125378890949434679)), p0);
    }

    pub fn _0x56105E599CAB0EFA(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(6201560425862729466)), p0);
    }
};

pub const ENTITY = struct {
    pub fn DOES_ENTITY_EXIST(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8230805619690780346)), entity);
    }

    pub fn DOES_ENTITY_BELONG_TO_THIS_SCRIPT(entity: types.Entity, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(15989713108567949778, entity, p1);
    }

    pub fn DOES_ENTITY_HAVE_DRAWABLE(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(436126333621822605)), entity);
    }

    pub fn DOES_ENTITY_HAVE_PHYSICS(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(15750752776961675364, entity);
    }

    pub fn HAS_ENTITY_ANIM_FINISHED(entity: types.Entity, animDict: [*c]u8, animName: [*c]u8, p3: c_int) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(2357372060430414962)), entity, animDict, animName, p3);
    }

    pub fn HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(10802896790238288997, entity);
    }

    pub fn HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6944368192628204689)), entity);
    }

    pub fn HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(16128801213299861960, entity);
    }

    pub fn HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY(entity1: types.Entity, entity2: types.Entity, p2: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(14442313745284758776, entity1, entity2, p2);
    }

    pub fn HAS_ENTITY_CLEAR_LOS_TO_ENTITY(entity1: types.Entity, entity2: types.Entity, traceType: c_int) windows.BOOL {
        return nativeCaller.invoke3(18221554983472701868, entity1, entity2, traceType);
    }

    pub fn HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT(entity1: types.Entity, entity2: types.Entity) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(173335856089985402)), entity1, entity2);
    }

    pub fn HAS_ENTITY_COLLIDED_WITH_ANYTHING(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(10064703972973583892, entity);
    }

    pub fn GET_LAST_MATERIAL_HIT_BY_ENTITY(entity: types.Entity) types.Hash {
        return nativeCaller.invoke1(@as(u64, @intCast(6646480253144489036)), entity);
    }

    pub fn GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY(entity: types.Entity) types.Vector3 {
        return nativeCaller.invoke1(16457794246291140210, entity);
    }

    pub fn FORCE_ENTITY_AI_AND_ANIMATION_UPDATE(entity: types.Entity) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4683160558567068594)), entity);
    }

    pub fn GET_ENTITY_ANIM_CURRENT_TIME(entity: types.Entity, animDict: [*c]u8, animName: [*c]u8) f32 {
        return nativeCaller.invoke3(@as(u64, @intCast(3777817843249745730)), entity, animDict, animName);
    }

    pub fn GET_ENTITY_ANIM_TOTAL_TIME(entity: types.Entity, animDict: [*c]u8, animName: [*c]u8) f32 {
        return nativeCaller.invoke3(@as(u64, @intCast(5817849383723590496)), entity, animDict, animName);
    }

    pub fn _GET_ANIM_DURATION(animDict: [*c]u8, animName: [*c]u8) f32 {
        return nativeCaller.invoke2(18365099070646179728, animDict, animName);
    }

    pub fn GET_ENTITY_ATTACHED_TO(entity: types.Entity) types.Entity {
        return nativeCaller.invoke1(@as(u64, @intCast(5242962755833553187)), entity);
    }

    pub fn GET_ENTITY_COORDS(entity: types.Entity, alive: windows.BOOL) types.Vector3 {
        return nativeCaller.invoke2(@as(u64, @intCast(4607031842625162586)), entity, alive);
    }

    pub fn GET_ENTITY_FORWARD_VECTOR(entity: types.Entity) types.Vector3 {
        return nativeCaller.invoke1(@as(u64, @intCast(754716164444708753)), entity);
    }

    pub fn GET_ENTITY_FORWARD_X(entity: types.Entity) f32 {
        return nativeCaller.invoke1(10066934134177064661, entity);
    }

    pub fn GET_ENTITY_FORWARD_Y(entity: types.Entity) f32 {
        return nativeCaller.invoke1(9685635723418703120, entity);
    }

    pub fn GET_ENTITY_HEADING(entity: types.Entity) f32 {
        return nativeCaller.invoke1(16734619320245782804, entity);
    }

    pub fn _GET_ENTITY_PHYSICS_HEADING(entity: types.Entity) f32 {
        return nativeCaller.invoke1(9541990891763836702, entity);
    }

    pub fn GET_ENTITY_HEALTH(entity: types.Entity) c_int {
        return nativeCaller.invoke1(17217360309205258761, entity);
    }

    pub fn GET_ENTITY_MAX_HEALTH(entity: types.Entity) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(1573822666447981628)), entity);
    }

    pub fn SET_ENTITY_MAX_HEALTH(entity: types.Entity, value: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1616366714517706933)), entity, value);
    }

    pub fn GET_ENTITY_HEIGHT(entity: types.Entity, X: f32, Y: f32, Z: f32, atTop: windows.BOOL, inWorldCoords: windows.BOOL) f32 {
        return nativeCaller.invoke6(@as(u64, @intCast(6507777749973288157)), entity, X, Y, Z, atTop, inWorldCoords);
    }

    pub fn GET_ENTITY_HEIGHT_ABOVE_GROUND(entity: types.Entity) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(2149720059000459493)), entity);
    }

    pub fn GET_ENTITY_MATRIX(entity: types.Entity, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Vector3, p4: [*c]types.Vector3) void {
        _ = nativeCaller.invoke5(17055972306262151479, entity, p1, p2, p3, p4);
    }

    pub fn GET_ENTITY_MODEL(entity: types.Entity) types.Hash {
        return nativeCaller.invoke1(11477336068289496245, entity);
    }

    pub fn GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS(entity: types.Entity, posX: f32, posY: f32, posZ: f32) types.Vector3 {
        return nativeCaller.invoke4(@as(u64, @intCast(2482816124249826099)), entity, posX, posY, posZ);
    }

    pub fn GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(entity: types.Entity, offsetX: f32, offsetY: f32, offsetZ: f32) types.Vector3 {
        return nativeCaller.invoke4(@as(u64, @intCast(1772715284438788168)), entity, offsetX, offsetY, offsetZ);
    }

    pub fn GET_ENTITY_PITCH(entity: types.Entity) f32 {
        return nativeCaller.invoke1(15302601003449311742, entity);
    }

    pub fn GET_ENTITY_QUATERNION(entity: types.Entity, x: [*c]f32, y: [*c]f32, z: [*c]f32, w: [*c]f32) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(8878569394405243416)), entity, x, y, z, w);
    }

    pub fn GET_ENTITY_ROLL(entity: types.Entity) f32 {
        return nativeCaller.invoke1(9447991552259743967, entity);
    }

    pub fn GET_ENTITY_ROTATION(entity: types.Entity, p1: c_int) types.Vector3 {
        return nativeCaller.invoke2(12663385257975586489, entity, p1);
    }

    pub fn GET_ENTITY_ROTATION_VELOCITY(entity: types.Entity) types.Vector3 {
        return nativeCaller.invoke1(@as(u64, @intCast(2394667074804365699)), entity);
    }

    pub fn GET_ENTITY_SCRIPT(entity: types.Entity, script: [*c]types.Any) [*c]u8 {
        return nativeCaller.invoke2(12027359293266032456, entity, script);
    }

    pub fn GET_ENTITY_SPEED(entity: types.Entity) f32 {
        return nativeCaller.invoke1(15349247917266452847, entity);
    }

    pub fn GET_ENTITY_SPEED_VECTOR(entity: types.Entity, relative: windows.BOOL) types.Vector3 {
        return nativeCaller.invoke2(11136680643181378317, entity, relative);
    }

    pub fn GET_ENTITY_UPRIGHT_VALUE(p0: types.Any) f32 {
        return nativeCaller.invoke1(10803807467542486943, p0);
    }

    pub fn GET_ENTITY_VELOCITY(entity: types.Entity) types.Vector3 {
        return nativeCaller.invoke1(@as(u64, @intCast(5189785806902891689)), entity);
    }

    pub fn GET_OBJECT_INDEX_FROM_ENTITY_INDEX(entity: types.Entity) types.Object {
        return nativeCaller.invoke1(15556481442984724950, entity);
    }

    pub fn GET_PED_INDEX_FROM_ENTITY_INDEX(entity: types.Entity) types.Ped {
        return nativeCaller.invoke1(@as(u64, @intCast(334009695758536769)), entity);
    }

    pub fn GET_VEHICLE_INDEX_FROM_ENTITY_INDEX(entity: types.Entity) types.Vehicle {
        return nativeCaller.invoke1(@as(u64, @intCast(5427955931250817728)), entity);
    }

    pub fn GET_WORLD_POSITION_OF_ENTITY_BONE(entity: types.Entity, boneIndex: c_int) types.Vector3 {
        return nativeCaller.invoke2(@as(u64, @intCast(4947482061849130808)), entity, boneIndex);
    }

    pub fn GET_NEAREST_PLAYER_TO_ENTITY(entity: types.Entity) types.Player {
        return nativeCaller.invoke1(@as(u64, @intCast(8184874700316724659)), entity);
    }

    pub fn GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM(entity: types.Entity, team: c_int) types.Player {
        return nativeCaller.invoke2(@as(u64, @intCast(5605193934252643127)), entity, team);
    }

    pub fn GET_ENTITY_TYPE(entity: types.Entity) c_int {
        return nativeCaller.invoke1(10001710134357738757, entity);
    }

    pub fn _GET_ENTITY_POPULATION_TYPE(entity: types.Entity) c_int {
        return nativeCaller.invoke1(17795153826185276927, entity);
    }

    pub fn IS_AN_ENTITY(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8295288192219550113)), entity);
    }

    pub fn IS_ENTITY_A_PED(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5929769480716891198)), entity);
    }

    pub fn IS_ENTITY_A_MISSION_ENTITY(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(755240282434935612)), entity);
    }

    pub fn IS_ENTITY_A_VEHICLE(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7694118761768769374)), entity);
    }

    pub fn IS_ENTITY_AN_OBJECT(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(10189615146141002062, entity);
    }

    pub fn IS_ENTITY_AT_COORD(entity: types.Entity, posX: f32, posY: f32, posZ: f32, sizeX: f32, sizeY: f32, sizeZ: f32, p7: windows.BOOL, p8: windows.BOOL, p9: c_int) windows.BOOL {
        return nativeCaller.invoke10(@as(u64, @intCast(2357081991963017295)), entity, posX, posY, posZ, sizeX, sizeY, sizeZ, p7, p8, p9);
    }

    pub fn IS_ENTITY_AT_ENTITY(entity1: types.Entity, entity2: types.Entity, sizeX: f32, sizeY: f32, sizeZ: f32, p5: windows.BOOL, p6: windows.BOOL, p7: c_int) windows.BOOL {
        return nativeCaller.invoke8(@as(u64, @intCast(8438462313122816391)), entity1, entity2, sizeX, sizeY, sizeZ, p5, p6, p7);
    }

    pub fn IS_ENTITY_ATTACHED(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(12918091122985027735, entity);
    }

    pub fn IS_ENTITY_ATTACHED_TO_ANY_OBJECT(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(14938748105593315532, entity);
    }

    pub fn IS_ENTITY_ATTACHED_TO_ANY_PED(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(12782111407971274001, entity);
    }

    pub fn IS_ENTITY_ATTACHED_TO_ANY_VEHICLE(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2786199138849258315)), entity);
    }

    pub fn IS_ENTITY_ATTACHED_TO_ENTITY(from: types.Entity, to: types.Entity) windows.BOOL {
        return nativeCaller.invoke2(17275370056189556520, from, to);
    }

    pub fn IS_ENTITY_DEAD(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6887467227441538385)), entity);
    }

    pub fn IS_ENTITY_IN_AIR(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(9830856524580389046, entity);
    }

    pub fn IS_ENTITY_IN_ANGLED_AREA(entity: types.Entity, x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, angle: f32, p8: windows.BOOL, p9: windows.BOOL, p10: types.Any) windows.BOOL {
        return nativeCaller.invoke11(@as(u64, @intCast(5845968004384409482)), entity, x1, y1, z1, x2, y2, z2, angle, p8, p9, p10);
    }

    pub fn IS_ENTITY_IN_AREA(entity: types.Entity, x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, p7: windows.BOOL, p8: windows.BOOL, p9: types.Any) windows.BOOL {
        return nativeCaller.invoke10(@as(u64, @intCast(6085324774352294245)), entity, x1, y1, z1, x2, y2, z2, p7, p8, p9);
    }

    pub fn IS_ENTITY_IN_ZONE(entity: types.Entity, zone: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(13134252393473667185, entity, zone);
    }

    pub fn IS_ENTITY_IN_WATER(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(14965638415315453347, entity);
    }

    pub fn GET_ENTITY_SUBMERGED_LEVEL(entity: types.Entity) f32 {
        return nativeCaller.invoke1(16724957362389795278, entity);
    }

    pub fn _0x694E00132F2823ED(entity: types.Entity, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7588002504561402861)), entity, p1);
    }

    pub fn IS_ENTITY_ON_SCREEN(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(16598549118451140683, entity);
    }

    pub fn IS_ENTITY_PLAYING_ANIM(entity: types.Entity, animDict: [*c]u8, animName: [*c]u8, p4: c_int) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(2237014829242392265)), entity, animDict, animName, p4);
    }

    pub fn IS_ENTITY_STATIC(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1304045565746447143)), entity);
    }

    pub fn IS_ENTITY_TOUCHING_ENTITY(entity: types.Entity, targetEntity: types.Entity) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(1729313755305976980)), entity, targetEntity);
    }

    pub fn IS_ENTITY_TOUCHING_MODEL(entity: types.Entity, modelHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(1099496473397398668)), entity, modelHash);
    }

    pub fn IS_ENTITY_UPRIGHT(entity: types.Entity, angle: f32) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5995405076656232874)), entity, angle);
    }

    pub fn IS_ENTITY_UPSIDEDOWN(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2142966313329761649)), entity);
    }

    pub fn IS_ENTITY_VISIBLE(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5176593366545292405)), entity);
    }

    pub fn IS_ENTITY_VISIBLE_TO_SCRIPT(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(15534827559198002738, entity);
    }

    pub fn IS_ENTITY_OCCLUDED(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(16365004017189333860, entity);
    }

    pub fn WOULD_ENTITY_BE_OCCLUDED(entity: types.Entity, x: f32, y: f32, z: f32, p4: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(17175930811431119938, entity, x, y, z, p4);
    }

    pub fn IS_ENTITY_WAITING_FOR_WORLD_COLLISION(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(15013874209943373455, entity);
    }

    pub fn APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(entity: types.Entity, forceType: c_int, x: f32, y: f32, z: f32, p5: windows.BOOL, p6: windows.BOOL, p7: windows.BOOL, p8: windows.BOOL) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(1801159460433909150)), entity, forceType, x, y, z, p5, p6, p7, p8);
    }

    pub fn APPLY_FORCE_TO_ENTITY(entity: types.Entity, forceType: c_int, x: f32, y: f32, z: f32, xRot: f32, yRot: f32, zRot: f32, p8: c_int, isRel: windows.BOOL, ignoreUpVec: windows.BOOL, p11: windows.BOOL, p12: windows.BOOL, p13: windows.BOOL) void {
        _ = nativeCaller.invoke14(14264742704217730328, entity, forceType, x, y, z, xRot, yRot, zRot, p8, isRel, ignoreUpVec, p11, p12, p13);
    }

    pub fn ATTACH_ENTITY_TO_ENTITY(entity1: types.Entity, entity2: types.Entity, boneIndexEnt2: c_int, posX: f32, posY: f32, posZ: f32, rotX: f32, rotY: f32, rotZ: f32, p9: windows.BOOL, isRelative: windows.BOOL, collision: windows.BOOL, allowRotation: windows.BOOL, boneIndexEnt1: c_int, fixedRot: windows.BOOL) void {
        _ = nativeCaller.invoke15(@as(u64, @intCast(7753999234533660383)), entity1, entity2, boneIndexEnt2, posX, posY, posZ, rotX, rotY, rotZ, p9, isRelative, collision, allowRotation, boneIndexEnt1, fixedRot);
    }

    pub fn ATTACH_ENTITY_TO_ENTITY_PHYSICALLY(entity1: types.Entity, entity2: types.Entity, boneIndex1: c_int, boneIndex2: c_int, posX1: f32, posY1: f32, posZ1: f32, posX2: f32, posY2: f32, posZ2: f32, rotX: f32, rotY: f32, rotZ: f32, breakForce: f32, fixedRot: windows.BOOL, p15: windows.BOOL, collision: windows.BOOL, p17: windows.BOOL, p18: c_int) void {
        _ = nativeCaller.invoke19(14080318970639913209, entity1, entity2, boneIndex1, boneIndex2, posX1, posY1, posZ1, posX2, posY2, posZ2, rotX, rotY, rotZ, breakForce, fixedRot, p15, collision, p17, p18);
    }

    pub fn PROCESS_ENTITY_ATTACHMENTS(entity: types.Entity) void {
        _ = nativeCaller.invoke1(17584309764505279599, entity);
    }

    pub fn GET_ENTITY_BONE_INDEX_BY_NAME(entity: types.Entity, boneName: [*c]u8) c_int {
        return nativeCaller.invoke2(18118288114022001850, entity, boneName);
    }

    pub fn CLEAR_ENTITY_LAST_DAMAGE_ENTITY(entity: types.Entity) void {
        _ = nativeCaller.invoke1(12046242566872886458, entity);
    }

    pub fn DELETE_ENTITY(entity: [*c]types.Entity) void {
        _ = nativeCaller.invoke1(12555119163340016073, entity);
    }

    pub fn DETACH_ENTITY(entity: types.Entity, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(10816174385029791581, entity, p1, p2);
    }

    pub fn FREEZE_ENTITY_POSITION(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4795391166277829702)), entity, toggle);
    }

    pub fn _0x3910051CCECDB00C(entity: types.Entity, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4111792081076072460)), entity, p1);
    }

    pub fn PLAY_ENTITY_ANIM(entity: types.Entity, animName: [*c]u8, propName: [*c]u8, p3: f32, p4: windows.BOOL, p5: windows.BOOL, p6: windows.BOOL, delta: f32, bitset: types.Any) windows.BOOL {
        return nativeCaller.invoke9(@as(u64, @intCast(9201443540889044737)), entity, animName, propName, p3, p4, p5, p6, delta, bitset);
    }

    pub fn PLAY_SYNCHRONIZED_ENTITY_ANIM(entity: types.Entity, syncedScene: types.Entity, animation: [*c]u8, propName: [*c]u8, p4: f32, p5: f32, p6: types.Any, p7: f32) windows.BOOL {
        return nativeCaller.invoke8(14372992612441344646, entity, syncedScene, animation, propName, p4, p5, p6, p7);
    }

    pub fn PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: types.Any, p6: [*c]types.Any, p7: [*c]types.Any, p8: f32, p9: f32, p10: types.Any, p11: f32) windows.BOOL {
        return nativeCaller.invoke12(13386181702782614468, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
    }

    pub fn STOP_SYNCHRONIZED_MAP_ENTITY_ANIM(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: f32) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(1290172078422734581)), p0, p1, p2, p3, p4, p5);
    }

    pub fn STOP_ENTITY_ANIM(entity: types.Entity, animation: [*c]u8, animGroup: [*c]u8, p3: f32) types.Any {
        return nativeCaller.invoke4(@as(u64, @intCast(2882391207405552608)), entity, animation, animGroup, p3);
    }

    pub fn STOP_SYNCHRONIZED_ENTITY_ANIM(entity: types.Entity, p1: f32, p2: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(4887391290816356835)), entity, p1, p2);
    }

    pub fn HAS_ANIM_EVENT_FIRED(entity: types.Entity, actionHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke2(16930382980430948642, entity, actionHash);
    }

    pub fn FIND_ANIM_EVENT_PHASE(animDictionary: [*c]u8, animName: [*c]u8, p2: [*c]u8, p3: [*c]types.Any, p4: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(572447722979338151)), animDictionary, animName, p2, p3, p4);
    }

    pub fn SET_ENTITY_ANIM_CURRENT_TIME(entity: types.Entity, animDictionary: [*c]u8, animName: [*c]u8, time: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(4938129207985637751)), entity, animDictionary, animName, time);
    }

    pub fn SET_ENTITY_ANIM_SPEED(entity: types.Entity, animDictionary: [*c]u8, animName: [*c]u8, speedMultiplier: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(2941309488218838902)), entity, animDictionary, animName, speedMultiplier);
    }

    pub fn SET_ENTITY_AS_MISSION_ENTITY(entity: types.Entity, value: windows.BOOL, byThisScript: windows.BOOL) void {
        _ = nativeCaller.invoke3(12498487530917625361, entity, value, byThisScript);
    }

    pub fn SET_ENTITY_AS_NO_LONGER_NEEDED(entity: [*c]types.Entity) void {
        _ = nativeCaller.invoke1(13201920304224023247, entity);
    }

    pub fn SET_PED_AS_NO_LONGER_NEEDED(ped: [*c]types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2708314027382316259)), ped);
    }

    pub fn SET_VEHICLE_AS_NO_LONGER_NEEDED(vehicle: [*c]types.Vehicle) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7105548214330024505)), vehicle);
    }

    pub fn SET_OBJECT_AS_NO_LONGER_NEEDED(object: [*c]types.Object) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4243004287814575078)), object);
    }

    pub fn SET_ENTITY_CAN_BE_DAMAGED(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1684627360525536614)), entity, toggle);
    }

    pub fn SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP(entity: types.Entity, p1: windows.BOOL, p2: types.Any) void {
        _ = nativeCaller.invoke3(16297840812409717017, entity, p1, p2);
    }

    pub fn SET_ENTITY_CAN_BE_TARGETED_WITHOUT_LOS(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(15247350545182087321, entity, toggle);
    }

    pub fn SET_ENTITY_COLLISION(entity: types.Entity, toggle: windows.BOOL, keepPhysics: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(1914599121192125055)), entity, toggle, keepPhysics);
    }

    pub fn _0xCCF1E97BEFDAE480(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(14767841371638916224, p0);
    }

    pub fn _0x9EBC85ED0FFFE51C(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(11438164406836389148, p0, p1, p2);
    }

    pub fn SET_ENTITY_COORDS(entity: types.Entity, X: f32, Y: f32, Z: f32, xAxis: windows.BOOL, yAxis: windows.BOOL, zAxis: windows.BOOL, p7: windows.BOOL) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(469568048723526251)), entity, X, Y, Z, xAxis, yAxis, zAxis, p7);
    }

    pub fn _SET_ENTITY_COORDS_2(entity: types.Entity, X: f32, Y: f32, Z: f32, xAxis: windows.BOOL, yAxis: windows.BOOL, zAxis: windows.BOOL, p7: windows.BOOL) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(7068527076383885671)), entity, X, Y, Z, xAxis, yAxis, zAxis, p7);
    }

    pub fn SET_ENTITY_COORDS_NO_OFFSET(entity: types.Entity, X: f32, Y: f32, Z: f32, p4: windows.BOOL, p5: windows.BOOL, p6: windows.BOOL) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(2565419363613909893)), entity, X, Y, Z, p4, p5, p6);
    }

    pub fn SET_ENTITY_DYNAMIC(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1664324764839715786)), entity, toggle);
    }

    pub fn SET_ENTITY_HEADING(entity: types.Entity, heading: f32) void {
        _ = nativeCaller.invoke2(10242646436556216334, entity, heading);
    }

    pub fn SET_ENTITY_HEALTH(entity: types.Entity, health: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7743618636000454307)), entity, health);
    }

    pub fn SET_ENTITY_INVINCIBLE(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4071836030646819540)), entity, toggle);
    }

    pub fn SET_ENTITY_IS_TARGET_PRIORITY(entity: types.Entity, p1: windows.BOOL, p2: f32) void {
        _ = nativeCaller.invoke3(16862287563816601378, entity, p1, p2);
    }

    pub fn SET_ENTITY_LIGHTS(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(9005975120541333620)), entity, toggle);
    }

    pub fn SET_ENTITY_LOAD_COLLISION_FLAG(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(992985146056095358)), entity, toggle);
    }

    pub fn HAS_COLLISION_LOADED_AROUND_ENTITY(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(16818533798995768097, entity);
    }

    pub fn SET_ENTITY_MAX_SPEED(entity: types.Entity, speed: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1028689870813569457)), entity, speed);
    }

    pub fn SET_ENTITY_ONLY_DAMAGED_BY_PLAYER(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8786559155253806920)), entity, toggle);
    }

    pub fn SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP(entity: types.Entity, p1: windows.BOOL, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(8080229049909162114)), entity, p1, p2);
    }

    pub fn SET_ENTITY_PROOFS(entity: types.Entity, bulletProof: windows.BOOL, fireProof: windows.BOOL, explosionProof: windows.BOOL, collisionProof: windows.BOOL, meleeProof: windows.BOOL, p6: windows.BOOL, p7: windows.BOOL, drownProof: windows.BOOL) void {
        _ = nativeCaller.invoke9(18081400121429920696, entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, p6, p7, drownProof);
    }

    pub fn SET_ENTITY_QUATERNION(entity: types.Entity, x: f32, y: f32, z: f32, w: f32) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(8624986918210506503)), entity, x, y, z, w);
    }

    pub fn SET_ENTITY_RECORDS_COLLISIONS(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(743271985761492581)), entity, toggle);
    }

    pub fn SET_ENTITY_ROTATION(entity: types.Entity, pitch: f32, roll: f32, yaw: f32, p4: c_int, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(9593978580461510151, entity, pitch, roll, yaw, p4, p5);
    }

    pub fn SET_ENTITY_VISIBLE(entity: types.Entity, toggle: windows.BOOL, unkb: windows.BOOL) void {
        _ = nativeCaller.invoke3(16869464999882091451, entity, toggle, unkb);
    }

    pub fn SET_ENTITY_VELOCITY(entity: types.Entity, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(2060884443309461871)), entity, x, y, z);
    }

    pub fn SET_ENTITY_HAS_GRAVITY(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5352284360007020277)), entity, toggle);
    }

    pub fn SET_ENTITY_LOD_DIST(entity: types.Entity, value: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6424377629148148579)), entity, value);
    }

    pub fn GET_ENTITY_LOD_DIST(entity: types.Entity) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(4709008698181652950)), entity);
    }

    pub fn SET_ENTITY_ALPHA(entity: types.Entity, alphaLevel: c_int, skin: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4945100874290747328)), entity, alphaLevel, skin);
    }

    pub fn GET_ENTITY_ALPHA(entity: types.Entity) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(6505365780593284294)), entity);
    }

    pub fn RESET_ENTITY_ALPHA(entity: types.Entity) void {
        _ = nativeCaller.invoke1(11177514605217251962, entity);
    }

    pub fn _0x5C3B791D580E0BC2(entity: types.Entity, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6646038842053626818)), entity, p1);
    }

    pub fn SET_ENTITY_ALWAYS_PRERENDER(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(12442619067061659273, entity, toggle);
    }

    pub fn SET_ENTITY_RENDER_SCORCHED(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8290950499265355856)), entity, toggle);
    }

    pub fn SET_ENTITY_TRAFFICLIGHT_OVERRIDE(entity: types.Entity, state: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6324702480186075844)), entity, state);
    }

    pub fn _0x78E8E3A640178255(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8712463782327583317)), p0);
    }

    pub fn CREATE_MODEL_SWAP(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: types.Any, p6: windows.BOOL) void {
        _ = nativeCaller.invoke7(10575709229457912483, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn REMOVE_MODEL_SWAP(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: types.Any, p6: windows.BOOL) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(233078436508346798)), p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn CREATE_MODEL_HIDE(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(9986658107151672440, p0, p1, p2, p3, p4, p5);
    }

    pub fn CREATE_MODEL_HIDE_EXCLUDING_SCRIPT_OBJECTS(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(4202613097555345279)), p0, p1, p2, p3, p4, p5);
    }

    pub fn REMOVE_MODEL_HIDE(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) void {
        _ = nativeCaller.invoke6(15700393205701531493, p0, p1, p2, p3, p4, p5);
    }

    pub fn CREATE_FORCED_OBJECT(x: f32, y: f32, z: f32, p3: types.Any, modelHash: types.Hash, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(1517291459887904858)), x, y, z, p3, modelHash, p5);
    }

    pub fn REMOVE_FORCED_OBJECT(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(7040946315261434735)), p0, p1, p2, p3, p4);
    }

    pub fn SET_ENTITY_NO_COLLISION_ENTITY(entity1: types.Entity, entity2: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke3(11907189013180015946, entity1, entity2, toggle);
    }

    pub fn SET_ENTITY_MOTION_BLUR(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2980682187891773776)), entity, toggle);
    }

    pub fn _0xE12ABE5E3A389A6C(entity: types.Entity, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(16224989919468624492, entity, p1);
    }

    pub fn _0xA80AE305E0A3044F(entity: types.Entity, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12108740162522121295, entity, p1);
    }

    pub fn _0xDC6F8601FAF2E893(entity: types.Entity, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(15884061753822341267, entity, p1);
    }

    pub fn _0x2C2E3DC128F44309(entity: types.Entity, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3183549886422598409)), entity, p1);
    }

    pub fn _0x1A092BB0C3808B96(entity: types.Entity, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1876078757970742166)), entity, p1);
    }
};

pub const PED = struct {
    pub fn CREATE_PED(pedType: c_int, modelHash: types.Hash, x: f32, y: f32, z: f32, heading: f32, networkHandle: windows.BOOL, pedHandle: windows.BOOL) types.Ped {
        return nativeCaller.invoke8(15321134921733597150, pedType, modelHash, x, y, z, heading, networkHandle, pedHandle);
    }

    pub fn DELETE_PED(ped: [*c]types.Ped) void {
        _ = nativeCaller.invoke1(10814314362921280843, ped);
    }

    pub fn CLONE_PED(ped: types.Ped, heading: f32, networkHandle: windows.BOOL, pedHandle: windows.BOOL) types.Ped {
        return nativeCaller.invoke4(17233482896622930651, ped, heading, networkHandle, pedHandle);
    }

    pub fn _ASSIGN_PLAYER_TO_PED(player: types.Player, ped: types.Ped) void {
        _ = nativeCaller.invoke2(16812735942556757402, player, ped);
    }

    pub fn IS_PED_IN_VEHICLE(ped: types.Ped, vehicle: types.Vehicle, atGetIn: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(11812460267229133275, ped, vehicle, atGetIn);
    }

    pub fn IS_PED_IN_MODEL(ped: types.Ped, modelHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(8749809010202026802)), ped, modelHash);
    }

    pub fn IS_PED_IN_ANY_VEHICLE(ped: types.Ped, atGetIn: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(11059360085529971211, ped, atGetIn);
    }

    pub fn IS_COP_PED_IN_AREA_3D(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(1651774575515508574)), x1, y1, z1, x2, y2, z2);
    }

    pub fn IS_PED_INJURED(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(9557445016008013249, ped);
    }

    pub fn IS_PED_HURT(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6450204994699254546)), ped);
    }

    pub fn IS_PED_FATALLY_INJURED(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(15580560283690424960, ped);
    }

    pub fn IS_PED_DEAD_OR_DYING(ped: types.Ped, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(3681656254872768568)), ped, p1);
    }

    pub fn IS_CONVERSATION_PED_DEAD(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(16186129209363659450, ped);
    }

    pub fn IS_PED_AIMING_FROM_COVER(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4150261839465480421)), ped);
    }

    pub fn IS_PED_RELOADING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2643895309002103121)), ped);
    }

    pub fn IS_PED_A_PLAYER(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1320482904327632523)), ped);
    }

    pub fn CREATE_PED_INSIDE_VEHICLE(vehicle: types.Vehicle, pedType: c_int, modelHash: types.Hash, seat: c_int, networkHandle: windows.BOOL, pedHandle: windows.BOOL) types.Ped {
        return nativeCaller.invoke6(@as(u64, @intCast(9068377762319815988)), vehicle, pedType, modelHash, seat, networkHandle, pedHandle);
    }

    pub fn SET_PED_DESIRED_HEADING(ped: types.Ped, heading: f32) void {
        _ = nativeCaller.invoke2(12275263158295789168, ped, heading);
    }

    pub fn _0xFF287323B0E2C69A(p0: types.Any) void {
        _ = nativeCaller.invoke1(18386072075868751514, p0);
    }

    pub fn IS_PED_FACING_PED(ped1: types.Ped, ped2: types.Player, angle: f32) windows.BOOL {
        return nativeCaller.invoke3(15498656372762106531, ped1, ped2, angle);
    }

    pub fn IS_PED_IN_MELEE_COMBAT(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5629670148008661337)), ped);
    }

    pub fn IS_PED_STOPPED(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5983389407396798996)), ped);
    }

    pub fn IS_PED_SHOOTING_IN_AREA(ped: types.Ped, x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, p7: windows.BOOL, p8: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke9(@as(u64, @intCast(9123727853582440687)), ped, x1, y1, z1, x2, y2, z2, p7, p8);
    }

    pub fn IS_ANY_PED_SHOOTING_IN_AREA(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: windows.BOOL, p7: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke8(11588842792705092693, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn IS_PED_SHOOTING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3774412487161016737)), ped);
    }

    pub fn SET_PED_ACCURACY(ped: types.Ped, accuracy: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8858501697828937398)), ped, accuracy);
    }

    pub fn GET_PED_ACCURACY(ped: types.Ped) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(4032038155253976278)), ped);
    }

    pub fn IS_PED_MODEL(ped: types.Ped, modelHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke2(14543630739788422135, ped, modelHash);
    }

    pub fn EXPLODE_PED_HEAD(ped: types.Ped, weaponHash: types.Hash) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3244226514967662394)), ped, weaponHash);
    }

    pub fn REMOVE_PED_ELEGANTLY(ped: [*c]types.Ped) void {
        _ = nativeCaller.invoke1(12424662107189803358, ped);
    }

    pub fn ADD_ARMOUR_TO_PED(ped: types.Ped, amount: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6604056754174353199)), ped, amount);
    }

    pub fn SET_PED_ARMOUR(ped: types.Ped, amount: c_int) void {
        _ = nativeCaller.invoke2(14888985593447081164, ped, amount);
    }

    pub fn SET_PED_INTO_VEHICLE(ped: types.Ped, vehicle: types.Vehicle, seatIndex: c_int) void {
        _ = nativeCaller.invoke3(17823854667459462717, ped, vehicle, seatIndex);
    }

    pub fn SET_PED_ALLOW_VEHICLES_OVERRIDE(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4324172950841413337)), ped, toggle);
    }

    pub fn CAN_CREATE_RANDOM_PED(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4504525143670489828)), p0);
    }

    pub fn CREATE_RANDOM_PED(posX: f32, posY: f32, posZ: f32) types.Ped {
        return nativeCaller.invoke3(13018918117347950223, posX, posY, posZ);
    }

    pub fn CREATE_RANDOM_PED_AS_DRIVER(vehicle: types.Vehicle, returnHandle: windows.BOOL) types.Ped {
        return nativeCaller.invoke2(11196574481639228576, vehicle, returnHandle);
    }

    pub fn CAN_CREATE_RANDOM_DRIVER() windows.BOOL {
        return nativeCaller.invoke0(13324908736320727416);
    }

    pub fn CAN_CREATE_RANDOM_BIKE_RIDER() windows.BOOL {
        return nativeCaller.invoke0(16919722156279042396);
    }

    pub fn SET_PED_MOVE_ANIMS_BLEND_OUT(ped: types.Ped) void {
        _ = nativeCaller.invoke1(11424665299683135181, ped);
    }

    pub fn SET_PED_CAN_BE_DRAGGED_OUT(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(13936123607432176869, ped, toggle);
    }

    pub fn _0xF2BEBCDFAFDAA19E(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17491625671667655070, p0);
    }

    pub fn IS_PED_MALE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7899137457135336006)), ped);
    }

    pub fn IS_PED_HUMAN(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(13366690418504398749, ped);
    }

    pub fn GET_VEHICLE_PED_IS_IN(ped: types.Ped, getLastVehicle: windows.BOOL) types.Vehicle {
        return nativeCaller.invoke2(11137703836139538195, ped, getLastVehicle);
    }

    pub fn RESET_PED_LAST_VEHICLE(ped: types.Ped) void {
        _ = nativeCaller.invoke1(13514714034352281787, ped);
    }

    pub fn SET_PED_DENSITY_MULTIPLIER_THIS_FRAME(multiplier: f32) void {
        _ = nativeCaller.invoke1(10800711787831782642, multiplier);
    }

    pub fn SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME(p0: f32, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8815058788752046232)), p0, p1);
    }

    pub fn _0x5A7F62FDA59759BD() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6521039627000175037)));
    }

    pub fn SET_SCRIPTED_CONVERSION_COORD_THIS_FRAME(x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5802544540557692805)), x, y, z);
    }

    pub fn SET_PED_NON_CREATION_AREA(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) void {
        _ = nativeCaller.invoke6(17149993380040246250, x1, y1, z1, x2, y2, z2);
    }

    pub fn CLEAR_PED_NON_CREATION_AREA() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3316092437016479313)));
    }

    pub fn _0x4759CC730F947C81() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5141365244174826625)));
    }

    pub fn IS_PED_ON_MOUNT(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5047347065715189086)), ped);
    }

    pub fn GET_MOUNT(p0: types.Any) types.Any {
        return nativeCaller.invoke1(16708666388346900568, p0);
    }

    pub fn IS_PED_ON_VEHICLE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7454067524096647083)), ped);
    }

    pub fn IS_PED_ON_SPECIFIC_VEHICLE(ped: types.Ped, vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke2(17032445446681738162, ped, vehicle);
    }

    pub fn SET_PED_MONEY(ped: types.Ped, amount: c_int) void {
        _ = nativeCaller.invoke2(12234193376882508213, ped, amount);
    }

    pub fn GET_PED_MONEY(ped: types.Ped) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(4569205681148115687)), ped);
    }

    pub fn _0xFF4803BC019852D9(p0: f32, p1: types.Any) void {
        _ = nativeCaller.invoke2(18394956784010285785, p0, p1);
    }

    pub fn _0x6B0E6172C9A4D902(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7714210357369428226)), p0);
    }

    pub fn _0x9911F4A24485F653(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11029865940178564691, p0);
    }

    pub fn SET_PED_SUFFERS_CRITICAL_HITS(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(16994173916529397932, ped, toggle);
    }

    pub fn _0xAFC976FD0580C7B3(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12666786256047359923, p0, p1);
    }

    pub fn IS_PED_SITTING_IN_VEHICLE(ped: types.Ped, vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke2(12108114641748692930, ped, vehicle);
    }

    pub fn IS_PED_SITTING_IN_ANY_VEHICLE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(9397505571394551544, ped);
    }

    pub fn IS_PED_ON_FOOT(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(143805665679202738)), ped);
    }

    pub fn IS_PED_ON_ANY_BIKE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(10685168940141536377, ped);
    }

    pub fn IS_PED_PLANTING_BOMB(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(14342662639574418136, ped);
    }

    pub fn GET_DEAD_PED_PICKUP_COORDS(p0: types.Any, p1: f32, p2: f32) types.Vector3 {
        return nativeCaller.invoke3(14794328832896667446, p0, p1, p2);
    }

    pub fn IS_PED_IN_ANY_BOAT(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3318620947760329529)), ped);
    }

    pub fn IS_PED_IN_ANY_SUB(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(18157389777550563742, ped);
    }

    pub fn IS_PED_IN_ANY_HELI(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2993646556015384325)), ped);
    }

    pub fn IS_PED_IN_ANY_PLANE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6917332199840217984)), ped);
    }

    pub fn IS_PED_IN_FLYING_VEHICLE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(10463136496930668956, ped);
    }

    pub fn SET_PED_DIES_IN_WATER(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6255201556019755998)), ped, toggle);
    }

    pub fn SET_PED_DIES_IN_SINKING_VEHICLE(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(15499316417087583420, ped, toggle);
    }

    pub fn GET_PED_ARMOUR(ped: types.Ped) c_int {
        return nativeCaller.invoke1(10701590112812511704, ped);
    }

    pub fn SET_PED_STAY_IN_VEHICLE_WHEN_JACKED(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(17146338063427094945, ped, toggle);
    }

    pub fn SET_PED_CAN_BE_SHOT_IN_VEHICLE(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(14406764142192015879, ped, toggle);
    }

    pub fn GET_PED_LAST_DAMAGE_BONE(ped: types.Ped, outBone: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(15517540603941266588, ped, outBone);
    }

    pub fn CLEAR_PED_LAST_DAMAGE_BONE(ped: types.Ped) void {
        _ = nativeCaller.invoke1(10301623148778549275, ped);
    }

    pub fn SET_AI_WEAPON_DAMAGE_MODIFIER(value: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1954045745482663201)), value);
    }

    pub fn RESET_AI_WEAPON_DAMAGE_MODIFIER() void {
        _ = nativeCaller.invoke0(16867782766264349756);
    }

    pub fn SET_AI_MELEE_WEAPON_DAMAGE_MODIFIER(modifier: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7369593155508859476)), modifier);
    }

    pub fn RESET_AI_MELEE_WEAPON_DAMAGE_MODIFIER() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5108606436650662975)));
    }

    pub fn _0x2F3C3D9F50681DE4(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3403663172843347428)), p0, p1);
    }

    pub fn SET_PED_CAN_BE_TARGETTED(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7202820943940500141)), ped, toggle);
    }

    pub fn SET_PED_CAN_BE_TARGETTED_BY_TEAM(ped: types.Ped, team: types.Any, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke3(13771065895300730668, ped, team, toggle);
    }

    pub fn SET_PED_CAN_BE_TARGETTED_BY_PLAYER(ped: types.Ped, player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7400957295976475254)), ped, player, toggle);
    }

    pub fn _0x061CB768363D6424(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(440428521789940772)), p0, p1);
    }

    pub fn SET_TIME_EXCLUSIVE_DISPLAY_TEXTURE(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(18244738037095531223, p0, p1);
    }

    pub fn IS_PED_IN_ANY_POLICE_VEHICLE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(851266269252197394)), ped);
    }

    pub fn FORCE_PED_TO_OPEN_PARACHUTE(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1649494491004346913)), ped);
    }

    pub fn IS_PED_IN_PARACHUTE_FREE_FALL(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(9065336868616016384)), ped);
    }

    pub fn IS_PED_FALLING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(18127728484137885603, ped);
    }

    pub fn IS_PED_JUMPING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(14905433007184723863, ped);
    }

    pub fn IS_PED_CLIMBING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6046306041128281635)), ped);
    }

    pub fn IS_PED_VAULTING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1260006042825329502)), ped);
    }

    pub fn IS_PED_DIVING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6136075483951897361)), ped);
    }

    pub fn IS_PED_JUMPING_OUT_OF_VEHICLE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4845275056676582966)), ped);
    }

    pub fn _0x26AF0E8E30BD2A2C(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2787462698231474732)), p0);
    }

    pub fn GET_PED_PARACHUTE_STATE(ped: types.Ped) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(8777473353230940598)), ped);
    }

    pub fn GET_PED_PARACHUTE_LANDING_TYPE(ped: types.Ped) c_int {
        return nativeCaller.invoke1(10060795030760679104, ped);
    }

    pub fn SET_PED_PARACHUTE_TINT_INDEX(ped: types.Ped, tintIndex: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3692891062518116742)), ped, tintIndex);
    }

    pub fn GET_PED_PARACHUTE_TINT_INDEX(ped: types.Ped, outTintIndex: [*c]types.Any) void {
        _ = nativeCaller.invoke2(16930710940016209053, ped, outTintIndex);
    }

    pub fn SET_PED_RESERVE_PARACHUTE_TINT_INDEX(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(16757226213359133357, p0, p1);
    }

    pub fn _0x8C4F3BF23B6237DB(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) types.Any {
        return nativeCaller.invoke3(10110365600034469851, p0, p1, p2);
    }

    pub fn SET_PED_DUCKING(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(218850962977810733)), ped, toggle);
    }

    pub fn IS_PED_DUCKING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(15070643543572072124, ped);
    }

    pub fn IS_PED_IN_ANY_TAXI(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7950926379301386322)), ped);
    }

    pub fn SET_PED_ID_RANGE(ped: types.Ped, value: f32) void {
        _ = nativeCaller.invoke2(17368105809406184965, ped, value);
    }

    pub fn _0x52D59AB61DDC05DD(ped: types.Ped, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5968846988125144541)), ped, p1);
    }

    pub fn _0xEC4B4B3B9908052A(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(17026785535546885418, p0, p1);
    }

    pub fn _0x733C87D4CE22BEA2(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8303661161025552034)), p0);
    }

    pub fn SET_PED_SEEING_RANGE(ped: types.Ped, value: f32) void {
        _ = nativeCaller.invoke2(17482117859965365486, ped, value);
    }

    pub fn SET_PED_HEARING_RANGE(ped: types.Ped, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3722497735840494396)), ped, value);
    }

    pub fn SET_PED_VISUAL_FIELD_MIN_ANGLE(ped: types.Ped, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3293417903041420838)), ped, value);
    }

    pub fn SET_PED_VISUAL_FIELD_MAX_ANGLE(ped: types.Ped, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8104574823225119956)), ped, value);
    }

    pub fn SET_PED_VISUAL_FIELD_MIN_ELEVATION_ANGLE(ped: types.Ped, angle: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8802125710759352079)), ped, angle);
    }

    pub fn SET_PED_VISUAL_FIELD_MAX_ELEVATION_ANGLE(ped: types.Ped, angle: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8705658698331543638)), ped, angle);
    }

    pub fn SET_PED_VISUAL_FIELD_PERIPHERAL_RANGE(ped: types.Ped, range: f32) void {
        _ = nativeCaller.invoke2(11273830090915149114, ped, range);
    }

    pub fn SET_PED_VISUAL_FIELD_CENTER_ANGLE(ped: types.Ped, angle: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4279552042771720455)), ped, angle);
    }

    pub fn SET_PED_STEALTH_MOVEMENT(ped: types.Ped, p1: windows.BOOL, action: [*c]u8) void {
        _ = nativeCaller.invoke3(9857172108909181906, ped, p1, action);
    }

    pub fn GET_PED_STEALTH_MOVEMENT(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8947185480862490559)), ped);
    }

    pub fn CREATE_GROUP(unused: c_int) c_int {
        return nativeCaller.invoke1(10391790874654546493, unused);
    }

    pub fn SET_PED_AS_GROUP_LEADER(ped: types.Ped, groupId: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3060223848321776590)), ped, groupId);
    }

    pub fn SET_PED_AS_GROUP_MEMBER(ped: types.Ped, groupId: c_int) void {
        _ = nativeCaller.invoke2(11471935980938408373, ped, groupId);
    }

    pub fn SET_PED_CAN_TELEPORT_TO_GROUP_LEADER(pedHandle: types.Ped, groupHandle: c_int, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3327951495314425415)), pedHandle, groupHandle, p2);
    }

    pub fn REMOVE_GROUP(groupId: c_int) void {
        _ = nativeCaller.invoke1(10282551999567196243, groupId);
    }

    pub fn REMOVE_PED_FROM_GROUP(ped: types.Ped) void {
        _ = nativeCaller.invoke1(17110301433960623042, ped);
    }

    pub fn IS_PED_GROUP_MEMBER(ped: types.Ped, groupId: c_int) windows.BOOL {
        return nativeCaller.invoke2(11218499898526077329, ped, groupId);
    }

    pub fn IS_PED_HANGING_ON_TO_VEHICLE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2055568525940312952)), ped);
    }

    pub fn SET_GROUP_SEPARATION_RANGE(groupHandle: c_int, separationRange: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4684525938828829924)), groupHandle, separationRange);
    }

    pub fn SET_PED_MIN_GROUND_TIME_FOR_STUNGUN(ped: types.Ped, ms: c_int) void {
        _ = nativeCaller.invoke2(18016216736995505146, ped, ms);
    }

    pub fn IS_PED_PRONE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(15467721985080403897, ped);
    }

    pub fn IS_PED_IN_COMBAT(ped: types.Ped, target: types.Ped) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5213464110014277518)), ped, target);
    }

    pub fn CAN_PED_IN_COMBAT_SEE_TARGET(ped: types.Ped, target: types.Ped) windows.BOOL {
        return nativeCaller.invoke2(16921200154546865953, ped, target);
    }

    pub fn IS_PED_DOING_DRIVEBY(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(12880443145480368831, ped);
    }

    pub fn IS_PED_JACKING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5396719252235051482)), ped);
    }

    pub fn IS_PED_BEING_JACKED(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(11117557767523109139, ped);
    }

    pub fn IS_PED_BEING_STUNNED(ped: types.Ped, p1: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5745129553015312104)), ped, p1);
    }

    pub fn GET_PEDS_JACKER(ped: types.Ped) types.Ped {
        return nativeCaller.invoke1(11174149495931667663, ped);
    }

    pub fn GET_JACK_TARGET(ped: types.Ped) types.Ped {
        return nativeCaller.invoke1(@as(u64, @intCast(6090739841496855597)), ped);
    }

    pub fn IS_PED_FLEEING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(13532437319132349570, ped);
    }

    pub fn IS_PED_IN_COVER(ped: types.Ped, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(6980527097275419528)), ped, p1);
    }

    pub fn IS_PED_IN_COVER_FACING_LEFT(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(9535021680318317483, ped);
    }

    pub fn _0x6A03BF943D767C93(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7639160036357733523)), p0);
    }

    pub fn IS_PED_GOING_INTO_COVER(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(11485828064771152597, ped);
    }

    pub fn SET_PED_PINNED_DOWN(ped: types.Ped, pinned: windows.BOOL, i: c_int) types.Any {
        return nativeCaller.invoke3(12310257172164331026, ped, pinned, i);
    }

    pub fn GET_SEAT_PED_IS_TRYING_TO_ENTER(ped: types.Ped) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(8019932013815512274)), ped);
    }

    pub fn GET_VEHICLE_PED_IS_TRYING_TO_ENTER(ped: types.Ped) types.Vehicle {
        return nativeCaller.invoke1(9317851689464185949, ped);
    }

    pub fn _GET_PED_KILLER(ped: types.Ped) types.Entity {
        return nativeCaller.invoke1(10648961764697600652, ped);
    }

    pub fn GET_PED_CAUSE_OF_DEATH(ped: types.Ped) types.Hash {
        return nativeCaller.invoke1(@as(u64, @intCast(1657294059935554649)), ped);
    }

    pub fn _GET_PED_TIME_OF_DEATH(ped: types.Ped) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(2204654383702665610)), ped);
    }

    pub fn _0x5407B7288D0478B7(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(6055009608815376567)), p0);
    }

    pub fn _0x336B3D200AB007CB(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32) types.Any {
        return nativeCaller.invoke5(@as(u64, @intCast(3705122326269921227)), p0, p1, p2, p3, p4);
    }

    pub fn SET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH(ped: types.Ped, hash: types.Hash) void {
        _ = nativeCaller.invoke2(12516613898344307176, ped, hash);
    }

    pub fn SET_PED_RELATIONSHIP_GROUP_HASH(ped: types.Ped, hash: types.Hash) void {
        _ = nativeCaller.invoke2(14414461841627274642, ped, hash);
    }

    pub fn SET_RELATIONSHIP_BETWEEN_GROUPS(relationship: c_int, group1: types.Hash, group2: types.Hash) void {
        _ = nativeCaller.invoke3(13773674009954236333, relationship, group1, group2);
    }

    pub fn CLEAR_RELATIONSHIP_BETWEEN_GROUPS(relationship: c_int, group1: types.Hash, group2: types.Hash) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6784994169655903956)), relationship, group1, group2);
    }

    pub fn ADD_RELATIONSHIP_GROUP(name: [*c]u8, groupHash: [*c]types.Hash) types.Any {
        return nativeCaller.invoke2(17542290357016364550, name, groupHash);
    }

    pub fn REMOVE_RELATIONSHIP_GROUP(groupHash: types.Hash) void {
        _ = nativeCaller.invoke1(13166876337920097698, groupHash);
    }

    pub fn GET_RELATIONSHIP_BETWEEN_PEDS(ped1: types.Ped, ped2: types.Ped) c_int {
        return nativeCaller.invoke2(16980168434936410401, ped1, ped2);
    }

    pub fn GET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH(ped: types.Ped) types.Hash {
        return nativeCaller.invoke1(@as(u64, @intCast(4827244105219302286)), ped);
    }

    pub fn GET_PED_RELATIONSHIP_GROUP_HASH(ped: types.Ped) types.Hash {
        return nativeCaller.invoke1(@as(u64, @intCast(9060627034653941508)), ped);
    }

    pub fn GET_RELATIONSHIP_BETWEEN_GROUPS(group1: types.Hash, group2: types.Hash) c_int {
        return nativeCaller.invoke2(11415340851948334684, group1, group2);
    }

    pub fn SET_PED_CAN_BE_TARGETED_WITHOUT_LOS(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4839229034522385521)), ped, toggle);
    }

    pub fn SET_PED_TO_INFORM_RESPECTED_FRIENDS(ped: types.Ped, radius: f32, maxFriends: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(1236592994736994059)), ped, radius, maxFriends);
    }

    pub fn IS_PED_RESPONDING_TO_EVENT(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(7087389613169864808)), p0, p1);
    }

    pub fn SET_PED_FIRING_PATTERN(ped: types.Ped, patternHash: types.Hash) void {
        _ = nativeCaller.invoke2(11152451949107533993, ped, patternHash);
    }

    pub fn SET_PED_SHOOT_RATE(ped: types.Ped, shootRate: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7011436265342456540)), ped, shootRate);
    }

    pub fn SET_COMBAT_FLOAT(ped: types.Ped, combatType: c_int, p2: f32) void {
        _ = nativeCaller.invoke3(18393181026566117404, ped, combatType, p2);
    }

    pub fn GET_COMBAT_FLOAT(p0: types.Ped, p1: c_int) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(5971765001374402826)), p0, p1);
    }

    pub fn GET_GROUP_SIZE(groupID: c_int, unknown: [*c]types.Any, sizeInMembers: [*c]c_int) void {
        _ = nativeCaller.invoke3(10225035802851711557, groupID, unknown, sizeInMembers);
    }

    pub fn DOES_GROUP_EXIST(groupId: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8965272827573046206)), groupId);
    }

    pub fn GET_PED_GROUP_INDEX(ped: types.Ped) c_int {
        return nativeCaller.invoke1(17393712323052938869, ped);
    }

    pub fn IS_PED_IN_GROUP(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6382105097986178932)), ped);
    }

    pub fn GET_PLAYER_PED_IS_FOLLOWING(ped: types.Ped) types.Player {
        return nativeCaller.invoke1(@as(u64, @intCast(7654278640865090071)), ped);
    }

    pub fn SET_GROUP_FORMATION(groupId: c_int, formationType: c_int) void {
        _ = nativeCaller.invoke2(14857198989786123294, groupId, formationType);
    }

    pub fn SET_GROUP_FORMATION_SPACING(groupId: c_int, p1: f32, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(2133937666023541014)), groupId, p1, p2, p3);
    }

    pub fn RESET_GROUP_FORMATION_DEFAULT_SPACING(groupHandle: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7195262145949807109)), groupHandle);
    }

    pub fn GET_VEHICLE_PED_IS_USING(ped: types.Ped) types.Vehicle {
        return nativeCaller.invoke1(@as(u64, @intCast(6959377544440096893)), ped);
    }

    pub fn SET_EXCLUSIVE_PHONE_RELATIONSHIPS(p0: types.Any) types.Any {
        return nativeCaller.invoke1(17953197144696923644, p0);
    }

    pub fn SET_PED_GRAVITY(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(11525916196422391306, ped, toggle);
    }

    pub fn APPLY_DAMAGE_TO_PED(ped: types.Ped, damageAmount: types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7597950592220076244)), ped, damageAmount, p2);
    }

    pub fn _0x36B77BB84687C318(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(3942756030173659928)), p0, p1);
    }

    pub fn SET_PED_ALLOWED_TO_DUCK(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(15717311443427161711, ped, toggle);
    }

    pub fn SET_PED_NEVER_LEAVES_GROUP(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4449491961641677895)), ped, toggle);
    }

    pub fn GET_PED_TYPE(ped: types.Ped) c_int {
        return nativeCaller.invoke1(18376267707516577340, ped);
    }

    pub fn SET_PED_AS_COP(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(13475829523936935933, ped, toggle);
    }

    pub fn SET_PED_MAX_HEALTH(ped: types.Ped, value: c_int) void {
        _ = nativeCaller.invoke2(17723414459326929363, ped, value);
    }

    pub fn GET_PED_MAX_HEALTH(ped: types.Ped) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(5116269594984730355)), ped);
    }

    pub fn SET_PED_MAX_TIME_IN_WATER(ped: types.Ped, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4884243307403809085)), ped, value);
    }

    pub fn SET_PED_MAX_TIME_UNDERWATER(ped: types.Ped, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7756369285497873698)), ped, value);
    }

    pub fn _0x2735233A786B1BEF(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2825203075280215023)), p0, p1);
    }

    pub fn _0x952F06BEECD775CC(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(10749818252643759564, p0, p1, p2, p3);
    }

    pub fn _0xE6CA85E7259CE16B(p0: types.Any) void {
        _ = nativeCaller.invoke1(16630251801833955691, p0);
    }

    pub fn SET_PED_CAN_BE_KNOCKED_OFF_VEHICLE(ped: types.Ped, state: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8819514170820492360)), ped, state);
    }

    pub fn CAN_KNOCK_PED_OFF_VEHICLE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5885087215319473034)), ped);
    }

    pub fn KNOCK_PED_OFF_VEHICLE(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5024833729465002049)), ped);
    }

    pub fn SET_PED_COORDS_NO_GANG(ped: types.Ped, posX: f32, posY: f32, posZ: f32) void {
        _ = nativeCaller.invoke4(9729235227491988039, ped, posX, posY, posZ);
    }

    pub fn GET_PED_AS_GROUP_MEMBER(groupID: c_int, memberNumber: c_int) types.Ped {
        return nativeCaller.invoke2(@as(u64, @intCast(5856179815557885335)), groupID, memberNumber);
    }

    pub fn _GET_PED_AS_GROUP_LEADER(groupID: c_int) types.Ped {
        return nativeCaller.invoke1(@as(u64, @intCast(6687397790089122796)), groupID);
    }

    pub fn SET_PED_KEEP_TASK(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(10888921553773003503, ped, toggle);
    }

    pub fn _0x49E50BDB8BA4DAB2(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5324675172004059826)), p0, p1);
    }

    pub fn IS_PED_SWIMMING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(11376980390135051458, ped);
    }

    pub fn IS_PED_SWIMMING_UNDER_WATER(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(13845339151829380916, ped);
    }

    pub fn SET_PED_COORDS_KEEP_VEHICLE(ped: types.Ped, posX: f32, posY: f32, posZ: f32) void {
        _ = nativeCaller.invoke4(11168644811073104686, ped, posX, posY, posZ);
    }

    pub fn SET_PED_DIES_IN_VEHICLE(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3040090468580439084)), ped, toggle);
    }

    pub fn SET_CREATE_RANDOM_COPS(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1165984467287626605)), toggle);
    }

    pub fn SET_CREATE_RANDOM_COPS_NOT_ON_SCENARIOS(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(9964643556797642471, toggle);
    }

    pub fn SET_CREATE_RANDOM_COPS_ON_SCENARIOS(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4921510630544283453)), toggle);
    }

    pub fn CAN_CREATE_RANDOM_COPS() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(6837250382999549709)));
    }

    pub fn SET_PED_AS_ENEMY(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(189372676006300666)), ped, toggle);
    }

    pub fn SET_PED_CAN_SMASH_GLASS(ped: types.Ped, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2075618556141060770)), ped, p1, p2);
    }

    pub fn IS_PED_IN_ANY_TRAIN(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8040944152950218448)), ped);
    }

    pub fn IS_PED_GETTING_INTO_A_VEHICLE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(13476506400098240398, ped);
    }

    pub fn IS_PED_TRYING_TO_ENTER_A_LOCKED_VEHICLE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4959181574016202380)), ped);
    }

    pub fn SET_ENABLE_HANDCUFFS(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(16076435279705359098, ped, toggle);
    }

    pub fn SET_ENABLE_BOUND_ANKLES(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(14208310939854896174, ped, toggle);
    }

    pub fn SET_ENABLE_SCUBA(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(17987203189956728070, ped, toggle);
    }

    pub fn SET_CAN_ATTACK_FRIENDLY(ped: types.Ped, toggle: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(12948353830549571421, ped, toggle, p2);
    }

    pub fn GET_PED_ALERTNESS(ped: types.Ped) types.Any {
        return nativeCaller.invoke1(17774038143109185490, ped);
    }

    pub fn SET_PED_ALERTNESS(ped: types.Ped, value: types.Any) void {
        _ = nativeCaller.invoke2(15827638201295126950, ped, value);
    }

    pub fn SET_PED_GET_OUT_UPSIDE_DOWN_VEHICLE(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(13551007203705785282, ped, toggle);
    }

    pub fn SET_PED_MOVEMENT_CLIPSET(ped: types.Ped, clipSet: [*c]u8, p2: f32) void {
        _ = nativeCaller.invoke3(12649086252934573039, ped, clipSet, p2);
    }

    pub fn RESET_PED_MOVEMENT_CLIPSET(ped: types.Ped, p1: f32) void {
        _ = nativeCaller.invoke2(12282701622993938988, ped, p1);
    }

    pub fn SET_PED_STRAFE_CLIPSET(ped: types.Ped, clipSet: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3000117804892870740)), ped, clipSet);
    }

    pub fn RESET_PED_STRAFE_CLIPSET(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2328651364711703671)), ped);
    }

    pub fn SET_PED_WEAPON_MOVEMENT_CLIPSET(ped: types.Ped, clipSet: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2748008704641313954)), ped, clipSet);
    }

    pub fn RESET_PED_WEAPON_MOVEMENT_CLIPSET(ped: types.Ped) void {
        _ = nativeCaller.invoke1(10930477480769179255, ped);
    }

    pub fn SET_PED_DRIVE_BY_CLIPSET_OVERRIDE(ped: types.Ped, clipset: [*c]u8) void {
        _ = nativeCaller.invoke2(17092474967677953312, ped, clipset);
    }

    pub fn CLEAR_PED_DRIVE_BY_CLIPSET_OVERRIDE(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5403816598616192428)), ped);
    }

    pub fn _0x9DBA107B4937F809(p0: types.Any, p1: [*c]u8) void {
        _ = nativeCaller.invoke2(11365414731318294537, p0, p1);
    }

    pub fn _0xC79196DCB36F6121(p0: types.Any) void {
        _ = nativeCaller.invoke1(14380440959818096929, p0);
    }

    pub fn _0x80054D7FCC70EEC6(p0: types.Any) void {
        _ = nativeCaller.invoke1(9224864623024467654, p0);
    }

    pub fn SET_PED_IN_VEHICLE_CONTEXT(ped: types.Ped, context: types.Hash) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5980904727542081734)), ped, context);
    }

    pub fn RESET_PED_IN_VEHICLE_CONTEXT(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2517389014042947819)), ped);
    }

    pub fn IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM(ped: types.Ped, animDict: [*c]u8, anim: [*c]u8) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(7981638804591337965)), ped, animDict, anim);
    }

    pub fn SET_PED_ALTERNATE_WALK_ANIM(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: f32, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(7809304755476848282)), p0, p1, p2, p3, p4);
    }

    pub fn CLEAR_PED_ALTERNATE_WALK_ANIM(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(9819179782389803497, p0, p1);
    }

    pub fn SET_PED_ALTERNATE_MOVEMENT_ANIM(ped: types.Ped, stance: c_int, animDictionary: [*c]u8, animationName: [*c]u8, p4: f32, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(10422522243744508742, ped, stance, animDictionary, animationName, p4, p5);
    }

    pub fn CLEAR_PED_ALTERNATE_MOVEMENT_ANIM(ped: types.Ped, stance: c_int, p2: f32) void {
        _ = nativeCaller.invoke3(15623434015562776014, ped, stance, p2);
    }

    pub fn SET_PED_GESTURE_GROUP(ped: types.Ped, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(15994537613504850600, ped, p1);
    }

    pub fn GET_ANIM_INITIAL_OFFSET_POSITION(p0: [*c]types.Any, p1: [*c]types.Any, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: types.Any) types.Vector3 {
        return nativeCaller.invoke10(13700709201249353792, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn GET_ANIM_INITIAL_OFFSET_ROTATION(p0: [*c]types.Any, p1: [*c]types.Any, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: types.Any) types.Vector3 {
        return nativeCaller.invoke10(@as(u64, @intCast(5440452117463473735)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn GET_PED_DRAWABLE_VARIATION(ped: types.Ped, componentId: c_int) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(7490462606036423932)), ped, componentId);
    }

    pub fn GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS(ped: types.Ped, componentId: c_int) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(2834476523764480066)), ped, componentId);
    }

    pub fn GET_PED_TEXTURE_VARIATION(ped: types.Ped, componentId: c_int) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(334205219021784294)), ped, componentId);
    }

    pub fn GET_NUMBER_OF_PED_TEXTURE_VARIATIONS(ped: types.Ped, componentId: c_int, drawableId: c_int) c_int {
        return nativeCaller.invoke3(10336137878209981357, ped, componentId, drawableId);
    }

    pub fn GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS(ped: types.Ped, propId: c_int) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(6894895945445145415)), ped, propId);
    }

    pub fn GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(ped: types.Ped, propId: c_int, drawableId: c_int) c_int {
        return nativeCaller.invoke3(12026847200020783473, ped, propId, drawableId);
    }

    pub fn GET_PED_PALETTE_VARIATION(ped: types.Ped, componentId: c_int) c_int {
        return nativeCaller.invoke2(16419384452682359425, ped, componentId);
    }

    pub fn _0x9E30E91FB03A2CAF(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(11398866979184585903, p0, p1);
    }

    pub fn _0x1E77FA7A62EE6C4C(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(2195498746919152716)), p0);
    }

    pub fn _0xF033419D1B81FAE8(p0: types.Any) types.Any {
        return nativeCaller.invoke1(17308249935942122216, p0);
    }

    pub fn IS_PED_COMPONENT_VARIATION_VALID(ped: types.Ped, componentId: c_int, drawableId: c_int, textureId: c_int) windows.BOOL {
        return nativeCaller.invoke4(16728047655949133597, ped, componentId, drawableId, textureId);
    }

    pub fn SET_PED_COMPONENT_VARIATION(ped: types.Ped, componentId: c_int, drawableId: c_int, textureId: c_int, paletteId: c_int) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(2750315038012726912)), ped, componentId, drawableId, textureId, paletteId);
    }

    pub fn SET_PED_RANDOM_COMPONENT_VARIATION(ped: types.Ped, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(14459167355187903528, ped, p1);
    }

    pub fn SET_PED_RANDOM_PROPS(ped: types.Ped) void {
        _ = nativeCaller.invoke1(14144293859224031942, ped);
    }

    pub fn SET_PED_DEFAULT_COMPONENT_VARIATION(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5039218013098765667)), ped);
    }

    pub fn SET_PED_BLEND_FROM_PARENTS(p0: types.Any, p1: types.Any, p2: types.Any, p3: f32, p4: f32) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(1403923538616627757)), p0, p1, p2, p3, p4);
    }

    pub fn SET_PED_HEAD_BLEND_DATA(ped: types.Ped, shapeFirstID: c_int, shapeSecondID: c_int, shapeThirdID: c_int, skinFirstID: c_int, skinSecondID: c_int, skinThirdID: c_int, shapeMix: f32, skinMix: f32, thirdMix: f32, isParent: windows.BOOL) void {
        _ = nativeCaller.invoke11(10670401406750737150, ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent);
    }

    pub fn _GET_PED_HEAD_BLEND_DATA(ped: types.Ped, headBlendData: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(2830157900151113168)), ped, headBlendData);
    }

    pub fn UPDATE_PED_HEAD_BLEND_DATA(ped: types.Ped, shapeMix: f32, skinMix: f32, thirdMix: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8229546523778907226)), ped, shapeMix, skinMix, thirdMix);
    }

    pub fn _SET_PED_EYE_COLOR(ped: types.Ped, index: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5815670529632284639)), ped, index);
    }

    pub fn SET_PED_HEAD_OVERLAY(ped: types.Ped, overlayID: c_int, index: c_int, opacity: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(5256907375973354526)), ped, overlayID, index, opacity);
    }

    pub fn _GET_PED_HEAD_OVERLAY_VALUE(ped: types.Ped, overlayID: c_int) c_int {
        return nativeCaller.invoke2(11965769224155712835, ped, overlayID);
    }

    pub fn _GET_NUM_HEAD_OVERLAY_VALUES(overlayID: c_int) c_int {
        return nativeCaller.invoke1(14924057702203344910, overlayID);
    }

    pub fn _SET_PED_HEAD_OVERLAY_COLOR(ped: types.Ped, overlayID: c_int, colorType: c_int, colorID: c_int, secondColorID: c_int) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(5295097686177659218)), ped, overlayID, colorType, colorID, secondColorID);
    }

    pub fn _SET_PED_HAIR_COLOR(ped: types.Ped, colorID: c_int, highlightColorID: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5548371331445766729)), ped, colorID, highlightColorID);
    }

    pub fn _GET_NUM_HAIR_COLORS() c_int {
        return nativeCaller.invoke0(16555460409682481488);
    }

    pub fn _0xD1F7CA1535D22818() c_int {
        return nativeCaller.invoke0(15129783665620559896);
    }

    pub fn _0x4852FC386E2E1BB5(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(5211505038117968821)), p0, p1, p2, p3);
    }

    pub fn _0x013E5CFC38CD5387(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(89611280948482951)), p0, p1, p2, p3);
    }

    pub fn _0xED6D8E27A43B8CDE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(17108486860360617182, p0);
    }

    pub fn _0xEA9960D07DADCF10(p0: types.Any) c_int {
        return nativeCaller.invoke1(16904649124889874192, p0);
    }

    pub fn _0x3E802F11FBE27674(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4503651381657368180)), p0);
    }

    pub fn _0xF41B5D290C99A3D6(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(17589755200512041942, p0);
    }

    pub fn _0xE0D36E5D9E99CC21(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(16200413632953699361, p0);
    }

    pub fn _0xAAA6A3698A69E048(p0: types.Any) types.Any {
        return nativeCaller.invoke1(12296695506270806088, p0);
    }

    pub fn _0x0525A2C2562F3CD4(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(370881499881225428)), p0);
    }

    pub fn _0x604E810189EE3A59(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6939625919433554521)), p0);
    }

    pub fn _0xC56FBF2F228E1DAC(p0: types.Any, p1: types.Any, p2: types.Any) types.Any {
        return nativeCaller.invoke3(14226799957050793388, p0, p1, p2);
    }

    pub fn _SET_PED_FACE_FEATURE(ped: types.Ped, index: c_int, scale: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(8189164646475760798)), ped, index, scale);
    }

    pub fn HAS_PED_HEAD_BLEND_FINISHED(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7299438516656017713)), ped);
    }

    pub fn _0x4668D80430D6C299(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5073542492743713433)), ped);
    }

    pub fn _0xCC9682B8951C5229(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(14742114159531151913, p0, p1, p2, p3, p4);
    }

    pub fn _0xA21C118553BBDF02(p0: types.Any) void {
        _ = nativeCaller.invoke1(11681230797825367810, p0);
    }

    pub fn _GET_FIRST_PARENT_ID_FOR_PED_TYPE(type_: c_int) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(7553472996228824588)), type_);
    }

    pub fn _GET_NUM_PARENT_PEDS_OF_TYPE(type_: c_int) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(6841935488603102365)), type_);
    }

    pub fn _0x39D55A620FCB6A3A(ped: types.Ped, p1: c_int, drawableId: c_int, textureId: c_int) types.Any {
        return nativeCaller.invoke4(@as(u64, @intCast(4167336407419546170)), ped, p1, drawableId, textureId);
    }

    pub fn _0x66680A92700F43DF(p0: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7379159613508109279)), p0);
    }

    pub fn _0x5AAB586FFEC0FD96(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6533412922469711254)), p0);
    }

    pub fn _0x2B16A3BFF1FBCE49(ped: types.Ped, componentId: c_int, drawableId: c_int, TextureId: c_int) types.Any {
        return nativeCaller.invoke4(@as(u64, @intCast(3104849037912428105)), ped, componentId, drawableId, TextureId);
    }

    pub fn _0x784002A632822099(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8664928595896049817)), ped);
    }

    pub fn _0xF79F9DEF0AADE61A(ped: types.Ped) void {
        _ = nativeCaller.invoke1(17843153898667107866, ped);
    }

    pub fn GET_PED_PROP_INDEX(ped: types.Ped, componentId: c_int) c_int {
        return nativeCaller.invoke2(9911510248128752856, ped, componentId);
    }

    pub fn SET_PED_PROP_INDEX(ped: types.Ped, componentId: c_int, drawableId: c_int, TextureId: c_int, attach: windows.BOOL) void {
        _ = nativeCaller.invoke5(10608065531555015519, ped, componentId, drawableId, TextureId, attach);
    }

    pub fn KNOCK_OFF_PED_PROP(propIndex: c_int, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(8059052351381659464)), propIndex, p1, p2, p3, p4);
    }

    pub fn CLEAR_PED_PROP(ped: types.Ped, propId: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(667629751983728494)), ped, propId);
    }

    pub fn CLEAR_ALL_PED_PROPS(ped: types.Ped) void {
        _ = nativeCaller.invoke1(14810779206492172038, ped);
    }

    pub fn _0xAFF4710E2A0A6C12(p0: types.Any) void {
        _ = nativeCaller.invoke1(12678883156603595794, p0);
    }

    pub fn GET_PED_PROP_TEXTURE_INDEX(ped: types.Ped, componentId: c_int) c_int {
        return nativeCaller.invoke2(16226929629455719090, ped, componentId);
    }

    pub fn _0x1280804F7CFD2D6C(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1333206568589405548)), p0);
    }

    pub fn _0x36C6984C3ED0C911(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3947009576675625233)), p0);
    }

    pub fn _0xB50EB4CCB29704AC(p0: types.Any) void {
        _ = nativeCaller.invoke1(13046563961801475244, p0);
    }

    pub fn _0xFEC9A3B1820F3331(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(18359385338739110705, p0);
    }

    pub fn SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(11496187148832857076, ped, toggle);
    }

    pub fn SET_PED_BOUNDS_ORIENTATION(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(5719401217563149519)), p0, p1, p2, p3, p4, p5);
    }

    pub fn REGISTER_TARGET(ped: types.Ped, target: types.Ped) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3397360839466220450)), ped, target);
    }

    pub fn REGISTER_HATED_TARGETS_AROUND_PED(ped: types.Ped, areaToAttack: f32) void {
        _ = nativeCaller.invoke2(10530246063284245758, ped, areaToAttack);
    }

    pub fn GET_RANDOM_PED_AT_COORD(x: f32, y: f32, z: f32, xRadius: f32, yRadius: f32, zRadius: f32, pedType: c_int) types.Ped {
        return nativeCaller.invoke7(9754874484072167196, x, y, z, xRadius, yRadius, zRadius, pedType);
    }

    pub fn GET_CLOSEST_PED(x: f32, y: f32, z: f32, radius: f32, p4: windows.BOOL, p5: windows.BOOL, outPed: [*c]types.Ped, p7: windows.BOOL, p8: windows.BOOL, pedType: c_int) windows.BOOL {
        return nativeCaller.invoke10(14067759205800968548, x, y, z, radius, p4, p5, outPed, p7, p8, pedType);
    }

    pub fn SET_SCENARIO_PEDS_TO_BE_RETURNED_BY_NEXT_COMMAND(value: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1509157256951236382)), value);
    }

    pub fn _0x03EA03AF85A85CB7(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL, p4: windows.BOOL, p5: windows.BOOL, p6: windows.BOOL, p7: windows.BOOL, p8: types.Any) windows.BOOL {
        return nativeCaller.invoke9(@as(u64, @intCast(282041979060640951)), p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn _0xDED5AF5A0EA4B297(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(16056932847786963607, p0, p1);
    }

    pub fn SET_DRIVER_ABILITY(driver: types.Ped, ability: f32) void {
        _ = nativeCaller.invoke2(12796415013332960707, driver, ability);
    }

    pub fn SET_DRIVER_AGGRESSIVENESS(driver: types.Ped, aggressiveness: f32) void {
        _ = nativeCaller.invoke2(12047680995803024956, driver, aggressiveness);
    }

    pub fn CAN_PED_RAGDOLL(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1337421676636164053)), ped);
    }

    pub fn SET_PED_TO_RAGDOLL(ped: types.Ped, time1: c_int, time2: c_int, ragdollType: c_int, p4: windows.BOOL, p5: windows.BOOL, p6: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke7(12581363652839441482, ped, time1, time2, ragdollType, p4, p5, p6);
    }

    pub fn SET_PED_TO_RAGDOLL_WITH_FALL(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any, p9: types.Any, p10: types.Any, p11: types.Any, p12: types.Any, p13: types.Any) types.Any {
        return nativeCaller.invoke14(15521149076023895752, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13);
    }

    pub fn SET_PED_RAGDOLL_ON_COLLISION(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(17340250254854485143, ped, toggle);
    }

    pub fn IS_PED_RAGDOLL(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5180522170171546453)), ped);
    }

    pub fn IS_PED_RUNNING_RAGDOLL_TASK(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(16408312723812296350, ped);
    }

    pub fn SET_PED_RAGDOLL_FORCE_FALL(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(141398619419546193)), ped);
    }

    pub fn RESET_PED_RAGDOLL_TIMER(ped: types.Ped) void {
        _ = nativeCaller.invoke1(11503431828944865256, ped);
    }

    pub fn SET_PED_CAN_RAGDOLL(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(12765514099411209770, ped, toggle);
    }

    pub fn _0xD1871251F3B5ACD7(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(15098056418973297879, p0);
    }

    pub fn IS_PED_RUNNING_MOBILE_PHONE_TASK(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3098004816684799861)), ped);
    }

    pub fn _0xA3F3564A5B3646C0(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(11813881124880795328, p0);
    }

    pub fn _SET_PED_RAGDOLL_BLOCKING_FLAGS(ped: types.Ped, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2767847656522943876)), ped, p1);
    }

    pub fn _0xD86D101FCFD00A4B(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(15595138813470444107, p0, p1);
    }

    pub fn SET_PED_ANGLED_DEFENSIVE_AREA(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: windows.BOOL, p9: windows.BOOL) void {
        _ = nativeCaller.invoke10(14409106420996785569, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn SET_PED_SPHERE_DEFENSIVE_AREA(ped: types.Ped, x: f32, y: f32, z: f32, radius: f32, p5: windows.BOOL, p6: windows.BOOL) void {
        _ = nativeCaller.invoke7(11326924300274321412, ped, x, y, z, radius, p5, p6);
    }

    pub fn _0xF9B8F91AAD3B953E(p0: types.Any, p1: types.Any, p2: f32, p3: f32, p4: f32, p5: f32, p6: windows.BOOL) void {
        _ = nativeCaller.invoke7(17994406204129645886, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn _0xE4723DB6E736CCFF(p0: types.Any, p1: types.Any, p2: f32, p3: f32, p4: f32, p5: f32, p6: windows.BOOL) void {
        _ = nativeCaller.invoke7(16461287443765054719, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn SET_PED_DEFENSIVE_AREA_ATTACHED_TO_PED(ped: types.Ped, attachPed: types.Ped, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: windows.BOOL, p10: windows.BOOL) void {
        _ = nativeCaller.invoke11(@as(u64, @intCast(5689312838294218934)), ped, attachPed, p2, p3, p4, p5, p6, p7, p8, p9, p10);
    }

    pub fn SET_PED_DEFENSIVE_AREA_DIRECTION(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(4700751366107889581)), p0, p1, p2, p3, p4);
    }

    pub fn REMOVE_PED_DEFENSIVE_AREA(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8418600066141671593)), p0, p1);
    }

    pub fn GET_PED_DEFENSIVE_AREA_POSITION(p0: types.Any, p1: windows.BOOL) types.Vector3 {
        return nativeCaller.invoke2(@as(u64, @intCast(4325347319514483921)), p0, p1);
    }

    pub fn _0xBA63D9FE45412247(p0: types.Any, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(13430818199855768135, p0, p1);
    }

    pub fn SET_PED_PREFERRED_COVER_SET(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(9521149805999657401, p0, p1);
    }

    pub fn REMOVE_PED_PREFERRED_COVER_SET(p0: types.Any) void {
        _ = nativeCaller.invoke1(18292253124968084441, p0);
    }

    pub fn REVIVE_INJURED_PED(ped: types.Ped) void {
        _ = nativeCaller.invoke1(10199190270953494990, ped);
    }

    pub fn RESURRECT_PED(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8195582117541601333)), ped);
    }

    pub fn SET_PED_NAME_DEBUG(ped: types.Ped, name: [*c]u8) void {
        _ = nativeCaller.invoke2(11020204052071939041, ped, name);
    }

    pub fn GET_PED_EXTRACTED_DISPLACEMENT(ped: types.Ped, p1: windows.BOOL) types.Vector3 {
        return nativeCaller.invoke2(16190230929004791779, ped, p1);
    }

    pub fn SET_PED_DIES_WHEN_INJURED(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6604407477447426083)), ped, toggle);
    }

    pub fn SET_PED_ENABLE_WEAPON_BLOCKING(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(10927861562529559037, ped, toggle);
    }

    pub fn _0xF9ACF4A08098EA25(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(17991023581627738661, p0, p1);
    }

    pub fn RESET_PED_VISIBLE_DAMAGE(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4233937496917085189)), ped);
    }

    pub fn APPLY_PED_BLOOD_DAMAGE_BY_ZONE(p0: types.Any, p1: types.Any, p2: f32, p3: f32, p4: types.Any) void {
        _ = nativeCaller.invoke5(9326789359401956667, p0, p1, p2, p3, p4);
    }

    pub fn APPLY_PED_BLOOD(ped: types.Ped, boneIndex: c_int, xRot: f32, yRot: f32, zRot: f32, woundType: [*c]u8) void {
        _ = nativeCaller.invoke6(9509315551151168038, ped, boneIndex, xRot, yRot, zRot, woundType);
    }

    pub fn APPLY_PED_BLOOD_BY_ZONE(p0: types.Any, p1: types.Any, p2: f32, p3: f32, p4: [*c]types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(3679973589918796732)), p0, p1, p2, p3, p4);
    }

    pub fn APPLY_PED_BLOOD_SPECIFIC(p0: types.Any, p1: types.Any, p2: f32, p3: f32, p4: f32, p5: f32, p6: types.Any, p7: f32, p8: [*c]types.Any) void {
        _ = nativeCaller.invoke9(17225521098971257615, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn APPLY_PED_DAMAGE_DECAL(p0: types.Ped, p1: c_int, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: c_int, p8: windows.BOOL, p9: [*c]u8) void {
        _ = nativeCaller.invoke10(@as(u64, @intCast(4142248062138081155)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn APPLY_PED_DAMAGE_PACK(ped: types.Ped, damagePack: [*c]u8, damage: f32, mult: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(5106960513763051839)), ped, damagePack, damage, mult);
    }

    pub fn CLEAR_PED_BLOOD_DAMAGE(ped: types.Ped) void {
        _ = nativeCaller.invoke1(10367891578892343319, ped);
    }

    pub fn CLEAR_PED_BLOOD_DAMAGE_BY_ZONE(p0: types.Ped, p1: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6261049720308292084)), p0, p1);
    }

    pub fn HIDE_PED_BLOOD_DAMAGE_BY_ZONE(p0: types.Any, p1: types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7109909689250248156)), p0, p1, p2);
    }

    pub fn CLEAR_PED_DAMAGE_DECAL_BY_ZONE(p0: types.Ped, p1: c_int, p2: [*c]u8) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5925745001967143466)), p0, p1, p2);
    }

    pub fn GET_PED_DECORATIONS_STATE(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(8208571530157315233)), p0);
    }

    pub fn _0x2B694AFCF64E6994(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3128113866510068116)), p0, p1);
    }

    pub fn CLEAR_PED_WETNESS(ped: types.Ped) void {
        _ = nativeCaller.invoke1(11273081024317505150, ped);
    }

    pub fn SET_PED_WETNESS_HEIGHT(ped: types.Ped, height: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4957166074485742240)), ped, height);
    }

    pub fn SET_PED_WETNESS_ENABLED_THIS_FRAME(ped: types.Ped) void {
        _ = nativeCaller.invoke1(13062794386943062041, ped);
    }

    pub fn _0x6585D955A68452A5(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7315492131622376101)), ped);
    }

    pub fn SET_PED_SWEAT(ped: types.Ped, sweat: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2859856541646028063)), ped, sweat);
    }

    pub fn _APPLY_PED_OVERLAY(ped: types.Ped, collection: types.Hash, overlay: types.Hash) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6871673233298597945)), ped, collection, overlay);
    }

    pub fn _0x5619BFA07CFD7833(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6204200657692227635)), p0, p1, p2);
    }

    pub fn _GET_TATTOO_ZONE(collection: types.Hash, overlay: types.Hash) c_int {
        return nativeCaller.invoke2(11516921130581129867, collection, overlay);
    }

    pub fn CLEAR_PED_DECORATIONS(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1031733064081305144)), ped);
    }

    pub fn _0xE3B27E70CEAB9F0C(p0: types.Any) void {
        _ = nativeCaller.invoke1(16407315415432929036, p0);
    }

    pub fn WAS_PED_SKELETON_UPDATED(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1275813652435273049)), ped);
    }

    pub fn GET_PED_BONE_COORDS(ped: types.Ped, boneId: c_int, offsetX: f32, offsetY: f32, offsetZ: f32) types.Vector3 {
        return nativeCaller.invoke5(@as(u64, @intCast(1711508347870014286)), ped, boneId, offsetX, offsetY, offsetZ);
    }

    pub fn CREATE_NM_MESSAGE(startImmediately: windows.BOOL, messageId: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4723979835631036037)), startImmediately, messageId);
    }

    pub fn GIVE_PED_NM_MESSAGE(ped: types.Ped) void {
        _ = nativeCaller.invoke1(12779210013242448987, ped);
    }

    pub fn ADD_SCENARIO_BLOCKING_AREA(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: windows.BOOL, p7: windows.BOOL, p8: windows.BOOL, p9: windows.BOOL) types.Any {
        return nativeCaller.invoke10(@as(u64, @intCast(1971597822648460654)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn REMOVE_SCENARIO_BLOCKING_AREAS() void {
        _ = nativeCaller.invoke0(15236805464555690569);
    }

    pub fn REMOVE_SCENARIO_BLOCKING_AREA(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3589768527288114534)), p0, p1);
    }

    pub fn SET_SCENARIO_PEDS_SPAWN_IN_SPHERE_AREA(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(2888352466223499649)), p0, p1, p2, p3, p4);
    }

    pub fn IS_PED_USING_SCENARIO(ped: types.Ped, scenario: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(2013272256919514158)), ped, scenario);
    }

    pub fn IS_PED_USING_ANY_SCENARIO(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6317224474499895619)), ped);
    }

    pub fn _0xFE07FF6495D52E2A(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) types.Any {
        return nativeCaller.invoke4(18304880017946258986, p0, p1, p2, p3);
    }

    pub fn _0x9A77DFD295E29B09(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11130611099620252425, p0, p1);
    }

    pub fn _0x25361A96E0F7E419(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) types.Any {
        return nativeCaller.invoke4(@as(u64, @intCast(2681359863467467801)), p0, p1, p2, p3);
    }

    pub fn _0xEC6935EBE0847B90(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) types.Any {
        return nativeCaller.invoke4(17035206352705977232, p0, p1, p2, p3);
    }

    pub fn _0xA3A9299C4F2ADB98(p0: types.Any) void {
        _ = nativeCaller.invoke1(11793002850566200216, p0);
    }

    pub fn _0xF1C03A5352243A30(p0: types.Any) void {
        _ = nativeCaller.invoke1(17419987488203881008, p0);
    }

    pub fn _0xEEED8FAFEC331A70(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) types.Any {
        return nativeCaller.invoke4(17216574936252095088, p0, p1, p2, p3);
    }

    pub fn _0x425AECF167663F48(ped: types.Ped, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4781394475973230408)), ped, p1);
    }

    pub fn _0x5B6010B3CBC29095(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6584281019619381397)), p0, p1);
    }

    pub fn _0xCEDA60A74219D064(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(14905332188220870756, p0, p1);
    }

    pub fn PLAY_FACIAL_ANIM(player: types.Ped, aaa: [*c]u8, bbb: [*c]u8) void {
        _ = nativeCaller.invoke3(16277799782697402605, player, aaa, bbb);
    }

    pub fn SET_FACIAL_IDLE_ANIM_OVERRIDE(ped: types.Ped, facialAnim: [*c]u8, p2: [*c]types.Any) void {
        _ = nativeCaller.invoke3(18429375743702305592, ped, facialAnim, p2);
    }

    pub fn CLEAR_FACIAL_IDLE_ANIM_OVERRIDE(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8242245702733469743)), ped);
    }

    pub fn SET_PED_CAN_PLAY_GESTURE_ANIMS(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(13470842991174582308, ped, toggle);
    }

    pub fn SET_PED_CAN_PLAY_VISEME_ANIMS(ped: types.Ped, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(17884882337142951235, ped, p1, p2);
    }

    pub fn _0x33A60D8BDD6E508C(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3721677036434903180)), p0, p1);
    }

    pub fn SET_PED_CAN_PLAY_AMBIENT_ANIMS(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7166301455914477326)), ped, toggle);
    }

    pub fn SET_PED_CAN_PLAY_AMBIENT_BASE_ANIMS(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1058443069242033984)), ped, toggle);
    }

    pub fn _0xC2EE020F5FB4DB53(p0: types.Any) void {
        _ = nativeCaller.invoke1(14046166552868608851, p0);
    }

    pub fn SET_PED_CAN_ARM_IK(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7798912310599534657)), ped, toggle);
    }

    pub fn SET_PED_CAN_HEAD_IK(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(13915023376345542876, ped, toggle);
    }

    pub fn SET_PED_CAN_LEG_IK(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8309579803502395691)), ped, toggle);
    }

    pub fn SET_PED_CAN_TORSO_IK(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(17489465739186568416, ped, toggle);
    }

    pub fn _0xF5846EDB26A98A24(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(17691387123743689252, p0, p1);
    }

    pub fn _0x6647C5F6F5792496(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7370076979686089878)), p0, p1);
    }

    pub fn SET_PED_CAN_USE_AUTO_CONVERSATION_LOOKAT(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(17025443789596214904, ped, toggle);
    }

    pub fn IS_PED_HEADTRACKING_PED(ped1: types.Ped, ped2: types.Ped) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(6688913659369391373)), ped1, ped2);
    }

    pub fn IS_PED_HEADTRACKING_ENTITY(ped: types.Ped, entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke2(9311766709871215391, ped, entity);
    }

    pub fn SET_PED_PRIMARY_LOOKAT(ped: types.Ped, lookAt: types.Ped) void {
        _ = nativeCaller.invoke2(14778480077195349406, ped, lookAt);
    }

    pub fn _0x78C4E9961DB3EB5B(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8702337210939337563)), p0, p1);
    }

    pub fn _0x82A3D6D9CC2CB8E3(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(9413603877056198883, p0, p1);
    }

    pub fn _0xA660FAF550EB37E5(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11988858139591784421, p0, p1);
    }

    pub fn SET_PED_CONFIG_FLAG(ped: types.Ped, flagId: c_int, value: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(1807067481085428835)), ped, flagId, value);
    }

    pub fn SET_PED_RESET_FLAG(ped: types.Ped, flagId: c_int, doReset: windows.BOOL) void {
        _ = nativeCaller.invoke3(13972597501312313842, ped, flagId, doReset);
    }

    pub fn GET_PED_CONFIG_FLAG(ped: types.Ped, flagId: c_int, p2: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(9143768600959694099)), ped, flagId, p2);
    }

    pub fn GET_PED_RESET_FLAG(ped: types.Ped, flagId: c_int) windows.BOOL {
        return nativeCaller.invoke2(12654650622687834784, ped, flagId);
    }

    pub fn SET_PED_GROUP_MEMBER_PASSENGER_INDEX(ped: types.Ped, index: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(855042750384164668)), ped, index);
    }

    pub fn SET_PED_CAN_EVASIVE_DIVE(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7744612924842995801)), ped, toggle);
    }

    pub fn IS_PED_EVASIVE_DIVING(ped: types.Ped, evadingEntity: [*c]types.Entity) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(4703519164161087640)), ped, evadingEntity);
    }

    pub fn SET_PED_SHOOTS_AT_COORD(ped: types.Ped, x: f32, y: f32, z: f32, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke5(10853778798363652538, ped, x, y, z, toggle);
    }

    pub fn SET_PED_MODEL_IS_SUPPRESSED(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(16241005812428730129, ped, toggle);
    }

    pub fn STOP_ANY_PED_MODEL_BEING_SUPPRESSED() void {
        _ = nativeCaller.invoke0(13005217458194956495);
    }

    pub fn SET_PED_CAN_BE_TARGETED_WHEN_INJURED(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7173112365129895767)), ped, toggle);
    }

    pub fn SET_PED_GENERATES_DEAD_BODY_EVENTS(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(9201271453299690075)), ped, toggle);
    }

    pub fn _0xE43A13C9E4CCCBCF(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(16445478747144768463, p0, p1);
    }

    pub fn SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(16111978299072887333, ped, toggle);
    }

    pub fn GIVE_PED_HELMET(ped: types.Ped, cannotPedRemove: windows.BOOL, helmetFlag: c_int, textureIndex: c_int) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(6109067650810737022)), ped, cannotPedRemove, helmetFlag, textureIndex);
    }

    pub fn REMOVE_PED_HELMET(ped: types.Ped, instantly: windows.BOOL) void {
        _ = nativeCaller.invoke2(12083797222263021272, ped, instantly);
    }

    pub fn _0x14590DDBEDB1EC85(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1466218391922666629)), p0);
    }

    pub fn SET_PED_HELMET(ped: types.Ped, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6199841587769737477)), ped, p1);
    }

    pub fn SET_PED_HELMET_FLAG(ped: types.Ped, helmetFlag: c_int) void {
        _ = nativeCaller.invoke2(13900234201931967269, ped, helmetFlag);
    }

    pub fn SET_PED_HELMET_PROP_INDEX(ped: types.Ped, propIndex: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2799047177385093404)), ped, propIndex);
    }

    pub fn SET_PED_HELMET_TEXTURE_INDEX(ped: types.Ped, textureIndex: c_int) void {
        _ = nativeCaller.invoke2(17389819055948792546, ped, textureIndex);
    }

    pub fn IS_PED_WEARING_HELMET(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(17526848534906706713, ped);
    }

    pub fn _0x687C0B594907D2E8(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7528905155161871080)), p0);
    }

    pub fn _0x451294E859ECC018(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(4977204263859830808)), p0);
    }

    pub fn _0x9D728C1E12BF5518(p0: types.Any) types.Any {
        return nativeCaller.invoke1(11345284472091137304, p0);
    }

    pub fn _0xF2385935BFFD4D92(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(17453798443263544722, p0);
    }

    pub fn SET_PED_TO_LOAD_COVER(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3687135479488455577)), ped, toggle);
    }

    pub fn SET_PED_CAN_COWER_IN_COVER(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(14660716305380058933, ped, toggle);
    }

    pub fn SET_PED_CAN_PEEK_IN_COVER(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(14201118858005067574, ped, toggle);
    }

    pub fn SET_PED_PLAYS_HEAD_ON_HORN_ANIM_WHEN_DIES_IN_VEHICLE(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(10725687488826502461, ped, toggle);
    }

    pub fn SET_PED_LEG_IK_MODE(ped: types.Ped, mode: c_int) void {
        _ = nativeCaller.invoke2(14093722256403988157, ped, mode);
    }

    pub fn SET_PED_MOTION_BLUR(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(763475691609175112)), ped, toggle);
    }

    pub fn SET_PED_CAN_SWITCH_WEAPON(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(17113536741096813376, ped, toggle);
    }

    pub fn SET_PED_DIES_INSTANTLY_IN_WATER(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(17201007542980421583, ped, toggle);
    }

    pub fn _0x1A330D297AAC6BC1(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1887867140601310145)), p0, p1);
    }

    pub fn STOP_PED_WEAPON_FIRING_WHEN_DROPPED(p0: types.Any) void {
        _ = nativeCaller.invoke1(13932116899881240072, p0);
    }

    pub fn SET_SCRIPTED_ANIM_SEAT_OFFSET(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6419806103349412400)), p0, p1);
    }

    pub fn SET_PED_COMBAT_MOVEMENT(ped: types.Ped, combatMovement: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5592521861259579479)), ped, combatMovement);
    }

    pub fn GET_PED_COMBAT_MOVEMENT(ped: types.Ped) types.Any {
        return nativeCaller.invoke1(16044394811451421685, ped);
    }

    pub fn SET_PED_COMBAT_ABILITY(ped: types.Ped, p1: c_int) void {
        _ = nativeCaller.invoke2(14367094196529200552, ped, p1);
    }

    pub fn SET_PED_COMBAT_RANGE(ped: types.Ped, p1: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4350590797670664571)), ped, p1);
    }

    pub fn GET_PED_COMBAT_RANGE(ped: types.Ped) types.Any {
        return nativeCaller.invoke1(18003693607827943328, ped);
    }

    pub fn SET_PED_COMBAT_ATTRIBUTES(ped: types.Ped, attributeIndex: c_int, enabled: windows.BOOL) void {
        _ = nativeCaller.invoke3(11490816196028522521, ped, attributeIndex, enabled);
    }

    pub fn SET_PED_TARGET_LOSS_RESPONSE(ped: types.Ped, responseType: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(505451025464023626)), ped, responseType);
    }

    pub fn _0xDCCA191DF9980FD7(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(15909556250171936727, p0);
    }

    pub fn IS_PED_PERFORMING_STEALTH_KILL(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(18252189600478478775, ped);
    }

    pub fn _0xEBD0EDBA5BE957CF(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(16992342778730600399, ped);
    }

    pub fn IS_PED_BEING_STEALTH_KILLED(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(9672364137847217650, ped);
    }

    pub fn GET_MELEE_TARGET_FOR_PED(ped: types.Ped) types.Ped {
        return nativeCaller.invoke1(@as(u64, @intCast(1775519886837546297)), ped);
    }

    pub fn WAS_PED_KILLED_BY_STEALTH(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(17978381401878278144, ped);
    }

    pub fn WAS_PED_KILLED_BY_TAKEDOWN(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(9153815145544627324)), ped);
    }

    pub fn _0x61767F73EACEED21(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7022940804768263457)), p0);
    }

    pub fn SET_PED_FLEE_ATTRIBUTES(ped: types.Ped, p1: types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(8116279360099375049)), ped, p1, p2);
    }

    pub fn SET_PED_COWER_HASH(p0: types.Any, p1: [*c]u8) void {
        _ = nativeCaller.invoke2(11910071655013453523, p0, p1);
    }

    pub fn _0x2016C603D6B8987C(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2312253178490951804)), p0, p1);
    }

    pub fn SET_PED_STEERS_AROUND_PEDS(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5112176269199530129)), ped, toggle);
    }

    pub fn SET_PED_STEERS_AROUND_OBJECTS(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1515954447145109695)), ped, toggle);
    }

    pub fn SET_PED_STEERS_AROUND_VEHICLES(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(16964982643892298732, ped, toggle);
    }

    pub fn _0xA9B61A329BFDCBEA(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12228990642838948842, p0, p1);
    }

    pub fn _0x570389D1C3DE3C6B(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6270006640257154155)), p0);
    }

    pub fn _0x576594E8D64375E2(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6297603381695575522)), p0, p1);
    }

    pub fn _0xA52D5247A4227E14(p0: types.Any) void {
        _ = nativeCaller.invoke1(11902259857859968532, p0);
    }

    pub fn IS_ANY_PED_NEAR_POINT(x: f32, y: f32, z: f32, radius: f32) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(592611794392571039)), x, y, z, radius);
    }

    pub fn _0x2208438012482A1A(ped: types.Ped, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2452284214444829210)), ped, p1, p2);
    }

    pub fn _0xFCF37A457CB96DC0(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32) windows.BOOL {
        return nativeCaller.invoke5(18227046555762388416, p0, p1, p2, p3, p4);
    }

    pub fn _0x7D7A2E43E74E2EB8(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(9041590071078039224)), p0);
    }

    pub fn GET_PED_FLOOD_INVINCIBILITY(ped: types.Ped, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3153426456988567048)), ped, p1);
    }

    pub fn _0xCD018C591F94CB43(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(14772242567161760579, p0, p1);
    }

    pub fn _0x75BA1CB3B7D40CAF(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8483124406314601647)), p0, p1);
    }

    pub fn IS_TRACKED_PED_VISIBLE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(10504899121431808172, ped);
    }

    pub fn _0x511F1A683387C7E2(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(5845419876193650658)), p0);
    }

    pub fn IS_PED_TRACKED(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5502869916007599031)), ped);
    }

    pub fn HAS_PED_RECEIVED_EVENT(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(9585837826331274688, p0, p1);
    }

    pub fn _0x6CD5A433374D4CFB(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(7842354866013687035)), p0, p1);
    }

    pub fn _0x9C6A6C19B6C0C496(p0: types.Ped, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(11270939875144156310, p0, p1);
    }

    pub fn GET_PED_BONE_INDEX(ped: types.Ped, boneId: c_int) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(4558360841545231921)), ped, boneId);
    }

    pub fn GET_PED_RAGDOLL_BONE_INDEX(ped: types.Ped, bone: c_int) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(2330594670382917490)), ped, bone);
    }

    pub fn SET_PED_ENVEFF_SCALE(ped: types.Ped, value: f32) void {
        _ = nativeCaller.invoke2(13774630443272451425, ped, value);
    }

    pub fn GET_PED_ENVEFF_SCALE(ped: types.Ped) f32 {
        return nativeCaller.invoke1(11246846181799959100, ped);
    }

    pub fn SET_ENABLE_PED_ENVEFF_SCALE(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(15187732287137320734, ped, toggle);
    }

    pub fn _0x110F526AB784111F(ped: types.Ped, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1229291841594331423)), ped, p1);
    }

    pub fn _0xD69411AA0CEBF9E9(ped: types.Ped, p1: c_int, p2: c_int, p3: c_int) void {
        _ = nativeCaller.invoke4(15462002842728659433, ped, p1, p2, p3);
    }

    pub fn _0x1216E0BFA72CC703(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1303476255918442243)), p0, p1);
    }

    pub fn _0x2B5AA717A181FB4C(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3123993011470596940)), p0, p1);
    }

    pub fn _0xB8B52E498014F5B0(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(13309595166979716528, ped);
    }

    pub fn CREATE_SYNCHRONIZED_SCENE(x: f32, y: f32, z: f32, p3: f32, p4: f32, p5: f32, p6: types.Any) types.Any {
        return nativeCaller.invoke7(10095065924937375091, x, y, z, p3, p4, p5, p6);
    }

    pub fn _0x62EC273D00187DCA(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any) types.Any {
        return nativeCaller.invoke5(@as(u64, @intCast(7128115453168745930)), p0, p1, p2, p3, p4);
    }

    pub fn IS_SYNCHRONIZED_SCENE_RUNNING(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2725693256661961254)), p0);
    }

    pub fn SET_SYNCHRONIZED_SCENE_ORIGIN(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: types.Any) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(7696488426199063767)), p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn SET_SYNCHRONIZED_SCENE_PHASE(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8305362243532093136)), p0, p1);
    }

    pub fn GET_SYNCHRONIZED_SCENE_PHASE(scene: types.Any) f32 {
        return nativeCaller.invoke1(16475030217870177228, scene);
    }

    pub fn SET_SYNCHRONIZED_SCENE_RATE(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(13169826626972244573, p0, p1);
    }

    pub fn GET_SYNCHRONIZED_SCENE_RATE(p0: types.Any) f32 {
        return nativeCaller.invoke1(15567029479391317312, p0);
    }

    pub fn SET_SYNCHRONIZED_SCENE_LOOPED(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(15683952436282824527, p0, p1);
    }

    pub fn IS_SYNCHRONIZED_SCENE_LOOPED(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7084760360540148154)), p0);
    }

    pub fn _0x394B9CD12435C981(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4128565905484794241)), p0, p1);
    }

    pub fn _0x7F2F4F13AC5257EF(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(9164630712636299247)), p0);
    }

    pub fn ATTACH_SYNCHRONIZED_SCENE_TO_ENTITY(scene: types.Any, entity: types.Any, boneIndex: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2823272235100945302)), scene, entity, boneIndex);
    }

    pub fn DETACH_SYNCHRONIZED_SCENE(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7870306363211724778)), p0);
    }

    pub fn _0xCD9CC7E200A52A6F(p0: types.Any) void {
        _ = nativeCaller.invoke1(14815936647629449839, p0);
    }

    pub fn FORCE_PED_MOTION_STATE(ped: types.Ped, motionStateHash: types.Hash, p2: windows.BOOL, p3: windows.BOOL, p4: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(17476611774346628554, ped, motionStateHash, p2, p3, p4);
    }

    pub fn _0xF60165E1D2C5370B(p0: types.Ped, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(17726561628885169931, p0, p1, p2);
    }

    pub fn SET_PED_MAX_MOVE_BLEND_RATIO(ped: types.Ped, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4841514138165184074)), ped, value);
    }

    pub fn SET_PED_MIN_MOVE_BLEND_RATIO(ped: types.Ped, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(119513419683673053)), ped, value);
    }

    pub fn SET_PED_MOVE_RATE_OVERRIDE(ped: types.Ped, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(602347721261201873)), ped, value);
    }

    pub fn _0x46B05BCAE43856B0(ped: types.Ped, flag: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5093672105526449840)), ped, flag);
    }

    pub fn GET_PED_NEARBY_VEHICLES(ped: types.Ped, sizeAndVehs: [*c]c_int) c_int {
        return nativeCaller.invoke2(14985844084871073154, ped, sizeAndVehs);
    }

    pub fn GET_PED_NEARBY_PEDS(ped: types.Ped, sizeAndPeds: [*c]c_int, pedTypeToIgnore: c_int) c_int {
        return nativeCaller.invoke3(@as(u64, @intCast(2592092050355407467)), ped, sizeAndPeds, pedTypeToIgnore);
    }

    pub fn _0x7350823473013C02(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8309284474277936130)), ped);
    }

    pub fn IS_PED_USING_ACTION_MODE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(65078344399845189)), ped);
    }

    pub fn SET_PED_USING_ACTION_MODE(ped: types.Ped, p1: windows.BOOL, p2: types.Any, action: [*c]u8) void {
        _ = nativeCaller.invoke4(15517940822472086375, ped, p1, p2, action);
    }

    pub fn _0x781DE8FA214E87D2(p0: types.Ped, p1: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8655330219874224082)), p0, p1);
    }

    pub fn SET_PED_CAPSULE(ped: types.Ped, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3913053473658322402)), ped, value);
    }

    pub fn REGISTER_PEDHEADSHOT(ped: types.Ped) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(4927612575077781622)), ped);
    }

    pub fn _0x953563CE563143AF(p0: types.Any) types.Any {
        return nativeCaller.invoke1(10751609423277409199, p0);
    }

    pub fn UNREGISTER_PEDHEADSHOT(ped: types.Ped) void {
        _ = nativeCaller.invoke1(10858519677351805695, ped);
    }

    pub fn IS_PEDHEADSHOT_VALID(handle: c_int) c_int {
        return nativeCaller.invoke1(11576897081859713442, handle);
    }

    pub fn IS_PEDHEADSHOT_READY(handle: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8107924672780253799)), handle);
    }

    pub fn GET_PEDHEADSHOT_TXD_STRING(handle: c_int) [*c]u8 {
        return nativeCaller.invoke1(15802758171925831019, handle);
    }

    pub fn _0xF0DAEF2F545BEE25(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(17355447100583439909, p0);
    }

    pub fn _0x5D517B27CF6ECD04(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6724291129554947332)), p0);
    }

    pub fn _0xEBB376779A760AA8() types.Any {
        return nativeCaller.invoke0(16984048875808885416);
    }

    pub fn _0x876928DDDFCCC9CD() types.Any {
        return nativeCaller.invoke0(9757375001082513869);
    }

    pub fn _0xE8A169E666CBC541() types.Any {
        return nativeCaller.invoke0(16762795726337721665);
    }

    pub fn _0xC1F6EBF9A3D55538(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(13976617951018964280, p0, p1);
    }

    pub fn _0x600048C60D5C2C51(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6917609043105950801)), p0);
    }

    pub fn _0x2DF9038C90AD5264(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: types.Any, p6: f32, p7: types.Any) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(3312682903165293156)), p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn _0xB2AFF10216DEFA2F(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: types.Any, p8: f32, p9: types.Any) void {
        _ = nativeCaller.invoke10(12875774850951477807, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn _0xFEE4A5459472A9F8() void {
        _ = nativeCaller.invoke0(18366986898585594360);
    }

    pub fn _0x3C67506996001F5E() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4352535979295252318)));
    }

    pub fn _0xA586FBEB32A53DBB() types.Any {
        return nativeCaller.invoke0(11927497650722913723);
    }

    pub fn _0xF445DE8DA80A1792() types.Any {
        return nativeCaller.invoke0(17601719418638440338);
    }

    pub fn _0xA635C11B8C44AFC2() types.Any {
        return nativeCaller.invoke0(11976691108123291586);
    }

    pub fn _0x280C7E3AC7F56E90(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(2885820252165598864)), p0, p1, p2, p3);
    }

    pub fn _0xB782F8238512BAD5(p0: types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(13223404287353338581, p0, p1);
    }

    pub fn SET_IK_TARGET(ped: types.Ped, p1: c_int, targetPed: types.Ped, boneLookAt: c_int, x: f32, y: f32, z: f32, p7: types.Any, duration: c_int, duration1: c_int) void {
        _ = nativeCaller.invoke10(14062342233199144153, ped, p1, targetPed, boneLookAt, x, y, z, p7, duration, duration1);
    }

    pub fn _0xED3C76ADFA6D07C4(p0: types.Any) void {
        _ = nativeCaller.invoke1(17094668775194429380, p0);
    }

    pub fn REQUEST_ACTION_MODE_ASSET(asset: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2958345439083668888)), asset);
    }

    pub fn HAS_ACTION_MODE_ASSET_LOADED(asset: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(16480347513358012005, asset);
    }

    pub fn REMOVE_ACTION_MODE_ASSET(asset: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1434749392412277329)), asset);
    }

    pub fn REQUEST_STEALTH_MODE_ASSET(asset: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3029342537570676047)), asset);
    }

    pub fn HAS_STEALTH_MODE_ASSET_LOADED(asset: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(16823192400983700545, asset);
    }

    pub fn REMOVE_STEALTH_MODE_ASSET(asset: [*c]u8) void {
        _ = nativeCaller.invoke1(10527592376442087490, asset);
    }

    pub fn SET_PED_LOD_MULTIPLIER(ped: types.Ped, multiplier: f32) void {
        _ = nativeCaller.invoke2(15865156897723921451, ped, multiplier);
    }

    pub fn _0xE861D0B05C7662B8(p0: types.Any, p1: windows.BOOL, p2: types.Any) void {
        _ = nativeCaller.invoke3(16744894345424298680, p0, p1, p2);
    }

    pub fn _0x129466ED55140F8D(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1338808158756540301)), p0, p1);
    }

    pub fn _0xCB968B53FC7F916D(p0: types.Any, p1: windows.BOOL, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(14670066029040734573, p0, p1, p2, p3);
    }

    pub fn _0x68772DB2B2526F9F(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(7527535547692248991)), p0, p1, p2, p3, p4);
    }

    pub fn _0x06087579E7AA85A9(p0: types.Any, p1: types.Any, p2: f32, p3: f32, p4: f32, p5: f32) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(434726530479457705)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _0xD8C3BE3EE94CAF2D(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(15619537110062378797, p0, p1, p2, p3, p4);
    }

    pub fn _0xD33DAA36272177C4(p0: types.Any) void {
        _ = nativeCaller.invoke1(15221509465143605188, p0);
    }

    pub fn _0x83A169EABCDB10A2(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(9484978747130712226, p0, p1);
    }

    pub fn _0x288DF530C92DAD6F(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2922261323115769199)), p0, p1);
    }
};

pub const VEHICLE = struct {
    pub fn CREATE_VEHICLE(modelHash: types.Hash, x: f32, y: f32, z: f32, heading: f32, networkHandle: windows.BOOL, vehiclehandle: windows.BOOL) types.Vehicle {
        return nativeCaller.invoke7(12625226732244324784, modelHash, x, y, z, heading, networkHandle, vehiclehandle);
    }

    pub fn DELETE_VEHICLE(vehicle: [*c]types.Vehicle) void {
        _ = nativeCaller.invoke1(16877355631701828943, vehicle);
    }

    pub fn _0x7D6F9A3EF26136A0(vehicle: types.Vehicle, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(9038612572300981920)), vehicle, p1, p2);
    }

    pub fn SET_VEHICLE_ALLOW_NO_PASSENGERS_LOCKON(veh: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6707218932995881772)), veh, p1);
    }

    pub fn _0xE6B0E8CFC3633BF0(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(16623042203658435568, vehicle);
    }

    pub fn IS_VEHICLE_MODEL(vehicle: types.Vehicle, hash: types.Hash) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(4773408663263202697)), vehicle, hash);
    }

    pub fn DOES_SCRIPT_VEHICLE_GENERATOR_EXIST(vehicleGenerator: types.Any) windows.BOOL {
        return nativeCaller.invoke1(17728538440791754870, vehicleGenerator);
    }

    pub fn CREATE_SCRIPT_VEHICLE_GENERATOR(x: f32, y: f32, z: f32, heading: f32, p4: f32, p5: f32, modelHash: types.Hash, p7: c_int, p8: c_int, p9: c_int, p10: c_int, p11: windows.BOOL, p12: windows.BOOL, p13: windows.BOOL, p14: windows.BOOL, p15: windows.BOOL, p16: c_int) types.Any {
        return nativeCaller.invoke17(11380464527765569814, x, y, z, heading, p4, p5, modelHash, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16);
    }

    pub fn DELETE_SCRIPT_VEHICLE_GENERATOR(vehicleGenerator: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2454510840071524957)), vehicleGenerator);
    }

    pub fn SET_SCRIPT_VEHICLE_GENERATOR(vehicleGenerator: types.Any, enabled: windows.BOOL) void {
        _ = nativeCaller.invoke2(15696769700584080560, vehicleGenerator, enabled);
    }

    pub fn SET_ALL_VEHICLE_GENERATORS_ACTIVE_IN_AREA(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, p6: windows.BOOL, p7: windows.BOOL) void {
        _ = nativeCaller.invoke8(13917004117723053645, x1, y1, z1, x2, y2, z2, p6, p7);
    }

    pub fn SET_ALL_VEHICLE_GENERATORS_ACTIVE() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3795840726385927356)));
    }

    pub fn SET_ALL_LOW_PRIORITY_VEHICLE_GENERATORS_ACTIVE(active: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6954129466167359612)), active);
    }

    pub fn _0x9A75585FB2E54FAD(p0: f32, p1: f32, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(11129899222162558893, p0, p1, p2, p3);
    }

    pub fn _0x0A436B8643716D14() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(739552988220189972)));
    }

    pub fn SET_VEHICLE_ON_GROUND_PROPERLY(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5292642784517372369)), vehicle);
    }

    pub fn SET_ALL_VEHICLES_SPAWN(p0: types.Vehicle, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL) types.Any {
        return nativeCaller.invoke4(16151008515437609239, p0, p1, p2, p3);
    }

    pub fn IS_VEHICLE_STUCK_ON_ROOF(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(13013133991342886879, vehicle);
    }

    pub fn ADD_VEHICLE_UPSIDEDOWN_CHECK(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(13199530267293122651, vehicle);
    }

    pub fn REMOVE_VEHICLE_UPSIDEDOWN_CHECK(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(14212995567744351888, vehicle);
    }

    pub fn IS_VEHICLE_STOPPED(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6278497493873644922)), vehicle);
    }

    pub fn GET_VEHICLE_NUMBER_OF_PASSENGERS(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(2651249327676063369)), vehicle);
    }

    pub fn GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(12089054235866735952, vehicle);
    }

    pub fn _GET_VEHICLE_MODEL_MAX_NUMBER_OF_PASSENGERS(VehicleModel: types.Hash) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(3087559591220014500)), VehicleModel);
    }

    pub fn _0xF7F203E31F96F6A1(vehicle: types.Vehicle, flag: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(17866346945754625697, vehicle, flag);
    }

    pub fn _0xE33FFA906CE74880(vehicle: types.Vehicle, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(16375082268351744128, vehicle, p1);
    }

    pub fn SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME(multiplier: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2619521048766764343)), multiplier);
    }

    pub fn SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME(multiplier: f32) void {
        _ = nativeCaller.invoke1(12948752261143492563, multiplier);
    }

    pub fn SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME(multiplier: f32) void {
        _ = nativeCaller.invoke1(16926459000783100701, multiplier);
    }

    pub fn _0xD4B8E3D1917BC86B(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(15328251820983961707, p0);
    }

    pub fn _0x90B6DA738A9A25DA(p0: f32) void {
        _ = nativeCaller.invoke1(10427762177004414426, p0);
    }

    pub fn SET_FAR_DRAW_VEHICLES(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2752349403850161347)), toggle);
    }

    pub fn SET_NUMBER_OF_PARKED_VEHICLES(value: c_int) void {
        _ = nativeCaller.invoke1(14601056006077421567, value);
    }

    pub fn SET_VEHICLE_DOORS_LOCKED(vehicle: types.Vehicle, doorLockStatus: c_int) void {
        _ = nativeCaller.invoke2(13142674893052018598, vehicle, doorLockStatus);
    }

    pub fn SET_PED_TARGETTABLE_VEHICLE_DESTROY(vehicle: types.Vehicle, vehicleComponent: c_int, destroyType: c_int) void {
        _ = nativeCaller.invoke3(13722593684471962573, vehicle, vehicleComponent, destroyType);
    }

    pub fn DISABLE_VEHICLE_IMPACT_EXPLOSION_ACTIVATION(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(15565863143422620276, vehicle, toggle);
    }

    pub fn SET_VEHICLE_DOORS_LOCKED_FOR_PLAYER(vehicle: types.Vehicle, player: types.Player, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5871197926712478929)), vehicle, player, toggle);
    }

    pub fn GET_VEHICLE_DOORS_LOCKED_FOR_PLAYER(vehicle: types.Vehicle, player: types.Player) windows.BOOL {
        return nativeCaller.invoke2(17775545771403546645, vehicle, player);
    }

    pub fn SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(11743148728654440396, vehicle, toggle);
    }

    pub fn _0x9737A37136F07E75(veh: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(10896357530094567029, veh, p1);
    }

    pub fn SET_VEHICLE_DOORS_LOCKED_FOR_TEAM(vehicle: types.Vehicle, team: c_int, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke3(13267443194257140648, vehicle, team, toggle);
    }

    pub fn EXPLODE_VEHICLE(vehicle: types.Vehicle, isAudible: windows.BOOL, isInvisible: windows.BOOL) void {
        _ = nativeCaller.invoke3(13434538314134409548, vehicle, isAudible, isInvisible);
    }

    pub fn SET_VEHICLE_OUT_OF_CONTROL(vehicle: types.Vehicle, killDriver: windows.BOOL, explodeOnImpact: windows.BOOL) void {
        _ = nativeCaller.invoke3(17410082034936983756, vehicle, killDriver, explodeOnImpact);
    }

    pub fn SET_VEHICLE_TIMED_EXPLOSION(vehicle: types.Vehicle, ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3317592585230581937)), vehicle, ped, toggle);
    }

    pub fn _0x99AD4CCCB128CBC9(p0: types.Any) void {
        _ = nativeCaller.invoke1(11073591500803197897, p0);
    }

    pub fn _0x6ADAABD3068C5235() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7699655435779592757)));
    }

    pub fn _0xEF49CF0270307CBE() void {
        _ = nativeCaller.invoke0(17242540257743764670);
    }

    pub fn _0xAE3FEE8709B39DCB(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(12556016549882994123, p0);
    }

    pub fn SET_TAXI_LIGHTS(vehicle: types.Vehicle, state: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6451410762761259225)), vehicle, state);
    }

    pub fn IS_TAXI_LIGHT_ON(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8432076543994056956)), vehicle);
    }

    pub fn IS_VEHICLE_IN_GARAGE_AREA(garageName: [*c]u8, vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke2(14908120985973273538, garageName, vehicle);
    }

    pub fn SET_VEHICLE_COLOURS(vehicle: types.Vehicle, colorPrimary: c_int, colorSecondary: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5700796144468248065)), vehicle, colorPrimary, colorSecondary);
    }

    pub fn SET_VEHICLE_FULLBEAM(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(10051990933519155742, vehicle, toggle);
    }

    pub fn STEER_UNLOCK_BIAS(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(509309337690280605)), vehicle, toggle);
    }

    pub fn SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle: types.Vehicle, r: c_int, g: c_int, b: c_int) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8160934221331913706)), vehicle, r, g, b);
    }

    pub fn GET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle: types.Vehicle, r: [*c]c_int, g: [*c]c_int, b: [*c]c_int) void {
        _ = nativeCaller.invoke4(13136141173969739602, vehicle, r, g, b);
    }

    pub fn CLEAR_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6188458765339386935)), vehicle);
    }

    pub fn GET_IS_VEHICLE_PRIMARY_COLOUR_CUSTOM(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(17335973723136045595, vehicle);
    }

    pub fn SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle: types.Vehicle, r: c_int, g: c_int, b: c_int) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(3949330575929153364)), vehicle, r, g, b);
    }

    pub fn GET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle: types.Vehicle, r: [*c]c_int, g: [*c]c_int, b: [*c]c_int) void {
        _ = nativeCaller.invoke4(9478332663426216668, vehicle, r, g, b);
    }

    pub fn CLEAR_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6916366759000678409)), vehicle);
    }

    pub fn GET_IS_VEHICLE_SECONDARY_COLOUR_CUSTOM(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(10451221855851406700, vehicle);
    }

    pub fn _SET_VEHICLE_PAINT_FADE(veh: types.Vehicle, fade: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4250770462311716468)), veh, fade);
    }

    pub fn _GET_VEHICLE_PAINT_FADE(veh: types.Vehicle) f32 {
        return nativeCaller.invoke1(12116963156199523331, veh);
    }

    pub fn SET_CAN_RESPRAY_VEHICLE(vehicle: types.Vehicle, state: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5961537328538620758)), vehicle, state);
    }

    pub fn _0x33506883545AC0DF(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3697570207336415455)), vehicle, p1);
    }

    pub fn _JITTER_VEHICLE(vehicle: types.Vehicle, p1: windows.BOOL, yaw: f32, pitch: f32, roll: f32) void {
        _ = nativeCaller.invoke5(14238256275250510279, vehicle, p1, yaw, pitch, roll);
    }

    pub fn SET_BOAT_ANCHOR(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8492641107122760976)), vehicle, toggle);
    }

    pub fn _GET_BOAT_ANCHOR(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2792529512651097147)), vehicle);
    }

    pub fn _0xE3EBAAE484798530(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(16423408364588467504, vehicle, p1);
    }

    pub fn _0xB28B1FE5BFADD7F5(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12865411832137766901, vehicle, p1);
    }

    pub fn _0xE842A9398079BD82(vehicle: types.Vehicle, p1: f32) void {
        _ = nativeCaller.invoke2(16736125229695876482, vehicle, p1);
    }

    pub fn _0x8F719973E1445BA2(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(10336211342771641250, vehicle, p1);
    }

    pub fn SET_VEHICLE_SIREN(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(17623225488012915581, vehicle, toggle);
    }

    pub fn IS_VEHICLE_SIREN_ON(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5520275388034856114)), vehicle);
    }

    pub fn _0xB5CC40FBCB586380(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(13099916866306466688, vehicle);
    }

    pub fn SET_VEHICLE_STRONG(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4507125931233151499)), vehicle, toggle);
    }

    pub fn REMOVE_VEHICLE_STUCK_CHECK(p0: types.Any) void {
        _ = nativeCaller.invoke1(9477473254601942857, p0);
    }

    pub fn GET_VEHICLE_COLOURS(vehicle: types.Vehicle, colorPrimary: [*c]c_int, colorSecondary: [*c]c_int) void {
        _ = nativeCaller.invoke3(11642990248343929260, vehicle, colorPrimary, colorSecondary);
    }

    pub fn IS_VEHICLE_SEAT_FREE(vehicle: types.Vehicle, seatIndex: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(2498470473267324521)), vehicle, seatIndex);
    }

    pub fn GET_PED_IN_VEHICLE_SEAT(vehicle: types.Vehicle, index: c_int) types.Ped {
        return nativeCaller.invoke2(13493027623591629670, vehicle, index);
    }

    pub fn GET_LAST_PED_IN_VEHICLE_SEAT(vehicle: types.Vehicle, seatIndex: c_int) types.Ped {
        return nativeCaller.invoke2(9509748267553039972, vehicle, seatIndex);
    }

    pub fn GET_VEHICLE_LIGHTS_STATE(vehicle: types.Vehicle, lightsOn: [*c]c_int, highbeamsOn: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke3(13338338421850755375, vehicle, lightsOn, highbeamsOn);
    }

    pub fn IS_VEHICLE_TYRE_BURST(vehicle: types.Vehicle, wheelID: c_int, completely: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(13414279665309277353, vehicle, wheelID, completely);
    }

    pub fn SET_VEHICLE_FORWARD_SPEED(vehicle: types.Vehicle, speed: f32) void {
        _ = nativeCaller.invoke2(12345673040874251733, vehicle, speed);
    }

    pub fn _TASK_BRING_VEHICLE_TO_HALT(vehicle: types.Vehicle, p1: f32, p2: types.Any, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(2741540918328977952)), vehicle, p1, p2, p3);
    }

    pub fn _0x37EBBF3117BD6A25(vehicle: types.Vehicle, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4029524509185632805)), vehicle, p1);
    }

    pub fn SET_PED_ENABLED_BIKE_RINGTONE(vehicle: types.Vehicle, ringtone: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(6300915648399759277)), vehicle, ringtone);
    }

    pub fn _0x62CA17B74C435651(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7118528237038425681)), p0);
    }

    pub fn _0x375E7FC44F21C8AB(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(3989766801014769835)), p0);
    }

    pub fn _0x89D630CF5EA96D23(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(9932179695416732963, p0, p1);
    }

    pub fn _0x6A98C2ECF57FA5D4(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7681103487467234772)), p0, p1);
    }

    pub fn _0x7C0043FDFF6436BC(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8935216418893608636)), p0);
    }

    pub fn _0x8AA9180DE2FEDD45(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(9991543696220151109, p0, p1);
    }

    pub fn _0x0A6A279F3AA4FD70(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(750455852747783536)), p0, p1);
    }

    pub fn _0x634148744F385576(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7152077347623556470)), p0);
    }

    pub fn _0xE6F13851780394DA(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(16641144020667700442, p0, p1);
    }

    pub fn SET_VEHICLE_TYRE_BURST(vehicle: types.Vehicle, index: c_int, on_rim: windows.BOOL, p3: f32) void {
        _ = nativeCaller.invoke4(17035463926257943429, vehicle, index, on_rim, p3);
    }

    pub fn SET_VEHICLE_DOORS_SHUT(vehicle: types.Vehicle, closeInstantly: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8654578603176050421)), vehicle, closeInstantly);
    }

    pub fn SET_VEHICLE_TYRES_CAN_BURST(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(16977941433352285254, vehicle, toggle);
    }

    pub fn GET_VEHICLE_TYRES_CAN_BURST(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7461228425533296619)), vehicle);
    }

    pub fn SET_VEHICLE_WHEELS_CAN_BREAK(vehicle: types.Vehicle, enabled: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3004335601414621839)), vehicle, enabled);
    }

    pub fn SET_VEHICLE_DOOR_OPEN(vehicle: types.Vehicle, doorIndex: c_int, loose: windows.BOOL, openInstantly: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8963811182594345058)), vehicle, doorIndex, loose, openInstantly);
    }

    pub fn REMOVE_VEHICLE_WINDOW(vehicle: types.Vehicle, windowIndex: c_int) void {
        _ = nativeCaller.invoke2(12038498450811400297, vehicle, windowIndex);
    }

    pub fn ROLL_DOWN_WINDOWS(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(9617836149684691286, vehicle);
    }

    pub fn ROLL_DOWN_WINDOW(vehicle: types.Vehicle, windowIndex: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8852360316713789923)), vehicle, windowIndex);
    }

    pub fn ROLL_UP_WINDOW(vehicle: types.Vehicle, windowIndex: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6930569850916064601)), vehicle, windowIndex);
    }

    pub fn SMASH_VEHICLE_WINDOW(vehicle: types.Vehicle, index: c_int) void {
        _ = nativeCaller.invoke2(11410817766430417497, vehicle, index);
    }

    pub fn FIX_VEHICLE_WINDOW(vehicle: types.Vehicle, index: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8584567789502981762)), vehicle, index);
    }

    pub fn _DETACH_VEHICLE_WINDSCREEN(vehicleHandle: types.Vehicle) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7882527888856013523)), vehicleHandle);
    }

    pub fn _EJECT_JB700_ROOF(vehicle: types.Vehicle, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(16396684679968709580, vehicle, x, y, z);
    }

    pub fn SET_VEHICLE_LIGHTS(vehicle: types.Vehicle, p1: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3812034297014287450)), vehicle, p1);
    }

    pub fn _0xC45C27EF50F36ADC(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(14149228038100052700, p0, p1);
    }

    pub fn _0x1FD09E7390A74D54(vehicle: types.Any, p1: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2292506429516893524)), vehicle, p1);
    }

    pub fn SET_VEHICLE_ALARM(vehicle: types.Vehicle, state: windows.BOOL) void {
        _ = nativeCaller.invoke2(14836518586668520780, vehicle, state);
    }

    pub fn START_VEHICLE_ALARM(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(13330508336945546053, vehicle);
    }

    pub fn IS_VEHICLE_ALARM_ACTIVATED(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4835145494804037428)), vehicle);
    }

    pub fn SET_VEHICLE_INTERIORLIGHT(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(13555908479372192467, vehicle, toggle);
    }

    pub fn SET_VEHICLE_LIGHT_MULTIPLIER(vehicle: types.Vehicle, multiplier: f32) void {
        _ = nativeCaller.invoke2(12935821712570840444, vehicle, multiplier);
    }

    pub fn ATTACH_VEHICLE_TO_TRAILER(vehicle: types.Vehicle, trailer: types.Vehicle, radius: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4358713499366918996)), vehicle, trailer, radius);
    }

    pub fn _0x16B5E274BDE402F8(vehicle: types.Vehicle, trailer: types.Vehicle, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: f32, p10: f32, p11: f32) void {
        _ = nativeCaller.invoke12(@as(u64, @intCast(1636463030648963832)), vehicle, trailer, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
    }

    pub fn _0x374706271354CB18(p0: types.Vehicle, p1: types.Entity, p2: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3983159160330308376)), p0, p1, p2);
    }

    pub fn DETACH_VEHICLE_FROM_TRAILER(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(10399707500062170502, vehicle);
    }

    pub fn IS_VEHICLE_ATTACHED_TO_TRAILER(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(16703635855612878604, vehicle);
    }

    pub fn _0x2A8F319B392E7B3F(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3066724414011636543)), p0, p1);
    }

    pub fn _0x95CF53B3D687F9FA(p0: types.Any) void {
        _ = nativeCaller.invoke1(10794938863693855226, p0);
    }

    pub fn SET_VEHICLE_TYRE_FIXED(vehicle: types.Vehicle, tyreIndex: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7931960884476783901)), vehicle, tyreIndex);
    }

    pub fn SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle: types.Vehicle, plateText: [*c]u8) void {
        _ = nativeCaller.invoke2(10784026586230086215, vehicle, plateText);
    }

    pub fn GET_VEHICLE_NUMBER_PLATE_TEXT(vehicle: types.Vehicle) [*c]u8 {
        return nativeCaller.invoke1(@as(u64, @intCast(8998698628399956494)), vehicle);
    }

    pub fn GET_NUMBER_OF_VEHICLE_NUMBER_PLATES() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5498168532199037131)));
    }

    pub fn SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle: types.Vehicle, plateIndex: c_int) void {
        _ = nativeCaller.invoke2(10414832911214686369, vehicle, plateIndex);
    }

    pub fn GET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(17373694244543164821, vehicle);
    }

    pub fn SET_RANDOM_TRAINS(unk: windows.BOOL) void {
        _ = nativeCaller.invoke1(9284723967894636505, unk);
    }

    pub fn CREATE_MISSION_TRAIN(variation: c_int, x: f32, y: f32, z: f32, direction: windows.BOOL) types.Vehicle {
        return nativeCaller.invoke5(@as(u64, @intCast(7189658880938010824)), variation, x, y, z, direction);
    }

    pub fn SWITCH_TRAIN_TRACK(intersectionId: c_int, state: windows.BOOL) void {
        _ = nativeCaller.invoke2(18266947224440635168, intersectionId, state);
    }

    pub fn _0x21973BBF8D17EDFA(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2420469018626878970)), p0, p1);
    }

    pub fn DELETE_ALL_TRAINS() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8316584479950085245)));
    }

    pub fn SET_TRAIN_SPEED(train: types.Vehicle, speed: f32) void {
        _ = nativeCaller.invoke2(12253108332762994403, train, speed);
    }

    pub fn SET_TRAIN_CRUISE_SPEED(train: types.Vehicle, speed: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1605131416520909493)), train, speed);
    }

    pub fn SET_RANDOM_BOATS(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(9530583018426679647, toggle);
    }

    pub fn SET_GARBAGE_TRUCKS(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3097765567273685773)), toggle);
    }

    pub fn DOES_VEHICLE_HAVE_STUCK_VEHICLE_CHECK(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6333402058924655728)), p0);
    }

    pub fn GET_VEHICLE_RECORDING_ID(p0: types.Any, p1: [*c]types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(2401610889199999804)), p0, p1);
    }

    pub fn REQUEST_VEHICLE_RECORDING(p0: types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(12632962730954637077, p0, p1);
    }

    pub fn HAS_VEHICLE_RECORDING_BEEN_LOADED(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(3462530660256210884)), p0, p1);
    }

    pub fn REMOVE_VEHICLE_RECORDING(p0: types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(17372084488104460232, p0, p1);
    }

    pub fn _0x92523B76657A517D(p0: types.Any, p1: f32) types.Vector3 {
        return nativeCaller.invoke2(10543555057322447229, p0, p1);
    }

    pub fn GET_POSITION_OF_VEHICLE_RECORDING_AT_TIME(p0: types.Any, p1: f32, p2: [*c]types.Any) types.Vector3 {
        return nativeCaller.invoke3(15150798036259634082, p0, p1, p2);
    }

    pub fn _0xF0F2103EFAF8CBA7(p0: types.Any, p1: f32) types.Vector3 {
        return nativeCaller.invoke2(17361957376151309223, p0, p1);
    }

    pub fn GET_ROTATION_OF_VEHICLE_RECORDING_AT_TIME(p0: types.Any, p1: f32, p2: [*c]types.Any) types.Vector3 {
        return nativeCaller.invoke3(@as(u64, @intCast(2330648471473334445)), p0, p1, p2);
    }

    pub fn GET_TOTAL_DURATION_OF_VEHICLE_RECORDING_ID(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(1165608030841583334)), p0);
    }

    pub fn GET_TOTAL_DURATION_OF_VEHICLE_RECORDING(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(1029303147655924048)), p0, p1);
    }

    pub fn GET_POSITION_IN_RECORDING(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(3291240748898849909)), p0);
    }

    pub fn GET_TIME_POSITION_IN_RECORDING(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(6288981831131850052)), p0);
    }

    pub fn START_PLAYBACK_RECORDED_VEHICLE(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(4577785406487502961)), p0, p1, p2, p3);
    }

    pub fn START_PLAYBACK_RECORDED_VEHICLE_WITH_FLAGS(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: types.Any, p4: types.Any, p5: types.Any) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(9043506659263882054)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x1F2E4E06DEA8992B(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2246819055516817707)), p0, p1);
    }

    pub fn STOP_PLAYBACK_RECORDED_VEHICLE(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6089770571023433194)), p0);
    }

    pub fn PAUSE_PLAYBACK_RECORDED_VEHICLE(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7145638777801867697)), p0);
    }

    pub fn UNPAUSE_PLAYBACK_RECORDED_VEHICLE(p0: types.Any) void {
        _ = nativeCaller.invoke1(9834152984408425941, p0);
    }

    pub fn IS_PLAYBACK_GOING_ON_FOR_VEHICLE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2056539932144865004)), p0);
    }

    pub fn IS_PLAYBACK_USING_AI_GOING_ON_FOR_VEHICLE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(12585587717912215814, p0);
    }

    pub fn GET_CURRENT_PLAYBACK_FOR_VEHICLE(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(4808724834963185748)), p0);
    }

    pub fn SKIP_TO_END_AND_STOP_PLAYBACK_RECORDED_VEHICLE(p0: types.Any) void {
        _ = nativeCaller.invoke1(12361869541218343043, p0);
    }

    pub fn SET_PLAYBACK_SPEED(p0: types.Any, speed: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7386936414660884344)), p0, speed);
    }

    pub fn START_PLAYBACK_RECORDED_VEHICLE_USING_AI(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: f32, p4: types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(3016953963414045324)), p0, p1, p2, p3, p4);
    }

    pub fn SKIP_TIME_IN_PLAYBACK_RECORDED_VEHICLE(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(10680558840463170080, p0, p1);
    }

    pub fn SET_PLAYBACK_TO_USE_AI(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(11910265865249128753, p0, p1);
    }

    pub fn SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER(p0: types.Any, p1: types.Any, p2: types.Any, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(7954348751808169776)), p0, p1, p2, p3);
    }

    pub fn _0x5845066D8A1EA7F7(vehicle: types.Vehicle, x: f32, y: f32, z: f32, p4: types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(6360497116269160439)), vehicle, x, y, z, p4);
    }

    pub fn _0x796A877E459B99EA(p0: types.Any, p1: f32, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8748954202524064234)), p0, p1, p2, p3);
    }

    pub fn _0xFAF2A78061FD9EF4(p0: types.Any, p1: f32, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(18082699623687626484, p0, p1, p2, p3);
    }

    pub fn _0x063AE2B2CC273588(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(448920370433963400)), p0, p1);
    }

    pub fn EXPLODE_VEHICLE_IN_CUTSCENE(p0: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8676834177737408267)), p0, p1);
    }

    pub fn ADD_VEHICLE_STUCK_CHECK_WITH_WARP(p0: types.Any, p1: f32, p2: types.Any, p3: windows.BOOL, p4: windows.BOOL, p5: windows.BOOL, p6: types.Any) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(3434436927361464684)), p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn SET_VEHICLE_MODEL_IS_SUPPRESSED(model: types.Hash, suppressed: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1135708215248050196)), model, suppressed);
    }

    pub fn GET_RANDOM_VEHICLE_IN_SPHERE(x: f32, y: f32, z: f32, radius: f32, modelHash: types.Hash, flags: c_int) types.Vehicle {
        return nativeCaller.invoke6(@as(u64, @intCast(4066588722478844188)), x, y, z, radius, modelHash, flags);
    }

    pub fn GET_RANDOM_VEHICLE_FRONT_BUMPER_IN_SPHERE(p0: f32, p1: f32, p2: f32, p3: f32, p4: c_int, p5: c_int, p6: c_int) types.Vehicle {
        return nativeCaller.invoke7(14219920157253745256, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn GET_RANDOM_VEHICLE_BACK_BUMPER_IN_SPHERE(p0: f32, p1: f32, p2: f32, p3: f32, p4: c_int, p5: c_int, p6: c_int) types.Vehicle {
        return nativeCaller.invoke7(13044685025472194780, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn GET_CLOSEST_VEHICLE(x: f32, y: f32, z: f32, radius: f32, modelHash: types.Hash, flags: c_int) types.Vehicle {
        return nativeCaller.invoke6(17815877436373559451, x, y, z, radius, modelHash, flags);
    }

    pub fn GET_TRAIN_CARRIAGE(train: types.Vehicle, carriage: c_int) types.Entity {
        return nativeCaller.invoke2(@as(u64, @intCast(624589709488827331)), train, carriage);
    }

    pub fn DELETE_MISSION_TRAIN(train: [*c]types.Vehicle) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6590650039989028757)), train);
    }

    pub fn SET_MISSION_TRAIN_AS_NO_LONGER_NEEDED(train: [*c]types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(13539901319752752104, train, p1);
    }

    pub fn SET_MISSION_TRAIN_COORDS(train: types.Vehicle, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(6421190184434054966)), train, x, y, z);
    }

    pub fn IS_THIS_MODEL_A_BOAT(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5019570168338364899)), model);
    }

    pub fn _IS_THIS_MODEL_A_SUBMERSIBLE(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(10752073029506790910, model);
    }

    pub fn IS_THIS_MODEL_A_PLANE(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(11571025849083470046, model);
    }

    pub fn IS_THIS_MODEL_A_HELI(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(15916903365363078378, model);
    }

    pub fn IS_THIS_MODEL_A_CAR(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(9182194428474387960)), model);
    }

    pub fn IS_THIS_MODEL_A_TRAIN(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(12363314968004559403, model);
    }

    pub fn IS_THIS_MODEL_A_BIKE(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(13045814370742226564, model);
    }

    pub fn IS_THIS_MODEL_A_BICYCLE(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(13804902037466111698, model);
    }

    pub fn IS_THIS_MODEL_A_QUADBIKE(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4168859234758687272)), model);
    }

    pub fn SET_HELI_BLADES_FULL_SPEED(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(11635127903352186381, vehicle);
    }

    pub fn SET_HELI_BLADES_SPEED(vehicle: types.Vehicle, speed: f32) void {
        _ = nativeCaller.invoke2(18241842718139137101, vehicle, speed);
    }

    pub fn _0x99CAD8E7AFDB60FA(p0: types.Any, p1: f32, p2: f32) void {
        _ = nativeCaller.invoke3(11081908322697961722, p0, p1, p2);
    }

    pub fn SET_VEHICLE_CAN_BE_TARGETTED(vehicle: types.Vehicle, state: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3985708116393687682)), vehicle, state);
    }

    pub fn _0xDBC631F109350B8C(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(15836400051006278540, p0, p1);
    }

    pub fn SET_VEHICLE_CAN_BE_VISIBLY_DAMAGED(vehicle: types.Vehicle, state: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5507947388011886209)), vehicle, state);
    }

    pub fn _0x1AA8A837D2169D94(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1920970198774881684)), p0, p1);
    }

    pub fn _0x2311DD7159F00582(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2527044344841504130)), p0, p1);
    }

    pub fn GET_VEHICLE_DIRT_LEVEL(vehicle: types.Vehicle) f32 {
        return nativeCaller.invoke1(10310917179768153643, vehicle);
    }

    pub fn SET_VEHICLE_DIRT_LEVEL(vehicle: types.Vehicle, dirtLevel: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8778559758790880907)), vehicle, dirtLevel);
    }

    pub fn _IS_VEHICLE_DAMAGED(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(13608840237274767006, vehicle);
    }

    pub fn IS_VEHICLE_DOOR_FULLY_OPEN(vehicle: types.Vehicle, doorIndex: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(4509014719907044386)), vehicle, doorIndex);
    }

    pub fn SET_VEHICLE_ENGINE_ON(vehicle: types.Vehicle, value: windows.BOOL, instantly: windows.BOOL, unk: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(2636792098548582430)), vehicle, value, instantly, unk);
    }

    pub fn SET_VEHICLE_UNDRIVEABLE(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(9996419924669770645, vehicle, toggle);
    }

    pub fn SET_VEHICLE_PROVIDES_COVER(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6556939626901707223)), vehicle, toggle);
    }

    pub fn SET_VEHICLE_DOOR_CONTROL(vehicle: types.Vehicle, doorIndex: c_int, p2: types.Any, p3: f32) void {
        _ = nativeCaller.invoke4(17491875687605866443, vehicle, doorIndex, p2, p3);
    }

    pub fn SET_VEHICLE_DOOR_LATCHED(vehicle: types.Vehicle, doorIndex: c_int, p2: windows.BOOL, p3: windows.BOOL, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(11937183589473234760, vehicle, doorIndex, p2, p3, p4);
    }

    pub fn GET_VEHICLE_DOOR_ANGLE_RATIO(vehicle: types.Vehicle, door: c_int) f32 {
        return nativeCaller.invoke2(18320533513229773781, vehicle, door);
    }

    pub fn _GET_PED_USING_VEHICLE_DOOR(vehicle: types.Vehicle, doorIndex: c_int) types.Ped {
        return nativeCaller.invoke2(@as(u64, @intCast(2414659197036496187)), vehicle, doorIndex);
    }

    pub fn SET_VEHICLE_DOOR_SHUT(vehicle: types.Vehicle, doorIndex: c_int, closeInstantly: windows.BOOL) void {
        _ = nativeCaller.invoke3(10653754407603636709, vehicle, doorIndex, closeInstantly);
    }

    pub fn SET_VEHICLE_DOOR_BROKEN(vehicle: types.Vehicle, doorIndex: c_int, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke3(15336153818213079603, vehicle, doorIndex, toggle);
    }

    pub fn SET_VEHICLE_CAN_BREAK(vehicle: types.Vehicle, Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6467041784937131878)), vehicle, Toggle);
    }

    pub fn DOES_VEHICLE_HAVE_ROOF(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(10000351483635981184, vehicle);
    }

    pub fn IS_BIG_VEHICLE(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(11467357866649993982, vehicle);
    }

    pub fn GET_NUMBER_OF_VEHICLE_COLOURS(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(4293673586576970782)), vehicle);
    }

    pub fn SET_VEHICLE_COLOUR_COMBINATION(vehicle: types.Vehicle, numCombos: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3740465110043524657)), vehicle, numCombos);
    }

    pub fn GET_VEHICLE_COLOUR_COMBINATION(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(7675309252482981206)), vehicle);
    }

    pub fn SET_VEHICLE_IS_CONSIDERED_BY_PLAYER(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3582938665954924237)), vehicle, toggle);
    }

    pub fn _0xBE5C1255A1830FF5(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(13716858724054929397, p0, p1);
    }

    pub fn _0x9BECD4B9FEF3F8A6(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11235589065693984934, p0, p1);
    }

    pub fn _0x88BC673CA9E0AE99(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(9852863595025575577, p0, p1);
    }

    pub fn _0xE851E480B814D4BA(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(16740412531408164026, p0, p1);
    }

    pub fn GET_RANDOM_VEHICLE_MODEL_IN_MEMORY(p0: windows.BOOL, modelHash: [*c]types.Hash, p2: [*c]c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(386166814800147709)), p0, modelHash, p2);
    }

    pub fn GET_VEHICLE_DOOR_LOCK_STATUS(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(2719216112082266466)), vehicle);
    }

    pub fn IS_VEHICLE_DOOR_DAMAGED(veh: types.Vehicle, doorID: c_int) windows.BOOL {
        return nativeCaller.invoke2(13322071994783909159, veh, doorID);
    }

    pub fn _SET_VEHICLE_DOOR_BREAKABLE(vehicle: types.Vehicle, doorIndex: c_int, isBreakable: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3432081173349891800)), vehicle, doorIndex, isBreakable);
    }

    pub fn _0x27B926779DEB502D(vehicle: types.Vehicle, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(2862361333363068973)), vehicle, p1);
    }

    pub fn IS_VEHICLE_BUMPER_BROKEN_OFF(vehicle: types.Vehicle, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5080155653783107654)), vehicle, p1);
    }

    pub fn IS_COP_VEHICLE_IN_AREA_3D(x1: f32, x2: f32, y1: f32, y2: f32, z1: f32, z2: f32) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(9146641337764012650)), x1, x2, y1, y2, z1, z2);
    }

    pub fn IS_VEHICLE_ON_ALL_WHEELS(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(12755545563352728290, vehicle);
    }

    pub fn GET_VEHICLE_LAYOUT_HASH(vehicle: types.Vehicle) types.Hash {
        return nativeCaller.invoke1(@as(u64, @intCast(2941832761766075480)), vehicle);
    }

    pub fn _0xA01BC64DD4BFBBAC(vehicle: types.Vehicle, p1: types.Any) types.Any {
        return nativeCaller.invoke2(11537032908023774124, vehicle, p1);
    }

    pub fn SET_RENDER_TRAIN_AS_DERAILED(train: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3565462922087847220)), train, toggle);
    }

    pub fn SET_VEHICLE_EXTRA_COLOURS(vehicle: types.Vehicle, pearlescentColor: c_int, wheelColor: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2321312457832869427)), vehicle, pearlescentColor, wheelColor);
    }

    pub fn GET_VEHICLE_EXTRA_COLOURS(vehicle: types.Vehicle, pearlescentColor: [*c]c_int, wheelColor: [*c]c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4306607109209941751)), vehicle, pearlescentColor, wheelColor);
    }

    pub fn STOP_ALL_GARAGE_ACTIVITY() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1119119462339091814)));
    }

    pub fn SET_VEHICLE_FIXED(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1249505568339610652)), vehicle);
    }

    pub fn SET_VEHICLE_DEFORMATION_FIXED(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(10753929475942778001, vehicle);
    }

    pub fn _0x206BC5DC9D1AC70A(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2336178383040988938)), vehicle, p1);
    }

    pub fn _0x51BB2D88D31A914B(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5889351003397591371)), vehicle, p1);
    }

    pub fn _0x192547247864DFDD(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1811932647050764253)), vehicle, p1);
    }

    pub fn SET_DISABLE_VEHICLE_PETROL_TANK_FIRES(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5069912345726698322)), vehicle, toggle);
    }

    pub fn SET_DISABLE_VEHICLE_PETROL_TANK_DAMAGE(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4019503531837018135)), vehicle, toggle);
    }

    pub fn _0x91A0BD635321F145(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(10493595366067401029, vehicle, p1);
    }

    pub fn _0xC50CE861B55EAB8B(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(14198979231544683403, vehicle, p1);
    }

    pub fn _0x6EBFB22D646FFC18(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7980292972752141336)), vehicle, p1);
    }

    pub fn _0x25367DE49D64CF16(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2681469048992354070)), vehicle, p1);
    }

    pub fn REMOVE_VEHICLES_FROM_GENERATORS_IN_AREA(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, unk: types.Any) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(5089597142388722618)), x1, y1, z1, x2, y2, z2, unk);
    }

    pub fn SET_VEHICLE_STEER_BIAS(vehicle: types.Vehicle, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4803349002010823870)), vehicle, value);
    }

    pub fn IS_VEHICLE_EXTRA_TURNED_ON(vehicle: types.Vehicle, extraId: c_int) windows.BOOL {
        return nativeCaller.invoke2(15196977125611980989, vehicle, extraId);
    }

    pub fn SET_VEHICLE_EXTRA(vehicle: types.Vehicle, extraId: c_int, toggle: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(9143331738832080073)), vehicle, extraId, toggle);
    }

    pub fn DOES_EXTRA_EXIST(vehicle: types.Vehicle, extraId: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(1324855812493050196)), vehicle, extraId);
    }

    pub fn SET_CONVERTIBLE_ROOF(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(17553992667821581506, vehicle, p1);
    }

    pub fn LOWER_CONVERTIBLE_ROOF(vehicle: types.Vehicle, instantlyLower: windows.BOOL) void {
        _ = nativeCaller.invoke2(16056774613380606013, vehicle, instantlyLower);
    }

    pub fn RAISE_CONVERTIBLE_ROOF(vehicle: types.Vehicle, instantlyRaise: windows.BOOL) void {
        _ = nativeCaller.invoke2(10331173284347444336, vehicle, instantlyRaise);
    }

    pub fn GET_CONVERTIBLE_ROOF_STATE(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(17925337595986853697, vehicle);
    }

    pub fn IS_VEHICLE_A_CONVERTIBLE(vehicle: types.Vehicle, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5977217488152739022)), vehicle, p1);
    }

    pub fn IS_VEHICLE_STOPPED_AT_TRAFFIC_LIGHTS(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2979683755510794905)), vehicle);
    }

    pub fn SET_VEHICLE_DAMAGE(vehicle: types.Vehicle, xOffset: f32, yOffset: f32, zOffset: f32, damage: f32, radius: f32, p6: windows.BOOL) void {
        _ = nativeCaller.invoke7(11663533030030266153, vehicle, xOffset, yOffset, zOffset, damage, radius, p6);
    }

    pub fn GET_VEHICLE_ENGINE_HEALTH(vehicle: types.Vehicle) f32 {
        return nativeCaller.invoke1(14149504890089024184, vehicle);
    }

    pub fn SET_VEHICLE_ENGINE_HEALTH(vehicle: types.Vehicle, health: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5041455353683427057)), vehicle, health);
    }

    pub fn GET_VEHICLE_PETROL_TANK_HEALTH(vehicle: types.Vehicle) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(9033565442791362676)), vehicle);
    }

    pub fn SET_VEHICLE_PETROL_TANK_HEALTH(vehicle: types.Vehicle, health: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8132189641834549464)), vehicle, health);
    }

    pub fn IS_VEHICLE_STUCK_TIMER_UP(vehicle: types.Vehicle, p1: c_int, p2: c_int) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(7465809137861765236)), vehicle, p1, p2);
    }

    pub fn RESET_VEHICLE_STUCK_TIMER(vehicle: types.Vehicle, nullAttributes: windows.BOOL) void {
        _ = nativeCaller.invoke2(15517463679601715834, vehicle, nullAttributes);
    }

    pub fn IS_VEHICLE_DRIVEABLE(vehicle: types.Vehicle, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5486543479196481881)), vehicle, p1);
    }

    pub fn SET_VEHICLE_HAS_BEEN_OWNED_BY_PLAYER(vehicle: types.Vehicle, owned: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3125389474191733293)), vehicle, owned);
    }

    pub fn SET_VEHICLE_NEEDS_TO_BE_HOTWIRED(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(18132988441774804710, vehicle, toggle);
    }

    pub fn _0x9F3F689B814F2599(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11475005392661980569, p0, p1);
    }

    pub fn _0x4E74E62E0A97E901(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5653396517677426945)), p0, p1);
    }

    pub fn START_VEHICLE_HORN(vehicle: types.Vehicle, duration: c_int, mode: types.Hash, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(11280502237559143724, vehicle, duration, mode, p3);
    }

    pub fn _0x9D44FCCE98450843(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(11332460526619134019, vehicle, toggle);
    }

    pub fn SET_VEHICLE_HAS_STRONG_AXLES(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(10588190813215531055, vehicle, toggle);
    }

    pub fn GET_DISPLAY_NAME_FROM_VEHICLE_MODEL(modelHash: types.Hash) [*c]u8 {
        return nativeCaller.invoke1(12832350468514893849, modelHash);
    }

    pub fn GET_VEHICLE_DEFORMATION_AT_POS(vehicle: types.Vehicle, position1: f32, position2: f32, position3: f32) types.Vector3 {
        return nativeCaller.invoke4(@as(u64, @intCast(5676452788774540598)), vehicle, position1, position2, position3);
    }

    pub fn SET_VEHICLE_LIVERY(vehicle: types.Vehicle, livery: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6971396915951620534)), vehicle, livery);
    }

    pub fn GET_VEHICLE_LIVERY(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(3150587921134411402)), vehicle);
    }

    pub fn GET_VEHICLE_LIVERY_COUNT(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(9779071972287304998, vehicle);
    }

    pub fn IS_VEHICLE_WINDOW_INTACT(vehicle: types.Vehicle, windowIndex: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5108614288122905073)), vehicle, windowIndex);
    }

    pub fn _ARE_ALL_VEHICLE_WINDOWS_INTACT(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1285886149750401519)), vehicle);
    }

    pub fn _IS_ANY_VEHICLE_SEAT_EMPTY(veh: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3257505764128700288)), veh);
    }

    pub fn RESET_VEHICLE_WHEELS(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2437262575350542317)), p0, p1);
    }

    pub fn IS_HELI_PART_BROKEN(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke4(13579677505201859722, p0, p1, p2, p3);
    }

    pub fn _GET_HELI_MAIN_ROTOR_HEALTH(vehicle: types.Vehicle) f32 {
        return nativeCaller.invoke1(16486399787048096453, vehicle);
    }

    pub fn _GET_HELI_TAIL_ROTOR_HEALTH(vehicle: types.Vehicle) f32 {
        return nativeCaller.invoke1(12577683127534201996, vehicle);
    }

    pub fn _GET_HELI_ENGINE_HEALTH(vehicle: types.Vehicle) f32 {
        return nativeCaller.invoke1(12416865476924450295, vehicle);
    }

    pub fn WAS_COUNTER_ACTIVATED(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(4524075938350448617)), p0, p1);
    }

    pub fn SET_VEHICLE_NAME_DEBUG(vehicle: types.Vehicle, name: [*c]u8) void {
        _ = nativeCaller.invoke2(13825936842566056271, vehicle, name);
    }

    pub fn SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8192198556078167562)), vehicle, toggle);
    }

    pub fn _0x3441CAD2F2231923(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3765513770812774691)), p0, p1);
    }

    pub fn _0x2B6747FAA9DB9D6B(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3127547608149237099)), vehicle, p1);
    }

    pub fn _SET_VEHICLE_LANDING_GEAR(vehicle: types.Vehicle, state: c_int) void {
        _ = nativeCaller.invoke2(14972426531406603637, vehicle, state);
    }

    pub fn _GET_VEHICLE_LANDING_GEAR(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(11173217139357185229, vehicle);
    }

    pub fn IS_ANY_VEHICLE_NEAR_POINT(x: f32, y: f32, z: f32, radius: f32) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(7053161900751974118)), x, y, z, radius);
    }

    pub fn REQUEST_VEHICLE_HIGH_DETAIL_MODEL(p0: types.Any) void {
        _ = nativeCaller.invoke1(12027423328935770206, p0);
    }

    pub fn REMOVE_VEHICLE_HIGH_DETAIL_MODEL(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(29445876476569479)), p0);
    }

    pub fn IS_VEHICLE_HIGH_DETAIL(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2244350069363982968)), p0);
    }

    pub fn REQUEST_VEHICLE_ASSET(VehicleHash: types.Hash, vehicleAsset: c_int) void {
        _ = nativeCaller.invoke2(9340843933356239674, VehicleHash, vehicleAsset);
    }

    pub fn HAS_VEHICLE_ASSET_LOADED(vehicleAsset: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1999040935582472737)), vehicleAsset);
    }

    pub fn REMOVE_VEHICLE_ASSET(p0: types.Any) void {
        _ = nativeCaller.invoke1(12458814499592986293, p0);
    }

    pub fn _SET_TOW_TRUCK_CRANE_RAISED(towTruck: types.Vehicle, state: f32) void {
        _ = nativeCaller.invoke2(18326476374594126794, towTruck, state);
    }

    pub fn ATTACH_VEHICLE_TO_TOW_TRUCK(towTruck: types.Vehicle, vehicle: types.Vehicle, rear: windows.BOOL, hookOffsetX: f32, hookOffsetY: f32, hookOffsetZ: f32) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(2999801479832552712)), towTruck, vehicle, rear, hookOffsetX, hookOffsetY, hookOffsetZ);
    }

    pub fn DETACH_VEHICLE_FROM_TOW_TRUCK(towTruck: types.Vehicle, vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke2(14040934353521151704, towTruck, vehicle);
    }

    pub fn DETACH_VEHICLE_FROM_ANY_TOW_TRUCK(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(15053789753048992984, vehicle);
    }

    pub fn IS_VEHICLE_ATTACHED_TO_TOW_TRUCK(towTruck: types.Vehicle, vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(1472107446507642836)), towTruck, vehicle);
    }

    pub fn GET_ENTITY_ATTACHED_TO_TOW_TRUCK(towTruck: types.Vehicle) types.Entity {
        return nativeCaller.invoke1(17287657456831270773, towTruck);
    }

    pub fn SET_VEHICLE_AUTOMATICALLY_ATTACHES(vehicle: types.Vehicle, p1: types.Any, p2: types.Any) types.Any {
        return nativeCaller.invoke3(10063002459648431251, vehicle, p1, p2);
    }

    pub fn _0xF8EBCCC96ADB9FB7(p0: types.Any, p1: f32, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(17936655106386403255, p0, p1, p2);
    }

    pub fn _0x56B94C6D7127DFBA(p0: types.Any, p1: f32, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6249109990886858682)), p0, p1, p2);
    }

    pub fn _0x1093408B4B9D1146(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1194369293196529990)), p0, p1);
    }

    pub fn _0x30D779DE7C4F6DD3(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3519415630288612819)), p0, p1);
    }

    pub fn _0x9AA47FFF660CB932(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(11143172112926947634, p0, p1);
    }

    pub fn _0xA4822F1CF23F4810(outVec: [*c]types.Vector3, p1: types.Any, outVec1: [*c]types.Vector3, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any) windows.BOOL {
        return nativeCaller.invoke9(11854088970562390032, outVec, p1, outVec1, p3, p4, p5, p6, p7, p8);
    }

    pub fn SET_VEHICLE_BURNOUT(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(18124618246404268283, vehicle, toggle);
    }

    pub fn IS_VEHICLE_IN_BURNOUT(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1339724742140375275)), vehicle);
    }

    pub fn SET_VEHICLE_REDUCE_GRIP(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2463458723210797794)), vehicle, toggle);
    }

    pub fn SET_VEHICLE_INDICATOR_LIGHTS(vehicle: types.Vehicle, turnSignal: c_int, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke3(13102187807342558704, vehicle, turnSignal, toggle);
    }

    pub fn SET_VEHICLE_BRAKE_LIGHTS(vehicle: types.Vehicle, Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(10570881273414561638, vehicle, Toggle);
    }

    pub fn SET_VEHICLE_HANDBRAKE(vehicle: types.Vehicle, Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7514121110102895138)), vehicle, Toggle);
    }

    pub fn _0x48ADC8A773564670() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5237062563221882480)));
    }

    pub fn _0x91D6DD290888CBAB() types.Any {
        return nativeCaller.invoke0(10508829948822211499);
    }

    pub fn _0x51DB102F4A3BA5E0(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5898325932266726880)), p0);
    }

    pub fn GET_VEHICLE_TRAILER_VEHICLE(vehicle: types.Vehicle, trailer: [*c]types.Vehicle) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(2079936996953260813)), vehicle, trailer);
    }

    pub fn _0xCAC66558B944DA67(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(14611477472789977703, vehicle, p1);
    }

    pub fn SET_VEHICLE_RUDDER_BROKEN(p0: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(675646909037616623)), p0, p1);
    }

    pub fn _0x1A78AD3D8240536F(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1907464921881269103)), vehicle, p1);
    }

    pub fn _GET_VEHICLE_SPEED(vehicle: types.Vehicle) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(6030207453007825479)), vehicle);
    }

    pub fn GET_VEHICLE_MAX_BRAKING(vehicle: types.Vehicle) f32 {
        return nativeCaller.invoke1(12501576933583198148, vehicle);
    }

    pub fn GET_VEHICLE_MAX_TRACTION(vehicle: types.Vehicle) f32 {
        return nativeCaller.invoke1(11615622724727426480, vehicle);
    }

    pub fn GET_VEHICLE_ACCELERATION(vehicle: types.Vehicle) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(6760849226395965358)), vehicle);
    }

    pub fn _GET_VEHICLE_MAX_SPEED(modelHash: types.Hash) f32 {
        return nativeCaller.invoke1(17588740519377235267, modelHash);
    }

    pub fn GET_VEHICLE_MODEL_MAX_BRAKING(modelHash: types.Hash) f32 {
        return nativeCaller.invoke1(15876311570061300812, modelHash);
    }

    pub fn _0xBFBA3BA79CFF7EBF(modelHash: types.Hash) f32 {
        return nativeCaller.invoke1(13815420397991984831, modelHash);
    }

    pub fn GET_VEHICLE_MODEL_MAX_TRACTION(modelHash: types.Hash) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(6025228394570841357)), modelHash);
    }

    pub fn GET_VEHICLE_MODEL_ACCELERATION(p0: types.Any) f32 {
        return nativeCaller.invoke1(10089273025457314666, p0);
    }

    pub fn _0x53409B5163D5B846(modelHash: types.Hash) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(5998965477527107654)), modelHash);
    }

    pub fn _0xC6AD107DDC9054CC(modelHash: types.Hash) f32 {
        return nativeCaller.invoke1(14316116923238077644, modelHash);
    }

    pub fn _0x5AA3F878A178C4FC(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(6531337081606161660)), p0);
    }

    pub fn _0x00C09F246ABEDD82(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(54218174286978434)), p0);
    }

    pub fn GET_VEHICLE_CLASS_MAX_TRACTION(p0: types.Any) f32 {
        return nativeCaller.invoke1(15837028510951904353, p0);
    }

    pub fn GET_VEHICLE_CLASS_MAX_AGILITY(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(5733938639626755643)), p0);
    }

    pub fn GET_VEHICLE_CLASS_MAX_ACCELERATION(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(3423835109740947374)), p0);
    }

    pub fn GET_VEHICLE_CLASS_MAX_BRAKING(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(5473364583480552451)), p0);
    }

    pub fn _0x2CE544C68FB812A0(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: windows.BOOL) types.Any {
        return nativeCaller.invoke6(@as(u64, @intCast(3235067526940988064)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x1033371FC8E842A7(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1167337338073268903)), p0);
    }

    pub fn _OPEN_VEHICLE_BOMB_BAY(p0: types.Any) void {
        _ = nativeCaller.invoke1(9793062281908792497, p0);
    }

    pub fn _0x3556041742A0DC74(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3843263829955894388)), p0);
    }

    pub fn IS_VEHICLE_SEARCHLIGHT_ON(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(13905285848649779591, vehicle);
    }

    pub fn SET_VEHICLE_SEARCHLIGHT(vehicle: types.Vehicle, duskLight: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(1506555638038451522)), vehicle, duskLight, p2);
    }

    pub fn _0x639431E895B9AA57(p0: types.Any, p1: types.Any, p2: types.Any, p3: windows.BOOL, p4: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(7175414981322189399)), p0, p1, p2, p3, p4);
    }

    pub fn CAN_SHUFFLE_SEAT(vehicle: types.Vehicle, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(3492644387460398901)), vehicle, p1);
    }

    pub fn GET_NUM_MOD_KITS(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(3743304922253930013)), vehicle);
    }

    pub fn SET_VEHICLE_MOD_KIT(vehicle: types.Vehicle, modKit: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2245783831530643834)), vehicle, modKit);
    }

    pub fn GET_VEHICLE_MOD_KIT(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(7144346870170407181)), vehicle);
    }

    pub fn GET_VEHICLE_MOD_KIT_TYPE(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(18160078651065191474, vehicle);
    }

    pub fn GET_VEHICLE_WHEEL_TYPE(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(12965049668393645788, vehicle);
    }

    pub fn SET_VEHICLE_WHEEL_TYPE(vehicle: types.Vehicle, WheelType: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5223808454466558881)), vehicle, WheelType);
    }

    pub fn GET_NUM_MOD_COLORS(p0: types.Any, p1: windows.BOOL) types.Any {
        return nativeCaller.invoke2(11912511502899890029, p0, p1);
    }

    pub fn SET_VEHICLE_MOD_COLOR_1(vehicle: types.Vehicle, paintType: c_int, color: c_int, p3: c_int) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(4899557154630895032)), vehicle, paintType, color, p3);
    }

    pub fn SET_VEHICLE_MOD_COLOR_2(vehicle: types.Vehicle, paintType: c_int, color: c_int) void {
        _ = nativeCaller.invoke3(9323967158299838526, vehicle, paintType, color);
    }

    pub fn GET_VEHICLE_MOD_COLOR_1(vehicle: types.Vehicle, paintType: [*c]c_int, color: [*c]c_int, p3: [*c]c_int) void {
        _ = nativeCaller.invoke4(16777699334157870739, vehicle, paintType, color, p3);
    }

    pub fn GET_VEHICLE_MOD_COLOR_2(vehicle: types.Vehicle, paintType: [*c]c_int, color: [*c]c_int) void {
        _ = nativeCaller.invoke3(9320529165889799976, vehicle, paintType, color);
    }

    pub fn _0xB45085B721EFD38C(p0: types.Any, p1: windows.BOOL) types.Any {
        return nativeCaller.invoke2(12993031946558755724, p0, p1);
    }

    pub fn _0x4967A516ED23A5A1(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(5289377805256336801)), p0);
    }

    pub fn _0x9A83F5F9963775EF(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(11134013156105876975, p0);
    }

    pub fn SET_VEHICLE_MOD(vehicle: types.Vehicle, modType: c_int, modIndex: c_int, customTires: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(7705768285972510429)), vehicle, modType, modIndex, customTires);
    }

    pub fn GET_VEHICLE_MOD(vehicle: types.Vehicle, modType: c_int) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(8586499896144719835)), vehicle, modType);
    }

    pub fn GET_VEHICLE_MOD_VARIATION(vehicle: types.Vehicle, modType: c_int) windows.BOOL {
        return nativeCaller.invoke2(12939491323657885148, vehicle, modType);
    }

    pub fn GET_NUM_VEHICLE_MODS(vehicle: types.Vehicle, modType: c_int) c_int {
        return nativeCaller.invoke2(16397203146118530630, vehicle, modType);
    }

    pub fn REMOVE_VEHICLE_MOD(vehicle: types.Vehicle, modType: c_int) void {
        _ = nativeCaller.invoke2(10580672842142417412, vehicle, modType);
    }

    pub fn TOGGLE_VEHICLE_MOD(vehicle: types.Vehicle, modType: c_int, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3035231775696334088)), vehicle, modType, toggle);
    }

    pub fn IS_TOGGLE_MOD_ON(vehicle: types.Vehicle, modType: c_int) windows.BOOL {
        return nativeCaller.invoke2(9561761758880500455, vehicle, modType);
    }

    pub fn GET_MOD_TEXT_LABEL(vehicle: types.Vehicle, modType: c_int, modValue: c_int) [*c]u8 {
        return nativeCaller.invoke3(9886916650758148812, vehicle, modType, modValue);
    }

    pub fn GET_MOD_SLOT_NAME(vehicle: types.Vehicle, modType: c_int) [*c]u8 {
        return nativeCaller.invoke2(@as(u64, @intCast(5904499186143762624)), vehicle, modType);
    }

    pub fn GET_LIVERY_NAME(vehicle: types.Vehicle, liveryIndex: c_int) [*c]u8 {
        return nativeCaller.invoke2(13026566506111638047, vehicle, liveryIndex);
    }

    pub fn GET_VEHICLE_MOD_MODIFIER_VALUE(vehicle: types.Vehicle, modType: c_int, modIndex: c_int) types.Any {
        return nativeCaller.invoke3(10422330747105880257, vehicle, modType, modIndex);
    }

    pub fn _0x4593CF82AA179706(p0: types.Any, p1: types.Any, p2: types.Any) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(5013578970299864838)), p0, p1, p2);
    }

    pub fn PRELOAD_VEHICLE_MOD(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(8471070522906859146)), p0, p1, p2);
    }

    pub fn HAS_PRELOAD_MODS_FINISHED(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(501093978136604054)), p0);
    }

    pub fn RELEASE_PRELOAD_MODS(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4926227680272089863)), p0);
    }

    pub fn SET_VEHICLE_TYRE_SMOKE_COLOR(vehicle: types.Vehicle, r: c_int, g: c_int, b: c_int) void {
        _ = nativeCaller.invoke4(13094920670137621519, vehicle, r, g, b);
    }

    pub fn GET_VEHICLE_TYRE_SMOKE_COLOR(vehicle: types.Vehicle, r: [*c]c_int, g: [*c]c_int, b: [*c]c_int) void {
        _ = nativeCaller.invoke4(13129463142448411587, vehicle, r, g, b);
    }

    pub fn SET_VEHICLE_WINDOW_TINT(vehicle: types.Vehicle, tint: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6324494699532199574)), vehicle, tint);
    }

    pub fn GET_VEHICLE_WINDOW_TINT(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(1072440087508450453)), vehicle);
    }

    pub fn GET_NUM_VEHICLE_WINDOW_TINTS() c_int {
        return nativeCaller.invoke0(11318148397216196359);
    }

    pub fn GET_VEHICLE_COLOR(vehicle: types.Vehicle, r: [*c]c_int, g: [*c]c_int, b: [*c]c_int) void {
        _ = nativeCaller.invoke4(17567543846557062472, vehicle, r, g, b);
    }

    pub fn _0xEEBFC7A7EFDC35B4(p0: types.Any) c_int {
        return nativeCaller.invoke1(17203688625676236212, p0);
    }

    pub fn GET_VEHICLE_CAUSE_OF_DESTRUCTION(vehicle: types.Vehicle) types.Hash {
        return nativeCaller.invoke1(16471302037889482016, vehicle);
    }

    pub fn _IS_HEADLIGHT_L_BROKEN(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6843075163391201699)), vehicle);
    }

    pub fn _IS_HEADLIGHT_R_BROKEN(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(12100247729950371616, vehicle);
    }

    pub fn _SET_VEHICLE_ENGINE_POWER_MULTIPLIER(vehicle: types.Vehicle, value: f32) void {
        _ = nativeCaller.invoke2(10638515397018075480, vehicle, value);
    }

    pub fn _0x1CF38D529D7441D9(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2086166438371148249)), vehicle, toggle);
    }

    pub fn _0x1F9FB66F3A3842D2(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2278740525307151058)), p0, p1);
    }

    pub fn _0x54B0F614960F4A5F(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32) types.Any {
        return nativeCaller.invoke7(@as(u64, @intCast(6102648063364385375)), p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn _0xE30524E1871F481D(p0: types.Any) void {
        _ = nativeCaller.invoke1(16358521772546410525, p0);
    }

    pub fn _0x291E373D483E7EE7(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2962866341200953063)), p0);
    }

    pub fn _SET_VEHICLE_ENGINE_TORQUE_MULTIPLIER(vehicle: types.Vehicle, value: f32) void {
        _ = nativeCaller.invoke2(13086980938857091803, vehicle, value);
    }

    pub fn _0x0AD9E8F87FF7C16F(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(781912164321968495)), p0, p1);
    }

    pub fn SET_VEHICLE_IS_WANTED(vehicle: types.Vehicle, state: windows.BOOL) void {
        _ = nativeCaller.invoke2(17864695207840106278, vehicle, state);
    }

    pub fn _0xF488C566413B4232(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(17620550585058804274, p0, p1);
    }

    pub fn _0xC1F981A6F74F0C23(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(13977345472634752035, p0, p1);
    }

    pub fn _0x0F3B4D4E43177236(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1097555932723245622)), p0, p1);
    }

    pub fn _0x6636C535F6CC2725(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(7365291076175537957)), p0);
    }

    pub fn DISABLE_PLANE_AILERON(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2540751217074672028)), p0, p1, p2);
    }

    pub fn _IS_VEHICLE_ENGINE_ON(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(12552068584028443438, vehicle);
    }

    pub fn _0x1D97D1E3A70A649F(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2132403724273476767)), p0, p1);
    }

    pub fn _SET_BIKE_LEAN_ANGLE(vehicle: types.Vehicle, x: f32, y: f32) void {
        _ = nativeCaller.invoke3(11311433226459102395, vehicle, x, y);
    }

    pub fn _0xAB04325045427AAE(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12323029800733276846, p0, p1);
    }

    pub fn _0xCFD778E7904C255E(p0: types.Any) void {
        _ = nativeCaller.invoke1(14976572021797561694, p0);
    }

    pub fn _0xACFB2463CC22BED2(p0: types.Any) void {
        _ = nativeCaller.invoke1(12464596404723171026, p0);
    }

    pub fn _0xB2D06FAEDE65B577() types.Any {
        return nativeCaller.invoke0(12884921330753189239);
    }

    pub fn _0xE01903C47C7AC89E() void {
        _ = nativeCaller.invoke0(16147942081350518942);
    }

    pub fn _0x02398B627547189C(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(160312516739012764)), p0, p1);
    }

    pub fn _SET_PLANE_MIN_HEIGHT_ABOVE_TERRAIN(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(13300010810241450331, p0, p1);
    }

    pub fn SET_VEHICLE_LOD_MULTIPLIER(vehicle: types.Vehicle, multiplier: f32) void {
        _ = nativeCaller.invoke2(10641559937555192817, vehicle, multiplier);
    }

    pub fn _0x428BACCDF5E26EAD(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4795116228859555501)), p0, p1);
    }

    pub fn _0x42A4BEB35D372407(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(4802172780256109575)), p0);
    }

    pub fn _0x2C8CBFE1EA5FC631(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(3210151611429013041)), p0);
    }

    pub fn _0x4D9D109F63FEE1D4(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5592644589027516884)), p0, p1);
    }

    pub fn _0x279D50DE5652D935(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2854526654683994421)), p0, p1);
    }

    pub fn _0xE44A982368A4AF23(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(16450127866771058467, p0, p1);
    }

    pub fn _0xF25E02CB9C5818F8() void {
        _ = nativeCaller.invoke0(17464399478513998072);
    }

    pub fn _0xBC3CCA5844452B06(p0: f32) void {
        _ = nativeCaller.invoke1(13563938658184407814, p0);
    }

    pub fn SET_VEHICLE_SHOOT_AT_TARGET(pilot: types.Ped, ent: types.Entity, targetx: f32, targety: f32, targetz: f32) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(8416553235441156842)), pilot, ent, targetx, targety, targetz);
    }

    pub fn _GET_VEHICLE_OWNER(vehicle: types.Vehicle, entity: [*c]types.Entity) windows.BOOL {
        return nativeCaller.invoke2(10330899868672905166, vehicle, entity);
    }

    pub fn _0x97CE68CB032583F0(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(10938795766069953520, vehicle, p1);
    }

    pub fn _0x182F266C2D9E2BEB(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1742653826879335403)), p0, p1);
    }

    pub fn GET_VEHICLE_PLATE_TYPE(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(11298569554518870240, vehicle);
    }

    pub fn TRACK_VEHICLE_VISIBILITY(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7225808929017855434)), vehicle);
    }

    pub fn IS_VEHICLE_VISIBLE(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(12252696799449023123, vehicle);
    }

    pub fn SET_VEHICLE_GRAVITY(vehicle: types.Vehicle, Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(9939806898937026522, vehicle, Toggle);
    }

    pub fn _0xE6C0C80B8C867537(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(16627509776179688759, p0);
    }

    pub fn _0x36492C2F0D134C56(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(3911706331942440022)), p0);
    }

    pub fn _0x06582AFF74894C75(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(457162638838287477)), p0, p1);
    }

    pub fn _0xDFFCEF48E511DB48(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(16140038260948851528, p0, p1);
    }

    pub fn _0x8D474C8FAEFF6CDE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(10180189662694304990, p0);
    }

    pub fn SET_VEHICLE_ENGINE_CAN_DEGRADE(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(10968347041253909753, vehicle, toggle);
    }

    pub fn _0xF0E4BA16D1DB546C(vehicle: types.Vehicle, p1: c_int, p2: c_int) void {
        _ = nativeCaller.invoke3(17358203470965593196, vehicle, p1, p2);
    }

    pub fn _0xF87D9F2301F7D206(p0: types.Any) void {
        _ = nativeCaller.invoke1(17905642666200650246, p0);
    }

    pub fn _0x4198AB0022B15F87(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4726715825995734919)), p0);
    }

    pub fn _0x755D6D5267CBBD7E(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8457035875967810942)), p0);
    }

    pub fn _0x0CDDA42F9E360CA6(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(927077622732950694)), p0, p1);
    }

    pub fn IS_VEHICLE_STOLEN(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5402557589466559571)), vehicle);
    }

    pub fn SET_VEHICLE_IS_STOLEN(vehicle: types.Vehicle, isStolen: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7472254198818494264)), vehicle, isStolen);
    }

    pub fn _0xAD2D28A1AFDFF131(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(12478674817419047217, p0, p1);
    }

    pub fn _0x5991A01434CE9677(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6454115749644375671)), p0);
    }

    pub fn _0xB264C4D2F2B0A78B(p0: types.Any) void {
        _ = nativeCaller.invoke1(12854615646716077963, p0);
    }

    pub fn DETACH_VEHICLE_FROM_CARGOBOB(vehicle: types.Vehicle, cargobob: types.Vehicle) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1018327945767369117)), vehicle, cargobob);
    }

    pub fn DETACH_VEHICLE_FROM_ANY_CARGOBOB(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(12535697291456201007, vehicle);
    }

    pub fn IS_VEHICLE_ATTACHED_TO_CARGOBOB(vehicle: types.Vehicle, cargobob: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke2(15276571616016966105, vehicle, cargobob);
    }

    pub fn GET_VEHICLE_ATTACHED_TO_CARGOBOB(cargobob: types.Vehicle) types.Vehicle {
        return nativeCaller.invoke1(9744526066508282341, cargobob);
    }

    pub fn ATTACH_VEHICLE_TO_CARGOBOB(vehicle: types.Vehicle, cargobob: types.Vehicle, p2: c_int, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(4694987047884322665)), vehicle, cargobob, p2, x, y, z);
    }

    pub fn _0x571FEB383F629926(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6277995032391883046)), p0, p1);
    }

    pub fn _0xCBDB9B923CACC92D(p0: types.Any) types.Vector3 {
        return nativeCaller.invoke1(14689505661984491821, p0);
    }

    pub fn _IS_CARGOBOB_HOOK_ACTIVE(cargobob: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1738909640402755848)), cargobob);
    }

    pub fn _ENABLE_CARGOBOB_HOOK(cargobob: types.Vehicle, state: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8929244404911140667)), cargobob, state);
    }

    pub fn _RETRACT_CARGOBOB_HOOK(cargobob: types.Vehicle) void {
        _ = nativeCaller.invoke1(10910198128113403908, cargobob);
    }

    pub fn _0x877C1EAEAC531023(p0: types.Any, p1: f32, p2: f32, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(9762711827796660259, p0, p1, p2, p3);
    }

    pub fn _0xCF1182F682F65307(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(14920851035725910791, p0, p1);
    }

    pub fn _IS_CARGOBOB_MAGNET_ACTIVE(cargobob: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7928797542473710281)), cargobob);
    }

    pub fn _CARGOBOB_MAGNET_GRAB_VEHICLE(cargobob: types.Vehicle, Grab: windows.BOOL) void {
        _ = nativeCaller.invoke2(11125673735726183579, cargobob, Grab);
    }

    pub fn _0xBCBFCD9D1DAC19E2(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(13600815474373564898, p0, p1);
    }

    pub fn _0xA17BAD153B51547E(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(11636084368942912638, p0, p1);
    }

    pub fn _0x66979ACF5102FD2F(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7392547528560016687)), p0, p1);
    }

    pub fn _0x6D8EAC07506291FB(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7894436344240443899)), p0, p1);
    }

    pub fn _0xED8286F71A819BAA(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(17114389929821051818, p0, p1);
    }

    pub fn _0x685D5561680D088B(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7520260829624469643)), p0, p1);
    }

    pub fn _0xE301BD63E9E13CF0(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(16357563558409616624, p0, p1);
    }

    pub fn _0x9BDDC73CC6A115D4(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(11231352109576295892, p0, p1, p2);
    }

    pub fn _0x56EB5E94318D3FB6(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6263203697368317878)), p0, p1);
    }

    pub fn DOES_VEHICLE_HAVE_WEAPONS(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2732763548735084768)), vehicle);
    }

    pub fn _0x2C4A1590ABF43E8B(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3191386997049802379)), p0, p1);
    }

    pub fn DISABLE_VEHICLE_WEAPON(disabled: windows.BOOL, weaponHash: types.Hash, vehicle: types.Vehicle, owner: types.Ped) void {
        _ = nativeCaller.invoke4(17653101666101680214, disabled, weaponHash, vehicle, owner);
    }

    pub fn _0xE05DD0E9707003A3(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(16167307938362295203, p0, p1);
    }

    pub fn _0x21115BCD6E44656A(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2382786615732102506)), p0, p1);
    }

    pub fn GET_VEHICLE_CLASS(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(2973386714919209570)), vehicle);
    }

    pub fn GET_VEHICLE_CLASS_FROM_NAME(modelHash: types.Hash) c_int {
        return nativeCaller.invoke1(16059586183117414912, modelHash);
    }

    pub fn SET_PLAYERS_LAST_VEHICLE(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(13609750184128445290, vehicle);
    }

    pub fn _0x300504B23BD3B711(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3460177052258514705)), p0, p1);
    }

    pub fn _0xE5810AC70602F2F5(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(16537511156596798197, p0, p1);
    }

    pub fn _0x068F64F2470F9656(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(472707477634258518)), p0, p1);
    }

    pub fn _0xB8FBC8B1330CA9B4(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(13329468185524349364, p0, p1);
    }

    pub fn _0x10655FAB9915623D(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1181455667866985021)), p0, p1);
    }

    pub fn _0x79DF7E806202CE01(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8781876888261021185)), p0, p1);
    }

    pub fn _0x9007A2F21DC108D4(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(10378443027063572692, p0, p1);
    }

    pub fn _SET_HELICOPTER_ROLL_PITCH_YAW_MULT(helicopter: types.Vehicle, multiplier: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7928685778725725644)), helicopter, multiplier);
    }

    pub fn SET_VEHICLE_FRICTION_OVERRIDE(vehicle: types.Vehicle, friction: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1745056329391671738)), vehicle, friction);
    }

    pub fn SET_VEHICLE_WHEELS_CAN_BREAK_OFF_WHEN_BLOW_UP(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11780178925065548617, p0, p1);
    }

    pub fn _0xF78F94D60248C737(p0: types.Any, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(17838640295920060215, p0, p1);
    }

    pub fn SET_VEHICLE_CEILING_HEIGHT(vehicle: types.Vehicle, p1: f32) void {
        _ = nativeCaller.invoke2(11845613838102143784, vehicle, p1);
    }

    pub fn _0x5E569EC46EC21CAE(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6797795254071336110)), vehicle, toggle);
    }

    pub fn _0x6D6AF961B72728AE(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7884388295745415342)), p0);
    }

    pub fn DOES_VEHICLE_EXIST_WITH_DECORATOR(decorator: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(10766770371178634231, decorator);
    }

    pub fn _0x41062318F23ED854(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4685471052375971924)), p0, p1);
    }

    pub fn _SET_EXCLUSIVE_DRIVER(vehicle: types.Vehicle, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(13097905143211908739, vehicle, p1, p2);
    }

    pub fn _0x500873A45724C863(vehicle: types.Vehicle, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5766986472521779299)), vehicle, p1);
    }

    pub fn _0xB055A34527CB8FD7(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12706241441111445463, vehicle, p1);
    }

    pub fn _0xF796359A959DF65D(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17840505911926191709, p0);
    }

    pub fn _SET_VEHICLE_NEON_LIGHTS_COLOUR(vehicle: types.Vehicle, r: c_int, g: c_int, b: c_int) void {
        _ = nativeCaller.invoke4(10235090006366889621, vehicle, r, g, b);
    }

    pub fn _GET_VEHICLE_NEON_LIGHTS_COLOUR(vehicle: types.Vehicle, r: [*c]c_int, g: [*c]c_int, b: [*c]c_int) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8510095654457341311)), vehicle, r, g, b);
    }

    pub fn _SET_VEHICLE_NEON_LIGHT_ENABLED(vehicle: types.Vehicle, index: c_int, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3073461435007496809)), vehicle, index, toggle);
    }

    pub fn _IS_VEHICLE_NEON_LIGHT_ENABLED(vehicle: types.Vehicle, index: c_int) windows.BOOL {
        return nativeCaller.invoke2(10109334683377952421, vehicle, index);
    }

    pub fn _0x35E0654F4BAD7971(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3882214270039849329)), p0);
    }

    pub fn _0xB088E9A47AE6EDD5(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12720674040153828821, vehicle, p1);
    }

    pub fn _0xDBA3C090E3D74690(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(15826705244040414864, vehicle);
    }

    pub fn GET_VEHICLE_BODY_HEALTH(vehicle: types.Vehicle) f32 {
        return nativeCaller.invoke1(17469766964027330322, vehicle);
    }

    pub fn SET_VEHICLE_BODY_HEALTH(vehicle: types.Vehicle, value: f32) void {
        _ = nativeCaller.invoke2(13221730319678876379, vehicle, value);
    }

    pub fn _0xDF7E3EEB29642C38(vehicle: types.Vehicle, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(16104378497256139832, vehicle, p1, p2);
    }

    pub fn _GET_VEHICLE_SUSPENSION_HEIGHT(vehicle: types.Vehicle) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(6022772658798698263)), vehicle);
    }

    pub fn _0x84FD40F56075E816(p0: f32) void {
        _ = nativeCaller.invoke1(9582887004743788566, p0);
    }

    pub fn _0xA7DCDF4DED40A8F4(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12095788224996223220, vehicle, p1);
    }

    pub fn _GET_VEHICLE_BODY_HEALTH_2(p0: types.Any) f32 {
        return nativeCaller.invoke1(13325976614562141097, p0);
    }

    pub fn _0xD4C4642CB7F50B5D(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(15331489174703639389, p0);
    }

    pub fn _0xC361AA040D6637A8(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(14078720844518274984, p0, p1);
    }

    pub fn _0x99C82F8A139F3E4E(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11081159153226301006, p0, p1);
    }

    pub fn _0xE16142B94664DEFD(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(16240335094792118013, p0, p1);
    }
};

pub const OBJECT = struct {
    pub fn CREATE_OBJECT(modelHash: types.Hash, x: f32, y: f32, z: f32, networkHandle: windows.BOOL, createHandle: windows.BOOL, dynamic: windows.BOOL) types.Object {
        return nativeCaller.invoke7(@as(u64, @intCast(5808896370743568450)), modelHash, x, y, z, networkHandle, createHandle, dynamic);
    }

    pub fn CREATE_OBJECT_NO_OFFSET(objectHash: types.Hash, posX: f32, posY: f32, posZ: f32, networkHandle: windows.BOOL, createHandle: windows.BOOL, dynamic: windows.BOOL) types.Object {
        return nativeCaller.invoke7(11108492561942820996, objectHash, posX, posY, posZ, networkHandle, createHandle, dynamic);
    }

    pub fn DELETE_OBJECT(object: [*c]types.Object) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6025265325407423391)), object);
    }

    pub fn PLACE_OBJECT_ON_GROUND_PROPERLY(object: types.Object) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6388445041372756643)), object);
    }

    pub fn SLIDE_OBJECT(object: types.Object, toX: f32, toY: f32, toZ: f32, speedX: f32, speedY: f32, speedZ: f32, collisionCheck: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke8(@as(u64, @intCast(3449744191218520391)), object, toX, toY, toZ, speedX, speedY, speedZ, collisionCheck);
    }

    pub fn SET_OBJECT_TARGETTABLE(object: types.Object, targettable: windows.BOOL) void {
        _ = nativeCaller.invoke2(9976477479970995585, object, targettable);
    }

    pub fn _0x77F33F2CCF64B3AA(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8643321571544708010)), p0, p1);
    }

    pub fn GET_CLOSEST_OBJECT_OF_TYPE(x: f32, y: f32, z: f32, radius: f32, modelHash: types.Hash, isMission: windows.BOOL, p6: windows.BOOL, p7: windows.BOOL) types.Object {
        return nativeCaller.invoke8(16232092507137524585, x, y, z, radius, modelHash, isMission, p6, p7);
    }

    pub fn HAS_OBJECT_BEEN_BROKEN(object: types.Object) windows.BOOL {
        return nativeCaller.invoke1(9997910961191404514, object);
    }

    pub fn HAS_CLOSEST_OBJECT_OF_TYPE_BEEN_BROKEN(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: types.Any) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(8510411767871766654)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x46494A2475701343(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: types.Any) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(5064660776404390723)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _GET_OBJECT_OFFSET_FROM_COORDS(x: f32, y: f32, z: f32, heading: f32, xOffset: f32, yOffset: f32, zOffset: f32) types.Vector3 {
        return nativeCaller.invoke7(@as(u64, @intCast(1602759396355842355)), x, y, z, heading, xOffset, yOffset, zOffset);
    }

    pub fn _0x163F8B586BC95F2A(coords: types.Any, radius: f32, modelHash: types.Hash, x: f32, y: f32, z: f32, p6: [*c]types.Vector3, p7: c_int) types.Any {
        return nativeCaller.invoke8(@as(u64, @intCast(1603153204248928042)), coords, radius, modelHash, x, y, z, p6, p7);
    }

    pub fn SET_STATE_OF_CLOSEST_DOOR_OF_TYPE(type_: types.Hash, x: f32, y: f32, z: f32, locked: windows.BOOL, heading: f32, p6: windows.BOOL) void {
        _ = nativeCaller.invoke7(17883107033543093309, type_, x, y, z, locked, heading, p6);
    }

    pub fn GET_STATE_OF_CLOSEST_DOOR_OF_TYPE(type_: types.Hash, x: f32, y: f32, z: f32, locked: [*c]windows.BOOL, heading: [*c]f32) void {
        _ = nativeCaller.invoke6(17132156668443833343, type_, x, y, z, locked, heading);
    }

    pub fn _DOOR_CONTROL(doorHash: types.Hash, x: f32, y: f32, z: f32, locked: windows.BOOL, p5: f32, p6: f32, p7: f32) void {
        _ = nativeCaller.invoke8(11174268100976307632, doorHash, x, y, z, locked, p5, p6, p7);
    }

    pub fn ADD_DOOR_TO_SYSTEM(doorHash: types.Hash, modelHash: types.Hash, x: f32, y: f32, z: f32, p5: windows.BOOL, p6: windows.BOOL, p7: windows.BOOL) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(8036736002072363558)), doorHash, modelHash, x, y, z, p5, p6, p7);
    }

    pub fn REMOVE_DOOR_FROM_SYSTEM(doorHash: types.Hash) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5065861373067882468)), doorHash);
    }

    pub fn _0x6BAB9442830C7F53(doorHash: types.Hash, p1: types.Any, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(7758457796463198035)), doorHash, p1, p2, p3);
    }

    pub fn _0x160AA1B32F6139B8(doorHash: types.Hash) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(1588259609567639992)), doorHash);
    }

    pub fn _0x4BC2854478F3A749(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(5459072227459966793)), p0);
    }

    pub fn _0x03C27E13B42A0E82(doorHash: types.Hash, p1: f32, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(270917550687784578)), doorHash, p1, p2, p3);
    }

    pub fn _0x9BA001CB45CBF627(doorHash: types.Hash, p1: f32, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(11213965044713518631, doorHash, p1, p2, p3);
    }

    pub fn _0xB6E6FBA95C7324AC(doorHash: types.Hash, p1: f32, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(13179498064365429932, doorHash, p1, p2, p3);
    }

    pub fn _0x65499865FCA6E5EC(doorHash: types.Hash) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(7298532234928514540)), doorHash);
    }

    pub fn _0xC485E07E4F0B7958(doorHash: types.Hash, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(14160971436433045848, doorHash, p1, p2, p3);
    }

    pub fn _0xD9B71952F78A2640(doorHash: types.Hash, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(15688035671099450944, doorHash, p1);
    }

    pub fn _0xA85A21582451E951(doorHash: types.Hash, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12131045208726038865, doorHash, p1);
    }

    pub fn _DOES_DOOR_EXIST(doorHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(13930693845672184001, doorHash);
    }

    pub fn IS_DOOR_CLOSED(door: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(14209400576093299017, door);
    }

    pub fn _0xC7F29CA00F46350E(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14407750369176597774, p0);
    }

    pub fn _0x701FDA1E82076BA4() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8079416081091357604)));
    }

    pub fn _0xDF97CDD4FC08FD34(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(16111572506586447156, p0);
    }

    pub fn _0x589F80B325CC82C5(p0: f32, p1: f32, p2: f32, p3: types.Any, p4: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(6385964303556313797)), p0, p1, p2, p3, p4);
    }

    pub fn IS_GARAGE_EMPTY(garage: types.Any, p1: windows.BOOL, p2: c_int) windows.BOOL {
        return nativeCaller.invoke3(10440595429217894584, garage, p1, p2);
    }

    pub fn _0x024A60DEB0EA69F0(p0: types.Any, p1: types.Any, p2: f32, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(165050845919603184)), p0, p1, p2, p3);
    }

    pub fn _0x1761DC5D8471CBAA(p0: types.Any, p1: types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(1684870029825395626)), p0, p1, p2);
    }

    pub fn _0x85B6C850546FDDE2(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL, p4: types.Any) windows.BOOL {
        return nativeCaller.invoke5(9635108700145311202, p0, p1, p2, p3, p4);
    }

    pub fn _0x673ED815D6E323B7(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL, p4: types.Any) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(7439621222773760951)), p0, p1, p2, p3, p4);
    }

    pub fn _0x372EF6699146A1E4(p0: types.Any, p1: types.Any, p2: f32, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(3976386454284050916)), p0, p1, p2, p3);
    }

    pub fn _0xF0EED5A6BC7B237A(p0: types.Any, p1: types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(17361048525663314810, p0, p1, p2);
    }

    pub fn _0x190428512B240692(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(1802610079936284306)), p0, p1, p2, p3, p4);
    }

    pub fn _0xF2E1A7133DD356A6(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(17501453328021935782, p0, p1);
    }

    pub fn _0x66A49D021870FE88() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7396209120374750856)));
    }

    pub fn DOES_OBJECT_OF_TYPE_EXIST_AT_COORDS(x: f32, y: f32, z: f32, radius: f32, hash: types.Hash, p5: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke6(13809318694034547007, x, y, z, radius, hash, p5);
    }

    pub fn IS_POINT_IN_ANGLED_AREA(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: f32, p10: windows.BOOL, p11: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke12(@as(u64, @intCast(3058149654865529985)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
    }

    pub fn _0x4D89D607CB3DD1D2(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5587232141692752338)), p0, p1);
    }

    pub fn SET_OBJECT_PHYSICS_PARAMS(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: f32, p10: f32, p11: f32) void {
        _ = nativeCaller.invoke12(17789058621623892239, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
    }

    pub fn GET_OBJECT_FRAGMENT_DAMAGE_HEALTH(p0: types.Any, p1: windows.BOOL) f32 {
        return nativeCaller.invoke2(13185410543173567894, p0, p1);
    }

    pub fn SET_ACTIVATE_OBJECT_PHYSICS_AS_SOON_AS_IT_IS_UNFROZEN(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4639050633478990581)), p0, p1);
    }

    pub fn IS_ANY_OBJECT_NEAR_POINT(p0: f32, p1: f32, p2: f32, p3: f32, p4: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(4142684454248421585)), p0, p1, p2, p3, p4);
    }

    pub fn IS_OBJECT_NEAR_POINT(p0: types.Hash, p1: f32, p2: f32, p3: f32, p4: f32) windows.BOOL {
        return nativeCaller.invoke5(10128875160973583882, p0, p1, p2, p3, p4);
    }

    pub fn _0x4A39DB43E47CF3AA(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5348547117121860522)), p0);
    }

    pub fn _0xE7E4C198B0185900(p0: types.Object, p1: types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(16709693378984958208, p0, p1, p2);
    }

    pub fn _0xF9C1681347C8BD15(object: types.Object) void {
        _ = nativeCaller.invoke1(17996780017967217941, object);
    }

    pub fn TRACK_OBJECT_VISIBILITY(p0: types.Any) void {
        _ = nativeCaller.invoke1(12849539409712928291, p0);
    }

    pub fn IS_OBJECT_VISIBLE(object: types.Object) windows.BOOL {
        return nativeCaller.invoke1(10030269424795809094, object);
    }

    pub fn _0xC6033D32241F6FB5(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(14268315330003562421, p0, p1);
    }

    pub fn _0xEB6F1A9B5510A5D2(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(16964807575777355218, p0, p1);
    }

    pub fn _0xBCE595371A5FBAAF(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(13611449512695413423, p0, p1);
    }

    pub fn _0xB48FCED898292E52(x: f32, y: f32, z: f32, p3: f32, p4: [*c]u8) types.Any {
        return nativeCaller.invoke5(13010845278157745746, x, y, z, p3, p4);
    }

    pub fn _0x5C29F698D404C5E1(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6641110261787051489)), p0, p1);
    }

    pub fn _0x899BA936634A322E(p0: types.Any) types.Any {
        return nativeCaller.invoke1(9915705055645413934, p0);
    }

    pub fn _0x52AF537A0C5B8AAD(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5958072615692896941)), p0);
    }

    pub fn _0x260EE4FDBDF4DB01(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(2742381001580010241)), p0);
    }

    pub fn CREATE_PICKUP(pickupHash: types.Hash, posX: f32, posY: f32, posZ: f32, p4: c_int, value: c_int, p6: windows.BOOL, modelHash: types.Hash) types.Pickup {
        return nativeCaller.invoke8(18131646376056322648, pickupHash, posX, posY, posZ, p4, value, p6, modelHash);
    }

    pub fn CREATE_PICKUP_ROTATE(pickupHash: types.Hash, posX: f32, posY: f32, posZ: f32, rotX: f32, rotY: f32, rotZ: f32, p7: c_int, amount: c_int, p9: types.Any, p10: windows.BOOL, modelHash: types.Hash) types.Pickup {
        return nativeCaller.invoke12(9878650672424589495, pickupHash, posX, posY, posZ, rotX, rotY, rotZ, p7, amount, p9, p10, modelHash);
    }

    pub fn CREATE_AMBIENT_PICKUP(pickupHash: types.Hash, posX: f32, posY: f32, posZ: f32, p4: c_int, value: c_int, modelHash: types.Hash, p7: windows.BOOL, p8: windows.BOOL) types.Pickup {
        return nativeCaller.invoke9(@as(u64, @intCast(7438089100197720433)), pickupHash, posX, posY, posZ, p4, value, modelHash, p7, p8);
    }

    pub fn CREATE_PORTABLE_PICKUP(pickupHash: types.Hash, x: f32, y: f32, z: f32, placeOnGround: windows.BOOL, p5: types.Any) types.Pickup {
        return nativeCaller.invoke6(@as(u64, @intCast(3363942472927762072)), pickupHash, x, y, z, placeOnGround, p5);
    }

    pub fn _CREATE_PICKUP_2(pickupType: types.Hash, x: f32, y: f32, z: f32, placeOnGround: windows.BOOL, modelHash: types.Hash) types.Pickup {
        return nativeCaller.invoke6(@as(u64, @intCast(1320844115333720823)), pickupType, x, y, z, placeOnGround, modelHash);
    }

    pub fn ATTACH_PORTABLE_PICKUP_TO_PED(ped: types.Ped, p1: types.Any) void {
        _ = nativeCaller.invoke2(10215170457877182293, ped, p1);
    }

    pub fn DETACH_PORTABLE_PICKUP_FROM_PED(ped: types.Ped) void {
        _ = nativeCaller.invoke1(14935692415863549105, ped);
    }

    pub fn _0x0BF3B3BD47D79C08(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(861229579293400072)), p0, p1);
    }

    pub fn _0x78857FC65CADB909(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8684487946389010697)), p0);
    }

    pub fn GET_SAFE_PICKUP_COORDS(x: f32, y: f32, z: f32, p3: types.Any, p4: types.Any) types.Vector3 {
        return nativeCaller.invoke5(@as(u64, @intCast(7932734660826570736)), x, y, z, p3, p4);
    }

    pub fn GET_PICKUP_COORDS(p0: types.Any) types.Vector3 {
        return nativeCaller.invoke1(@as(u64, @intCast(2475725483283589555)), p0);
    }

    pub fn REMOVE_ALL_PICKUPS_OF_TYPE(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2880568813926046159)), p0);
    }

    pub fn HAS_PICKUP_BEEN_COLLECTED(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(9289880285775860729, p0);
    }

    pub fn REMOVE_PICKUP(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3641398534907701938)), p0);
    }

    pub fn CREATE_MONEY_PICKUPS(xCoord: f32, yCoord: f32, zCoord: f32, value: c_int, p4: c_int, p5: types.Any) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(399050048187308843)), xCoord, yCoord, zCoord, value, p4, p5);
    }

    pub fn DOES_PICKUP_EXIST(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(12664626233909212369, p0);
    }

    pub fn DOES_PICKUP_OBJECT_EXIST(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(15703971481536605859, p0);
    }

    pub fn GET_PICKUP_OBJECT(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(5807880269390882222)), p0);
    }

    pub fn _0x0378C08504160D0D(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(250161456850799885)), p0);
    }

    pub fn _IS_PICKUP_WITHIN_RADIUS(pickupHash: types.Hash, x: f32, y: f32, z: f32, radius: f32) windows.BOOL {
        return nativeCaller.invoke5(17997336640076680755, pickupHash, x, y, z, radius);
    }

    pub fn SET_PICKUP_REGENERATION_TIME(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8647294581580156061)), p0, p1);
    }

    pub fn _0x616093EC6B139DD9(p0: types.Any, p1: types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7016770863061245401)), p0, p1, p2);
    }

    pub fn _0x88EAEC617CD26926(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(9865957837158639910, p0, p1);
    }

    pub fn SET_TEAM_PICKUP_OBJECT(p0: types.Any, p1: types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6044076003401986250)), p0, p1, p2);
    }

    pub fn _0x92AEFB5F6E294023(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(10569661762773794851, p0, p1, p2);
    }

    pub fn _0xA08FE5E49BDC39DD(p0: types.Any, p1: f32, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(11569718737768298973, p0, p1, p2);
    }

    pub fn _0xDB41D07A45A6D4B7(p0: types.Any) types.Any {
        return nativeCaller.invoke1(15799138191365559479, p0);
    }

    pub fn _0x318516E02DE3ECE2(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3568283431859383522)), p0);
    }

    pub fn _0x31F924B53EADDF65(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3600949737918685029)), p0);
    }

    pub fn _0xF92099527DB8E2A7(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(17951516694274433703, p0, p1);
    }

    pub fn _0xA2C1F5E92AFE49ED() void {
        _ = nativeCaller.invoke0(11727925286446975469);
    }

    pub fn _0x762DB2D380B48D04(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8515659091894635780)), p0);
    }

    pub fn _0x3430676B11CDF21D(x: f32, y: f32, z: f32, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(3760619398412235293)), x, y, z, p3);
    }

    pub fn _0xB2D0BDE54F0E8E5A(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12885007326478503514, p0, p1);
    }

    pub fn _0x08F96CA6C551AD51(p0: types.Any) types.Hash {
        return nativeCaller.invoke1(@as(u64, @intCast(646667485035212113)), p0);
    }

    pub fn _0x11D1E53A726891FE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1284059407967621630)), p0);
    }

    pub fn _0x971DA0055324D033(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(10889035418781929523, p0, p1);
    }

    pub fn _0x5EAAD83F8CFB4575(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(6821502353065854325)), p0);
    }

    pub fn SET_FORCE_OBJECT_THIS_FRAME(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(17669882043718475421, p0, p1, p2, p3);
    }

    pub fn _MARK_OBJECT_FOR_DELETION(object: types.Object) void {
        _ = nativeCaller.invoke1(12519523221682229882, object);
    }
};

pub const AI = struct {
    pub fn TASK_PAUSE(ped: types.Ped, ms: c_int) void {
        _ = nativeCaller.invoke2(16661672023969927234, ped, ms);
    }

    pub fn TASK_STAND_STILL(ped: types.Ped, time: c_int) void {
        _ = nativeCaller.invoke2(10492227417279764825, ped, time);
    }

    pub fn TASK_JUMP(ped: types.Ped, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(784761447855974321)), ped, p1);
    }

    pub fn TASK_COWER(ped: types.Ped, duration: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4517671858179444245)), ped, duration);
    }

    pub fn TASK_HANDS_UP(ped: types.Ped, duration: c_int, facingPed: types.Ped, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(17503999823725459728, ped, duration, facingPed, p3, p4);
    }

    pub fn UPDATE_TASK_HANDS_UP_DURATION(ped: types.Ped, duration: c_int) void {
        _ = nativeCaller.invoke2(12218207504077932596, ped, duration);
    }

    pub fn TASK_OPEN_VEHICLE_DOOR(ped: types.Ped, vehicle: types.Vehicle, timeOut: c_int, doorIndex: c_int, speed: f32) void {
        _ = nativeCaller.invoke5(10833287586458935394, ped, vehicle, timeOut, doorIndex, speed);
    }

    pub fn TASK_ENTER_VEHICLE(ped: types.Ped, vehicle: types.Vehicle, timeout: c_int, seat: c_int, speed: f32, p5: c_int, p6: types.Any) void {
        _ = nativeCaller.invoke7(13983202585294707880, ped, vehicle, timeout, seat, speed, p5, p6);
    }

    pub fn TASK_LEAVE_VEHICLE(ped: types.Ped, vehicle: types.Vehicle, flags: c_int) void {
        _ = nativeCaller.invoke3(15266022280670526978, ped, vehicle, flags);
    }

    pub fn _TASK_GET_OFF_BOAT(ped: types.Ped, p1: types.Any) void {
        _ = nativeCaller.invoke2(11241239185137020415, ped, p1);
    }

    pub fn TASK_SKY_DIVE(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6924063218637123744)), ped);
    }

    pub fn TASK_PARACHUTE(ped: types.Ped, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(15200147081389834667, ped, p1);
    }

    pub fn TASK_PARACHUTE_TO_TARGET(ped: types.Ped, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(12915805977192419386, ped, x, y, z);
    }

    pub fn SET_PARACHUTE_TASK_TARGET(ped: types.Ped, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(14056640000561048999, ped, x, y, z);
    }

    pub fn SET_PARACHUTE_TASK_THRUST(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(516148973502087959)), p0, p1);
    }

    pub fn TASK_RAPPEL_FROM_HELI(ped: types.Ped, p1: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(678138103285225033)), ped, p1);
    }

    pub fn TASK_VEHICLE_DRIVE_TO_COORD(ped: types.Ped, vehicle: types.Vehicle, x: f32, y: f32, z: f32, speed: f32, p6: types.Any, vehicleModel: types.Hash, drivingMode: c_int, stopRange: f32, p10: f32) void {
        _ = nativeCaller.invoke11(16330802319343843239, ped, vehicle, x, y, z, speed, p6, vehicleModel, drivingMode, stopRange, p10);
    }

    pub fn TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(ped: types.Ped, vehicle: types.Vehicle, x: f32, y: f32, z: f32, speed: f32, driveMode: c_int, stopRange: f32) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(1552531582173918732)), ped, vehicle, x, y, z, speed, driveMode, stopRange);
    }

    pub fn TASK_VEHICLE_DRIVE_WANDER(ped: types.Ped, vehicle: types.Vehicle, speed: f32, drivingStyle: c_int) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(5188501456062479616)), ped, vehicle, speed, drivingStyle);
    }

    pub fn TASK_FOLLOW_TO_OFFSET_OF_ENTITY(ped: types.Ped, entity: types.Entity, offsetX: f32, offsetY: f32, offsetZ: f32, movementSpeed: f32, p6: c_int, stoppingRange: f32, p8: windows.BOOL) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(3479844549214047358)), ped, entity, offsetX, offsetY, offsetZ, movementSpeed, p6, stoppingRange, p8);
    }

    pub fn TASK_GO_STRAIGHT_TO_COORD(ped: types.Ped, x: f32, y: f32, z: f32, speed: f32, timeout: c_int, targetHeading: f32, distanceToSlide: f32) void {
        _ = nativeCaller.invoke8(15522596972595670923, ped, x, y, z, speed, timeout, targetHeading, distanceToSlide);
    }

    pub fn TASK_GO_STRAIGHT_TO_COORD_RELATIVE_TO_ENTITY(entity1: types.Entity, entity2: types.Entity, p2: f32, p3: f32, p4: f32, p5: f32, p6: types.Any) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(7053587784249954606)), entity1, entity2, p2, p3, p4, p5, p6);
    }

    pub fn TASK_ACHIEVE_HEADING(ped: types.Ped, heading: f32, timeout: c_int) void {
        _ = nativeCaller.invoke3(10644603204722958141, ped, heading, timeout);
    }

    pub fn TASK_FLUSH_ROUTE() void {
        _ = nativeCaller.invoke0(9516460747797729286);
    }

    pub fn TASK_EXTEND_ROUTE(x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2195655964724855866)), x, y, z);
    }

    pub fn TASK_FOLLOW_POINT_ROUTE(p0: types.Any, p1: f32, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6437195450626368110)), p0, p1, p2);
    }

    pub fn TASK_GO_TO_ENTITY(entity: types.Entity, target: types.Entity, duration: c_int, distance: f32, speed: f32, p5: f32, p6: c_int) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(7640095384362883202)), entity, target, duration, distance, speed, p5, p6);
    }

    pub fn TASK_SMART_FLEE_COORD(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: types.Any, p6: windows.BOOL, p7: windows.BOOL) void {
        _ = nativeCaller.invoke8(10689433456246744533, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn TASK_SMART_FLEE_PED(ped: types.Ped, fleeTarget: types.Ped, distance: f32, fleeTime: types.Any, p4: windows.BOOL, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(2499727468660491277)), ped, fleeTarget, distance, fleeTime, p4, p5);
    }

    pub fn TASK_REACT_AND_FLEE_PED(ped: types.Ped, fleeTarget: types.Ped) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8271025944283959729)), ped, fleeTarget);
    }

    pub fn TASK_SHOCKING_EVENT_REACT(ped: types.Ped, event: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4982135451075216987)), ped, event);
    }

    pub fn TASK_WANDER_IN_AREA(ped: types.Ped, x: f32, y: f32, z: f32, radius: f32, minimalLenght: f32, timeBetweenWalks: f32) void {
        _ = nativeCaller.invoke7(16164602603745899285, ped, x, y, z, radius, minimalLenght, timeBetweenWalks);
    }

    pub fn TASK_WANDER_STANDARD(ped: types.Ped, p1: f32, p2: c_int) void {
        _ = nativeCaller.invoke3(13518926983824632347, ped, p1, p2);
    }

    pub fn TASK_VEHICLE_PARK(ped: types.Ped, vehicle: types.Vehicle, x: f32, y: f32, z: f32, heading: f32, mode: c_int, radius: f32, keepEngineOn: windows.BOOL) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(1098373536217184078)), ped, vehicle, x, y, z, heading, mode, radius, keepEngineOn);
    }

    pub fn TASK_STEALTH_KILL(killer: types.Ped, target: types.Ped, killType: types.Hash, p3: f32, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(12276179632630664153, killer, target, killType, p3, p4);
    }

    pub fn TASK_PLANT_BOMB(pedToGiveTask: types.Ped, x: f32, y: f32, z: f32, degreeAngle: f32) void {
        _ = nativeCaller.invoke5(10835639164684593599, pedToGiveTask, x, y, z, degreeAngle);
    }

    pub fn TASK_FOLLOW_NAV_MESH_TO_COORD(ped: types.Ped, x: f32, y: f32, z: f32, speed: f32, timeout: c_int, zeroFloat: f32, zeroInt: c_int, zeroFloat2: f32) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(1572784988947265811)), ped, x, y, z, speed, timeout, zeroFloat, zeroInt, zeroFloat2);
    }

    pub fn TASK_FOLLOW_NAV_MESH_TO_COORD_ADVANCED(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: types.Any, p6: f32, p7: types.Any, p8: f32, p9: f32, p10: f32, p11: f32) void {
        _ = nativeCaller.invoke12(@as(u64, @intCast(1726439451896699820)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
    }

    pub fn SET_PED_PATH_CAN_USE_CLIMBOVERS(ped: types.Ped, Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(10234050815090880500, ped, Toggle);
    }

    pub fn SET_PED_PATH_CAN_USE_LADDERS(ped: types.Ped, Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8621491691477485422)), ped, Toggle);
    }

    pub fn SET_PED_PATH_CAN_DROP_FROM_HEIGHT(ped: types.Ped, Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(16384594378313898575, ped, Toggle);
    }

    pub fn _0x88E32DB8C1A4AA4B(p0: types.Ped, p1: f32) void {
        _ = nativeCaller.invoke2(9863777880417544779, p0, p1);
    }

    pub fn SET_PED_PATHS_WIDTH_PLANT(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(17533680636106336236, p0, p1);
    }

    pub fn SET_PED_PATH_PREFER_TO_AVOID_WATER(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4106753751182965052)), ped, toggle);
    }

    pub fn SET_PED_PATH_AVOID_FIRE(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4923931356997885536)), p0, p1);
    }

    pub fn SET_GLOBAL_MIN_BIRD_FLIGHT_HEIGHT(height: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7812360542331942135)), height);
    }

    pub fn GET_NAVMESH_ROUTE_DISTANCE_REMAINING(p0: types.Ped, p1: [*c]types.Any, p2: [*c]types.Any) types.Any {
        return nativeCaller.invoke3(14336576906188871213, p0, p1, p2);
    }

    pub fn GET_NAVMESH_ROUTE_RESULT(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(7146793828793061288)), p0);
    }

    pub fn _0x3E38E28A1D80DDF6(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4483582511875677686)), p0);
    }

    pub fn TASK_GO_TO_COORD_ANY_MEANS(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: types.Any, p6: windows.BOOL, p7: types.Any, p8: f32) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(6612490191631957640)), p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS(p0: types.Ped, x: f32, y: f32, z: f32, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any, p9: types.Any, p10: types.Any, p11: types.Any) void {
        _ = nativeCaller.invoke12(@as(u64, @intCast(2149448057859283913)), p0, x, y, z, p4, p5, p6, p7, p8, p9, p10, p11);
    }

    pub fn TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS_WITH_CRUISE_SPEED(ped: types.Ped, position: [*c]types.Vector3, p2: types.Any, p3: types.Any, p4: types.Any, drivingStyle: c_int, p6: types.Any, p7: types.Any, p8: types.Any, p9: types.Any, p10: types.Any, p11: types.Any, p12: types.Any) void {
        _ = nativeCaller.invoke13(13325260827509029634, ped, position, p2, p3, p4, drivingStyle, p6, p7, p8, p9, p10, p11, p12);
    }

    pub fn TASK_PLAY_ANIM(ped: types.Ped, animDictionary: [*c]u8, animationName: [*c]u8, speed: f32, speedMultiplier: f32, duration: c_int, flag: c_int, playbackRate: f32, lockX: windows.BOOL, lockY: windows.BOOL, lockZ: windows.BOOL) void {
        _ = nativeCaller.invoke11(16881741240819145620, ped, animDictionary, animationName, speed, speedMultiplier, duration, flag, playbackRate, lockX, lockY, lockZ);
    }

    pub fn TASK_PLAY_ANIM_ADVANCED(ped: types.Ped, animDict: [*c]u8, animName: [*c]u8, posX: f32, posY: f32, posZ: f32, rotX: f32, rotY: f32, rotZ: f32, speed: f32, speedMultiplier: f32, duration: c_int, flag: types.Any, animTime: f32, p14: types.Any, p15: types.Any) void {
        _ = nativeCaller.invoke16(9497441865609983755, ped, animDict, animName, posX, posY, posZ, rotX, rotY, rotZ, speed, speedMultiplier, duration, flag, animTime, p14, p15);
    }

    pub fn STOP_ANIM_TASK(ped: types.Ped, animDictionary: [*c]u8, animationName: [*c]u8, p3: f32) void {
        _ = nativeCaller.invoke4(10952532887463698442, ped, animDictionary, animationName, p3);
    }

    pub fn TASK_SCRIPTED_ANIMATION(ped: types.Ped, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any, p4: f32, p5: f32) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(1328270928019696613)), ped, p1, p2, p3, p4, p5);
    }

    pub fn PLAY_ENTITY_SCRIPTED_ANIM(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any, p4: f32, p5: f32) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(8620433692846193905)), p0, p1, p2, p3, p4, p5);
    }

    pub fn STOP_ANIM_PLAYBACK(ped: types.Ped, p1: types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(17152180813269878225, ped, p1, p2);
    }

    pub fn SET_ANIM_WEIGHT(p0: types.Any, p1: f32, p2: types.Any, p3: types.Any, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(2341619226725592904)), p0, p1, p2, p3, p4);
    }

    pub fn SET_ANIM_RATE(p0: types.Any, p1: f32, p2: types.Any, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(228920270337460295)), p0, p1, p2, p3);
    }

    pub fn SET_ANIM_LOOPED(p0: types.Any, p1: windows.BOOL, p2: types.Any, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8071361188838645748)), p0, p1, p2, p3);
    }

    pub fn TASK_PLAY_PHONE_GESTURE_ANIMATION(p0: types.Ped, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any, p4: f32, p5: f32, p6: windows.BOOL, p7: windows.BOOL) void {
        _ = nativeCaller.invoke8(10356985398738282988, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn _TASK_STOP_PHONE_GESTURE_ANIMATION(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4584679054795456430)), p0);
    }

    pub fn IS_PLAYING_PHONE_GESTURE_ANIM(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(13324939540337036304, ped);
    }

    pub fn GET_PHONE_GESTURE_ANIM_CURRENT_TIME(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(5143562392602840160)), p0);
    }

    pub fn GET_PHONE_GESTURE_ANIM_TOTAL_TIME(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(2225049290569801414)), p0);
    }

    pub fn TASK_VEHICLE_PLAY_ANIM(vehicle: types.Vehicle, animation_set: [*c]u8, animation_name: [*c]u8) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7635223960048549257)), vehicle, animation_set, animation_name);
    }

    pub fn TASK_LOOK_AT_COORD(entity: types.Entity, x: f32, y: f32, z: f32, duration: f32, p5: types.Any, p6: types.Any) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(8044667063384373619)), entity, x, y, z, duration, p5, p6);
    }

    pub fn TASK_LOOK_AT_ENTITY(pedHandle: types.Ped, lookAt: types.Entity, duration: c_int, unknown1: c_int, unknown2: c_int) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(7634936779166218604)), pedHandle, lookAt, duration, unknown1, unknown2);
    }

    pub fn TASK_CLEAR_LOOK_AT(playerPed: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1116979696540292745)), playerPed);
    }

    pub fn OPEN_SEQUENCE_TASK(taskSequence: [*c]types.Object) void {
        _ = nativeCaller.invoke1(16754879640974778667, taskSequence);
    }

    pub fn CLOSE_SEQUENCE_TASK(taskSequence: types.Object) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4172351724727787723)), taskSequence);
    }

    pub fn TASK_PERFORM_SEQUENCE(ped: types.Ped, taskSequence: types.Object) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6537601060411640379)), ped, taskSequence);
    }

    pub fn CLEAR_SEQUENCE_TASK(taskSequence: [*c]types.Object) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4053593907568086412)), taskSequence);
    }

    pub fn SET_SEQUENCE_TO_REPEAT(taskSequence: types.Object, repeat: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6397096036273113831)), taskSequence, repeat);
    }

    pub fn GET_SEQUENCE_PROGRESS(ped: types.Ped) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(47570426378728755)), ped);
    }

    pub fn GET_IS_TASK_ACTIVE(ped: types.Ped, taskNumber: c_int) windows.BOOL {
        return nativeCaller.invoke2(12715354110265278805, ped, taskNumber);
    }

    pub fn GET_SCRIPT_TASK_STATUS(targetPed: types.Ped, taskHash: types.Hash) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(8642898859635411157)), targetPed, taskHash);
    }

    pub fn GET_ACTIVE_VEHICLE_MISSION_TYPE(veh: types.Vehicle) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(6001868555479239851)), veh);
    }

    pub fn TASK_LEAVE_ANY_VEHICLE(ped: types.Ped, p1: c_int, p2: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5786374414059643463)), ped, p1, p2);
    }

    pub fn TASK_AIM_GUN_SCRIPTED(p0: types.Any, p1: types.Any, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8798111594244947200)), p0, p1, p2, p3);
    }

    pub fn TASK_AIM_GUN_SCRIPTED_WITH_TARGET(p0: types.Any, p1: types.Any, p2: f32, p3: f32, p4: f32, p5: types.Any, p6: windows.BOOL, p7: windows.BOOL) void {
        _ = nativeCaller.invoke8(9657317450239419820, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn UPDATE_TASK_AIM_GUN_SCRIPTED_TARGET(p0: types.Ped, p1: types.Ped, p2: f32, p3: f32, p4: f32, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(10891106161309199056, p0, p1, p2, p3, p4, p5);
    }

    pub fn GET_CLIP_SET_FOR_SCRIPTED_GUN_TASK(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(4218938024697441477)), p0);
    }

    pub fn TASK_AIM_GUN_AT_ENTITY(ped: types.Ped, entity: types.Entity, duration: c_int, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(11192495582369525587, ped, entity, duration, p3);
    }

    pub fn TASK_TURN_PED_TO_FACE_ENTITY(ped: types.Ped, entity: types.Entity, duration: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6544360553900626860)), ped, entity, duration);
    }

    pub fn TASK_AIM_GUN_AT_COORD(ped: types.Ped, x: f32, y: f32, z: f32, time: c_int, p5: windows.BOOL, p6: windows.BOOL) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(7381949471095111073)), ped, x, y, z, time, p5, p6);
    }

    pub fn TASK_SHOOT_AT_COORD(ped: types.Ped, x: f32, y: f32, z: f32, duration: c_int, firingPattern: types.Hash) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(5090980737222598918)), ped, x, y, z, duration, firingPattern);
    }

    pub fn TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT(ped: types.Ped, vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8838316509574349803)), ped, vehicle);
    }

    pub fn CLEAR_PED_TASKS(ped: types.Ped) void {
        _ = nativeCaller.invoke1(16280297226355339981, ped);
    }

    pub fn CLEAR_PED_SECONDARY_TASK(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1687984505842882311)), ped);
    }

    pub fn TASK_EVERYONE_LEAVE_VEHICLE(p0: types.Vehicle) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(9192806827815412338)), p0);
    }

    pub fn TASK_GOTO_ENTITY_OFFSET(p0: types.Any, p1: types.Any, p2: types.Any, p3: f32, p4: f32, p5: f32, p6: types.Any) void {
        _ = nativeCaller.invoke7(16400790381650501159, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn TASK_GOTO_ENTITY_OFFSET_XY(p0: types.Any, p1: types.Any, p2: types.Any, p3: f32, p4: f32, p5: f32, p6: f32, p7: types.Any) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(3715046334087075241)), p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn TASK_TURN_PED_TO_FACE_COORD(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(2151193443362375025)), p0, p1, p2, p3, p4);
    }

    pub fn TASK_VEHICLE_TEMP_ACTION(driver: types.Ped, vehicle: types.Vehicle, action: c_int, time: c_int) void {
        _ = nativeCaller.invoke4(14135071823246254377, driver, vehicle, action, time);
    }

    pub fn TASK_VEHICLE_MISSION(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: f32, p5: types.Any, p6: f32, p7: f32, p8: windows.BOOL) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(7319519141423398110)), p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn TASK_VEHICLE_MISSION_PED_TARGET(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: f32, p5: types.Any, p6: f32, p7: f32, p8: windows.BOOL) void {
        _ = nativeCaller.invoke9(10688258585250325882, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn TASK_VEHICLE_MISSION_COORS_TARGET(p0: types.Any, p1: types.Any, p2: f32, p3: f32, p4: f32, p5: types.Any, p6: f32, p7: types.Any, p8: f32, p9: f32, p10: windows.BOOL) void {
        _ = nativeCaller.invoke11(17343116606543362243, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
    }

    pub fn TASK_VEHICLE_ESCORT(ped: types.Ped, vehicle: types.Vehicle, targetVehicle: types.Vehicle, p3: c_int, speed: f32, drivingStyle: c_int, minDistance: f32, p7: c_int, noRoadsDistance: f32) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(1127840232930026496)), ped, vehicle, targetVehicle, p3, speed, drivingStyle, minDistance, p7, noRoadsDistance);
    }

    pub fn _TASK_VEHICLE_FOLLOW(driver: types.Ped, vehicle: types.Vehicle, targetEntity: types.Entity, drivingStyle: c_int, speed: f32, minDistance: f32) void {
        _ = nativeCaller.invoke6(18182257234651046838, driver, vehicle, targetEntity, drivingStyle, speed, minDistance);
    }

    pub fn TASK_VEHICLE_CHASE(driver: types.Ped, targetEnt: types.Entity) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4325893135057269587)), driver, targetEnt);
    }

    pub fn TASK_VEHICLE_HELI_PROTECT(pilot: types.Ped, vehicle: types.Vehicle, entityToFollow: types.Entity, targetSpeed: f32, p4: c_int, radius: f32, altitude: c_int, p7: c_int) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(2164475639359274268)), pilot, vehicle, entityToFollow, targetSpeed, p4, radius, altitude, p7);
    }

    pub fn SET_TASK_VEHICLE_CHASE_BEHAVIOR_FLAG(ped: types.Ped, flag: c_int, set: windows.BOOL) void {
        _ = nativeCaller.invoke3(14728559327049495015, ped, flag, set);
    }

    pub fn SET_TASK_VEHICLE_CHASE_IDEAL_PURSUIT_DISTANCE(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7177440587069411037)), p0, p1);
    }

    pub fn TASK_HELI_CHASE(pilot: types.Ped, entityToFollow: types.Entity, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke5(12430974951581855136, pilot, entityToFollow, x, y, z);
    }

    pub fn TASK_PLANE_CHASE(pilot: types.Ped, entityToFollow: types.Entity, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(3252591731777960485)), pilot, entityToFollow, x, y, z);
    }

    pub fn TASK_PLANE_LAND(pilot: types.Ped, plane: types.Vehicle, runwayStartX: f32, runwayStartY: f32, runwayStartZ: f32, runwayEndX: f32, runwayEndY: f32, runwayEndZ: f32) void {
        _ = nativeCaller.invoke8(13770162815871300288, pilot, plane, runwayStartX, runwayStartY, runwayStartZ, runwayEndX, runwayEndY, runwayEndZ);
    }

    pub fn TASK_HELI_MISSION(pilot: types.Ped, vehicle: types.Vehicle, p2: types.Any, pedToFollow: types.Ped, posX: f32, posY: f32, posZ: f32, flag: c_int, speed: f32, p9: f32, p10: f32, p11: c_int, p12: c_int, p13: f32, p14: c_int) void {
        _ = nativeCaller.invoke15(15767148344044076724, pilot, vehicle, p2, pedToFollow, posX, posY, posZ, flag, speed, p9, p10, p11, p12, p13, p14);
    }

    pub fn TASK_PLANE_MISSION(pilot: types.Ped, plane: types.Vehicle, targetVehicle: types.Vehicle, targetPed: types.Ped, destinationX: f32, destinationY: f32, destinationZ: f32, p7: c_int, physicsSpeed: f32, p9: f32, p10: f32, maxAltitude: f32, minAltitude: f32) void {
        _ = nativeCaller.invoke13(@as(u64, @intCast(2553607858489408392)), pilot, plane, targetVehicle, targetPed, destinationX, destinationY, destinationZ, p7, physicsSpeed, p9, p10, maxAltitude, minAltitude);
    }

    pub fn TASK_BOAT_MISSION(pedDriver: types.Ped, boat: types.Vehicle, p2: types.Any, p3: types.Any, x: f32, y: f32, z: f32, p7: types.Any, maxSpeed: f32, p9: types.Any, p10: f32, p11: types.Any) void {
        _ = nativeCaller.invoke12(@as(u64, @intCast(1569610105169438271)), pedDriver, boat, p2, p3, x, y, z, p7, maxSpeed, p9, p10, p11);
    }

    pub fn TASK_DRIVE_BY(p0: types.Ped, targetPed: types.Ped, p2: types.Any, p3: f32, p4: f32, p5: f32, p6: f32, p7: types.Any, p8: windows.BOOL, firingPattern: types.Hash) void {
        _ = nativeCaller.invoke10(@as(u64, @intCast(3425815346453651825)), p0, targetPed, p2, p3, p4, p5, p6, p7, p8, firingPattern);
    }

    pub fn SET_DRIVEBY_TASK_TARGET(p0: types.Any, p1: types.Any, p2: types.Any, p3: f32, p4: f32, p5: f32) void {
        _ = nativeCaller.invoke6(16551575328854729454, p0, p1, p2, p3, p4, p5);
    }

    pub fn CLEAR_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK(ped: types.Ped) void {
        _ = nativeCaller.invoke1(14076947156617711465, ped);
    }

    pub fn IS_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(9765465234159077400, ped);
    }

    pub fn CONTROL_MOUNTED_WEAPON(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(15924237928379716442, ped);
    }

    pub fn SET_MOUNTED_WEAPON_TARGET(shootingPed: types.Ped, targetEntity: types.Entity, p2: types.Any, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke6(14760708415523990457, shootingPed, targetEntity, p2, x, y, z);
    }

    pub fn IS_MOUNTED_WEAPON_TASK_UNDERNEATH_DRIVING_TASK(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(11754657829532138043, p0);
    }

    pub fn TASK_USE_MOBILE_PHONE(ped: types.Ped, p1: c_int) void {
        _ = nativeCaller.invoke2(13630864193301112795, ped, p1);
    }

    pub fn TASK_USE_MOBILE_PHONE_TIMED(ped: types.Ped, duration: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6836509677808544219)), ped, duration);
    }

    pub fn TASK_CHAT_TO_PED(ped: types.Ped, target: types.Ped, p2: types.Any, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32) void {
        _ = nativeCaller.invoke8(10102574530039184665, ped, target, p2, p3, p4, p5, p6, p7);
    }

    pub fn TASK_WARP_PED_INTO_VEHICLE(ped: types.Ped, vehicle: types.Vehicle, seat: c_int) void {
        _ = nativeCaller.invoke3(11132063835731916420, ped, vehicle, seat);
    }

    pub fn TASK_SHOOT_AT_ENTITY(entity: types.Entity, target: types.Entity, duration: c_int, firingPattern: types.Hash) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(637987121588266866)), entity, target, duration, firingPattern);
    }

    pub fn TASK_CLIMB(ped: types.Ped, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(9933248364425581297, ped, p1);
    }

    pub fn TASK_CLIMB_LADDER(p0: types.Ped, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(13171208089415333908, p0, p1);
    }

    pub fn CLEAR_PED_TASKS_IMMEDIATELY(ped: types.Ped) void {
        _ = nativeCaller.invoke1(12295758863867781272, ped);
    }

    pub fn TASK_PERFORM_SEQUENCE_FROM_PROGRESS(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(9881490315637044464, p0, p1, p2, p3);
    }

    pub fn SET_NEXT_DESIRED_MOVE_STATE(p0: types.Any) void {
        _ = nativeCaller.invoke1(17418218490894141754, p0);
    }

    pub fn SET_PED_DESIRED_MOVE_BLEND_RATIO(ped: types.Ped, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2204559057982395077)), ped, p1);
    }

    pub fn GET_PED_DESIRED_MOVE_BLEND_RATIO(ped: types.Ped) f32 {
        return nativeCaller.invoke1(9590367744336139245, ped);
    }

    pub fn TASK_GOTO_ENTITY_AIMING(ped: types.Ped, target: types.Entity, distanceToStopAt: f32, StartAimingDist: f32) void {
        _ = nativeCaller.invoke4(12239175179009747986, ped, target, distanceToStopAt, StartAimingDist);
    }

    pub fn TASK_SET_DECISION_MAKER(p0: types.Ped, p1: types.Hash) void {
        _ = nativeCaller.invoke2(16970997011576201434, p0, p1);
    }

    pub fn TASK_SET_SPHERE_DEFENSIVE_AREA(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32) void {
        _ = nativeCaller.invoke5(10609361769477613988, p0, p1, p2, p3, p4);
    }

    pub fn TASK_CLEAR_DEFENSIVE_AREA(p0: types.Any) void {
        _ = nativeCaller.invoke1(10783522318166626685, p0);
    }

    pub fn TASK_PED_SLIDE_TO_COORD(ped: types.Ped, x: f32, y: f32, z: f32, heading: f32, p5: f32) void {
        _ = nativeCaller.invoke6(15010469479099992582, ped, x, y, z, heading, p5);
    }

    pub fn TASK_PED_SLIDE_TO_COORD_HDG_RATE(ped: types.Ped, x: f32, y: f32, z: f32, heading: f32, p5: f32, p6: f32) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(6506129629110488914)), ped, x, y, z, heading, p5, p6);
    }

    pub fn ADD_COVER_POINT(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: types.Any, p6: types.Any, p7: windows.BOOL) types.ScrHandle {
        return nativeCaller.invoke8(15402638885934156159, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn REMOVE_COVER_POINT(coverpoint: types.ScrHandle) void {
        _ = nativeCaller.invoke1(12549417329207351061, coverpoint);
    }

    pub fn DOES_SCRIPTED_COVER_POINT_EXIST_AT_COORDS(x: f32, y: f32, z: f32) windows.BOOL {
        return nativeCaller.invoke3(12217014802665331249, x, y, z);
    }

    pub fn GET_SCRIPTED_COVER_POINT_COORDS(coverpoint: types.ScrHandle) types.Vector3 {
        return nativeCaller.invoke1(@as(u64, @intCast(6433972785867538053)), coverpoint);
    }

    pub fn TASK_COMBAT_PED(ped: types.Ped, targetPed: types.Ped, p2: c_int, p3: c_int) void {
        _ = nativeCaller.invoke4(17394841866481616004, ped, targetPed, p2, p3);
    }

    pub fn TASK_COMBAT_PED_TIMED(p0: types.Any, ped: types.Ped, p2: c_int, p3: types.Any) void {
        _ = nativeCaller.invoke4(10686814165295262686, p0, ped, p2, p3);
    }

    pub fn TASK_SEEK_COVER_FROM_POS(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(8479199890695358962)), p0, p1, p2, p3, p4, p5);
    }

    pub fn TASK_SEEK_COVER_FROM_PED(ped: types.Ped, target: types.Ped, duration: c_int, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(9571041169460368164, ped, target, duration, p3);
    }

    pub fn TASK_SEEK_COVER_TO_COVER_POINT(p0: types.Any, p1: types.Any, p2: f32, p3: f32, p4: f32, p5: types.Any, p6: windows.BOOL) void {
        _ = nativeCaller.invoke7(15293544594376574079, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn TASK_SEEK_COVER_TO_COORDS(ped: types.Ped, x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, p7: types.Any, p8: windows.BOOL) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(4117532960019646252)), ped, x1, y1, z1, x2, y2, z2, p7, p8);
    }

    pub fn TASK_PUT_PED_DIRECTLY_INTO_COVER(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: windows.BOOL, p6: f32, p7: windows.BOOL, p8: windows.BOOL, p9: types.Any, p10: windows.BOOL) void {
        _ = nativeCaller.invoke11(@as(u64, @intCast(4715894700071059150)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
    }

    pub fn TASK_EXIT_COVER(p0: types.Any, p1: types.Any, p2: f32, p3: f32, p4: f32) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(8769169158966693161)), p0, p1, p2, p3, p4);
    }

    pub fn TASK_PUT_PED_DIRECTLY_INTO_MELEE(ped: types.Ped, meleeTarget: types.Ped, p2: f32, p3: f32, p4: f32, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(2048242048576781881)), ped, meleeTarget, p2, p3, p4, p5);
    }

    pub fn TASK_TOGGLE_DUCK(p0: windows.BOOL, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12436233642443140600, p0, p1);
    }

    pub fn TASK_GUARD_CURRENT_POSITION(p0: types.Ped, p1: f32, p2: f32, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(5357212602577714356)), p0, p1, p2, p3);
    }

    pub fn TASK_GUARD_ASSIGNED_DEFENSIVE_AREA(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: types.Any) void {
        _ = nativeCaller.invoke7(15177702416162850971, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn TASK_GUARD_SPHERE_DEFENSIVE_AREA(p0: types.Ped, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: types.Any, p7: f32, p8: f32, p9: f32, p10: f32) void {
        _ = nativeCaller.invoke11(14503559015034697186, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
    }

    pub fn TASK_STAND_GUARD(ped: types.Ped, x: f32, y: f32, z: f32, heading: f32, scenarioName: [*c]u8) void {
        _ = nativeCaller.invoke6(12538918064706920080, ped, x, y, z, heading, scenarioName);
    }

    pub fn SET_DRIVE_TASK_CRUISE_SPEED(driver: types.Ped, cruiseSpeed: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6673073222263625992)), driver, cruiseSpeed);
    }

    pub fn SET_DRIVE_TASK_MAX_CRUISE_SPEED(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4632614851719509830)), p0, p1);
    }

    pub fn SET_DRIVE_TASK_DRIVING_STYLE(ped: types.Ped, drivingStyle: c_int) void {
        _ = nativeCaller.invoke2(15766570009348321127, ped, drivingStyle);
    }

    pub fn ADD_COVER_BLOCKING_AREA(playerX: f32, playerY: f32, playerZ: f32, radiusX: f32, radiusY: f32, radiusZ: f32, p6: windows.BOOL, p7: windows.BOOL, p8: windows.BOOL, p9: windows.BOOL) void {
        _ = nativeCaller.invoke10(@as(u64, @intCast(5027590626050820993)), playerX, playerY, playerZ, radiusX, radiusY, radiusZ, p6, p7, p8, p9);
    }

    pub fn REMOVE_ALL_COVER_BLOCKING_AREAS() void {
        _ = nativeCaller.invoke0(15809614640661354200);
    }

    pub fn TASK_START_SCENARIO_IN_PLACE(ped: types.Ped, scenarioName: [*c]u8, unkDelay: c_int, playEnterAnim: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(1452976313881078745)), ped, scenarioName, unkDelay, playEnterAnim);
    }

    pub fn TASK_START_SCENARIO_AT_POSITION(ped: types.Ped, scenarioName: [*c]u8, x: f32, y: f32, z: f32, heading: f32, p6: types.Any, p7: windows.BOOL, p8: windows.BOOL) void {
        _ = nativeCaller.invoke9(18036631158424162055, ped, scenarioName, x, y, z, heading, p6, p7, p8);
    }

    pub fn TASK_USE_NEAREST_SCENARIO_TO_COORD(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: types.Any) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(2846071673660833803)), p0, p1, p2, p3, p4, p5);
    }

    pub fn TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP(ped: types.Ped, x: f32, y: f32, z: f32, radius: f32, p5: types.Any) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(6404928951124981443)), ped, x, y, z, radius, p5);
    }

    pub fn TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: types.Any) void {
        _ = nativeCaller.invoke6(11518548947881699507, p0, p1, p2, p3, p4, p5);
    }

    pub fn TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD_WARP(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: types.Any) void {
        _ = nativeCaller.invoke6(10926452205845894705, p0, p1, p2, p3, p4, p5);
    }

    pub fn DOES_SCENARIO_EXIST_IN_AREA(x: f32, y: f32, z: f32, radius: f32, b: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(6510277754647032769)), x, y, z, radius, b);
    }

    pub fn DOES_SCENARIO_OF_TYPE_EXIST_IN_AREA(p0: f32, p1: f32, p2: f32, p3: [*c]types.Any, p4: f32, p5: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(764780887253223105)), p0, p1, p2, p3, p4, p5);
    }

    pub fn IS_SCENARIO_OCCUPIED(p0: f32, p1: f32, p2: f32, p3: f32, p4: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(8685005888811098236)), p0, p1, p2, p3, p4);
    }

    pub fn PED_HAS_USE_SCENARIO_TASK(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2980886862190202071)), ped);
    }

    pub fn PLAY_ANIM_ON_RUNNING_SCENARIO(ped: types.Ped, animDict: [*c]u8, animName: [*c]u8) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(8394780375071454684)), ped, animDict, animName);
    }

    pub fn DOES_SCENARIO_GROUP_EXIST(scenarioGroup: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(17943268986684571859, scenarioGroup);
    }

    pub fn IS_SCENARIO_GROUP_ENABLED(scenarioGroup: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3925460877865671577)), scenarioGroup);
    }

    pub fn SET_SCENARIO_GROUP_ENABLED(scenarioGroup: [*c]u8, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(200662747229742670)), scenarioGroup, p1);
    }

    pub fn RESET_SCENARIO_GROUPS_ENABLED() void {
        _ = nativeCaller.invoke0(15965310171172810042);
    }

    pub fn SET_EXCLUSIVE_SCENARIO_GROUP(scenarioGroup: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6007405949742746730)), scenarioGroup);
    }

    pub fn RESET_EXCLUSIVE_SCENARIO_GROUP() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4756570639266240061)));
    }

    pub fn IS_SCENARIO_TYPE_ENABLED(scenarioType: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4215753753502451490)), scenarioType);
    }

    pub fn SET_SCENARIO_TYPE_ENABLED(scenarioType: [*c]u8, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(16953779142900023009, scenarioType, toggle);
    }

    pub fn RESET_SCENARIO_TYPES_ENABLED() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(955024987292118381)));
    }

    pub fn IS_PED_ACTIVE_IN_SCENARIO(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(12255244102459206851, ped);
    }

    pub fn _0x621C6E4729388E41(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7069646766978141761)), p0);
    }

    pub fn _0x8FD89A6240813FD0(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(10365204289172881360, p0, p1, p2);
    }

    pub fn TASK_COMBAT_HATED_TARGETS_IN_AREA(ped: types.Ped, x: f32, y: f32, z: f32, radius: f32, p5: types.Any) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(5545608298846388384)), ped, x, y, z, radius, p5);
    }

    pub fn TASK_COMBAT_HATED_TARGETS_AROUND_PED(ped: types.Ped, radius: f32, p2: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(8932948940817864904)), ped, radius, p2);
    }

    pub fn TASK_COMBAT_HATED_TARGETS_AROUND_PED_TIMED(p0: types.Any, p1: f32, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(3150884457545943564)), p0, p1, p2, p3);
    }

    pub fn TASK_THROW_PROJECTILE(p0: types.Any, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8252165847224375889)), p0, x, y, z);
    }

    pub fn TASK_SWAP_WEAPON(ped: types.Ped, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11681300754376708677, ped, p1);
    }

    pub fn TASK_RELOAD_WEAPON(ped: types.Ped, doReload: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7120913868208590125)), ped, doReload);
    }

    pub fn IS_PED_GETTING_UP(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3059318355911511788)), ped);
    }

    pub fn TASK_WRITHE(ped: types.Ped, target: types.Ped, time: c_int, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(14833779066214329454, ped, target, time, p3);
    }

    pub fn IS_PED_IN_WRITHE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(16048248660544706112, ped);
    }

    pub fn OPEN_PATROL_ROUTE(patrolRoute: [*c]u8) void {
        _ = nativeCaller.invoke1(11775782035738541442, patrolRoute);
    }

    pub fn CLOSE_PATROL_ROUTE() void {
        _ = nativeCaller.invoke0(12701255580442479553);
    }

    pub fn ADD_PATROL_ROUTE_NODE(p0: c_int, p1: [*c]u8, x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, p8: c_int) void {
        _ = nativeCaller.invoke9(10295111106453597052, p0, p1, x1, y1, z1, x2, y2, z2, p8);
    }

    pub fn ADD_PATROL_ROUTE_LINK(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2524322982776776017)), p0, p1);
    }

    pub fn CREATE_PATROL_ROUTE() void {
        _ = nativeCaller.invoke0(12648997531343132892);
    }

    pub fn DELETE_PATROL_ROUTE(patrolRoute: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8604089281203999513)), patrolRoute);
    }

    pub fn TASK_PATROL(ped: types.Ped, p1: [*c]u8, p2: types.Any, p3: windows.BOOL, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(13665574152449359438, ped, p1, p2, p3, p4);
    }

    pub fn TASK_STAY_IN_COVER(p0: types.Any) void {
        _ = nativeCaller.invoke1(16562698007147448201, p0);
    }

    pub fn ADD_VEHICLE_SUBTASK_ATTACK_COORD(ped: types.Ped, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(6697091213006265717)), ped, x, y, z);
    }

    pub fn ADD_VEHICLE_SUBTASK_ATTACK_PED(ped: types.Ped, ped2: types.Ped) void {
        _ = nativeCaller.invoke2(9652448456064476287, ped, ped2);
    }

    pub fn TASK_VEHICLE_SHOOT_AT_PED(ped: types.Ped, target: types.Ped, p2: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(1201071848380568792)), ped, target, p2);
    }

    pub fn TASK_VEHICLE_AIM_AT_PED(ped: types.Ped, target: types.Ped) void {
        _ = nativeCaller.invoke2(16436033458109198487, ped, target);
    }

    pub fn TASK_VEHICLE_SHOOT_AT_COORD(vehicle: types.Vehicle, x: f32, y: f32, z: f32, p4: f32) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(5877331030622116717)), vehicle, x, y, z, p4);
    }

    pub fn TASK_VEHICLE_AIM_AT_COORD(vehicle: types.Vehicle, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(4934852959810141199)), vehicle, x, y, z);
    }

    pub fn TASK_VEHICLE_GOTO_NAVMESH(ped: types.Ped, vehicle: types.Vehicle, x: f32, y: f32, z: f32, speed: f32, behaviorFlag: c_int, stoppingRange: f32) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(1827035043851133678)), ped, vehicle, x, y, z, speed, behaviorFlag, stoppingRange);
    }

    pub fn TASK_GO_TO_COORD_WHILE_AIMING_AT_COORD(ped: types.Ped, x: f32, y: f32, z: f32, aimAtX: f32, aimAtY: f32, aimAtZ: f32, moveSpeed: f32, p8: windows.BOOL, p9: f32, p10: f32, p11: windows.BOOL, flags: types.Any, p13: windows.BOOL, firingPattern: types.Hash) void {
        _ = nativeCaller.invoke15(@as(u64, @intCast(1238871098294766272)), ped, x, y, z, aimAtX, aimAtY, aimAtZ, moveSpeed, p8, p9, p10, p11, flags, p13, firingPattern);
    }

    pub fn TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: f32, p6: windows.BOOL, p7: f32, p8: f32, p9: windows.BOOL, p10: types.Any, p11: windows.BOOL, p12: types.Any, p13: types.Any) void {
        _ = nativeCaller.invoke14(12871679457162276423, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13);
    }

    pub fn TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(ped: types.Ped, gotoX: f32, gotoY: f32, gotoZ: f32, aimNearX: f32, aimNearY: f32, aimNearZ: f32, speed: f32, shoot: windows.BOOL, unknown1: f32, unknown2: f32, unkTrue: windows.BOOL, unknown3: c_int, heading: windows.BOOL, firingPattern: types.Hash) void {
        _ = nativeCaller.invoke15(11913507004874961404, ped, gotoX, gotoY, gotoZ, aimNearX, aimNearY, aimNearZ, speed, shoot, unknown1, unknown2, unkTrue, unknown3, heading, firingPattern);
    }

    pub fn TASK_GO_TO_ENTITY_WHILE_AIMING_AT_COORD(p0: types.Any, p1: types.Any, p2: f32, p3: f32, p4: f32, p5: f32, p6: windows.BOOL, p7: f32, p8: f32, p9: windows.BOOL, p10: windows.BOOL, p11: types.Any) void {
        _ = nativeCaller.invoke12(@as(u64, @intCast(319782179644759269)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
    }

    pub fn TASK_GO_TO_ENTITY_WHILE_AIMING_AT_ENTITY(ped: types.Ped, entityToWalkTo: types.Entity, entityToAimAt: types.Entity, speed: f32, shootatEntity: windows.BOOL, p5: f32, p6: f32, p7: windows.BOOL, p8: windows.BOOL, firingPattern: types.Hash) void {
        _ = nativeCaller.invoke10(10900497284191097065, ped, entityToWalkTo, entityToAimAt, speed, shootatEntity, p5, p6, p7, p8, firingPattern);
    }

    pub fn SET_HIGH_FALL_TASK(p0: types.Ped, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(10124755914734031740, p0, p1, p2, p3);
    }

    pub fn REQUEST_WAYPOINT_RECORDING(name: [*c]u8) void {
        _ = nativeCaller.invoke1(11452572689105639314, name);
    }

    pub fn GET_IS_WAYPOINT_RECORDING_LOADED(name: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(14649800469116238941, name);
    }

    pub fn REMOVE_WAYPOINT_RECORDING(name: [*c]u8) void {
        _ = nativeCaller.invoke1(18382439456700521928, name);
    }

    pub fn WAYPOINT_RECORDING_GET_NUM_POINTS(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5999730577058591284)), p0, p1);
    }

    pub fn WAYPOINT_RECORDING_GET_COORD(p0: types.Any, p1: types.Any, p2: types.Any) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(3438664618184061793)), p0, p1, p2);
    }

    pub fn WAYPOINT_RECORDING_GET_SPEED_AT_POINT(p0: [*c]types.Any, p1: types.Any) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(24244981874273449)), p0, p1);
    }

    pub fn WAYPOINT_RECORDING_GET_CLOSEST_WAYPOINT(p0: [*c]types.Any, p1: f32, p2: f32, p3: f32, p4: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke5(13126201362803033967, p0, p1, p2, p3, p4);
    }

    pub fn TASK_FOLLOW_WAYPOINT_RECORDING(p0: types.Any, p1: [*c]types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(529552391231721339)), p0, p1, p2, p3, p4);
    }

    pub fn IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_PED(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(16157577551664225124, p0);
    }

    pub fn GET_PED_WAYPOINT_PROGRESS(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(2819441002312491156)), p0);
    }

    pub fn GET_PED_WAYPOINT_DISTANCE(p0: types.Any) f32 {
        return nativeCaller.invoke1(16620666118384589765, p0);
    }

    pub fn SET_PED_WAYPOINT_ROUTE_OFFSET(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) types.Any {
        return nativeCaller.invoke4(17120681420994176180, p0, p1, p2, p3);
    }

    pub fn GET_WAYPOINT_DISTANCE_ALONG_ROUTE(p0: [*c]types.Any, p1: types.Any) f32 {
        return nativeCaller.invoke2(11941128409463383191, p0, p1);
    }

    pub fn WAYPOINT_PLAYBACK_GET_IS_PAUSED(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8075927920486318539)), p0);
    }

    pub fn WAYPOINT_PLAYBACK_PAUSE(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(1095541594788396757)), p0, p1, p2);
    }

    pub fn WAYPOINT_PLAYBACK_RESUME(p0: types.Any, p1: windows.BOOL, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(2616433914101923117)), p0, p1, p2, p3);
    }

    pub fn WAYPOINT_PLAYBACK_OVERRIDE_SPEED(p0: types.Any, p1: f32, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(9042431214974701189)), p0, p1, p2);
    }

    pub fn WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7321120390089869312)), p0);
    }

    pub fn USE_WAYPOINT_RECORDING_AS_ASSISTED_MOVEMENT_ROUTE(p0: [*c]types.Any, p1: windows.BOOL, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(6500167120046822837)), p0, p1, p2, p3);
    }

    pub fn WAYPOINT_PLAYBACK_START_AIMING_AT_PED(p0: types.Any, p1: types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2369791238929489193)), p0, p1, p2);
    }

    pub fn WAYPOINT_PLAYBACK_START_AIMING_AT_COORD(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(9901234207769680051, p0, p1, p2, p3, p4);
    }

    pub fn _0xE70BA7B90F8390DC(p0: types.Any, p1: types.Any, p2: windows.BOOL, p3: types.Any) void {
        _ = nativeCaller.invoke4(16648584860776239324, p0, p1, p2, p3);
    }

    pub fn WAYPOINT_PLAYBACK_START_SHOOTING_AT_COORD(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: windows.BOOL, p5: types.Any) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(394669491769685617)), p0, p1, p2, p3, p4, p5);
    }

    pub fn WAYPOINT_PLAYBACK_STOP_AIMING_OR_SHOOTING(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5183537896819843818)), p0);
    }

    pub fn ASSISTED_MOVEMENT_REQUEST_ROUTE(route: [*c]u8) void {
        _ = nativeCaller.invoke1(9327632773940614266, route);
    }

    pub fn ASSISTED_MOVEMENT_REMOVE_ROUTE(route: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3839410373541067051)), route);
    }

    pub fn ASSISTED_MOVEMENT_IS_ROUTE_LOADED(route: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6987796862537430849)), route);
    }

    pub fn ASSISTED_MOVEMENT_SET_ROUTE_PROPERTIES(route: [*c]u8, props: c_int) void {
        _ = nativeCaller.invoke2(15348317526569659931, route, props);
    }

    pub fn ASSISTED_MOVEMENT_OVERRIDE_LOAD_DISTANCE_THIS_FRAME(dist: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1410850791483177234)), dist);
    }

    pub fn TASK_VEHICLE_FOLLOW_WAYPOINT_RECORDING(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: f32, p8: windows.BOOL, p9: f32) void {
        _ = nativeCaller.invoke10(@as(u64, @intCast(3540949326590965741)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_VEHICLE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(17659539119890073228, p0);
    }

    pub fn GET_VEHICLE_WAYPOINT_PROGRESS(p0: types.Any) types.Any {
        return nativeCaller.invoke1(10963116061220069721, p0);
    }

    pub fn GET_VEHICLE_WAYPOINT_TARGET_POINT(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(4713969928189664189)), p0);
    }

    pub fn VEHICLE_WAYPOINT_PLAYBACK_PAUSE(p0: types.Any) void {
        _ = nativeCaller.invoke1(9966020413104745413, p0);
    }

    pub fn VEHICLE_WAYPOINT_PLAYBACK_RESUME(p0: types.Any) void {
        _ = nativeCaller.invoke1(15854074397342684306, p0);
    }

    pub fn VEHICLE_WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6695486673738041699)), p0);
    }

    pub fn VEHICLE_WAYPOINT_PLAYBACK_OVERRIDE_SPEED(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1305768549647921623)), p0, p1);
    }

    pub fn TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(10435426795485601129, ped, toggle);
    }

    pub fn TASK_FORCE_MOTION_STATE(ped: types.Ped, state: types.Hash, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5694078366121924523)), ped, state, p2);
    }

    pub fn _0x2D537BA194896636(ped: types.Ped, task: [*c]u8, multiplier: f32, p3: windows.BOOL, animDict: [*c]u8, flags: c_int) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(3266090088685725238)), ped, task, multiplier, p3, animDict, flags);
    }

    pub fn _0xD5B35BEA41919ACB(ped: types.Ped, p1: [*c]u8, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: types.Any, p9: f32, p10: windows.BOOL, animDict: [*c]u8, flags: c_int) void {
        _ = nativeCaller.invoke13(15398752612590394059, ped, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, animDict, flags);
    }

    pub fn _0x921CE12C489C4C41(PlayerID: c_int) windows.BOOL {
        return nativeCaller.invoke1(10528537609198390337, PlayerID);
    }

    pub fn _0x30ED88D5E0C56A37(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3525624535481412151)), p0);
    }

    pub fn _0xD01015C7316AE176(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(14992507104788144502, p0, p1);
    }

    pub fn _0xAB13A5565480B6D9(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(12327378395246671577, p0, p1);
    }

    pub fn _0x717E4D1F2048376D(p0: types.Ped) [*c]u8 {
        return nativeCaller.invoke1(@as(u64, @intCast(8178058769432328045)), p0);
    }

    pub fn _0xD5BB4025AE449A4E(p0: types.Ped, p1: [*c]u8, p2: f32) void {
        _ = nativeCaller.invoke3(15400973881305242190, p0, p1, p2);
    }

    pub fn _0xB0A6CFD2C69C1088(p0: types.Ped, p1: [*c]types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(12729089900991484040, p0, p1, p2);
    }

    pub fn _0xA7FFBA498E4AAF67(p0: types.Any, p1: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(12105599148477820775, p0, p1);
    }

    pub fn _0xB4F47213DF45A64C(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(13039172250820257356, p0, p1);
    }

    pub fn IS_MOVE_BLEND_RATIO_STILL(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3791159752754452828)), ped);
    }

    pub fn IS_MOVE_BLEND_RATIO_WALKING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(17380441814118525215, ped);
    }

    pub fn IS_MOVE_BLEND_RATIO_RUNNING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(15337117846544689465, ped);
    }

    pub fn IS_MOVE_BLEND_RATIO_SPRINTING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2639863049524614370)), ped);
    }

    pub fn IS_PED_STILL(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(12405487600806068608, ped);
    }

    pub fn IS_PED_WALKING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(16018204685783205658, ped);
    }

    pub fn IS_PED_RUNNING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(14206728153055832226, ped);
    }

    pub fn IS_PED_SPRINTING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6333283514708902248)), ped);
    }

    pub fn IS_PED_STRAFING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(16454885448303803913, ped);
    }

    pub fn TASK_SYNCHRONIZED_SCENE(ped: types.Ped, scene: types.Any, animDictionary: [*c]u8, animationName: [*c]u8, p4: f32, p5: f32, p6: types.Any, p7: types.Any, p8: f32, p9: types.Any) void {
        _ = nativeCaller.invoke10(17197321818494048340, ped, scene, animDictionary, animationName, p4, p5, p6, p7, p8, p9);
    }

    pub fn TASK_SWEEP_AIM_ENTITY(ped: types.Ped, anim: [*c]u8, p2: [*c]u8, p3: [*c]u8, p4: [*c]u8, p5: c_int, vehicle: types.Vehicle, p7: f32, p8: f32) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(2326038982017040474)), ped, anim, p2, p3, p4, p5, vehicle, p7, p8);
    }

    pub fn UPDATE_TASK_SWEEP_AIM_ENTITY(ped: types.Ped, entity: types.Entity) void {
        _ = nativeCaller.invoke2(16471702047283889331, ped, entity);
    }

    pub fn TASK_SWEEP_AIM_POSITION(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any, p4: [*c]types.Any, p5: types.Any, p6: f32, p7: f32, p8: f32, p9: f32, p10: f32) void {
        _ = nativeCaller.invoke11(@as(u64, @intCast(8862679292048050130)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
    }

    pub fn UPDATE_TASK_SWEEP_AIM_POSITION(p0: types.Any, p1: f32, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(13479388600682422212, p0, p1, p2, p3);
    }

    pub fn TASK_ARREST_PED(ped: types.Ped, target: types.Ped) void {
        _ = nativeCaller.invoke2(17562252433449906865, ped, target);
    }

    pub fn IS_PED_RUNNING_ARREST_TASK(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4451006101258455776)), ped);
    }

    pub fn IS_PED_BEING_ARRESTED(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(10421504610366576264, ped);
    }

    pub fn UNCUFF_PED(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7440068821593357391)), ped);
    }

    pub fn IS_PED_CUFFED(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8423237306564019845)), ped);
    }
};

pub const GAMEPLAY = struct {
    pub fn GET_ALLOCATED_STACK_SIZE() c_int {
        return nativeCaller.invoke0(10033076774007577442);
    }

    pub fn _GET_FREE_STACK_SLOTS_COUNT(stackSize: c_int) c_int {
        return nativeCaller.invoke1(18351349330601704463, stackSize);
    }

    pub fn SET_RANDOM_SEED(time: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4921758165350085612)), time);
    }

    pub fn SET_TIME_SCALE(time: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2107831375318018078)), time);
    }

    pub fn SET_MISSION_FLAG(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(14136832564121365875, toggle);
    }

    pub fn GET_MISSION_FLAG() windows.BOOL {
        return nativeCaller.invoke0(11762519102602810782);
    }

    pub fn SET_RANDOM_EVENT_FLAG(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(10887776491286634840, p0);
    }

    pub fn GET_RANDOM_EVENT_FLAG() types.Any {
        return nativeCaller.invoke0(15192188682518992817);
    }

    pub fn _0x24DA7D7667FD7B09() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2655572877792606985)));
    }

    pub fn _0x4DCDF92BF64236CD(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5606411078356580045)), p0, p1);
    }

    pub fn _0x31125FD509D9043F(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3535994026037150783)), p0);
    }

    pub fn _0xEBD3205A207939ED(p0: types.Any) void {
        _ = nativeCaller.invoke1(16992961390462974445, p0);
    }

    pub fn _0x97E7E2C04245115B(p0: types.Any) void {
        _ = nativeCaller.invoke1(10945966734720700763, p0);
    }

    pub fn _0xEB078CA2B5E82ADD(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(16935659554214521565, p0, p1);
    }

    pub fn _0x703CC7F60CBB2B57(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8087558890440043351)), p0);
    }

    pub fn _0x8951EB9C6906D3C8() void {
        _ = nativeCaller.invoke0(9894948913319171016);
    }

    pub fn _0xBA4B8D83BDC75551(p0: types.Any) void {
        _ = nativeCaller.invoke1(13423978711272084817, p0);
    }

    pub fn _0xE8B9C0EC9E183F35() types.Any {
        return nativeCaller.invoke0(16769646809987956533);
    }

    pub fn _0x65D2EBB47E1CEC21(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7337185903382424609)), p0);
    }

    pub fn _0x6F2135B6129620C1(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8007740668553601217)), p0);
    }

    pub fn _0x8D74E26F54B4E5C3(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(10193020824436663747, p0);
    }

    pub fn _0xB335F761606DB47C(p0: [*c]types.Any, p1: [*c]types.Any, p2: types.Any, p3: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke4(12913499504156456060, p0, p1, p2, p3);
    }

    pub fn _GET_CURRENT_WEATHER_TYPE() types.Hash {
        return nativeCaller.invoke0(@as(u64, @intCast(6218213562023429539)));
    }

    pub fn _GET_NEXT_WEATHER_TYPE() types.Hash {
        return nativeCaller.invoke0(@as(u64, @intCast(8147899912429302114)));
    }

    pub fn IS_PREV_WEATHER_TYPE(weatherType: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4968191145759412393)), weatherType);
    }

    pub fn IS_NEXT_WEATHER_TYPE(weatherType: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3434621646856581725)), weatherType);
    }

    pub fn SET_WEATHER_TYPE_PERSIST(weatherType: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8091143200275372431)), weatherType);
    }

    pub fn SET_WEATHER_TYPE_NOW_PERSIST(weatherType: [*c]u8) void {
        _ = nativeCaller.invoke1(17109505538612268170, weatherType);
    }

    pub fn SET_WEATHER_TYPE_NOW(weatherType: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3005176124459292809)), weatherType);
    }

    pub fn _SET_WEATHER_TYPE_OVER_TIME(weatherType: [*c]u8, time: f32) void {
        _ = nativeCaller.invoke2(18109050757229278655, weatherType, time);
    }

    pub fn SET_RANDOM_WEATHER_TYPE() void {
        _ = nativeCaller.invoke0(10017686195456081952);
    }

    pub fn CLEAR_WEATHER_TYPE_PERSIST() void {
        _ = nativeCaller.invoke0(14754798680422182133);
    }

    pub fn _GET_WEATHER_TYPE_TRANSITION(p0: [*c]types.Any, p1: [*c]types.Any, progress_or_time: [*c]f32) void {
        _ = nativeCaller.invoke3(17562886828200801299, p0, p1, progress_or_time);
    }

    pub fn _SET_WEATHER_TYPE_TRANSITION(sourceWeather: types.Hash, targetWeather: types.Hash, transitionTime: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6308545993921853964)), sourceWeather, targetWeather, transitionTime);
    }

    pub fn SET_OVERRIDE_WEATHER(weatherType: [*c]u8) void {
        _ = nativeCaller.invoke1(11834717031454399471, weatherType);
    }

    pub fn CLEAR_OVERRIDE_WEATHER() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3714676070527602768)));
    }

    pub fn _0xB8F87EAD7533B176(p0: f32) void {
        _ = nativeCaller.invoke1(13328542380663746934, p0);
    }

    pub fn _0xC3EAD29AB273ECE8(p0: f32) void {
        _ = nativeCaller.invoke1(14117327543806979304, p0);
    }

    pub fn _0xA7A1127490312C36(p0: f32) void {
        _ = nativeCaller.invoke1(12078955967429028918, p0);
    }

    pub fn _0x31727907B2C43C55(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3563043329174420565)), p0);
    }

    pub fn _0x405591EC8FD9096D(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4635771836659468653)), p0);
    }

    pub fn _0xF751B16FB32ABC1D(p0: f32) void {
        _ = nativeCaller.invoke1(17821220293787171869, p0);
    }

    pub fn _0xB3E6360DDE733E82(p0: f32) void {
        _ = nativeCaller.invoke1(12963108010627120770, p0);
    }

    pub fn _0x7C9C0B1EEB1F9072(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8979063984491565170)), p0);
    }

    pub fn _0x6216B116083A7CB4(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7068031373390019764)), p0);
    }

    pub fn _0x9F5E6BB6B34540DA(p0: f32) void {
        _ = nativeCaller.invoke1(11483734532277223642, p0);
    }

    pub fn _0xB9854DFDE0D833D6(p0: f32) void {
        _ = nativeCaller.invoke1(13368176821713515478, p0);
    }

    pub fn _0xC54A08C85AE4D410(p0: f32) void {
        _ = nativeCaller.invoke1(14216184830359819280, p0);
    }

    pub fn _0xA8434F1DFF41D6E7(p0: f32) void {
        _ = nativeCaller.invoke1(12124621612066658023, p0);
    }

    pub fn _0xC3C221ADDDE31A11(p0: f32) void {
        _ = nativeCaller.invoke1(14105874013513521681, p0);
    }

    pub fn SET_WIND(p0: f32) void {
        _ = nativeCaller.invoke1(12410360263898470681, p0);
    }

    pub fn SET_WIND_SPEED(speed: f32) void {
        _ = nativeCaller.invoke1(17152501161601681404, speed);
    }

    pub fn GET_WIND_SPEED() f32 {
        return nativeCaller.invoke0(12163972732459761426);
    }

    pub fn SET_WIND_DIRECTION(direction: f32) void {
        _ = nativeCaller.invoke1(16937831938213496104, direction);
    }

    pub fn GET_WIND_DIRECTION() types.Vector3 {
        return nativeCaller.invoke0(@as(u64, @intCast(2251817334770594010)));
    }

    pub fn _SET_RAIN_FX_INTENSITY(intensity: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7223253640658701714)), intensity);
    }

    pub fn GET_RAIN_LEVEL() types.Any {
        return nativeCaller.invoke0(10838297566594487795);
    }

    pub fn GET_SNOW_LEVEL() types.Any {
        return nativeCaller.invoke0(14233216051052274606);
    }

    pub fn _CREATE_LIGHTNING_THUNDER() void {
        _ = nativeCaller.invoke0(17727907597539985560);
    }

    pub fn _0x02DEAAC8F8EA7FE7(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(206790413051920359)), p0);
    }

    pub fn _0x11B56FBBF7224868(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1276048922525190248)), p0);
    }

    pub fn _SET_CLOUD_HAT_TRANSITION(type_: [*c]u8, transitionTime: f32) void {
        _ = nativeCaller.invoke2(18178853164908265419, type_, transitionTime);
    }

    pub fn _0xA74802FB8D0B7814(p0: [*c]u8, p1: f32) void {
        _ = nativeCaller.invoke2(12053887682083518484, p0, p1);
    }

    pub fn _CLEAR_CLOUD_HAT() void {
        _ = nativeCaller.invoke0(10772180462461942628);
    }

    pub fn _0xF36199225D6D8C86(p0: f32) void {
        _ = nativeCaller.invoke1(17537466796832820358, p0);
    }

    pub fn _0x20AC25E781AE4A84() f32 {
        return nativeCaller.invoke0(@as(u64, @intCast(2354298381451283076)));
    }

    pub fn GET_GAME_TIMER() types.Any {
        return nativeCaller.invoke0(11300229656120296547);
    }

    pub fn GET_FRAME_TIME() f32 {
        return nativeCaller.invoke0(@as(u64, @intCast(1568387602608814839)));
    }

    pub fn _0xE599A503B3837E1B() f32 {
        return nativeCaller.invoke0(16544436141437451803);
    }

    pub fn GET_FRAME_COUNT() c_int {
        return nativeCaller.invoke0(18195108673376937714);
    }

    pub fn GET_RANDOM_FLOAT_IN_RANGE(startRange: f32, endRange: f32) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(3547962977077129165)), startRange, endRange);
    }

    pub fn GET_RANDOM_INT_IN_RANGE(startRange: c_int, endRange: c_int) c_int {
        return nativeCaller.invoke2(15362697152651844904, startRange, endRange);
    }

    pub fn GET_GROUND_Z_FOR_3D_COORD(x: f32, y: f32, z: f32, groundZ: [*c]f32, b: types.Any) windows.BOOL {
        return nativeCaller.invoke5(14485449809187343659, x, y, z, groundZ, b);
    }

    pub fn _0x8BDC7BFC57A81E76(X: f32, Y: f32, Z: f32, p3: [*c]f32, p4: [*c]types.Vector3) windows.BOOL {
        return nativeCaller.invoke5(10078066389880938102, X, Y, Z, p3, p4);
    }

    pub fn ASIN(p0: f32) f32 {
        return nativeCaller.invoke1(14430384276805901543, p0);
    }

    pub fn ACOS(p0: f32) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(2092125917621793974)), p0);
    }

    pub fn TAN(degrees: f32) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(7142997959761211025)), degrees);
    }

    pub fn ATAN(p0: f32) f32 {
        return nativeCaller.invoke1(12236695102160123491, p0);
    }

    pub fn ATAN2(p0: f32, p1: f32) f32 {
        return nativeCaller.invoke2(9883092181120606628, p0, p1);
    }

    pub fn GET_DISTANCE_BETWEEN_COORDS(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, p6: windows.BOOL) f32 {
        return nativeCaller.invoke7(17417496221515303250, x1, y1, z1, x2, y2, z2, p6);
    }

    pub fn GET_ANGLE_BETWEEN_2D_VECTORS(x1: f32, y1: f32, x2: f32, y2: f32) f32 {
        return nativeCaller.invoke4(@as(u64, @intCast(1760842301871889554)), x1, y1, x2, y2);
    }

    pub fn GET_HEADING_FROM_VECTOR_2D(dx: f32, dy: f32) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(3457474934040373542)), dx, dy);
    }

    pub fn _0x7F8F6405F4777AF6(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: windows.BOOL) f32 {
        return nativeCaller.invoke10(@as(u64, @intCast(9191675341225556726)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn _0x21C235BC64831E5A(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: windows.BOOL) types.Vector3 {
        return nativeCaller.invoke10(@as(u64, @intCast(2432565831989927514)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn _0xF56DFB7B61BE7276(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: f32, p10: f32, p11: f32, p12: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke13(17685067819093226102, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12);
    }

    pub fn SET_BIT(var_: [*c]c_int, bit: c_int) void {
        _ = nativeCaller.invoke2(10609753527953370320, var_, bit);
    }

    pub fn CLEAR_BIT(var_: [*c]c_int, bit: c_int) void {
        _ = nativeCaller.invoke2(16718648974139562643, var_, bit);
    }

    pub fn GET_HASH_KEY(value: [*c]u8) types.Hash {
        return nativeCaller.invoke1(15153829671144605900, value);
    }

    pub fn _0xF2F6A2FA49278625(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: [*c]types.Any, p10: [*c]types.Any, p11: [*c]types.Any, p12: [*c]types.Any) void {
        _ = nativeCaller.invoke13(17507359797302232613, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12);
    }

    pub fn IS_AREA_OCCUPIED(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: windows.BOOL, p7: windows.BOOL, p8: windows.BOOL, p9: windows.BOOL, p10: windows.BOOL, p11: types.Any, p12: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke13(11969246150199653742, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12);
    }

    pub fn IS_POSITION_OCCUPIED(p0: f32, p1: f32, p2: f32, p3: f32, p4: windows.BOOL, p5: windows.BOOL, p6: windows.BOOL, p7: windows.BOOL, p8: windows.BOOL, p9: types.Any, p10: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke11(12523920530176275245, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
    }

    pub fn IS_POINT_OBSCURED_BY_A_MISSION_ENTITY(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: types.Any) windows.BOOL {
        return nativeCaller.invoke7(16523179938161861005, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn CLEAR_AREA(X: f32, Y: f32, Z: f32, radius: f32, p4: windows.BOOL, p5: windows.BOOL, p6: windows.BOOL, p7: windows.BOOL) void {
        _ = nativeCaller.invoke8(11920748883847386016, X, Y, Z, radius, p4, p5, p6, p7);
    }

    pub fn _0x957838AAF91BD12D(x: f32, y: f32, z: f32, radius: f32, p4: windows.BOOL, p5: windows.BOOL, p6: windows.BOOL, p7: windows.BOOL) void {
        _ = nativeCaller.invoke8(10770420815831486765, x, y, z, radius, p4, p5, p6, p7);
    }

    pub fn CLEAR_AREA_OF_VEHICLES(x: f32, y: f32, z: f32, radius: f32, p4: windows.BOOL, p5: windows.BOOL, p6: windows.BOOL, p7: windows.BOOL, p8: windows.BOOL) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(128275295070891702)), x, y, z, radius, p4, p5, p6, p7, p8);
    }

    pub fn CLEAR_ANGLED_AREA_OF_VEHICLES(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: windows.BOOL, p8: windows.BOOL, p9: windows.BOOL, p10: windows.BOOL, p11: windows.BOOL) void {
        _ = nativeCaller.invoke12(@as(u64, @intCast(1286680396691581098)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
    }

    pub fn CLEAR_AREA_OF_OBJECTS(x: f32, y: f32, z: f32, radius: f32, flag: c_int) void {
        _ = nativeCaller.invoke5(15968527570113953627, x, y, z, radius, flag);
    }

    pub fn CLEAR_AREA_OF_PEDS(x: f32, y: f32, z: f32, radius: f32, unk: windows.BOOL) void {
        _ = nativeCaller.invoke5(13705013785195228249, x, y, z, radius, unk);
    }

    pub fn CLEAR_AREA_OF_COPS(x: f32, y: f32, z: f32, radius: f32, unk: windows.BOOL) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(358313864965191821)), x, y, z, radius, unk);
    }

    pub fn CLEAR_AREA_OF_PROJECTILES(x: f32, y: f32, z: f32, radius: f32, unk: windows.BOOL) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(728660689210954150)), x, y, z, radius, unk);
    }

    pub fn _0x7EC6F9A478A6A512() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(9135263378961769746)));
    }

    pub fn SET_SAVE_MENU_ACTIVE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14537467669149777783, p0);
    }

    pub fn _0x397BAA01068BAA96() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4142091203678808726)));
    }

    pub fn SET_CREDITS_ACTIVE(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(13346619697735426572, toggle);
    }

    pub fn _0xB51B9AB9EF81868C(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(13050194468614014604, p0);
    }

    pub fn _0x075F1D57402C93BA() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(531175541629031354)));
    }

    pub fn TERMINATE_ALL_SCRIPTS_WITH_THIS_NAME(scriptName: [*c]u8) void {
        _ = nativeCaller.invoke1(11369075285246167263, scriptName);
    }

    pub fn NETWORK_SET_SCRIPT_IS_SAFE_FOR_NETWORK_GAME() void {
        _ = nativeCaller.invoke0(10539472927263604816);
    }

    pub fn ADD_HOSPITAL_RESTART(x: f32, y: f32, z: f32, p3: f32, p4: types.Any) c_int {
        return nativeCaller.invoke5(@as(u64, @intCast(2253575497185647233)), x, y, z, p3, p4);
    }

    pub fn DISABLE_HOSPITAL_RESTART(hospitalIndex: c_int, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(14434978098343635880, hospitalIndex, toggle);
    }

    pub fn ADD_POLICE_RESTART(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any) types.Any {
        return nativeCaller.invoke5(@as(u64, @intCast(4983011394672786507)), p0, p1, p2, p3, p4);
    }

    pub fn DISABLE_POLICE_RESTART(policeIndex: c_int, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2533378064742448803)), policeIndex, toggle);
    }

    pub fn _0x706B5EDCAA7FA663(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8100672656602277475)), p0, p1, p2, p3);
    }

    pub fn _0xA2716D40842EAF79() void {
        _ = nativeCaller.invoke0(11705257030375616377);
    }

    pub fn _DISABLE_AUTOMATIC_RESPAWN(disableRespawn: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3182695371859369073)), disableRespawn);
    }

    pub fn IGNORE_NEXT_RESTART(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2449877097777288033)), toggle);
    }

    pub fn SET_FADE_OUT_AFTER_DEATH(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5339263777479621510)), toggle);
    }

    pub fn SET_FADE_OUT_AFTER_ARREST(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2164909536560850151)), toggle);
    }

    pub fn SET_FADE_IN_AFTER_DEATH_ARREST(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(15737497366831513362, toggle);
    }

    pub fn SET_FADE_IN_AFTER_LOAD(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(17570670087380241785, toggle);
    }

    pub fn REGISTER_SAVE_HOUSE(p0: f32, p1: f32, p2: f32, p3: f32, p4: [*c]types.Any, p5: types.Any, p6: types.Any) types.Any {
        return nativeCaller.invoke7(13866949435125058132, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn SET_SAVE_HOUSE(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5716348497048196028)), p0, p1, p2);
    }

    pub fn OVERRIDE_SAVE_HOUSE(p0: windows.BOOL, p1: f32, p2: f32, p3: f32, p4: f32, p5: windows.BOOL, p6: f32, p7: f32) windows.BOOL {
        return nativeCaller.invoke8(@as(u64, @intCast(1252821528711679722)), p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn _0xA4A0065E39C9F25C(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) types.Any {
        return nativeCaller.invoke4(11862488420260115036, p0, p1, p2, p3);
    }

    pub fn DO_AUTO_SAVE() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5831786413828533845)));
    }

    pub fn _0x6E04F06094C87047() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7927725541682606151)));
    }

    pub fn IS_AUTO_SAVE_IN_PROGRESS() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(7576188390707304864)));
    }

    pub fn _0x2107A3773771186D() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2380050660515190893)));
    }

    pub fn _0x06462A961E94B67C() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(452095636843837052)));
    }

    pub fn BEGIN_REPLAY_STATS(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(16205358990659894630, p0, p1);
    }

    pub fn _0x69FE6DC87BD2A5E9(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7637662725905229289)), p0);
    }

    pub fn END_REPLAY_STATS() void {
        _ = nativeCaller.invoke0(11690924755543172594);
    }

    pub fn _0xD642319C54AADEB6() types.Any {
        return nativeCaller.invoke0(15438957020084625078);
    }

    pub fn _0x5B1F2E327B6B6FE1() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6566017576083353569)));
    }

    pub fn _0x2B626A0150E4D449() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3126177645233230921)));
    }

    pub fn _0xDC9274A7EF6B2867() types.Any {
        return nativeCaller.invoke0(15893894299569039463);
    }

    pub fn _0x8098C8D6597AAE18(p0: types.Any) types.Any {
        return nativeCaller.invoke1(9266377056264564248, p0);
    }

    pub fn CLEAR_REPLAY_STATS() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1953068219433474645)));
    }

    pub fn _0x72DE52178C291CB5() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8277143426242780341)));
    }

    pub fn _0x44A0BDC559B35F6E() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4945161046163939182)));
    }

    pub fn _0xEB2104E905C6F2E9() types.Any {
        return nativeCaller.invoke0(16942828672015332073);
    }

    pub fn _0x2B5E102E4A42F2BF() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3124952982442144447)));
    }

    pub fn IS_MEMORY_CARD_IN_USE() windows.BOOL {
        return nativeCaller.invoke0(9977107226443598557);
    }

    pub fn SHOOT_SINGLE_BULLET_BETWEEN_COORDS(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, damage: c_int, p7: windows.BOOL, weaponHash: types.Hash, ownerPed: types.Ped, isAudible: windows.BOOL, isVisible: windows.BOOL, speed: f32) void {
        _ = nativeCaller.invoke13(9689024882534281004, x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isVisible, speed);
    }

    pub fn _0xE3A7742E0B7A2F8B(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, damage: c_int, p7: windows.BOOL, weaponHash: types.Hash, ownerPed: types.Ped, isNotAudible: windows.BOOL, isInvisible: windows.BOOL, speed: f32, entity: types.Entity) void {
        _ = nativeCaller.invoke14(16404207908830195595, x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isNotAudible, isInvisible, speed, entity);
    }

    pub fn _0xBFE5756E7407064A(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, damage: c_int, p7: windows.BOOL, weaponHash: types.Hash, ownerPed: types.Ped, isAudible: windows.BOOL, isInvisible: windows.BOOL, speed: f32, entity: types.Entity, p14: windows.BOOL, p15: windows.BOOL, p16: windows.BOOL, p17: windows.BOOL) void {
        _ = nativeCaller.invoke18(13827587348164445770, x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity, p14, p15, p16, p17);
    }

    pub fn GET_MODEL_DIMENSIONS(modelHash: types.Hash, minimum: [*c]types.Vector3, maximum: [*c]types.Vector3) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(281707892607355002)), modelHash, minimum, maximum);
    }

    pub fn SET_FAKE_WANTED_LEVEL(fakeWantedLevel: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1465062155054416227)), fakeWantedLevel);
    }

    pub fn _0x4C9296CBCD1B971E() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5517638295545943838)));
    }

    pub fn IS_BIT_SET(value: c_int, bit: c_int) windows.BOOL {
        return nativeCaller.invoke2(12187209542167523375, value, bit);
    }

    pub fn USING_MISSION_CREATOR(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(17386279386545571566, toggle);
    }

    pub fn _0xDEA36202FC3382DF(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(16042774062584529631, p0);
    }

    pub fn SET_MINIGAME_IN_PROGRESS(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1864505033887250523)), toggle);
    }

    pub fn IS_MINIGAME_IN_PROGRESS() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(3119329762210804856)));
    }

    pub fn IS_THIS_A_MINIGAME_SCRIPT() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(8876865746910642328)));
    }

    pub fn IS_SNIPER_INVERTED() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(7035250983925701156)));
    }

    pub fn _0xD3D15555431AB793() types.Any {
        return nativeCaller.invoke0(15263074436821727123);
    }

    pub fn GET_PROFILE_SETTING(profileSetting: c_int) c_int {
        return nativeCaller.invoke1(14161849555513669521, profileSetting);
    }

    pub fn ARE_STRINGS_EQUAL(string1: [*c]u8, string2: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(887595790686087826)), string1, string2);
    }

    pub fn COMPARE_STRINGS(str1: [*c]u8, str2: [*c]u8, matchCase: windows.BOOL, maxLength: c_int) c_int {
        return nativeCaller.invoke4(@as(u64, @intCast(2176488828314497259)), str1, str2, matchCase, maxLength);
    }

    pub fn ABSI(value: c_int) c_int {
        return nativeCaller.invoke1(17353243276582801287, value);
    }

    pub fn ABSF(value: f32) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(8346714922768581461)), value);
    }

    pub fn IS_SNIPER_BULLET_IN_AREA(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) windows.BOOL {
        return nativeCaller.invoke6(18373825678050619685, x1, y1, z1, x2, y2, z2);
    }

    pub fn IS_PROJECTILE_IN_AREA(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, unknown: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke7(@as(u64, @intCast(5940433707723179000)), x1, y1, z1, x2, y2, z2, unknown);
    }

    pub fn IS_PROJECTILE_TYPE_IN_AREA(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, type_: c_int, p7: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke8(@as(u64, @intCast(3318523262566943341)), x1, y1, z1, x2, y2, z2, type_, p7);
    }

    pub fn IS_PROJECTILE_TYPE_IN_ANGLED_AREA(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: types.Any, p8: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke9(17346759931086364320, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn _0x34318593248C8FB2(p0: f32, p1: f32, p2: f32, p3: types.Any, p4: f32, p5: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(3760934030850953138)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x8D7A43EC6A5FEA45(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any) types.Any {
        return nativeCaller.invoke9(10194535389182552645, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn _0xDFB4138EEFED7B81(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) types.Any {
        return nativeCaller.invoke5(16119530470897449857, p0, p1, p2, p3, p4);
    }

    pub fn _0x82FDE6A57EE4EE44(ped: types.Ped, weaponhash: types.Hash, p2: f32, p3: f32, p4: f32, p5: f32) types.Any {
        return nativeCaller.invoke6(9438953992511352388, ped, weaponhash, p2, p3, p4, p5);
    }

    pub fn IS_BULLET_IN_ANGLED_AREA(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke8(@as(u64, @intCast(1912727178083218551)), p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn IS_BULLET_IN_AREA(p0: f32, p1: f32, p2: f32, p3: f32, p4: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(4548674766278827039)), p0, p1, p2, p3, p4);
    }

    pub fn IS_BULLET_IN_BOX(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke7(16001128347410330449, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn HAS_BULLET_IMPACTED_IN_AREA(p0: f32, p1: f32, p2: f32, p3: f32, p4: windows.BOOL, p5: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke6(10984469687502965141, p0, p1, p2, p3, p4, p5);
    }

    pub fn HAS_BULLET_IMPACTED_IN_BOX(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: windows.BOOL, p7: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke8(15892179976513618836, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn IS_ORBIS_VERSION() windows.BOOL {
        return nativeCaller.invoke0(12045933518223659422);
    }

    pub fn IS_DURANGO_VERSION() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(5591266057893987373)));
    }

    pub fn IS_XBOX360_VERSION() windows.BOOL {
        return nativeCaller.invoke0(17735205353054153373);
    }

    pub fn IS_PS3_VERSION() windows.BOOL {
        return nativeCaller.invoke0(14745074541249205954);
    }

    pub fn IS_PC_VERSION() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(5237464558608994872)));
    }

    pub fn IS_AUSSIE_VERSION() windows.BOOL {
        return nativeCaller.invoke0(11464253468675555336);
    }

    pub fn IS_STRING_NULL(string: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(17450160236712865894, string);
    }

    pub fn IS_STRING_NULL_OR_EMPTY(string: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(14556807627007080597, string);
    }

    pub fn STRING_TO_INT(string: [*c]u8, outInteger: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(6511995047536145796)), string, outInteger);
    }

    pub fn SET_BITS_IN_RANGE(var_: [*c]c_int, rangeStart: c_int, rangeEnd: c_int, p3: c_int) void {
        _ = nativeCaller.invoke4(10299870978336711149, var_, rangeStart, rangeEnd, p3);
    }

    pub fn GET_BITS_IN_RANGE(var_: c_int, rangeStart: c_int, rangeEnd: c_int) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(5986841242682558778)), var_, rangeStart, rangeEnd);
    }

    pub fn ADD_STUNT_JUMP(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: f32, p10: f32, p11: f32, p12: f32, p13: f32, p14: f32, p15: types.Any, p16: types.Any) types.Any {
        return nativeCaller.invoke17(@as(u64, @intCast(1916613292774941452)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16);
    }

    pub fn ADD_STUNT_JUMP_ANGLED(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: f32, p10: f32, p11: f32, p12: f32, p13: f32, p14: f32, p15: f32, p16: f32, p17: types.Any, p18: types.Any) types.Any {
        return nativeCaller.invoke19(13539465364927548607, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18);
    }

    pub fn DELETE_STUNT_JUMP(p0: types.Any) void {
        _ = nativeCaller.invoke1(15875610902764826143, p0);
    }

    pub fn ENABLE_STUNT_JUMP_SET(p0: types.Any) void {
        _ = nativeCaller.invoke1(16386810654977581078, p0);
    }

    pub fn DISABLE_STUNT_JUMP_SET(p0: types.Any) void {
        _ = nativeCaller.invoke1(11900531937640925174, p0);
    }

    pub fn _0xD79185689F8FD5DF(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(15533343274177648095, p0);
    }

    pub fn IS_STUNT_JUMP_IN_PROGRESS() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(8808787365159830821)));
    }

    pub fn _0x2272B0A1343129F4() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(2482240551046425076)));
    }

    pub fn _0x996DD1E1E02F1008() types.Any {
        return nativeCaller.invoke0(11055723428323463176);
    }

    pub fn _0x6856EC3D35C81EA4() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7518456375581089444)));
    }

    pub fn CANCEL_STUNT_JUMP() void {
        _ = nativeCaller.invoke0(16624950805814097758);
    }

    pub fn SET_GAME_PAUSED(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6304215415132731153)), toggle);
    }

    pub fn SET_THIS_SCRIPT_CAN_BE_PAUSED(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(12265866338236823471, toggle);
    }

    pub fn SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(13367306888133146775, toggle);
    }

    pub fn _0x071E2A839DE82D90(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(512894152345136528)), p0, p1);
    }

    pub fn _0x557E43C447E700A8(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6160435850588389544)), p0);
    }

    pub fn _ENABLE_MP_DLC_MAPS(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(11218003581167595640, toggle);
    }

    pub fn _SET_UNK_MAP_FLAG(flag: c_int) void {
        _ = nativeCaller.invoke1(14263085750709084622, flag);
    }

    pub fn IS_FRONTEND_FADING() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(9125056660290447085)));
    }

    pub fn POPULATE_NOW() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8390974832148959038)));
    }

    pub fn GET_INDEX_OF_CURRENT_LEVEL() c_int {
        return nativeCaller.invoke0(14676500190617269500);
    }

    pub fn SET_GRAVITY_LEVEL(level: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8362644625630176081)), level);
    }

    pub fn START_SAVE_DATA(p0: [*c]types.Any, p1: types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(12202326723784243607, p0, p1, p2);
    }

    pub fn STOP_SAVE_DATA() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8422308071220143869)));
    }

    pub fn _0xA09F896CE912481F(p0: windows.BOOL) types.Any {
        return nativeCaller.invoke1(11574120668225226783, p0);
    }

    pub fn REGISTER_INT_TO_SAVE(p0: [*c]types.Any, name: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3803833428561200149)), p0, name);
    }

    pub fn _0xA735353C77334EA0(p0: [*c]types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(12048594911913791136, p0, p1);
    }

    pub fn REGISTER_ENUM_TO_SAVE(p0: [*c]types.Any, name: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1207803046896150689)), p0, name);
    }

    pub fn REGISTER_FLOAT_TO_SAVE(p0: [*c]types.Any, name: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8984332293923274427)), p0, name);
    }

    pub fn REGISTER_BOOL_TO_SAVE(p0: [*c]types.Any, name: [*c]u8) void {
        _ = nativeCaller.invoke2(14480219678871926177, p0, name);
    }

    pub fn REGISTER_TEXT_LABEL_TO_SAVE(p0: [*c]types.Any, name: [*c]u8) void {
        _ = nativeCaller.invoke2(17127509531294361135, p0, name);
    }

    pub fn _0x6F7794F28C6B2535(p0: [*c]types.Any, name: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8032052229897397557)), p0, name);
    }

    pub fn _0x48F069265A0E4BEC(p0: [*c]types.Any, name: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5255816378581928940)), p0, name);
    }

    pub fn _0x8269816F6CFD40F8(p0: [*c]types.Any, name: [*c]u8) void {
        _ = nativeCaller.invoke2(9397184413055140088, p0, name);
    }

    pub fn _0xFAA457EF263E8763(p0: [*c]types.Any, name: [*c]u8) void {
        _ = nativeCaller.invoke2(18060657090312963939, p0, name);
    }

    pub fn _START_SAVE_STRUCT(p0: [*c]types.Any, p1: c_int, structName: [*c]u8) void {
        _ = nativeCaller.invoke3(13795499829391780573, p0, p1, structName);
    }

    pub fn STOP_SAVE_STRUCT() void {
        _ = nativeCaller.invoke0(16940137024818224914);
    }

    pub fn _START_SAVE_ARRAY(p0: [*c]types.Any, p1: c_int, arrayName: [*c]u8) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6989118770651443101)), p0, p1, arrayName);
    }

    pub fn STOP_SAVE_ARRAY() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(307774835641838564)));
    }

    pub fn _0xDC0F817884CDD856(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(15857035167618947158, p0, p1);
    }

    pub fn _0x9B2BD3773123EA2F(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(11181263008756394543, p0, p1);
    }

    pub fn _0xEB4A0C2D56441717(p0: c_int) c_int {
        return nativeCaller.invoke1(16954377136050018071, p0);
    }

    pub fn CREATE_INCIDENT(p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any) types.Any {
        return nativeCaller.invoke7(@as(u64, @intCast(4578239628062247655)), p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn CREATE_INCIDENT_WITH_ENTITY(p0: c_int, p1: types.Entity, p2: c_int, p3: f32, p4: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(403129834911911520)), p0, p1, p2, p3, p4);
    }

    pub fn DELETE_INCIDENT(incidentId: [*c]c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6155324075688698375)), incidentId);
    }

    pub fn IS_INCIDENT_VALID(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(14464546474843291306, p0);
    }

    pub fn _0xB08B85D860E7BA3C(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(12721408736823327292, p0, p1, p2);
    }

    pub fn _0xD261BA3E7E998072(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(15159602598280527986, p0, p1);
    }

    pub fn FIND_SPAWN_POINT_IN_DIRECTION(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, distance: f32, spawnPoint: [*c]types.Vector3) windows.BOOL {
        return nativeCaller.invoke8(@as(u64, @intCast(7526889474430343538)), x1, y1, z1, x2, y2, z2, distance, spawnPoint);
    }

    pub fn _0x67F6413D3220E18D(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any) types.Any {
        return nativeCaller.invoke9(@as(u64, @intCast(7491246761267224973)), p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn _0x1327E2FE9746BAEE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1380321393899911918)), p0);
    }

    pub fn _0xB129E447A2EDA4BF(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12765985615085675711, p0, p1);
    }

    pub fn _0x32C7A7E8C43A1F80(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: windows.BOOL, p7: windows.BOOL) types.Any {
        return nativeCaller.invoke8(@as(u64, @intCast(3659077840428212096)), p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn _0xE6869BECDD8F2403(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(16611135717234385923, p0, p1);
    }

    pub fn ENABLE_TENNIS_MODE(ped: types.Ped, toggle: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2927422500758616230)), ped, toggle, p2);
    }

    pub fn IS_TENNIS_MODE(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6725134082481130559)), ped);
    }

    pub fn _0xE266ED23311F24D4(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: f32, p4: f32, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(16313987435599963348, p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x17DF68D720AA77F8(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1720208855854118904)), p0);
    }

    pub fn _0x19BFED045C647C49(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1855462174485675081)), p0);
    }

    pub fn _0xE95B0C7D5BA3B96B(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(16815047366265780587, p0);
    }

    pub fn _0x8FA9C42FC5D7C64B(p0: types.Any, p1: types.Any, p2: f32, p3: f32, p4: f32, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(10352020927949555275, p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x54F157E0336A3822(p0: types.Any, p1: [*c]u8, p2: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6120769989020104738)), p0, p1, p2);
    }

    pub fn _0xD10F442036302D50(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(15064334183716367696, p0, p1, p2);
    }

    pub fn RESET_DISPATCH_IDEAL_SPAWN_DISTANCE() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8622216433203350037)));
    }

    pub fn SET_DISPATCH_IDEAL_SPAWN_DISTANCE(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8063133996428612643)), p0);
    }

    pub fn SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4969664746815173245)), p0, p1);
    }

    pub fn SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS_MULTIPLIER(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5225177057813206481)), p0, p1);
    }

    pub fn _0x918C7B2D2FF3928B(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32) types.Any {
        return nativeCaller.invoke7(10487893066247279243, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn _0x2D4259F1FEB81DA9(p0: f32, p1: f32, p2: f32, p3: f32) types.Any {
        return nativeCaller.invoke4(@as(u64, @intCast(3261267976065129897)), p0, p1, p2, p3);
    }

    pub fn REMOVE_DISPATCH_SPAWN_BLOCKING_AREA(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2759231624002622373)), p0);
    }

    pub fn RESET_DISPATCH_SPAWN_BLOCKING_AREAS() void {
        _ = nativeCaller.invoke0(12428806168733018741);
    }

    pub fn _0xD9F692D349249528() void {
        _ = nativeCaller.invoke0(15705902186664072488);
    }

    pub fn _0xE532EC1A63231B4F(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(16515522381597580111, p0, p1);
    }

    pub fn _0xB8721407EE9C3FF6(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(13290707474624298998, p0, p1, p2);
    }

    pub fn _0xB3CD58CCA6CDA852() void {
        _ = nativeCaller.invoke0(12956109339009853522);
    }

    pub fn _0x2587A48BC88DFADF(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2704311021531429599)), p0);
    }

    pub fn _0xCA78CFA0366592FE(p0: windows.BOOL, windowTitle: [*c]u8, p2: [*c]types.Any, defaultText: [*c]u8, defaultConcat1: [*c]u8, defaultConcat2: [*c]u8, defaultConcat3: [*c]u8, defaultConcat4: [*c]u8, defaultConcat5: [*c]u8, defaultConcat6: [*c]u8, defaultConcat7: [*c]u8, maxInputLength: c_int) void {
        _ = nativeCaller.invoke12(14589639279881065214, p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, defaultConcat4, defaultConcat5, defaultConcat6, defaultConcat7, maxInputLength);
    }

    pub fn DISPLAY_ONSCREEN_KEYBOARD(p0: windows.BOOL, windowTitle: [*c]u8, p2: [*c]u8, defaultText: [*c]u8, defaultConcat1: [*c]u8, defaultConcat2: [*c]u8, defaultConcat3: [*c]u8, maxInputLength: c_int) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(62068802110151670)), p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength);
    }

    pub fn UPDATE_ONSCREEN_KEYBOARD() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(933008831334139310)));
    }

    pub fn GET_ONSCREEN_KEYBOARD_RESULT() [*c]u8 {
        return nativeCaller.invoke0(9467323548894312007);
    }

    pub fn _0x3ED1438C1F5C6612(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4526473369584690706)), p0);
    }

    pub fn _0xA6A12939F16D85BE(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12006923410386814398, p0, p1);
    }

    pub fn _0x1EAE0A6E978894A2(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2210715937190483106)), p0, p1);
    }

    pub fn SET_EXPLOSIVE_AMMO_THIS_FRAME(player: types.Player) void {
        _ = nativeCaller.invoke1(11992085018254978299, player);
    }

    pub fn SET_FIRE_AMMO_THIS_FRAME(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1263150695653912820)), player);
    }

    pub fn SET_EXPLOSIVE_MELEE_THIS_FRAME(player: types.Player) void {
        _ = nativeCaller.invoke1(18382547445568245728, player);
    }

    pub fn SET_SUPER_JUMP_THIS_FRAME(player: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6341050950550703115)), player);
    }

    pub fn _0x6FDDF453C0C756EC() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8060867548616808172)));
    }

    pub fn _0xFB00CA71DA386228() void {
        _ = nativeCaller.invoke0(18086678693861155368);
    }

    pub fn _0x5AA3BEFA29F03AD4() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6531273866272062164)));
    }

    pub fn _0xE3D969D2785FFB5E() void {
        _ = nativeCaller.invoke0(16418270269239458654);
    }

    pub fn _RESET_LOCALPLAYER_STATE() void {
        _ = nativeCaller.invoke0(13883001127662981965);
    }

    pub fn _0x0A60017F841A54F2(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(747599185332294898)), p0, p1, p2, p3);
    }

    pub fn _0x1FF6BF9A63E5757F() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2303238929268438399)));
    }

    pub fn _0x1BB299305C3E8C13(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(1995826017863633939)), p0, p1, p2, p3);
    }

    pub fn _0x8EF5573A1F801A5C(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(10301235629828086364, p0, p1, p2);
    }

    pub fn _0x92790862E36C2ADA() void {
        _ = nativeCaller.invoke0(10554476422534802138);
    }

    pub fn _0xC7DB36C24634F52B() void {
        _ = nativeCaller.invoke0(14401164441476724011);
    }

    pub fn _0x437138B6A830166A() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4859727830066402922)));
    }

    pub fn _0x37DEB0AA183FB6D8() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4025849361513559768)));
    }

    pub fn _0xEA2F2061875EED90() types.Any {
        return nativeCaller.invoke0(16874741932035599760);
    }

    pub fn _0x3BBBD13E5041A79E() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4304263934447298462)));
    }

    pub fn _0xA049A5BE0F04F2F8() types.Any {
        return nativeCaller.invoke0(11549944955082699512);
    }

    pub fn _0x4750FC27570311EC() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5138884420723479020)));
    }

    pub fn _0x1B2366C3F2A5C8DF() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1955519654984534239)));
    }

    pub fn _FORCE_SOCIAL_CLUB_UPDATE() void {
        _ = nativeCaller.invoke0(16962968457331276562);
    }

    pub fn _0x14832BF2ABA53FC5() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1478073423969468357)));
    }

    pub fn _0xC79AE21974B01FB2() void {
        _ = nativeCaller.invoke0(14383056958920859570);
    }

    pub fn _0x684A41975F077262() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(7514891046611284578)));
    }

    pub fn _0xABB2FA71C83A1B72() types.Any {
        return nativeCaller.invoke0(12372226492937673586);
    }

    pub fn _0x4EBB7E87AA0DBED4(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5673267276741983956)), p0);
    }

    pub fn _0x9689123E3F213AA5() windows.BOOL {
        return nativeCaller.invoke0(10847221236054964901);
    }

    pub fn _0x9D8D44ADBBA61EF2(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11352805748639145714, p0);
    }

    pub fn _0x23227DF0B2115469() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2531724413268743273)));
    }

    pub fn _0xD10282B6E3751BA0() types.Any {
        return nativeCaller.invoke0(15060743825892121504);
    }
};

pub const AUDIO = struct {
    pub fn PLAY_PED_RINGTONE(ringtoneName: [*c]u8, ped: types.Ped, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(18006911401335853477, ringtoneName, ped, p2);
    }

    pub fn IS_PED_RINGTONE_PLAYING(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2201800761837236535)), p0);
    }

    pub fn STOP_PED_RINGTONE(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7807801664119263378)), p0);
    }

    pub fn IS_MOBILE_PHONE_CALL_ONGOING() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(8401415412829442636)));
    }

    pub fn _0xC8B1B2425604CDD0() types.Any {
        return nativeCaller.invoke0(14461535876444114384);
    }

    pub fn CREATE_NEW_SCRIPTED_CONVERSATION() void {
        _ = nativeCaller.invoke0(15188699854293085782);
    }

    pub fn ADD_LINE_TO_CONVERSATION(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: types.Any, p4: types.Any, p5: windows.BOOL, p6: windows.BOOL, p7: windows.BOOL, p8: windows.BOOL, p9: types.Any, p10: windows.BOOL, p11: windows.BOOL, p12: windows.BOOL) void {
        _ = nativeCaller.invoke13(14262783695077848646, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12);
    }

    pub fn ADD_PED_TO_CONVERSATION(p0: types.Any, p1: types.Any, p2: [*c]u8) void {
        _ = nativeCaller.invoke3(10797930671033112295, p0, p1, p2);
    }

    pub fn _0x33E3C6C6F2F0B506(p0: types.Any, p1: f32, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(3739050673429329158)), p0, p1, p2, p3);
    }

    pub fn _0x892B6AB8F33606F5(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(9884111149781616373, p0, p1);
    }

    pub fn SET_MICROPHONE_POSITION(p0: windows.BOOL, x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, x3: f32, y3: f32, z3: f32) void {
        _ = nativeCaller.invoke10(13163618112166545250, p0, x1, y1, z1, x2, y2, z2, x3, y3, z3);
    }

    pub fn _0x0B568201DD99F0EB(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(816983326938755307)), p0);
    }

    pub fn _0x61631F5DF50D1C34(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7017487132777061428)), p0);
    }

    pub fn START_SCRIPT_PHONE_CONVERSATION(p0: windows.BOOL, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2679183906295232117)), p0, p1);
    }

    pub fn PRELOAD_SCRIPT_PHONE_CONVERSATION(p0: windows.BOOL, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6918862395442375402)), p0, p1);
    }

    pub fn START_SCRIPT_CONVERSATION(p0: windows.BOOL, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(7716854381323604700)), p0, p1, p2, p3);
    }

    pub fn PRELOAD_SCRIPT_CONVERSATION(p0: windows.BOOL, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(4268477180684627335)), p0, p1, p2, p3);
    }

    pub fn START_PRELOADED_CONVERSATION() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2550192969488200581)));
    }

    pub fn _0xE73364DB90778FFA() types.Any {
        return nativeCaller.invoke0(16659770340757966842);
    }

    pub fn IS_SCRIPTED_CONVERSATION_ONGOING() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(1618283570897280573)));
    }

    pub fn IS_SCRIPTED_CONVERSATION_LOADED() windows.BOOL {
        return nativeCaller.invoke0(16072595822230333239);
    }

    pub fn GET_CURRENT_SCRIPTED_CONVERSATION_LINE() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5189087877674051930)));
    }

    pub fn PAUSE_SCRIPTED_CONVERSATION(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(9597361534365281042, p0);
    }

    pub fn RESTART_SCRIPTED_CONVERSATION() void {
        _ = nativeCaller.invoke0(11163060481669253548);
    }

    pub fn STOP_SCRIPTED_CONVERSATION(p0: windows.BOOL) types.Any {
        return nativeCaller.invoke1(15536837052699336378, p0);
    }

    pub fn SKIP_TO_NEXT_SCRIPTED_CONVERSATION_LINE() void {
        _ = nativeCaller.invoke0(10836784865951738624);
    }

    pub fn INTERRUPT_CONVERSATION(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any) void {
        _ = nativeCaller.invoke3(11536147665999638438, p0, p1, p2);
    }

    pub fn _0x8A694D7A68F8DC38(p0: types.Ped, p1: [*c]u8, p2: [*c]u8) void {
        _ = nativeCaller.invoke3(9973588037931162680, p0, p1, p2);
    }

    pub fn _0xAA19F5572C38B564(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(12257097615618389348, p0);
    }

    pub fn _0xB542DE8C3D1CB210(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(13061246563229938192, p0);
    }

    pub fn REGISTER_SCRIPT_WITH_AUDIO(p0: types.Any) void {
        _ = nativeCaller.invoke1(14334286158367002001, p0);
    }

    pub fn UNREGISTER_SCRIPT_WITH_AUDIO() void {
        _ = nativeCaller.invoke0(12133695624530130202);
    }

    pub fn REQUEST_MISSION_AUDIO_BANK(p0: [*c]u8, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(8306253829043839218)), p0, p1);
    }

    pub fn REQUEST_AMBIENT_AUDIO_BANK(p0: [*c]u8, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(18303473030733143449, p0, p1);
    }

    pub fn REQUEST_SCRIPT_AUDIO_BANK(p0: [*c]u8, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(3423943577717663365)), p0, p1);
    }

    pub fn HINT_AMBIENT_AUDIO_BANK(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(10343658073732034396, p0, p1);
    }

    pub fn HINT_SCRIPT_AUDIO_BANK(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(18102229875105383194, p0, p1);
    }

    pub fn RELEASE_MISSION_AUDIO_BANK() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1065429086337593735)));
    }

    pub fn RELEASE_AMBIENT_AUDIO_BANK() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7297900821373167933)));
    }

    pub fn RELEASE_NAMED_SCRIPT_AUDIO_BANK(audioBank: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8641588576275202416)), audioBank);
    }

    pub fn RELEASE_SCRIPT_AUDIO_BANK() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8803845475387808831)));
    }

    pub fn _0x19AF7ED9B9D23058() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1850837445463126104)));
    }

    pub fn _0x9AC92EED5E4793AB() void {
        _ = nativeCaller.invoke0(11153497549183620011);
    }

    pub fn GET_SOUND_ID() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(4828851653567843141)));
    }

    pub fn RELEASE_SOUND_ID(soundId: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3837005861822892282)), soundId);
    }

    pub fn PLAY_SOUND(soundId: c_int, soundName: [*c]u8, setName: [*c]u8, p3: windows.BOOL, p4: types.Any, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(9220157394528049453)), soundId, soundName, setName, p3, p4, p5);
    }

    pub fn PLAY_SOUND_FRONTEND(soundId: c_int, soundName: [*c]u8, setName: [*c]u8, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(7477453855356397301)), soundId, soundName, setName, p3);
    }

    pub fn _0xCADA5A0D0702381E(p0: [*c]u8, soundset: [*c]u8) void {
        _ = nativeCaller.invoke2(14617094552583026718, p0, soundset);
    }

    pub fn PLAY_SOUND_FROM_ENTITY(soundId: c_int, soundName: [*c]u8, entity: types.Entity, setName: [*c]u8, p4: windows.BOOL, p5: types.Any) void {
        _ = nativeCaller.invoke6(16600059863515181549, soundId, soundName, entity, setName, p4, p5);
    }

    pub fn PLAY_SOUND_FROM_COORD(soundId: c_int, soundName: [*c]u8, x: f32, y: f32, z: f32, setName: [*c]u8, p6: windows.BOOL, p7: types.Any, p8: windows.BOOL) void {
        _ = nativeCaller.invoke9(10197986523051753760, soundId, soundName, x, y, z, setName, p6, p7, p8);
    }

    pub fn STOP_SOUND(soundId: c_int) void {
        _ = nativeCaller.invoke1(11795143047108103093, soundId);
    }

    pub fn GET_NETWORK_ID_FROM_SOUND_ID(soundId: c_int) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(3306751126589651981)), soundId);
    }

    pub fn _0x75262FD12D0A1C84(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(8441487127002881156)), p0);
    }

    pub fn SET_VARIABLE_ON_SOUND(soundId: c_int, p1: [*c]types.Any, p2: f32) void {
        _ = nativeCaller.invoke3(12496135779187878326, soundId, p1, p2);
    }

    pub fn SET_VARIABLE_ON_STREAM(p0: [*c]u8, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3430960290047061881)), p0, p1);
    }

    pub fn OVERRIDE_UNDERWATER_STREAM(p0: [*c]types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(17485733166032374742, p0, p1);
    }

    pub fn _0x733ADF241531E5C2(p0: [*c]types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8303194209078339010)), p0, p1);
    }

    pub fn HAS_SOUND_FINISHED(soundId: c_int) windows.BOOL {
        return nativeCaller.invoke1(18211939454132455653, soundId);
    }

    pub fn _PLAY_AMBIENT_SPEECH1(ped: types.Ped, speechName: [*c]u8, speechParam: [*c]u8) void {
        _ = nativeCaller.invoke3(10233584479118828642, ped, speechName, speechParam);
    }

    pub fn _PLAY_AMBIENT_SPEECH2(ped: types.Ped, speechName: [*c]u8, speechParam: [*c]u8) void {
        _ = nativeCaller.invoke3(14309091921686936505, ped, speechName, speechParam);
    }

    pub fn _PLAY_AMBIENT_SPEECH_WITH_VOICE(p0: types.Ped, speechName: [*c]u8, voiceName: [*c]u8, speechParam: [*c]u8, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(3829013244756636440)), p0, speechName, voiceName, speechParam, p4);
    }

    pub fn _0xED640017ED337E45(p0: [*c]types.Any, p1: [*c]types.Any, p2: f32, p3: f32, p4: f32, p5: [*c]types.Any) void {
        _ = nativeCaller.invoke6(17105797387423809093, p0, p1, p2, p3, p4, p5);
    }

    pub fn OVERRIDE_TREVOR_RAGE(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1417901953124670078)), p0);
    }

    pub fn RESET_TREVOR_RAGE() void {
        _ = nativeCaller.invoke0(16682744453613688032);
    }

    pub fn SET_PLAYER_ANGRY(player: types.Player, IsAngry: windows.BOOL) void {
        _ = nativeCaller.invoke2(16871640547856543889, player, IsAngry);
    }

    pub fn PLAY_PAIN(painID: c_int, p1: f32, p2: c_int) void {
        _ = nativeCaller.invoke3(13590422653806206188, painID, p1, p2);
    }

    pub fn _0xD01005D2BA2EB778(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(14992489562141276024, p0);
    }

    pub fn _0xDDC635D5B3262C56(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(15980519519720713302, p0);
    }

    pub fn SET_AMBIENT_VOICE_NAME(ped: types.Ped, name: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7818360706947881051)), ped, name);
    }

    pub fn _0x40CF0D12D142A9E8(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4669965713077873128)), p0);
    }

    pub fn _0x7CDC8C3B89F661B3(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8997220342924992947)), p0, p1);
    }

    pub fn _0xA5342D390CDA41D6(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11904189438099079638, p0, p1);
    }

    pub fn _0x7A73D05A607734C7(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8823625181532992711)), p0);
    }

    pub fn STOP_CURRENT_PLAYING_AMBIENT_SPEECH(p0: types.Ped) void {
        _ = nativeCaller.invoke1(13312289524232936207, p0);
    }

    pub fn IS_AMBIENT_SPEECH_PLAYING(p0: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(10408602366793727917, p0);
    }

    pub fn IS_SCRIPTED_SPEECH_PLAYING(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(14743273960543126772, p0);
    }

    pub fn IS_ANY_SPEECH_PLAYING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8255223690533510857)), ped);
    }

    pub fn _0x49B99BF3FDA89A7A(p0: types.Any, p1: [*c]types.Any, p2: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(5312448707695254138)), p0, p1, p2);
    }

    pub fn IS_PED_IN_CURRENT_CONVERSATION(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(332865596560769548)), p0);
    }

    pub fn SET_PED_IS_DRUNK(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(10795923819931986826, p0, p1);
    }

    pub fn _0xEE066C7006C49C0A(p0: types.Any, p1: types.Any, p2: [*c]types.Any) void {
        _ = nativeCaller.invoke3(17151515459292797962, p0, p1, p2);
    }

    pub fn _0xC265DF9FB44A9FBD(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(14007848093023379389, p0);
    }

    pub fn SET_ANIMAL_MOOD(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(14742448247598603323, p0, p1);
    }

    pub fn IS_MOBILE_PHONE_RADIO_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(12924461877893738878);
    }

    pub fn SET_MOBILE_PHONE_RADIO_STATE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(13774378573840577503, p0);
    }

    pub fn GET_PLAYER_RADIO_STATION_INDEX() c_int {
        return nativeCaller.invoke0(16766751624649170067);
    }

    pub fn GET_PLAYER_RADIO_STATION_NAME() [*c]u8 {
        return nativeCaller.invoke0(17786742166479351043);
    }

    pub fn GET_RADIO_STATION_NAME(radioStation: c_int) [*c]u8 {
        return nativeCaller.invoke1(12866443377061439673, radioStation);
    }

    pub fn GET_PLAYER_RADIO_STATION_GENRE() types.Any {
        return nativeCaller.invoke0(11921478027720445163);
    }

    pub fn IS_RADIO_RETUNING() windows.BOOL {
        return nativeCaller.invoke0(11624255977718632037);
    }

    pub fn _0x0626A247D2405330() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(443220042696381232)));
    }

    pub fn _0xFF266D1D0EB1195D() void {
        _ = nativeCaller.invoke0(18385502500354595165);
    }

    pub fn _0xDD6BCF9E94425DF9() void {
        _ = nativeCaller.invoke0(15955074384889273849);
    }

    pub fn SET_RADIO_TO_STATION_NAME(radioStation: [*c]u8) void {
        _ = nativeCaller.invoke1(14312116532935479559, radioStation);
    }

    pub fn SET_VEH_RADIO_STATION(vehicle: types.Vehicle, radioStation: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1989465795936398022)), vehicle, radioStation);
    }

    pub fn _0xC1805D05E6D4FE10(p0: types.Any) void {
        _ = nativeCaller.invoke1(13943246726267993616, p0);
    }

    pub fn SET_EMITTER_RADIO_STATION(emitterName: [*c]u8, radioStation: [*c]u8) void {
        _ = nativeCaller.invoke2(12462994012102129927, emitterName, radioStation);
    }

    pub fn SET_STATIC_EMITTER_ENABLED(emitterName: [*c]u8, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4151524163803265259)), emitterName, toggle);
    }

    pub fn SET_RADIO_TO_STATION_INDEX(radioStation: c_int) void {
        _ = nativeCaller.invoke1(11968792548046558991, radioStation);
    }

    pub fn SET_FRONTEND_RADIO_ACTIVE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17866461894064860088, p0);
    }

    pub fn UNLOCK_MISSION_NEWS_STORY(p0: types.Any) void {
        _ = nativeCaller.invoke1(12782811667038416321, p0);
    }

    pub fn GET_NUMBER_OF_PASSENGER_VOICE_VARIATIONS(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(7414222364659619956)), p0);
    }

    pub fn GET_AUDIBLE_MUSIC_TRACK_TEXT_ID() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(5814594605652792411)));
    }

    pub fn PLAY_END_CREDITS_MUSIC(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14795288279680600320, p0);
    }

    pub fn SKIP_RADIO_FORWARD() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7916129512124750885)));
    }

    pub fn FREEZE_RADIO_STATION(radioStation: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3769294338740074691)), radioStation);
    }

    pub fn UNFREEZE_RADIO_STATION(radioStation: [*c]u8) void {
        _ = nativeCaller.invoke1(18158589894405624285, radioStation);
    }

    pub fn SET_RADIO_AUTO_UNFREEZE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(13955141577658083728, p0);
    }

    pub fn SET_INITIAL_PLAYER_STATION(radioStation: [*c]u8) void {
        _ = nativeCaller.invoke1(9833995800756988045, radioStation);
    }

    pub fn SET_USER_RADIO_CONTROL_ENABLED(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1869590208789261902)), p0);
    }

    pub fn SET_RADIO_TRACK(radioStation: [*c]u8, radioTrack: [*c]u8) void {
        _ = nativeCaller.invoke2(12940960428246098699, radioStation, radioTrack);
    }

    pub fn SET_VEHICLE_RADIO_LOUD(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(13506045344488295374, vehicle, toggle);
    }

    pub fn _IS_VEHICLE_RADIO_LOUD(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(228013862591714732)), vehicle);
    }

    pub fn SET_MOBILE_RADIO_ENABLED_DURING_GAMEPLAY(Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1195764362099706803)), Toggle);
    }

    pub fn _0x109697E2FFBAC8A1() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1195309752322279585)));
    }

    pub fn _0x5F43D83FD6738741() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6864568025735202625)));
    }

    pub fn SET_VEHICLE_RADIO_ENABLED(vehicle: types.Vehicle, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4294324703405435915)), vehicle, toggle);
    }

    pub fn _0x4E404A9361F75BB2(p0: [*c]types.Any, p1: [*c]types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5638588730332109746)), p0, p1, p2);
    }

    pub fn _0x1654F24A88A8E3FE(radioStation: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1609177368812381182)), radioStation);
    }

    pub fn _MAX_RADIO_STATION_INDEX() c_int {
        return nativeCaller.invoke0(17393480977256291815);
    }

    pub fn FIND_RADIO_STATION_INDEX(station: c_int) types.Any {
        return nativeCaller.invoke1(10189192497809277579, station);
    }

    pub fn _0x774BD811F656A122(radioStation: [*c]u8, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8596201885425639714)), radioStation, p1);
    }

    pub fn _0x2C96CDB04FCA358E(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3212981541312017806)), p0);
    }

    pub fn _0x031ACB6ABA18C729(radioStation: [*c]u8, p1: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(223714790757418793)), radioStation, p1);
    }

    pub fn _0xF3365489E0DD50F9(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(17525287951118717177, p0, p1);
    }

    pub fn SET_AMBIENT_ZONE_STATE(p0: [*c]types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(13664060191501999686, p0, p1, p2);
    }

    pub fn CLEAR_AMBIENT_ZONE_STATE(p0: [*c]types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2417821992125818111)), p0, p1);
    }

    pub fn SET_AMBIENT_ZONE_LIST_STATE(p0: [*c]types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(10901238110512533054, p0, p1, p2);
    }

    pub fn CLEAR_AMBIENT_ZONE_LIST_STATE(p0: [*c]types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1300494407988977572)), p0, p1);
    }

    pub fn SET_AMBIENT_ZONE_STATE_PERSISTENT(ambientZone: [*c]u8, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2118468919339294011)), ambientZone, p1, p2);
    }

    pub fn SET_AMBIENT_ZONE_LIST_STATE_PERSISTENT(ambientZone: [*c]u8, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(17538017154727691745, ambientZone, p1, p2);
    }

    pub fn IS_AMBIENT_ZONE_ENABLED(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(135813300961836955)), p0);
    }

    pub fn SET_CUTSCENE_AUDIO_OVERRIDE(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4272779084872942809)), p0);
    }

    pub fn GET_PLAYER_HEADSET_SOUND_ALTERNATE(p0: [*c]types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(13601609279912048264, p0, p1);
    }

    pub fn PLAY_POLICE_REPORT(name: [*c]u8, p1: f32) types.Any {
        return nativeCaller.invoke2(16135224756727311126, name, p1);
    }

    pub fn _0xB4F90FAF7670B16F() void {
        _ = nativeCaller.invoke0(13040471442308772207);
    }

    pub fn BLIP_SIREN(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1986128932158055094)), vehicle);
    }

    pub fn OVERRIDE_VEH_HORN(vehicle: types.Vehicle, mute: windows.BOOL, p2: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4385413544159347542)), vehicle, mute, p2);
    }

    pub fn IS_HORN_ACTIVE(vehicle: types.Vehicle) windows.BOOL {
        return nativeCaller.invoke1(11343437243661181217, vehicle);
    }

    pub fn SET_AGGRESSIVE_HORNS(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4133168733379211737)), toggle);
    }

    pub fn _0x02E93C796ABD3A97(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(209765349828934295)), p0);
    }

    pub fn _0x58BB377BEC7CD5F4(p0: windows.BOOL, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6393765101370660340)), p0, p1);
    }

    pub fn IS_STREAM_PLAYING() windows.BOOL {
        return nativeCaller.invoke0(15068944498283895160);
    }

    pub fn GET_STREAM_PLAY_TIME() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5652787034970432475)));
    }

    pub fn LOAD_STREAM(streamName: [*c]u8, soundSet: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(2242675453442413023)), streamName, soundSet);
    }

    pub fn LOAD_STREAM_WITH_START_OFFSET(streamName: [*c]u8, startOffset: c_int, soundSet: [*c]u8) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(6467568711430256402)), streamName, startOffset, soundSet);
    }

    pub fn _0x89049DD63C08B5D1(p0: types.Any) void {
        _ = nativeCaller.invoke1(9873189826558735825, p0);
    }

    pub fn PLAY_STREAM_FROM_VEHICLE(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(13187512395955731962, vehicle);
    }

    pub fn PLAY_STREAM_FROM_OBJECT(object: types.Object) void {
        _ = nativeCaller.invoke1(16981556202366523133, object);
    }

    pub fn PLAY_STREAM_FRONTEND() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6412250883756258804)));
    }

    pub fn SPECIAL_FRONTEND_EQUAL(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2397092858668377451)), p0, p1, p2);
    }

    pub fn STOP_STREAM() void {
        _ = nativeCaller.invoke0(11849403913525625169);
    }

    pub fn STOP_PED_SPEAKING(ped: types.Ped, shaking: windows.BOOL) void {
        _ = nativeCaller.invoke2(11341426432931849171, ped, shaking);
    }

    pub fn DISABLE_PED_PAIN_AUDIO(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(12223926206249021672, ped, toggle);
    }

    pub fn IS_AMBIENT_SPEECH_DISABLED(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(10604900741009915903, ped);
    }

    pub fn SET_SIREN_WITH_NO_DRIVER(vehicle: types.Vehicle, set: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2301065097431137522)), vehicle, set);
    }

    pub fn _0x9C11908013EA4715(p0: types.Any) void {
        _ = nativeCaller.invoke1(11245928624285173525, p0);
    }

    pub fn SET_HORN_ENABLED(vehicle: types.Vehicle, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8563176606583573774)), vehicle, p1);
    }

    pub fn SET_AUDIO_VEHICLE_PRIORITY(vehicle: types.Vehicle, p1: types.Any) void {
        _ = nativeCaller.invoke2(16525471215939746068, vehicle, p1);
    }

    pub fn _0x9D3AF56E94C9AE98(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(11329637667895357080, p0, p1);
    }

    pub fn USE_SIREN_AS_HORN(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(18055825785383972600, p0, p1);
    }

    pub fn _0x4F0C413926060B38(p0: types.Any, p1: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5695999342423706424)), p0, p1);
    }

    pub fn _0xF1F8157B8C3F171C(p0: types.Any, p1: [*c]u8, p2: [*c]u8) void {
        _ = nativeCaller.invoke3(17435709577742980892, p0, p1, p2);
    }

    pub fn _0xD2DCCD8E16E20997(p0: types.Any) void {
        _ = nativeCaller.invoke1(15194245252994173335, p0);
    }

    pub fn _0x5DB8010EE71FDEF2(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6753148804760854258)), p0);
    }

    pub fn _0x59E7B488451F4D3A(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6478345086363979066)), p0, p1);
    }

    pub fn _0x01BB4D577D38BD9E(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(124778452841184670)), p0, p1);
    }

    pub fn _0x1C073274E065C6D2(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2019638435461318354)), p0, p1);
    }

    pub fn _0x2BE4BC731D039D5A(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3162860040914967898)), p0, p1);
    }

    pub fn SET_VEHICLE_BOOST_ACTIVE(vehicle: types.Vehicle, Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5333632485742295457)), vehicle, Toggle);
    }

    pub fn _0x6FDDAD856E36988A(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8060789696654383242)), p0, p1);
    }

    pub fn _0x06C0023BED16DD6B(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(486391216160038251)), p0, p1);
    }

    pub fn PLAY_VEHICLE_DOOR_OPEN_SOUND(vehicle: types.Vehicle, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4202875855019354157)), vehicle, p1);
    }

    pub fn PLAY_VEHICLE_DOOR_CLOSE_SOUND(vehicle: types.Vehicle, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7107901401240039220)), vehicle, p1);
    }

    pub fn _0xC15907D667F7CFB2(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(13932175539696029618, p0, p1);
    }

    pub fn IS_GAME_IN_CONTROL_OF_MUSIC() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(7865778738160678141)));
    }

    pub fn SET_GPS_ACTIVE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4311058836203103464)), p0);
    }

    pub fn PLAY_MISSION_COMPLETE_AUDIO(audioName: [*c]u8) void {
        _ = nativeCaller.invoke1(12770144453462408297, audioName);
    }

    pub fn IS_MISSION_COMPLETE_PLAYING() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(1847333620734394250)));
    }

    pub fn _0x6F259F82D873B8B8() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8008982896674322616)));
    }

    pub fn _0xF154B8D1775B2DEC(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17389727270974467564, p0);
    }

    pub fn START_AUDIO_SCENE(sceneName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(88524962657658098)), sceneName);
    }

    pub fn STOP_AUDIO_SCENE(scene: [*c]u8) void {
        _ = nativeCaller.invoke1(16134218418505442952, scene);
    }

    pub fn STOP_AUDIO_SCENES() void {
        _ = nativeCaller.invoke0(13459003645209002401);
    }

    pub fn IS_AUDIO_SCENE_ACTIVE(scene: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(13140202257820324389, scene);
    }

    pub fn SET_AUDIO_SCENE_VARIABLE(p0: [*c]types.Any, p1: [*c]types.Any, p2: f32) void {
        _ = nativeCaller.invoke3(17231240493402826344, p0, p1, p2);
    }

    pub fn _0xA5F377B175A699C5(p0: types.Any) void {
        _ = nativeCaller.invoke1(11958033039665568197, p0);
    }

    pub fn _0x153973AB99FE8980(p0: types.Entity, p1: [*c]u8, p2: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(1529380729329191296)), p0, p1, p2);
    }

    pub fn _0x18EB48CFC41F2EA0(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1795608933623082656)), p0, p1);
    }

    pub fn AUDIO_IS_SCRIPTED_MUSIC_PLAYING() types.Any {
        return nativeCaller.invoke0(9538619863173364286);
    }

    pub fn PREPARE_MUSIC_EVENT(eventName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2184674316064724362)), eventName);
    }

    pub fn CANCEL_MUSIC_EVENT(eventName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6563900810404773285)), eventName);
    }

    pub fn TRIGGER_MUSIC_EVENT(eventName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8101227722246563600)), eventName);
    }

    pub fn _0xA097AB275061FB21() types.Any {
        return nativeCaller.invoke0(11571905952892451617);
    }

    pub fn GET_MUSIC_PLAYTIME() types.Any {
        return nativeCaller.invoke0(16690571381759561851);
    }

    pub fn _0xFBE20329593DEC9D(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(18150072924382293149, p0, p1, p2, p3);
    }

    pub fn CLEAR_ALL_BROKEN_GLASS() void {
        _ = nativeCaller.invoke0(12907890408356333843);
    }

    pub fn _0x70B8EC8FC108A634(p0: windows.BOOL, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8122502030125737524)), p0, p1);
    }

    pub fn _0x149AEE66F0CB3A99(p0: f32, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1484761153065925273)), p0, p1);
    }

    pub fn _0x8BF907833BE275DE(p0: f32, p1: f32) void {
        _ = nativeCaller.invoke2(10086101100699743710, p0, p1);
    }

    pub fn _0x062D5EAD4DA2FA6A() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(445116036604426858)));
    }

    pub fn PREPARE_ALARM(alarmName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(11345884900650014003, alarmName);
    }

    pub fn START_ALARM(alarmName: [*c]u8, p2: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(240361013244630962)), alarmName, p2);
    }

    pub fn STOP_ALARM(alarmName: [*c]u8, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(11658374460494404161, alarmName, toggle);
    }

    pub fn STOP_ALL_ALARMS(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3420847337706966162)), p0);
    }

    pub fn IS_ALARM_PLAYING(alarmName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2478164843485265036)), alarmName);
    }

    pub fn GET_VEHICLE_DEFAULT_HORN(veh: types.Vehicle) types.Hash {
        return nativeCaller.invoke1(@as(u64, @intCast(150410257217231276)), veh);
    }

    pub fn _0xACB5DCCA1EC76840(p0: types.Any) types.Any {
        return nativeCaller.invoke1(12445095905966123072, p0);
    }

    pub fn RESET_PED_AUDIO_FLAGS(p0: types.Any) void {
        _ = nativeCaller.invoke1(17675423155129611061, p0);
    }

    pub fn _0xD2CC78CD3D0B50F9(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(15189648466101620985, p0, p1);
    }

    pub fn _0xBF4DC1784BE94DFA(p0: types.Any, p1: windows.BOOL, p2: types.Any) void {
        _ = nativeCaller.invoke3(13784886756864773626, p0, p1, p2);
    }

    pub fn _0x75773E11BA459E90(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8464302270526627472)), p0, p1);
    }

    pub fn _0xD57AAAE0E2214D11() void {
        _ = nativeCaller.invoke0(15382795360080579857);
    }

    pub fn _0x552369F549563AD5(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6134863619627039445)), p0);
    }

    pub fn _0x43FA0DFC5DF87815(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4898242922278320149)), p0, p1);
    }

    pub fn SET_AUDIO_FLAG(flagName: [*c]u8, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(13398162446994666074, flagName, toggle);
    }

    pub fn PREPARE_SYNCHRONIZED_AUDIO_EVENT(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(14387816404730881894, p0, p1);
    }

    pub fn PREPARE_SYNCHRONIZED_AUDIO_EVENT_FOR_SCENE(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(189124577488416373)), p0, p1);
    }

    pub fn PLAY_SYNCHRONIZED_AUDIO_EVENT(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(10029468361250168109, p0);
    }

    pub fn STOP_SYNCHRONIZED_AUDIO_EVENT(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(10580829704081196080, p0);
    }

    pub fn _0xC8EDE9BDBCCBA6D4(p0: [*c]types.Any, p1: f32, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(14478485378191566548, p0, p1, p2, p3);
    }

    pub fn _0x950A154B8DAB6185(p0: [*c]u8, p1: types.Ped) void {
        _ = nativeCaller.invoke2(10739419675661918597, p0, p1);
    }

    pub fn _0x12561FCBB62D5B9C(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1321278500475067292)), p0);
    }

    pub fn _0x044DBAD7A7FA2BE5(p0: [*c]u8, p1: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(310109384757357541)), p0, p1);
    }

    pub fn _0xB4BBFD9CD8B3922B(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(13023281597564293675, p0);
    }

    pub fn _0xE4E6DD5566D28C82() void {
        _ = nativeCaller.invoke0(16494114044158053506);
    }

    pub fn _0x3A48AB4445D499BE() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4199794962240674238)));
    }

    pub fn _0x4ADA3F19BE4A6047(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5393692883528867911)), p0);
    }

    pub fn _0x0150B6FF25A9E2E5() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(94776799139586789)));
    }

    pub fn _0xBEF34B1D9624D5DD(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(13759423876992128477, p0);
    }

    pub fn _0x806058BBDC136E06() void {
        _ = nativeCaller.invoke0(9250491198493388294);
    }

    pub fn _0x544810ED9DB6BBE6() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6073122710248405990)));
    }

    pub fn _0x5B50ABB1FE3746F4() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6579947836550891252)));
    }
};

pub const CUTSCENE = struct {
    pub fn REQUEST_CUTSCENE(cutsceneName: [*c]u8, p1: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8828871934635515401)), cutsceneName, p1);
    }

    pub fn _REQUEST_CUTSCENE_2(cutsceneName: [*c]u8, p1: c_int, p2: c_int) void {
        _ = nativeCaller.invoke3(13996590508742325644, cutsceneName, p1, p2);
    }

    pub fn REMOVE_CUTSCENE() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4903000637243045999)));
    }

    pub fn HAS_CUTSCENE_LOADED() windows.BOOL {
        return nativeCaller.invoke0(14240191319203509049);
    }

    pub fn HAS_THIS_CUTSCENE_LOADED(cutsceneName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2489713879041514556)), cutsceneName);
    }

    pub fn _0x8D9DF6ECA8768583(p0: types.Any) void {
        _ = nativeCaller.invoke1(10204583826990466435, p0);
    }

    pub fn _0xB56BBBCC2955D9CB() windows.BOOL {
        return nativeCaller.invoke0(13072748828914211275);
    }

    pub fn _0x71B74D2AE19338D0(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8194102893592393936)), p0);
    }

    pub fn _0x4C61C75BEE8184C2(p0: [*c]types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5503899417280873666)), p0, p1, p2);
    }

    pub fn _0x06A3524161C502BA(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(478316426198057658)), p0);
    }

    pub fn _0xA1C996C2A744262E(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(11658014873199322670, p0);
    }

    pub fn _0xD00D76A7DFC9D852(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(14991769197972412498, p0);
    }

    pub fn _0x0ABC54DE641DC0FC(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(773586550140027132)), p0);
    }

    pub fn START_CUTSCENE(p0: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1760164965717704571)), p0);
    }

    pub fn START_CUTSCENE_AT_COORDS(x: f32, y: f32, z: f32, p3: c_int) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(2061203472233668543)), x, y, z, p3);
    }

    pub fn STOP_CUTSCENE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14350482124138379374, p0);
    }

    pub fn STOP_CUTSCENE_IMMEDIATELY() void {
        _ = nativeCaller.invoke0(15141310657442105886);
    }

    pub fn SET_CUTSCENE_ORIGIN(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(13263861752237510439, p0, p1, p2, p3, p4);
    }

    pub fn _0x011883F41211432A(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(78958077777363754)), p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn GET_CUTSCENE_TIME() types.Any {
        return nativeCaller.invoke0(16583870847647734457);
    }

    pub fn GET_CUTSCENE_TOTAL_DURATION() types.Any {
        return nativeCaller.invoke0(17173264735913935060);
    }

    pub fn WAS_CUTSCENE_SKIPPED() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(4668092540563346793)));
    }

    pub fn HAS_CUTSCENE_FINISHED() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(8938107252012227927)));
    }

    pub fn IS_CUTSCENE_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(11029968252726419332);
    }

    pub fn IS_CUTSCENE_PLAYING() windows.BOOL {
        return nativeCaller.invoke0(15259006430109172510);
    }

    pub fn GET_CUTSCENE_SECTION_PLAYING() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5260497291091203032)));
    }

    pub fn GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY(p0: [*c]types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(733699554847515382)), p0, p1);
    }

    pub fn _0x583DF8E3D4AFBD98() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6358511906326560152)));
    }

    pub fn _0x4CEBC1ED31E8925E(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(5542736990898262622)), p0);
    }

    pub fn REGISTER_ENTITY_FOR_CUTSCENE(p0: types.Any, p1: [*c]types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(16432540299811996392, p0, p1, p2, p3, p4);
    }

    pub fn GET_ENTITY_INDEX_OF_REGISTERED_ENTITY(p0: [*c]types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(13867737904326268109, p0, p1);
    }

    pub fn _0x7F96F23FA9B73327(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(9193802044567663399)), p0);
    }

    pub fn SET_CUTSCENE_TRIGGER_AREA(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) void {
        _ = nativeCaller.invoke6(10995202345175778490, p0, p1, p2, p3, p4, p5);
    }

    pub fn CAN_SET_ENTER_STATE_FOR_REGISTERED_ENTITY(p0: [*c]types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(7231948969982433205)), p0, p1);
    }

    pub fn CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY(p0: [*c]types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5506323796818019938)), p0, p1);
    }

    pub fn CAN_SET_EXIT_STATE_FOR_CAMERA(p0: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke1(12883616598381802528, p0);
    }

    pub fn _0xC61B86C9F61EB404(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14275151645856674820, p0);
    }

    pub fn SET_CUTSCENE_FADE_VALUES(p0: windows.BOOL, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(9265015192487249876, p0, p1, p2, p3);
    }

    pub fn _0x20746F7B1032A3C7(p0: windows.BOOL, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(2338616680855544775)), p0, p1, p2, p3);
    }

    pub fn _0x06EE9048FD080382(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(499495251841909634)), p0);
    }

    pub fn _0xA0FE76168A189DDB() c_int {
        return nativeCaller.invoke0(11600839529331203547);
    }

    pub fn _0x2F137B508DE238F2(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3392190530248128754)), p0);
    }

    pub fn _0xE36A98D8AB3D3C66(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(16387078250494245990, p0);
    }

    pub fn _0x5EDEF0CF8C1DAB3C() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6836166058594642748)));
    }

    pub fn _0x41FAA8FB2ECE8720(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4754298153418524448)), p0);
    }

    pub fn REGISTER_SYNCHRONISED_SCRIPT_SPEECH() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2391697727604071172)));
    }

    pub fn SET_CUTSCENE_PED_COMPONENT_VARIATION(p0: [*c]types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(13403248738641624009, p0, p1, p2, p3, p4);
    }

    pub fn _0x2A56C06EBEF2B0D9(p0: [*c]types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3050837379472601305)), p0, p1, p2);
    }

    pub fn DOES_CUTSCENE_ENTITY_EXIST(p0: [*c]types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5304943546014522457)), p0, p1);
    }

    pub fn _0x0546524ADE2E9723(p0: [*c]types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(380081700068038435)), p0, p1, p2, p3, p4);
    }

    pub fn _0x708BDD8CD795B043() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8109819150992781379)));
    }
};

pub const INTERIOR = struct {
    pub fn GET_INTERIOR_GROUP_ID(interiorID: c_int) types.Any {
        return nativeCaller.invoke1(16476501421259159834, interiorID);
    }

    pub fn GET_OFFSET_FROM_INTERIOR_IN_WORLD_COORDS(interiorID: c_int, x: f32, y: f32, z: f32) types.Vector3 {
        return nativeCaller.invoke4(11401775521218355759, interiorID, x, y, z);
    }

    pub fn IS_INTERIOR_SCENE() windows.BOOL {
        return nativeCaller.invoke0(13579115764212553037);
    }

    pub fn IS_VALID_INTERIOR(interiorID: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2787982420646491347)), interiorID);
    }

    pub fn CLEAR_ROOM_FOR_ENTITY(entity: types.Entity) void {
        _ = nativeCaller.invoke1(12927015435217928103, entity);
    }

    pub fn FORCE_ROOM_FOR_ENTITY(entity: types.Entity, interiorID: c_int, roomHashKey: types.Hash) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5949884333633149191)), entity, interiorID, roomHashKey);
    }

    pub fn GET_ROOM_KEY_FROM_ENTITY(entity: types.Entity) types.Hash {
        return nativeCaller.invoke1(@as(u64, @intCast(5170871713518273099)), entity);
    }

    pub fn GET_KEY_FOR_ENTITY_IN_ROOM(entity: types.Entity) types.Hash {
        return nativeCaller.invoke1(@as(u64, @intCast(4149651284798158524)), entity);
    }

    pub fn GET_INTERIOR_FROM_ENTITY(entity: types.Entity) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(2380075781929936571)), entity);
    }

    pub fn _0x82EBB79E258FA2B7(entity: types.Entity, interiorID: c_int) void {
        _ = nativeCaller.invoke2(9433835734320521911, entity, interiorID);
    }

    pub fn _0x920D853F3E17F1DA(interiorID: c_int, roomHashKey: types.Hash) void {
        _ = nativeCaller.invoke2(10524214410905907674, interiorID, roomHashKey);
    }

    pub fn _0xAF348AFCB575A441(roomName: [*c]u8) void {
        _ = nativeCaller.invoke1(12624868473407120449, roomName);
    }

    pub fn _0x405DC2AEF6AF95B9(roomHashKey: types.Hash) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4638077247980279225)), roomHashKey);
    }

    pub fn _GET_ROOM_KEY_FROM_GAMEPLAY_CAM() types.Hash {
        return nativeCaller.invoke0(11986146879237829712);
    }

    pub fn _0x23B59D8912F94246() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2573135974166512198)));
    }

    pub fn GET_INTERIOR_AT_COORDS(x: f32, y: f32, z: f32) c_int {
        return nativeCaller.invoke3(12751933987834943939, x, y, z);
    }

    pub fn ADD_PICKUP_TO_INTERIOR_ROOM_BY_NAME(pickup: types.Any, roomName: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4567045791865538352)), pickup, roomName);
    }

    pub fn _0x2CA429C029CCF247(interiorID: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3216741939161133639)), interiorID);
    }

    pub fn UNPIN_INTERIOR(interiorID: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2746296917326628417)), interiorID);
    }

    pub fn IS_INTERIOR_READY(interiorID: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7432836922140208910)), interiorID);
    }

    pub fn _0x4C2330E61D3DEB56(interiorID: c_int) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(5486282535958604630)), interiorID);
    }

    pub fn GET_INTERIOR_AT_COORDS_WITH_TYPE(x: f32, y: f32, z: f32, interiorType: [*c]u8) c_int {
        return nativeCaller.invoke4(@as(u64, @intCast(411983278217074684)), x, y, z, interiorType);
    }

    pub fn _0xF0F77ADB9F67E79D(x: f32, y: f32, z: f32, unknown: types.Any) c_int {
        return nativeCaller.invoke4(17363481972041050013, x, y, z, unknown);
    }

    pub fn _ARE_COORDS_COLLIDING_WITH_EXTERIOR(x: f32, y: f32, z: f32) windows.BOOL {
        return nativeCaller.invoke3(17196340069418152936, x, y, z);
    }

    pub fn GET_INTERIOR_FROM_COLLISION(x: f32, y: f32, z: f32) c_int {
        return nativeCaller.invoke3(17027259154904532004, x, y, z);
    }

    pub fn _ENABLE_INTERIOR_PROP(interiorID: c_int, propName: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6190315277334034081)), interiorID, propName);
    }

    pub fn _DISABLE_INTERIOR_PROP(interiorID: c_int, propName: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4759129920140927330)), interiorID, propName);
    }

    pub fn _IS_INTERIOR_PROP_ENABLED(interiorID: c_int, propName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(3888820095585132909)), interiorID, propName);
    }

    pub fn REFRESH_INTERIOR(interiorID: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4752278595253525216)), interiorID);
    }

    pub fn _HIDE_MAP_OBJECT_THIS_FRAME(mapObjectHash: types.Hash) void {
        _ = nativeCaller.invoke1(12213521933275342507, mapObjectHash);
    }

    pub fn DISABLE_INTERIOR(interiorID: c_int, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7021274633124436204)), interiorID, toggle);
    }

    pub fn IS_INTERIOR_DISABLED(interiorID: c_int) windows.BOOL {
        return nativeCaller.invoke1(13569650953496943893, interiorID);
    }

    pub fn CAP_INTERIOR(interiorID: c_int, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(15643076920324709204, interiorID, toggle);
    }

    pub fn IS_INTERIOR_CAPPED(interiorID: c_int) windows.BOOL {
        return nativeCaller.invoke1(10572983720435575846, interiorID);
    }

    pub fn _0x9E6542F0CE8E70A3(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(11413602432665415843, toggle);
    }
};

pub const CAM = struct {
    pub fn RENDER_SCRIPT_CAMS(render: windows.BOOL, ease: windows.BOOL, camera: types.Any, p3: windows.BOOL, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(569060033405794044)), render, ease, camera, p3, p4);
    }

    pub fn _0xC819F3CBB62BF692(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(14418823738263598738, p0, p1, p2);
    }

    pub fn CREATE_CAM(camName: [*c]u8, p1: windows.BOOL) types.Cam {
        return nativeCaller.invoke2(14094047806098104639, camName, p1);
    }

    pub fn CREATE_CAM_WITH_PARAMS(camName: [*c]u8, posX: f32, posY: f32, posZ: f32, rotX: f32, rotY: f32, rotZ: f32, fov: f32, p8: windows.BOOL, p9: c_int) types.Cam {
        return nativeCaller.invoke10(13047372873132765537, camName, posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9);
    }

    pub fn CREATE_CAMERA(camHash: types.Hash, p1: windows.BOOL) types.Cam {
        return nativeCaller.invoke2(@as(u64, @intCast(6790575688875026045)), camHash, p1);
    }

    pub fn CREATE_CAMERA_WITH_PARAMS(camHash: types.Hash, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: windows.BOOL, p9: types.Any) types.Cam {
        return nativeCaller.invoke10(@as(u64, @intCast(7692046877019140653)), camHash, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn DESTROY_CAM(cam: types.Cam, destroy: windows.BOOL) void {
        _ = nativeCaller.invoke2(9680778529535173353, cam, destroy);
    }

    pub fn DESTROY_ALL_CAMS(destroy: windows.BOOL) void {
        _ = nativeCaller.invoke1(10259113460775751968, destroy);
    }

    pub fn DOES_CAM_EXIST(cam: types.Cam) windows.BOOL {
        return nativeCaller.invoke1(12081242549857203470, cam);
    }

    pub fn SET_CAM_ACTIVE(cam: types.Any, active: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(175562857184911236)), cam, active);
    }

    pub fn IS_CAM_ACTIVE(cam: types.Any) windows.BOOL {
        return nativeCaller.invoke1(16119145122951410996, cam);
    }

    pub fn IS_CAM_RENDERING(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(210555333278735226)), p0);
    }

    pub fn GET_RENDERING_CAM() types.Cam {
        return nativeCaller.invoke0(@as(u64, @intCast(5923634223534172858)));
    }

    pub fn GET_CAM_COORD(cam: types.Any) types.Vector3 {
        return nativeCaller.invoke1(13456818321258898862, cam);
    }

    pub fn GET_CAM_ROT(cam: types.Any, p1: types.Any) types.Vector3 {
        return nativeCaller.invoke2(@as(u64, @intCast(9020793739271880210)), cam, p1);
    }

    pub fn GET_CAM_FOV(cam: types.Any) f32 {
        return nativeCaller.invoke1(14065597356113244778, cam);
    }

    pub fn GET_CAM_NEAR_CLIP(cam: types.Any) f32 {
        return nativeCaller.invoke1(14204532778782893233, cam);
    }

    pub fn GET_CAM_FAR_CLIP(cam: types.Any) f32 {
        return nativeCaller.invoke1(13117469482393839274, cam);
    }

    pub fn GET_CAM_FAR_DOF(cam: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(2693026888527434647)), cam);
    }

    pub fn SET_CAM_PARAMS(cam: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: types.Any, p9: types.Any, p10: types.Any, p11: types.Any) void {
        _ = nativeCaller.invoke12(13823924928455167674, cam, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
    }

    pub fn SET_CAM_COORD(cam: types.Any, posX: f32, posY: f32, posZ: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(5566862829459727406)), cam, posX, posY, posZ);
    }

    pub fn SET_CAM_ROT(cam: types.Cam, rotX: f32, rotY: f32, rotZ: f32, p4: c_int) void {
        _ = nativeCaller.invoke5(9626222390276852487, cam, rotX, rotY, rotZ, p4);
    }

    pub fn SET_CAM_FOV(cam: types.Any, fieldOfView: f32) void {
        _ = nativeCaller.invoke2(12771105691888832583, cam, fieldOfView);
    }

    pub fn SET_CAM_NEAR_CLIP(cam: types.Any, nearClip: f32) void {
        _ = nativeCaller.invoke2(14376773126884446594, cam, nearClip);
    }

    pub fn SET_CAM_FAR_CLIP(cam: types.Any, farClip: f32) void {
        _ = nativeCaller.invoke2(12551654390081779822, cam, farClip);
    }

    pub fn SET_CAM_MOTION_BLUR_STRENGTH(cam: types.Any, blur: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8002746985627579110)), cam, blur);
    }

    pub fn SET_CAM_NEAR_DOF(cam: types.Any, nearDOF: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4586000372299456044)), cam, nearDOF);
    }

    pub fn SET_CAM_FAR_DOF(cam: types.Any, farDOF: f32) void {
        _ = nativeCaller.invoke2(17138750295828967136, cam, farDOF);
    }

    pub fn SET_CAM_DOF_STRENGTH(cam: types.Any, dofStrength: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6837197941419931799)), cam, dofStrength);
    }

    pub fn SET_CAM_DOF_PLANES(cam: types.Any, p1: f32, p2: f32, p3: f32, p4: f32) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(4392293246028958172)), cam, p1, p2, p3, p4);
    }

    pub fn SET_CAM_USE_SHALLOW_DOF_MODE(cam: types.Cam, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1632951117018387131)), cam, toggle);
    }

    pub fn SET_USE_HI_DOF() void {
        _ = nativeCaller.invoke0(11617882012875573908);
    }

    pub fn _0xF55E4046F6F831DC(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(17680639860638495196, p0, p1);
    }

    pub fn _0xE111A7C0D200CBC5(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(16217928179736693701, p0, p1);
    }

    pub fn _0x7DD234D6F3914C5B(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(9066367097664261211)), p0, p1);
    }

    pub fn _0xC669EEA5D031B7DE(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(14297220887994283998, p0, p1);
    }

    pub fn _0xC3654A441402562D(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(14079741466297652781, p0, p1);
    }

    pub fn _0x2C654B4943BDDF7C(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3199045888357818236)), p0, p1);
    }

    pub fn ATTACH_CAM_TO_ENTITY(cam: types.Any, entity: types.Entity, xOffset: f32, yOffset: f32, zOffset: f32, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(18364409510355558627, cam, entity, xOffset, yOffset, zOffset, p5);
    }

    pub fn ATTACH_CAM_TO_PED_BONE(cam: c_int, ped: types.Ped, boneIndex: c_int, x: f32, y: f32, z: f32, heading: windows.BOOL) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(7035708528672633873)), cam, ped, boneIndex, x, y, z, heading);
    }

    pub fn DETACH_CAM(camHandle: c_int) void {
        _ = nativeCaller.invoke1(11743905585564462466, camHandle);
    }

    pub fn SET_CAM_INHERIT_ROLL_VEHICLE(cam: c_int, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5040054220485114598)), cam, p1);
    }

    pub fn POINT_CAM_AT_COORD(cam: types.Any, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(17822036457080948739, cam, x, y, z);
    }

    pub fn POINT_CAM_AT_ENTITY(cam: types.Any, entity: types.Entity, p2: f32, p3: f32, p4: f32, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(6215178559440742620)), cam, entity, p2, p3, p4, p5);
    }

    pub fn POINT_CAM_AT_PED_BONE(cam: c_int, ped: c_int, boneIndex: c_int, x: f32, y: f32, z: f32, p6: windows.BOOL) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(7544292382081432641)), cam, ped, boneIndex, x, y, z, p6);
    }

    pub fn STOP_CAM_POINTING(cam: c_int) void {
        _ = nativeCaller.invoke1(17526522486315440094, cam);
    }

    pub fn SET_CAM_AFFECTS_AIMING(cam: types.Cam, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(10096445253756247181, cam, toggle);
    }

    pub fn _0x661B5C8654ADD825(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7357576148255889445)), p0, p1);
    }

    pub fn _0xA2767257A320FC82(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11706670002120752258, p0, p1);
    }

    pub fn _0x271017B9BA825366(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2814775853572051814)), p0, p1);
    }

    pub fn SET_CAM_DEBUG_NAME(camera: types.Cam, name: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1987178221944560960)), camera, name);
    }

    pub fn ADD_CAM_SPLINE_NODE(camera: c_int, x: f32, y: f32, z: f32, xRot: f32, yRot: f32, zRot: f32, p7: c_int, p8: c_int, p9: c_int) void {
        _ = nativeCaller.invoke10(9658470085705661243, camera, x, y, z, xRot, yRot, zRot, p7, p8, p9);
    }

    pub fn _0x0A9F2A468B328E74(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(765376944147697268)), p0, p1, p2, p3);
    }

    pub fn _0x0FB82563989CF4FB(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(1132696415976092923)), p0, p1, p2, p3);
    }

    pub fn _0x609278246A29CA34(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6958756472036117044)), p0, p1, p2);
    }

    pub fn SET_CAM_SPLINE_PHASE(cam: c_int, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2606274068640751698)), cam, p1);
    }

    pub fn GET_CAM_SPLINE_PHASE(cam: c_int) f32 {
        return nativeCaller.invoke1(13057235177729052826, cam);
    }

    pub fn GET_CAM_SPLINE_NODE_PHASE(p0: types.Any) f32 {
        return nativeCaller.invoke1(15695298228073802902, p0);
    }

    pub fn SET_CAM_SPLINE_DURATION(cam: c_int, timeDuration: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1405496505074404570)), cam, timeDuration);
    }

    pub fn _0xD1B0F412F109EA5D(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(15109845112018561629, p0, p1);
    }

    pub fn GET_CAM_SPLINE_NODE_INDEX(cam: c_int) windows.BOOL {
        return nativeCaller.invoke1(12838381411535099558, cam);
    }

    pub fn _0x83B8201ED82A9A2D(p0: types.Any, p1: types.Any, p2: types.Any, p3: f32) void {
        _ = nativeCaller.invoke4(9491371531531098669, p0, p1, p2, p3);
    }

    pub fn _0xA6385DEB180F319F(p0: types.Any, p1: types.Any, p2: f32) void {
        _ = nativeCaller.invoke3(11977426473294180767, p0, p1, p2);
    }

    pub fn OVERRIDE_CAM_SPLINE_VELOCITY(cam: c_int, p1: c_int, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(4662966829301039942)), cam, p1, p2, p3);
    }

    pub fn OVERRIDE_CAM_SPLINE_MOTION_BLUR(p0: types.Any, p1: types.Any, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(9065601397766565205)), p0, p1, p2, p3);
    }

    pub fn _0x7BF1A54AE67AC070(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(8931101277165371504)), p0, p1, p2);
    }

    pub fn IS_CAM_SPLINE_PAUSED(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(184915161366755428)), p0);
    }

    pub fn SET_CAM_ACTIVE_WITH_INTERP(camTo: types.Cam, camFrom: types.Cam, duration: c_int, easeLocation: windows.BOOL, easeRotation: windows.BOOL) void {
        _ = nativeCaller.invoke5(11510535963658572452, camTo, camFrom, duration, easeLocation, easeRotation);
    }

    pub fn IS_CAM_INTERPOLATING(cam: types.Cam) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(247583394219865388)), cam);
    }

    pub fn SHAKE_CAM(cam: types.Cam, type_: [*c]u8, amplitude: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7648559245709621282)), cam, type_, amplitude);
    }

    pub fn ANIMATED_SHAKE_CAM(cam: types.Cam, p1: [*c]u8, p2: [*c]u8, p3: [*c]u8, amplitude: f32) void {
        _ = nativeCaller.invoke5(11706103286567630797, cam, p1, p2, p3, amplitude);
    }

    pub fn IS_CAM_SHAKING(cam: types.Cam) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7720506665349145723)), cam);
    }

    pub fn SET_CAM_SHAKE_AMPLITUDE(cam: types.Cam, amplitude: f32) void {
        _ = nativeCaller.invoke2(15653866047499144448, cam, amplitude);
    }

    pub fn STOP_CAM_SHAKING(cam: types.Cam, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(13685584137032321731, cam, p1);
    }

    pub fn _0xF4C8CF9E353AFECA(p0: [*c]u8, p1: f32) void {
        _ = nativeCaller.invoke2(17638576219001388746, p0, p1);
    }

    pub fn _0xC2EAE3FB8CDBED31(p0: [*c]u8, p1: [*c]u8, p2: [*c]u8, p3: f32) void {
        _ = nativeCaller.invoke4(14045289057447832881, p0, p1, p2, p3);
    }

    pub fn _0xC912AF078AF19212() types.Any {
        return nativeCaller.invoke0(14488835398135026194);
    }

    pub fn _0x1C9D7949FA533490(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2061937563044885648)), p0);
    }

    pub fn PLAY_CAM_ANIM(cam: types.Cam, animName: [*c]u8, animDictionary: [*c]u8, x: f32, y: f32, z: f32, xRot: f32, yRot: f32, zRot: f32, p9: windows.BOOL, p10: c_int) windows.BOOL {
        return nativeCaller.invoke11(11109553116855739282, cam, animName, animDictionary, x, y, z, xRot, yRot, zRot, p9, p10);
    }

    pub fn IS_CAM_PLAYING_ANIM(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(14485302465778347250, p0, p1, p2);
    }

    pub fn SET_CAM_ANIM_CURRENT_PHASE(cam: types.Cam, phase: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4703346548920268198)), cam, phase);
    }

    pub fn GET_CAM_ANIM_CURRENT_PHASE(cam: types.Cam) f32 {
        return nativeCaller.invoke1(11604419118627989168, cam);
    }

    pub fn PLAY_SYNCHRONIZED_CAM_ANIM(p0: types.Any, p1: types.Any, p2: [*c]u8, p3: [*c]u8) windows.BOOL {
        return nativeCaller.invoke4(16370301635947768332, p0, p1, p2, p3);
    }

    pub fn _0x503F5920162365B2(p0: types.Any, p1: f32, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(5782438440912250290)), p0, p1, p2, p3);
    }

    pub fn _0xF9D02130ECDD1D77(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(18000924204615933303, p0, p1);
    }

    pub fn _0xC91C6C55199308CA(p0: types.Any, p1: f32, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(14491576813728499914, p0, p1, p2, p3);
    }

    pub fn _0xC8B5C4A79CC18B94(p0: types.Any) void {
        _ = nativeCaller.invoke1(14462682002538728340, p0);
    }

    pub fn _0x5C48A1D6E3B33179(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6649742794127782265)), p0);
    }

    pub fn IS_SCREEN_FADED_OUT() windows.BOOL {
        return nativeCaller.invoke0(12785665044532404610);
    }

    pub fn IS_SCREEN_FADED_IN() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(6522783478398879352)));
    }

    pub fn IS_SCREEN_FADING_OUT() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(8753528501838783119)));
    }

    pub fn IS_SCREEN_FADING_IN() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(6653025866621830517)));
    }

    pub fn DO_SCREEN_FADE_IN(duration: c_int) void {
        _ = nativeCaller.invoke1(15341760935224295475, duration);
    }

    pub fn DO_SCREEN_FADE_OUT(duration: c_int) void {
        _ = nativeCaller.invoke1(9879590510830748335, duration);
    }

    pub fn SET_WIDESCREEN_BORDERS(p0: windows.BOOL, p1: c_int) void {
        _ = nativeCaller.invoke2(15912601297522708506, p0, p1);
    }

    pub fn GET_GAMEPLAY_CAM_COORD() types.Vector3 {
        return nativeCaller.invoke0(@as(u64, @intCast(1501657350880041783)));
    }

    pub fn GET_GAMEPLAY_CAM_ROT(p0: types.Any) types.Vector3 {
        return nativeCaller.invoke1(9473152089056669883, p0);
    }

    pub fn GET_GAMEPLAY_CAM_FOV() f32 {
        return nativeCaller.invoke0(@as(u64, @intCast(7278264845348258099)));
    }

    pub fn _0x487A82C650EB7799(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5222630506162255769)), p0);
    }

    pub fn _0x0225778816FDC28C(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(154661188599136908)), p0);
    }

    pub fn GET_GAMEPLAY_CAM_RELATIVE_HEADING() f32 {
        return nativeCaller.invoke0(@as(u64, @intCast(8373888685549897095)));
    }

    pub fn SET_GAMEPLAY_CAM_RELATIVE_HEADING(heading: f32) void {
        _ = nativeCaller.invoke1(13036833585655820785, heading);
    }

    pub fn GET_GAMEPLAY_CAM_RELATIVE_PITCH() f32 {
        return nativeCaller.invoke0(@as(u64, @intCast(4208727876790119842)));
    }

    pub fn SET_GAMEPLAY_CAM_RELATIVE_PITCH(x: f32, Value2: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7856627101237848957)), x, Value2);
    }

    pub fn _SET_GAMEPLAY_CAM_RAW_YAW(yaw: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1169125920733647986)), yaw);
    }

    pub fn _SET_GAMEPLAY_CAM_RAW_PITCH(pitch: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8475233452046769242)), pitch);
    }

    pub fn _0x469F2ECDEC046337(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5088837565914833719)), p0);
    }

    pub fn SHAKE_GAMEPLAY_CAM(shakeName: [*c]u8, intensity: f32) void {
        _ = nativeCaller.invoke2(18254747994658183119, shakeName, intensity);
    }

    pub fn IS_GAMEPLAY_CAM_SHAKING() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(102466813717061513)));
    }

    pub fn SET_GAMEPLAY_CAM_SHAKE_AMPLITUDE(amplitude: f32) void {
        _ = nativeCaller.invoke1(12141142277564455005, amplitude);
    }

    pub fn STOP_GAMEPLAY_CAM_SHAKING(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1078962439376650616)), p0);
    }

    pub fn _0x8BBACBF51DA047A8(p0: types.Any) void {
        _ = nativeCaller.invoke1(10068584170564634536, p0);
    }

    pub fn IS_GAMEPLAY_CAM_RENDERING() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(4158460389144916168)));
    }

    pub fn _0x3044240D2E0FA842() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(3477944451262818370)));
    }

    pub fn _0x705A276EBFF3133D() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(8095826636772152125)));
    }

    pub fn _0xDB90C6CCA48940F1(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(15821364073188638961, p0);
    }

    pub fn _ENABLE_CROSSHAIR_THIS_FRAME() void {
        _ = nativeCaller.invoke0(16897236249372944239);
    }

    pub fn IS_GAMEPLAY_CAM_LOOKING_BEHIND() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(8141848874360864425)));
    }

    pub fn _0x2AED6301F67007D5(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3093237379154053077)), p0);
    }

    pub fn _0x49482F9FCD825AAA(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5280522926486084266)), p0);
    }

    pub fn _0xFD3151CD37EA2245(p0: types.Any) void {
        _ = nativeCaller.invoke1(18244453507302826565, p0);
    }

    pub fn _0xDD79DF9F4D26E1C9() void {
        _ = nativeCaller.invoke0(15959032629851251145);
    }

    pub fn IS_SPHERE_VISIBLE(x: f32, y: f32, z: f32, radius: f32) windows.BOOL {
        return nativeCaller.invoke4(16374342614917681119, x, y, z, radius);
    }

    pub fn IS_FOLLOW_PED_CAM_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(14327026183995711737);
    }

    pub fn SET_FOLLOW_PED_CAM_CUTSCENE_CHAT(p0: [*c]u8, p1: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(4945255707617020113)), p0, p1);
    }

    pub fn _0x271401846BD26E92(p0: windows.BOOL, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2815877335269666450)), p0, p1);
    }

    pub fn _0xC8391C309684595A() void {
        _ = nativeCaller.invoke0(14427593876267358554);
    }

    pub fn _CLAMP_GAMEPLAY_CAM_YAW(minimum: f32, maximum: f32) void {
        _ = nativeCaller.invoke2(10347368856049835662, minimum, maximum);
    }

    pub fn _CLAMP_GAMEPLAY_CAM_PITCH(minimum: f32, maximum: f32) void {
        _ = nativeCaller.invoke2(11895908327409623521, minimum, maximum);
    }

    pub fn _ANIMATE_GAMEPLAY_CAM_ZOOM(p0: f32, _distance: f32) void {
        _ = nativeCaller.invoke2(16081825916459691649, p0, _distance);
    }

    pub fn _0xE9EA16D6E54CDCA4(p0: types.Vehicle, p1: c_int) void {
        _ = nativeCaller.invoke2(16855309667613334692, p0, p1);
    }

    pub fn _DISABLE_FIRST_PERSON_CAM_THIS_FRAME() void {
        _ = nativeCaller.invoke0(16010004042676488415);
    }

    pub fn _0x59424BD75174C9B1() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6431786605995149745)));
    }

    pub fn GET_FOLLOW_PED_CAM_ZOOM_LEVEL() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3739897472903648233)));
    }

    pub fn GET_FOLLOW_PED_CAM_VIEW_MODE() c_int {
        return nativeCaller.invoke0(10181871448879805754);
    }

    pub fn SET_FOLLOW_PED_CAM_VIEW_MODE(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6507594667565250308)), p0);
    }

    pub fn IS_FOLLOW_VEHICLE_CAM_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(14681144155113444502);
    }

    pub fn _0x91EF6EE6419E5B97(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(10515745590155828119, p0);
    }

    pub fn _0x9DFE13ECDC1EC196(p0: windows.BOOL, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11384558816065405334, p0, p1);
    }

    pub fn GET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL() types.Any {
        return nativeCaller.invoke0(17186343154491045520);
    }

    pub fn SET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1821227447711403146)), p0);
    }

    pub fn GET_FOLLOW_VEHICLE_CAM_VIEW_MODE() c_int {
        return nativeCaller.invoke0(11889317863454124718);
    }

    pub fn SET_FOLLOW_VEHICLE_CAM_VIEW_MODE(mode: c_int) void {
        _ = nativeCaller.invoke1(12404388335382335304, mode);
    }

    pub fn _0xEE778F8C7E1142E2(p0: types.Any) types.Any {
        return nativeCaller.invoke1(17183360736828670690, p0);
    }

    pub fn _0x2A2173E46DAECD12(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3035835048754334994)), p0, p1);
    }

    pub fn _0x19CAFA3C87F7C2FF() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1858572934129894143)));
    }

    pub fn IS_AIM_CAM_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(7560939217536642311)));
    }

    pub fn _0x74BD83EA840F6BC9() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8412024722259143625)));
    }

    pub fn IS_FIRST_PERSON_AIM_CAM_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(6788171017574572351)));
    }

    pub fn _0x1A31FE0049E542F6() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1887568996038165238)));
    }

    pub fn _GET_GAMEPLAY_CAM_ZOOM() f32 {
        return nativeCaller.invoke0(@as(u64, @intCast(9134756639609966960)));
    }

    pub fn _0x70894BD0915C5BCA(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8109095963221318602)), p0);
    }

    pub fn _0xCED08CBE8EBB97C7(p0: f32, p1: f32) void {
        _ = nativeCaller.invoke2(14902565917035304903, p0, p1);
    }

    pub fn _0x2F7F2B26DD3F18EE(p0: f32, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3422501687745517806)), p0, p1);
    }

    pub fn _0xBCFC632DB7673BF0(p0: f32, p1: f32) void {
        _ = nativeCaller.invoke2(13617868421263211504, p0, p1);
    }

    pub fn _0x0AF7B437918103B3(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(790298410384163763)), p0);
    }

    pub fn _0x42156508606DE65E(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4761823267666126430)), p0);
    }

    pub fn _0x4008EDF7D6E48175(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4614199466959077749)), p0);
    }

    pub fn _GET_GAMEPLAY_CAM_COORDS() types.Vector3 {
        return nativeCaller.invoke0(11673588752110908488);
    }

    pub fn _GET_GAMEPLAY_CAM_ROT(p0: types.Any) types.Vector3 {
        return nativeCaller.invoke1(@as(u64, @intCast(6579280224713453051)), p0);
    }

    pub fn _0x26903D9CD1175F2C(p0: types.Any, p1: types.Any) types.Vector3 {
        return nativeCaller.invoke2(@as(u64, @intCast(2778788713819758380)), p0, p1);
    }

    pub fn _0x80EC114669DAEFF4() types.Any {
        return nativeCaller.invoke0(9289819125479829492);
    }

    pub fn _0x5F35F6732C3FBBA0(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(6860660581892864928)), p0);
    }

    pub fn _0xD0082607100D7193() types.Any {
        return nativeCaller.invoke0(14990273171478638995);
    }

    pub fn _0xDFC8CBC606FDB0FC() types.Any {
        return nativeCaller.invoke0(16125362517181313276);
    }

    pub fn _0xA03502FC581F7D9B() types.Any {
        return nativeCaller.invoke0(11544136502667607451);
    }

    pub fn _0x9780F32BCAF72431() types.Any {
        return nativeCaller.invoke0(10916992866160419889);
    }

    pub fn _0x162F9D995753DC19() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1598669674660486169)));
    }

    pub fn SET_GAMEPLAY_COORD_HINT(p0: f32, p1: f32, p2: f32, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any) void {
        _ = nativeCaller.invoke7(15355828677610573747, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn SET_GAMEPLAY_PED_HINT(p0: types.Ped, x1: f32, y1: f32, z1: f32, p4: windows.BOOL, p5: types.Any, p6: types.Any, p7: types.Any) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(3118850947964815571)), p0, x1, y1, z1, p4, p5, p6, p7);
    }

    pub fn SET_GAMEPLAY_VEHICLE_HINT(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: windows.BOOL, p5: types.Any, p6: types.Any, p7: types.Any) void {
        _ = nativeCaller.invoke8(11685009353825786926, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn SET_GAMEPLAY_OBJECT_HINT(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: windows.BOOL, p5: types.Any, p6: types.Any, p7: types.Any) void {
        _ = nativeCaller.invoke8(9504975693516778182, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn SET_GAMEPLAY_ENTITY_HINT(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: windows.BOOL, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(1774019519209267864)), p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn IS_GAMEPLAY_HINT_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(16510476724605573952);
    }

    pub fn STOP_GAMEPLAY_HINT(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17612549121656326422, p0);
    }

    pub fn _0xCCD078C2665D2973(p0: types.Any) void {
        _ = nativeCaller.invoke1(14758428755229485427, p0);
    }

    pub fn _0x247ACBC4ABBC9D1C(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2628637378079399196)), p0);
    }

    pub fn _0xBF72910D0F26F025() types.Any {
        return nativeCaller.invoke0(13795248093864063013);
    }

    pub fn SET_GAMEPLAY_HINT_FOV(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5851306195055681823)), p0);
    }

    pub fn _0xF8BDBF3D573049A1(p0: f32) void {
        _ = nativeCaller.invoke1(17923692362181134753, p0);
    }

    pub fn _0xD1F8363DFAD03848(p0: f32) void {
        _ = nativeCaller.invoke1(15129902587980036168, p0);
    }

    pub fn _0x5D7B620DAE436138(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6736085478560457016)), p0);
    }

    pub fn _0xC92717EF615B6704(p0: f32) void {
        _ = nativeCaller.invoke1(14494580242613233412, p0);
    }

    pub fn GET_IS_MULTIPLAYER_BRIEF(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(16376001585667894848, p0);
    }

    pub fn SET_CINEMATIC_BUTTON_ACTIVE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5865550924448349599)), p0);
    }

    pub fn IS_CINEMATIC_CAM_RENDERING() windows.BOOL {
        return nativeCaller.invoke0(12777102243323636200);
    }

    pub fn SHAKE_CINEMATIC_CAM(p0: [*c]u8, p1: f32) void {
        _ = nativeCaller.invoke2(15916306959303242703, p0, p1);
    }

    pub fn IS_CINEMATIC_CAM_SHAKING() windows.BOOL {
        return nativeCaller.invoke0(13528970971632434954);
    }

    pub fn SET_CINEMATIC_CAM_SHAKE_AMPLITUDE(p0: f32) void {
        _ = nativeCaller.invoke1(14349813123090427879, p0);
    }

    pub fn STOP_CINEMATIC_CAM_SHAKING(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2465973172114597591)), p0);
    }

    pub fn _DISABLE_VEHICLE_FIRST_PERSON_CAM_THIS_FRAME() void {
        _ = nativeCaller.invoke0(12537769756257640378);
    }

    pub fn _0x62ECFCFDEE7885D6() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7128350477778453974)));
    }

    pub fn _0x9E4CFFF989258472() void {
        _ = nativeCaller.invoke0(11406773403435500658);
    }

    pub fn _0xF4F2C0D4EE209E20() void {
        _ = nativeCaller.invoke0(17650381910379109920);
    }

    pub fn _0xCA9D2AA3E326D720() types.Any {
        return nativeCaller.invoke0(14599872450384025376);
    }

    pub fn _0x4F32C0D5A90A9B40() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5706835701728451392)));
    }

    pub fn CREATE_CINEMATIC_SHOT(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8366282011938524977)), p0, p1, p2, p3);
    }

    pub fn IS_CINEMATIC_SHOT_ACTIVE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(14744560268273159113, p0);
    }

    pub fn STOP_CINEMATIC_SHOT(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8530036391243548558)), p0);
    }

    pub fn _0xA41BCD7213805AAC(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11825271136428513964, p0);
    }

    pub fn _0xDC9DA9E8789F5246() void {
        _ = nativeCaller.invoke0(15897049075608932934);
    }

    pub fn SET_CINEMATIC_MODE_ACTIVE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(15920353646728379726, p0);
    }

    pub fn _0x1F2300CB7FA7B7F6() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2243637913380698102)));
    }

    pub fn _0x17FCA7199A530203() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1728440085408580099)));
    }

    pub fn STOP_CUTSCENE_CAM_SHAKING() void {
        _ = nativeCaller.invoke0(15808373553457658374);
    }

    pub fn _0x12DED8CA53D47EA5(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1359762501013896869)), p0);
    }

    pub fn _0x89215EC747DF244A(p0: f32, p1: types.Any, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: types.Any, p8: types.Any) types.Any {
        return nativeCaller.invoke9(9881283267424887882, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn _0x5A43C76F7FC7BA5F() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6504261568552221279)));
    }

    pub fn _SET_CAM_EFFECT(p0: c_int) void {
        _ = nativeCaller.invoke1(9279862214405765913, p0);
    }

    pub fn _0x5C41E6BABC9E2112(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6647848214678348050)), p0);
    }

    pub fn _0x21E253A7F8DA5DFB(vehicleName: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2441605928887934459)), vehicleName);
    }

    pub fn _0x11FA5D3479C7DD47(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1295450322785262919)), p0);
    }

    pub fn _0xEAF0FA793D05C592() types.Any {
        return nativeCaller.invoke0(16929306397907469714);
    }

    pub fn _0x8BFCEB5EA1B161B6() types.Any {
        return nativeCaller.invoke0(10087196057075278262);
    }
};

pub const WEAPON = struct {
    pub fn ENABLE_LASER_SIGHT_RENDERING(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(14462304661930534058, toggle);
    }

    pub fn GET_WEAPON_COMPONENT_TYPE_MODEL(componentHash: types.Hash) types.Hash {
        return nativeCaller.invoke1(@as(u64, @intCast(987831216342151299)), componentHash);
    }

    pub fn GET_WEAPONTYPE_MODEL(weaponHash: types.Hash) types.Any {
        return nativeCaller.invoke1(17612694354744302228, weaponHash);
    }

    pub fn GET_WEAPONTYPE_SLOT(weaponHash: types.Hash) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(4761789196682362784)), weaponHash);
    }

    pub fn GET_WEAPONTYPE_GROUP(weaponHash: types.Hash) types.Any {
        return nativeCaller.invoke1(14062629349971965772, weaponHash);
    }

    pub fn SET_CURRENT_PED_WEAPON(ped: types.Ped, weaponHash: types.Hash, equipNow: windows.BOOL) void {
        _ = nativeCaller.invoke3(12535367907453402124, ped, weaponHash, equipNow);
    }

    pub fn GET_CURRENT_PED_WEAPON(ped: types.Ped, weaponHash: [*c]types.Hash, p2: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(4217590589943717204)), ped, weaponHash, p2);
    }

    pub fn GET_CURRENT_PED_WEAPON_ENTITY_INDEX(ped: types.Ped) types.Entity {
        return nativeCaller.invoke1(@as(u64, @intCast(4267453750986192380)), ped);
    }

    pub fn GET_BEST_PED_WEAPON(ped: types.Ped, p1: windows.BOOL) types.Hash {
        return nativeCaller.invoke2(9548732433391192802, ped, p1);
    }

    pub fn SET_CURRENT_PED_VEHICLE_WEAPON(ped: types.Ped, weaponHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(8486287495292755370)), ped, weaponHash);
    }

    pub fn GET_CURRENT_PED_VEHICLE_WEAPON(ped: types.Ped, weaponHash: [*c]types.Hash) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(1159492374221042396)), ped, weaponHash);
    }

    pub fn IS_PED_ARMED(ped: types.Ped, p1: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5140692576702410007)), ped, p1);
    }

    pub fn IS_WEAPON_VALID(weaponHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(10627493561550189747, weaponHash);
    }

    pub fn HAS_PED_GOT_WEAPON(ped: types.Ped, weaponHash: types.Hash, p2: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(10226742572059207868, ped, weaponHash, p2);
    }

    pub fn IS_PED_WEAPON_READY_TO_SHOOT(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(13262153763314100041, ped);
    }

    pub fn GET_PED_WEAPONTYPE_IN_SLOT(ped: types.Ped, weaponSlot: types.Hash) types.Hash {
        return nativeCaller.invoke2(17293496626451649357, ped, weaponSlot);
    }

    pub fn GET_AMMO_IN_PED_WEAPON(ped: types.Ped, weaponhash: types.Hash) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(97480644549409105)), ped, weaponhash);
    }

    pub fn ADD_AMMO_TO_PED(ped: types.Ped, weaponHash: types.Hash, ammo: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(8714538174022443552)), ped, weaponHash, ammo);
    }

    pub fn SET_PED_AMMO(ped: types.Ped, weaponHash: types.Hash, ammo: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(1505728147329083929)), ped, weaponHash, ammo);
    }

    pub fn SET_PED_INFINITE_AMMO(ped: types.Ped, toggle: windows.BOOL, weaponHash: types.Hash) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4529689184233022011)), ped, toggle, weaponHash);
    }

    pub fn SET_PED_INFINITE_AMMO_CLIP(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1746743299266654598)), ped, toggle);
    }

    pub fn GIVE_WEAPON_TO_PED(ped: types.Player, weaponHash: types.Hash, ammoCount: c_int, p4: windows.BOOL, equipNow: windows.BOOL) void {
        _ = nativeCaller.invoke5(13767458866752540619, ped, weaponHash, ammoCount, p4, equipNow);
    }

    pub fn GIVE_DELAYED_WEAPON_TO_PED(ped: types.Ped, weaponHash: types.Hash, time: c_int, equipNow: windows.BOOL) void {
        _ = nativeCaller.invoke4(12863085853907369077, ped, weaponHash, time, equipNow);
    }

    pub fn REMOVE_ALL_PED_WEAPONS(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(17464388802800305651, ped, toggle);
    }

    pub fn REMOVE_WEAPON_FROM_PED(ped: types.Ped, weaponHash: types.Hash) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5231435679784720824)), ped, weaponHash);
    }

    pub fn HIDE_PED_WEAPON_FOR_SCRIPTED_CUTSCENE(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8028090550332432527)), ped, toggle);
    }

    pub fn SET_PED_CURRENT_WEAPON_VISIBLE(ped: types.Ped, visible: windows.BOOL, deselectWeapon: windows.BOOL, p3: windows.BOOL, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(514998932744280688)), ped, visible, deselectWeapon, p3, p4);
    }

    pub fn SET_PED_DROPS_WEAPONS_WHEN_DEAD(ped: types.Ped, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5146179700877021608)), ped, toggle);
    }

    pub fn HAS_PED_BEEN_DAMAGED_BY_WEAPON(ped: types.Ped, weaponHash: types.Hash, weaponType: c_int) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(3257295647166759546)), ped, weaponHash, weaponType);
    }

    pub fn CLEAR_PED_LAST_WEAPON_DAMAGE(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1051863785197139128)), ped);
    }

    pub fn HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON(entity: types.Entity, weaponHash: types.Hash, weaponType: c_int) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(1377327512274689684)), entity, weaponHash, weaponType);
    }

    pub fn CLEAR_ENTITY_LAST_WEAPON_DAMAGE(entity: types.Entity) void {
        _ = nativeCaller.invoke1(12423054505849681106, entity);
    }

    pub fn SET_PED_DROPS_WEAPON(ped: types.Ped) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7743116959586172608)), ped);
    }

    pub fn SET_PED_DROPS_INVENTORY_WEAPON(ped: types.Ped, weaponHash: types.Hash, p2: f32, p3: f32, p4: f32, p5: types.Any) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(2344713528402755814)), ped, weaponHash, p2, p3, p4, p5);
    }

    pub fn GET_MAX_AMMO_IN_CLIP(ped: types.Ped, weaponHash: types.Hash, p2: windows.BOOL) c_int {
        return nativeCaller.invoke3(11785304485072036602, ped, weaponHash, p2);
    }

    pub fn GET_AMMO_IN_CLIP(ped: types.Ped, weaponHash: types.Hash, ammo: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(3319718231269668700)), ped, weaponHash, ammo);
    }

    pub fn SET_AMMO_IN_CLIP(ped: types.Ped, weaponHash: types.Hash, ammo: c_int) windows.BOOL {
        return nativeCaller.invoke3(15911966477853176983, ped, weaponHash, ammo);
    }

    pub fn GET_MAX_AMMO(ped: types.Ped, weaponHash: types.Hash, ammo: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke3(15858883120068610355, ped, weaponHash, ammo);
    }

    pub fn SET_PED_AMMO_BY_TYPE(ped: types.Ped, ammoType: types.Any, ammo: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6904548124944461182)), ped, ammoType, ammo);
    }

    pub fn GET_PED_AMMO_BY_TYPE(ped: types.Ped, ammoType: types.Any) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(4166428001530627777)), ped, ammoType);
    }

    pub fn SET_PED_AMMO_TO_DROP(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(11884981361672827119, p0, p1);
    }

    pub fn _0xE620FD3512A04F18(p0: f32) void {
        _ = nativeCaller.invoke1(16582532232365756184, p0);
    }

    pub fn _GET_PED_AMMO_TYPE(ped: types.Ped, weaponHash: types.Hash) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(9217412182166970228)), ped, weaponHash);
    }

    pub fn GET_PED_LAST_WEAPON_IMPACT_COORD(ped: types.Ped, coord: [*c]types.Vector3) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(7803898169126431682)), ped, coord);
    }

    pub fn SET_PED_GADGET(ped: types.Ped, gadgetHash: types.Hash, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(15048692283445430810, ped, gadgetHash, p2);
    }

    pub fn GET_IS_PED_GADGET_EQUIPPED(ped: types.Ped, gadgetHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke2(17812074215687656812, ped, gadgetHash);
    }

    pub fn GET_SELECTED_PED_WEAPON(ped: types.Ped) types.Hash {
        return nativeCaller.invoke1(@as(u64, @intCast(751455270629331523)), ped);
    }

    pub fn EXPLODE_PROJECTILES(ped: types.Ped, weaponHash: types.Hash, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(18179854281387413988, ped, weaponHash, p2);
    }

    pub fn REMOVE_ALL_PROJECTILES_OF_TYPE(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(18181841982048199976, p0, p1);
    }

    pub fn _0x840F03E9041E2C9C(p0: types.Any) f32 {
        return nativeCaller.invoke1(9515828836988497052, p0);
    }

    pub fn GET_MAX_RANGE_OF_CURRENT_PED_WEAPON(ped: types.Ped) f32 {
        return nativeCaller.invoke1(9316994463577839225, ped);
    }

    pub fn HAS_VEHICLE_GOT_PROJECTILE_ATTACHED(driver: types.Ped, vehicle: types.Vehicle, weapon: types.Hash, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(8177556713575955336)), driver, vehicle, weapon, p3);
    }

    pub fn GIVE_WEAPON_COMPONENT_TO_PED(ped: types.Ped, weaponHash: types.Hash, componentHash: types.Hash) void {
        _ = nativeCaller.invoke3(15665442664280656825, ped, weaponHash, componentHash);
    }

    pub fn REMOVE_WEAPON_COMPONENT_FROM_PED(ped: types.Ped, weaponHash: types.Hash, componentHash: types.Hash) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2201109082612124681)), ped, weaponHash, componentHash);
    }

    pub fn HAS_PED_GOT_WEAPON_COMPONENT(ped: types.Ped, weaponHash: types.Hash, componentHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke3(14236759287530185536, ped, weaponHash, componentHash);
    }

    pub fn IS_PED_WEAPON_COMPONENT_ACTIVE(ped: types.Ped, weaponHash: types.Hash, componentHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(970769834681013918)), ped, weaponHash, componentHash);
    }

    pub fn _IS_PED_RELOADING(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(10091819004293262727, ped);
    }

    pub fn MAKE_PED_RELOAD(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2354876776827322419)), ped);
    }

    pub fn REQUEST_WEAPON_ASSET(weaponHash: types.Hash, p1: c_int, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6071771004139350467)), weaponHash, p1, p2);
    }

    pub fn HAS_WEAPON_ASSET_LOADED(weaponHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3955096325251305710)), weaponHash);
    }

    pub fn REMOVE_WEAPON_ASSET(weaponHash: types.Hash) void {
        _ = nativeCaller.invoke1(12252305655226026236, weaponHash);
    }

    pub fn CREATE_WEAPON_OBJECT(weaponHash: types.Hash, ammoCount: c_int, x: f32, y: f32, z: f32, showWorldModel: windows.BOOL, heading: f32, p7: types.Any) types.Any {
        return nativeCaller.invoke8(10755110271371022134, weaponHash, ammoCount, x, y, z, showWorldModel, heading, p7);
    }

    pub fn GIVE_WEAPON_COMPONENT_TO_WEAPON_OBJECT(weaponObject: types.Object, addonHash: types.Hash) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3738402496176665051)), weaponObject, addonHash);
    }

    pub fn REMOVE_WEAPON_COMPONENT_FROM_WEAPON_OBJECT(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(17859071658891376145, p0, p1);
    }

    pub fn HAS_WEAPON_GOT_WEAPON_COMPONENT(weapon: types.Object, addonHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(8548263397245042577)), weapon, addonHash);
    }

    pub fn GIVE_WEAPON_OBJECT_TO_PED(weaponObject: types.Object, ped: types.Ped) void {
        _ = nativeCaller.invoke2(12824669778194449591, weaponObject, ped);
    }

    pub fn DOES_WEAPON_TAKE_WEAPON_COMPONENT(weaponHash: types.Hash, componentHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(6696357820197948080)), weaponHash, componentHash);
    }

    pub fn GET_WEAPON_OBJECT_FROM_PED(ped: types.Ped, p1: windows.BOOL) types.Entity {
        return nativeCaller.invoke2(14619208419641565549, ped, p1);
    }

    pub fn SET_PED_WEAPON_TINT_INDEX(ped: types.Ped, weaponHash: types.Hash, colorIndex: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5806999861877102392)), ped, weaponHash, colorIndex);
    }

    pub fn GET_PED_WEAPON_TINT_INDEX(ped: types.Ped, weaponHash: types.Hash) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(3143211000917945247)), ped, weaponHash);
    }

    pub fn SET_WEAPON_OBJECT_TINT_INDEX(weapon: types.Entity, tint: c_int) void {
        _ = nativeCaller.invoke2(17881358221396206761, weapon, tint);
    }

    pub fn GET_WEAPON_OBJECT_TINT_INDEX(weapon: types.Entity) c_int {
        return nativeCaller.invoke1(14778618342366064215, weapon);
    }

    pub fn GET_WEAPON_TINT_COUNT(weaponHash: types.Hash) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(6759740710971153399)), weaponHash);
    }

    pub fn GET_WEAPON_HUD_STATS(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(15649009931461107386, p0, p1);
    }

    pub fn GET_WEAPON_COMPONENT_HUD_STATS(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(12955435042151262712, p0, p1);
    }

    pub fn _0x3133B907D8B32053(p0: types.Any, p1: types.Any) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(3545380775022239827)), p0, p1);
    }

    pub fn GET_WEAPON_CLIP_SIZE(weaponHash: types.Hash) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(6357925372124491444)), weaponHash);
    }

    pub fn SET_PED_CHANCE_OF_FIRING_BLANKS(ped: types.Ped, xBias: f32, yBias: f32) void {
        _ = nativeCaller.invoke3(9473430057970387325, ped, xBias, yBias);
    }

    pub fn _0xB4C8D77C80C0421E(ped: types.Ped, p1: f32) types.Entity {
        return nativeCaller.invoke2(13026898851905159710, ped, p1);
    }

    pub fn REQUEST_WEAPON_HIGH_DETAIL_MODEL(weaponObject: types.Entity) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5194424688306734064)), weaponObject);
    }

    pub fn IS_PED_CURRENT_WEAPON_SILENCED(ped: types.Ped) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7345588343449861831)), ped);
    }

    pub fn SET_WEAPON_SMOKEGRENADE_ASSIGNED(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5437569628196246124)), p0);
    }

    pub fn SET_FLASH_LIGHT_FADE_DISTANCE(distance: f32) types.Any {
        return nativeCaller.invoke1(14890709808944305051, distance);
    }

    pub fn SET_WEAPON_ANIMATION_OVERRIDE(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1177036244454935001)), p0, p1);
    }

    pub fn GET_WEAPON_DAMAGE_TYPE(weaponHash: types.Hash) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(4314654132534227717)), weaponHash);
    }

    pub fn _0xE4DCEC7FD5B739A5(ped: types.Ped) void {
        _ = nativeCaller.invoke1(16491315969314470309, ped);
    }

    pub fn CAN_USE_WEAPON_ON_PARACHUTE(weaponHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(13581701627098144628, weaponHash);
    }
};

pub const ITEMSET = struct {
    pub fn CREATE_ITEMSET(p0: windows.BOOL) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(3867793419214068516)), p0);
    }

    pub fn DESTROY_ITEMSET(p0: types.Any) void {
        _ = nativeCaller.invoke1(16003578706972393178, p0);
    }

    pub fn IS_ITEMSET_VALID(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(12804272885229477803, p0);
    }

    pub fn ADD_TO_ITEMSET(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(16398822311459174365, p0, p1);
    }

    pub fn REMOVE_FROM_ITEMSET(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2731013455570499206)), p0, p1);
    }

    pub fn GET_ITEMSET_SIZE(p0: types.Any) types.Any {
        return nativeCaller.invoke1(15641703559802111537, p0);
    }

    pub fn GET_INDEXED_ITEM_IN_ITEMSET(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(8798202044993121195)), p0, p1);
    }

    pub fn IS_IN_ITEMSET(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(3247031099325006087)), p0, p1);
    }

    pub fn CLEAN_ITEMSET(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4736675692165480993)), p0);
    }
};

pub const STREAMING = struct {
    pub fn LOAD_ALL_OBJECTS_NOW() void {
        _ = nativeCaller.invoke0(13649993082112101183);
    }

    pub fn LOAD_SCENE(x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4920441483675323355)), x, y, z);
    }

    pub fn NETWORK_UPDATE_LOAD_SCENE() types.Any {
        return nativeCaller.invoke0(14148093505384029254);
    }

    pub fn NETWORK_STOP_LOAD_SCENE() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7270552502862745412)));
    }

    pub fn IS_NETWORK_LOADING_SCENE() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(4740700733220758699)));
    }

    pub fn SET_INTERIOR_ACTIVE(interiorID: c_int, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(16391825850913138925, interiorID, toggle);
    }

    pub fn REQUEST_MODEL(model: types.Hash) void {
        _ = nativeCaller.invoke1(10825852671273492652, model);
    }

    pub fn _REQUEST_MODEL_2(model: types.Hash) void {
        _ = nativeCaller.invoke1(11539940711043417374, model);
    }

    pub fn HAS_MODEL_LOADED(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(10999174976919095634, model);
    }

    pub fn _0x8A7A40100EDFEC58(interiorID: c_int, roomName: [*c]u8) void {
        _ = nativeCaller.invoke2(9978358362105965656, interiorID, roomName);
    }

    pub fn SET_MODEL_AS_NO_LONGER_NEEDED(model: types.Hash) void {
        _ = nativeCaller.invoke1(16515533089562745515, model);
    }

    pub fn IS_MODEL_IN_CDIMAGE(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3871372195910563393)), model);
    }

    pub fn IS_MODEL_VALID(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(13846715278875188882, model);
    }

    pub fn IS_MODEL_A_VEHICLE(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1849511532187010366)), model);
    }

    pub fn REQUEST_COLLISION_AT_COORD(x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(526990946549928359)), x, y, z);
    }

    pub fn REQUEST_COLLISION_FOR_MODEL(model: types.Hash) void {
        _ = nativeCaller.invoke1(10537494222108839883, model);
    }

    pub fn HAS_COLLISION_FOR_MODEL_LOADED(model: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2507559639599083578)), model);
    }

    pub fn REQUEST_ADDITIONAL_COLLISION_AT_COORD(p0: f32, p1: f32, p2: f32) void {
        _ = nativeCaller.invoke3(14489608052167256554, p0, p1, p2);
    }

    pub fn DOES_ANIM_DICT_EXIST(animDict: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3288925407143094625)), animDict);
    }

    pub fn REQUEST_ANIM_DICT(animDict: [*c]u8) void {
        _ = nativeCaller.invoke1(15257422121632202486, animDict);
    }

    pub fn HAS_ANIM_DICT_LOADED(animDict: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(15001957746457249932, animDict);
    }

    pub fn REMOVE_ANIM_DICT(animDict: [*c]u8) void {
        _ = nativeCaller.invoke1(17756110238032734726, animDict);
    }

    pub fn REQUEST_ANIM_SET(animSet: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7972635428772450029)), animSet);
    }

    pub fn HAS_ANIM_SET_LOADED(animSet: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(14189161536823175600, animSet);
    }

    pub fn REMOVE_ANIM_SET(animSet: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1600190916137591987)), animSet);
    }

    pub fn REQUEST_CLIP_SET(Alexandra: [*c]u8) void {
        _ = nativeCaller.invoke1(15179134168094313033, Alexandra);
    }

    pub fn HAS_CLIP_SET_LOADED(clipSet: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3567472081491954419)), clipSet);
    }

    pub fn REMOVE_CLIP_SET(clipSet: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(141645767035637140)), clipSet);
    }

    pub fn REQUEST_IPL(iplName: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4734559983020792692)), iplName);
    }

    pub fn REMOVE_IPL(iplName: [*c]u8) void {
        _ = nativeCaller.invoke1(17180206544770345005, iplName);
    }

    pub fn IS_IPL_ACTIVE(iplName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(9846911559021573269, iplName);
    }

    pub fn SET_STREAMING(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7929828657818798216)), toggle);
    }

    pub fn SET_GAME_PAUSES_FOR_STREAMING(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8177647310938554076)), toggle);
    }

    pub fn SET_REDUCE_PED_MODEL_BUDGET(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8626075141584545552)), toggle);
    }

    pub fn SET_REDUCE_VEHICLE_MODEL_BUDGET(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(9278866077444525299, toggle);
    }

    pub fn SET_DITCH_POLICE_MODELS(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4813192708654442036)), p0);
    }

    pub fn GET_NUMBER_OF_STREAMING_REQUESTS() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(4638713605285395593)));
    }

    pub fn REQUEST_PTFX_ASSET() void {
        _ = nativeCaller.invoke0(10685166128146757064);
    }

    pub fn HAS_PTFX_ASSET_LOADED() windows.BOOL {
        return nativeCaller.invoke0(14590989371548583963);
    }

    pub fn REMOVE_PTFX_ASSET() void {
        _ = nativeCaller.invoke0(9855706948368681587);
    }

    pub fn REQUEST_NAMED_PTFX_ASSET(fxName: [*c]u8) void {
        _ = nativeCaller.invoke1(13262405284139535030, fxName);
    }

    pub fn HAS_NAMED_PTFX_ASSET_LOADED(fxName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(9728410087137920084, fxName);
    }

    pub fn _REMOVE_NAMED_PTFX_ASSET(fxName: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6873033708056672621)), fxName);
    }

    pub fn SET_VEHICLE_POPULATION_BUDGET(p0: c_int) void {
        _ = nativeCaller.invoke1(14672198393358120169, p0);
    }

    pub fn SET_PED_POPULATION_BUDGET(p0: c_int) void {
        _ = nativeCaller.invoke1(10130059273862070515, p0);
    }

    pub fn CLEAR_FOCUS() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3582399230505917858)));
    }

    pub fn _SET_FOCUS_AREA(x: f32, y: f32, z: f32, p3: f32, p4: f32, p5: f32) void {
        _ = nativeCaller.invoke6(13507514344510389797, x, y, z, p3, p4, p5);
    }

    pub fn SET_FOCUS_ENTITY(entity: types.Entity) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1841822097142223645)), entity);
    }

    pub fn IS_ENTITY_FOCUS(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3305628913299216199)), entity);
    }

    pub fn _0x0811381EF5062FEC(p0: types.Entity) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(581307532518502380)), p0);
    }

    pub fn _0xAF12610C644A35C9(p0: [*c]types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12615252212068267465, p0, p1);
    }

    pub fn _0x4E52E752C76E7E7A(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5643827625767894650)), p0);
    }

    pub fn _0x219C7B8D53E429FD(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any, p5: types.Any) types.Any {
        return nativeCaller.invoke6(@as(u64, @intCast(2421946546546551293)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x1F3F018BC3AFA77C(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: types.Any, p8: types.Any) types.Any {
        return nativeCaller.invoke9(@as(u64, @intCast(2251520038503688060)), p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn _0x0AD9710CEE2F590F(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: types.Any) types.Any {
        return nativeCaller.invoke7(@as(u64, @intCast(781780310675118351)), p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn _0x1EE7D8DF4425F053(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2226986994190643283)), p0);
    }

    pub fn _0x7D41E9D2D17C5B2D(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(9025752219894176557)), p0);
    }

    pub fn _0x07C313F94746702C(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(559312740087656492)), p0);
    }

    pub fn _0xBC9823AB80A3DCAC() types.Any {
        return nativeCaller.invoke0(13589651095095073964);
    }

    pub fn NEW_LOAD_SCENE_START(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: types.Any) windows.BOOL {
        return nativeCaller.invoke8(@as(u64, @intCast(2389877639980251842)), p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn _0xACCFB4ACF53551B0(p0: f32, p1: f32, p2: f32, p3: f32, p4: types.Any) windows.BOOL {
        return nativeCaller.invoke5(12452370149643997616, p0, p1, p2, p3, p4);
    }

    pub fn NEW_LOAD_SCENE_STOP() void {
        _ = nativeCaller.invoke0(13949725492155249828);
    }

    pub fn IS_NEW_LOAD_SCENE_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(11824770054270229381);
    }

    pub fn IS_NEW_LOAD_SCENE_LOADED() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(123889098213268177)));
    }

    pub fn _0x71E7B2E657449AAD() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8207725548282354349)));
    }

    pub fn START_PLAYER_SWITCH(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(18060066917042199911, p0, p1, p2, p3);
    }

    pub fn STOP_PLAYER_SWITCH() void {
        _ = nativeCaller.invoke0(10790806933449775777);
    }

    pub fn IS_PLAYER_SWITCH_IN_PROGRESS() windows.BOOL {
        return nativeCaller.invoke0(15695836346704376671);
    }

    pub fn GET_PLAYER_SWITCH_TYPE() c_int {
        return nativeCaller.invoke0(12954967789100899938);
    }

    pub fn GET_IDEAL_PLAYER_SWITCH_TYPE(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) c_int {
        return nativeCaller.invoke6(13103137814654094853, x1, y1, z1, x2, y2, z2);
    }

    pub fn GET_PLAYER_SWITCH_STATE() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(5117590216442426021)));
    }

    pub fn GET_PLAYER_SHORT_SWITCH_STATE() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(2375816641523492864)));
    }

    pub fn _0x5F2013F8BC24EE69(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6854500591887249001)), p0);
    }

    pub fn _0x78C0D93253149435() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8701193290245248053)));
    }

    pub fn _0xC208B673CE446B61(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: types.Any) void {
        _ = nativeCaller.invoke9(13981625651669789537, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn _0x0FDE9DBFC0A6BC65(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1143524802295151717)), p0);
    }

    pub fn _0x43D1680C6D19A8E9() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4886801473252993257)));
    }

    pub fn _0x74DE2E8739086740() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8421219511541720896)));
    }

    pub fn _0x8E2A065ABDAE6994() void {
        _ = nativeCaller.invoke0(10244007289206761876);
    }

    pub fn _0xAD5FDF34B81BFE79() void {
        _ = nativeCaller.invoke0(12492949308869181049);
    }

    pub fn _0xDFA80CB25D0A19B3() types.Any {
        return nativeCaller.invoke0(16116145226749974963);
    }

    pub fn _0xD4793DFF3AF2ABCD() void {
        _ = nativeCaller.invoke0(15310336574637648845);
    }

    pub fn _0xBD605B8E0E18B3BB() void {
        _ = nativeCaller.invoke0(13646007536612586427);
    }

    pub fn _0xAAB3200ED59016BC(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(12300210255363577532, p0, p1, p2);
    }

    pub fn _0xD8295AF639FD9CB8(p0: types.Any) void {
        _ = nativeCaller.invoke1(15576080799818947768, p0);
    }

    pub fn _0x933BBEEB8C61B5F4() types.Any {
        return nativeCaller.invoke0(10609283266083141108);
    }

    pub fn SET_PLAYER_INVERTED_UP() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(631303040090047675)));
    }

    pub fn _0x5B48A06DD0E792A5() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6577683649291326117)));
    }

    pub fn DESTROY_PLAYER_IN_PAUSE_MENU() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6590150046017011326)));
    }

    pub fn _0x1E9057A74FD73E23() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2202356593894833699)));
    }

    pub fn _0x0C15B0E443B2349D() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(870796597400843421)));
    }

    pub fn _0xA76359FC80B2438E(p0: f32) void {
        _ = nativeCaller.invoke1(12061583168054117262, p0);
    }

    pub fn _0xBED8CA5FF5E04113(p0: f32, p1: f32, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(13751963975671628051, p0, p1, p2, p3);
    }

    pub fn _0x472397322E92A856() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5126107042663278678)));
    }

    pub fn _0x40AEFD1A244741F2(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4660940953094668786)), p0);
    }

    pub fn _0x03F1A106BDA7DD3E() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(284185301824822590)));
    }

    pub fn _0x95A7DABDDBB78AE7(p0: [*c]types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(10783828341731855079, p0, p1);
    }

    pub fn _0x63EB2B972A218CAC() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7199896357528767660)));
    }

    pub fn _0xFB199266061F820A() types.Any {
        return nativeCaller.invoke0(18093653944824726026);
    }

    pub fn _0xF4A0DADB70F57FA6() void {
        _ = nativeCaller.invoke0(17627329577555951526);
    }

    pub fn _0x5068F488DDB54DD8() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5794149789284519384)));
    }

    pub fn PREFETCH_SRL(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4405742584854648876)), p0);
    }

    pub fn IS_SRL_LOADED() windows.BOOL {
        return nativeCaller.invoke0(14998737188714557627);
    }

    pub fn BEGIN_SRL() void {
        _ = nativeCaller.invoke0(11217864779081431075);
    }

    pub fn END_SRL() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(738964234645925399)));
    }

    pub fn SET_SRL_TIME(p0: f32) void {
        _ = nativeCaller.invoke1(12054539833599911864, p0);
    }

    pub fn _0xEF39EE20C537E98C(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) void {
        _ = nativeCaller.invoke6(17238070873252424076, p0, p1, p2, p3, p4, p5);
    }

    pub fn _0xBEB2D9A1D9A8F55A(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(13741284702225495386, p0, p1, p2, p3);
    }

    pub fn _0x20C6C7E4EB082A7F(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2361794840612055679)), p0);
    }

    pub fn _0xF8155A7F03DDFC8E(p0: types.Any) void {
        _ = nativeCaller.invoke1(17876293797489278094, p0);
    }

    pub fn SET_HD_AREA(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(13285379626243450741, p0, p1, p2, p3);
    }

    pub fn CLEAR_HD_AREA() void {
        _ = nativeCaller.invoke0(14868829675486513171);
    }

    pub fn _0xB5A4DB34FE89B88A() void {
        _ = nativeCaller.invoke0(13088827437700724874);
    }

    pub fn _0xCCE26000E9A6FAD7() void {
        _ = nativeCaller.invoke0(14763468085510208215);
    }

    pub fn _0x0BC3144DEB678666(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(847543479770252902)), p0);
    }

    pub fn _0xF086AD9354FAC3A3(p0: types.Any) void {
        _ = nativeCaller.invoke1(17331731064279450531, p0);
    }

    pub fn _0x3D3D8B3BE5A83D35() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4412836299265293621)));
    }
};

pub const SCRIPT = struct {
    pub fn REQUEST_SCRIPT(scriptName: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7977554008792313486)), scriptName);
    }

    pub fn SET_SCRIPT_AS_NO_LONGER_NEEDED(scriptName: [*c]u8) void {
        _ = nativeCaller.invoke1(14487285925372368972, scriptName);
    }

    pub fn HAS_SCRIPT_LOADED(scriptName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(16630842602425130737, scriptName);
    }

    pub fn DOES_SCRIPT_EXIST(scriptName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(18159767552029868442, scriptName);
    }

    pub fn _REQUEST_STREAMED_SCRIPT(scriptHash: types.Hash) void {
        _ = nativeCaller.invoke1(15432261226617787366, scriptHash);
    }

    pub fn _SET_STREAMED_SCRIPT_AS_NO_LONGER_NEEDED(scriptHash: types.Hash) void {
        _ = nativeCaller.invoke1(14248267209664748327, scriptHash);
    }

    pub fn _HAS_STREAMED_SCRIPT_LOADED(scriptHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6849707268841237508)), scriptHash);
    }

    pub fn _0xF86AA3C56BA31381(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(17900299737247191937, p0);
    }

    pub fn TERMINATE_THREAD(id: c_int) void {
        _ = nativeCaller.invoke1(14461491531900042452, id);
    }

    pub fn IS_THREAD_ACTIVE(threadId: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5109806802820293655)), threadId);
    }

    pub fn _GET_THREAD_NAME(threadId: c_int) [*c]u8 {
        return nativeCaller.invoke1(@as(u64, @intCast(406497875456797035)), threadId);
    }

    pub fn _0xDADFADA5A20143A8() void {
        _ = nativeCaller.invoke0(15771515346973967272);
    }

    pub fn _0x30B4FA1C82DD4B9F() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(3509705009990028191)));
    }

    pub fn GET_ID_OF_THIS_THREAD() c_int {
        return nativeCaller.invoke0(14052137831553183265);
    }

    pub fn TERMINATE_THIS_THREAD() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1193458620648027898)));
    }

    pub fn _GET_NUMBER_OF_INSTANCES_OF_STREAMED_SCRIPT(scriptHash: types.Hash) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(3207594115197814009)), scriptHash);
    }

    pub fn GET_THIS_SCRIPT_NAME() [*c]u8 {
        return nativeCaller.invoke0(@as(u64, @intCast(4912875783519368074)));
    }

    pub fn _GET_THIS_SCRIPT_HASH() types.Hash {
        return nativeCaller.invoke0(9951982208438757502);
    }

    pub fn GET_NUMBER_OF_EVENTS(p0: c_int) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(6886749890234687658)), p0);
    }

    pub fn GET_EVENT_EXISTS(p0: c_int, eventIndex: c_int) windows.BOOL {
        return nativeCaller.invoke2(10623535673165802933, p0, eventIndex);
    }

    pub fn GET_EVENT_AT_INDEX(p0: c_int, eventIndex: c_int) c_int {
        return nativeCaller.invoke2(15633799955427500371, p0, eventIndex);
    }

    pub fn GET_EVENT_DATA(p0: c_int, eventIndex: c_int, eventData: [*c]c_int, p3: c_int) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(2955069715068431737)), p0, eventIndex, eventData, p3);
    }

    pub fn TRIGGER_SCRIPT_EVENT(p0: types.Any, p1: [*c]c_int, p2: c_int, p3: c_int) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(6550939030955736669)), p0, p1, p2, p3);
    }

    pub fn SHUTDOWN_LOADING_SCREEN() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(544582165167134263)));
    }

    pub fn SET_NO_LOADING_SCREEN(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5936531669087452681)), toggle);
    }

    pub fn _GET_NO_LOADING_SCREEN() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(1783749871316081084)));
    }

    pub fn _0xB1577667C3708F9B() void {
        _ = nativeCaller.invoke0(12778812655719714715);
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
};

pub const GRAPHICS = struct {
    pub fn SET_DEBUG_LINES_AND_SPHERES_DRAWING_ACTIVE(enabled: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1683057616194752709)), enabled);
    }

    pub fn DRAW_DEBUG_LINE(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, r: c_int, g: c_int, b: c_int, alpha: c_int) void {
        _ = nativeCaller.invoke10(@as(u64, @intCast(9214274567968275632)), x1, y1, z1, x2, y2, z2, r, g, b, alpha);
    }

    pub fn DRAW_DEBUG_LINE_WITH_TWO_COLOURS(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, r1: c_int, g1: c_int, b1: c_int, r2: c_int, g2: c_int, b2: c_int, alpha1: c_int, alpha2: c_int) void {
        _ = nativeCaller.invoke14(15616698641015177108, x1, y1, z1, x2, y2, z2, r1, g1, b1, r2, g2, b2, alpha1, alpha2);
    }

    pub fn DRAW_DEBUG_SPHERE(x: f32, y: f32, z: f32, radius: f32, r: c_int, g: c_int, b: c_int, alpha: c_int) void {
        _ = nativeCaller.invoke8(12310182876797576754, x, y, z, radius, r, g, b, alpha);
    }

    pub fn DRAW_DEBUG_BOX(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, r: c_int, g: c_int, b: c_int, alpha: c_int) void {
        _ = nativeCaller.invoke10(@as(u64, @intCast(592835387914023869)), x1, y1, z1, x2, y2, z2, r, g, b, alpha);
    }

    pub fn DRAW_DEBUG_CROSS(x: f32, y: f32, z: f32, size: f32, r: c_int, g: c_int, b: c_int, alpha: c_int) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(8336471418351163449)), x, y, z, size, r, g, b, alpha);
    }

    pub fn DRAW_DEBUG_TEXT(text: [*c]u8, x: f32, y: f32, z: f32, r: c_int, g: c_int, b: c_int, alpha: c_int) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(4108375870853646568)), text, x, y, z, r, g, b, alpha);
    }

    pub fn DRAW_DEBUG_TEXT_2D(text: [*c]u8, x: f32, y: f32, z: f32, r: c_int, g: c_int, b: c_int, alpha: c_int) void {
        _ = nativeCaller.invoke8(11798074867750820495, text, x, y, z, r, g, b, alpha);
    }

    pub fn DRAW_LINE(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, r: c_int, g: c_int, b: c_int, alpha: c_int) void {
        _ = nativeCaller.invoke10(@as(u64, @intCast(7742345298724472448)), x1, y1, z1, x2, y2, z2, r, g, b, alpha);
    }

    pub fn DRAW_POLY(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, x3: f32, y3: f32, z3: f32, r: c_int, g: c_int, b: c_int, alpha: c_int) void {
        _ = nativeCaller.invoke13(12404726881981786193, x1, y1, z1, x2, y2, z2, x3, y3, z3, r, g, b, alpha);
    }

    pub fn DRAW_BOX(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, r: c_int, g: c_int, b: c_int, alpha: c_int) void {
        _ = nativeCaller.invoke10(15251887762495533650, x1, y1, z1, x2, y2, z2, r, g, b, alpha);
    }

    pub fn _0x23BA6B0C2AD7B0D3(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2574487836998217939)), p0);
    }

    pub fn _0x1DD2139A9A20DCE8() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2148801526940884200)));
    }

    pub fn _0x90A78ECAA4E78453() types.Any {
        return nativeCaller.invoke0(10423456863573476435);
    }

    pub fn _0x0A46AF8A78DC5E0A() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(740472198017080842)));
    }

    pub fn _0x4862437A486F91B0(p0: [*c]types.Any, p1: types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(5215805510928798128)), p0, p1, p2, p3);
    }

    pub fn _0x1670F8D05056F257(p0: [*c]types.Any) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(1617065839810769495)), p0);
    }

    pub fn _0x7FA5D82B8F58EC06() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(9197995495574268934)));
    }

    pub fn _0x5B0316762AFD4A64() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6558110179164768868)));
    }

    pub fn _0x346EF3ECAAAB149E() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3778225335211594910)));
    }

    pub fn _0xA67C35C56EB1BD9D() types.Any {
        return nativeCaller.invoke0(11996522629490130333);
    }

    pub fn _0x0D6CA79EEEBD8CA3() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(967332321029885091)));
    }

    pub fn _0xD801CC02177FA3F1() void {
        _ = nativeCaller.invoke0(15564946096525386737);
    }

    pub fn _0x1BBC135A4D25EDDE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1998493613207973342)), p0);
    }

    pub fn _0x3DEC726C25A11BAC(p0: c_int) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(4462067139630668716)), p0);
    }

    pub fn _0x0C0C4E81E1AC60A0() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(868155147919581344)));
    }

    pub fn _0x759650634F07B6B4(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8473048136402056884)), p0);
    }

    pub fn _0xCB82A0BF0E3E3265(p0: types.Any) types.Any {
        return nativeCaller.invoke1(14664460079109911141, p0);
    }

    pub fn _0x6A12D88881435DCA() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7643409598396980682)));
    }

    pub fn _0x1072F115DAB0717E(p0: windows.BOOL, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1185274728117465470)), p0, p1);
    }

    pub fn GET_MAXIMUM_NUMBER_OF_PHOTOS() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(3806162157312716991)));
    }

    pub fn _0xDC54A7AF8B3A14EF() types.Any {
        return nativeCaller.invoke0(15876498958784795887);
    }

    pub fn _0x473151EBC762C6DA() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5129971523656009434)));
    }

    pub fn _0x2A893980E96B659A(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(3065044247237059994)), p0);
    }

    pub fn _0xF5BED327CEA362B1(p0: types.Any) types.Any {
        return nativeCaller.invoke1(17707822952791368369, p0);
    }

    pub fn _0x4AF92ACD3141D96C() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5402396288790681964)));
    }

    pub fn _0xE791DF1F73ED2C8B(p0: types.Any) types.Any {
        return nativeCaller.invoke1(16686363420566301835, p0);
    }

    pub fn _0xEC72C258667BE5EA(p0: types.Any) types.Any {
        return nativeCaller.invoke1(17037894025228314090, p0);
    }

    pub fn _0x40AFB081F8ADD4EE(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(4661138211621164270)), p0);
    }

    pub fn _DRAW_LIGHT_WITH_RANGE_WITH_SHADOW(x: f32, y: f32, z: f32, r: c_int, g: c_int, b: c_int, range: f32, intensity: f32, shadow: f32) void {
        _ = nativeCaller.invoke9(17626695965285041557, x, y, z, r, g, b, range, intensity, shadow);
    }

    pub fn DRAW_LIGHT_WITH_RANGE(x: f32, y: f32, z: f32, r: c_int, g: c_int, b: c_int, range: f32, intensity: f32) void {
        _ = nativeCaller.invoke8(17483451453036157908, x, y, z, r, g, b, range, intensity);
    }

    pub fn DRAW_SPOT_LIGHT(x: f32, y: f32, z: f32, dirVectorX: f32, dirVectorY: f32, dirVectorZ: f32, r: c_int, g: c_int, b: c_int, distance: f32, brightness: f32, roundness: f32, radius: f32, fadeout: f32) void {
        _ = nativeCaller.invoke14(15057305032293387059, x, y, z, dirVectorX, dirVectorY, dirVectorZ, r, g, b, distance, brightness, roundness, radius, fadeout);
    }

    pub fn _DRAW_SPOT_LIGHT_WITH_SHADOW(x: f32, y: f32, z: f32, dirVectorX: f32, dirVectorY: f32, dirVectorZ: f32, r: c_int, g: c_int, b: c_int, distance: f32, brightness: f32, roundness: f32, radius: f32, fadeout: f32, shadow: f32) void {
        _ = nativeCaller.invoke15(@as(u64, @intCast(6614196010357986523)), x, y, z, dirVectorX, dirVectorY, dirVectorZ, r, g, b, distance, brightness, roundness, radius, fadeout, shadow);
    }

    pub fn _0xC9B18B4619F48F7B(p0: f32) void {
        _ = nativeCaller.invoke1(14533550605700730747, p0);
    }

    pub fn _0xDEADC0DEDEADC0DE(object: types.Object) void {
        _ = nativeCaller.invoke1(16045693110842147038, object);
    }

    pub fn DRAW_MARKER(type_: c_int, x: f32, y: f32, z: f32, dirX: f32, dirY: f32, dirZ: f32, rotX: f32, rotY: f32, rotZ: f32, scaleX: f32, scaleY: f32, scaleZ: f32, colorR: c_int, colorG: c_int, colorB: c_int, alpha: c_int, bobUpAndDown: windows.BOOL, faceCamera: windows.BOOL, p19: c_int, rotate: windows.BOOL, textureDict: [*c]u8, textureName: [*c]u8, drawOnEnts: windows.BOOL) void {
        _ = nativeCaller.invoke24(@as(u64, @intCast(2902427857584726153)), type_, x, y, z, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, colorR, colorG, colorB, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts);
    }

    pub fn CREATE_CHECKPOINT(Type: c_int, x: f32, y: f32, z: f32, x2: f32, y2: f32, z2: f32, radius: f32, R: c_int, G: c_int, B: c_int, Alpha: c_int, p12: c_int) types.Any {
        return nativeCaller.invoke13(@as(u64, @intCast(86958739780190155)), Type, x, y, z, x2, y2, z2, radius, R, G, B, Alpha, p12);
    }

    pub fn _0x4B5B4DA5D79F1943(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5430019150407735619)), p0, p1);
    }

    pub fn SET_CHECKPOINT_CYLINDER_HEIGHT(checkpoint: types.Any, nearHeight: f32, farHeight: f32, scaleRadius: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(2812404413663640969)), checkpoint, nearHeight, farHeight, scaleRadius);
    }

    pub fn SET_CHECKPOINT_RGBA(checkpoint: types.Any, colorR: c_int, colorG: c_int, colorB: c_int, alpha: c_int) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(8171560653204965367)), checkpoint, colorR, colorG, colorB, alpha);
    }

    pub fn _SET_CHECKPOINT_ICON_RGBA(checkpoint: types.Any, colorR: c_int, colorG: c_int, colorB: c_int, colorA: c_int) void {
        _ = nativeCaller.invoke5(13396591030873621888, checkpoint, colorR, colorG, colorB, colorA);
    }

    pub fn _0xF51D36185993515D(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any) void {
        _ = nativeCaller.invoke7(17662332791826895197, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn _0x615D3925E87A3B26(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7015826629489998630)), p0);
    }

    pub fn DELETE_CHECKPOINT(checkpoint: types.Any) void {
        _ = nativeCaller.invoke1(17720881635468301614, checkpoint);
    }

    pub fn _0x22A249A53034450A(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2495638117343839498)), p0);
    }

    pub fn _0xDC459CFA0CCE245B(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(15872265059507774555, p0);
    }

    pub fn REQUEST_STREAMED_TEXTURE_DICT(textureDict: [*c]u8, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(16114705809917771221, textureDict, toggle);
    }

    pub fn HAS_STREAMED_TEXTURE_DICT_LOADED(textureDict: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(91750494399812324)), textureDict);
    }

    pub fn SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED(textureDict: [*c]u8) void {
        _ = nativeCaller.invoke1(13703517772758820869, textureDict);
    }

    pub fn DRAW_RECT(posX: f32, posY: f32, width: f32, height: f32, R: c_int, G: c_int, B: c_int, A: c_int) void {
        _ = nativeCaller.invoke8(@as(u64, @intCast(4206795403398567152)), posX, posY, width, height, R, G, B, A);
    }

    pub fn _0xC6372ECD45D73BCD(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14282936202403724237, p0);
    }

    pub fn _0x61BB1D9B3A95D802(layer: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7042254994863937538)), layer);
    }

    pub fn _SET_SCREEN_DRAW_POSITION(x: c_int, y: c_int) void {
        _ = nativeCaller.invoke2(13305974099546635958, x, y);
    }

    pub fn _0xE3A3DB414A373DAB() void {
        _ = nativeCaller.invoke0(16403195341277969835);
    }

    pub fn _0xF5A2C681787E579D(p0: f32, p1: f32, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(17699927744894097309, p0, p1, p2, p3);
    }

    pub fn _0x6DD8F5AA635EB4B2(p0: f32, p1: f32, p2: [*c]types.Any, p3: [*c]types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(7915346457264043186)), p0, p1, p2, p3);
    }

    pub fn GET_SAFE_ZONE_SIZE() types.Any {
        return nativeCaller.invoke0(13470556441847568368);
    }

    pub fn DRAW_SPRITE(textureDict: [*c]u8, textureName: [*c]u8, screenX: f32, screenY: f32, scaleX: f32, scaleY: f32, heading: f32, colorR: c_int, colorG: c_int, colorB: c_int, colorA: c_int) void {
        _ = nativeCaller.invoke11(16717272063779526800, textureDict, textureName, screenX, screenY, scaleX, scaleY, heading, colorR, colorG, colorB, colorA);
    }

    pub fn ADD_ENTITY_ICON(entity: types.Entity, icon: [*c]u8) types.Any {
        return nativeCaller.invoke2(11300726557217082832, entity, icon);
    }

    pub fn SET_ENTITY_ICON_VISIBILITY(entity: types.Entity, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(16206413183313164849, entity, toggle);
    }

    pub fn SET_ENTITY_ICON_COLOR(entity: types.Entity, r: c_int, g: c_int, b: c_int, a: c_int) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(2116508604963152440)), entity, r, g, b, a);
    }

    pub fn SET_DRAW_ORIGIN(x: f32, y: f32, z: f32, p3: types.Any) void {
        _ = nativeCaller.invoke4(12249800829367284758, x, y, z, p3);
    }

    pub fn CLEAR_DRAW_ORIGIN() void {
        _ = nativeCaller.invoke0(18377889423277741999);
    }

    pub fn ATTACH_TV_AUDIO_TO_ENTITY(entity: types.Entity) void {
        _ = nativeCaller.invoke1(9537407365930223155, entity);
    }

    pub fn SET_TV_AUDIO_FRONTEND(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1242197853481080692)), toggle);
    }

    pub fn LOAD_MOVIE_MESH_SET(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(13141613960760453361, p0);
    }

    pub fn RELEASE_MOVIE_MESH_SET(p0: types.Any) void {
        _ = nativeCaller.invoke1(16938489685853376899, p0);
    }

    pub fn _0x9B6E70C5CEEF4EEB(p0: types.Any) types.Any {
        return nativeCaller.invoke1(11200013318199660267, p0);
    }

    pub fn GET_SCREEN_RESOLUTION(x: [*c]c_int, y: [*c]c_int) void {
        _ = nativeCaller.invoke2(9839617397771089444, x, y);
    }

    pub fn _GET_SCREEN_ACTIVE_RESOLUTION(x: [*c]c_int, y: [*c]c_int) void {
        _ = nativeCaller.invoke2(9744838726593289683, x, y);
    }

    pub fn _GET_SCREEN_ASPECT_RATIO(b: windows.BOOL) f32 {
        return nativeCaller.invoke1(17379530557664791943, b);
    }

    pub fn _0xB2EBE8CBC58B90E9() types.Any {
        return nativeCaller.invoke0(12892654320168440041);
    }

    pub fn GET_IS_WIDESCREEN() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(3517113235013310725)));
    }

    pub fn GET_IS_HIDEF() windows.BOOL {
        return nativeCaller.invoke0(9578365966413583049);
    }

    pub fn _0xEFABC7722293DA7C() void {
        _ = nativeCaller.invoke0(17270116489102613116);
    }

    pub fn SET_NIGHTVISION(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1798662448701634653)), toggle);
    }

    pub fn _0x35FB78DC42B7BD21() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3889835590572031265)));
    }

    pub fn _IS_NIGHTVISION_INACTIVE() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(2450701416357846905)));
    }

    pub fn _0xEF398BEEE4EF45F9(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17237962906896647673, p0);
    }

    pub fn SET_NOISEOVERIDE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(16683513473157047241, p0);
    }

    pub fn SET_NOISINESSOVERIDE(p0: f32) void {
        _ = nativeCaller.invoke1(14657664533053181031, p0);
    }

    pub fn _WORLD3D_TO_SCREEN2D(x3d: f32, y3d: f32, z3d: f32, x2d: [*c]f32, y2d: [*c]f32) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(3812348786834502901)), x3d, y3d, z3d, x2d, y2d);
    }

    pub fn GET_TEXTURE_RESOLUTION(textureDict: [*c]u8, textureName: [*c]u8) types.Vector3 {
        return nativeCaller.invoke2(@as(u64, @intCast(3851544041993800721)), textureDict, textureName);
    }

    pub fn _0xE2892E7E55D7073A(p0: f32) void {
        _ = nativeCaller.invoke1(16323629444521985850, p0);
    }

    pub fn SET_FLASH(p0: f32, p1: f32, fadeIn: f32, duration: f32, fadeOut: f32) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(772440552382255046)), p0, p1, fadeIn, duration, fadeOut);
    }

    pub fn _0x3669F1B198DCAA4F() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3920930695678831183)));
    }

    pub fn _SET_BLACKOUT(enable: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1326417132894082308)), enable);
    }

    pub fn _0xC35A6D07C93802B2() void {
        _ = nativeCaller.invoke0(14076683465507996338);
    }

    pub fn CREATE_TRACKED_POINT() types.Object {
        return nativeCaller.invoke0(16341667072337373792);
    }

    pub fn SET_TRACKED_POINT_INFO(point: types.Object, x: f32, y: f32, z: f32, radius: f32) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(1607446090157984944)), point, x, y, z, radius);
    }

    pub fn IS_TRACKED_POINT_VISIBLE(point: types.Object) windows.BOOL {
        return nativeCaller.invoke1(14149410262693846184, point);
    }

    pub fn DESTROY_TRACKED_POINT(point: types.Object) void {
        _ = nativeCaller.invoke1(12852649963575233090, point);
    }

    pub fn _0xBE197EAA669238F4(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) types.Any {
        return nativeCaller.invoke4(13698119011954473204, p0, p1, p2, p3);
    }

    pub fn _0x61F95E5BB3E0A8C6(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7059777638832842950)), p0);
    }

    pub fn _0xAE51BC858F32BA66(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32) void {
        _ = nativeCaller.invoke5(12561028117532162662, p0, p1, p2, p3, p4);
    }

    pub fn _0x649C97D52332341A(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7249836441833976858)), p0);
    }

    pub fn _0x2C42340F916C5930(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(3189168727600683312)), p0);
    }

    pub fn _0x14FC5833464340A8() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1512180552135033000)));
    }

    pub fn _0x0218BA067D249DEA() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(151075124549033450)));
    }

    pub fn _0x1612C45F9E3E0D44() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1590549533371010372)));
    }

    pub fn _0x5DEBD9C4DC995692() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6767742304592156306)));
    }

    pub fn _0x6D955F6A9E0295B1(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(7896322433186174385)), p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn _0x302C91AB2D477F7E() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3471309577180905342)));
    }

    pub fn _0x03FC694AE06C5A20() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(287220246558562848)));
    }

    pub fn _0xD2936CAB8B58FCBD(p0: types.Any, p1: windows.BOOL, p2: f32, p3: f32, p4: f32, p5: f32, p6: windows.BOOL, p7: f32) void {
        _ = nativeCaller.invoke8(15173591053574405309, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn _0x5F0F3F56635809EF(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6849763198520265199)), p0);
    }

    pub fn _0x5E9DAF5A20F15908(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6817798212543404296)), p0);
    }

    pub fn _0x36F6626459D91457(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3960461105462580311)), p0);
    }

    pub fn _SET_FAR_SHADOWS_SUPPRESSED(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(9290006893322648331, toggle);
    }

    pub fn _0x25FC3E33A31AD0C9(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2737131065035116745)), p0);
    }

    pub fn _0xB11D94BC55F41932(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(12762520455654676786, p0);
    }

    pub fn _0x27CB772218215325() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2867516576068883237)));
    }

    pub fn _0x6DDBF9DFFC4AC080(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7916195510439559296)), p0);
    }

    pub fn _0xD39D13C9FEBF0511(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(15248365671629653265, p0);
    }

    pub fn _0x02AC28F3A01FA04A(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(192573910898679882)), p0);
    }

    pub fn _0x0AE73D8DF3A762B2(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(785664339886957234)), p0);
    }

    pub fn _0xA51C4B86B71652AE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11897467357575402158, p0);
    }

    pub fn _0x312342E1A4874F3F(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: windows.BOOL) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(3540747268938747711)), p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn _0x2485D34E50A22E84(p0: f32, p1: f32, p2: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2631741890581638788)), p0, p1, p2);
    }

    pub fn _0x12995F2E53FFA601(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any, p9: types.Any, p10: types.Any, p11: types.Any) void {
        _ = nativeCaller.invoke12(@as(u64, @intCast(1340207016701830657)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
    }

    pub fn _0xDBAA5EC848BA2D46(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(15828568054653660486, p0, p1);
    }

    pub fn _0xC0416B061F2B7E5E(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(13853471602805276254, p0);
    }

    pub fn _0xB1BB03742917A5D6(type_: c_int, x: f32, y: f32, z: f32, p4: f32, r: c_int, g: c_int, b: c_int, a: c_int) void {
        _ = nativeCaller.invoke9(12806833762798642646, type_, x, y, z, p4, r, g, b, a);
    }

    pub fn _0x9CFDD90B2B844BF7(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32) void {
        _ = nativeCaller.invoke5(11312436481022512119, p0, p1, p2, p3, p4);
    }

    pub fn _0x06F761EA47C1D3ED(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(501977542329226221)), p0);
    }

    pub fn _0xA4819F5E23E2FFAD() types.Any {
        return nativeCaller.invoke0(11853930920893677485);
    }

    pub fn _0xA4664972A9B8F8BA(p0: types.Any) types.Vector3 {
        return nativeCaller.invoke1(11846236626667239610, p0);
    }

    pub fn SET_SEETHROUGH(Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(9081669462265990368)), Toggle);
    }

    pub fn _IS_SEETHROUGH_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(4951719587391998931)));
    }

    pub fn _0xD7D0B00177485411(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(15551123033653007377, p0, p1);
    }

    pub fn _0xB3C641F3630BF6DA(p0: f32) void {
        _ = nativeCaller.invoke1(12954113891772397274, p0);
    }

    pub fn _0xE59343E9E96529E7() types.Any {
        return nativeCaller.invoke0(16542640528184125927);
    }

    pub fn _0xE63D7C6EECECB66B(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(16590553418165958251, p0);
    }

    pub fn _0xE3E2C1B4C59DBC77(p0: types.Any) void {
        _ = nativeCaller.invoke1(16420900173499972727, p0);
    }

    pub fn _TRANSITION_TO_BLURRED(transitionTime: f32) windows.BOOL {
        return nativeCaller.invoke1(11756825268821131228, transitionTime);
    }

    pub fn _TRANSITION_FROM_BLURRED(transitionTime: f32) windows.BOOL {
        return nativeCaller.invoke1(17270399324890869973, transitionTime);
    }

    pub fn _0xDE81239437E8C5A8() void {
        _ = nativeCaller.invoke0(16033135267915810216);
    }

    pub fn IS_PARTICLE_FX_DELAYED_BLINK() f32 {
        return nativeCaller.invoke0(@as(u64, @intCast(6686367688574230067)));
    }

    pub fn _0x7B226C785A52A0A9() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8872773480040538281)));
    }

    pub fn _SET_FROZEN_RENDERING_DISABLED(enabled: windows.BOOL) void {
        _ = nativeCaller.invoke1(16123540706355665591, enabled);
    }

    pub fn _0xEB3DAC2C86001E5E() types.Any {
        return nativeCaller.invoke0(16950893879719108190);
    }

    pub fn _0xE1C8709406F2C41C() void {
        _ = nativeCaller.invoke0(16269377434949960732);
    }

    pub fn _0x851CD923176EBA7C() void {
        _ = nativeCaller.invoke0(9591780051132529276);
    }

    pub fn _0xBA3D65906822BED5(p0: windows.BOOL, p1: windows.BOOL, p2: f32, p3: f32, p4: f32, p5: f32) void {
        _ = nativeCaller.invoke6(13419994135530749653, p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x7AC24EAB6D74118D(p0: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8845719116291772813)), p0);
    }

    pub fn _0xBCEDB009461DA156() types.Any {
        return nativeCaller.invoke0(13613730802488418646);
    }

    pub fn _0x27FEB5254759CDE3(textureDict: [*c]u8, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(2881939983279181283)), textureDict, p1);
    }

    pub fn START_PARTICLE_FX_NON_LOOPED_AT_COORD(effectName: [*c]u8, x: f32, y: f32, z: f32, xRot: f32, yRot: f32, zRot: f32, scale: f32, p8: windows.BOOL, p9: windows.BOOL, p10: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke11(@as(u64, @intCast(2671361570822135507)), effectName, x, y, z, xRot, yRot, zRot, scale, p8, p9, p10);
    }

    pub fn _START_PARTICLE_FX_NON_LOOPED_AT_COORD_2(effectName: [*c]u8, x: f32, y: f32, z: f32, xRot: f32, yRot: f32, zRot: f32, scale: f32, p8: windows.BOOL, p9: windows.BOOL, p10: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke11(17684370438765941597, effectName, x, y, z, xRot, yRot, zRot, scale, p8, p9, p10);
    }

    pub fn START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE(effectName: [*c]u8, ped: types.Ped, xOffset: f32, yOffset: f32, zOffset: f32, xRot: f32, yRot: f32, zRot: f32, boneIndex: c_int, scale: f32, p10: windows.BOOL, p11: windows.BOOL, p12: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke13(@as(u64, @intCast(1044398152630765081)), effectName, ped, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, p10, p11, p12);
    }

    pub fn _START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE_2(effectName: [*c]u8, ped: types.Ped, xOffset: f32, yOffset: f32, zOffset: f32, xRot: f32, yRot: f32, zRot: f32, boneIndex: c_int, scale: f32, p10: windows.BOOL, p11: windows.BOOL, p12: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke13(11825162084267246287, effectName, ped, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, p10, p11, p12);
    }

    pub fn START_PARTICLE_FX_NON_LOOPED_ON_ENTITY(effectName: [*c]u8, entity: types.Entity, xOffset: f32, yOffset: f32, zOffset: f32, xRot: f32, yRot: f32, zRot: f32, scale: f32, p9: windows.BOOL, p10: windows.BOOL, p11: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke12(@as(u64, @intCast(960291159887317458)), effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, p9, p10, p11);
    }

    pub fn _START_PARTICLE_FX_NON_LOOPED_ON_ENTITY_2(effectName: [*c]u8, entity: types.Entity, xOffset: f32, yOffset: f32, zOffset: f32, xRot: f32, yRot: f32, zRot: f32, scale: f32, p9: windows.BOOL, p10: windows.BOOL, p11: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke12(14510230605445337405, effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, p9, p10, p11);
    }

    pub fn SET_PARTICLE_FX_NON_LOOPED_COLOUR(r: f32, g: f32, b: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2743882230916493922)), r, g, b);
    }

    pub fn SET_PARTICLE_FX_NON_LOOPED_ALPHA(alpha: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8581201661510857468)), alpha);
    }

    pub fn _SET_PARTICLE_FX_CAM_INSIDE_VEHICLE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(10150709601296759610, p0);
    }

    pub fn START_PARTICLE_FX_LOOPED_AT_COORD(effectName: [*c]u8, x: f32, y: f32, z: f32, xRot: f32, yRot: f32, zRot: f32, scale: f32, p8: windows.BOOL, p9: windows.BOOL, p10: windows.BOOL, p11: windows.BOOL) types.Any {
        return nativeCaller.invoke12(16250382670785745127, effectName, x, y, z, xRot, yRot, zRot, scale, p8, p9, p10, p11);
    }

    pub fn START_PARTICLE_FX_LOOPED_ON_PED_BONE(effectName: [*c]u8, ped: types.Ped, xOffset: f32, yOffset: f32, zOffset: f32, xRot: f32, yRot: f32, zRot: f32, boneIndex: c_int, scale: f32, p10: windows.BOOL, p11: windows.BOOL, p12: windows.BOOL) types.Any {
        return nativeCaller.invoke13(17477812592399448188, effectName, ped, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, p10, p11, p12);
    }

    pub fn START_PARTICLE_FX_LOOPED_ON_ENTITY(effectName: [*c]u8, entity: types.Entity, xOffset: f32, yOffset: f32, zOffset: f32, xRot: f32, yRot: f32, zRot: f32, scale: f32, p9: windows.BOOL, p10: windows.BOOL, p11: windows.BOOL) types.Any {
        return nativeCaller.invoke12(@as(u64, @intCast(1937722214304277783)), effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, p9, p10, p11);
    }

    pub fn _START_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(effectName: [*c]u8, entity: types.Entity, xOffset: f32, yOffset: f32, zOffset: f32, xRot: f32, yRot: f32, zRot: f32, boneIndex: c_int, scale: f32, p10: windows.BOOL, p11: windows.BOOL, p12: windows.BOOL) types.Any {
        return nativeCaller.invoke13(14333625685297823499, effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, p10, p11, p12);
    }

    pub fn _START_PARTICLE_FX_LOOPED_ON_ENTITY_2(effectName: [*c]u8, entity: types.Entity, xOffset: f32, yOffset: f32, zOffset: f32, xRot: f32, yRot: f32, zRot: f32, scale: f32, p9: windows.BOOL, p10: windows.BOOL, p11: windows.BOOL) types.Any {
        return nativeCaller.invoke12(@as(u64, @intCast(8025670286167043613)), effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, p9, p10, p11);
    }

    pub fn _START_PARTICLE_FX_LOOPED_ON_ENTITY_BONE_2(effectName: [*c]u8, entity: types.Entity, xOffset: f32, yOffset: f32, zOffset: f32, xRot: f32, yRot: f32, zRot: f32, boneIndex: c_int, scale: f32, p10: windows.BOOL, p11: windows.BOOL, p12: windows.BOOL) types.Any {
        return nativeCaller.invoke13(15988411105938116355, effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, p10, p11, p12);
    }

    pub fn STOP_PARTICLE_FX_LOOPED(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(10337337331096316310, p0, p1);
    }

    pub fn REMOVE_PARTICLE_FX(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(14123658133604488143, p0, p1);
    }

    pub fn REMOVE_PARTICLE_FX_FROM_ENTITY(p0: types.Any) void {
        _ = nativeCaller.invoke1(13330284274827555877, p0);
    }

    pub fn REMOVE_PARTICLE_FX_IN_RANGE(X: f32, Y: f32, Z: f32, radius: f32) void {
        _ = nativeCaller.invoke4(15932040156801233669, X, Y, Z, radius);
    }

    pub fn DOES_PARTICLE_FX_LOOPED_EXIST(ptfxHandle: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8408201869211353243)), ptfxHandle);
    }

    pub fn SET_PARTICLE_FX_LOOPED_OFFSETS(ptfxHandle: c_int, x: f32, y: f32, z: f32, rotX: f32, rotY: f32, rotZ: f32) void {
        _ = nativeCaller.invoke7(17860691097194871875, ptfxHandle, x, y, z, rotX, rotY, rotZ);
    }

    pub fn SET_PARTICLE_FX_LOOPED_EVOLUTION(ptfxHandle: c_int, propertyName: [*c]u8, amount: f32, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(6848931988011301858)), ptfxHandle, propertyName, amount, p3);
    }

    pub fn SET_PARTICLE_FX_LOOPED_COLOUR(ptfxHandle: types.Any, r: f32, g: f32, b: f32, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(9191676997121112123)), ptfxHandle, r, g, b, p4);
    }

    pub fn SET_PARTICLE_FX_LOOPED_ALPHA(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8243915066403984430)), p0, p1);
    }

    pub fn SET_PARTICLE_FX_LOOPED_SCALE(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(12989032969121712429, p0, p1);
    }

    pub fn _SET_PARTICLE_FX_LOOPED_RANGE(ptfxHandle: types.Any, range: f32) void {
        _ = nativeCaller.invoke2(15902655278810117441, ptfxHandle, range);
    }

    pub fn SET_PARTICLE_FX_CAM_INSIDE_VEHICLE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17204881356220425488, p0);
    }

    pub fn SET_PARTICLE_FX_CAM_INSIDE_NONPLAYER_VEHICLE(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(12461019496964028086, p0, p1);
    }

    pub fn SET_PARTICLE_FX_SHOOTOUT_BOAT(p0: types.Any) void {
        _ = nativeCaller.invoke1(10876078591633374965, p0);
    }

    pub fn SET_PARTICLE_FX_BLOOD_SCALE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6876420319975958689)), p0);
    }

    pub fn ENABLE_CLOWN_BLOOD_VFX(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(15573809274285527667, p0);
    }

    pub fn ENABLE_ALIEN_BLOOD_VFX(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11371060260457810037, p0);
    }

    pub fn _0x27E32866E9A5C416(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2874185409664238614)), p0);
    }

    pub fn _0xBB90E12CAC1DAB25(p0: f32) void {
        _ = nativeCaller.invoke1(13515550063721294629, p0);
    }

    pub fn _0xCA4AE345A153D573(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14576713032136906099, p0);
    }

    pub fn _0x54E22EA2C1956A8D(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6116502520489929357)), p0);
    }

    pub fn _0x949F397A288B28B3(p0: f32) void {
        _ = nativeCaller.invoke1(10709341635739330739, p0);
    }

    pub fn _0x9B079E5221D984D3(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11171071476308214995, p0);
    }

    pub fn _SET_PTFX_ASSET_NEXT_CALL(name: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7798175403732277905)), name);
    }

    pub fn _SET_PTFX_ASSET_OLD_TO_NEW(Old: [*c]u8, New: [*c]u8) void {
        _ = nativeCaller.invoke2(16869971367703305945, Old, New);
    }

    pub fn _0x89C8553DD3274AAE(name: [*c]u8) void {
        _ = nativeCaller.invoke1(9928279102562192046, name);
    }

    pub fn _0xA46B73FAA3460AE1(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11847690765046516449, p0);
    }

    pub fn _0xF78B803082D4386F(p0: f32) void {
        _ = nativeCaller.invoke1(17837491694972713071, p0);
    }

    pub fn WASH_DECALS_IN_RANGE(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(11254602384772869615, p0, p1, p2, p3, p4);
    }

    pub fn WASH_DECALS_FROM_VEHICLE(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6589091028502690836)), p0, p1);
    }

    pub fn FADE_DECALS_IN_RANGE(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(15528089199422007008, p0, p1, p2, p3, p4);
    }

    pub fn REMOVE_DECALS_IN_RANGE(x: f32, y: f32, z: f32, range: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(6731523856112450658)), x, y, z, range);
    }

    pub fn REMOVE_DECALS_FROM_OBJECT(obj: types.Object) void {
        _ = nativeCaller.invoke1(14769305104806538425, obj);
    }

    pub fn REMOVE_DECALS_FROM_OBJECT_FACING(obj: types.Object, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(12031075102061565004, obj, x, y, z);
    }

    pub fn REMOVE_DECALS_FROM_VEHICLE(vehicle: types.Vehicle) void {
        _ = nativeCaller.invoke1(16798175259792805207, vehicle);
    }

    pub fn ADD_DECAL(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: f32, p10: f32, p11: f32, p12: f32, p13: f32, p14: f32, p15: f32, p16: f32, p17: windows.BOOL, p18: windows.BOOL, p19: windows.BOOL) types.Any {
        return nativeCaller.invoke20(12898912183395138989, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19);
    }

    pub fn ADD_PETROL_DECAL(x: f32, y: f32, z: f32, Groundlvl: f32, Width: f32, Transparency: f32) types.Any {
        return nativeCaller.invoke6(@as(u64, @intCast(5715651525905747448)), x, y, z, Groundlvl, Width, Transparency);
    }

    pub fn _0x99AC7F0D8B9C893D(p0: f32) void {
        _ = nativeCaller.invoke1(11073365279950801213, p0);
    }

    pub fn _0x967278682CB6967A(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(10840859641856300666, p0, p1, p2, p3);
    }

    pub fn _0x0A123435A26C36CD() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(725699894922983117)));
    }

    pub fn REMOVE_DECAL(p0: types.Any) void {
        _ = nativeCaller.invoke1(17095440315324356185, p0);
    }

    pub fn IS_DECAL_ALIVE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(14309298625833532684, p0);
    }

    pub fn GET_DECAL_WASH_LEVEL(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(3620723085438652675)), p0);
    }

    pub fn _0xD9454B5752C857DC() void {
        _ = nativeCaller.invoke0(15656002518046496732);
    }

    pub fn _0x27CFB1B1E078CB2D() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2868706865191635757)));
    }

    pub fn _0x4B5CFC83122DF602() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5430492890577892866)));
    }

    pub fn _0x2F09F7976C512404(xCoord: f32, yCoord: f32, zCoord: f32, p3: f32) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(3389512424302388228)), xCoord, yCoord, zCoord, p3);
    }

    pub fn _0x8A35C742130C6080(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any) void {
        _ = nativeCaller.invoke3(9959085237601067136, p0, p1, p2);
    }

    pub fn _0xB7ED70C49521A61D(p0: types.Any) void {
        _ = nativeCaller.invoke1(13253373268039149085, p0);
    }

    pub fn MOVE_VEHICLE_DECALS(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(9568134640113103488, p0, p1);
    }

    pub fn _ADD_CLAN_DECAL_TO_VEHICLE(vehicle: types.Vehicle, ped: types.Ped, boneIndex: c_int, x1: f32, x2: f32, x3: f32, y1: f32, y2: f32, y3: f32, z1: f32, z2: f32, z3: f32, scale: f32, p13: types.Any, alpha: c_int) windows.BOOL {
        return nativeCaller.invoke15(@as(u64, @intCast(4795168919056341587)), vehicle, ped, boneIndex, x1, x2, x3, y1, y2, y3, z1, z2, z3, scale, p13, alpha);
    }

    pub fn _0xD2300034310557E4(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(15145605771007711204, p0, p1);
    }

    pub fn _0xFE26117A5841B2FF(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(18313344151913083647, p0, p1);
    }

    pub fn _HAS_VEHICLE_GOT_DECAL(vehicle: types.Vehicle, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(436166767530844789)), vehicle, p1);
    }

    pub fn _0x0E4299C549F0D1F1(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1027552737622020593)), p0);
    }

    pub fn _0x02369D5C8A51FDCF(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(159487857601412559)), p0);
    }

    pub fn _0x46D1A61A21F566FC(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5103042483956573948)), p0);
    }

    pub fn _0x2A2A52824DB96700(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3038331618218043136)), p0);
    }

    pub fn _0x1600FD8CF72EBC12(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1585545850718698514)), p0);
    }

    pub fn _0xEFB55E7C25D3B3BE() void {
        _ = nativeCaller.invoke0(17272815833152992190);
    }

    pub fn _0xA44FF770DFBC5DAE() void {
        _ = nativeCaller.invoke0(11839954009542385070);
    }

    pub fn DISABLE_VEHICLE_DISTANTLIGHTS(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(14553816234644632482, toggle);
    }

    pub fn _0x03300B57FCAC6DDB(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(229696053525114331)), p0);
    }

    pub fn _0x98EDF76A7271E4F2() void {
        _ = nativeCaller.invoke0(11019735899804132594);
    }

    pub fn _SET_FORCE_PED_FOOTSTEPS_TRACKS(enabled: windows.BOOL) void {
        _ = nativeCaller.invoke1(12604921234040708288, enabled);
    }

    pub fn _SET_FORCE_VEHICLE_TRAILS(enabled: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5532655643731181536)), enabled);
    }

    pub fn _0xD7021272EB0A451E(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(15492965952886818078, p0);
    }

    pub fn SET_TIMECYCLE_MODIFIER(modifierName: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3211975551654944577)), modifierName);
    }

    pub fn SET_TIMECYCLE_MODIFIER_STRENGTH(strength: f32) void {
        _ = nativeCaller.invoke1(9432789202013202099, strength);
    }

    pub fn SET_TRANSITION_TIMECYCLE_MODIFIER(modifierName: [*c]u8, transition: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4309758426879203100)), modifierName, transition);
    }

    pub fn _0x1CBA05AE7BD7EE05(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2069973225690361349)), p0);
    }

    pub fn CLEAR_TIMECYCLE_MODIFIER() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1083088722320385809)));
    }

    pub fn GET_TIMECYCLE_MODIFIER_INDEX() types.Any {
        return nativeCaller.invoke0(18299208839268596582);
    }

    pub fn _0x459FD2C8D0AB78BC() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5016960269850212540)));
    }

    pub fn PUSH_TIMECYCLE_MODIFIER() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6410651044935755444)));
    }

    pub fn POP_TIMECYCLE_MODIFIER() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4362080213785518366)));
    }

    pub fn _0xBBF327DED94E4DEB(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(13543212342515224043, p0);
    }

    pub fn _0xBDEB86F4D5809204(p0: f32) void {
        _ = nativeCaller.invoke1(13685180278807499268, p0);
    }

    pub fn _0xBF59707B3E5ED531(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(13788175408801174833, p0);
    }

    pub fn _0x1A8E2C8B9CF4549C(p0: [*c]types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1913515869824373916)), p0, p1);
    }

    pub fn _0x15E33297C3E8DC60(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1577159921918073952)), p0);
    }

    pub fn _0x5096FD9CCB49056D(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5807107619408119149)), p0);
    }

    pub fn _0x92CCC17A7A2285DA() void {
        _ = nativeCaller.invoke0(10578042356565706202);
    }

    pub fn _0xBB0527EC6341496D() types.Any {
        return nativeCaller.invoke0(13476221356207065453);
    }

    pub fn _0x2C328AF17210F009(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3184760656109826057)), p0);
    }

    pub fn _0x2BF72AD5B41AA739() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3168047960216479545)));
    }

    pub fn REQUEST_SCALEFORM_MOVIE(scaleformName: [*c]u8) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(1296532278728670831)), scaleformName);
    }

    pub fn REQUEST_SCALEFORM_MOVIE_INSTANCE(scaleformName: [*c]u8) types.Any {
        return nativeCaller.invoke1(14201055364078303238, scaleformName);
    }

    pub fn _REQUEST_SCALEFORM_MOVIE3(scaleformName: [*c]u8) types.Any {
        return nativeCaller.invoke1(13620791902492182722, scaleformName);
    }

    pub fn HAS_SCALEFORM_MOVIE_LOADED(scaleform: c_int) windows.BOOL {
        return nativeCaller.invoke1(9651244295395497742, scaleform);
    }

    pub fn _0x0C1C5D756FB5F337(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(872675186769785655)), p0);
    }

    pub fn HAS_SCALEFORM_CONTAINER_MOVIE_LOADED_INTO_PARENT(handle: c_int) windows.BOOL {
        return nativeCaller.invoke1(9373984299572259837, handle);
    }

    pub fn SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED(scaleformPtr: [*c]c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2095068147598518289)), scaleformPtr);
    }

    pub fn SET_SCALEFORM_MOVIE_TO_USE_SYSTEM_TIME(scaleform: c_int, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7894442985399373320)), scaleform, toggle);
    }

    pub fn DRAW_SCALEFORM_MOVIE(handle: c_int, posX: f32, posY: f32, width: f32, height: f32, red: c_int, green: c_int, blue: c_int, alpha: c_int, unkb: c_int) void {
        _ = nativeCaller.invoke10(@as(u64, @intCast(6095387740489730707)), handle, posX, posY, width, height, red, green, blue, alpha, unkb);
    }

    pub fn DRAW_SCALEFORM_MOVIE_FULLSCREEN(scaleform: c_int, red: c_int, green: c_int, blue: c_int, alpha: c_int, unkb: types.Any) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(1005998793517194209)), scaleform, red, green, blue, alpha, unkb);
    }

    pub fn DRAW_SCALEFORM_MOVIE_FULLSCREEN_MASKED(scaleform1: c_int, scaleform2: c_int, red: c_int, green: c_int, blue: c_int, alpha: c_int) void {
        _ = nativeCaller.invoke6(14939424981715340517, scaleform1, scaleform2, red, green, blue, alpha);
    }

    pub fn DRAW_SCALEFORM_MOVIE_3D(scaleform: c_int, posX: f32, posY: f32, posZ: f32, rotX: f32, rotY: f32, rotZ: f32, p7: f32, p8: f32, p9: f32, scaleX: f32, scaleY: f32, scaleZ: f32, p13: types.Any) void {
        _ = nativeCaller.invoke14(9787761741249990264, scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, p8, p9, scaleX, scaleY, scaleZ, p13);
    }

    pub fn _DRAW_SCALEFORM_MOVIE_3D_NON_ADDITIVE(scaleform: c_int, posX: f32, posY: f32, posZ: f32, rotX: f32, rotY: f32, rotZ: f32, p7: f32, p8: f32, p9: f32, scaleX: f32, scaleY: f32, scaleZ: f32, p13: types.Any) void {
        _ = nativeCaller.invoke14(@as(u64, @intCast(2082232021396608757)), scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, p8, p9, scaleX, scaleY, scaleZ, p13);
    }

    pub fn CALL_SCALEFORM_MOVIE_METHOD(scaleform: c_int, method: [*c]u8) void {
        _ = nativeCaller.invoke2(18147656602949702963, scaleform, method);
    }

    pub fn _CALL_SCALEFORM_MOVIE_FUNCTION_FLOAT_PARAMS(scaleform: c_int, functionName: [*c]u8, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32) void {
        _ = nativeCaller.invoke7(15024976308019809262, scaleform, functionName, p2, p3, p4, p5, p6);
    }

    pub fn _CALL_SCALEFORM_MOVIE_FUNCTION_STRING_PARAMS(scaleform: c_int, functionName: [*c]u8, param1: [*c]u8, param2: [*c]u8, param3: [*c]u8, param4: [*c]u8, param5: [*c]u8) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(5889616307707767031)), scaleform, functionName, param1, param2, param3, param4, param5);
    }

    pub fn _CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform: c_int, functionName: [*c]u8, floatParam1: f32, floatParam2: f32, floatParam3: f32, floatParam4: f32, floatParam5: f32, stringParam1: [*c]u8, stringParam2: [*c]u8, stringParam3: [*c]u8, stringParam4: [*c]u8, stringParam5: [*c]u8) void {
        _ = nativeCaller.invoke12(17250525507777368241, scaleform, functionName, floatParam1, floatParam2, floatParam3, floatParam4, floatParam5, stringParam1, stringParam2, stringParam3, stringParam4, stringParam5);
    }

    pub fn _PUSH_SCALEFORM_MOVIE_FUNCTION_FROM_HUD_COMPONENT(hudComponent: c_int, functionName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(11008087205089361877, hudComponent, functionName);
    }

    pub fn _PUSH_SCALEFORM_MOVIE_FUNCTION(scaleform: c_int, functionName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(17790495150362356046, scaleform, functionName);
    }

    pub fn _0xAB58C27C2E6123C6(functionName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(12346832217046066118, functionName);
    }

    pub fn _0xB9449845F73F5E9C(functionName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(13349962621701283484, functionName);
    }

    pub fn _POP_SCALEFORM_MOVIE_FUNCTION_VOID() void {
        _ = nativeCaller.invoke0(14301579258302520915);
    }

    pub fn _POP_SCALEFORM_MOVIE_FUNCTION() types.Any {
        return nativeCaller.invoke0(14198340658526877830);
    }

    pub fn _0x768FF8961BA904D6(funcData: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8543320341737964758)), funcData);
    }

    pub fn _0x2DE7EFA66B906036(funcData: types.Any) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(3307875949375152182)), funcData);
    }

    pub fn SITTING_TV(scaleform: types.Any) [*c]u8 {
        return nativeCaller.invoke1(16276669321232011845, scaleform);
    }

    pub fn _PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_INT(value: c_int) void {
        _ = nativeCaller.invoke1(14109922879970035366, value);
    }

    pub fn _PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_FLOAT(value: f32) void {
        _ = nativeCaller.invoke1(15462887953135416602, value);
    }

    pub fn _PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_BOOL(value: windows.BOOL) void {
        _ = nativeCaller.invoke1(14232541106153632856, value);
    }

    pub fn _BEGIN_TEXT_COMPONENT(componentType: [*c]u8) void {
        _ = nativeCaller.invoke1(9237872426053230165, componentType);
    }

    pub fn _END_TEXT_COMPONENT() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3904107679495919961)));
    }

    pub fn _0xAE4E8157D9ECF087() void {
        _ = nativeCaller.invoke0(12560118625101213831);
    }

    pub fn _PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_STRING(value: [*c]u8) void {
        _ = nativeCaller.invoke1(13434598638770258789, value);
    }

    pub fn _0xE83A3E3557A56640(p0: [*c]u8) void {
        _ = nativeCaller.invoke1(16733755764273145408, p0);
    }

    pub fn _0x5E657EF1099EDD65(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6801982385926626661)), p0);
    }

    pub fn _0xEC52C631A1831C03(p0: types.Any) void {
        _ = nativeCaller.invoke1(17028891057506688003, p0);
    }

    pub fn _REQUEST_HUD_SCALEFORM(hudComponent: c_int) void {
        _ = nativeCaller.invoke1(10593741883486582762, hudComponent);
    }

    pub fn _HAS_HUD_SCALEFORM_LOADED(hudComponent: c_int) windows.BOOL {
        return nativeCaller.invoke1(16099904157786624320, hudComponent);
    }

    pub fn _0xF44A5456AC3F4F97(p0: types.Any) void {
        _ = nativeCaller.invoke1(17602974824764755863, p0);
    }

    pub fn _0xD1C7CB175E012964(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(15116273975514179940, p0);
    }

    pub fn SET_TV_CHANNEL(channel: c_int) void {
        _ = nativeCaller.invoke1(13451050475020240974, channel);
    }

    pub fn GET_TV_CHANNEL() c_int {
        return nativeCaller.invoke0(18167001216789485973);
    }

    pub fn SET_TV_VOLUME(volume: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2991163607304019420)), volume);
    }

    pub fn GET_TV_VOLUME() f32 {
        return nativeCaller.invoke0(@as(u64, @intCast(2409567900673795611)));
    }

    pub fn DRAW_TV_CHANNEL(posX: f32, posY: f32, scaleX: f32, scaleY: f32, rotation: f32, r: c_int, g: c_int, b: c_int, a: c_int) void {
        _ = nativeCaller.invoke9(18292543404032564720, posX, posY, scaleX, scaleY, rotation, r, g, b, a);
    }

    pub fn _0xF7B38B8305F1FE8B(p0: c_int, p1: [*c]u8, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(17848763143056129675, p0, p1, p2);
    }

    pub fn _0x2201C576FACAEBE8(p0: types.Any, p1: [*c]types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2450456787070675944)), p0, p1, p2);
    }

    pub fn _0xBEB3D46BB7F043C0(p0: types.Any) void {
        _ = nativeCaller.invoke1(13741560447150080960, p0);
    }

    pub fn _0x0AD973CA1E077B60(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(781783322249886560)), p0);
    }

    pub fn _0x74C180030FDE4B69(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8413146329544280937)), p0);
    }

    pub fn _0xD1C55B110E4DF534(p0: types.Any) void {
        _ = nativeCaller.invoke1(15115587853151499572, p0);
    }

    pub fn ENABLE_MOVIE_SUBTITLES(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(9745691034725833072, toggle);
    }

    pub fn _0xD3A10FC7FD8D98CD() types.Any {
        return nativeCaller.invoke0(15249487164880033997);
    }

    pub fn _0xF1CEA8A4198D8E9A(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(17424049431099838106, p0);
    }

    pub fn _0x98C4FE6EC34154CA(p0: [*c]types.Any, pedHandle: types.Ped, p2: types.Any, posX: f32, posY: f32, posZ: f32) windows.BOOL {
        return nativeCaller.invoke6(11008203140876031178, p0, pedHandle, p2, posX, posY, posZ);
    }

    pub fn _0x7A42B2E236E71415() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8809800505743578133)));
    }

    pub fn _0x108BE26959A9D9BB(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1192295468473375163)), p0);
    }

    pub fn _0xA356990E161C9E65(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11769762961958936165, p0);
    }

    pub fn _0x1C4FC5752BCD8E48(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: f32, p10: f32, p11: f32, p12: f32) void {
        _ = nativeCaller.invoke13(@as(u64, @intCast(2040066263258861128)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12);
    }

    pub fn _0x5CE62918F8D703C7(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any, p9: types.Any, p10: types.Any, p11: types.Any) void {
        _ = nativeCaller.invoke12(@as(u64, @intCast(6694083083363615687)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
    }

    pub fn _START_SCREEN_EFFECT(effectName: [*c]u8, playLength: c_int, loop: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2451857716230485796)), effectName, playLength, loop);
    }

    pub fn _STOP_SCREEN_EFFECT(effectName: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(472459433978216675)), effectName);
    }

    pub fn _GET_SCREEN_EFFECT_IS_ACTIVE(screeen: types.Vehicle) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(3939873869940501739)), screeen);
    }

    pub fn _STOP_ALL_SCREEN_EFFECTS() void {
        _ = nativeCaller.invoke0(13037318497635138437);
    }

    pub fn _0xD2209BE128B5418C(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(15141273338572521868, p0);
    }
};

pub const STATS = struct {
    pub fn STAT_CLEAR_SLOT_FOR_RELOAD(statSlot: c_int) types.Any {
        return nativeCaller.invoke1(16936474796576384173, statSlot);
    }

    pub fn STAT_LOAD(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(11984435121915370726, p0);
    }

    pub fn STAT_SAVE(p0: c_int, p1: windows.BOOL, p2: c_int) windows.BOOL {
        return nativeCaller.invoke3(16175744795673809661, p0, p1, p2);
    }

    pub fn _0x5688585E6D563CD8(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6235330846678990040)), p0);
    }

    pub fn STAT_LOAD_PENDING(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(11634222782993667681, p0);
    }

    pub fn STAT_SAVE_PENDING() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(9023621802390373804)));
    }

    pub fn STAT_SAVE_PENDING_OR_REQUESTED() types.Any {
        return nativeCaller.invoke0(13526188748229557923);
    }

    pub fn STAT_DELETE_SLOT(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(5306537703468780912)), p0);
    }

    pub fn STAT_SLOT_IS_LOADED(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(939738356816354876)), p0);
    }

    pub fn _0x7F2C4CDF2E82DF4C(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(9163783863233863500)), p0);
    }

    pub fn _0xE496A53BA5F50A56(p0: types.Any) types.Any {
        return nativeCaller.invoke1(16471534362760120918, p0);
    }

    pub fn _0xF434A10BA01C37D0(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17596866715346286544, p0);
    }

    pub fn _0x7E6946F68A38B74F(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(9108889746028410703)), p0);
    }

    pub fn _0xA8733668D1047B51(p0: types.Any) void {
        _ = nativeCaller.invoke1(12138105244504849233, p0);
    }

    pub fn _0xECB41AC6AB754401() types.Any {
        return nativeCaller.invoke0(17056287129341346817);
    }

    pub fn _0x9B4BD21D69B1E609() void {
        _ = nativeCaller.invoke0(11190268722901280265);
    }

    pub fn _0xC0E0D686DDFC6EAE() types.Any {
        return nativeCaller.invoke0(13898344324803620526);
    }

    pub fn STAT_SET_INT(statName: types.Hash, value: c_int, save: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(12909319269763101761, statName, value, save);
    }

    pub fn STAT_SET_FLOAT(statName: types.Hash, value: f32, save: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(5211115015523703612)), statName, value, save);
    }

    pub fn STAT_SET_BOOL(statName: types.Hash, value: windows.BOOL, save: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(5418890436592845874)), statName, value, save);
    }

    pub fn STAT_SET_GXT_LABEL(statName: types.Hash, value: [*c]u8, save: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(1686967509200874208)), statName, value, save);
    }

    pub fn STAT_SET_DATE(statName: types.Hash, value: [*c]types.Any, numFields: c_int, save: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(3182285401449548772)), statName, value, numFields, save);
    }

    pub fn STAT_SET_STRING(statName: types.Hash, value: [*c]u8, save: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(12140335934556418519, statName, value, save);
    }

    pub fn STAT_SET_POS(statName: types.Hash, x: f32, y: f32, z: f32, save: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(15791942317835806510, statName, x, y, z, save);
    }

    pub fn STAT_SET_MASKED_INT(statName: types.Hash, p1: types.Any, p2: types.Any, p3: c_int, save: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(8915749936381744144)), statName, p1, p2, p3, save);
    }

    pub fn STAT_SET_USER_ID(statName: types.Hash, value: [*c]u8, save: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(10150535098105773585, statName, value, save);
    }

    pub fn STAT_SET_CURRENT_POSIX_TIME(statName: types.Hash, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(14049062049037487201, statName, p1);
    }

    pub fn STAT_GET_INT(statHash: types.Hash, outValue: [*c]c_int, p2: c_int) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(8538750310448033597)), statHash, outValue, p2);
    }

    pub fn STAT_GET_FLOAT(statHash: types.Hash, outValue: [*c]f32, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(15541478783997101388, statHash, outValue, p2);
    }

    pub fn STAT_GET_BOOL(statHash: types.Hash, outValue: [*c]windows.BOOL, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(1276179861973759118)), statHash, outValue, p2);
    }

    pub fn STAT_GET_DATE(statHash: types.Hash, p1: [*c]types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(10020417841698472523, statHash, p1, p2, p3);
    }

    pub fn STAT_GET_STRING(statHash: types.Hash, outValue: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(16502179337152486260, statHash, outValue);
    }

    pub fn STAT_GET_POS(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any, p4: types.Any) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(3823418424324172315)), p0, p1, p2, p3, p4);
    }

    pub fn STAT_GET_MASKED_INT(p0: types.Any, p1: [*c]types.Any, p2: types.Any, p3: types.Any, p4: types.Any) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(7300763395024677547)), p0, p1, p2, p3, p4);
    }

    pub fn STAT_GET_USER_ID(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(2550659756676332514)), p0);
    }

    pub fn STAT_GET_LICENSE_PLATE(statName: types.Hash) [*c]u8 {
        return nativeCaller.invoke1(@as(u64, @intCast(6085440726694933220)), statName);
    }

    pub fn STAT_SET_LICENSE_PLATE(statName: types.Hash, str: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(7637844548809561818)), statName, str);
    }

    pub fn STAT_INCREMENT(statName: types.Hash, value: f32) void {
        _ = nativeCaller.invoke2(11194375024613955849, statName, value);
    }

    pub fn _0x5A556B229A169402() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(6509226632792151042)));
    }

    pub fn _0xB1D2BB1E1631F5B1() windows.BOOL {
        return nativeCaller.invoke0(12813509627718268337);
    }

    pub fn _0xBED9F5693F34ED17(statName: types.Hash, p1: types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(13752292769533324567, statName, p1, p2);
    }

    pub fn _0x26D7399B9587FE89(p0: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2798769033825484425)), p0);
    }

    pub fn _0xA78B8FA58200DA56(p0: c_int) void {
        _ = nativeCaller.invoke1(12072901167110216278, p0);
    }

    pub fn _0xE0E854F5280FB769(p0: types.Any) types.Any {
        return nativeCaller.invoke1(16206296671008569193, p0);
    }

    pub fn _0xF2D4B2FE415AAFC3(p0: types.Any) types.Any {
        return nativeCaller.invoke1(17497807257329119171, p0);
    }

    pub fn _0x7583B4BE4C5A41B5(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(8467810453804433845)), p0);
    }

    pub fn _0x2CE056FF3723F00B(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(3233680186593767435)), p0);
    }

    pub fn _STAT_SET_PROFILE_SETTING(profileSetting: c_int, value: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7561565913806111631)), profileSetting, value);
    }

    pub fn _0xF4D8E7AC2A27758C(p0: types.Any) types.Any {
        return nativeCaller.invoke1(17643106266851538316, p0);
    }

    pub fn _0x94F12ABF9C79E339(p0: types.Any) types.Any {
        return nativeCaller.invoke1(10732406389452956473, p0);
    }

    pub fn _0x80C75307B1C42837(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: types.Any) types.Any {
        return nativeCaller.invoke4(9279476849732495415, p0, p1, p2, p3);
    }

    pub fn _0x61E111E323419E07(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: types.Any) types.Any {
        return nativeCaller.invoke4(@as(u64, @intCast(7052938158685658631)), p0, p1, p2, p3);
    }

    pub fn _0xC4BB08EE7907471E(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: types.Any) types.Any {
        return nativeCaller.invoke4(14175934072404526878, p0, p1, p2, p3);
    }

    pub fn _0xD16C2AD6B8E32854(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: types.Any) types.Any {
        return nativeCaller.invoke4(15090483553124952148, p0, p1, p2, p3);
    }

    pub fn _0xBA52FF538ED2BC71(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: types.Any, p4: [*c]types.Any) types.Any {
        return nativeCaller.invoke5(13426074173488413809, p0, p1, p2, p3, p4);
    }

    pub fn _0x2B4CDCA6F07FF3DA(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: types.Any, p4: [*c]types.Any) types.Any {
        return nativeCaller.invoke5(@as(u64, @intCast(3120111251418510298)), p0, p1, p2, p3, p4);
    }

    pub fn STAT_GET_BOOL_MASKED(statName: types.Hash, p1: types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(1224485535934427249)), statName, p1, p2);
    }

    pub fn STAT_SET_BOOL_MASKED(statName: types.Hash, p1: windows.BOOL, p2: types.Any, save: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(6613024511778070107)), statName, p1, p2, save);
    }

    pub fn _0x5009DFD741329729(p0: [*c]u8, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5767386913429428009)), p0, p1);
    }

    pub fn PLAYSTATS_NPC_INVITE(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(10593957849328155716, p0);
    }

    pub fn PLAYSTATS_AWARD_XP(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5114145200206417892)), p0, p1, p2);
    }

    pub fn PLAYSTATS_RANK_UP(p0: types.Any) void {
        _ = nativeCaller.invoke1(14407822532172496820, p0);
    }

    pub fn _0x098760C7461724CD() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(686623877187970253)));
    }

    pub fn _0xA071E0ED98F91286(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(11561269029515104902, p0, p1);
    }

    pub fn _0xC5BE134EC7BA96A0(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(14248847500126099104, p0, p1, p2, p3, p4);
    }

    pub fn PLAYSTATS_MISSION_STARTED(p0: [*c]types.Any, p1: types.Any, p2: types.Any, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(13950508037900673585, p0, p1, p2, p3);
    }

    pub fn PLAYSTATS_MISSION_OVER(p0: [*c]types.Any, p1: types.Any, p2: types.Any, p3: windows.BOOL, p4: windows.BOOL, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(8956449348010210084)), p0, p1, p2, p3, p4, p5);
    }

    pub fn PLAYSTATS_MISSION_CHECKPOINT(p0: [*c]types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(14483674715095796765, p0, p1, p2, p3);
    }

    pub fn _0x71862B1D855F32E1(p0: [*c]types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8180273178956739297)), p0, p1, p2, p3);
    }

    pub fn _0x121FB4DDDC2D5291(p0: types.Any, p1: types.Any, p2: types.Any, p3: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(1305961281935463057)), p0, p1, p2, p3);
    }

    pub fn PLAYSTATS_RACE_CHECKPOINT(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(11256567160511258084, p0, p1, p2, p3, p4);
    }

    pub fn _0x6DEE77AFF8C21BD1(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(7921400392267733969)), p0, p1);
    }

    pub fn PLAYSTATS_MATCH_STARTED(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any) void {
        _ = nativeCaller.invoke7(13583105163036663357, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn PLAYSTATS_SHOP_ITEM(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(1686688962002908113)), p0, p1, p2, p3, p4);
    }

    pub fn _0x1CAE5D2E3F9A07F0(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(2066691732226574320)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _0xAFC7E5E075A96F46(p0: f32, p1: f32, p2: f32) void {
        _ = nativeCaller.invoke3(12666345229212282694, p0, p1, p2);
    }

    pub fn _0xCB00196B31C39EB1(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(14627719537886469809, p0, p1, p2, p3);
    }

    pub fn _0x2B69F5074C894811(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(3128300827883161617)), p0, p1, p2, p3);
    }

    pub fn _0x7EEC2A316C250073(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(9145731335038763123)), p0, p1, p2);
    }

    pub fn _0xADDD1C754E2E2914(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any, p9: types.Any) void {
        _ = nativeCaller.invoke10(12528201028562987284, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn _0x79AB33F0FBFAC40C(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8767158209719485452)), p0);
    }

    pub fn _0xDDF24D535060F811(p0: types.Hash, p1: c_int) void {
        _ = nativeCaller.invoke2(15992930246972209169, p0, p1);
    }

    pub fn PLAYSTATS_FRIEND_ACTIVITY(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1112914853483403505)), p0, p1);
    }

    pub fn PLAYSTATS_ODDJOB_DONE(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7628715043616619340)), p0, p1, p2);
    }

    pub fn PLAYSTATS_PROP_CHANGE(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(13435255206363649767, p0, p1, p2, p3);
    }

    pub fn PLAYSTATS_CLOTH_CHANGE(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(3799194223729862841)), p0, p1, p2, p3, p4);
    }

    pub fn _0xE95C8A1875A02CA4(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(16815466946351869092, p0, p1, p2);
    }

    pub fn PLAYSTATS_CHEAT_APPLIED(cheat: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6942411377125371199)), cheat);
    }

    pub fn _0xF8C54A461C3E11DC(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any) void {
        _ = nativeCaller.invoke4(17925815556800123356, p0, p1, p2, p3);
    }

    pub fn _0xF5BB8DAC426A52C0(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any) void {
        _ = nativeCaller.invoke4(17706902130925392576, p0, p1, p2, p3);
    }

    pub fn _0xA736CF7FB7C5BFF4(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any) void {
        _ = nativeCaller.invoke4(12049046000527327220, p0, p1, p2, p3);
    }

    pub fn _0x14E0B2D1AD1044E0(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: [*c]types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(1504398889163179232)), p0, p1, p2, p3);
    }

    pub fn _0x90D0622866E80445(p0: types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(10434948262282134597, p0, p1);
    }

    pub fn _0x5DA3A8DE8CB6226F(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6747422340528087663)), p0);
    }

    pub fn _0xD1032E482629049E(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(15060932466269815966, p0);
    }

    pub fn _0xF4FF020A08BC8863(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(17653831306435135587, p0, p1);
    }

    pub fn _0x46326E13DA4E0546(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5058226363036468550)), p0);
    }

    pub fn LEADERBOARDS_GET_NUMBER_OF_COLUMNS(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(1259676479113854766)), p0, p1);
    }

    pub fn LEADERBOARDS_GET_COLUMN_ID(p0: types.Any, p1: types.Any, p2: types.Any) types.Any {
        return nativeCaller.invoke3(14174312892429953662, p0, p1, p2);
    }

    pub fn LEADERBOARDS_GET_COLUMN_TYPE(p0: types.Any, p1: types.Any, p2: types.Any) types.Any {
        return nativeCaller.invoke3(13785500072013239507, p0, p1, p2);
    }

    pub fn LEADERBOARDS_READ_CLEAR_ALL() types.Any {
        return nativeCaller.invoke0(11766981029412162059);
    }

    pub fn LEADERBOARDS_READ_CLEAR(p0: types.Any, p1: types.Any, p2: types.Any) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(8993227156949980929)), p0, p1, p2);
    }

    pub fn LEADERBOARDS_READ_PENDING(p0: types.Any, p1: types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(12409999195844651714, p0, p1, p2);
    }

    pub fn _0xA31FD15197B192BD() types.Any {
        return nativeCaller.invoke0(11754343700827837117);
    }

    pub fn LEADERBOARDS_READ_SUCCESSFUL(p0: types.Any, p1: types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(3436688693710979884)), p0, p1, p2);
    }

    pub fn LEADERBOARDS2_READ_FRIENDS_BY_ROW(p0: [*c]types.Any, p1: [*c]types.Any, p2: types.Any, p3: windows.BOOL, p4: types.Any, p5: types.Any) windows.BOOL {
        return nativeCaller.invoke6(10487493845665303427, p0, p1, p2, p3, p4, p5);
    }

    pub fn LEADERBOARDS2_READ_BY_HANDLE(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(14053222755243900686, p0, p1);
    }

    pub fn LEADERBOARDS2_READ_BY_ROW(p0: [*c]types.Any, p1: [*c]types.Any, p2: types.Any, p3: [*c]types.Any, p4: types.Any, p5: [*c]types.Any, p6: types.Any) windows.BOOL {
        return nativeCaller.invoke7(12235631355188516995, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn LEADERBOARDS2_READ_BY_RANK(p0: [*c]types.Any, p1: types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(13415235588138288282, p0, p1, p2);
    }

    pub fn LEADERBOARDS2_READ_BY_RADIUS(p0: [*c]types.Any, p1: types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(6693905934776977604)), p0, p1, p2);
    }

    pub fn LEADERBOARDS2_READ_BY_SCORE_INT(p0: [*c]types.Any, p1: types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(9145823822820450666)), p0, p1, p2);
    }

    pub fn LEADERBOARDS2_READ_BY_SCORE_FLOAT(p0: [*c]types.Any, p1: f32, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(16601051866252480316, p0, p1, p2);
    }

    pub fn _0xC38DC1E90D22547C(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(14091132015804044412, p0, p1, p2);
    }

    pub fn _0xF1AE5DCDBFCA2721(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(17414959947355662113, p0, p1, p2);
    }

    pub fn _0xA0F93D5465B3094D(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(11599369747962202445, p0);
    }

    pub fn _0x71B008056E5692D6() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8192056541605958358)));
    }

    pub fn _0x34770B9CE0E03B91(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(3780503180616416145)), p0, p1);
    }

    pub fn _0x88578F6EC36B4A3A(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(9824478818019789370, p0, p1);
    }

    pub fn _0x38491439B6BA7F7D(p0: types.Any, p1: types.Any) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(4055795177535209341)), p0, p1);
    }

    pub fn LEADERBOARDS2_WRITE_DATA(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(12547598471139995209, p0);
    }

    pub fn _0x0BCA1D2C47B0D269(p0: types.Any, p1: types.Any, p2: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(849523555731296873)), p0, p1, p2);
    }

    pub fn _0x2E65248609523599(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3343118456493061529)), p0, p1, p2);
    }

    pub fn LEADERBOARDS_CACHE_DATA_ROW(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(13383318079891653357, p0);
    }

    pub fn LEADERBOARDS_CLEAR_CACHE_DATA() void {
        _ = nativeCaller.invoke0(15325796172190064604);
    }

    pub fn _0x8EC74CEB042E7CFF(p0: types.Any) void {
        _ = nativeCaller.invoke1(10288276446022368511, p0);
    }

    pub fn LEADERBOARDS_GET_CACHE_EXISTS(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(11263841987227156012, p0);
    }

    pub fn LEADERBOARDS_GET_CACHE_TIME(p0: types.Any) types.Any {
        return nativeCaller.invoke1(17315245624822986440, p0);
    }

    pub fn _0x58A651CD201D89AD(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(6387883062920579501)), p0);
    }

    pub fn LEADERBOARDS_GET_CACHE_DATA_ROW(p0: types.Any, p1: types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(10457614364798521971, p0, p1, p2);
    }

    pub fn _0x11FF1C80276097ED(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(1296786554448025581)), p0, p1, p2);
    }

    pub fn _0x30A6614C1F7799B8(p0: types.Any, p1: f32, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3505596339527850424)), p0, p1, p2);
    }

    pub fn _0x6483C25849031C4F(p0: types.Any, p1: types.Any, p2: types.Any, p3: [*c]types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(7242846310179740751)), p0, p1, p2, p3);
    }

    pub fn _0x5EAD2BF6484852E4() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(6822157347310818020)));
    }

    pub fn _0xC141B8917E0017EC() void {
        _ = nativeCaller.invoke0(13925614457829988332);
    }

    pub fn _0xB475F27C6A994D65() void {
        _ = nativeCaller.invoke0(13003566115280473445);
    }

    pub fn _0xF1A1803D3476F215(value: c_int) void {
        _ = nativeCaller.invoke1(17411338634752619029, value);
    }

    pub fn _0x38BAAA5DD4C9D19F(value: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4087766931770823071)), value);
    }

    pub fn _0x55384438FC55AD8E(value: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6140733103462002062)), value);
    }

    pub fn _0x723C1CE13FBFDB67(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8231485972689181543)), p0, p1);
    }

    pub fn _0x0D01D20616FC73FB(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(937261121067054075)), p0, p1);
    }

    pub fn _0x428EAF89E24F6C36(p0: types.Any, p1: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4795963659938393142)), p0, p1);
    }

    pub fn _0x047CBED6F6F8B63C() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(323343103739606588)));
    }

    pub fn _0xC980E62E33DF1D5C(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(14519858284755623260, p0, p1);
    }

    pub fn _0x6F361B8889A792A3() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8013622860191339171)));
    }

    pub fn _0xC847B43F369AC0B5() void {
        _ = nativeCaller.invoke0(14431701714524094645);
    }

    pub fn _0xA5C80D8E768A9E66(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(11945812917125553766, p0);
    }

    pub fn _0x9A62EC95AE10E011() types.Any {
        return nativeCaller.invoke0(11124714157173170193);
    }

    pub fn _0x4C89FE2BDEB3F169() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5515218683065266537)));
    }

    pub fn _0xC6E0E2616A7576BB() types.Any {
        return nativeCaller.invoke0(14330702922318706363);
    }

    pub fn _0x5BD5F255321C4AAF(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(6617461675217668783)), p0);
    }

    pub fn _0xDEAAF77EB3687E97(p0: types.Any, p1: [*c]types.Any) types.Any {
        return nativeCaller.invoke2(16044908746008723095, p0, p1);
    }

    pub fn _0xC70DDCE56D0D3A99() types.Any {
        return nativeCaller.invoke0(14343363266180102809);
    }

    pub fn _0x886913BBEACA68C1(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(9829409359531763905, p0);
    }

    pub fn _0x4FEF53183C3C6414() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5759913811985064980)));
    }

    pub fn _0x567384DFA67029E6() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6229468805688469990)));
    }

    pub fn _0x3270F67EED31FBC1(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(3634675924293778369)), p0, p1, p2);
    }

    pub fn _0xCE5AA445ABA8DEE0(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(14869377738856783584, p0);
    }

    pub fn _0x98E2BC1CA26287C3() void {
        _ = nativeCaller.invoke0(11016574469671126979);
    }

    pub fn _0x629526ABA383BCAA() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7103626505871408298)));
    }

    pub fn _0xB3DA2606774A8E2D() types.Any {
        return nativeCaller.invoke0(12959712686925057581);
    }

    pub fn _0xDAC073C7901F9E15(p0: types.Any) void {
        _ = nativeCaller.invoke1(15762725996750413333, p0);
    }

    pub fn _0xF6792800AC95350D(p0: types.Any) void {
        _ = nativeCaller.invoke1(17760270588872832269, p0);
    }
};

pub const BRAIN = struct {
    pub fn ADD_SCRIPT_TO_RANDOM_PED(name: [*c]u8, model: types.Hash, p2: f32, p3: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(5685009978224958668)), name, model, p2, p3);
    }

    pub fn REGISTER_OBJECT_SCRIPT_BRAIN(scriptName: [*c]u8, p1: types.Hash, p2: c_int, p3: f32, p4: c_int, p5: c_int) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(858019504694160418)), scriptName, p1, p2, p3, p4, p5);
    }

    pub fn IS_OBJECT_WITHIN_BRAIN_ACTIVATION_RANGE(object: types.Object) windows.BOOL {
        return nativeCaller.invoke1(14752126902777032791, object);
    }

    pub fn REGISTER_WORLD_POINT_SCRIPT_BRAIN(p0: [*c]types.Any, p1: f32, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4385504615524893885)), p0, p1, p2);
    }

    pub fn IS_WORLD_POINT_WITHIN_BRAIN_ACTIVATION_RANGE() windows.BOOL {
        return nativeCaller.invoke0(14196521158419141712);
    }

    pub fn ENABLE_SCRIPT_BRAIN_SET(brainSet: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7469868092304107627)), brainSet);
    }

    pub fn DISABLE_SCRIPT_BRAIN_SET(brainSet: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1502040148594978959)), brainSet);
    }

    pub fn _0x0B40ED49D7D6FF84() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(810908834336276356)));
    }

    pub fn _0x4D953DF78EBF8158() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5590442645911470424)));
    }

    pub fn _0x6D6840CEE8845831(action: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7883622405120481329)), action);
    }

    pub fn _0x6E91B04E08773030(action: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7967343064991084592)), action);
    }
};

pub const MOBILE = struct {
    pub fn CREATE_MOBILE_PHONE(phoneType: c_int) void {
        _ = nativeCaller.invoke1(11883001152044989383, phoneType);
    }

    pub fn DESTROY_MOBILE_PHONE() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4307800655868612759)));
    }

    pub fn SET_MOBILE_PHONE_SCALE(scale: f32) void {
        _ = nativeCaller.invoke1(14689952717465901362, scale);
    }

    pub fn SET_MOBILE_PHONE_ROTATION(rotX: f32, rotY: f32, rotZ: f32, p3: types.Any) void {
        _ = nativeCaller.invoke4(13508437185511549029, rotX, rotY, rotZ, p3);
    }

    pub fn GET_MOBILE_PHONE_ROTATION(rotation: [*c]types.Vector3, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2085085397178675374)), rotation, p1);
    }

    pub fn SET_MOBILE_PHONE_POSITION(posX: f32, posY: f32, posZ: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7582474547584305243)), posX, posY, posZ);
    }

    pub fn GET_MOBILE_PHONE_POSITION(position: [*c]types.Vector3) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6363550927110036358)), position);
    }

    pub fn SCRIPT_IS_MOVING_MOBILE_PHONE_OFFSCREEN(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(17659167576116842786, toggle);
    }

    pub fn CAN_PHONE_BE_SEEN_ON_SCREEN() windows.BOOL {
        return nativeCaller.invoke0(14187043856251976267);
    }

    pub fn _MOVE_FINGER(p0: c_int) void {
        _ = nativeCaller.invoke1(10793412172051246235, p0);
    }

    pub fn _SET_PHONE_LEAN(Toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4964164612513600398)), Toggle);
    }

    pub fn CELL_CAM_ACTIVATE(p0: windows.BOOL, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(18296137823264362790, p0, p1);
    }

    pub fn _0x015C49A93E3E086E(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(98034283137861742)), p0);
    }

    pub fn _0xA2CCBE62CD4C91A4(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(11730960460953719204, toggle);
    }

    pub fn _0x1B0B4AEED5B9B41C(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1948733653416260636)), p0);
    }

    pub fn _0x53F4892D18EC90A4(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6049611026250109092)), p0);
    }

    pub fn _0x3117D84EFA60F77B(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3537533866042521467)), p0);
    }

    pub fn _0x15E69E2802C24B8D(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1578122614122105741)), p0);
    }

    pub fn _0xAC2890471901861C(p0: f32) void {
        _ = nativeCaller.invoke1(12405323808628639260, p0);
    }

    pub fn _0xD6ADE981781FCA09(p0: f32) void {
        _ = nativeCaller.invoke1(15469277037362924041, p0);
    }

    pub fn _0xF1E22DC13F5EEBAD(p0: f32) void {
        _ = nativeCaller.invoke1(17429543815892364205, p0);
    }

    pub fn _0x466DA42C89865553(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5074892866309215571)), p0);
    }

    pub fn CELL_CAM_IS_CHAR_VISIBLE_NO_FACE_CHECK(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4872503135987204030)), entity);
    }

    pub fn GET_MOBILE_PHONE_RENDER_ID(renderId: [*c]types.Any) void {
        _ = nativeCaller.invoke1(13016878493316378529, renderId);
    }

    pub fn _0xBD4D7EAF8A30F637(name: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(13640698138777941559, name);
    }

    pub fn _0x247F0F73A182EA0B(hash: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2629837696713026059)), hash);
    }
};

pub const APP = struct {
    pub fn APP_DATA_VALID() windows.BOOL {
        return nativeCaller.invoke0(9541624474208495030);
    }

    pub fn APP_GET_INT(property: [*c]u8) c_int {
        return nativeCaller.invoke1(15250747526420995403, property);
    }

    pub fn APP_GET_FLOAT(property: [*c]u8) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(1519115109592212258)), property);
    }

    pub fn APP_GET_STRING(property: [*c]u8) [*c]u8 {
        return nativeCaller.invoke1(@as(u64, @intCast(8402311974982136092)), property);
    }

    pub fn APP_SET_INT(property: [*c]u8, value: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6953151268396176913)), property, value);
    }

    pub fn APP_SET_FLOAT(property: [*c]u8, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2726762982940924580)), property, value);
    }

    pub fn APP_SET_STRING(property: [*c]u8, value: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4608023460562018740)), property, value);
    }

    pub fn APP_SET_APP(appName: [*c]u8) void {
        _ = nativeCaller.invoke1(14974539588691365163, appName);
    }

    pub fn APP_SET_BLOCK(blockName: [*c]u8) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2750208806671753107)), blockName);
    }

    pub fn APP_CLEAR_BLOCK() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6909048714621058490)));
    }

    pub fn APP_CLOSE_APP() void {
        _ = nativeCaller.invoke0(16437124754795595260);
    }

    pub fn APP_CLOSE_BLOCK() void {
        _ = nativeCaller.invoke0(16781534775082749688);
    }

    pub fn APP_HAS_LINKED_SOCIAL_CLUB_ACCOUNT() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(8209752708115631520)));
    }

    pub fn APP_HAS_SYNCED_DATA(appName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(14578758488050192767, appName);
    }

    pub fn APP_SAVE_DATA() void {
        _ = nativeCaller.invoke0(10792264451834177631);
    }

    pub fn APP_GET_DELETED_FILE_STATUS() types.Any {
        return nativeCaller.invoke0(14521076533707067814);
    }

    pub fn APP_DELETE_APP_DATA(appName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4905856963927646211)), appName);
    }
};

pub const TIME = struct {
    pub fn SET_CLOCK_TIME(hour: c_int, minute: c_int, second: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5171176378044663256)), hour, minute, second);
    }

    pub fn PAUSE_CLOCK(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4635862130881195037)), toggle);
    }

    pub fn ADVANCE_CLOCK_TIME_TO(hour: c_int, minute: c_int, second: c_int) void {
        _ = nativeCaller.invoke3(14468542163779599163, hour, minute, second);
    }

    pub fn ADD_TO_CLOCK_TIME(hours: c_int, minutes: c_int, seconds: c_int) void {
        _ = nativeCaller.invoke3(15498842407160086754, hours, minutes, seconds);
    }

    pub fn GET_CLOCK_HOURS() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(2675767815307398015)));
    }

    pub fn GET_CLOCK_MINUTES() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(1428407088615670002)));
    }

    pub fn GET_CLOCK_SECONDS() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(5282326276443980912)));
    }

    pub fn SET_CLOCK_DATE(day: c_int, month: c_int, year: c_int) void {
        _ = nativeCaller.invoke3(12724429943787777255, day, month, year);
    }

    pub fn GET_CLOCK_DAY_OF_WEEK() c_int {
        return nativeCaller.invoke0(15668837556037559135);
    }

    pub fn GET_CLOCK_DAY_OF_MONTH() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(4400224173958044981)));
    }

    pub fn GET_CLOCK_MONTH() c_int {
        return nativeCaller.invoke0(13530826567613306785);
    }

    pub fn GET_CLOCK_YEAR() c_int {
        return nativeCaller.invoke0(10815244861152360215);
    }

    pub fn GET_MILLISECONDS_PER_GAME_MINUTE() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(3425916725698957787)));
    }

    pub fn GET_POSIX_TIME(year: [*c]c_int, month: [*c]c_int, day: [*c]c_int, hour: [*c]c_int, minute: [*c]c_int, second: [*c]c_int) void {
        _ = nativeCaller.invoke6(15728979107437549134, year, month, day, hour, minute, second);
    }

    pub fn _GET_LOCAL_TIME(year: [*c]c_int, month: [*c]c_int, day: [*c]c_int, hour: [*c]c_int, minute: [*c]c_int, second: [*c]c_int) void {
        _ = nativeCaller.invoke6(9302150507821724883, year, month, day, hour, minute, second);
    }

    pub fn GET_LOCAL_TIME(year: [*c]c_int, month: [*c]c_int, day: [*c]c_int, hour: [*c]c_int, minute: [*c]c_int, second: [*c]c_int) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(5820807480810575688)), year, month, day, hour, minute, second);
    }
};

pub const PATHFIND = struct {
    pub fn SET_ROADS_IN_AREA(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, unknown1: windows.BOOL, unknown2: windows.BOOL) void {
        _ = nativeCaller.invoke8(13770424549976125422, x1, y1, z1, x2, y2, z2, unknown1, unknown2);
    }

    pub fn SET_ROADS_IN_ANGLED_AREA(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, angle: f32, unknown1: windows.BOOL, unknown2: windows.BOOL, unknown3: windows.BOOL) void {
        _ = nativeCaller.invoke10(@as(u64, @intCast(1899007354032479065)), x1, y1, z1, x2, y2, z2, angle, unknown1, unknown2, unknown3);
    }

    pub fn SET_PED_PATHS_IN_AREA(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, unknown: windows.BOOL) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(3814655488685170712)), x1, y1, z1, x2, y2, z2, unknown);
    }

    pub fn GET_SAFE_COORD_FOR_PED(x: f32, y: f32, z: f32, onGround: windows.BOOL, outPosition: [*c]types.Vector3, flags: c_int) windows.BOOL {
        return nativeCaller.invoke6(13122520127042066890, x, y, z, onGround, outPosition, flags);
    }

    pub fn GET_CLOSEST_VEHICLE_NODE(x: f32, y: f32, z: f32, outPosition: [*c]types.Vector3, nodeType: c_int, p5: f32, p6: f32) windows.BOOL {
        return nativeCaller.invoke7(@as(u64, @intCast(2596914974566212883)), x, y, z, outPosition, nodeType, p5, p6);
    }

    pub fn GET_CLOSEST_MAJOR_VEHICLE_NODE(x: f32, y: f32, z: f32, outPosition: [*c]types.Vector3, unknown1: f32, unknown2: c_int) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(3363031893684044222)), x, y, z, outPosition, unknown1, unknown2);
    }

    pub fn GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(x: f32, y: f32, z: f32, outPosition: [*c]types.Vector3, outHeading: [*c]f32, nodeType: c_int, p6: f32, p7: c_int) windows.BOOL {
        return nativeCaller.invoke8(18376691677910270896, x, y, z, outPosition, outHeading, nodeType, p6, p7);
    }

    pub fn GET_NTH_CLOSEST_VEHICLE_NODE(x: f32, y: f32, z: f32, nthClosest: c_int, outPosition: [*c]types.Vector3, unknown1: types.Any, unknown2: types.Any, unknown3: types.Any) windows.BOOL {
        return nativeCaller.invoke8(16505220125311341707, x, y, z, nthClosest, outPosition, unknown1, unknown2, unknown3);
    }

    pub fn GET_NTH_CLOSEST_VEHICLE_NODE_ID(x: f32, y: f32, z: f32, p3: types.Any, p4: types.Any, p5: f32, p6: f32) c_int {
        return nativeCaller.invoke7(@as(u64, @intCast(2510518586829603349)), x, y, z, p3, p4, p5, p6);
    }

    pub fn GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING(x: f32, y: f32, z: f32, nthClosest: c_int, outPosition: [*c]types.Vector3, heading: [*c]f32, unknown1: [*c]types.Any, unknown2: c_int, unknown3: f32, unknown4: f32) windows.BOOL {
        return nativeCaller.invoke10(9280347129195875524, x, y, z, nthClosest, outPosition, heading, unknown1, unknown2, unknown3, unknown4);
    }

    pub fn GET_NTH_CLOSEST_VEHICLE_NODE_ID_WITH_HEADING(x: f32, y: f32, z: f32, nthClosest: c_int, outPosition: [*c]types.Vector3, outHeading: f32, p6: types.Any, p7: f32, p8: f32) types.Any {
        return nativeCaller.invoke9(@as(u64, @intCast(7226031162423669255)), x, y, z, nthClosest, outPosition, outHeading, p6, p7, p8);
    }

    pub fn GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION(x: f32, y: f32, z: f32, desiredX: f32, desiredY: f32, desiredZ: f32, nthClosest: c_int, outPosition: [*c]types.Vector3, outHeading: [*c]f32, p9: c_int, p10: types.Any, p11: types.Any) windows.BOOL {
        return nativeCaller.invoke12(@as(u64, @intCast(5012607438953308263)), x, y, z, desiredX, desiredY, desiredZ, nthClosest, outPosition, outHeading, p9, p10, p11);
    }

    pub fn GET_VEHICLE_NODE_PROPERTIES(p0: f32, p1: f32, p2: f32, p3: [*c]types.Any, p4: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(389656384451763932)), p0, p1, p2, p3, p4);
    }

    pub fn IS_VEHICLE_NODE_ID_VALID(vehicleNodeId: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2211039805179277172)), vehicleNodeId);
    }

    pub fn GET_VEHICLE_NODE_POSITION(nodeId: c_int, outPosition: [*c]types.Vector3) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8084282276450675138)), nodeId, outPosition);
    }

    pub fn _GET_SUPPORTS_GPS_ROUTE_FLAG(nodeID: c_int) windows.BOOL {
        return nativeCaller.invoke1(11722408342446334902, nodeID);
    }

    pub fn _GET_IS_SLOW_ROAD_FLAG(nodeID: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5715191804072465017)), nodeID);
    }

    pub fn GET_CLOSEST_ROAD(x: f32, y: f32, z: f32, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any, p9: types.Any, p10: types.Any) types.Any {
        return nativeCaller.invoke11(@as(u64, @intCast(1382414576514039442)), x, y, z, p3, p4, p5, p6, p7, p8, p9, p10);
    }

    pub fn LOAD_ALL_PATH_NODES(p0: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke1(9287731872057256153, p0);
    }

    pub fn _0x228E5C6AD4D74BFD(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2490029257889631229)), p0);
    }

    pub fn _0xF7B79A50B905A30D(p0: f32, p1: f32, p2: f32, p3: f32) windows.BOOL {
        return nativeCaller.invoke4(17849905319598465805, p0, p1, p2, p3);
    }

    pub fn _0x07FB139B592FA687(p0: f32, p1: f32, p2: f32, p3: f32) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(575074935357023879)), p0, p1, p2, p3);
    }

    pub fn SET_ROADS_BACK_TO_ORIGINAL(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(2226755393395083132)), p0, p1, p2, p3, p4, p5);
    }

    pub fn SET_ROADS_BACK_TO_ORIGINAL_IN_ANGLED_AREA(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, p6: f32) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(11065603657515134)), x1, y1, z1, x2, y2, z2, p6);
    }

    pub fn _0x0B919E1FB47CC4E0(p0: f32) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(833621265049502944)), p0);
    }

    pub fn _0xAA76052DDA9BFC3E(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any) void {
        _ = nativeCaller.invoke7(12283010728198929470, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn SET_PED_PATHS_BACK_TO_ORIGINAL(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) void {
        _ = nativeCaller.invoke6(16162091895400587859, p0, p1, p2, p3, p4, p5);
    }

    pub fn GET_RANDOM_VEHICLE_NODE(x: f32, y: f32, z: f32, radius: f32, p4: windows.BOOL, p5: windows.BOOL, p6: windows.BOOL, outPosition: [*c]types.Vector3, heading: [*c]f32) windows.BOOL {
        return nativeCaller.invoke9(10655758079426509437, x, y, z, radius, p4, p5, p6, outPosition, heading);
    }

    pub fn GET_STREET_NAME_AT_COORD(x: f32, y: f32, z: f32, streetName: [*c]types.Hash, crossingRoad: [*c]types.Hash) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(3365332906397525184)), x, y, z, streetName, crossingRoad);
    }

    pub fn GENERATE_DIRECTIONS_TO_COORD(x: f32, y: f32, z: f32, p3: types.Any, p4: types.Any, vehicle: [*c]types.Vehicle, p6: types.Any) types.Any {
        return nativeCaller.invoke7(17942664111592492536, x, y, z, p3, p4, vehicle, p6);
    }

    pub fn SET_IGNORE_NO_GPS_FLAG(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8247517357546113075)), p0);
    }

    pub fn _0x1FC289A0C3FF470F(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2288542884233692943)), p0);
    }

    pub fn SET_GPS_DISABLED_ZONE(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) void {
        _ = nativeCaller.invoke6(15861757313688621569, p0, p1, p2, p3, p4, p5);
    }

    pub fn _0xBBB45C3CF5C8AA85() types.Any {
        return nativeCaller.invoke0(13525536997791804037);
    }

    pub fn _0x869DAACBBE9FA006() types.Any {
        return nativeCaller.invoke0(9700096964479131654);
    }

    pub fn _0x16F46FB18C8009E4(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) types.Any {
        return nativeCaller.invoke5(@as(u64, @intCast(1654069771508910564)), p0, p1, p2, p3, p4);
    }

    pub fn IS_POINT_ON_ROAD(x: f32, y: f32, z: f32, entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(1322919935073282825)), x, y, z, entity);
    }

    pub fn _0xD3A6A0EF48823A8C() types.Any {
        return nativeCaller.invoke0(15251054137710885516);
    }

    pub fn _0xD0BC1C6FB18EE154(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any) void {
        _ = nativeCaller.invoke7(15040928121556492628, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn _0x2801D0012266DF07(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2882813939784539911)), p0);
    }

    pub fn ADD_NAVMESH_REQUIRED_REGION(p0: f32, p1: f32, p2: f32) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4070881873695303301)), p0, p1, p2);
    }

    pub fn REMOVE_NAVMESH_REQUIRED_REGIONS() void {
        _ = nativeCaller.invoke0(10479606114466088030);
    }

    pub fn DISABLE_NAVMESH_IN_AREA(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any) void {
        _ = nativeCaller.invoke7(@as(u64, @intCast(5514784019205462923)), p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn ARE_ALL_NAVMESH_REGIONS_LOADED() windows.BOOL {
        return nativeCaller.invoke0(9517752372806957802);
    }

    pub fn IS_NAVMESH_LOADED_IN_AREA(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) windows.BOOL {
        return nativeCaller.invoke6(17875851137686463141, x1, y1, z1, x2, y2, z2);
    }

    pub fn _0x01708E8DD3FF8C65(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32) types.Any {
        return nativeCaller.invoke6(@as(u64, @intCast(103739531227794533)), p0, p1, p2, p3, p4, p5);
    }

    pub fn ADD_NAVMESH_BLOCKING_OBJECT(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: windows.BOOL, p8: types.Any) types.Any {
        return nativeCaller.invoke9(18218688733846187866, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn UPDATE_NAVMESH_BLOCKING_OBJECT(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: types.Any) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(1197563013489034887)), p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn REMOVE_NAVMESH_BLOCKING_OBJECT(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5060245499023817742)), p0);
    }

    pub fn _0x0EAEB0DB4B132399(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1057977418382517145)), p0);
    }

    pub fn _0x29C24BFBED8AB8FB(p0: f32, p1: f32) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(3009051046431078651)), p0, p1);
    }

    pub fn _0x8ABE8608576D9CE3(p0: f32, p1: f32, p2: f32, p3: f32) f32 {
        return nativeCaller.invoke4(9997575593193741539, p0, p1, p2, p3);
    }

    pub fn _0x336511A34F2E5185(p0: f32, p1: f32) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(3703385661687878021)), p0, p1);
    }

    pub fn _0x3599D741C9AC6310(p0: f32, p1: f32, p2: f32, p3: f32) f32 {
        return nativeCaller.invoke4(@as(u64, @intCast(3862354833003275024)), p0, p1, p2, p3);
    }

    pub fn CALCULATE_TRAVEL_DISTANCE_BETWEEN_POINTS(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 {
        return nativeCaller.invoke6(12527145474710610327, x1, y1, z1, x2, y2, z2);
    }
};

pub const CONTROLS = struct {
    pub fn IS_CONTROL_ENABLED(index: c_int, control: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(2083596516048037337)), index, control);
    }

    pub fn IS_CONTROL_PRESSED(index: c_int, control: c_int) windows.BOOL {
        return nativeCaller.invoke2(17555624867233159754, index, control);
    }

    pub fn IS_CONTROL_RELEASED(index: c_int, control: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(7245979435848464349)), index, control);
    }

    pub fn IS_CONTROL_JUST_PRESSED(index: c_int, control: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(6342219533232326959)), index, control);
    }

    pub fn IS_CONTROL_JUST_RELEASED(index: c_int, control: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5834765322530865638)), index, control);
    }

    pub fn GET_CONTROL_VALUE(index: c_int, control: c_int) c_int {
        return nativeCaller.invoke2(15663090593132522535, index, control);
    }

    pub fn GET_CONTROL_NORMAL(index: c_int, control: c_int) f32 {
        return nativeCaller.invoke2(17022651722841437539, index, control);
    }

    pub fn _0x5B73C77D9EB66E24(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6589830022120762916)), p0);
    }

    pub fn _0x5B84D09CEC5209C5(p0: types.Any, p1: types.Any) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(6594625126775523781)), p0, p1);
    }

    pub fn _SET_CONTROL_NORMAL(index: c_int, control: c_int, amount: f32) windows.BOOL {
        return nativeCaller.invoke3(16763057966653091934, index, control, amount);
    }

    pub fn IS_DISABLED_CONTROL_PRESSED(index: c_int, control: c_int) windows.BOOL {
        return nativeCaller.invoke2(16309926292945926941, index, control);
    }

    pub fn IS_DISABLED_CONTROL_JUST_PRESSED(index: c_int, control: c_int) windows.BOOL {
        return nativeCaller.invoke2(10497601588777486455, index, control);
    }

    pub fn IS_DISABLED_CONTROL_JUST_RELEASED(index: c_int, control: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(3484816125330098959)), index, control);
    }

    pub fn GET_DISABLED_CONTROL_NORMAL(control: c_int, variable: c_int) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(1289816700883198844)), control, variable);
    }

    pub fn _0x4F8A26A890FD62FB(p0: types.Any, p1: types.Any) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(5731435981211263739)), p0, p1);
    }

    pub fn _0xD7D22F5592AED8BA(p0: types.Any) types.Any {
        return nativeCaller.invoke1(15551544507843401914, p0);
    }

    pub fn _GET_LAST_INPUT_METHOD(index: c_int) windows.BOOL {
        return nativeCaller.invoke1(11921543228142303000, index);
    }

    pub fn _0x13337B38DB572509(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1383584994661180681)), p0);
    }

    pub fn _0xFC695459D4D0E219(p0: f32, p1: f32) windows.BOOL {
        return nativeCaller.invoke2(18188161314911740441, p0, p1);
    }

    pub fn _0x23F09EADC01449D6(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2589744254827121110)), p0);
    }

    pub fn _0x6CD79468A1E595C6(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(7842900453202695622)), p0);
    }

    pub fn _GET_CONTROL_ACTION_NAME(index: c_int, control: c_int, p2: windows.BOOL) [*c]u8 {
        return nativeCaller.invoke3(@as(u64, @intCast(331533201183454215)), index, control, p2);
    }

    pub fn _0x80C2FD58D720C801(p0: types.Any, p1: types.Any, p2: windows.BOOL) types.Any {
        return nativeCaller.invoke3(9278256740344842241, p0, p1, p2);
    }

    pub fn _0x8290252FFF36ACB5(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(9408060509652430005, p0, p1, p2, p3);
    }

    pub fn _0xCB0360EFEFB2580D(p0: types.Any) void {
        _ = nativeCaller.invoke1(14628642598264395789, p0);
    }

    pub fn SET_PAD_SHAKE(p0: c_int, duration: c_int, frequency: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5238680789324452053)), p0, duration, frequency);
    }

    pub fn _0x14D29BB12D47F68C(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(1500432811139004044)), p0, p1, p2, p3, p4);
    }

    pub fn STOP_PAD_SHAKE(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4089666692606385293)), p0);
    }

    pub fn _0xF239400E16C23E08(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(17454052260106616328, p0, p1);
    }

    pub fn _0xA0CEFCEA390AAB9B(p0: types.Any) void {
        _ = nativeCaller.invoke1(11587476974180412315, p0);
    }

    pub fn IS_LOOK_INVERTED() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(8626102284276728077)));
    }

    pub fn _0xE1615EC03B3BB4FD() types.Any {
        return nativeCaller.invoke0(16240365910995219709);
    }

    pub fn GET_LOCAL_PLAYER_AIM_STATE() types.Any {
        return nativeCaller.invoke0(13493259179427234439);
    }

    pub fn _0x59B9A7AF4C95133C() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6465383111413011260)));
    }

    pub fn _0x0F70731BACCFBB96() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1112515670661118870)));
    }

    pub fn _0xFC859E2374407556() types.Any {
        return nativeCaller.invoke0(18196123744571782486);
    }

    pub fn SET_PLAYERPAD_SHAKES_WHEN_CONTROLLER_DISABLED(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8759464672204640392)), p0);
    }

    pub fn SET_INPUT_EXCLUSIVE(controlGroup: c_int, control: c_int) void {
        _ = nativeCaller.invoke2(17141956811594263985, controlGroup, control);
    }

    pub fn DISABLE_CONTROL_ACTION(controlGroup: c_int, control: c_int, disable: windows.BOOL) void {
        _ = nativeCaller.invoke3(18345895136465843900, controlGroup, control, disable);
    }

    pub fn ENABLE_CONTROL_ACTION(controlGroup: c_int, control: c_int, enable: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3824154378443735381)), controlGroup, control, enable);
    }

    pub fn DISABLE_ALL_CONTROL_ACTIONS(controlGroup: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6866697718202259867)), controlGroup);
    }

    pub fn ENABLE_ALL_CONTROL_ACTIONS(controlGroup: c_int) void {
        _ = nativeCaller.invoke1(11961536079038356967, controlGroup);
    }

    pub fn _0x3D42B92563939375(p0: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4414294155012051829)), p0);
    }

    pub fn _0x4683149ED1DDE7A1(p0: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5080927476962420641)), p0);
    }

    pub fn _0x643ED62D5EA3BEBD() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7223446342698516157)));
    }

    pub fn _0x7F4724035FDCA1DD(index: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(9171338763075101149)), index);
    }
};

pub const DATAFILE = struct {
    pub fn _0xAD6875BBC0FC899C(p0: types.Any) void {
        _ = nativeCaller.invoke1(12495366615396551068, p0);
    }

    pub fn _0x6CC86E78358D5119() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7838636614011932953)));
    }

    pub fn _0xFCCAE5B92A830878(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(18215624226298333304, p0);
    }

    pub fn _0x15FF52B809DB2353(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1585076544250520403)), p0);
    }

    pub fn _0xF8CC1EBE0B62E29F(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(17927738018238751391, p0);
    }

    pub fn _0x22DA66936E0FFF37(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2511432525605240631)), p0);
    }

    pub fn _0x8F5EA1C01D65A100(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(10330872441733488896, p0);
    }

    pub fn _0xC84527E235FCA219(p0: [*c]u8, p1: windows.BOOL, p2: [*c]u8, p3: [*c]types.Any, p4: [*c]types.Any, type_: [*c]u8, p6: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke7(14430984433500463641, p0, p1, p2, p3, p4, type_, p6);
    }

    pub fn _0xA5EFC3E847D60507(p0: [*c]u8, p1: [*c]u8, p2: [*c]u8, p3: [*c]u8, p4: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(11956990938096993543, p0, p1, p2, p3, p4);
    }

    pub fn _0x648E7A5434AF7969(p0: [*c]u8, p1: [*c]types.Any, p2: windows.BOOL, p3: [*c]types.Any, p4: [*c]types.Any, p5: [*c]types.Any, type_: [*c]u8) windows.BOOL {
        return nativeCaller.invoke7(@as(u64, @intCast(7245863352565463401)), p0, p1, p2, p3, p4, p5, type_);
    }

    pub fn _0x4645DE9980999E93(p0: [*c]u8, p1: [*c]u8, p2: [*c]u8, p3: [*c]u8, type_: [*c]u8) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(5063698106916904595)), p0, p1, p2, p3, type_);
    }

    pub fn _0x692D808C34A82143(p0: [*c]u8, p1: f32, type_: [*c]u8) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(7578855087601623363)), p0, p1, type_);
    }

    pub fn _0xA69AC4ADE82B57A4(p0: c_int) windows.BOOL {
        return nativeCaller.invoke1(12005124007913019300, p0);
    }

    pub fn _0x9CB0BFA7A9342C3D(p0: c_int, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(11290734992637045821, p0, p1);
    }

    pub fn _0x52818819057F2B40(p0: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5945182624153545536)), p0);
    }

    pub fn _0x01095C95CD46B624(p0: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(74692667292169764)), p0);
    }

    pub fn _LOAD_UGC_FILE(filename: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(14205351586031732196, filename);
    }

    pub fn DATAFILE_CREATE() void {
        _ = nativeCaller.invoke0(15163717397261259758);
    }

    pub fn DATAFILE_DELETE() void {
        _ = nativeCaller.invoke0(11149155450699001339);
    }

    pub fn _0x2ED61456317B8178() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3374907331190686072)));
    }

    pub fn _0xC55854C7D7274882() void {
        _ = nativeCaller.invoke0(14220209040707242114);
    }

    pub fn _0x906B778CA1DC72B6() [*c]types.Any {
        return nativeCaller.invoke0(10406542809864368822);
    }

    pub fn _0x83BCCE3224735F05(filename: [*c]u8) windows.BOOL {
        return nativeCaller.invoke1(9492688829345390341, filename);
    }

    pub fn _0x4DFDD9EB705F8140(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5619887515254096192)), p0);
    }

    pub fn _0xBEDB96A7584AA8CF() windows.BOOL {
        return nativeCaller.invoke0(13752751532590934223);
    }

    pub fn _OBJECT_VALUE_ADD_BOOLEAN(objectData: [*c]types.Any, key: [*c]u8, value: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3824192712233886501)), objectData, key, value);
    }

    pub fn _OBJECT_VALUE_ADD_INTEGER(objectData: [*c]types.Any, key: [*c]u8, value: c_int) void {
        _ = nativeCaller.invoke3(16708413188189276373, objectData, key, value);
    }

    pub fn _OBJECT_VALUE_ADD_FLOAT(objectData: [*c]types.Any, key: [*c]u8, value: f32) void {
        _ = nativeCaller.invoke3(14014670713589665886, objectData, key, value);
    }

    pub fn _OBJECT_VALUE_ADD_STRING(objectData: [*c]types.Any, key: [*c]u8, value: [*c]u8) void {
        _ = nativeCaller.invoke3(10372780042086834956, objectData, key, value);
    }

    pub fn _OBJECT_VALUE_ADD_VECTOR3(objectData: [*c]types.Any, key: [*c]u8, valueX: f32, valueY: f32, valueZ: f32) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(5536220773918473710)), objectData, key, valueX, valueY, valueZ);
    }

    pub fn _OBJECT_VALUE_ADD_OBJECT(objectData: [*c]types.Any, key: [*c]u8) [*c]types.Any {
        return nativeCaller.invoke2(11770427483498950369, objectData, key);
    }

    pub fn _OBJECT_VALUE_ADD_ARRAY(objectData: [*c]types.Any, key: [*c]u8) [*c]types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(6562152048279318111)), objectData, key);
    }

    pub fn _OBJECT_VALUE_GET_BOOLEAN(objectData: [*c]types.Any, key: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(1262859536984702700)), objectData, key);
    }

    pub fn _OBJECT_VALUE_GET_INTEGER(objectData: [*c]types.Any, key: [*c]u8) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(8714587784846092300)), objectData, key);
    }

    pub fn _OBJECT_VALUE_GET_FLOAT(objectData: [*c]types.Any, key: [*c]u8) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(459652227145635623)), objectData, key);
    }

    pub fn _OBJECT_VALUE_GET_STRING(objectData: [*c]types.Any, key: [*c]u8) [*c]u8 {
        return nativeCaller.invoke2(@as(u64, @intCast(4408982148052305010)), objectData, key);
    }

    pub fn _OBJECT_VALUE_GET_VECTOR3(objectData: [*c]types.Any, key: [*c]u8) types.Vector3 {
        return nativeCaller.invoke2(@as(u64, @intCast(5101800707108382156)), objectData, key);
    }

    pub fn _OBJECT_VALUE_GET_OBJECT(objectData: [*c]types.Any, key: [*c]u8) [*c]types.Any {
        return nativeCaller.invoke2(13166798819796250338, objectData, key);
    }

    pub fn _OBJECT_VALUE_GET_ARRAY(objectData: [*c]types.Any, key: [*c]u8) [*c]types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(8833875170271058413)), objectData, key);
    }

    pub fn _OBJECT_VALUE_GET_TYPE(objectData: [*c]types.Any, key: [*c]u8) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(224148558715188081)), objectData, key);
    }

    pub fn _ARRAY_VALUE_ADD_BOOLEAN(arrayData: [*c]types.Any, value: windows.BOOL) void {
        _ = nativeCaller.invoke2(17920093003080436854, arrayData, value);
    }

    pub fn _ARRAY_VALUE_ADD_INTEGER(arrayData: [*c]types.Any, value: c_int) void {
        _ = nativeCaller.invoke2(14609034328411203899, arrayData, value);
    }

    pub fn _ARRAY_VALUE_ADD_FLOAT(arrayData: [*c]types.Any, value: f32) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6316744868199890774)), arrayData, value);
    }

    pub fn _ARRAY_VALUE_ADD_STRING(arrayData: [*c]types.Any, value: [*c]u8) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3388503252636987050)), arrayData, value);
    }

    pub fn _ARRAY_VALUE_ADD_VECTOR3(arrayData: [*c]types.Any, valueX: f32, valueY: f32, valueZ: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(4647588385826861250)), arrayData, valueX, valueY, valueZ);
    }

    pub fn _ARRAY_VALUE_ADD_OBJECT(arrayData: [*c]types.Any) [*c]types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(7532632714145023895)), arrayData);
    }

    pub fn _ARRAY_VALUE_GET_BOOLEAN(arrayData: [*c]types.Any, arrayIndex: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5819128487743635732)), arrayData, arrayIndex);
    }

    pub fn _ARRAY_VALUE_GET_INTEGER(arrayData: [*c]types.Any, arrayIndex: c_int) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(4493151604661122238)), arrayData, arrayIndex);
    }

    pub fn _ARRAY_VALUE_GET_FLOAT(arrayData: [*c]types.Any, arrayIndex: c_int) f32 {
        return nativeCaller.invoke2(13890552284671627189, arrayData, arrayIndex);
    }

    pub fn _ARRAY_VALUE_GET_STRING(arrayData: [*c]types.Any, arrayIndex: c_int) [*c]u8 {
        return nativeCaller.invoke2(15272550673523371858, arrayData, arrayIndex);
    }

    pub fn _ARRAY_VALUE_GET_VECTOR3(arrayData: [*c]types.Any, arrayIndex: c_int) types.Vector3 {
        return nativeCaller.invoke2(10169238896371196554, arrayData, arrayIndex);
    }

    pub fn _ARRAY_VALUE_GET_OBJECT(arrayData: [*c]types.Any, arrayIndex: c_int) [*c]types.Any {
        return nativeCaller.invoke2(10042936787056858207, arrayData, arrayIndex);
    }

    pub fn _ARRAY_VALUE_GET_SIZE(arrayData: [*c]types.Any) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(458719005676202541)), arrayData);
    }

    pub fn _ARRAY_VALUE_GET_TYPE(arrayData: [*c]types.Any, arrayIndex: c_int) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(4179363190438798277)), arrayData, arrayIndex);
    }
};

pub const FIRE = struct {
    pub fn START_SCRIPT_FIRE(X: f32, Y: f32, Z: f32, maxChildren: c_int, isGasFire: windows.BOOL) types.Any {
        return nativeCaller.invoke5(@as(u64, @intCast(7747142977873524872)), X, Y, Z, maxChildren, isGasFire);
    }

    pub fn REMOVE_SCRIPT_FIRE(scriptHandle: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(9220355218917582655)), scriptHandle);
    }

    pub fn START_ENTITY_FIRE(entity: types.Entity) types.Any {
        return nativeCaller.invoke1(17773976481860363231, entity);
    }

    pub fn STOP_ENTITY_FIRE(entity: types.Entity) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(9155205527417199359)), entity);
    }

    pub fn IS_ENTITY_ON_FIRE(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2941975181394786827)), entity);
    }

    pub fn GET_NUMBER_OF_FIRES_IN_RANGE(x: f32, y: f32, z: f32, radius: f32) c_int {
        return nativeCaller.invoke4(@as(u64, @intCast(5821699207502803717)), x, y, z, radius);
    }

    pub fn STOP_FIRE_IN_RANGE(x: f32, y: f32, z: f32, radius: f32) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(390276194669331103)), x, y, z, radius);
    }

    pub fn GET_CLOSEST_FIRE_POS(fire: [*c]types.Entity, x: f32, y: f32, z: f32) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(3831049718424668191)), fire, x, y, z);
    }

    pub fn ADD_EXPLOSION(x: f32, y: f32, z: f32, explosionType: c_int, damageScale: f32, isAudible: windows.BOOL, isInvisible: windows.BOOL, cameraShake: f32) void {
        _ = nativeCaller.invoke8(16405817240112490924, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake);
    }

    pub fn ADD_OWNED_EXPLOSION(ped: types.Ped, x: f32, y: f32, z: f32, explosionType: c_int, damageScale: f32, isAudible: windows.BOOL, isInvisible: windows.BOOL, cameraShake: f32) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(1669324415570677779)), ped, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake);
    }

    pub fn _ADD_SPECFX_EXPLOSION(x: f32, y: f32, z: f32, explosionType: c_int, explosionFx: types.Hash, damageScale: f32, isAudible: windows.BOOL, isInvisible: windows.BOOL, cameraShake: f32) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(3953386303019438610)), x, y, z, explosionType, explosionFx, damageScale, isAudible, isInvisible, cameraShake);
    }

    pub fn IS_EXPLOSION_IN_AREA(explosionType: c_int, x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) windows.BOOL {
        return nativeCaller.invoke7(@as(u64, @intCast(3327801747854774496)), explosionType, x1, y1, z1, x2, y2, z2);
    }

    pub fn _0x6070104B699B2EF4(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any) types.Any {
        return nativeCaller.invoke7(@as(u64, @intCast(6949072141113044724)), p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn IS_EXPLOSION_IN_SPHERE(explosionType: c_int, x: f32, y: f32, z: f32, radius: f32) windows.BOOL {
        return nativeCaller.invoke5(12326212991055881347, explosionType, x, y, z, radius);
    }

    pub fn IS_EXPLOSION_IN_ANGLED_AREA(explosionType: c_int, x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, angle: f32) windows.BOOL {
        return nativeCaller.invoke8(11563456883644030027, explosionType, x1, y1, z1, x2, y2, z2, angle);
    }

    pub fn _GET_PED_INSIDE_EXPLOSION_AREA(explosionType: c_int, x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, radius: f32) types.Entity {
        return nativeCaller.invoke8(@as(u64, @intCast(1493589382222802156)), explosionType, x1, y1, z1, x2, y2, z2, radius);
    }
};

pub const DECISIONEVENT = struct {
    pub fn SET_DECISION_MAKER(ped: types.Ped, name: types.Hash) void {
        _ = nativeCaller.invoke2(13115786772067832046, ped, name);
    }

    pub fn CLEAR_DECISION_MAKER_EVENT_RESPONSE(name: types.Hash, type_: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5749188085697907048)), name, type_);
    }

    pub fn BLOCK_DECISION_MAKER_EVENT(name: types.Hash, type_: c_int) void {
        _ = nativeCaller.invoke2(16442587251302569719, name, type_);
    }

    pub fn UNBLOCK_DECISION_MAKER_EVENT(name: types.Hash, type_: c_int) void {
        _ = nativeCaller.invoke2(15550257657199499752, name, type_);
    }

    pub fn ADD_SHOCKING_EVENT_AT_POSITION(type_: c_int, x: f32, y: f32, z: f32, duration: f32) types.ScrHandle {
        return nativeCaller.invoke5(15706379927697040873, type_, x, y, z, duration);
    }

    pub fn ADD_SHOCKING_EVENT_FOR_ENTITY(type_: c_int, entity: types.Entity, duration: f32) types.ScrHandle {
        return nativeCaller.invoke3(@as(u64, @intCast(9212381037151687714)), type_, entity, duration);
    }

    pub fn IS_SHOCKING_EVENT_IN_SPHERE(type_: c_int, x: f32, y: f32, z: f32, radius: f32) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(1401934189730442130)), type_, x, y, z, radius);
    }

    pub fn REMOVE_SHOCKING_EVENT(event: types.ScrHandle) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3231987544506158309)), event);
    }

    pub fn REMOVE_ALL_SHOCKING_EVENTS(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(16909865403413505868, p0);
    }

    pub fn REMOVE_SHOCKING_EVENT_SPAWN_BLOCKING_AREAS() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3751239098112338654)));
    }

    pub fn SUPPRESS_SHOCKING_EVENTS_NEXT_FRAME() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3430099330061811081)));
    }

    pub fn SUPPRESS_SHOCKING_EVENT_TYPE_NEXT_FRAME(type_: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4598998255302463280)), type_);
    }

    pub fn SUPPRESS_AGITATION_EVENTS_NEXT_FRAME() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6862209615884637522)));
    }
};

pub const ZONE = struct {
    pub fn GET_ZONE_AT_COORDS(x: f32, y: f32, z: f32) c_int {
        return nativeCaller.invoke3(@as(u64, @intCast(2811385424171021044)), x, y, z);
    }

    pub fn GET_ZONE_FROM_NAME_ID(zoneName: [*c]u8) c_int {
        return nativeCaller.invoke1(11010488726806031553, zoneName);
    }

    pub fn GET_ZONE_POPSCHEDULE(zoneId: c_int) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(4842702485247014075)), zoneId);
    }

    pub fn GET_NAME_OF_ZONE(x: f32, y: f32, z: f32) [*c]u8 {
        return nativeCaller.invoke3(14812450763245150666, x, y, z);
    }

    pub fn SET_ZONE_ENABLED(zoneId: c_int, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(13429398643585996305, zoneId, toggle);
    }

    pub fn GET_ZONE_SCUMMINESS(zoneId: c_int) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(6880135243135321913)), zoneId);
    }

    pub fn OVERRIDE_POPSCHEDULE_VEHICLE_MODEL(scheduleId: c_int, vehicleHash: types.Hash) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6880754124677085047)), scheduleId, vehicleHash);
    }

    pub fn CLEAR_POPSCHEDULE_OVERRIDE_VEHICLE_MODEL(scheduleId: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6633207860560761116)), scheduleId);
    }

    pub fn GET_HASH_OF_MAP_AREA_AT_COORDS(x: f32, y: f32, z: f32) types.Hash {
        return nativeCaller.invoke3(@as(u64, @intCast(9144081107607193384)), x, y, z);
    }
};

pub const ROPE = struct {
    pub fn ADD_ROPE(x: f32, y: f32, z: f32, rotX: f32, rotY: f32, rotZ: f32, length: f32, ropeType: c_int, maxLength: f32, minLength: f32, p10: f32, p11: windows.BOOL, p12: windows.BOOL, rigid: windows.BOOL, p14: f32, breakWhenShot: windows.BOOL, unkPtr: [*c]types.Any) types.Object {
        return nativeCaller.invoke17(16731672373918347808, x, y, z, rotX, rotY, rotZ, length, ropeType, maxLength, minLength, p10, p11, p12, rigid, p14, breakWhenShot, unkPtr);
    }

    pub fn DELETE_ROPE(rope: [*c]types.Object) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5959531772662662729)), rope);
    }

    pub fn DELETE_CHILD_ROPE(rope: types.Object) void {
        _ = nativeCaller.invoke1(12276085912401926944, rope);
    }

    pub fn DOES_ROPE_EXIST(rope: [*c]types.Object) windows.BOOL {
        return nativeCaller.invoke1(18254295171343707542, rope);
    }

    pub fn ROPE_DRAW_SHADOW_ENABLED(rope: [*c]types.Object, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(17391114195629202344, rope, toggle);
    }

    pub fn LOAD_ROPE_DATA(rope: types.Object, rope_preset: [*c]u8) void {
        _ = nativeCaller.invoke2(14677798260016069927, rope, rope_preset);
    }

    pub fn PIN_ROPE_VERTEX(rope: types.Object, vertex: c_int, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(3112564522788239002)), rope, vertex, x, y, z);
    }

    pub fn UNPIN_ROPE_VERTEX(rope: types.Object, vertex: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5429901816414925184)), rope, vertex);
    }

    pub fn GET_ROPE_VERTEX_COUNT(rope: types.Object) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(3915305126917632181)), rope);
    }

    pub fn ATTACH_ENTITIES_TO_ROPE(rope: types.Object, ent1: types.Entity, ent2: types.Entity, ent1_x: f32, ent1_y: f32, ent1_z: f32, ent2_x: f32, ent2_y: f32, ent2_z: f32, length: f32, p10: windows.BOOL, p11: windows.BOOL, p12: [*c]types.Any, p13: [*c]types.Any) void {
        _ = nativeCaller.invoke14(@as(u64, @intCast(4437713091426519747)), rope, ent1, ent2, ent1_x, ent1_y, ent1_z, ent2_x, ent2_y, ent2_z, length, p10, p11, p12, p13);
    }

    pub fn ATTACH_ROPE_TO_ENTITY(rope: types.Any, entity: types.Entity, x: f32, y: f32, z: f32, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(@as(u64, @intCast(5424878668781820517)), rope, entity, x, y, z, p5);
    }

    pub fn DETACH_ROPE_FROM_ENTITY(rope: types.Any, entity: types.Entity) void {
        _ = nativeCaller.invoke2(13615228748778988669, rope, entity);
    }

    pub fn ROPE_SET_UPDATE_PINVERTS(rope: types.Object) void {
        _ = nativeCaller.invoke1(14471868725878409914, rope);
    }

    pub fn _0xDC57A637A20006ED(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(15877341769189295853, p0, p1);
    }

    pub fn _0x36CCB9BE67B970FD(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3948735200732213501)), p0, p1);
    }

    pub fn _0x84DE3B5FB3E666F0(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(9574155140062406384, p0);
    }

    pub fn GET_ROPE_LAST_VERTEX_COORD(rope: types.Object) types.Vector3 {
        return nativeCaller.invoke1(@as(u64, @intCast(2430553729362132013)), rope);
    }

    pub fn GET_ROPE_VERTEX_COORD(rope: types.Object, vertex: c_int) types.Vector3 {
        return nativeCaller.invoke2(16889002791013490253, rope, vertex);
    }

    pub fn START_ROPE_WINDING(rope: types.Object) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1468673947584050238)), rope);
    }

    pub fn STOP_ROPE_WINDING(rope: types.Object) void {
        _ = nativeCaller.invoke1(14640440119028984444, rope);
    }

    pub fn START_ROPE_UNWINDING_FRONT(rope: types.Object) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6020487492214106537)), rope);
    }

    pub fn STOP_ROPE_UNWINDING_FRONT(rope: types.Object) void {
        _ = nativeCaller.invoke1(18443266350541421491, rope);
    }

    pub fn ROPE_CONVERT_TO_SIMPLE(rope: types.Object) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6019576087505209242)), rope);
    }

    pub fn ROPE_LOAD_TEXTURES() void {
        _ = nativeCaller.invoke0(11209523089359657153);
    }

    pub fn ROPE_ARE_TEXTURES_LOADED() windows.BOOL {
        return nativeCaller.invoke0(17496738158824412567);
    }

    pub fn ROPE_UNLOAD_TEXTURES() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7846233953947910499)));
    }

    pub fn _0x271C9D3ACA5D6409(rope: types.Object) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2818300342655869961)), rope);
    }

    pub fn _0xBC0CE682D4D05650(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any, p9: types.Any, p10: types.Any, p11: types.Any, p12: types.Any, p13: types.Any) void {
        _ = nativeCaller.invoke14(13550458828441540176, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13);
    }

    pub fn _0xB1B6216CA2E7B55E(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(12805459340947862878, p0, p1, p2);
    }

    pub fn _0xB743F735C03D7810(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(13205670342611007504, p0, p1);
    }

    pub fn _GET_ROPE_LENGTH(rope: types.Object) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(8287753169396147366)), rope);
    }

    pub fn ROPE_FORCE_LENGTH(rope: types.Object, length: f32) void {
        _ = nativeCaller.invoke2(14990784799107701531, rope, length);
    }

    pub fn ROPE_RESET_LENGTH(rope: types.Object, length: windows.BOOL) void {
        _ = nativeCaller.invoke2(13938052941319115936, rope, length);
    }

    pub fn APPLY_IMPULSE_TO_CLOTH(posX: f32, posY: f32, posZ: f32, vecX: f32, vecY: f32, vecZ: f32, impulse: f32) void {
        _ = nativeCaller.invoke7(16392946616666363780, posX, posY, posZ, vecX, vecY, vecZ, impulse);
    }

    pub fn SET_DAMPING(rope: types.Object, vertex: c_int, value: f32) void {
        _ = nativeCaller.invoke3(17195783518102140507, rope, vertex, value);
    }

    pub fn ACTIVATE_PHYSICS(entity: types.Entity) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8143371989984347952)), entity);
    }

    pub fn SET_CGOFFSET(rope: types.Object, x: f32, y: f32, z: f32) void {
        _ = nativeCaller.invoke4(15634871766511806724, rope, x, y, z);
    }

    pub fn GET_CGOFFSET(rope: types.Object) types.Vector3 {
        return nativeCaller.invoke1(9373297824573371922, rope);
    }

    pub fn SET_CG_AT_BOUNDCENTER(rope: types.Object) void {
        _ = nativeCaller.invoke1(13714038759131939103, rope);
    }

    pub fn BREAK_ENTITY_GLASS(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: types.Any, p10: windows.BOOL) void {
        _ = nativeCaller.invoke11(@as(u64, @intCast(3342951953186621683)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
    }

    pub fn SET_DISABLE_BREAKING(rope: types.Object, enabled: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6695755901876206939)), rope, enabled);
    }

    pub fn _0xCC6E963682533882(p0: types.Any) void {
        _ = nativeCaller.invoke1(14730876592034363522, p0);
    }

    pub fn SET_DISABLE_FRAG_DAMAGE(object: types.Object, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(124476729854094587)), object, toggle);
    }
};

pub const WATER = struct {
    pub fn GET_WATER_HEIGHT(x: f32, y: f32, z: f32, height: [*c]f32) windows.BOOL {
        return nativeCaller.invoke4(17762927292766151972, x, y, z, height);
    }

    pub fn GET_WATER_HEIGHT_NO_WAVES(x: f32, y: f32, z: f32, height: [*c]f32) windows.BOOL {
        return nativeCaller.invoke4(10297116871110596500, x, y, z, height);
    }

    pub fn TEST_PROBE_AGAINST_WATER(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any) windows.BOOL {
        return nativeCaller.invoke7(18421367862894008795, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn TEST_PROBE_AGAINST_ALL_WATER(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any) windows.BOOL {
        return nativeCaller.invoke8(9904651976348723807, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn TEST_VERTICAL_PROBE_AGAINST_ALL_WATER(x: f32, y: f32, z: f32, p3: types.Any, p4: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(3113203377110074082)), x, y, z, p3, p4);
    }

    pub fn MODIFY_WATER(x: f32, y: f32, z: f32, height: f32) void {
        _ = nativeCaller.invoke4(14142425935910774327, x, y, z, height);
    }

    pub fn _0xFDBF4CDBC07E1706(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) types.Any {
        return nativeCaller.invoke5(18284417518858540806, p0, p1, p2, p3, p4);
    }

    pub fn _0xB1252E3E59A82AAF(p0: types.Any) void {
        _ = nativeCaller.invoke1(12764659564178582191, p0);
    }

    pub fn _0xB96B00E976BE977F(p0: f32) void {
        _ = nativeCaller.invoke1(13360773722244290431, p0);
    }

    pub fn _0x2B2A2CC86778B619() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3110347731893794329)));
    }

    pub fn _0x5E5E99285AE812DB() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6800040885978927835)));
    }
};

pub const WORLDPROBE = struct {
    pub fn _0x7EE9F5D83DD4F90E(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, flags: c_int, entity: types.Entity, p8: c_int) c_int {
        return nativeCaller.invoke9(@as(u64, @intCast(9145110827451611406)), x1, y1, z1, x2, y2, z2, flags, entity, p8);
    }

    pub fn _CAST_RAY_POINT_TO_POINT(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, flags: c_int, entity: types.Entity, p8: c_int) c_int {
        return nativeCaller.invoke9(@as(u64, @intCast(3997233671787402630)), x1, y1, z1, x2, y2, z2, flags, entity, p8);
    }

    pub fn _0x052837721A854EC7(entity: types.Entity, flags1: c_int, flags2: c_int) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(371607932468809415)), entity, flags1, flags2);
    }

    pub fn _0xFE466162C4401D18(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: types.Any, p10: types.Any, p11: types.Any, p12: types.Any) types.Any {
        return nativeCaller.invoke13(18322439210830667032, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12);
    }

    pub fn _0x37181417CE7C8900(entity: types.Entity, flags1: c_int, flags2: c_int) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(3969945164008163584)), entity, flags1, flags2);
    }

    pub fn _CAST_3D_RAY_POINT_TO_POINT(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32, radius: f32, flags: c_int, entity: types.Entity, p8: c_int) types.Any {
        return nativeCaller.invoke10(@as(u64, @intCast(2906964826188852352)), x1, y1, z1, x2, y2, z2, radius, flags, entity, p8);
    }

    pub fn _0xE6AC6C45FBE83004(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: types.Any, p8: types.Any, p9: types.Any) types.Any {
        return nativeCaller.invoke10(16621779372552499204, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn _0xFF6BE494C7987F34(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any) types.Any {
        return nativeCaller.invoke5(18405055629834616628, p0, p1, p2, p3, p4);
    }

    pub fn _GET_RAYCAST_RESULT(rayHandle: c_int, hit: [*c]windows.BOOL, endCoords: [*c]types.Vector3, surfaceNormal: [*c]types.Vector3, entityHit: [*c]types.Entity) c_int {
        return nativeCaller.invoke5(@as(u64, @intCast(4433588284967978644)), rayHandle, hit, endCoords, surfaceNormal, entityHit);
    }

    pub fn _GET_RAYCAST_RESULT_2(rayHandle: c_int, hit: [*c]windows.BOOL, endCoords: [*c]types.Vector3, surfaceNormal: [*c]types.Vector3, _materialHash: [*c]types.Hash, entityHit: [*c]types.Entity) c_int {
        return nativeCaller.invoke6(@as(u64, @intCast(7289204802319414974)), rayHandle, hit, endCoords, surfaceNormal, _materialHash, entityHit);
    }

    pub fn _0x2B3334BCA57CD799(p0: types.Entity) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3112889752278063001)), p0);
    }
};

pub const NETWORK = struct {
    pub fn NETWORK_IS_SIGNED_IN() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(379239880906107798)));
    }

    pub fn NETWORK_IS_SIGNED_ONLINE() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1186549578762377154)));
    }

    pub fn _0xBD545D44CCE70597() types.Any {
        return nativeCaller.invoke0(13642631721288926615);
    }

    pub fn _0xEBCAB9E5048434F4() types.Any {
        return nativeCaller.invoke0(16990596937483039988);
    }

    pub fn _0x74FB3E29E6D10FA9() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8429399477241057193)));
    }

    pub fn _0x7808619F31FF22DB() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8649270420731536091)));
    }

    pub fn _0xA0FA4EC6A05DA44E() types.Any {
        return nativeCaller.invoke0(11599670405247116366);
    }

    pub fn _0x85443FF4C328F53B() types.Any {
        return nativeCaller.invoke0(9602870625939551547);
    }

    pub fn _0x8D11E61A4ABF49CC() types.Any {
        return nativeCaller.invoke0(10165158834549508556);
    }

    pub fn NETWORK_IS_CLOUD_AVAILABLE() types.Any {
        return nativeCaller.invoke0(11118530911209485058);
    }

    pub fn _0x67A5589628E0CFF6() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7468472959017996278)));
    }

    pub fn _0xBA9775570DB788CF() types.Any {
        return nativeCaller.invoke0(13445344229290641615);
    }

    pub fn NETWORK_IS_HOST() windows.BOOL {
        return nativeCaller.invoke0(10210389022571616775);
    }

    pub fn _0xA306F470D1660581() types.Any {
        return nativeCaller.invoke0(11747345443429156225);
    }

    pub fn _0x4237E822315D8BA9() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4771537563777076137)));
    }

    pub fn NETWORK_HAVE_ONLINE_PRIVILEGES() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2723370039557214307)));
    }

    pub fn _0x1353F87E89946207() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1392729932145385991)));
    }

    pub fn _0x72D918C99BCACC54(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8275673044451249236)), p0);
    }

    pub fn _0xAEEF48CDF5B6CE7C(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(12605373931461201532, p0, p1);
    }

    pub fn _0x78321BEA235FD8CD(p0: types.Any, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(8661015725816666317)), p0, p1);
    }

    pub fn _0x595F028698072DD9(p0: types.Any, p1: types.Any, p2: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(6439868769262579161)), p0, p1, p2);
    }

    pub fn _0x83F28CE49FBBFFBA(p0: types.Any, p1: types.Any, p2: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(9507816676892868538, p0, p1, p2);
    }

    pub fn _0x76BF03FADBF154F5() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8556562192993965301)));
    }

    pub fn _0x9614B71F8ADB982B() types.Any {
        return nativeCaller.invoke0(10814469951324919851);
    }

    pub fn _0x5EA784D197556507() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6820566196397892871)));
    }

    pub fn _0xA8ACB6459542A8C8() types.Any {
        return nativeCaller.invoke0(12154289904339298504);
    }

    pub fn _0x83FE8D7229593017() void {
        _ = nativeCaller.invoke0(9511194984512565271);
    }

    pub fn NETWORK_CAN_BAIL() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(6344696953694702689)));
    }

    pub fn NETWORK_BAIL() void {
        _ = nativeCaller.invoke0(10777470535143963176);
    }

    pub fn _0x283B6062A2C01E9B() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2899016761896607387)));
    }

    pub fn _GET_MP_LOADING_STATE(loadingState: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke1(12632836761044327332, loadingState);
    }

    pub fn _0x9747292807126EDA() types.Any {
        return nativeCaller.invoke0(10900726674967654106);
    }

    pub fn NETWORK_CAN_ENTER_MULTIPLAYER() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(9113080648447700005)));
    }

    pub fn NETWORK_SESSION_ENTER(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) types.Any {
        return nativeCaller.invoke6(@as(u64, @intCast(3679111936845386575)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x2CFC76E0D087C994(p0: c_int, p1: c_int, maxPlayers: c_int, p3: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(3241596539743226260)), p0, p1, maxPlayers, p3);
    }

    pub fn _0x94BC51E9449D917F(p0: c_int, p1: c_int, p2: c_int, maxPlayers: c_int, p4: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(10717531275555344767, p0, p1, p2, maxPlayers, p4);
    }

    pub fn _0xBE3E347A87ACEB82(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(13708452016629279618, p0, p1, p2, p3);
    }

    pub fn NETWORK_SESSION_HOST(p0: c_int, maxPlayers: c_int, p2: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(8015649608906892829)), p0, maxPlayers, p2);
    }

    pub fn _0xED34C0C02C098BB7(p0: c_int, maxPlayers: c_int) windows.BOOL {
        return nativeCaller.invoke2(17092498417382951863, p0, maxPlayers);
    }

    pub fn NETWORK_SESSION_HOST_FRIENDS_ONLY(p0: c_int, maxPlayers: c_int) windows.BOOL {
        return nativeCaller.invoke2(13389151640189635971, p0, maxPlayers);
    }

    pub fn _0xFBCFA2EA2E206890() windows.BOOL {
        return nativeCaller.invoke0(18144900550378940560);
    }

    pub fn _0x74732C6CA90DA2B4() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(8391099375925699252)));
    }

    pub fn _0xF3929C2379B60CCE() windows.BOOL {
        return nativeCaller.invoke0(17551262373996006606);
    }

    pub fn _0xCEF70AA5B3F89BA1() windows.BOOL {
        return nativeCaller.invoke0(14913400397865982881);
    }

    pub fn NETWORK_SESSION_END(p0: windows.BOOL, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(11542261121661603846, p0, p1);
    }

    pub fn NETWORK_SESSION_KICK_PLAYER(player: types.Player) void {
        _ = nativeCaller.invoke1(18052965925827658272, player);
    }

    pub fn _NETWORK_SESSION_ARE_PLAYERS_VOTING_TO_KICK(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(15479041721659334385, player);
    }

    pub fn _0x59DF79317F85A7E0() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6476028042681886688)));
    }

    pub fn _0xFFE1E5B792D92B34() types.Any {
        return nativeCaller.invoke0(18438270926037003060);
    }

    pub fn _0x49EC8030F5015F8B(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5326773407029747595)), p0);
    }

    pub fn _0x8B6A4DD0AF9CE215(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(10045927477498143253, p0, p1);
    }

    pub fn _0x56CE820830EF040B(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(6255079904156517387)), p0);
    }

    pub fn _0xCAE55F48D3D7875C(p0: types.Any) void {
        _ = nativeCaller.invoke1(14620196531724584796, p0);
    }

    pub fn _0xF49ABC20D8552257(p0: types.Any) void {
        _ = nativeCaller.invoke1(17625606940922290775, p0);
    }

    pub fn _0x4811BBAC21C5FCD5(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5193138193310285013)), p0);
    }

    pub fn _0x5539C3EBF104A53A(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6141154985024726330)), p0);
    }

    pub fn _0x702BC4D605522539(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8082770379737802041)), p0);
    }

    pub fn _0x3F52E880AAF6C8CA(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4562965011801491658)), p0);
    }

    pub fn _0xF1EEA2DDA9FFA69D(p0: types.Any) void {
        _ = nativeCaller.invoke1(17433050280521344669, p0);
    }

    pub fn _0x1153FA02A659051C() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1248616410999489820)));
    }

    pub fn _0xC19F6C8E7865A6FF(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(13951989529778169599, p0);
    }

    pub fn _0x236406F60CF216D6(p0: [*c]types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2550170942847456982)), p0, p1);
    }

    pub fn _0x058F43EC59A8631A() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(400613574254813978)));
    }

    pub fn _0x6D03BFBD643B2A02(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7855332995215600130)), p0, p1, p2);
    }

    pub fn _0x600F8CB31C7AAB6E(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6921905853196577646)), p0);
    }

    pub fn _0xE532D6811B3A4D2A(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(16515498633516961066, p0);
    }

    pub fn _0xF7B2CFDE5C9F700D(p0: types.Any, p1: f32, p2: f32, p3: f32) windows.BOOL {
        return nativeCaller.invoke4(17848556827166339085, p0, p1, p2, p3);
    }

    pub fn NETWORK_IS_FINDING_GAMERS() types.Any {
        return nativeCaller.invoke0(15987608017109315754);
    }

    pub fn _0xF9B83B77929D8863() types.Any {
        return nativeCaller.invoke0(17994197695905761379);
    }

    pub fn NETWORK_GET_NUM_FOUND_GAMERS() types.Any {
        return nativeCaller.invoke0(11650886927529875195);
    }

    pub fn NETWORK_GET_FOUND_GAMER(p0: [*c]types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(11371574420629566582, p0, p1);
    }

    pub fn NETWORK_CLEAR_FOUND_GAMERS() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7860132572699834394)));
    }

    pub fn _0x85A0EF54A500882C(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(9628959150142687276, p0);
    }

    pub fn _0x2CC848A861D01493() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3226909021043692691)));
    }

    pub fn _0x94A8394D150B013A() types.Any {
        return nativeCaller.invoke0(10711874716929032506);
    }

    pub fn _0x5AE17C6B0134B7F1() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6548652132196988913)));
    }

    pub fn _0x02A8BEC6FD9AF660(p0: [*c]types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(191612746030839392)), p0, p1);
    }

    pub fn _0x86E0660E4F5C956D() void {
        _ = nativeCaller.invoke0(9718880207512573293);
    }

    pub fn NETWORK_IS_PLAYER_ANIMATION_DRAWING_SYNCHRONIZED() void {
        _ = nativeCaller.invoke0(14337398024027361082);
    }

    pub fn NETWORK_SESSION_CANCEL_INVITE() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3440547468879410937)));
    }

    pub fn _0xA29177F7703B5644() void {
        _ = nativeCaller.invoke0(11714276010390935108);
    }

    pub fn NETWORK_HAS_PENDING_INVITE() types.Any {
        return nativeCaller.invoke0(12433448579207833192);
    }

    pub fn _0xC42DD763159F3461() types.Any {
        return nativeCaller.invoke0(14136191625950344289);
    }

    pub fn _0x62A0296C1BB1CEB3() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7106725756288487091)));
    }

    pub fn _0x23DFB504655D0CE4() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2584983741619047652)));
    }

    pub fn NETWORK_SESSION_GET_INVITER(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(16533725459096182224, p0);
    }

    pub fn _0xD313DE83394AF134() types.Any {
        return nativeCaller.invoke0(15209745021743591732);
    }

    pub fn _0xBDB6F89C729CF388() types.Any {
        return nativeCaller.invoke0(13670387069751194504);
    }

    pub fn NETWORK_SUPPRESS_INVITE(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11558538368063093309, p0);
    }

    pub fn NETWORK_BLOCK_INVITES(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3817338365050922912)), p0);
    }

    pub fn _0xCFEB8AF24FC1D0BB(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14982221358702907579, p0);
    }

    pub fn _0xF814FEC6A19FD6E0() void {
        _ = nativeCaller.invoke0(17876192950008927968);
    }

    pub fn _0x6B07B9CE4D390375(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7712337182605247349)), p0);
    }

    pub fn _0x7AC752103856FB20(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8847130222610807584)), p0);
    }

    pub fn _0x74698374C45701D2() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8388380318487740882)));
    }

    pub fn _0x140E6A44870A11CE() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1445209372988412366)));
    }

    pub fn NETWORK_SESSION_HOST_SINGLE_PLAYER(p0: types.Any) void {
        _ = nativeCaller.invoke1(14360910471973328597, p0);
    }

    pub fn NETWORK_SESSION_LEAVE_SINGLE_PLAYER() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3765703441783795114)));
    }

    pub fn NETWORK_IS_GAME_IN_PROGRESS() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(1223487422827645399)));
    }

    pub fn NETWORK_IS_SESSION_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(15581376729331042688);
    }

    pub fn NETWORK_IS_IN_SESSION() windows.BOOL {
        return nativeCaller.invoke0(14598176716237453591);
    }

    pub fn NETWORK_IS_SESSION_STARTED() windows.BOOL {
        return nativeCaller.invoke0(11377821997192667199);
    }

    pub fn NETWORK_IS_SESSION_BUSY() windows.BOOL {
        return nativeCaller.invoke0(17601014464195498078);
    }

    pub fn NETWORK_CAN_SESSION_END() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(5686853811537823090)));
    }

    pub fn _0x271CC6AB59EBF9A5(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2818345906077432229)), p0);
    }

    pub fn _0xBA416D68C631496A() types.Any {
        return nativeCaller.invoke0(13421128661309933930);
    }

    pub fn _0xA73667484D7037C3(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(12048931413310846915, p0);
    }

    pub fn _0xB4AB419E0D86ACAE(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(13018571294932118702, p0, p1);
    }

    pub fn _0x53AFD64C6758F2F9() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6030274049712124665)));
    }

    pub fn NETWORK_SESSION_VOICE_HOST() void {
        _ = nativeCaller.invoke0(11246990685066641968);
    }

    pub fn NETWORK_SESSION_VOICE_LEAVE() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7463559884578707293)));
    }

    pub fn _0xABD5E88B8A2D3DB2(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(12382058436541365682, p0);
    }

    pub fn NETWORK_SET_KEEP_FOCUSPOINT(p0: windows.BOOL, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(9188490820673251001)), p0, p1);
    }

    pub fn _0x5B8ED3DB018927B1(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6597443441721419697)), p0);
    }

    pub fn _0x855BC38818F6F684() types.Any {
        return nativeCaller.invoke0(9609489219226891908);
    }

    pub fn _0xB5D3453C98456528() types.Any {
        return nativeCaller.invoke0(13101891867505943848);
    }

    pub fn _0xEF0912DDF7C4CB4B() types.Any {
        return nativeCaller.invoke0(17224318994409114443);
    }

    pub fn NETWORK_SEND_TEXT_MESSAGE(message: [*c]u8, playerHandle: [*c]c_int) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(4188716190782828800)), message, playerHandle);
    }

    pub fn NETWORK_SET_ACTIVITY_SPECTATOR(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8436235582563523188)), toggle);
    }

    pub fn NETWORK_IS_ACTIVITY_SPECTATOR() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1301605842312729339)));
    }

    pub fn NETWORK_SET_ACTIVITY_SPECTATOR_MAX(p0: types.Any) void {
        _ = nativeCaller.invoke1(11324155538302902818, p0);
    }

    pub fn NETWORK_GET_ACTIVITY_PLAYER_NUM(p0: windows.BOOL) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(8350435671794361762)), p0);
    }

    pub fn NETWORK_IS_ACTIVITY_SPECTATOR_FROM_HANDLE(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(2838318530915974329)), p0);
    }

    pub fn NETWORK_HOST_TRANSITION(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) types.Any {
        return nativeCaller.invoke6(11964856732014588500, p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x71FB0EBCD4915D56(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(8213174549623168342)), p0, p1, p2, p3);
    }

    pub fn _0xA091A5E44F0072E5(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(11570211317688070885, p0, p1, p2, p3);
    }

    pub fn NETWORK_DO_TRANSITION_QUICKMATCH_WITH_GROUP(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: [*c]types.Any, p5: types.Any) windows.BOOL {
        return nativeCaller.invoke6(11262013399182985610, p0, p1, p2, p3, p4, p5);
    }

    pub fn _0xA06509A691D12BE4() types.Any {
        return nativeCaller.invoke0(11557654629731871716);
    }

    pub fn _0xB13E88E655E5A3BC() void {
        _ = nativeCaller.invoke0(12771796116134273980);
    }

    pub fn _0x6512765E3BE78C50() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7283013694515547216)));
    }

    pub fn _0x0DBD5D7E3C5BEC3B() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(990050289851296827)));
    }

    pub fn _0x5DC577201723960A() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6756937795650164234)));
    }

    pub fn _0x5A6AA44FF8E931E6() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6515200474330247654)));
    }

    pub fn _0x261E97AD7BCF3D40(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2746799594104896832)), p0);
    }

    pub fn _0x39917E1B4CB0F911(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4148235387500820753)), p0);
    }

    pub fn NETWORK_SET_TRANSITION_CREATOR_HANDLE(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(17232588137186265045, p0);
    }

    pub fn NETWORK_CLEAR_TRANSITION_CREATOR_HANDLE() void {
        _ = nativeCaller.invoke0(18100655345302161241);
    }

    pub fn NETWORK_INVITE_GAMERS_TO_TRANSITION(p0: [*c]types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5357414605704265590)), p0, p1);
    }

    pub fn NETWORK_SET_GAMER_INVITED_TO_TRANSITION(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(14568160127138844086, p0);
    }

    pub fn NETWORK_LEAVE_TRANSITION() types.Any {
        return nativeCaller.invoke0(15148449439529687833);
    }

    pub fn NETWORK_LAUNCH_TRANSITION() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3300934890019555460)));
    }

    pub fn _0xA2E9C1AB8A92E8CD(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11739126846226360525, p0);
    }

    pub fn NETWORK_BAIL_TRANSITION() void {
        _ = nativeCaller.invoke0(16908045735013960987);
    }

    pub fn NETWORK_DO_TRANSITION_TO_GAME(p0: windows.BOOL, maxPlayers: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(4511396818418239920)), p0, maxPlayers);
    }

    pub fn NETWORK_DO_TRANSITION_TO_NEW_GAME(p0: windows.BOOL, maxPlayers: c_int, p2: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(5072730068775600180)), p0, maxPlayers, p2);
    }

    pub fn NETWORK_DO_TRANSITION_TO_FREEMODE(p0: [*c]types.Any, p1: types.Any, p2: windows.BOOL, players: c_int, p4: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(4228188662541461663)), p0, p1, p2, players, p4);
    }

    pub fn NETWORK_DO_TRANSITION_TO_NEW_FREEMODE(p0: [*c]types.Any, p1: types.Any, p2: types.Any, p3: windows.BOOL, p4: windows.BOOL, p5: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke6(11421310875458992500, p0, p1, p2, p3, p4, p5);
    }

    pub fn NETWORK_IS_TRANSITION_TO_GAME() types.Any {
        return nativeCaller.invoke0(11346422169773698231);
    }

    pub fn NETWORK_GET_TRANSITION_MEMBERS(p0: [*c]types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(8336163975343724585)), p0, p1);
    }

    pub fn _0x521638ADA1BA0D18(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5914977478991547672)), p0, p1);
    }

    pub fn _0xEBEFC2E77084F599(p0: types.Any, p1: [*c]types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(17001021417627907481, p0, p1, p2);
    }

    pub fn NETWORK_SEND_TRANSITION_GAMER_INSTRUCTION(playerHandle: [*c]types.Player, p1: [*c]u8, p2: c_int, p3: c_int, p4: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(3589882067196993131)), playerHandle, p1, p2, p3, p4);
    }

    pub fn NETWORK_MARK_TRANSITION_GAMER_AS_FULLY_JOINED(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6280475758869872413)), p0);
    }

    pub fn NETWORK_IS_TRANSITION_HOST() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(829303998639972697)));
    }

    pub fn NETWORK_IS_TRANSITION_HOST_FROM_HANDLE(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7736203095859685904)), p0);
    }

    pub fn NETWORK_GET_TRANSITION_HOST(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7278990827236639582)), p0);
    }

    pub fn NETWORK_IS_IN_TRANSITION() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7495286035303993098)));
    }

    pub fn NETWORK_IS_TRANSITION_STARTED() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6051293360723593214)));
    }

    pub fn NETWORK_IS_TRANSITION_BUSY() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5913000372460136119)));
    }

    pub fn _0x292564C735375EDF() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2964886736447430367)));
    }

    pub fn _0xC571D0E77D8BBC29() types.Any {
        return nativeCaller.invoke0(14227382390502439977);
    }

    pub fn _0x2B3A8F7CA3A38FDE() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3114959857764241374)));
    }

    pub fn _0x43F4DBA69710E01E() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4896780203404091422)));
    }

    pub fn _0x37A4494483B9F5C9() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4009410126883190217)));
    }

    pub fn _0x0C978FDA19692C2C(p0: windows.BOOL, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(907352016830409772)), p0, p1);
    }

    pub fn _0xD0A484CB2F829FBE() types.Any {
        return nativeCaller.invoke0(15034287464279875518);
    }

    pub fn _0x30DE938B516F0AD2(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3521414185226275538)), p0);
    }

    pub fn _0xEEEDA5E6D7080987(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(17216599361375963527, p0, p1);
    }

    pub fn _0x973D76AA760A6CB6(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(10897997147803380918, p0);
    }

    pub fn NETWORK_HAS_PLAYER_STARTED_TRANSITION(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(11153671075701888917, p0);
    }

    pub fn _0x2615AA2A695930C1(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2744286647084986561)), p0);
    }

    pub fn NETWORK_JOIN_TRANSITION(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(11314743246248423962, p0);
    }

    pub fn NETWORK_HAS_INVITED_GAMER_TO_TRANSITION(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8251901266330969807)), p0);
    }

    pub fn _0x3F9990BF5F22759C(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4582853247435437468)), p0);
    }

    pub fn NETWORK_IS_ACTIVITY_SESSION() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(362913841291696122)));
    }

    pub fn _0x4A9FDE3A5A6D0437(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5377260822310224951)), p0);
    }

    pub fn _0xC3C7A6AFDB244624(p0: [*c]types.Any, p1: [*c]types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(14107427631987443236, p0, p1, p2, p3);
    }

    pub fn _0xC116FF9B4D488291(p0: [*c]types.Any, p1: [*c]types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(13913589141289337489, p0, p1, p2, p3);
    }

    pub fn _0x1171A97A3D3981B6(p0: [*c]types.Any, p1: [*c]types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(1256972113491362230)), p0, p1, p2, p3);
    }

    pub fn _0x742B58F723233ED9(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(8370882150867877593)), p0);
    }

    pub fn _0xCEFA968912D0F78D() types.Any {
        return nativeCaller.invoke0(14914398631461189517);
    }

    pub fn NETWORK_ACCEPT_PRESENCE_INVITE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(18055305899608738594, p0);
    }

    pub fn _0xF0210268DB0974B1(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(17303113892708840625, p0);
    }

    pub fn NETWORK_GET_PRESENCE_INVITE_ID(p0: types.Any) types.Any {
        return nativeCaller.invoke1(16136562696038302598, p0);
    }

    pub fn NETWORK_GET_PRESENCE_INVITE_INVITER(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(5288013533419881911)), p0);
    }

    pub fn NETWORK_GET_PRESENCE_INVITE_HANDLE(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(4095374044269408117)), p0, p1);
    }

    pub fn _0x26E1CD96B0903D60(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(2801746490292190560)), p0);
    }

    pub fn _0x24409FC4C55CB22D(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(2612263451348480557)), p0);
    }

    pub fn _0xD39B3FFF8FFDD5BF(p0: types.Any) types.Any {
        return nativeCaller.invoke1(15247851330257933759, p0);
    }

    pub fn _0x728C4CC7920CD102(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(8254056637095792898)), p0);
    }

    pub fn _0x3DBF2DF0AEB7D289(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4449325468612022921)), p0);
    }

    pub fn _0x8806CEBFABD3CE05(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(9801748961635323397, p0);
    }

    pub fn _0x76D9B976C4C09FDE() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8564080086179946462)));
    }

    pub fn _0xC88156EBB786F8D5() types.Any {
        return nativeCaller.invoke0(14447924649977641173);
    }

    pub fn _0x439BFDE3CD0610F6() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4871766576770453750)));
    }

    pub fn _0xEBF8284D8CADEB53() void {
        _ = nativeCaller.invoke0(17003384706675108691);
    }

    pub fn NETWORK_REMOVE_TRANSITION_INVITE(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8441069727147030510)), p0);
    }

    pub fn _0x726E0375C7A26368() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8245531772157322088)));
    }

    pub fn _0xF083835B70BA9BFE() void {
        _ = nativeCaller.invoke0(17330840219808340990);
    }

    pub fn NETWORK_INVITE_GAMERS(p0: [*c]types.Any, p1: types.Any, p2: [*c]types.Any, p3: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke4(11349296585652774878, p0, p1, p2, p3);
    }

    pub fn NETWORK_HAS_INVITED_GAMER(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5586378002039008974)), p0);
    }

    pub fn NETWORK_GET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8396994953546445436)), p0);
    }

    pub fn NETWORK_SET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8216525552331502011)), p0);
    }

    pub fn _0x66F010A4B031A331(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7417446885795930929)), p0);
    }

    pub fn _0x44B37CDCAE765AAE(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(4950437702671948462)), p0, p1);
    }

    pub fn _0x0D77A82DC2D0DA59(p0: [*c]types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(970429159217093209)), p0, p1);
    }

    pub fn FILLOUT_PM_PLAYER_LIST(p0: [*c]types.Any, p1: types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(14681027015716784137, p0, p1, p2);
    }

    pub fn FILLOUT_PM_PLAYER_LIST_WITH_NAMES(p0: [*c]types.Any, p1: [*c]types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(8172746593645650182)), p0, p1, p2, p3);
    }

    pub fn USING_NETWORK_WEAPONTYPE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(16315644214271380596, p0);
    }

    pub fn _0x796A87B3B68D1F3D(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8748954432052207421)), p0);
    }

    pub fn _0x2FC5650B0271CB57() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3442268588154669911)));
    }

    pub fn _0x01ABCE5E7CBDA196() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(120416720270500246)));
    }

    pub fn _0x120364DE2845DAF8(p0: [*c]types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(1297992022934018808)), p0, p1);
    }

    pub fn _0xFD8B834A8BA05048() types.Any {
        return nativeCaller.invoke0(18269840669551906888);
    }

    pub fn NETWORK_IS_CHATTING_IN_PLATFORM_PARTY(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(10225867550917061714, p0);
    }

    pub fn NETWORK_IS_IN_PARTY() types.Any {
        return nativeCaller.invoke0(10839086518216048432);
    }

    pub fn NETWORK_IS_PARTY_MEMBER(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(7453125771739869664)), p0);
    }

    pub fn _0x2BF66D2E7414F686() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3167839434185176710)));
    }

    pub fn _0x14922ED3E38761F0() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1482298714948592112)));
    }

    pub fn _0xFA2888E3833C8E96() void {
        _ = nativeCaller.invoke0(18025808019291147926);
    }

    pub fn _0x25D990F8E0E3F13C() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2727370447948869948)));
    }

    pub fn _0x77FADDCBE3499DF7(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8645466302452440567)), p0);
    }

    pub fn _0xF1B84178F8674195(p0: types.Any) void {
        _ = nativeCaller.invoke1(17417743546674790805, p0);
    }

    pub fn _0x599E4FA1F87EB5FF() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6457686472773252607)));
    }

    pub fn _0xE30CF56F1EFA5F43(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(16360721403940069187, p0, p1);
    }

    pub fn NETWORK_PLAYER_IS_CHEATER() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7303591686215209104)));
    }

    pub fn _0x172F75B6EE2233BA() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1670683415317459898)));
    }

    pub fn NETWORK_PLAYER_IS_BADSPORT() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(1862478201098863706)));
    }

    pub fn _0x46FB3ED415C7641C(p0: types.Any, p1: types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(5114750882428707868)), p0, p1, p2);
    }

    pub fn BAD_SPORT_PLAYER_LEFT_DETECTED(p0: [*c]types.Any, p1: types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(17032115665384622721, p0, p1, p2);
    }

    pub fn _0xE66C690248F11150(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(16603761384742785360, p0, p1);
    }

    pub fn NETWORK_SET_THIS_SCRIPT_IS_NETWORK_SCRIPT(p0: types.Any, p1: windows.BOOL, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2064229935073689765)), p0, p1, p2);
    }

    pub fn _0xD1110739EEADB592(p0: types.Any, p1: windows.BOOL, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(15064830173929911698, p0, p1, p2);
    }

    pub fn NETWORK_GET_THIS_SCRIPT_IS_NETWORK_SCRIPT() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(2958977764275344222)));
    }

    pub fn _NETWORK_GET_NUM_PARTICIPANTS_HOST() c_int {
        return nativeCaller.invoke0(12018154381697586670);
    }

    pub fn NETWORK_GET_NUM_PARTICIPANTS() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(1788005393069262420)));
    }

    pub fn NETWORK_GET_SCRIPT_STATUS() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6327936140006128319)));
    }

    pub fn NETWORK_REGISTER_HOST_BROADCAST_VARIABLES(p0: [*c]types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4511251136389182869)), p0, p1);
    }

    pub fn NETWORK_REGISTER_PLAYER_BROADCAST_VARIABLES(p0: [*c]types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3703272359995417109)), p0, p1);
    }

    pub fn _0x64F62AFB081E260D() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7275049505724966413)));
    }

    pub fn _0x5D10B3795F3FC886() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6706057179025098886)));
    }

    pub fn NETWORK_GET_PLAYER_INDEX(PedHandle: types.Ped) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(2664865239777350247)), PedHandle);
    }

    pub fn NETWORK_GET_PARTICIPANT_INDEX(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(1982955386380249400)), p0);
    }

    pub fn _NETWORK_GET_PLAYER_FROM_PED(ped: types.Ped) types.Player {
        return nativeCaller.invoke1(@as(u64, @intCast(7786211388227125880)), ped);
    }

    pub fn NETWORK_GET_NUM_CONNECTED_PLAYERS() c_int {
        return nativeCaller.invoke0(11864625272246502996);
    }

    pub fn NETWORK_IS_PLAYER_CONNECTED(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(10654421488304384465, p0);
    }

    pub fn _0xCF61D4B4702EE9EB() types.Any {
        return nativeCaller.invoke0(14943458910033340907);
    }

    pub fn NETWORK_IS_PARTICIPANT_ACTIVE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8068479385834192197)), p0);
    }

    pub fn NETWORK_IS_PLAYER_ACTIVE(playerID: c_int) windows.BOOL {
        return nativeCaller.invoke1(13321598277342454069, playerID);
    }

    pub fn NETWORK_IS_PLAYER_A_PARTICIPANT(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4370056710535763844)), p0);
    }

    pub fn NETWORK_IS_HOST_OF_THIS_SCRIPT() windows.BOOL {
        return nativeCaller.invoke0(9497416109822188213);
    }

    pub fn NETWORK_GET_HOST_OF_THIS_SCRIPT() types.Any {
        return nativeCaller.invoke0(14390363770108672604);
    }

    pub fn NETWORK_GET_HOST_OF_SCRIPT(scriptName: [*c]u8, p1: c_int, p2: types.Any) c_int {
        return nativeCaller.invoke3(@as(u64, @intCast(2119529604139398908)), scriptName, p1, p2);
    }

    pub fn NETWORK_SET_MISSION_FINISHED() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4268587596667215817)));
    }

    pub fn NETWORK_IS_SCRIPT_ACTIVE(p0: [*c]types.Any, p1: types.Any, p2: windows.BOOL, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(11331302476240543896, p0, p1, p2, p3);
    }

    pub fn _0x3658E8CD94FC121A(p0: [*c]types.Any, p1: types.Any, p2: types.Any) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(3916135845664133658)), p0, p1, p2);
    }

    pub fn _0x638A3A81733086DB() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7172609684198688475)));
    }

    pub fn _0x1AD5B71586B94820(p0: types.Any, p1: [*c]types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(1933652918107981856)), p0, p1, p2);
    }

    pub fn _0x2302C0264EA58D31() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2522790012041661745)));
    }

    pub fn _0x741A3D8380319A81() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8366066892794862209)));
    }

    pub fn PARTICIPANT_ID() c_int {
        return nativeCaller.invoke0(10419199270309464707);
    }

    pub fn PARTICIPANT_ID_TO_INT() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(6315099850143017482)));
    }

    pub fn NETWORK_GET_DESTROYER_OF_NETWORK_ID(p0: types.Any, p1: [*c]types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(8798589940124617252)), p0, p1);
    }

    pub fn _0x4CACA84440FA26F6(p0: types.Any, p1: types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(5524975853978134262)), p0, p1, p2);
    }

    pub fn NETWORK_GET_ENTITY_KILLER_OF_PLAYER(player: types.Player, weaponHash: [*c]types.Hash) types.Entity {
        return nativeCaller.invoke2(@as(u64, @intCast(4806144161903736312)), player, weaponHash);
    }

    pub fn NETWORK_RESURRECT_LOCAL_PLAYER(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) void {
        _ = nativeCaller.invoke6(16871544814804643067, p0, p1, p2, p3, p4, p5);
    }

    pub fn NETWORK_SET_LOCAL_PLAYER_INVINCIBLE_TIME(time: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3284751280334992135)), time);
    }

    pub fn NETWORK_IS_LOCAL_PLAYER_INVINCIBLE() windows.BOOL {
        return nativeCaller.invoke0(9981829127194652672);
    }

    pub fn _0x9DD368BF06983221(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11372548653699314209, p0, p1);
    }

    pub fn _0x524FF0AEFF9C3973(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5931223868673636723)), p0);
    }

    pub fn _0xB07D3185E11657A5(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(12717375373840897957, p0);
    }

    pub fn NETWORK_GET_NETWORK_ID_FROM_ENTITY(entity: types.Entity) c_int {
        return nativeCaller.invoke1(11607747012039726172, entity);
    }

    pub fn NETWORK_GET_ENTITY_FROM_NETWORK_ID(NetworkID: c_int) types.Entity {
        return nativeCaller.invoke1(14865922340470912352, NetworkID);
    }

    pub fn _0xC7827959479DCC78(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(14376186384880618616, p0);
    }

    pub fn NETWORK_GET_ENTITY_IS_LOCAL(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(689425255090243426)), p0);
    }

    pub fn _0x06FAACD625D80CAA(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(502904344163126442)), p0);
    }

    pub fn _0x7368E683BB9038D6(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8316150165401516246)), p0);
    }

    pub fn NETWORK_DOES_NETWORK_ID_EXIST(netID: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4093234165679461188)), netID);
    }

    pub fn NETWORK_DOES_ENTITY_EXIST_WITH_NETWORK_ID(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1775681623300832616)), entity);
    }

    pub fn NETWORK_REQUEST_CONTROL_OF_NETWORK_ID(netID: c_int) windows.BOOL {
        return nativeCaller.invoke1(11993283059155729360, netID);
    }

    pub fn NETWORK_HAS_CONTROL_OF_NETWORK_ID(netID: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5563642154429010310)), netID);
    }

    pub fn NETWORK_REQUEST_CONTROL_OF_ENTITY(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(13155885047170474823, entity);
    }

    pub fn NETWORK_REQUEST_CONTROL_OF_DOOR(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(9731680478500984548, p0);
    }

    pub fn NETWORK_HAS_CONTROL_OF_ENTITY(entity: types.Entity) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(125925576390379655)), entity);
    }

    pub fn NETWORK_HAS_CONTROL_OF_PICKUP(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6613898200329449382)), p0);
    }

    pub fn NETWORK_HAS_CONTROL_OF_DOOR(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(14644695183499826655, p0);
    }

    pub fn _0xC01E93FAC20C3346(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(13843665009790169926, p0);
    }

    pub fn VEH_TO_NET(vehicle: types.Vehicle) c_int {
        return nativeCaller.invoke1(13027019417800884636, vehicle);
    }

    pub fn PED_TO_NET(ped: types.Ped) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(1071509001333212809)), ped);
    }

    pub fn OBJ_TO_NET(object: types.Object) c_int {
        return nativeCaller.invoke1(11078816139353253185, object);
    }

    pub fn NET_TO_VEH(netHandle: c_int) types.Vehicle {
        return nativeCaller.invoke1(@as(u64, @intCast(3925893566760105484)), netHandle);
    }

    pub fn NET_TO_PED(netHandle: c_int) types.Ped {
        return nativeCaller.invoke1(13676752553518992190, netHandle);
    }

    pub fn NET_TO_OBJ(netHandle: c_int) types.Object {
        return nativeCaller.invoke1(15587344650859760447, netHandle);
    }

    pub fn NET_TO_ENT(netHandle: c_int) types.Entity {
        return nativeCaller.invoke1(13834683421016262986, netHandle);
    }

    pub fn NETWORK_GET_LOCAL_HANDLE(p0: [*c]types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(16744472992203328910, p0, p1);
    }

    pub fn NETWORK_HANDLE_FROM_USER_ID(p0: [*c]types.Any, p1: [*c]types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(15912657676102462556, p0, p1, p2);
    }

    pub fn NETWORK_HANDLE_FROM_MEMBER_ID(p0: [*c]types.Any, p1: [*c]types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(11600465318696082508, p0, p1, p2);
    }

    pub fn NETWORK_HANDLE_FROM_PLAYER(player: types.Player, handle: [*c]c_int, p2: c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4075391217980126899)), player, handle, p2);
    }

    pub fn _0xBC1D768F2F5D6C05(p0: types.Any) types.Any {
        return nativeCaller.invoke1(13555120810802113541, p0);
    }

    pub fn _0x58575AC3CF2CA8EC(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(6365656395352418540)), p0);
    }

    pub fn NETWORK_HANDLE_FROM_FRIEND(p0: types.Any, p1: [*c]types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(15302308046443739090, p0, p1, p2);
    }

    pub fn NETWORK_GAMERTAG_FROM_HANDLE_START(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(11460546800196516438, p0);
    }

    pub fn NETWORK_GAMERTAG_FROM_HANDLE_PENDING() types.Any {
        return nativeCaller.invoke0(12714192233854618864);
    }

    pub fn NETWORK_GAMERTAG_FROM_HANDLE_SUCCEEDED() types.Any {
        return nativeCaller.invoke0(18230704941221356509);
    }

    pub fn NETWORK_GET_GAMERTAG_FROM_HANDLE(handle: [*c]c_int) [*c]u8 {
        return nativeCaller.invoke1(@as(u64, @intCast(4783175842773490907)), handle);
    }

    pub fn _0xD66C9E72B3CC4982(p0: [*c]types.Any, p1: types.Any) c_int {
        return nativeCaller.invoke2(15450898637081299330, p0, p1);
    }

    pub fn _0x58CC181719256197(p0: types.Any, p1: types.Any, p2: types.Any) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(6398515658071826839)), p0, p1, p2);
    }

    pub fn NETWORK_ARE_HANDLES_THE_SAME(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(6330829940368405015)), p0, p1);
    }

    pub fn NETWORK_IS_HANDLE_VALID(p0: [*c]c_int, p1: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(8032655073623294259)), p0, p1);
    }

    pub fn NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(14870719517945799837, p0);
    }

    pub fn NETWORK_MEMBER_ID_FROM_GAMER_HANDLE(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(14422267715408477039, p0);
    }

    pub fn NETWORK_IS_GAMER_IN_MY_SESSION(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1085561427425302249)), p0);
    }

    pub fn NETWORK_SHOW_PROFILE_UI(playerHandle: [*c]types.Player) void {
        _ = nativeCaller.invoke1(9628363738797309096, playerHandle);
    }

    pub fn NETWORK_PLAYER_GET_NAME(player: types.Player) [*c]u8 {
        return nativeCaller.invoke1(@as(u64, @intCast(8581840958160123858)), player);
    }

    pub fn _NETWORK_PLAYER_GET_USER_ID(player: types.Player, userID: [*c]types.Any) [*c]u8 {
        return nativeCaller.invoke2(@as(u64, @intCast(5271459214043670944)), player, userID);
    }

    pub fn NETWORK_PLAYER_IS_ROCKSTAR_DEV(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6073875792457145197)), player);
    }

    pub fn _0x565E430DB3B05BEC(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6223485461200919532)), p0);
    }

    pub fn NETWORK_IS_INACTIVE_PROFILE(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(9104154555220834862)), p0);
    }

    pub fn NETWORK_GET_MAX_FRIENDS() c_int {
        return nativeCaller.invoke0(12676420008678950866);
    }

    pub fn NETWORK_GET_FRIEND_COUNT() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(2323607807883683748)));
    }

    pub fn NETWORK_GET_FRIEND_NAME(player: types.Player) [*c]u8 {
        return nativeCaller.invoke1(16221609283824123531, player);
    }

    pub fn _NETWORK_GET_FRIEND_NAME(friendIndex: c_int) [*c]u8 {
        return nativeCaller.invoke1(@as(u64, @intCast(4712157362949120659)), friendIndex);
    }

    pub fn NETWORK_IS_FRIEND_ONLINE(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4781209078556243533)), p0);
    }

    pub fn _0x87EB7A3FFCB314DB(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(9794056229888398555, p0);
    }

    pub fn NETWORK_IS_FRIEND_IN_SAME_TITLE(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3362398636993353656)), p0);
    }

    pub fn NETWORK_IS_FRIEND_IN_MULTIPLAYER(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6269111941638076968)), p0);
    }

    pub fn NETWORK_IS_FRIEND(player: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1883808089400088148)), player);
    }

    pub fn NETWORK_IS_PENDING_FRIEND(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(857722039766249011)), p0);
    }

    pub fn NETWORK_IS_ADDING_FRIEND() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7971654329120476545)));
    }

    pub fn NETWORK_ADD_FRIEND(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(10232977943488250403, p0, p1);
    }

    pub fn _0xBAD8F2A42B844821(friendIndex: c_int) windows.BOOL {
        return nativeCaller.invoke1(13463777872942745633, friendIndex);
    }

    pub fn _0x1B857666604B1A74(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1983121393000847988)), p0);
    }

    pub fn _0x82377B65E943F72D(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(9383104026285176621, p0);
    }

    pub fn NETWORK_CAN_SET_WAYPOINT() windows.BOOL {
        return nativeCaller.invoke0(14494813559058640736);
    }

    pub fn _0xB309EBEA797E001F(p0: types.Any) types.Any {
        return nativeCaller.invoke1(12901101999872671775, p0);
    }

    pub fn _0x26F07DD83A5F7F98() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2805880935497564056)));
    }

    pub fn NETWORK_HAS_HEADSET() windows.BOOL {
        return nativeCaller.invoke0(16749161831829139962);
    }

    pub fn _0x7D395EA61622E116(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(9023347395842466070)), p0);
    }

    pub fn _0xC0D2AF00BCC234CA() types.Any {
        return nativeCaller.invoke0(13894360218093106378);
    }

    pub fn NETWORK_GAMER_HAS_HEADSET(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(17509245258117663829, p0);
    }

    pub fn NETWORK_IS_GAMER_TALKING(p0: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8197460765577107594)), p0);
    }

    pub fn NETWORK_CAN_COMMUNICATE_WITH_GAMER(p0: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke1(11623971990645271327, p0);
    }

    pub fn NETWORK_IS_GAMER_MUTED_BY_ME(p0: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke1(14871130065913805176, p0);
    }

    pub fn NETWORK_AM_I_MUTED_BY_GAMER(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(16069585405642483418, p0);
    }

    pub fn NETWORK_IS_GAMER_BLOCKED_BY_ME(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(16808776268737370243, p0);
    }

    pub fn NETWORK_AM_I_BLOCKED_BY_GAMER(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1527701571273107378)), p0);
    }

    pub fn _0xB57A49545BA53CE7(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(13076845094687292647, p0);
    }

    pub fn _0xCCA4318E1AB03F1F(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(14745965566320721695, p0);
    }

    pub fn _0x07DD29D5E22763F1(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(566655126717555697)), p0);
    }

    pub fn _0x135F9B7B7ADD2185(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1396005364152738181)), p0);
    }

    pub fn NETWORK_IS_PLAYER_TALKING(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(224636770351277182)), player);
    }

    pub fn NETWORK_PLAYER_HAS_HEADSET(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4591871217020014550)), player);
    }

    pub fn NETWORK_IS_PLAYER_MUTED_BY_ME(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(10119914414716935737, player);
    }

    pub fn NETWORK_AM_I_MUTED_BY_PLAYER(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(11342739934660953604, player);
    }

    pub fn NETWORK_IS_PLAYER_BLOCKED_BY_ME(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6318303497628956449)), player);
    }

    pub fn NETWORK_AM_I_BLOCKED_BY_PLAYER(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(9796338375174927677, player);
    }

    pub fn NETWORK_GET_PLAYER_LOUDNESS(p0: types.Any) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(2423332742172411519)), p0);
    }

    pub fn NETWORK_SET_TALKER_PROXIMITY(p0: f32) void {
        _ = nativeCaller.invoke1(14695576975085065862, p0);
    }

    pub fn NETWORK_GET_TALKER_PROXIMITY() types.Any {
        return nativeCaller.invoke0(9579421600721461400);
    }

    pub fn NETWORK_SET_VOICE_ACTIVE(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(13456414728902526331, toggle);
    }

    pub fn _0xCFEB46DCD7D8D5EB(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14982146499706148331, p0);
    }

    pub fn _0xAF66059A131AA269(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(12638795563565490793, p0);
    }

    pub fn NETWORK_SET_TEAM_ONLY_CHAT(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(15399082811850695875, toggle);
    }

    pub fn _0x6F697A66CE78674E(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8028082392733869902)), p0, p1);
    }

    pub fn NETWORK_SET_OVERRIDE_SPECTATOR_MODE(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8131878017179660816)), toggle);
    }

    pub fn _0x3C5C1E2C2FF814B1(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4349384515265238193)), p0);
    }

    pub fn _0x9D7AFCBF21C51712(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(11347660108948903698, p0);
    }

    pub fn _0xF46A1E03E8755980(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17611922294919485824, p0);
    }

    pub fn _0x6A5D89D7769A40D8(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7664433699355246808)), p0);
    }

    pub fn _0x3039AE5AD2C9C0C4(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3475000292599775428)), p0, p1);
    }

    pub fn _0x97DD4C5944CC2E6A(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(10942986615870205546, p0, p1);
    }

    pub fn _0x57B192B4D4AD23D5(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6318993057537401813)), p0);
    }

    pub fn _0xDDF73E2B1FEC5AB4(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(15994320956569705140, p0, p1);
    }

    pub fn _0x0FF2862B61A58AF9(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1149128375812852473)), p0);
    }

    pub fn NETWORK_SET_VOICE_CHANNEL(p0: types.Any) void {
        _ = nativeCaller.invoke1(17249370151240800803, p0);
    }

    pub fn _0xE036A705F989E049() void {
        _ = nativeCaller.invoke0(16156284357341470793);
    }

    pub fn IS_NETWORK_VEHICLE_BEEN_DAMAGED_BY_ANY_OBJECT(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(15839728776442845463, p0, p1, p2);
    }

    pub fn _0xF03755696450470C() void {
        _ = nativeCaller.invoke0(17309397603964700428);
    }

    pub fn _0x5E3AA4CA2B6FB0EE(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6789920576433533166)), p0);
    }

    pub fn _0xCA575C391FEA25CC(p0: types.Any) void {
        _ = nativeCaller.invoke1(14580223719053600204, p0);
    }

    pub fn _0xADB57E5B663CCA8B(p0: types.Player, p1: [*c]f32, p2: [*c]f32) void {
        _ = nativeCaller.invoke3(12517049670368545419, p0, p1, p2);
    }

    pub fn _NETWORK_IS_TEXT_CHAT_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(6903821898987114534)));
    }

    pub fn SHUTDOWN_AND_LAUNCH_SINGLE_PLAYER_GAME() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6428977259712263826)));
    }

    pub fn NETWORK_SET_FRIENDLY_FIRE_OPTION(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(17872613597342980131, toggle);
    }

    pub fn NETWORK_SET_RICH_PRESENCE(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(2147281187475198818)), p0, p1, p2, p3);
    }

    pub fn _0x3E200C2BCF4164EB(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4476591411906569451)), p0, p1);
    }

    pub fn _0x5ED0356A0CE3A34F() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6832019364320093007)));
    }

    pub fn _0x9769F811D1785B03(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: windows.BOOL, p5: windows.BOOL) void {
        _ = nativeCaller.invoke6(10910524327694195459, p0, p1, p2, p3, p4, p5);
    }

    pub fn _0xBF22E0F32968E967(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(13772817945428814183, p0, p1);
    }

    pub fn _0x715135F4B82AC90D(entity: types.Entity) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8165366924577523981)), entity);
    }

    pub fn _NETWORK_PLAYER_IS_IN_CLAN() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(6313148171058759830)));
    }

    pub fn NETWORK_CLAN_PLAYER_IS_ACTIVE(netHandle: [*c]types.ScrHandle) windows.BOOL {
        return nativeCaller.invoke1(12764526802401857304, netHandle);
    }

    pub fn NETWORK_CLAN_PLAYER_GET_DESC(description: [*c]types.ScrHandle, p1: c_int, netHandle: [*c]types.ScrHandle) windows.BOOL {
        return nativeCaller.invoke3(17214704787170742202, description, p1, netHandle);
    }

    pub fn _0x7543BB439F63792B(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(8449803224988481835)), p0, p1);
    }

    pub fn _0xF45352426FF3A4F0(p0: [*c]types.Any, p1: types.Any, p2: [*c]types.Any) void {
        _ = nativeCaller.invoke3(17605505813620958448, p0, p1, p2);
    }

    pub fn _0x1F471B79ACC90BEF() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2253800347926072303)));
    }

    pub fn NETWORK_CLAN_GET_MEMBERSHIP_DESC(p0: [*c]types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5250766909322331576)), p0, p1);
    }

    pub fn NETWORK_CLAN_DOWNLOAD_MEMBERSHIP(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(12216300199152257726, p0);
    }

    pub fn NETWORK_CLAN_DOWNLOAD_MEMBERSHIP_PENDING(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6601716568125337024)), p0);
    }

    pub fn _0xB3F64A6A91432477() types.Any {
        return nativeCaller.invoke0(12967633998624007287);
    }

    pub fn NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(13505855403104691890, p0);
    }

    pub fn NETWORK_CLAN_GET_MEMBERSHIP_COUNT(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(12299646607298380481, p0);
    }

    pub fn NETWORK_CLAN_GET_MEMBERSHIP_VALID(p0: [*c]types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5234762733223927566)), p0, p1);
    }

    pub fn NETWORK_CLAN_GET_MEMBERSHIP(p0: [*c]types.Any, p1: [*c]types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(14464471364728992785, p0, p1, p2);
    }

    pub fn NETWORK_CLAN_JOIN(clanHandle: types.Any) types.Any {
        return nativeCaller.invoke1(11505189570185656447, clanHandle);
    }

    pub fn _0x729E3401F0430686(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(8259095949574604422)), p0, p1);
    }

    pub fn _0x2B51EDBEFC301339(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(3121537421275042617)), p0, p1);
    }

    pub fn _0xC32EA7A2F6CA7557() types.Any {
        return nativeCaller.invoke0(14064363004691641687);
    }

    pub fn _0x5835D9CD92E83184(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(6356225926059536772)), p0, p1);
    }

    pub fn _0x13518FF1C6B28938(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1392052028417673528)), p0);
    }

    pub fn _0xA134777FF7F33331(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(11616040730399814449, p0, p1);
    }

    pub fn _0x113E6E3E50E286B0(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1242551761124886192)), p0);
    }

    pub fn _0x9AA46BADAD0E27ED() types.Any {
        return nativeCaller.invoke0(11143149771698350061);
    }

    pub fn _0x042E4B70B93E6054() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(301261172596695124)));
    }

    pub fn NETWORK_GET_PRIMARY_CLAN_DATA_START(p0: [*c]types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(14881819621038891271, p0, p1);
    }

    pub fn _0xB5074DB804E28CE7() types.Any {
        return nativeCaller.invoke0(13044480298453208295);
    }

    pub fn _0x5B4F04F19376A0BA() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6579483016219238586)));
    }

    pub fn NETWORK_GET_PRIMARY_CLAN_DATA_NEW(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(13871367663892971994, p0, p1);
    }

    pub fn SET_NETWORK_ID_CAN_MIGRATE(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2999092937823393276)), p0, p1);
    }

    pub fn SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(NetID: c_int, DoesExist: windows.BOOL) void {
        _ = nativeCaller.invoke2(16167502273159259080, NetID, DoesExist);
    }

    pub fn _0xA8A024587329F36A(netID: c_int, player: types.Player, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(12150751756953449322, netID, player, p2);
    }

    pub fn NETWORK_SET_ENTITY_CAN_BLEND(p0: types.Any, toggle: windows.BOOL) void {
        _ = nativeCaller.invoke2(15578046208237758579, p0, toggle);
    }

    pub fn _0xF1CA12B18AEF5298(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(17422758662185636504, p0, p1);
    }

    pub fn SET_NETWORK_ID_VISIBLE_IN_CUTSCENE(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(12002801652188848820, p0, p1, p2);
    }

    pub fn _0xAAA553E7DD28A457(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(12296326612917986391, p0);
    }

    pub fn _0x3FA36981311FA4FF(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4585624849189151999)), p0, p1);
    }

    pub fn _0xA1607996431332DF(netId: c_int) windows.BOOL {
        return nativeCaller.invoke1(11628427924148007647, netId);
    }

    pub fn SET_LOCAL_PLAYER_VISIBLE_IN_CUTSCENE(p0: windows.BOOL, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(15061828707536501614, p0, p1);
    }

    pub fn SET_LOCAL_PLAYER_INVISIBLE_LOCALLY(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(16570840629414318440, p0);
    }

    pub fn SET_LOCAL_PLAYER_VISIBLE_LOCALLY(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8509892673133592340)), p0);
    }

    pub fn SET_PLAYER_INVISIBLE_LOCALLY(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(1347558514964148408)), p0, p1);
    }

    pub fn SET_PLAYER_VISIBLE_LOCALLY(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(18059732609498422002, p0, p1);
    }

    pub fn FADE_OUT_LOCAL_PLAYER(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4714632522647834066)), p0);
    }

    pub fn NETWORK_FADE_OUT_ENTITY(entity: types.Entity, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(16021073340841986541, entity, p1, p2);
    }

    pub fn NETWORK_FADE_IN_ENTITY(entity: types.Entity, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2255972746681902637)), entity, p1);
    }

    pub fn _0x631DC5DFF4B110E3(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7142082149753098467)), p0);
    }

    pub fn _0x422F32CC7E56ABAD(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4769086384282971053)), p0);
    }

    pub fn IS_PLAYER_IN_CUTSCENE(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(16658976598673641766, player);
    }

    pub fn SET_ENTITY_VISIBLE_IN_CUTSCENE(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(16141777635363957634, p0, p1, p2);
    }

    pub fn SET_ENTITY_LOCALLY_INVISIBLE(entity: types.Entity) void {
        _ = nativeCaller.invoke1(16228063746044265944, entity);
    }

    pub fn SET_ENTITY_LOCALLY_VISIBLE(entity: types.Entity) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2602562282395639516)), entity);
    }

    pub fn IS_DAMAGE_TRACKER_ACTIVE_ON_NETWORK_ID(netID: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7933423018074923878)), netID);
    }

    pub fn ACTIVATE_DAMAGE_TRACKER_ON_NETWORK_ID(netID: c_int, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(15301859329558380313, netID, p1);
    }

    pub fn IS_SPHERE_VISIBLE_TO_ANOTHER_MACHINE(p0: f32, p1: f32, p2: f32, p3: f32) windows.BOOL {
        return nativeCaller.invoke4(15577098879177796056, p0, p1, p2, p3);
    }

    pub fn IS_SPHERE_VISIBLE_TO_PLAYER(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32) windows.BOOL {
        return nativeCaller.invoke5(15869050122087553634, p0, p1, p2, p3, p4);
    }

    pub fn RESERVE_NETWORK_MISSION_OBJECTS(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5646550472978529272)), p0);
    }

    pub fn RESERVE_NETWORK_MISSION_PEDS(p0: types.Any) void {
        _ = nativeCaller.invoke1(13118963330556613487, p0);
    }

    pub fn RESERVE_NETWORK_MISSION_VEHICLES(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8552386415624168553)), p0);
    }

    pub fn CAN_REGISTER_MISSION_OBJECTS(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(9227264798088691851, p0);
    }

    pub fn CAN_REGISTER_MISSION_PEDS(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(13600677290276411265, p0);
    }

    pub fn CAN_REGISTER_MISSION_VEHICLES(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8248327268003606132)), p0);
    }

    pub fn CAN_REGISTER_MISSION_ENTITIES(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(7599699531063287405)), p0, p1, p2, p3);
    }

    pub fn GET_NUM_RESERVED_MISSION_OBJECTS(p0: windows.BOOL) c_int {
        return nativeCaller.invoke1(12286301305332579010, p0);
    }

    pub fn GET_NUM_RESERVED_MISSION_PEDS(p0: windows.BOOL) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(2239368384589430295)), p0);
    }

    pub fn GET_NUM_RESERVED_MISSION_VEHICLES(p0: windows.BOOL) c_int {
        return nativeCaller.invoke1(14932412823601750065, p0);
    }

    pub fn _0x12B6281B6C6706C0(p0: windows.BOOL) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(1348309236691961536)), p0);
    }

    pub fn _0xCB215C4B56A7FAE7(p0: windows.BOOL) types.Any {
        return nativeCaller.invoke1(14637081742576974567, p0);
    }

    pub fn _0x0CD9AB83489430EA(p0: windows.BOOL) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(925959778748084458)), p0);
    }

    pub fn _0xC7BE335216B5EC7C() types.Any {
        return nativeCaller.invoke0(14392997886784040060);
    }

    pub fn _0x0C1F7D49C39D2289() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(873554608501105289)));
    }

    pub fn _0x0AFCE529F69B21FF() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(791759602904146431)));
    }

    pub fn _0xA72835064DD63E4C() types.Any {
        return nativeCaller.invoke0(12044935504594353740);
    }

    pub fn GET_NETWORK_TIME() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(8814819898341092168)));
    }

    pub fn _0x89023FBBF9200E9F() types.Any {
        return nativeCaller.invoke0(9872523409720610463);
    }

    pub fn _0x46718ACEEDEAFC84() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5075990876382755972)));
    }

    pub fn GET_TIME_OFFSET(a: c_int, b: c_int) c_int {
        return nativeCaller.invoke2(@as(u64, @intCast(103592467367232771)), a, b);
    }

    pub fn _SUBTRACT_B_FROM_A_AND_CHECK_IF_NEGATIVE(a: c_int, b: c_int) windows.BOOL {
        return nativeCaller.invoke2(14640345957071505616, a, b);
    }

    pub fn _SUBTRACT_A_FROM_B_AND_CHECK_IF_NEGATIVE(a: c_int, b: c_int) windows.BOOL {
        return nativeCaller.invoke2(16011721119759610988, a, b);
    }

    pub fn _ARE_INTEGERS_EQUAL(a: c_int, b: c_int) c_int {
        return nativeCaller.invoke2(17707192235454813458, a, b);
    }

    pub fn GET_TIME_DIFFERENCE(a: c_int, b: c_int) c_int {
        return nativeCaller.invoke2(11729339369839329264, a, b);
    }

    pub fn _FORMAT_TIME(time: c_int) [*c]u8 {
        return nativeCaller.invoke1(11395146608893132205, time);
    }

    pub fn _GET_POSIX_TIME() c_int {
        return nativeCaller.invoke0(11129278735060327542);
    }

    pub fn _GET_DATE_AND_TIME_FROM_UNIX_EPOCH(unixEpoch: c_int, timeStructure: [*c]types.Any) void {
        _ = nativeCaller.invoke2(12436601963283015125, unixEpoch, timeStructure);
    }

    pub fn NETWORK_SET_IN_SPECTATOR_MODE(p0: windows.BOOL, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4773221341722904724)), p0, p1);
    }

    pub fn _0x419594E137637120(p0: windows.BOOL, p1: types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(4725847079013019936)), p0, p1, p2);
    }

    pub fn _0xFC18DB55AE19E046(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(18165510258038530118, p0);
    }

    pub fn _0x5C707A667DF8B9FA(p0: windows.BOOL, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6660958429499668986)), p0, p1);
    }

    pub fn NETWORK_IS_IN_SPECTATOR_MODE() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(326307441068617233)));
    }

    pub fn NETWORK_SET_IN_MP_CUTSCENE(p0: windows.BOOL, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(11287672567829757636, p0, p1);
    }

    pub fn NETWORK_IS_IN_MP_CUTSCENE() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(7836963326637900320)));
    }

    pub fn NETWORK_IS_PLAYER_IN_MP_CUTSCENE(player: types.Player) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7204050901172361714)), player);
    }

    pub fn SET_NETWORK_VEHICLE_RESPOT_TIMER(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(17028516163055531752, p0, p1);
    }

    pub fn _0x6274C4712850841E(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7094511303302087710)), p0, p1);
    }

    pub fn USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6917136782320038191)), toggle);
    }

    pub fn _0x21D04D7BC538C146(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2436532592392585542)), p0);
    }

    pub fn _0x77758139EC9B66C7(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(8607928348571297479)), p0);
    }

    pub fn NETWORK_CREATE_SYNCHRONISED_SCENE(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any, p9: types.Any) types.Any {
        return nativeCaller.invoke10(@as(u64, @intCast(8995584341056541990)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: [*c]types.Any, p4: f32, p5: f32, p6: types.Any, p7: types.Any, p8: f32, p9: types.Any) void {
        _ = nativeCaller.invoke10(@as(u64, @intCast(8370612209197051097)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    pub fn NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: [*c]types.Any, p4: f32, p5: f32, p6: types.Any) void {
        _ = nativeCaller.invoke7(17456037268178884090, p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn _0xCF8BD3B0BD6D42D7(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any) void {
        _ = nativeCaller.invoke3(14955279743659623127, p0, p1, p2);
    }

    pub fn NETWORK_ATTACH_SYNCHRONISED_SCENE_TO_ENTITY(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5156001254057144410)), p0, p1, p2);
    }

    pub fn NETWORK_START_SYNCHRONISED_SCENE(p0: types.Any) void {
        _ = nativeCaller.invoke1(11104539458923169431, p0);
    }

    pub fn NETWORK_STOP_SYNCHRONISED_SCENE(p0: types.Any) void {
        _ = nativeCaller.invoke1(14002896419073346351, p0);
    }

    pub fn _0x02C40BF885C567B6(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(199297445535246262)), p0);
    }

    pub fn _0xC9B43A33D09CADA7(p0: types.Any) void {
        _ = nativeCaller.invoke1(14534305891649105319, p0);
    }

    pub fn _0xFB1F9381E80FA13F(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(18095344013951344959, p0, p1);
    }

    pub fn _0x5A6FFA2433E2F14C(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: types.Any) windows.BOOL {
        return nativeCaller.invoke9(@as(u64, @intCast(6516702219224674636)), p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn _0x4BA92A18502BCA61(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32, p7: f32, p8: f32, p9: f32, p10: f32, p11: types.Any) windows.BOOL {
        return nativeCaller.invoke12(@as(u64, @intCast(5451935107821324897)), p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
    }

    pub fn _0x3C891A251567DFCE(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(4362046460660277198)), p0);
    }

    pub fn _0xFB8F2A6F3DF08CBE() void {
        _ = nativeCaller.invoke0(18126753682458447038);
    }

    pub fn NETWORK_GET_RESPAWN_RESULT(p0: types.Any, p1: [*c]c_int, p2: [*c]c_int) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3971792475680808177)), p0, p1, p2);
    }

    pub fn _0x6C34F1208B8923FD(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(7797121976967439357)), p0);
    }

    pub fn _0x17E0198B3882C2CB() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1720403143394771659)));
    }

    pub fn _0xFB680D403909DC70(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(18115744070583835760, p0, p1);
    }

    pub fn NETWORK_END_TUTORIAL_SESSION() void {
        _ = nativeCaller.invoke0(15037431150385394423);
    }

    pub fn NETWORK_IS_IN_TUTORIAL_SESSION() types.Any {
        return nativeCaller.invoke0(12511636424984419023);
    }

    pub fn _0xB37E4E6A2388CA7B() types.Any {
        return nativeCaller.invoke0(12933861397624310395);
    }

    pub fn _0x35F0B98A8387274D() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3886810482984036173)));
    }

    pub fn _0x3B39236746714134(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(4267481048380686644)), p0);
    }

    pub fn _0x9DE986FC9A87C474(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(11378774353010738292, p0, p1);
    }

    pub fn _0xBBDF066252829606(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(13537546024259851782, p0, p1);
    }

    pub fn _0x919B3C98ED8292F9(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(10492046384407155449, p0);
    }

    pub fn NETWORK_OVERRIDE_CLOCK_TIME(Hours: c_int, Minutes: c_int, Seconds: c_int) void {
        _ = nativeCaller.invoke3(16607555653966641298, Hours, Minutes, Seconds);
    }

    pub fn _0xD972DF67326F966E() void {
        _ = nativeCaller.invoke0(15668831687896176238);
    }

    pub fn _0xD7C95D322FF57522() types.Any {
        return nativeCaller.invoke0(15549061658607711522);
    }

    pub fn NETWORK_ADD_ENTITY_AREA(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32) types.Any {
        return nativeCaller.invoke6(@as(u64, @intCast(5281754460235301481)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x376C6375BA60293A(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32, p6: f32) types.Any {
        return nativeCaller.invoke7(@as(u64, @intCast(3993676326859974970)), p0, p1, p2, p3, p4, p5, p6);
    }

    pub fn _0x25B99872D588A101(p0: f32, p1: f32, p2: f32, p3: f32, p4: f32, p5: f32) types.Any {
        return nativeCaller.invoke6(@as(u64, @intCast(2718371469070999809)), p0, p1, p2, p3, p4, p5);
    }

    pub fn NETWORK_REMOVE_ENTITY_AREA(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(10650879646885496948, p0);
    }

    pub fn _0xE64A3CA08DFA37A9(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(16594142437274433449, p0);
    }

    pub fn _0x4DF7CFFF471A7FB1(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5618187755484512177)), p0);
    }

    pub fn _0x4A2D4E8BF4265B0F(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5345014695762221839)), p0);
    }

    pub fn _0x2B1813ABA29016C5(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(3105253570959644357)), p0, p1);
    }

    pub fn _DOWNLOAD_BG_SCRIPT_RPF() windows.BOOL {
        return nativeCaller.invoke0(10539591633987627285);
    }

    pub fn _HAS_BG_SCRIPT_BEEN_DOWNLOADED() windows.BOOL {
        return nativeCaller.invoke0(9309715497612948115);
    }

    pub fn _DOWNLOAD_TUNABLES() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4826516654086319724)));
    }

    pub fn _HAS_TUNABLES_BEEN_DOWNLOADED() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(317434636979109160)));
    }

    pub fn _0x10BD227A753B0D84() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1206158184553319812)));
    }

    pub fn NETWORK_DOES_TUNABLE_EXIST(tunableContext: [*c]u8, tunableName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(9648391253260808714, tunableContext, tunableName);
    }

    pub fn NETWORK_ACCESS_TUNABLE_INT(tunableContext: [*c]u8, tunableName: [*c]u8, value: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke3(10079359903666619496, tunableContext, tunableName, value);
    }

    pub fn NETWORK_ACCESS_TUNABLE_FLOAT(tunableContext: [*c]u8, tunableName: [*c]u8, value: [*c]f32) windows.BOOL {
        return nativeCaller.invoke3(16528365284492720735, tunableContext, tunableName, value);
    }

    pub fn NETWORK_ACCESS_TUNABLE_BOOL(tunableContext: [*c]u8, tunableName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(12279706109914888026, tunableContext, tunableName);
    }

    pub fn _NETWORK_DOES_TUNABLE_EXIST_HASH(TunbaleContext: types.Hash, TunableName: types.Hash) windows.BOOL {
        return nativeCaller.invoke2(16493657466368168231, TunbaleContext, TunableName);
    }

    pub fn _NETWORK_ACCESS_TUNABLE_INT_HASH(TunableContext: types.Hash, TunableNameHash: types.Hash, OutputVal: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(4682864270808505320)), TunableContext, TunableNameHash, OutputVal);
    }

    pub fn _NETWORK_ACCESS_TUNABLE_FLOAT_HASH(TunableContext: types.Hash, TunableName: types.Hash, OutputVal: [*c]f32) windows.BOOL {
        return nativeCaller.invoke3(10893013445016601813, TunableContext, TunableName, OutputVal);
    }

    pub fn _NETWORK_ACCESS_TUNABLE_BOOL_HASH(TunableContext: types.Hash, TunableName: types.Hash) windows.BOOL {
        return nativeCaller.invoke2(16867870242269239877, TunableContext, TunableName);
    }

    pub fn _NETWORK_ACCESS_TUNABLE_BOOL_HASH_FAIL_VAL(TunableContext: types.Hash, TunableName: types.Hash, ReturnVal: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(14358039221613945478, TunableContext, TunableName, ReturnVal);
    }

    pub fn _0x187382F8A3E0A6C3(p0: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1761895883644905155)), p0);
    }

    pub fn _0x7DB53B37A2F211A0() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(9058211335668634016)));
    }

    pub fn NETWORK_RESET_BODY_TRACKER() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8233484577556323684)));
    }

    pub fn _0xD38C4A6D047C019D() types.Any {
        return nativeCaller.invoke0(15243640670829412765);
    }

    pub fn _0x2E0BF682CC778D49(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3318016592125070665)), p0);
    }

    pub fn _0x0EDE326D47CD0F3E(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(1071349206298201918)), p0, p1);
    }

    pub fn NETWORK_EXPLODE_VEHICLE(vehicle: types.Vehicle, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL) types.Any {
        return nativeCaller.invoke4(@as(u64, @intCast(3466155522193544967)), vehicle, p1, p2, p3);
    }

    pub fn _0xCD71A4ECAB22709E(p0: types.Any) void {
        _ = nativeCaller.invoke1(14803794786533929118, p0);
    }

    pub fn _0xA7E30DE9272B6D49(p0: types.Any, p1: f32, p2: f32, p3: f32, p4: f32) void {
        _ = nativeCaller.invoke5(12097528319082982729, p0, p1, p2, p3, p4);
    }

    pub fn _0x407091CF6037118E(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4643371535677460878)), p0);
    }

    pub fn NETWORK_SET_PROPERTY_ID(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1690422282951576412)), p0);
    }

    pub fn _0xC2B82527CA77053E() void {
        _ = nativeCaller.invoke0(14031005491903530302);
    }

    pub fn _0x367EF5E2F439B4C6(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(3926846280222487750)), p0);
    }

    pub fn _0x94538037EE44F5CF(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(10688027318389372367, p0);
    }

    pub fn _0xBD0BE0BFC927EAC1() void {
        _ = nativeCaller.invoke0(13622228612230408897);
    }

    pub fn _0x237D5336A9A54108(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2557291657655828744)), p0);
    }

    pub fn _0x99B72C7ABDE5C910(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(11076370714224609552, p0, p1);
    }

    pub fn _0xF2EAC213D5EA0623() types.Any {
        return nativeCaller.invoke0(17504016292177905187);
    }

    pub fn _0xEA14EEF5B7CD2C30() types.Any {
        return nativeCaller.invoke0(16867369243527425072);
    }

    pub fn _0xB606E6CC59664972(p0: types.Any) void {
        _ = nativeCaller.invoke1(13116424730110740850, p0);
    }

    pub fn _0x1D4DC17C38FEAFF0() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2111556539582951408)));
    }

    pub fn _0x662635855957C411(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(7360629487829500945)), p0);
    }

    pub fn _0xB4271092CA7EDF48(p0: types.Any) types.Any {
        return nativeCaller.invoke1(12981362673567326024, p0);
    }

    pub fn _0xCA94551B50B4932C(p0: types.Any) types.Any {
        return nativeCaller.invoke1(14597385868021109548, p0);
    }

    pub fn _0x2A7776C709904AB0(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(3060045069052562096)), p0);
    }

    pub fn _0x6F44CBF56D79FAC0(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(8017757491590462144)), p0, p1);
    }

    pub fn _0x58C21165F6545892(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6395693550441617554)), p0, p1);
    }

    pub fn _0x2EAC52B4019E2782() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3363153954813650818)));
    }

    pub fn SET_STORE_ENABLED(toggle: windows.BOOL) void {
        _ = nativeCaller.invoke1(10827121893762309214, toggle);
    }

    pub fn _0xA2F952104FC6DD4B(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(11743507733356666187, p0);
    }

    pub fn _0x72D0706CD6CCDB58() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(8273236128242129752)));
    }

    pub fn _0x722F5D28B61C5EA8(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(8227897473664573096)), p0);
    }

    pub fn _0x883D79C4071E18B3() types.Any {
        return nativeCaller.invoke0(9817136645577513139);
    }

    pub fn _0x265635150FB0D82E() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(2762453786012211246)));
    }

    pub fn _0x444C4525ECE0A4B9() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(4921384521999361209)));
    }

    pub fn _0x59328EB08C5CEB2B() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6427356507131407147)));
    }

    pub fn _0xFAE628F1E9ADB239(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(18079182773598138937, p0, p1, p2);
    }

    pub fn _0xC64DED7EF0D2FE37(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(14289338322178473527, p0);
    }

    pub fn _0x4C61B39930D045DA(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(5503877690153780698)), p0);
    }

    pub fn _0x3A3D5568AF297CD5(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4196604335882861781)), p0);
    }

    pub fn _0x4F18196C8D38768D() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5699333282453812877)));
    }

    pub fn _0xC7ABAC5DE675EE3B() types.Any {
        return nativeCaller.invoke0(14387782953863605819);
    }

    pub fn _0x0B0CC10720653F3B() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(796223470490173243)));
    }

    pub fn _0x8B0C2964BA471961() types.Any {
        return nativeCaller.invoke0(10019428783591201121);
    }

    pub fn _0x88B588B41FF7868E() types.Any {
        return nativeCaller.invoke0(9850930067154634382);
    }

    pub fn _0x67FC09BC554A75E5() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7492874584527107557)));
    }

    pub fn _0x966DD84FB6A46017() void {
        _ = nativeCaller.invoke0(10839557715028893719);
    }

    pub fn _0x152D90E4C1B4738A(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(1526035160925238154)), p0, p1);
    }

    pub fn _0x9FEDF86898F100E9() types.Any {
        return nativeCaller.invoke0(11524140149637185769);
    }

    pub fn _0x5E24341A7F92A74B() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6783604227140921163)));
    }

    pub fn _0x24E4E51FC16305F9() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2658501604606674425)));
    }

    pub fn _0xFBC5E768C7A77A6A() types.Any {
        return nativeCaller.invoke0(18142161111144168042);
    }

    pub fn _0xC55A0B40FFB1ED23() types.Any {
        return nativeCaller.invoke0(14220691147171425571);
    }

    pub fn _0x17440AA15D1D3739() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1676476649456875321)));
    }

    pub fn _0x9BF438815F5D96EA(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: types.Any, p4: types.Any, p5: types.Any) windows.BOOL {
        return nativeCaller.invoke6(11237669098498135786, p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x692D58DF40657E8C(p0: types.Any, p1: types.Any, p2: types.Any, p3: [*c]types.Any, p4: types.Any, p5: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(7578811463815757452)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _0x158EC424F35EC469(p0: [*c]types.Any, p1: windows.BOOL, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(1553394584470340713)), p0, p1, p2);
    }

    pub fn _0xC7397A83F7A2A462(p0: [*c]types.Any, p1: types.Any, p2: windows.BOOL, p3: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke4(14355639994434102370, p0, p1, p2, p3);
    }

    pub fn _0x6D4CB481FAC835E8(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(7875868318715360744)), p0, p1, p2, p3);
    }

    pub fn _0xD5A4B59980401588(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke4(15394629097145505160, p0, p1, p2, p3);
    }

    pub fn _0x3195F8DD0D531052(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(3573035507683364946)), p0, p1, p2, p3);
    }

    pub fn _0xF9E1CCAE8BA4C281(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke4(18005897835243160193, p0, p1, p2, p3);
    }

    pub fn _0x9F6E2821885CAEE2(p0: types.Any, p1: types.Any, p2: types.Any, p3: [*c]types.Any, p4: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke5(11488163823955521250, p0, p1, p2, p3, p4);
    }

    pub fn _0x678BB03C1A3BD51E(p0: types.Any, p1: types.Any, p2: types.Any, p3: [*c]types.Any, p4: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke5(@as(u64, @intCast(7461250979854013726)), p0, p1, p2, p3, p4);
    }

    pub fn SET_BALANCE_ADD_MACHINE(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(9321991840898620775, p0, p1);
    }

    pub fn SET_BALANCE_ADD_MACHINES(p0: [*c]types.Any, p1: types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(13272722639618472998, p0, p1, p2);
    }

    pub fn _0xA7862BC5ED1DFD7E(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke4(12071383980299910526, p0, p1, p2, p3);
    }

    pub fn _0x97A770BEEF227E2B(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke4(10927826986195910187, p0, p1, p2, p3);
    }

    pub fn _0x5324A0E3E4CE3570(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(5991090304966342000)), p0, p1, p2, p3);
    }

    pub fn _0xE9B99B6853181409() void {
        _ = nativeCaller.invoke0(16841663153901671433);
    }

    pub fn _0xD53ACDBEF24A46E8() types.Any {
        return nativeCaller.invoke0(15364819298720302824);
    }

    pub fn _0x02ADA21EA2F6918F() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(192988611513586063)));
    }

    pub fn _0x941E5306BCD7C2C7() types.Any {
        return nativeCaller.invoke0(10673059455317820103);
    }

    pub fn _0xC87E740D9F3872CC() types.Any {
        return nativeCaller.invoke0(14447112256505803468);
    }

    pub fn _0xEDF7F927136C224B() types.Any {
        return nativeCaller.invoke0(17147448052461347403);
    }

    pub fn _0xE0A6138401BCB837() types.Any {
        return nativeCaller.invoke0(16187647368315582519);
    }

    pub fn _0x769951E2455E2EB5() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8545951800180485813)));
    }

    pub fn _0x3A17A27D75C74887() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4185993038394771591)));
    }

    pub fn _0xBA96394A0EECFA65() void {
        _ = nativeCaller.invoke0(13444996727801969253);
    }

    pub fn _0xCD67AD041A394C9C(p0: types.Any) types.Any {
        return nativeCaller.invoke1(14800988933507861660, p0);
    }

    pub fn _0x584770794D758C18(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(6361176664977017880)), p0, p1);
    }

    pub fn _0x8C8D2739BA44AF0F(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(10127794265917796111, p0);
    }

    pub fn _0x703F12425ECA8BF5(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(8088203532048174069)), p0);
    }

    pub fn _0xAEAB987727C5A8A4(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(12586321221152778404, p0);
    }

    pub fn _0xA7BAB11E7C9C6C5A(p0: types.Any) types.Any {
        return nativeCaller.invoke1(12086167294499908698, p0);
    }

    pub fn _0x55AA95F481D694D2(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(6172911116647568594)), p0);
    }

    pub fn _0xC0173D6BFF4E0348(p0: types.Any) types.Any {
        return nativeCaller.invoke1(13841599513800606536, p0);
    }

    pub fn _0xBF09786A7FCAB582(p0: types.Any) types.Any {
        return nativeCaller.invoke1(13765666134840489346, p0);
    }

    pub fn _0x7CF0448787B23758(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(9002771004001498968)), p0);
    }

    pub fn _0xBAF6BABF9E7CCC13(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(13472160667485916179, p0, p1);
    }

    pub fn _0xCFD115B373C0DF63(p0: types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(14974774096468959075, p0, p1);
    }

    pub fn _0x37025B27D9B658B1(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(3963830848753916081)), p0, p1);
    }

    pub fn _0x1D610EB0FEA716D9(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2116989453190239961)), p0);
    }

    pub fn _0x7FCC39C46C3C03BD(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(9208798853858067389)), p0);
    }

    pub fn _0x32DD916F3F7C9672(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(3665245578741978738)), p0);
    }

    pub fn _0x3054F114121C21EA(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3482673480369709546)), p0);
    }

    pub fn _0xA9240A96C74CCA13(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(12187878134276475411, p0);
    }

    pub fn _0x1ACCFBA3D8DAB2EE(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(1931195021371552494)), p0, p1);
    }

    pub fn _0x759299C5BB31D2A9(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(8472002923565535913)), p0, p1);
    }

    pub fn _0x87E5C46C187FE0AE(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(9792448933333557422, p0, p1);
    }

    pub fn _0x4E548C0D7AE39FF9(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(5644290222526275577)), p0, p1);
    }

    pub fn _0x70EA8DA57840F9BE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8136471418624866750)), p0);
    }

    pub fn _0x993CBE59D350D225(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(11041909679412269605, p0);
    }

    pub fn _0x171DF6A0C07FB3DC(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(1665758607481746396)), p0, p1);
    }

    pub fn _0x7FD2990AF016795E(p0: [*c]types.Any, p1: [*c]types.Any, p2: types.Any, p3: types.Any, p4: types.Any) types.Any {
        return nativeCaller.invoke5(@as(u64, @intCast(9210592460182813022)), p0, p1, p2, p3, p4);
    }

    pub fn _0x5E0165278F6339EE(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(6773806535125711342)), p0);
    }

    pub fn _0x2D5DC831176D0114(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3268989017712820500)), p0);
    }

    pub fn _0xEBFA8D50ADDC54C4(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(17004058720744527044, p0);
    }

    pub fn _0x162C23CA83ED0A62(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1597691320513399394)), p0);
    }

    pub fn _0x40F7E66472DF3E5C(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(4681463656773271132)), p0, p1);
    }

    pub fn _0x5A34CD9C3C5BEC44(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6500046233113717828)), p0);
    }

    pub fn _0x68103E2247887242() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7498561696521810498)));
    }

    pub fn _0x1DE0F5F50D723CAA(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(2152991054724480170)), p0, p1, p2);
    }

    pub fn _0x274A1519DFC1094F(p0: [*c]types.Any, p1: windows.BOOL, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(2831098516628113743)), p0, p1, p2);
    }

    pub fn _0xD05D1A6C74DA3498(p0: [*c]types.Any, p1: windows.BOOL, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(15014185785842349208, p0, p1, p2);
    }

    pub fn _0x45E816772E93A9DB() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5037300884352248283)));
    }

    pub fn _0x299EF3C576773506() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2999102431296959750)));
    }

    pub fn _0x793FF272D5B365F4() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8736968377147549172)));
    }

    pub fn _0x5A0A3D1A186A5508() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6488065395468686600)));
    }

    pub fn _0xA1E5E0204A6FCC70() void {
        _ = nativeCaller.invoke0(11665976839065554032);
    }

    pub fn _0xB746D20B17F2A229(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(13206473902398808617, p0, p1);
    }

    pub fn _0x63B406D7884BFA95() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7184374828337199765)));
    }

    pub fn _0x4D02279C83BE69FE() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5549041244052548094)));
    }

    pub fn _0x597F8DBA9B206FC7() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6449029024023867335)));
    }

    pub fn _0x5CAE833B0EE0C500(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6678419587112944896)), p0);
    }

    pub fn _0x61A885D3F7CFEE9A() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7037021563208593050)));
    }

    pub fn _0xF98DDE0A8ED09323(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(17982273024087331619, p0);
    }

    pub fn _0xFD75DABC0957BF33(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(18263744365016366899, p0);
    }

    pub fn _0xF53E48461B71EECB(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(17671641453793767115, p0);
    }

    pub fn _0x098AB65B9ED9A9EC(p0: [*c]types.Any, p1: types.Any, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(687562397750766060)), p0, p1, p2);
    }

    pub fn _0xDC48473142545431() types.Any {
        return nativeCaller.invoke0(15873015163559105585);
    }

    pub fn _0x0AE1F1653B554AB9(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(784173227228613305)), p0);
    }

    pub fn _0x62B9FEC9A11F10EF() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7113997228353458415)));
    }

    pub fn _0xA75E2B6733DA5142() types.Any {
        return nativeCaller.invoke0(12060124574396338498);
    }

    pub fn _0x43865688AE10F0D7() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4865671592456286423)));
    }

    pub fn TEXTURE_DOWNLOAD_REQUEST(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: windows.BOOL) types.Any {
        return nativeCaller.invoke4(@as(u64, @intCast(1591474530483598498)), p0, p1, p2, p3);
    }

    pub fn _0x0B203B4AFDE53A4F(p0: [*c]types.Any, p1: [*c]types.Any, p2: windows.BOOL) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(801705926945225295)), p0, p1, p2);
    }

    pub fn _0x308F96458B7087CC(p0: [*c]types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: [*c]types.Any, p5: windows.BOOL) types.Any {
        return nativeCaller.invoke6(@as(u64, @intCast(3499180660926482380)), p0, p1, p2, p3, p4, p5);
    }

    pub fn TEXTURE_DOWNLOAD_RELEASE(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5223816077257603865)), p0);
    }

    pub fn _0x5776ED562C134687(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(6302485682914018951)), p0);
    }

    pub fn TEXTURE_DOWNLOAD_GET_NAME(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(3767349441916642861)), p0);
    }

    pub fn _0x8BD6C6DEA20E82C6(p0: types.Any) types.Any {
        return nativeCaller.invoke1(10076459875791962822, p0);
    }

    pub fn _0x60EDD13EB3AC1FF3() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6984468664354086899)));
    }

    pub fn _0xEFFB25453D8600F9() types.Any {
        return nativeCaller.invoke0(17292456173534314745);
    }

    pub fn _0x66B59CFFD78467AF() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7400994185299650479)));
    }

    pub fn _0x606E4D3E3CCCF3EB() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6948576204782629867)));
    }

    pub fn _IS_ROCKSTAR_BANNED() c_int {
        return nativeCaller.invoke0(9232563096275438205);
    }

    pub fn _IS_SOCIALCLUB_BANNED() c_int {
        return nativeCaller.invoke0(11578048940007006049);
    }

    pub fn _IS_PLAYER_BANNED() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(6886520397566223120)));
    }

    pub fn _0x422D396F80A96547() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4768530731517961543)));
    }

    pub fn _0xA699957E60D80214(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(12004790651755954708, p0);
    }

    pub fn _0xC22912B1D85F26B1(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(13990734272451782321, p0, p1, p2);
    }

    pub fn _0x593570C289A77688() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6428168023976670856)));
    }

    pub fn _0x91B87C55093DE351() types.Any {
        return nativeCaller.invoke0(10500279235883426641);
    }

    pub fn _0x36391F397731595D(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(3907188483393935709)), p0);
    }

    pub fn _0xDEB2B99A1AF1A2A6(p0: types.Any) types.Any {
        return nativeCaller.invoke1(16047092493802644134, p0);
    }

    pub fn _0x9465E683B12D3F6B() void {
        _ = nativeCaller.invoke0(10693206343548747627);
    }

    pub fn _0xB7C7F6AD6424304B() void {
        _ = nativeCaller.invoke0(13242824453876101195);
    }

    pub fn _0xC505036A35AFD01B(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14196757155057487899, p0);
    }

    pub fn _0x267C78C60E806B9A(p0: types.Any, p1: windows.BOOL) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2773224262595537818)), p0, p1);
    }

    pub fn _0x6BFF5F84102DF80A(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(7782043701931276298)), p0);
    }

    pub fn _0x5C497525F803486B() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6649975130724452459)));
    }

    pub fn _0x6FB7BB3607D27FA2() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8050108699681914786)));
    }

    pub fn _0x45A83257ED02D9BC() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5019317137924348348)));
    }
};

pub const NETWORKCASH = struct {
    pub fn NETWORK_INITIALIZE_CASH(p0: c_int, p1: c_int) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4442216992638548589)), p0, p1);
    }

    pub fn NETWORK_DELETE_CHARACTER(characterIndex: c_int, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(406743382443420557)), characterIndex, p1, p2);
    }

    pub fn _0xA921DED15FDF28F5(p0: types.Any) void {
        _ = nativeCaller.invoke1(12187267057479264501, p0);
    }

    pub fn NETWORK_GIVE_PLAYER_JOBSHARE_CASH(amount: c_int, player: [*c]types.Player) void {
        _ = nativeCaller.invoke2(18093457367178805509, amount, player);
    }

    pub fn NETWORK_RECEIVE_PLAYER_JOBSHARE_CASH(amount: c_int, player: [*c]types.Player) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6243032628598211992)), amount, player);
    }

    pub fn _0x1C2473301B1C66BA() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2027872382674036410)));
    }

    pub fn NETWORK_REFUND_CASH(index: c_int, context: [*c]u8, reason: [*c]u8, unk: windows.BOOL) void {
        _ = nativeCaller.invoke4(17998656584548804631, index, context, reason, unk);
    }

    pub fn _0x81404F3DC124FE5B(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(9313531156054212187, p0, p1, p2);
    }

    pub fn _0x3A54E33660DED67F(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4203234174936471167)), p0);
    }

    pub fn NETWORK_EARN_FROM_PICKUP(amount: c_int) void {
        _ = nativeCaller.invoke1(17083586959442953880, amount);
    }

    pub fn _0xA03D4ACE0A3284CE(p0: types.Any) void {
        _ = nativeCaller.invoke1(11546467268442621134, p0);
    }

    pub fn _0xF514621E8EA463D0(p0: types.Any) void {
        _ = nativeCaller.invoke1(17659847922208236496, p0);
    }

    pub fn _0xB1CC1B9EC3007A2A(p0: types.Any) void {
        _ = nativeCaller.invoke1(12811645408652589610, p0);
    }

    pub fn NETWORK_EARN_FROM_BETTING(amount: c_int, p1: [*c]u8) void {
        _ = nativeCaller.invoke2(9401927921893558893, amount, p1);
    }

    pub fn NETWORK_EARN_FROM_JOB(amount: c_int, p1: [*c]u8) void {
        _ = nativeCaller.invoke2(12883752032968542872, amount, p1);
    }

    pub fn _0x61326EE6DF15B0CA(p0: types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7003782308378816714)), p0, p1);
    }

    pub fn _0x2B171E6B2F64D8DF(p0: types.Any, p1: [*c]types.Any, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3104983913800718559)), p0, p1, p2);
    }

    pub fn NETWORK_EARN_FROM_BOUNTY(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any, p3: types.Any) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(1376894059356175055)), p0, p1, p2, p3);
    }

    pub fn NETWORK_EARN_FROM_IMPORT_EXPORT(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(17954164283470529238, p0, p1);
    }

    pub fn NETWORK_EARN_FROM_HOLDUPS(amount: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5023788809209093709)), amount);
    }

    pub fn NETWORK_EARN_FROM_PROPERTY(amount: c_int, propertyName: types.Hash) void {
        _ = nativeCaller.invoke2(9553903050330469829, amount, propertyName);
    }

    pub fn _0x515B4A22E4D3C6D7(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(5862360853681260247)), p0, p1);
    }

    pub fn _0x4337511FA8221D36(p0: types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(4843429120666901814)), p0);
    }

    pub fn NETWORK_EARN_FROM_ROCKSTAR(amount: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(202131377619760106)), amount);
    }

    pub fn NETWORK_EARN_FROM_VEHICLE(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any) void {
        _ = nativeCaller.invoke8(13058676996217695480, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    pub fn _0x3F4D00167E41E0AD(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any, p6: types.Any, p7: types.Any, p8: types.Any) void {
        _ = nativeCaller.invoke9(@as(u64, @intCast(4561302094203707565)), p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    pub fn _0x6EA318C91C1A8786(p0: types.Any, p1: [*c]types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7972243017414903686)), p0, p1, p2);
    }

    pub fn _0xFB6DB092FBAE29E6(p0: c_int, p1: [*c]u8, p2: [*c]types.Any) void {
        _ = nativeCaller.invoke3(18117331021315582438, p0, p1, p2);
    }

    pub fn _0x6816FB4416760775(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7500458499285321589)), p0, p1, p2);
    }

    pub fn _HAS_ITEM_BEEN_UNLOCKED(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL, p4: types.Any) windows.BOOL {
        return nativeCaller.invoke5(12338924456736023770, p0, p1, p2, p3, p4);
    }

    pub fn _0x7303E27CC6532080(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL, p3: windows.BOOL, p4: [*c]types.Any, p5: types.Any) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(8287716764823003264)), p0, p1, p2, p3, p4, p5);
    }

    pub fn NETWORK_BUY_ITEM(player: types.Ped, item: types.Hash, p2: types.Any, p3: types.Any, p4: windows.BOOL, item_name: [*c]u8, p6: types.Any, p7: types.Any, p8: types.Any, p9: windows.BOOL) void {
        _ = nativeCaller.invoke10(17295929755209999189, player, item, p2, p3, p4, item_name, p6, p7, p8, p9);
    }

    pub fn NETWORK_SPENT_TAXI(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(1712396808525593081)), p0, p1, p2);
    }

    pub fn _0x5FD5ED82CBBE9989(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(6905686749662321033)), p0, p1, p2);
    }

    pub fn _0xAFE08B35EC0C9EAE(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(12673282415130353326, p0, p1, p2);
    }

    pub fn _0x9346E14F2AF74D46(p0: types.Any, p1: [*c]types.Any, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(10612417302084668742, p0, p1, p2, p3);
    }

    pub fn NETWORK_SPENT_BETTING(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: windows.BOOL, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(2036594400476948783)), p0, p1, p2, p3, p4);
    }

    pub fn _0xEE99784E4467689C(p0: types.Any, p1: windows.BOOL, p2: types.Any, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(17192905330013989020, p0, p1, p2, p3);
    }

    pub fn NETWORK_BUY_HEALTHCARE(cost: c_int, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(15686151736757838813, cost, p1, p2);
    }

    pub fn NETWORK_BUY_AIRSTRIKE(cost: c_int, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(8519486489798872857)), cost, p1, p2);
    }

    pub fn NETWORK_BUY_HELI_STRIKE(cost: c_int, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(9343357415291959913, cost, p1, p2);
    }

    pub fn NETWORK_SPENT_AMMO_DROP(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(12782021228171047291, p0, p1, p2);
    }

    pub fn NETWORK_BUY_BOUNTY(amount: c_int, victim: types.Player, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8895046979010425561)), amount, victim, p2, p3);
    }

    pub fn NETWORK_BUY_PROPERTY(propertyCost: f32, propertyName: types.Hash, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(7280641241631886070)), propertyCost, propertyName, p2, p3);
    }

    pub fn NETWORK_SPENT_HELI_PICKUP(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(8931156196047234194)), p0, p1, p2);
    }

    pub fn NETWORK_SPENT_BOAT_PICKUP(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(5930928697977809920)), p0, p1, p2);
    }

    pub fn NETWORK_SPENT_BULL_SHARK(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(12023912097099546924, p0, p1, p2);
    }

    pub fn NETWORK_SPENT_CASH_DROP(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2922861363037298912)), p0, p1, p2);
    }

    pub fn NETWORK_SPENT_HIRE_MUGGER(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(16430468144015236080, p0, p1, p2);
    }

    pub fn _0x995A65F15F581359(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(11050256723068064601, p0, p1, p2);
    }

    pub fn NETWORK_SPENT_HIRE_MERCENARY(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(16697111200514182102, p0, p1, p2);
    }

    pub fn NETWORK_SPENT_BUY_WANTEDLEVEL(p0: types.Any, p1: [*c]types.Any, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(16262840690705417462, p0, p1, p2, p3);
    }

    pub fn NETWORK_SPENT_BUY_OFFTHERADAR(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(11973003527953275997, p0, p1, p2);
    }

    pub fn NETWORK_SPENT_BUY_REVEAL_PLAYERS(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7932931430806193719)), p0, p1, p2);
    }

    pub fn NETWORK_SPENT_CARWASH(p0: types.Any, p1: types.Any, p2: types.Any, p3: windows.BOOL, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(17006655531746542342, p0, p1, p2, p3, p4);
    }

    pub fn NETWORK_SPENT_CINEMA(p0: types.Any, p1: types.Any, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(7726185402928965253)), p0, p1, p2, p3);
    }

    pub fn NETWORK_SPENT_TELESCOPE(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(9216079537485696009)), p0, p1, p2);
    }

    pub fn NETWORK_SPENT_HOLDUPS(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(15688407604437161827, p0, p1, p2);
    }

    pub fn NETWORK_SPENT_BUY_PASSIVE_MODE(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7870677022341632377)), p0, p1, p2);
    }

    pub fn NETWORK_SPENT_PROSTITUTES(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(12834002540298946462, p0, p1, p2);
    }

    pub fn NETWORK_SPENT_ARREST_BAIL(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(9308751900871664281, p0, p1, p2);
    }

    pub fn NETWORK_SPENT_PAY_VEHICLE_INSURANCE_PREMIUM(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: windows.BOOL, p4: windows.BOOL) void {
        _ = nativeCaller.invoke5(11525430014994998248, p0, p1, p2, p3, p4);
    }

    pub fn NETWORK_SPENT_CALL_PLAYER(p0: types.Any, p1: [*c]types.Any, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(12456518438408689532, p0, p1, p2, p3);
    }

    pub fn NETWORK_SPENT_BOUNTY(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(3004570246029238220)), p0, p1, p2);
    }

    pub fn _0x6A445B64ED7ABEB5(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7657345755475787445)), p0, p1, p2);
    }

    pub fn _0x20194D48EAEC9A41(p0: types.Any, p1: types.Any, p2: types.Any) types.Any {
        return nativeCaller.invoke3(@as(u64, @intCast(2312964859205818945)), p0, p1, p2);
    }

    pub fn _0x7C99101F7FCE2EE5(p0: types.Any, p1: types.Any, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(@as(u64, @intCast(8978225059614043877)), p0, p1, p2, p3);
    }

    pub fn _0xD5BB406F4E04019F(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(15400974197517975967, p0, p1, p2);
    }

    pub fn _0x8204DA7934DF3155(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(9368853338950414677, p0, p1, p2);
    }

    pub fn _0x9D26502BB97BFE62(p0: types.Any, p1: windows.BOOL, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(11323826461795417698, p0, p1, p2);
    }

    pub fn _0x8A7B3952DD64D2B5(p0: types.Any, p1: types.Any, p2: windows.BOOL, p3: windows.BOOL) void {
        _ = nativeCaller.invoke4(9978632427433939637, p0, p1, p2, p3);
    }

    pub fn _0x7C4FCCD2E4DEB394() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8957603390018204564)));
    }

    pub fn _0x76EF28DA05EA395A() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8570113532776560986)));
    }

    pub fn _0xA40F9C2623F6A8B5(p0: types.Any) types.Any {
        return nativeCaller.invoke1(11821839234496899253, p0);
    }

    pub fn _0x5CBAD97E059E1B94() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(6681892132440906644)));
    }

    pub fn _0xA6FA3979BED01B81() types.Any {
        return nativeCaller.invoke0(12031992549528836993);
    }

    pub fn _0xDC18531D7019A535(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(15859517473685087541, p0, p1);
    }

    pub fn NETWORK_CAN_RECEIVE_PLAYER_CASH(p0: types.Any, p1: types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(6708039462977417860)), p0, p1, p2, p3);
    }

    pub fn _0xF70EFA14FE091429(p0: types.Any) types.Any {
        return nativeCaller.invoke1(17802441345110447145, p0);
    }

    pub fn _0xE260E0BB9CD995AC(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(16312284946730948012, p0);
    }

    pub fn _0xE154B48B68EF72BC(p0: types.Any) types.Any {
        return nativeCaller.invoke1(16236801067431457468, p0);
    }

    pub fn _0x6FCF8DDEA146C45B(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(8056814245717132379)), p0);
    }
};

pub const DLC1 = struct {
    pub fn _0x278F76C3B0A8F109(p0: c_int) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(2850627672003375369)), p0);
    }

    pub fn _0xFF56381874F82086(p0: c_int, p1: c_int, outComponent: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(18398955005361528966, p0, p1, outComponent);
    }

    pub fn INIT_SHOP_PED_COMPONENT(outComponent: types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2201187712157007926)), outComponent);
    }

    pub fn INIT_SHOP_PED_PROP(outProp: [*c]types.Any) void {
        _ = nativeCaller.invoke1(16936397132598576399, outProp);
    }

    pub fn _0x50F457823CE6EB5F(p0: c_int, p1: c_int, p2: c_int, p3: c_int) c_int {
        return nativeCaller.invoke4(@as(u64, @intCast(5833383634230766431)), p0, p1, p2, p3);
    }

    pub fn _GET_NUM_PROPS_FROM_OUTFIT(playerId: c_int, p1: c_int, p2: c_int, p3: windows.BOOL, p4: c_int, componentId: c_int) c_int {
        return nativeCaller.invoke6(11231794408604973249, playerId, p1, p2, p3, p4, componentId);
    }

    pub fn GET_SHOP_PED_QUERY_COMPONENT(componentId: c_int, outComponent: [*c]types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2638600355764635289)), componentId, outComponent);
    }

    pub fn GET_SHOP_PED_COMPONENT(p0: types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(8412973304352499552)), p0, p1);
    }

    pub fn GET_SHOP_PED_QUERY_PROP(p0: types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(16016102137930089341, p0, p1);
    }

    pub fn _0x5D5CAFF661DDF6FC(p0: types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(6727445416123430652)), p0, p1);
    }

    pub fn GET_HASH_NAME_FOR_COMPONENT(entity: types.Entity, componentId: c_int, drawableVariant: c_int, textureVariant: c_int) types.Hash {
        return nativeCaller.invoke4(@as(u64, @intCast(245643714767553352)), entity, componentId, drawableVariant, textureVariant);
    }

    pub fn GET_HASH_NAME_FOR_PROP(entity: types.Entity, componentId: c_int, propIndex: c_int, propTextureIndex: c_int) types.Hash {
        return nativeCaller.invoke4(@as(u64, @intCast(6728765040443181277)), entity, componentId, propIndex, propTextureIndex);
    }

    pub fn _0xC17AD0E5752BECDA(componentHash: types.Hash) c_int {
        return nativeCaller.invoke1(13941685280410692826, componentHash);
    }

    pub fn GET_VARIANT_COMPONENT(componentHash: types.Hash, componentId: c_int, p2: [*c]types.Any, p3: [*c]types.Any, p4: [*c]types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(7931387062980731830)), componentHash, componentId, p2, p3, p4);
    }

    pub fn _GET_NUM_FORCED_COMPONENTS(componentHash: types.Hash) c_int {
        return nativeCaller.invoke1(14319717569941854403, componentHash);
    }

    pub fn _0x017568A8182D98A6(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(105105237482510502)), p0);
    }

    pub fn GET_FORCED_COMPONENT(componentHash: types.Hash, componentId: c_int, p2: [*c]types.Any, p3: [*c]types.Any, p4: [*c]types.Any) void {
        _ = nativeCaller.invoke5(@as(u64, @intCast(7823858164020053403)), componentHash, componentId, p2, p3, p4);
    }

    pub fn _0xE1CA84EBF72E691D(p0: types.Any, p1: types.Any, p2: [*c]types.Any, p3: [*c]types.Any, p4: [*c]types.Any) void {
        _ = nativeCaller.invoke5(16269962752828533021, p0, p1, p2, p3, p4);
    }

    pub fn _0x341DE7ED1D2A1BFD(componentHash: types.Hash, drawableSlotHash: types.Hash, p2: c_int) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(3755412669879426045)), componentHash, drawableSlotHash, p2);
    }

    pub fn _0xF3FBE2D50A6A8C28(character: c_int, p1: windows.BOOL) c_int {
        return nativeCaller.invoke2(17580894975001529384, character, p1);
    }

    pub fn GET_SHOP_PED_QUERY_OUTFIT(p0: types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(7888405507221880406)), p0, p1);
    }

    pub fn GET_SHOP_PED_OUTFIT(p0: types.Any, p1: [*c]types.Any) void {
        _ = nativeCaller.invoke2(13228515175478630301, p0, p1);
    }

    pub fn _0x073CA26B079F956E(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(521470237441234286)), p0);
    }

    pub fn _0xA9F9C2E0FDE11CBB(p0: types.Any, p1: types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(12248034933198625979, p0, p1, p2);
    }

    pub fn _GET_PROP_FROM_OUTFIT(outfit: types.Any, slot: types.Any, item: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(1869732884373307711)), outfit, slot, item);
    }

    pub fn GET_NUM_DLC_VEHICLES() c_int {
        return nativeCaller.invoke0(12081019053034058395);
    }

    pub fn GET_DLC_VEHICLE_MODEL(p0: types.Any) types.Any {
        return nativeCaller.invoke1(17059665609335452476, p0);
    }

    pub fn GET_DLC_VEHICLE_DATA(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(3694797619997143542)), p0, p1);
    }

    pub fn GET_DLC_VEHICLE_FLAGS(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(6145704927502204146)), p0);
    }

    pub fn GET_NUM_DLC_WEAPONS() c_int {
        return nativeCaller.invoke0(17169801364938531687);
    }

    pub fn GET_DLC_WEAPON_DATA(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(8760131098298343758)), p0, p1);
    }

    pub fn GET_NUM_DLC_WEAPON_COMPONENTS(p0: types.Any) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(4635370828358050302)), p0);
    }

    pub fn GET_DLC_WEAPON_COMPONENT_DATA(p0: types.Any, p1: types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(7851349349450394616)), p0, p1, p2);
    }

    pub fn _IS_OUTFIT_EMPTY(outfit: types.Any) windows.BOOL {
        return nativeCaller.invoke1(15336920792406041660, outfit);
    }

    pub fn _0x0564B9FF9631B82C(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(388639975248345132)), p0);
    }

    pub fn _0xC098810437312FFF(p0: types.Any) types.Any {
        return nativeCaller.invoke1(13877984106848006143, p0);
    }
};

pub const DLC2 = struct {
    pub fn IS_DLC_PRESENT(DlcHash: types.Hash) windows.BOOL {
        return nativeCaller.invoke1(9306008721141064158, DlcHash);
    }

    pub fn _0xF2E07819EF1A5289() types.Any {
        return nativeCaller.invoke0(17501120204742742665);
    }

    pub fn _0x9489659372A81585() types.Any {
        return nativeCaller.invoke0(10703197673380910469);
    }

    pub fn _0xA213B11DFF526300() types.Any {
        return nativeCaller.invoke0(11678873001097585408);
    }

    pub fn _0x8D30F648014A92B5() types.Any {
        return nativeCaller.invoke0(10173902347349693109);
    }

    pub fn GET_IS_LOADING_SCREEN_ACTIVE() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(1211654058606673609)));
    }

    pub fn _NULLIFY(variable: [*c]types.Any, unused: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5107847532010784240)), variable, unused);
    }

    pub fn _LOAD_SP_DLC_MAPS() void {
        _ = nativeCaller.invoke0(15546720902295687881);
    }

    pub fn _LOAD_MP_DLC_MAPS() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(614956098268163829)));
    }
};

pub const SYSTEM = struct {
    pub fn WAIT(ms: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5683038035346286502)), ms);
    }

    pub fn START_NEW_SCRIPT(scriptName: [*c]u8, stackSize: c_int) c_int {
        return nativeCaller.invoke2(16723644071793487432, scriptName, stackSize);
    }

    pub fn START_NEW_SCRIPT_WITH_ARGS(scriptName: [*c]u8, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int {
        return nativeCaller.invoke4(13311091582424151521, scriptName, args, argCount, stackSize);
    }

    pub fn _START_NEW_STREAMED_SCRIPT(scriptHash: types.Hash, stackSize: c_int) c_int {
        return nativeCaller.invoke2(16941529988248844946, scriptHash, stackSize);
    }

    pub fn _START_NEW_STREAMED_SCRIPT_WITH_ARGS(scriptHash: types.Hash, args: [*c]types.Any, argCount: c_int, stackSize: c_int) c_int {
        return nativeCaller.invoke4(14175969932617039480, scriptHash, args, argCount, stackSize);
    }

    pub fn TIMERA() c_int {
        return nativeCaller.invoke0(9468377998387232075);
    }

    pub fn TIMERB() c_int {
        return nativeCaller.invoke0(14544731519793341300);
    }

    pub fn SETTIMERA(value: c_int) void {
        _ = nativeCaller.invoke1(13957193594485226082, value);
    }

    pub fn SETTIMERB(value: c_int) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(6548545859220659790)), value);
    }

    pub fn TIMESTEP() f32 {
        return nativeCaller.invoke0(@as(u64, @intCast(1348042466)));
    }

    pub fn SIN(value: f32) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(841539415165780831)), value);
    }

    pub fn COS(value: f32) f32 {
        return nativeCaller.invoke1(15059950717509440412, value);
    }

    pub fn SQRT(value: f32) f32 {
        return nativeCaller.invoke1(@as(u64, @intCast(8203653444578285572)), value);
    }

    pub fn POW(base: f32, exponent: f32) f32 {
        return nativeCaller.invoke2(16384690022721388078, base, exponent);
    }

    pub fn VMAG(p0: f32, p1: f32, p2: f32) f32 {
        return nativeCaller.invoke3(@as(u64, @intCast(7290534975576991276)), p0, p1, p2);
    }

    pub fn VMAG2(p0: f32, p1: f32, p2: f32) f32 {
        return nativeCaller.invoke3(12163849536751198296, p0, p1, p2);
    }

    pub fn VDIST(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 {
        return nativeCaller.invoke6(@as(u64, @intCast(3046839180162419877)), x1, y1, z1, x2, y2, z2);
    }

    pub fn VDIST2(x1: f32, y1: f32, z1: f32, x2: f32, y2: f32, z2: f32) f32 {
        return nativeCaller.invoke6(13233308750539886151, x1, y1, z1, x2, y2, z2);
    }

    pub fn SHIFT_LEFT(value: c_int, bitShift: c_int) c_int {
        return nativeCaller.invoke2(17138829061642276328, value, bitShift);
    }

    pub fn SHIFT_RIGHT(value: c_int, bitShift: c_int) c_int {
        return nativeCaller.invoke2(10948002598818267253, value, bitShift);
    }

    pub fn FLOOR(value: f32) c_int {
        return nativeCaller.invoke1(17532204621987346500, value);
    }

    pub fn CEIL(value: f32) c_int {
        return nativeCaller.invoke1(@as(u64, @intCast(1288057844309609610)), value);
    }

    pub fn ROUND(value: f32) c_int {
        return nativeCaller.invoke1(17499705547816067449, value);
    }

    pub fn TO_FLOAT(value: c_int) f32 {
        return nativeCaller.invoke1(13536264826763565705, value);
    }
};

pub const DECORATOR = struct {
    pub fn DECOR_SET_TIME(entity: types.Entity, propertyName: [*c]u8, value: c_int) windows.BOOL {
        return nativeCaller.invoke3(10785795346691705508, entity, propertyName, value);
    }

    pub fn DECOR_SET_BOOL(entity: types.Entity, propertyName: [*c]u8, value: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(7718763143089052529)), entity, propertyName, value);
    }

    pub fn _DECOR_SET_FLOAT(entity: types.Entity, propertyName: [*c]u8, value: f32) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(2385414517758572090)), entity, propertyName, value);
    }

    pub fn DECOR_SET_INT(entity: types.Entity, propertyName: [*c]u8, value: c_int) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(928773269352455696)), entity, propertyName, value);
    }

    pub fn DECOR_GET_BOOL(entity: types.Entity, propertyName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(15766652691334493659, entity, propertyName);
    }

    pub fn _DECOR_GET_FLOAT(entity: types.Entity, propertyName: [*c]u8) f32 {
        return nativeCaller.invoke2(@as(u64, @intCast(7288129253306036035)), entity, propertyName);
    }

    pub fn DECOR_GET_INT(entity: types.Entity, propertyName: [*c]u8) c_int {
        return nativeCaller.invoke2(11559779936061977240, entity, propertyName);
    }

    pub fn DECOR_EXIST_ON(entity: types.Entity, propertyName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(389028657215641183)), entity, propertyName);
    }

    pub fn DECOR_REMOVE(entity: types.Entity, propertyName: [*c]u8) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(67166044987557664)), entity, propertyName);
    }

    pub fn DECOR_REGISTER(propertyName: [*c]u8, type_: c_int) void {
        _ = nativeCaller.invoke2(11518245437423485902, propertyName, type_);
    }

    pub fn DECOR_IS_REGISTERED_AS_TYPE(propertyName: [*c]u8, type_: c_int) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5698454273970863048)), propertyName, type_);
    }

    pub fn DECOR_REGISTER_LOCK() void {
        _ = nativeCaller.invoke0(12236648430102876744);
    }

    pub fn _0x241FCA5B1AA14F75() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2603021602281049973)));
    }
};

pub const SOCIALCLUB = struct {
    pub fn _0x03A93FF1A2CA0864() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(263812360228702308)));
    }

    pub fn _0xBB8EA16ECBC976C4(p0: types.Any) types.Any {
        return nativeCaller.invoke1(13514917029022889668, p0);
    }

    pub fn _0x93028F1DB42BFD08(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(10593186631268433160, p0);
    }

    pub fn _0x2C015348CF19CA1D(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3170907184822864413)), p0);
    }

    pub fn SC_INBOX_MESSAGE_GET_DATA_INT(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(11533435248767665518, p0, p1, p2);
    }

    pub fn _0xFFE5C16F402D851D(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(18439356932900619549, p0, p1);
    }

    pub fn SC_INBOX_MESSAGE_GET_DATA_STRING(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(8463089720764308333)), p0, p1, p2);
    }

    pub fn _0x9A2C8064B6C1E41A(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(11109395550867416090, p0);
    }

    pub fn _0xF3E31D16CBDCB304(p0: types.Any) types.Any {
        return nativeCaller.invoke1(17573922154676531972, p0);
    }

    pub fn _0xDA024BDBD600F44A(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(15709201857782019146, p0);
    }

    pub fn _0xA68D3D229F4F3B06(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(12001315800923192070, p0);
    }

    pub fn SC_INBOX_MESSAGE_GET_UGCDATA(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(7626887770285646420)), p0, p1);
    }

    pub fn _0x6AFD2CD753FEEF83(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7709367440466964355)), p0);
    }

    pub fn _0x87E0052F08BD64E6(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(9790831289471689958, p0, p1);
    }

    pub fn _0x040ADDCBAFA1018A(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(291288992813482378)), p0, p1);
    }

    pub fn _0x16DA8172459434AA() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1646770941550933162)));
    }

    pub fn _0x4737980E8A283806(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5131737488626825222)), p0, p1);
    }

    pub fn _0x44ACA259D67651DB(p0: [*c]types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(4948508597307199963)), p0, p1);
    }

    pub fn SC_EMAIL_MESSAGE_PUSH_GAMER_TO_RECIP_LIST(player: [*c]types.Player) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(2535738978395512086)), player);
    }

    pub fn _0x55DF6DB45179236E() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6187785034258785134)));
    }

    pub fn _0x116FB94DC4B79F17(p0: [*c]types.Any) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(1256426564723646231)), p0);
    }

    pub fn _0xBFA0A56A817C6C7D(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(13808218334375472253, p0);
    }

    pub fn _0xBC1CC91205EC8D6E() types.Any {
        return nativeCaller.invoke0(13554930057724333422);
    }

    pub fn _0xDF649C4E9AFDD788() types.Any {
        return nativeCaller.invoke0(16097162829550704520);
    }

    pub fn _0x1F1E9682483697C7(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(2242395150778537927)), p0, p1);
    }

    pub fn _0x287F1F75D2803595(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(2918085674462623125)), p0, p1);
    }

    pub fn _0x487912FD248EFDDF(p0: types.Any, p1: f32) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(5222226121362177503)), p0, p1);
    }

    pub fn _0x8416FE4E4629D7D7(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(9518074474632173527, p0);
    }

    pub fn _0x75632C5ECD7ED843(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(8458653310818113603)), p0, p1);
    }

    pub fn _0x1753344C770358AE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1680744588958193838)), p0);
    }

    pub fn _0x82E4A58BABC15AE7(p0: types.Any) types.Any {
        return nativeCaller.invoke1(9431845538921274087, p0);
    }

    pub fn _0x85535ACF97FC0969(p0: types.Any) types.Any {
        return nativeCaller.invoke1(9607122277766007145, p0);
    }

    pub fn _0x930DE22F07B1CCE3(p0: types.Any) c_int {
        return nativeCaller.invoke1(10596374189893078243, p0);
    }

    pub fn _0xF6BAAAF762E1BF40(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(17778710458491060032, p0, p1);
    }

    pub fn _0xF22CA0FD74B80E7A(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(17450499666599218810, p0);
    }

    pub fn _0x9237E334F6E43156(p0: types.Any) types.Any {
        return nativeCaller.invoke1(10536139669876519254, p0);
    }

    pub fn _0x700569DBA175A77C(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(8071974299159078780)), p0);
    }

    pub fn _0x1D4446A62D35B0D0(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(2108888205053243600)), p0, p1);
    }

    pub fn _0x2E89990DDFF670C3(p0: types.Any, p1: types.Any) types.Any {
        return nativeCaller.invoke2(@as(u64, @intCast(3353379682425139395)), p0, p1);
    }

    pub fn _0xD0EE05FE193646EA(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(15054977193248966378, p0, p1, p2);
    }

    pub fn _0x1989C6E6F67E76A8(p0: [*c]types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(1840220618037819048)), p0, p1, p2);
    }

    pub fn _0x07C61676E5BB52CD(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(560159903570416333)), p0);
    }

    pub fn _0x8147FFF6A718E1AD(p0: types.Any) types.Any {
        return nativeCaller.invoke1(9315695789069623725, p0);
    }

    pub fn _0x0F73393BAC7E6730(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(1113296461350463280)), p0, p1);
    }

    pub fn _0xD302E99EDF0449CF(p0: types.Any) types.Any {
        return nativeCaller.invoke1(15204972160511920591, p0);
    }

    pub fn _0x5C4EBFFA98BDB41C(p0: types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(6651464782698099740)), p0);
    }

    pub fn _0xFF8F3A92B75ED67A() types.Any {
        return nativeCaller.invoke0(18415001803157329530);
    }

    pub fn _0x4A7D6E727F941747(p0: [*c]types.Any) types.Any {
        return nativeCaller.invoke1(@as(u64, @intCast(5367567768941238087)), p0);
    }

    pub fn _0x8CC469AB4D349B7C(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(10143348445200817020, p0, p1, p2);
    }

    pub fn _0x699E4A5C8C893A18(p0: types.Any, p1: [*c]types.Any, p2: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(7610602181657967128)), p0, p1, p2);
    }

    pub fn _0x19853B5B17D77BCA(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(1838941285278776266)), p0, p1);
    }

    pub fn _0x6BFB12CE158E3DD4(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(7780833457546870228)), p0);
    }

    pub fn _0xFE4C1D0D3B9CC17E(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(18324052926535614846, p0, p1);
    }

    pub fn _0xD8122C407663B995() types.Any {
        return nativeCaller.invoke0(15569555517149002133);
    }

    pub fn _0x3001BEF2FECA3680() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(3459255939663279744)));
    }

    pub fn _0x92DA6E70EF249BD1(p0: [*c]u8, p1: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke2(10581891705787947985, p0, p1);
    }

    pub fn _0x675721C9F644D161() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(7446457660184252769)));
    }

    pub fn _SC_GET_NICKNAME() [*c]u8 {
        return nativeCaller.invoke0(@as(u64, @intCast(1841152146231184511)));
    }

    pub fn _0x225798743970412B(p0: [*c]c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(2474614145210663211)), p0);
    }

    pub fn _0x418DC16FAE452C1C(p0: c_int) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4723644269590817820)), p0);
    }
};

pub const UNK = struct {
    pub fn _RETURN_ZERO() c_int {
        return nativeCaller.invoke0(17494795973434417618);
    }

    pub fn _0xEF7D17BC6C85264C() windows.BOOL {
        return nativeCaller.invoke0(17256975445195564620);
    }

    pub fn _GET_BROADCAST_FINSHED_LOS_SOUND(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(12737705678694045795, p0);
    }

    pub fn _0x8AA464D4E0F6ACCD() types.Any {
        return nativeCaller.invoke0(9990220738884709581);
    }

    pub fn _0xFC309E94546FCDB5(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(18172198856348913077, p0);
    }

    pub fn _0xC6DC823253FBB366() types.Any {
        return nativeCaller.invoke0(14329471267055055718);
    }

    pub fn _0xC7E7181C09F33B69(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(14404508441872907113, p0);
    }

    pub fn _0xFA1E0E893D915215(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(18022858741389546005, p0);
    }

    pub fn _GET_UI_LANGUAGE_ID() c_int {
        return nativeCaller.invoke0(@as(u64, @intCast(3160758157564346030)));
    }

    pub fn _GET_USER_LANGUAGE_ID() c_int {
        return nativeCaller.invoke0(12154726862171804436);
    }
};

pub const UNK1 = struct {
    pub fn _0x48621C9FCA3EBD28(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(@as(u64, @intCast(5215762791066942760)), p0);
    }

    pub fn _0x81CBAE94390F9F89() void {
        _ = nativeCaller.invoke0(9352761002800684937);
    }

    pub fn _0x13B350B8AD0EEE10() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(1419567061659479568)));
    }

    pub fn _0x293220DA1B46CEBC(p0: f32, p1: f32, p2: windows.BOOL) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(2968471225523162812)), p0, p1, p2);
    }

    pub fn _0x208784099002BC30(p0: [*c]u8, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(2343987307675302960)), p0, p1);
    }

    pub fn _0xEB2D525B57F42B40() void {
        _ = nativeCaller.invoke0(16946291525136165696);
    }

    pub fn _0xF854439EFBB3B583() void {
        _ = nativeCaller.invoke0(17894001569556575619);
    }

    pub fn _0xAF66DCEE6609B148() void {
        _ = nativeCaller.invoke0(12639032320734114120);
    }

    pub fn _0x66972397E0757E7A(p0: types.Any, p1: types.Any, p2: types.Any) void {
        _ = nativeCaller.invoke3(@as(u64, @intCast(7392416448564788858)), p0, p1, p2);
    }

    pub fn _SET_RECORDING_MODE(mode: c_int) void {
        _ = nativeCaller.invoke1(14099697308171152513, mode);
    }

    pub fn _STOP_RECORDING_AND_SAVE_CLIP() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(511811220243728563)));
    }

    pub fn _STOP_RECORDING_AND_DISCARD_CLIP() void {
        _ = nativeCaller.invoke0(9852526917964636736);
    }

    pub fn _0x644546EC5287471B() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(7225259157996652315)));
    }

    pub fn _IS_RECORDING() windows.BOOL {
        return nativeCaller.invoke0(@as(u64, @intCast(1772107567646544052)));
    }

    pub fn _0xDF4B952F7D381B95() types.Any {
        return nativeCaller.invoke0(16090118124908059541);
    }

    pub fn _0x4282E08174868BE3() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4792639800086006755)));
    }

    pub fn _0x33D47E85B476ABCD(p0: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3734749103720410061)), p0);
    }
};

pub const UNK2 = struct {
    pub fn _0x7E2BD3EF6C205F09(p0: types.Any, p1: types.Any) void {
        _ = nativeCaller.invoke2(@as(u64, @intCast(9091593298042183433)), p0, p1);
    }

    pub fn _IS_INTERIOR_RENDERING_DISABLED() windows.BOOL {
        return nativeCaller.invoke0(10784866962491865944);
    }

    pub fn _0x5AD3932DAEB1E5D3() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(6544736507913168339)));
    }

    pub fn _0xE058175F8EAFE79A(p0: windows.BOOL) void {
        _ = nativeCaller.invoke1(16165696561629620122, p0);
    }

    pub fn _0x3353D13F09307691() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(3698529787668625041)));
    }

    pub fn _0x49DA8145672B2725() void {
        _ = nativeCaller.invoke0(@as(u64, @intCast(5321708044775270181)));
    }
};

pub const UNK3 = struct {
    pub fn _NETWORK_SHOP_GET_PRICE(hash: types.Hash, hash2: types.Hash, p2: windows.BOOL) c_int {
        return nativeCaller.invoke3(14010708620624046221, hash, hash2, p2);
    }

    pub fn _0x3C4487461E9B0DCB() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(4342744675922939339)));
    }

    pub fn _0x2B949A1E6AEC8F6A() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3140304295617662826)));
    }

    pub fn _0x85F6C9ABA1DE2BCF() types.Any {
        return nativeCaller.invoke0(9653124590307519439);
    }

    pub fn _0x357B152EF96C30B6() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3853697197642887350)));
    }

    pub fn _0xCF38DAFBB49EDE5E(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(14931925339148836446, p0);
    }

    pub fn _0xE3E5A7C64CA2C6ED() types.Any {
        return nativeCaller.invoke0(16421716086407481069);
    }

    pub fn _0x0395CB47B022E62C(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(258336062401865260)), p0);
    }

    pub fn _0xA135AC892A58FC07(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(11616380518993034247, p0);
    }

    pub fn _0x72EB7BA9B69BF6AB() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(8280848308694152875)));
    }

    pub fn _0x170910093218C8B9(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(1659875569343973561)), p0);
    }

    pub fn _0xC13C38E47EA5DF31(p0: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke1(13924066701951229745, p0);
    }

    pub fn _0xB24F0944DA203D9E(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(12848498453233286558, p0);
    }

    pub fn _0x74A0FD0688F1EE45(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(8403995109182533189)), p0);
    }

    pub fn _0x2F41D51BA3BCD1F1(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(3405237107956699633)), p0);
    }

    pub fn _0x810E8431C0614BF9() types.Any {
        return nativeCaller.invoke0(9299515629782518777);
    }

    pub fn _0x35A1B3E1D1315CFA(p0: windows.BOOL, p1: windows.BOOL) windows.BOOL {
        return nativeCaller.invoke2(@as(u64, @intCast(3864567737719282938)), p0, p1);
    }

    pub fn _0x897433D292B44130(p0: [*c]types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(9904598459991998768, p0, p1);
    }

    pub fn _NETWORK_SHOP_BASKET_START(p0: [*c]types.Any, p1: types.Any, p2: types.Any, p3: types.Any) windows.BOOL {
        return nativeCaller.invoke4(@as(u64, @intCast(2855010247841586046)), p0, p1, p2, p3);
    }

    pub fn _0xA65568121DF2EA26() types.Any {
        return nativeCaller.invoke0(11985600410337602086);
    }

    pub fn _0xF30980718C8ED876(p0: types.Player, p1: types.Object) types.Any {
        return nativeCaller.invoke2(17512669851184715894, p0, p1);
    }

    pub fn _0x27F76CC6C55AD30E() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2879890087697109774)));
    }

    pub fn _0xE1A0450ED46A7812(p0: types.Any, p1: [*c]types.Any) windows.BOOL {
        return nativeCaller.invoke2(16258070584803096594, p0, p1);
    }

    pub fn _0x39BE7CEA8D9CC8E6(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(@as(u64, @intCast(4160900452576970982)), p0);
    }

    pub fn _0x3C5FD37B5499582E(p0: [*c]types.Any, p1: types.Any, p2: types.Any, p3: types.Any, p4: types.Any, p5: types.Any) windows.BOOL {
        return nativeCaller.invoke6(@as(u64, @intCast(4350428291716962350)), p0, p1, p2, p3, p4, p5);
    }

    pub fn _0xE2A99A9B524BEFFF(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(16332755515527131135, p0);
    }

    pub fn _0x51F1A8E48C3D2F6D(p0: types.Any, p1: windows.BOOL, p2: types.Any) windows.BOOL {
        return nativeCaller.invoke3(@as(u64, @intCast(5904686286018260845)), p0, p1, p2);
    }

    pub fn _0x0A6D923DFFC9BD89() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(751417507822812553)));
    }

    pub fn _0x112CEF1615A1139F() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(1237626875751240607)));
    }

    pub fn _0xD47A2C1BA117471D(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(15310598380377818909, p0, p1);
    }

    pub fn _0xC2F7FE5309181C7D(p0: types.Any, p1: types.Any) windows.BOOL {
        return nativeCaller.invoke2(14048977195193867389, p0, p1);
    }

    pub fn _0x23789E777D14CE44() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(2555967024569568836)));
    }

    pub fn _0x350AA5EBC03D3BD2() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(3822049665738423250)));
    }

    pub fn _0x498C1E05CE5F7877() types.Any {
        return nativeCaller.invoke0(@as(u64, @intCast(5299643871794264183)));
    }

    pub fn _0x9507D4271988E1AE(p0: types.Any) windows.BOOL {
        return nativeCaller.invoke1(10738785100885451182, p0);
    }

    pub fn _GET_GAME_VERSION() [*c]u8 {
        return nativeCaller.invoke0(18206143712130542602);
    }
};
