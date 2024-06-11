const std = @import("std");

const DWORD = std.os.windows.DWORD;

pub const eAudioFlag = extern struct {
    bits: c_int = 0,

    pub const AudioFlagActivateSwitchWheelAudio: eAudioFlag = .{ .bits = 0 };
    pub const AudioFlagAllowCutsceneOverScreenFade: eAudioFlag = .{ .bits = 1 };
    pub const AudioFlagAllowForceRadioAfterRetune: eAudioFlag = .{ .bits = 2 };
    pub const AudioFlagAllowPainAndAmbientSpeechToPlayDuringCutscene: eAudioFlag = .{ .bits = 3 };
    pub const AudioFlagAllowPlayerAIOnMission: eAudioFlag = .{ .bits = 4 };
    pub const AudioFlagAllowPoliceScannerWhenPlayerHasNoControl: eAudioFlag = .{ .bits = 5 };
    pub const AudioFlagAllowRadioDuringSwitch: eAudioFlag = .{ .bits = 6 };
    pub const AudioFlagAllowRadioOverScreenFade: eAudioFlag = .{ .bits = 7 };
    pub const AudioFlagAllowScoreAndRadio: eAudioFlag = .{ .bits = 8 };
    pub const AudioFlagAllowScriptedSpeechInSlowMo: eAudioFlag = .{ .bits = 9 };
    pub const AudioFlagAvoidMissionCompleteDelay: eAudioFlag = .{ .bits = 10 };
    pub const AudioFlagDisableAbortConversationForDeathAndInjury: eAudioFlag = .{ .bits = 11 };
    pub const AudioFlagDisableAbortConversationForRagdoll: eAudioFlag = .{ .bits = 12 };
    pub const AudioFlagDisableBarks: eAudioFlag = .{ .bits = 13 };
    pub const AudioFlagDisableFlightMusic: eAudioFlag = .{ .bits = 14 };
    pub const AudioFlagDisableReplayScriptStreamRecording: eAudioFlag = .{ .bits = 15 };
    pub const AudioFlagEnableHeadsetBeep: eAudioFlag = .{ .bits = 16 };
    pub const AudioFlagForceConversationInterrupt: eAudioFlag = .{ .bits = 17 };
    pub const AudioFlagForceSeamlessRadioSwitch: eAudioFlag = .{ .bits = 18 };
    pub const AudioFlagForceSniperAudio: eAudioFlag = .{ .bits = 19 };
    pub const AudioFlagFrontendRadioDisabled: eAudioFlag = .{ .bits = 20 };
    pub const AudioFlagHoldMissionCompleteWhenPrepared: eAudioFlag = .{ .bits = 21 };
    pub const AudioFlagIsDirectorModeActive: eAudioFlag = .{ .bits = 22 };
    pub const AudioFlagIsPlayerOnMissionForSpeech: eAudioFlag = .{ .bits = 23 };
    pub const AudioFlagListenerReverbDisabled: eAudioFlag = .{ .bits = 24 };
    pub const AudioFlagLoadMPData: eAudioFlag = .{ .bits = 25 };
    pub const AudioFlagMobileRadioInGame: eAudioFlag = .{ .bits = 26 };
    pub const AudioFlagOnlyAllowScriptTriggerPoliceScanner: eAudioFlag = .{ .bits = 27 };
    pub const AudioFlagPlayMenuMusic: eAudioFlag = .{ .bits = 28 };
    pub const AudioFlagPoliceScannerDisabled: eAudioFlag = .{ .bits = 29 };
    pub const AudioFlagScriptedConvListenerMaySpeak: eAudioFlag = .{ .bits = 30 };
    pub const AudioFlagSpeechDucksScore: eAudioFlag = .{ .bits = 31 };
    pub const AudioFlagSuppressPlayerScubaBreathing: eAudioFlag = .{ .bits = 32 };
    pub const AudioFlagWantedMusicDisabled: eAudioFlag = .{ .bits = 33 };
    pub const AudioFlagWantedMusicOnMission: eAudioFlag = .{ .bits = 34 };
};

pub const eBlipColor = extern struct {
    bits: c_int = 0,

    pub const BlipColorWhite: eBlipColor = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const BlipColorRed: eBlipColor = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const BlipColorGreen: eBlipColor = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const BlipColorBlue: eBlipColor = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const BlipColorYellow: eBlipColor = .{ .bits = @as(c_uint, @intCast(66)) };
};

pub const eBlipSprite = extern struct {
    bits: c_int = 0,

    pub const BlipSpriteStandard: eBlipSprite = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const BlipSpriteBigBlip: eBlipSprite = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const BlipSpritePoliceOfficer: eBlipSprite = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const BlipSpritePoliceArea: eBlipSprite = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const BlipSpriteSquare: eBlipSprite = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const BlipSpritePlayer: eBlipSprite = .{ .bits = @as(c_uint, @intCast(6)) };
    pub const BlipSpriteNorth: eBlipSprite = .{ .bits = @as(c_uint, @intCast(7)) };
    pub const BlipSpriteWaypoint: eBlipSprite = .{ .bits = @as(c_uint, @intCast(8)) };
    pub const BlipSpriteBigCircle: eBlipSprite = .{ .bits = @as(c_uint, @intCast(9)) };
    pub const BlipSpriteBigCircleOutline: eBlipSprite = .{ .bits = @as(c_uint, @intCast(10)) };
    pub const BlipSpriteArrowUpOutlined: eBlipSprite = .{ .bits = @as(c_uint, @intCast(11)) };
    pub const BlipSpriteArrowDownOutlined: eBlipSprite = .{ .bits = @as(c_uint, @intCast(12)) };
    pub const BlipSpriteArrowUp: eBlipSprite = .{ .bits = @as(c_uint, @intCast(13)) };
    pub const BlipSpriteArrowDown: eBlipSprite = .{ .bits = @as(c_uint, @intCast(14)) };
    pub const BlipSpritePoliceHelicopterAnimated: eBlipSprite = .{ .bits = @as(c_uint, @intCast(15)) };
    pub const BlipSpriteJet: eBlipSprite = .{ .bits = @as(c_uint, @intCast(16)) };
    pub const BlipSpriteNumber1: eBlipSprite = .{ .bits = @as(c_uint, @intCast(17)) };
    pub const BlipSpriteNumber2: eBlipSprite = .{ .bits = @as(c_uint, @intCast(18)) };
    pub const BlipSpriteNumber3: eBlipSprite = .{ .bits = @as(c_uint, @intCast(19)) };
    pub const BlipSpriteNumber4: eBlipSprite = .{ .bits = @as(c_uint, @intCast(20)) };
    pub const BlipSpriteNumber5: eBlipSprite = .{ .bits = @as(c_uint, @intCast(21)) };
    pub const BlipSpriteNumber6: eBlipSprite = .{ .bits = @as(c_uint, @intCast(22)) };
    pub const BlipSpriteNumber7: eBlipSprite = .{ .bits = @as(c_uint, @intCast(23)) };
    pub const BlipSpriteNumber8: eBlipSprite = .{ .bits = @as(c_uint, @intCast(24)) };
    pub const BlipSpriteNumber9: eBlipSprite = .{ .bits = @as(c_uint, @intCast(25)) };
    pub const BlipSpriteNumber10: eBlipSprite = .{ .bits = @as(c_uint, @intCast(26)) };
    pub const BlipSpriteGTAOCrew: eBlipSprite = .{ .bits = @as(c_uint, @intCast(27)) };
    pub const BlipSpriteGTAOFriendly: eBlipSprite = .{ .bits = @as(c_uint, @intCast(28)) };
    pub const BlipSpriteLift: eBlipSprite = .{ .bits = @as(c_uint, @intCast(36)) };
    pub const BlipSpriteRaceFinish: eBlipSprite = .{ .bits = @as(c_uint, @intCast(38)) };
    pub const BlipSpriteSafehouse: eBlipSprite = .{ .bits = @as(c_uint, @intCast(40)) };
    pub const BlipSpritePoliceOfficer2: eBlipSprite = .{ .bits = @as(c_uint, @intCast(41)) };
    pub const BlipSpritePoliceCarDot: eBlipSprite = .{ .bits = @as(c_uint, @intCast(42)) };
    pub const BlipSpritePoliceHelicopter: eBlipSprite = .{ .bits = @as(c_uint, @intCast(43)) };
    pub const BlipSpriteChatBubble: eBlipSprite = .{ .bits = @as(c_uint, @intCast(47)) };
    pub const BlipSpriteGarage2: eBlipSprite = .{ .bits = @as(c_uint, @intCast(50)) };
    pub const BlipSpriteDrugs: eBlipSprite = .{ .bits = @as(c_uint, @intCast(51)) };
    pub const BlipSpriteStore: eBlipSprite = .{ .bits = @as(c_uint, @intCast(52)) };
    pub const BlipSpritePoliceCar: eBlipSprite = .{ .bits = @as(c_uint, @intCast(56)) };
    pub const BlipSpritePolicePlayer: eBlipSprite = .{ .bits = @as(c_uint, @intCast(58)) };
    pub const BlipSpritePoliceStation: eBlipSprite = .{ .bits = @as(c_uint, @intCast(60)) };
    pub const BlipSpriteHospital: eBlipSprite = .{ .bits = @as(c_uint, @intCast(61)) };
    pub const BlipSpriteHelicopter: eBlipSprite = .{ .bits = @as(c_uint, @intCast(64)) };
    pub const BlipSpriteStrangersAndFreaks: eBlipSprite = .{ .bits = @as(c_uint, @intCast(65)) };
    pub const BlipSpriteArmoredTruck: eBlipSprite = .{ .bits = @as(c_uint, @intCast(66)) };
    pub const BlipSpriteTowTruck: eBlipSprite = .{ .bits = @as(c_uint, @intCast(68)) };
    pub const BlipSpriteBarber: eBlipSprite = .{ .bits = @as(c_uint, @intCast(71)) };
    pub const BlipSpriteLosSantosCustoms: eBlipSprite = .{ .bits = @as(c_uint, @intCast(72)) };
    pub const BlipSpriteClothes: eBlipSprite = .{ .bits = @as(c_uint, @intCast(73)) };
    pub const BlipSpriteTattooParlor: eBlipSprite = .{ .bits = @as(c_uint, @intCast(75)) };
    pub const BlipSpriteSimeon: eBlipSprite = .{ .bits = @as(c_uint, @intCast(76)) };
    pub const BlipSpriteLester: eBlipSprite = .{ .bits = @as(c_uint, @intCast(77)) };
    pub const BlipSpriteMichael: eBlipSprite = .{ .bits = @as(c_uint, @intCast(78)) };
    pub const BlipSpriteTrevor: eBlipSprite = .{ .bits = @as(c_uint, @intCast(79)) };
    pub const BlipSpriteRampage: eBlipSprite = .{ .bits = @as(c_uint, @intCast(84)) };
    pub const BlipSpriteVinewoodTours: eBlipSprite = .{ .bits = @as(c_uint, @intCast(85)) };
    pub const BlipSpriteLamar: eBlipSprite = .{ .bits = @as(c_uint, @intCast(86)) };
    pub const BlipSpriteFranklin: eBlipSprite = .{ .bits = @as(c_uint, @intCast(88)) };
    pub const BlipSpriteChinese: eBlipSprite = .{ .bits = @as(c_uint, @intCast(89)) };
    pub const BlipSpriteAirport: eBlipSprite = .{ .bits = @as(c_uint, @intCast(90)) };
    pub const BlipSpriteBar: eBlipSprite = .{ .bits = @as(c_uint, @intCast(93)) };
    pub const BlipSpriteBaseJump: eBlipSprite = .{ .bits = @as(c_uint, @intCast(94)) };
    pub const BlipSpriteCarWash: eBlipSprite = .{ .bits = @as(c_uint, @intCast(100)) };
    pub const BlipSpriteComedyClub: eBlipSprite = .{ .bits = @as(c_uint, @intCast(102)) };
    pub const BlipSpriteDart: eBlipSprite = .{ .bits = @as(c_uint, @intCast(103)) };
    pub const BlipSpriteFIB: eBlipSprite = .{ .bits = @as(c_uint, @intCast(106)) };
    pub const BlipSpriteDollarSign: eBlipSprite = .{ .bits = @as(c_uint, @intCast(108)) };
    pub const BlipSpriteGolf: eBlipSprite = .{ .bits = @as(c_uint, @intCast(109)) };
    pub const BlipSpriteAmmuNation: eBlipSprite = .{ .bits = @as(c_uint, @intCast(110)) };
    pub const BlipSpriteExile: eBlipSprite = .{ .bits = @as(c_uint, @intCast(112)) };
    pub const BlipSpriteShootingRange: eBlipSprite = .{ .bits = @as(c_uint, @intCast(119)) };
    pub const BlipSpriteSolomon: eBlipSprite = .{ .bits = @as(c_uint, @intCast(120)) };
    pub const BlipSpriteStripClub: eBlipSprite = .{ .bits = @as(c_uint, @intCast(121)) };
    pub const BlipSpriteTennis: eBlipSprite = .{ .bits = @as(c_uint, @intCast(122)) };
    pub const BlipSpriteTriathlon: eBlipSprite = .{ .bits = @as(c_uint, @intCast(126)) };
    pub const BlipSpriteOffRoadRaceFinish: eBlipSprite = .{ .bits = @as(c_uint, @intCast(127)) };
    pub const BlipSpriteKey: eBlipSprite = .{ .bits = @as(c_uint, @intCast(134)) };
    pub const BlipSpriteMovieTheater: eBlipSprite = .{ .bits = @as(c_uint, @intCast(135)) };
    pub const BlipSpriteMusic: eBlipSprite = .{ .bits = @as(c_uint, @intCast(136)) };
    pub const BlipSpriteMarijuana: eBlipSprite = .{ .bits = @as(c_uint, @intCast(140)) };
    pub const BlipSpriteHunting: eBlipSprite = .{ .bits = @as(c_uint, @intCast(141)) };
    pub const BlipSpriteArmsTraffickingGround: eBlipSprite = .{ .bits = @as(c_uint, @intCast(147)) };
    pub const BlipSpriteNigel: eBlipSprite = .{ .bits = @as(c_uint, @intCast(149)) };
    pub const BlipSpriteAssaultRifle: eBlipSprite = .{ .bits = @as(c_uint, @intCast(150)) };
    pub const BlipSpriteBat: eBlipSprite = .{ .bits = @as(c_uint, @intCast(151)) };
    pub const BlipSpriteGrenade: eBlipSprite = .{ .bits = @as(c_uint, @intCast(152)) };
    pub const BlipSpriteHealth: eBlipSprite = .{ .bits = @as(c_uint, @intCast(153)) };
    pub const BlipSpriteKnife: eBlipSprite = .{ .bits = @as(c_uint, @intCast(154)) };
    pub const BlipSpriteMolotov: eBlipSprite = .{ .bits = @as(c_uint, @intCast(155)) };
    pub const BlipSpritePistol: eBlipSprite = .{ .bits = @as(c_uint, @intCast(156)) };
    pub const BlipSpriteRPG: eBlipSprite = .{ .bits = @as(c_uint, @intCast(157)) };
    pub const BlipSpriteShotgun: eBlipSprite = .{ .bits = @as(c_uint, @intCast(158)) };
    pub const BlipSpriteSMG: eBlipSprite = .{ .bits = @as(c_uint, @intCast(159)) };
    pub const BlipSpriteSniper: eBlipSprite = .{ .bits = @as(c_uint, @intCast(160)) };
    pub const BlipSpriteSonicWave: eBlipSprite = .{ .bits = @as(c_uint, @intCast(161)) };
    pub const BlipSpritePointOfInterest: eBlipSprite = .{ .bits = @as(c_uint, @intCast(162)) };
    pub const BlipSpriteGTAOPassive: eBlipSprite = .{ .bits = @as(c_uint, @intCast(163)) };
    pub const BlipSpriteGTAOUsingMenu: eBlipSprite = .{ .bits = @as(c_uint, @intCast(164)) };
    pub const BlipSpriteLink: eBlipSprite = .{ .bits = @as(c_uint, @intCast(171)) };
    pub const BlipSpriteMinigun: eBlipSprite = .{ .bits = @as(c_uint, @intCast(173)) };
    pub const BlipSpriteGrenadeLauncher: eBlipSprite = .{ .bits = @as(c_uint, @intCast(174)) };
    pub const BlipSpriteArmor: eBlipSprite = .{ .bits = @as(c_uint, @intCast(175)) };
    pub const BlipSpriteCastle: eBlipSprite = .{ .bits = @as(c_uint, @intCast(176)) };
    pub const BlipSpriteCamera: eBlipSprite = .{ .bits = @as(c_uint, @intCast(184)) };
    pub const BlipSpriteHandcuffs: eBlipSprite = .{ .bits = @as(c_uint, @intCast(188)) };
    pub const BlipSpriteYoga: eBlipSprite = .{ .bits = @as(c_uint, @intCast(197)) };
    pub const BlipSpriteCab: eBlipSprite = .{ .bits = @as(c_uint, @intCast(198)) };
    pub const BlipSpriteNumber11: eBlipSprite = .{ .bits = @as(c_uint, @intCast(199)) };
    pub const BlipSpriteNumber12: eBlipSprite = .{ .bits = @as(c_uint, @intCast(200)) };
    pub const BlipSpriteNumber13: eBlipSprite = .{ .bits = @as(c_uint, @intCast(201)) };
    pub const BlipSpriteNumber14: eBlipSprite = .{ .bits = @as(c_uint, @intCast(202)) };
    pub const BlipSpriteNumber15: eBlipSprite = .{ .bits = @as(c_uint, @intCast(203)) };
    pub const BlipSpriteNumber16: eBlipSprite = .{ .bits = @as(c_uint, @intCast(204)) };
    pub const BlipSpriteShrink: eBlipSprite = .{ .bits = @as(c_uint, @intCast(205)) };
    pub const BlipSpriteEpsilon: eBlipSprite = .{ .bits = @as(c_uint, @intCast(206)) };
    pub const BlipSpritePersonalVehicleCar: eBlipSprite = .{ .bits = @as(c_uint, @intCast(225)) };
    pub const BlipSpritePersonalVehicleBike: eBlipSprite = .{ .bits = @as(c_uint, @intCast(226)) };
    pub const BlipSpriteCustody: eBlipSprite = .{ .bits = @as(c_uint, @intCast(237)) };
    pub const BlipSpriteArmsTraffickingAir: eBlipSprite = .{ .bits = @as(c_uint, @intCast(251)) };
    pub const BlipSpriteFairground: eBlipSprite = .{ .bits = @as(c_uint, @intCast(266)) };
    pub const BlipSpritePropertyManagement: eBlipSprite = .{ .bits = @as(c_uint, @intCast(267)) };
    pub const BlipSpriteAltruist: eBlipSprite = .{ .bits = @as(c_uint, @intCast(269)) };
    pub const BlipSpriteEnemy: eBlipSprite = .{ .bits = @as(c_uint, @intCast(270)) };
    pub const BlipSpriteChop: eBlipSprite = .{ .bits = @as(c_uint, @intCast(273)) };
    pub const BlipSpriteDead: eBlipSprite = .{ .bits = @as(c_uint, @intCast(274)) };
    pub const BlipSpriteHooker: eBlipSprite = .{ .bits = @as(c_uint, @intCast(279)) };
    pub const BlipSpriteFriend: eBlipSprite = .{ .bits = @as(c_uint, @intCast(280)) };
    pub const BlipSpriteBountyHit: eBlipSprite = .{ .bits = @as(c_uint, @intCast(303)) };
    pub const BlipSpriteGTAOMission: eBlipSprite = .{ .bits = @as(c_uint, @intCast(304)) };
    pub const BlipSpriteGTAOSurvival: eBlipSprite = .{ .bits = @as(c_uint, @intCast(305)) };
    pub const BlipSpriteCrateDrop: eBlipSprite = .{ .bits = @as(c_uint, @intCast(306)) };
    pub const BlipSpritePlaneDrop: eBlipSprite = .{ .bits = @as(c_uint, @intCast(307)) };
    pub const BlipSpriteSub: eBlipSprite = .{ .bits = @as(c_uint, @intCast(308)) };
    pub const BlipSpriteRace: eBlipSprite = .{ .bits = @as(c_uint, @intCast(309)) };
    pub const BlipSpriteDeathmatch: eBlipSprite = .{ .bits = @as(c_uint, @intCast(310)) };
    pub const BlipSpriteArmWrestling: eBlipSprite = .{ .bits = @as(c_uint, @intCast(311)) };
    pub const BlipSpriteAmmuNationShootingRange: eBlipSprite = .{ .bits = @as(c_uint, @intCast(313)) };
    pub const BlipSpriteRaceAir: eBlipSprite = .{ .bits = @as(c_uint, @intCast(314)) };
    pub const BlipSpriteRaceCar: eBlipSprite = .{ .bits = @as(c_uint, @intCast(315)) };
    pub const BlipSpriteRaceSea: eBlipSprite = .{ .bits = @as(c_uint, @intCast(316)) };
    pub const BlipSpriteGarbageTruck: eBlipSprite = .{ .bits = @as(c_uint, @intCast(318)) };
    pub const BlipSpriteSafehouseForSale: eBlipSprite = .{ .bits = @as(c_uint, @intCast(350)) };
    pub const BlipSpritePackage: eBlipSprite = .{ .bits = @as(c_uint, @intCast(351)) };
    pub const BlipSpriteMartinMadrazo: eBlipSprite = .{ .bits = @as(c_uint, @intCast(352)) };
    pub const BlipSpriteEnemyHelicopter: eBlipSprite = .{ .bits = @as(c_uint, @intCast(353)) };
    pub const BlipSpriteBoost: eBlipSprite = .{ .bits = @as(c_uint, @intCast(354)) };
    pub const BlipSpriteDevin: eBlipSprite = .{ .bits = @as(c_uint, @intCast(355)) };
    pub const BlipSpriteMarina: eBlipSprite = .{ .bits = @as(c_uint, @intCast(356)) };
    pub const BlipSpriteGarage: eBlipSprite = .{ .bits = @as(c_uint, @intCast(357)) };
    pub const BlipSpriteGolfFlag: eBlipSprite = .{ .bits = @as(c_uint, @intCast(358)) };
    pub const BlipSpriteHangar: eBlipSprite = .{ .bits = @as(c_uint, @intCast(359)) };
    pub const BlipSpriteHelipad: eBlipSprite = .{ .bits = @as(c_uint, @intCast(360)) };
    pub const BlipSpriteJerryCan: eBlipSprite = .{ .bits = @as(c_uint, @intCast(361)) };
    pub const BlipSpriteMasks: eBlipSprite = .{ .bits = @as(c_uint, @intCast(362)) };
    pub const BlipSpriteHeistSetup: eBlipSprite = .{ .bits = @as(c_uint, @intCast(363)) };
    pub const BlipSpriteIncapacitated: eBlipSprite = .{ .bits = @as(c_uint, @intCast(364)) };
    pub const BlipSpritePickupSpawn: eBlipSprite = .{ .bits = @as(c_uint, @intCast(365)) };
    pub const BlipSpriteBoilerSuit: eBlipSprite = .{ .bits = @as(c_uint, @intCast(366)) };
    pub const BlipSpriteCompleted: eBlipSprite = .{ .bits = @as(c_uint, @intCast(367)) };
    pub const BlipSpriteRockets: eBlipSprite = .{ .bits = @as(c_uint, @intCast(368)) };
    pub const BlipSpriteGarageForSale: eBlipSprite = .{ .bits = @as(c_uint, @intCast(369)) };
    pub const BlipSpriteHelipadForSale: eBlipSprite = .{ .bits = @as(c_uint, @intCast(370)) };
    pub const BlipSpriteMarinaForSale: eBlipSprite = .{ .bits = @as(c_uint, @intCast(371)) };
    pub const BlipSpriteHangarForSale: eBlipSprite = .{ .bits = @as(c_uint, @intCast(372)) };
    pub const BlipSpriteBusiness: eBlipSprite = .{ .bits = @as(c_uint, @intCast(374)) };
    pub const BlipSpriteBusinessForSale: eBlipSprite = .{ .bits = @as(c_uint, @intCast(375)) };
    pub const BlipSpriteRaceBike: eBlipSprite = .{ .bits = @as(c_uint, @intCast(376)) };
    pub const BlipSpriteParachute: eBlipSprite = .{ .bits = @as(c_uint, @intCast(377)) };
    pub const BlipSpriteTeamDeathmatch: eBlipSprite = .{ .bits = @as(c_uint, @intCast(378)) };
    pub const BlipSpriteRaceFoot: eBlipSprite = .{ .bits = @as(c_uint, @intCast(379)) };
    pub const BlipSpriteVehicleDeathmatch: eBlipSprite = .{ .bits = @as(c_uint, @intCast(380)) };
    pub const BlipSpriteBarry: eBlipSprite = .{ .bits = @as(c_uint, @intCast(381)) };
    pub const BlipSpriteDom: eBlipSprite = .{ .bits = @as(c_uint, @intCast(382)) };
    pub const BlipSpriteMaryAnn: eBlipSprite = .{ .bits = @as(c_uint, @intCast(383)) };
    pub const BlipSpriteCletus: eBlipSprite = .{ .bits = @as(c_uint, @intCast(384)) };
    pub const BlipSpriteJosh: eBlipSprite = .{ .bits = @as(c_uint, @intCast(385)) };
    pub const BlipSpriteMinute: eBlipSprite = .{ .bits = @as(c_uint, @intCast(386)) };
    pub const BlipSpriteOmega: eBlipSprite = .{ .bits = @as(c_uint, @intCast(387)) };
    pub const BlipSpriteTonya: eBlipSprite = .{ .bits = @as(c_uint, @intCast(388)) };
    pub const BlipSpritePaparazzo: eBlipSprite = .{ .bits = @as(c_uint, @intCast(389)) };
    pub const BlipSpriteCrosshair: eBlipSprite = .{ .bits = @as(c_uint, @intCast(390)) };
    pub const BlipSpriteCreator: eBlipSprite = .{ .bits = @as(c_uint, @intCast(398)) };
    pub const BlipSpriteCreatorDirection: eBlipSprite = .{ .bits = @as(c_uint, @intCast(399)) };
    pub const BlipSpriteAbigail: eBlipSprite = .{ .bits = @as(c_uint, @intCast(400)) };
    pub const BlipSpriteBlimp: eBlipSprite = .{ .bits = @as(c_uint, @intCast(401)) };
    pub const BlipSpriteRepair: eBlipSprite = .{ .bits = @as(c_uint, @intCast(402)) };
    pub const BlipSpriteTestosterone: eBlipSprite = .{ .bits = @as(c_uint, @intCast(403)) };
    pub const BlipSpriteDinghy: eBlipSprite = .{ .bits = @as(c_uint, @intCast(404)) };
    pub const BlipSpriteFanatic: eBlipSprite = .{ .bits = @as(c_uint, @intCast(405)) };
    pub const BlipSpriteInformation: eBlipSprite = .{ .bits = @as(c_uint, @intCast(407)) };
    pub const BlipSpriteCaptureBriefcase: eBlipSprite = .{ .bits = @as(c_uint, @intCast(408)) };
    pub const BlipSpriteLastTeamStanding: eBlipSprite = .{ .bits = @as(c_uint, @intCast(409)) };
    pub const BlipSpriteBoat: eBlipSprite = .{ .bits = @as(c_uint, @intCast(410)) };
    pub const BlipSpriteCaptureHouse: eBlipSprite = .{ .bits = @as(c_uint, @intCast(411)) };
    pub const BlipSpriteJerryCan2: eBlipSprite = .{ .bits = @as(c_uint, @intCast(415)) };
    pub const BlipSpriteRP: eBlipSprite = .{ .bits = @as(c_uint, @intCast(416)) };
    pub const BlipSpriteGTAOPlayerSafehouse: eBlipSprite = .{ .bits = @as(c_uint, @intCast(417)) };
    pub const BlipSpriteGTAOPlayerSafehouseDead: eBlipSprite = .{ .bits = @as(c_uint, @intCast(418)) };
    pub const BlipSpriteCaptureAmericanFlag: eBlipSprite = .{ .bits = @as(c_uint, @intCast(419)) };
    pub const BlipSpriteCaptureFlag: eBlipSprite = .{ .bits = @as(c_uint, @intCast(420)) };
    pub const BlipSpriteTank: eBlipSprite = .{ .bits = @as(c_uint, @intCast(421)) };
    pub const BlipSpriteHelicopterAnimated: eBlipSprite = .{ .bits = @as(c_uint, @intCast(422)) };
    pub const BlipSpritePlane: eBlipSprite = .{ .bits = @as(c_uint, @intCast(423)) };
    pub const BlipSpritePlayerNoColor: eBlipSprite = .{ .bits = @as(c_uint, @intCast(425)) };
    pub const BlipSpriteGunCar: eBlipSprite = .{ .bits = @as(c_uint, @intCast(426)) };
    pub const BlipSpriteSpeedboat: eBlipSprite = .{ .bits = @as(c_uint, @intCast(427)) };
    pub const BlipSpriteHeist: eBlipSprite = .{ .bits = @as(c_uint, @intCast(428)) };
    pub const BlipSpriteStopwatch: eBlipSprite = .{ .bits = @as(c_uint, @intCast(430)) };
    pub const BlipSpriteDollarSignCircled: eBlipSprite = .{ .bits = @as(c_uint, @intCast(431)) };
    pub const BlipSpriteCrosshair2: eBlipSprite = .{ .bits = @as(c_uint, @intCast(432)) };
    pub const BlipSpriteDollarSignSquared: eBlipSprite = .{ .bits = @as(c_uint, @intCast(434)) };
};

pub const eCameraShake = extern struct {
    bits: c_int = 0,

    pub const CameraShakeHand: eCameraShake = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const CameraShakeSmallExplosion: eCameraShake = .{ .bits = eCameraShake.CameraShakeHand.bits + 1 };
    pub const CameraShakeMediumExplosion: eCameraShake = .{ .bits = eCameraShake.CameraShakeHand.bits + 2 };
    pub const CameraShakeLargeExplosion: eCameraShake = .{ .bits = eCameraShake.CameraShakeHand.bits + 3 };
    pub const CameraShakeJolt: eCameraShake = .{ .bits = eCameraShake.CameraShakeHand.bits + 4 };
    pub const CameraShakeVibrate: eCameraShake = .{ .bits = eCameraShake.CameraShakeHand.bits + 5 };
    pub const CameraShakeRoadVibration: eCameraShake = .{ .bits = eCameraShake.CameraShakeHand.bits + 6 };
    pub const CameraShakeDrunk: eCameraShake = .{ .bits = eCameraShake.CameraShakeHand.bits + 7 };
    pub const CameraShakeSkyDiving: eCameraShake = .{ .bits = eCameraShake.CameraShakeHand.bits + 8 };
    pub const CameraShakeFamilyDrugTrip: eCameraShake = .{ .bits = eCameraShake.CameraShakeHand.bits + 9 };
    pub const CameraShakeDeathFail: eCameraShake = .{ .bits = eCameraShake.CameraShakeHand.bits + 10 };
};

pub const eControl = extern struct {
    bits: c_int = 0,

    pub const ControlNextCamera: eControl = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const ControlLookLeftRight: eControl = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const ControlLookUpDown: eControl = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const ControlLookUpOnly: eControl = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const ControlLookDownOnly: eControl = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const ControlLookLeftOnly: eControl = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const ControlLookRightOnly: eControl = .{ .bits = @as(c_uint, @intCast(6)) };
    pub const ControlCinematicSlowMo: eControl = .{ .bits = @as(c_uint, @intCast(7)) };
    pub const ControlFlyUpDown: eControl = .{ .bits = @as(c_uint, @intCast(8)) };
    pub const ControlFlyLeftRight: eControl = .{ .bits = @as(c_uint, @intCast(9)) };
    pub const ControlScriptedFlyZUp: eControl = .{ .bits = @as(c_uint, @intCast(10)) };
    pub const ControlScriptedFlyZDown: eControl = .{ .bits = @as(c_uint, @intCast(11)) };
    pub const ControlWeaponWheelUpDown: eControl = .{ .bits = @as(c_uint, @intCast(12)) };
    pub const ControlWeaponWheelLeftRight: eControl = .{ .bits = @as(c_uint, @intCast(13)) };
    pub const ControlWeaponWheelNext: eControl = .{ .bits = @as(c_uint, @intCast(14)) };
    pub const ControlWeaponWheelPrev: eControl = .{ .bits = @as(c_uint, @intCast(15)) };
    pub const ControlSelectNextWeapon: eControl = .{ .bits = @as(c_uint, @intCast(16)) };
    pub const ControlSelectPrevWeapon: eControl = .{ .bits = @as(c_uint, @intCast(17)) };
    pub const ControlSkipCutscene: eControl = .{ .bits = @as(c_uint, @intCast(18)) };
    pub const ControlCharacterWheel: eControl = .{ .bits = @as(c_uint, @intCast(19)) };
    pub const ControlMultiplayerInfo: eControl = .{ .bits = @as(c_uint, @intCast(20)) };
    pub const ControlSprint: eControl = .{ .bits = @as(c_uint, @intCast(21)) };
    pub const ControlJump: eControl = .{ .bits = @as(c_uint, @intCast(22)) };
    pub const ControlEnter: eControl = .{ .bits = @as(c_uint, @intCast(23)) };
    pub const ControlAttack: eControl = .{ .bits = @as(c_uint, @intCast(24)) };
    pub const ControlAim: eControl = .{ .bits = @as(c_uint, @intCast(25)) };
    pub const ControlLookBehind: eControl = .{ .bits = @as(c_uint, @intCast(26)) };
    pub const ControlPhone: eControl = .{ .bits = @as(c_uint, @intCast(27)) };
    pub const ControlSpecialAbility: eControl = .{ .bits = @as(c_uint, @intCast(28)) };
    pub const ControlSpecialAbilitySecondary: eControl = .{ .bits = @as(c_uint, @intCast(29)) };
    pub const ControlMoveLeftRight: eControl = .{ .bits = @as(c_uint, @intCast(30)) };
    pub const ControlMoveUpDown: eControl = .{ .bits = @as(c_uint, @intCast(31)) };
    pub const ControlMoveUpOnly: eControl = .{ .bits = @as(c_uint, @intCast(32)) };
    pub const ControlMoveDownOnly: eControl = .{ .bits = @as(c_uint, @intCast(33)) };
    pub const ControlMoveLeftOnly: eControl = .{ .bits = @as(c_uint, @intCast(34)) };
    pub const ControlMoveRightOnly: eControl = .{ .bits = @as(c_uint, @intCast(35)) };
    pub const ControlDuck: eControl = .{ .bits = @as(c_uint, @intCast(36)) };
    pub const ControlSelectWeapon: eControl = .{ .bits = @as(c_uint, @intCast(37)) };
    pub const ControlPickup: eControl = .{ .bits = @as(c_uint, @intCast(38)) };
    pub const ControlSniperZoom: eControl = .{ .bits = @as(c_uint, @intCast(39)) };
    pub const ControlSniperZoomInOnly: eControl = .{ .bits = @as(c_uint, @intCast(40)) };
    pub const ControlSniperZoomOutOnly: eControl = .{ .bits = @as(c_uint, @intCast(41)) };
    pub const ControlSniperZoomInSecondary: eControl = .{ .bits = @as(c_uint, @intCast(42)) };
    pub const ControlSniperZoomOutSecondary: eControl = .{ .bits = @as(c_uint, @intCast(43)) };
    pub const ControlCover: eControl = .{ .bits = @as(c_uint, @intCast(44)) };
    pub const ControlReload: eControl = .{ .bits = @as(c_uint, @intCast(45)) };
    pub const ControlTalk: eControl = .{ .bits = @as(c_uint, @intCast(46)) };
    pub const ControlDetonate: eControl = .{ .bits = @as(c_uint, @intCast(47)) };
    pub const ControlHUDSpecial: eControl = .{ .bits = @as(c_uint, @intCast(48)) };
    pub const ControlArrest: eControl = .{ .bits = @as(c_uint, @intCast(49)) };
    pub const ControlAccurateAim: eControl = .{ .bits = @as(c_uint, @intCast(50)) };
    pub const ControlContext: eControl = .{ .bits = @as(c_uint, @intCast(51)) };
    pub const ControlContextSecondary: eControl = .{ .bits = @as(c_uint, @intCast(52)) };
    pub const ControlWeaponSpecial: eControl = .{ .bits = @as(c_uint, @intCast(53)) };
    pub const ControlWeaponSpecial2: eControl = .{ .bits = @as(c_uint, @intCast(54)) };
    pub const ControlDive: eControl = .{ .bits = @as(c_uint, @intCast(55)) };
    pub const ControlDropWeapon: eControl = .{ .bits = @as(c_uint, @intCast(56)) };
    pub const ControlDropAmmo: eControl = .{ .bits = @as(c_uint, @intCast(57)) };
    pub const ControlThrowGrenade: eControl = .{ .bits = @as(c_uint, @intCast(58)) };
    pub const ControlVehicleMoveLeftRight: eControl = .{ .bits = @as(c_uint, @intCast(59)) };
    pub const ControlVehicleMoveUpDown: eControl = .{ .bits = @as(c_uint, @intCast(60)) };
    pub const ControlVehicleMoveUpOnly: eControl = .{ .bits = @as(c_uint, @intCast(61)) };
    pub const ControlVehicleMoveDownOnly: eControl = .{ .bits = @as(c_uint, @intCast(62)) };
    pub const ControlVehicleMoveLeftOnly: eControl = .{ .bits = @as(c_uint, @intCast(63)) };
    pub const ControlVehicleMoveRightOnly: eControl = .{ .bits = @as(c_uint, @intCast(64)) };
    pub const ControlVehicleSpecial: eControl = .{ .bits = @as(c_uint, @intCast(65)) };
    pub const ControlVehicleGunLeftRight: eControl = .{ .bits = @as(c_uint, @intCast(66)) };
    pub const ControlVehicleGunUpDown: eControl = .{ .bits = @as(c_uint, @intCast(67)) };
    pub const ControlVehicleAim: eControl = .{ .bits = @as(c_uint, @intCast(68)) };
    pub const ControlVehicleAttack: eControl = .{ .bits = @as(c_uint, @intCast(69)) };
    pub const ControlVehicleAttack2: eControl = .{ .bits = @as(c_uint, @intCast(70)) };
    pub const ControlVehicleAccelerate: eControl = .{ .bits = @as(c_uint, @intCast(71)) };
    pub const ControlVehicleBrake: eControl = .{ .bits = @as(c_uint, @intCast(72)) };
    pub const ControlVehicleDuck: eControl = .{ .bits = @as(c_uint, @intCast(73)) };
    pub const ControlVehicleHeadlight: eControl = .{ .bits = @as(c_uint, @intCast(74)) };
    pub const ControlVehicleExit: eControl = .{ .bits = @as(c_uint, @intCast(75)) };
    pub const ControlVehicleHandbrake: eControl = .{ .bits = @as(c_uint, @intCast(76)) };
    pub const ControlVehicleHotwireLeft: eControl = .{ .bits = @as(c_uint, @intCast(77)) };
    pub const ControlVehicleHotwireRight: eControl = .{ .bits = @as(c_uint, @intCast(78)) };
    pub const ControlVehicleLookBehind: eControl = .{ .bits = @as(c_uint, @intCast(79)) };
    pub const ControlVehicleCinCam: eControl = .{ .bits = @as(c_uint, @intCast(80)) };
    pub const ControlVehicleNextRadio: eControl = .{ .bits = @as(c_uint, @intCast(81)) };
    pub const ControlVehiclePrevRadio: eControl = .{ .bits = @as(c_uint, @intCast(82)) };
    pub const ControlVehicleNextRadioTrack: eControl = .{ .bits = @as(c_uint, @intCast(83)) };
    pub const ControlVehiclePrevRadioTrack: eControl = .{ .bits = @as(c_uint, @intCast(84)) };
    pub const ControlVehicleRadioWheel: eControl = .{ .bits = @as(c_uint, @intCast(85)) };
    pub const ControlVehicleHorn: eControl = .{ .bits = @as(c_uint, @intCast(86)) };
    pub const ControlVehicleFlyThrottleUp: eControl = .{ .bits = @as(c_uint, @intCast(87)) };
    pub const ControlVehicleFlyThrottleDown: eControl = .{ .bits = @as(c_uint, @intCast(88)) };
    pub const ControlVehicleFlyYawLeft: eControl = .{ .bits = @as(c_uint, @intCast(89)) };
    pub const ControlVehicleFlyYawRight: eControl = .{ .bits = @as(c_uint, @intCast(90)) };
    pub const ControlVehiclePassengerAim: eControl = .{ .bits = @as(c_uint, @intCast(91)) };
    pub const ControlVehiclePassengerAttack: eControl = .{ .bits = @as(c_uint, @intCast(92)) };
    pub const ControlVehicleSpecialAbilityFranklin: eControl = .{ .bits = @as(c_uint, @intCast(93)) };
    pub const ControlVehicleStuntUpDown: eControl = .{ .bits = @as(c_uint, @intCast(94)) };
    pub const ControlVehicleCinematicUpDown: eControl = .{ .bits = @as(c_uint, @intCast(95)) };
    pub const ControlVehicleCinematicUpOnly: eControl = .{ .bits = @as(c_uint, @intCast(96)) };
    pub const ControlVehicleCinematicDownOnly: eControl = .{ .bits = @as(c_uint, @intCast(97)) };
    pub const ControlVehicleCinematicLeftRight: eControl = .{ .bits = @as(c_uint, @intCast(98)) };
    pub const ControlVehicleSelectNextWeapon: eControl = .{ .bits = @as(c_uint, @intCast(99)) };
    pub const ControlVehicleSelectPrevWeapon: eControl = .{ .bits = @as(c_uint, @intCast(100)) };
    pub const ControlVehicleRoof: eControl = .{ .bits = @as(c_uint, @intCast(101)) };
    pub const ControlVehicleJump: eControl = .{ .bits = @as(c_uint, @intCast(102)) };
    pub const ControlVehicleGrapplingHook: eControl = .{ .bits = @as(c_uint, @intCast(103)) };
    pub const ControlVehicleShuffle: eControl = .{ .bits = @as(c_uint, @intCast(104)) };
    pub const ControlVehicleDropProjectile: eControl = .{ .bits = @as(c_uint, @intCast(105)) };
    pub const ControlVehicleMouseControlOverride: eControl = .{ .bits = @as(c_uint, @intCast(106)) };
    pub const ControlVehicleFlyRollLeftRight: eControl = .{ .bits = @as(c_uint, @intCast(107)) };
    pub const ControlVehicleFlyRollLeftOnly: eControl = .{ .bits = @as(c_uint, @intCast(108)) };
    pub const ControlVehicleFlyRollRightOnly: eControl = .{ .bits = @as(c_uint, @intCast(109)) };
    pub const ControlVehicleFlyPitchUpDown: eControl = .{ .bits = @as(c_uint, @intCast(110)) };
    pub const ControlVehicleFlyPitchUpOnly: eControl = .{ .bits = @as(c_uint, @intCast(111)) };
    pub const ControlVehicleFlyPitchDownOnly: eControl = .{ .bits = @as(c_uint, @intCast(112)) };
    pub const ControlVehicleFlyUnderCarriage: eControl = .{ .bits = @as(c_uint, @intCast(113)) };
    pub const ControlVehicleFlyAttack: eControl = .{ .bits = @as(c_uint, @intCast(114)) };
    pub const ControlVehicleFlySelectNextWeapon: eControl = .{ .bits = @as(c_uint, @intCast(115)) };
    pub const ControlVehicleFlySelectPrevWeapon: eControl = .{ .bits = @as(c_uint, @intCast(116)) };
    pub const ControlVehicleFlySelectTargetLeft: eControl = .{ .bits = @as(c_uint, @intCast(117)) };
    pub const ControlVehicleFlySelectTargetRight: eControl = .{ .bits = @as(c_uint, @intCast(118)) };
    pub const ControlVehicleFlyVerticalFlightMode: eControl = .{ .bits = @as(c_uint, @intCast(119)) };
    pub const ControlVehicleFlyDuck: eControl = .{ .bits = @as(c_uint, @intCast(120)) };
    pub const ControlVehicleFlyAttackCamera: eControl = .{ .bits = @as(c_uint, @intCast(121)) };
    pub const ControlVehicleFlyMouseControlOverride: eControl = .{ .bits = @as(c_uint, @intCast(122)) };
    pub const ControlVehicleSubTurnLeftRight: eControl = .{ .bits = @as(c_uint, @intCast(123)) };
    pub const ControlVehicleSubTurnLeftOnly: eControl = .{ .bits = @as(c_uint, @intCast(124)) };
    pub const ControlVehicleSubTurnRightOnly: eControl = .{ .bits = @as(c_uint, @intCast(125)) };
    pub const ControlVehicleSubPitchUpDown: eControl = .{ .bits = @as(c_uint, @intCast(126)) };
    pub const ControlVehicleSubPitchUpOnly: eControl = .{ .bits = @as(c_uint, @intCast(127)) };
    pub const ControlVehicleSubPitchDownOnly: eControl = .{ .bits = @as(c_uint, @intCast(128)) };
    pub const ControlVehicleSubThrottleUp: eControl = .{ .bits = @as(c_uint, @intCast(129)) };
    pub const ControlVehicleSubThrottleDown: eControl = .{ .bits = @as(c_uint, @intCast(130)) };
    pub const ControlVehicleSubAscend: eControl = .{ .bits = @as(c_uint, @intCast(131)) };
    pub const ControlVehicleSubDescend: eControl = .{ .bits = @as(c_uint, @intCast(132)) };
    pub const ControlVehicleSubTurnHardLeft: eControl = .{ .bits = @as(c_uint, @intCast(133)) };
    pub const ControlVehicleSubTurnHardRight: eControl = .{ .bits = @as(c_uint, @intCast(134)) };
    pub const ControlVehicleSubMouseControlOverride: eControl = .{ .bits = @as(c_uint, @intCast(135)) };
    pub const ControlVehiclePushbikePedal: eControl = .{ .bits = @as(c_uint, @intCast(136)) };
    pub const ControlVehiclePushbikeSprint: eControl = .{ .bits = @as(c_uint, @intCast(137)) };
    pub const ControlVehiclePushbikeFrontBrake: eControl = .{ .bits = @as(c_uint, @intCast(138)) };
    pub const ControlVehiclePushbikeRearBrake: eControl = .{ .bits = @as(c_uint, @intCast(139)) };
    pub const ControlMeleeAttackLight: eControl = .{ .bits = @as(c_uint, @intCast(140)) };
    pub const ControlMeleeAttackHeavy: eControl = .{ .bits = @as(c_uint, @intCast(141)) };
    pub const ControlMeleeAttackAlternate: eControl = .{ .bits = @as(c_uint, @intCast(142)) };
    pub const ControlMeleeBlock: eControl = .{ .bits = @as(c_uint, @intCast(143)) };
    pub const ControlParachuteDeploy: eControl = .{ .bits = @as(c_uint, @intCast(144)) };
    pub const ControlParachuteDetach: eControl = .{ .bits = @as(c_uint, @intCast(145)) };
    pub const ControlParachuteTurnLeftRight: eControl = .{ .bits = @as(c_uint, @intCast(146)) };
    pub const ControlParachuteTurnLeftOnly: eControl = .{ .bits = @as(c_uint, @intCast(147)) };
    pub const ControlParachuteTurnRightOnly: eControl = .{ .bits = @as(c_uint, @intCast(148)) };
    pub const ControlParachutePitchUpDown: eControl = .{ .bits = @as(c_uint, @intCast(149)) };
    pub const ControlParachutePitchUpOnly: eControl = .{ .bits = @as(c_uint, @intCast(150)) };
    pub const ControlParachutePitchDownOnly: eControl = .{ .bits = @as(c_uint, @intCast(151)) };
    pub const ControlParachuteBrakeLeft: eControl = .{ .bits = @as(c_uint, @intCast(152)) };
    pub const ControlParachuteBrakeRight: eControl = .{ .bits = @as(c_uint, @intCast(153)) };
    pub const ControlParachuteSmoke: eControl = .{ .bits = @as(c_uint, @intCast(154)) };
    pub const ControlParachutePrecisionLanding: eControl = .{ .bits = @as(c_uint, @intCast(155)) };
    pub const ControlMap: eControl = .{ .bits = @as(c_uint, @intCast(156)) };
    pub const ControlSelectWeaponUnarmed: eControl = .{ .bits = @as(c_uint, @intCast(157)) };
    pub const ControlSelectWeaponMelee: eControl = .{ .bits = @as(c_uint, @intCast(158)) };
    pub const ControlSelectWeaponHandgun: eControl = .{ .bits = @as(c_uint, @intCast(159)) };
    pub const ControlSelectWeaponShotgun: eControl = .{ .bits = @as(c_uint, @intCast(160)) };
    pub const ControlSelectWeaponSmg: eControl = .{ .bits = @as(c_uint, @intCast(161)) };
    pub const ControlSelectWeaponAutoRifle: eControl = .{ .bits = @as(c_uint, @intCast(162)) };
    pub const ControlSelectWeaponSniper: eControl = .{ .bits = @as(c_uint, @intCast(163)) };
    pub const ControlSelectWeaponHeavy: eControl = .{ .bits = @as(c_uint, @intCast(164)) };
    pub const ControlSelectWeaponSpecial: eControl = .{ .bits = @as(c_uint, @intCast(165)) };
    pub const ControlSelectCharacterMichael: eControl = .{ .bits = @as(c_uint, @intCast(166)) };
    pub const ControlSelectCharacterFranklin: eControl = .{ .bits = @as(c_uint, @intCast(167)) };
    pub const ControlSelectCharacterTrevor: eControl = .{ .bits = @as(c_uint, @intCast(168)) };
    pub const ControlSelectCharacterMultiplayer: eControl = .{ .bits = @as(c_uint, @intCast(169)) };
    pub const ControlSaveReplayClip: eControl = .{ .bits = @as(c_uint, @intCast(170)) };
    pub const ControlSpecialAbilityPC: eControl = .{ .bits = @as(c_uint, @intCast(171)) };
    pub const ControlPhoneUp: eControl = .{ .bits = @as(c_uint, @intCast(172)) };
    pub const ControlPhoneDown: eControl = .{ .bits = @as(c_uint, @intCast(173)) };
    pub const ControlPhoneLeft: eControl = .{ .bits = @as(c_uint, @intCast(174)) };
    pub const ControlPhoneRight: eControl = .{ .bits = @as(c_uint, @intCast(175)) };
    pub const ControlPhoneSelect: eControl = .{ .bits = @as(c_uint, @intCast(176)) };
    pub const ControlPhoneCancel: eControl = .{ .bits = @as(c_uint, @intCast(177)) };
    pub const ControlPhoneOption: eControl = .{ .bits = @as(c_uint, @intCast(178)) };
    pub const ControlPhoneExtraOption: eControl = .{ .bits = @as(c_uint, @intCast(179)) };
    pub const ControlPhoneScrollForward: eControl = .{ .bits = @as(c_uint, @intCast(180)) };
    pub const ControlPhoneScrollBackward: eControl = .{ .bits = @as(c_uint, @intCast(181)) };
    pub const ControlPhoneCameraFocusLock: eControl = .{ .bits = @as(c_uint, @intCast(182)) };
    pub const ControlPhoneCameraGrid: eControl = .{ .bits = @as(c_uint, @intCast(183)) };
    pub const ControlPhoneCameraSelfie: eControl = .{ .bits = @as(c_uint, @intCast(184)) };
    pub const ControlPhoneCameraDOF: eControl = .{ .bits = @as(c_uint, @intCast(185)) };
    pub const ControlPhoneCameraExpression: eControl = .{ .bits = @as(c_uint, @intCast(186)) };
    pub const ControlFrontendDown: eControl = .{ .bits = @as(c_uint, @intCast(187)) };
    pub const ControlFrontendUp: eControl = .{ .bits = @as(c_uint, @intCast(188)) };
    pub const ControlFrontendLeft: eControl = .{ .bits = @as(c_uint, @intCast(189)) };
    pub const ControlFrontendRight: eControl = .{ .bits = @as(c_uint, @intCast(190)) };
    pub const ControlFrontendRdown: eControl = .{ .bits = @as(c_uint, @intCast(191)) };
    pub const ControlFrontendRup: eControl = .{ .bits = @as(c_uint, @intCast(192)) };
    pub const ControlFrontendRleft: eControl = .{ .bits = @as(c_uint, @intCast(193)) };
    pub const ControlFrontendRright: eControl = .{ .bits = @as(c_uint, @intCast(194)) };
    pub const ControlFrontendAxisX: eControl = .{ .bits = @as(c_uint, @intCast(195)) };
    pub const ControlFrontendAxisY: eControl = .{ .bits = @as(c_uint, @intCast(196)) };
    pub const ControlFrontendRightAxisX: eControl = .{ .bits = @as(c_uint, @intCast(197)) };
    pub const ControlFrontendRightAxisY: eControl = .{ .bits = @as(c_uint, @intCast(198)) };
    pub const ControlFrontendPause: eControl = .{ .bits = @as(c_uint, @intCast(199)) };
    pub const ControlFrontendPauseAlternate: eControl = .{ .bits = @as(c_uint, @intCast(200)) };
    pub const ControlFrontendAccept: eControl = .{ .bits = @as(c_uint, @intCast(201)) };
    pub const ControlFrontendCancel: eControl = .{ .bits = @as(c_uint, @intCast(202)) };
    pub const ControlFrontendX: eControl = .{ .bits = @as(c_uint, @intCast(203)) };
    pub const ControlFrontendY: eControl = .{ .bits = @as(c_uint, @intCast(204)) };
    pub const ControlFrontendLb: eControl = .{ .bits = @as(c_uint, @intCast(205)) };
    pub const ControlFrontendRb: eControl = .{ .bits = @as(c_uint, @intCast(206)) };
    pub const ControlFrontendLt: eControl = .{ .bits = @as(c_uint, @intCast(207)) };
    pub const ControlFrontendRt: eControl = .{ .bits = @as(c_uint, @intCast(208)) };
    pub const ControlFrontendLs: eControl = .{ .bits = @as(c_uint, @intCast(209)) };
    pub const ControlFrontendRs: eControl = .{ .bits = @as(c_uint, @intCast(210)) };
    pub const ControlFrontendLeaderboard: eControl = .{ .bits = @as(c_uint, @intCast(211)) };
    pub const ControlFrontendSocialClub: eControl = .{ .bits = @as(c_uint, @intCast(212)) };
    pub const ControlFrontendSocialClubSecondary: eControl = .{ .bits = @as(c_uint, @intCast(213)) };
    pub const ControlFrontendDelete: eControl = .{ .bits = @as(c_uint, @intCast(214)) };
    pub const ControlFrontendEndscreenAccept: eControl = .{ .bits = @as(c_uint, @intCast(215)) };
    pub const ControlFrontendEndscreenExpand: eControl = .{ .bits = @as(c_uint, @intCast(216)) };
    pub const ControlFrontendSelect: eControl = .{ .bits = @as(c_uint, @intCast(217)) };
    pub const ControlScriptLeftAxisX: eControl = .{ .bits = @as(c_uint, @intCast(218)) };
    pub const ControlScriptLeftAxisY: eControl = .{ .bits = @as(c_uint, @intCast(219)) };
    pub const ControlScriptRightAxisX: eControl = .{ .bits = @as(c_uint, @intCast(220)) };
    pub const ControlScriptRightAxisY: eControl = .{ .bits = @as(c_uint, @intCast(221)) };
    pub const ControlScriptRUp: eControl = .{ .bits = @as(c_uint, @intCast(222)) };
    pub const ControlScriptRDown: eControl = .{ .bits = @as(c_uint, @intCast(223)) };
    pub const ControlScriptRLeft: eControl = .{ .bits = @as(c_uint, @intCast(224)) };
    pub const ControlScriptRRight: eControl = .{ .bits = @as(c_uint, @intCast(225)) };
    pub const ControlScriptLB: eControl = .{ .bits = @as(c_uint, @intCast(226)) };
    pub const ControlScriptRB: eControl = .{ .bits = @as(c_uint, @intCast(227)) };
    pub const ControlScriptLT: eControl = .{ .bits = @as(c_uint, @intCast(228)) };
    pub const ControlScriptRT: eControl = .{ .bits = @as(c_uint, @intCast(229)) };
    pub const ControlScriptLS: eControl = .{ .bits = @as(c_uint, @intCast(230)) };
    pub const ControlScriptRS: eControl = .{ .bits = @as(c_uint, @intCast(231)) };
    pub const ControlScriptPadUp: eControl = .{ .bits = @as(c_uint, @intCast(232)) };
    pub const ControlScriptPadDown: eControl = .{ .bits = @as(c_uint, @intCast(233)) };
    pub const ControlScriptPadLeft: eControl = .{ .bits = @as(c_uint, @intCast(234)) };
    pub const ControlScriptPadRight: eControl = .{ .bits = @as(c_uint, @intCast(235)) };
    pub const ControlScriptSelect: eControl = .{ .bits = @as(c_uint, @intCast(236)) };
    pub const ControlCursorAccept: eControl = .{ .bits = @as(c_uint, @intCast(237)) };
    pub const ControlCursorCancel: eControl = .{ .bits = @as(c_uint, @intCast(238)) };
    pub const ControlCursorX: eControl = .{ .bits = @as(c_uint, @intCast(239)) };
    pub const ControlCursorY: eControl = .{ .bits = @as(c_uint, @intCast(240)) };
    pub const ControlCursorScrollUp: eControl = .{ .bits = @as(c_uint, @intCast(241)) };
    pub const ControlCursorScrollDown: eControl = .{ .bits = @as(c_uint, @intCast(242)) };
    pub const ControlEnterCheatCode: eControl = .{ .bits = @as(c_uint, @intCast(243)) };
    pub const ControlInteractionMenu: eControl = .{ .bits = @as(c_uint, @intCast(244)) };
    pub const ControlMpTextChatAll: eControl = .{ .bits = @as(c_uint, @intCast(245)) };
    pub const ControlMpTextChatTeam: eControl = .{ .bits = @as(c_uint, @intCast(246)) };
    pub const ControlMpTextChatFriends: eControl = .{ .bits = @as(c_uint, @intCast(247)) };
    pub const ControlMpTextChatCrew: eControl = .{ .bits = @as(c_uint, @intCast(248)) };
    pub const ControlPushToTalk: eControl = .{ .bits = @as(c_uint, @intCast(249)) };
    pub const ControlCreatorLS: eControl = .{ .bits = @as(c_uint, @intCast(250)) };
    pub const ControlCreatorRS: eControl = .{ .bits = @as(c_uint, @intCast(251)) };
    pub const ControlCreatorLT: eControl = .{ .bits = @as(c_uint, @intCast(252)) };
    pub const ControlCreatorRT: eControl = .{ .bits = @as(c_uint, @intCast(253)) };
    pub const ControlCreatorMenuToggle: eControl = .{ .bits = @as(c_uint, @intCast(254)) };
    pub const ControlCreatorAccept: eControl = .{ .bits = @as(c_uint, @intCast(255)) };
    pub const ControlCreatorDelete: eControl = .{ .bits = @as(c_uint, @intCast(256)) };
    pub const ControlAttack2: eControl = .{ .bits = @as(c_uint, @intCast(257)) };
    pub const ControlRappelJump: eControl = .{ .bits = @as(c_uint, @intCast(258)) };
    pub const ControlRappelLongJump: eControl = .{ .bits = @as(c_uint, @intCast(259)) };
    pub const ControlRappelSmashWindow: eControl = .{ .bits = @as(c_uint, @intCast(260)) };
    pub const ControlPrevWeapon: eControl = .{ .bits = @as(c_uint, @intCast(261)) };
    pub const ControlNextWeapon: eControl = .{ .bits = @as(c_uint, @intCast(262)) };
    pub const ControlMeleeAttack1: eControl = .{ .bits = @as(c_uint, @intCast(263)) };
    pub const ControlMeleeAttack2: eControl = .{ .bits = @as(c_uint, @intCast(264)) };
    pub const ControlWhistle: eControl = .{ .bits = @as(c_uint, @intCast(265)) };
    pub const ControlMoveLeft: eControl = .{ .bits = @as(c_uint, @intCast(266)) };
    pub const ControlMoveRight: eControl = .{ .bits = @as(c_uint, @intCast(267)) };
    pub const ControlMoveUp: eControl = .{ .bits = @as(c_uint, @intCast(268)) };
    pub const ControlMoveDown: eControl = .{ .bits = @as(c_uint, @intCast(269)) };
    pub const ControlLookLeft: eControl = .{ .bits = @as(c_uint, @intCast(270)) };
    pub const ControlLookRight: eControl = .{ .bits = @as(c_uint, @intCast(271)) };
    pub const ControlLookUp: eControl = .{ .bits = @as(c_uint, @intCast(272)) };
    pub const ControlLookDown: eControl = .{ .bits = @as(c_uint, @intCast(273)) };
    pub const ControlSniperZoomIn: eControl = .{ .bits = @as(c_uint, @intCast(274)) };
    pub const ControlSniperZoomOut: eControl = .{ .bits = @as(c_uint, @intCast(275)) };
    pub const ControlSniperZoomInAlternate: eControl = .{ .bits = @as(c_uint, @intCast(276)) };
    pub const ControlSniperZoomOutAlternate: eControl = .{ .bits = @as(c_uint, @intCast(277)) };
    pub const ControlVehicleMoveLeft: eControl = .{ .bits = @as(c_uint, @intCast(278)) };
    pub const ControlVehicleMoveRight: eControl = .{ .bits = @as(c_uint, @intCast(279)) };
    pub const ControlVehicleMoveUp: eControl = .{ .bits = @as(c_uint, @intCast(280)) };
    pub const ControlVehicleMoveDown: eControl = .{ .bits = @as(c_uint, @intCast(281)) };
    pub const ControlVehicleGunLeft: eControl = .{ .bits = @as(c_uint, @intCast(282)) };
    pub const ControlVehicleGunRight: eControl = .{ .bits = @as(c_uint, @intCast(283)) };
    pub const ControlVehicleGunUp: eControl = .{ .bits = @as(c_uint, @intCast(284)) };
    pub const ControlVehicleGunDown: eControl = .{ .bits = @as(c_uint, @intCast(285)) };
    pub const ControlVehicleLookLeft: eControl = .{ .bits = @as(c_uint, @intCast(286)) };
    pub const ControlVehicleLookRight: eControl = .{ .bits = @as(c_uint, @intCast(287)) };
    pub const ControlReplayStartStopRecording: eControl = .{ .bits = @as(c_uint, @intCast(288)) };
    pub const ControlReplayStartStopRecordingSecondary: eControl = .{ .bits = @as(c_uint, @intCast(289)) };
    pub const ControlScaledLookLeftRight: eControl = .{ .bits = @as(c_uint, @intCast(290)) };
    pub const ControlScaledLookUpDown: eControl = .{ .bits = @as(c_uint, @intCast(291)) };
    pub const ControlScaledLookUpOnly: eControl = .{ .bits = @as(c_uint, @intCast(292)) };
    pub const ControlScaledLookDownOnly: eControl = .{ .bits = @as(c_uint, @intCast(293)) };
    pub const ControlScaledLookLeftOnly: eControl = .{ .bits = @as(c_uint, @intCast(294)) };
    pub const ControlScaledLookRightOnly: eControl = .{ .bits = @as(c_uint, @intCast(295)) };
    pub const ControlReplayMarkerDelete: eControl = .{ .bits = @as(c_uint, @intCast(296)) };
    pub const ControlReplayClipDelete: eControl = .{ .bits = @as(c_uint, @intCast(297)) };
    pub const ControlReplayPause: eControl = .{ .bits = @as(c_uint, @intCast(298)) };
    pub const ControlReplayRewind: eControl = .{ .bits = @as(c_uint, @intCast(299)) };
    pub const ControlReplayFfwd: eControl = .{ .bits = @as(c_uint, @intCast(300)) };
    pub const ControlReplayNewmarker: eControl = .{ .bits = @as(c_uint, @intCast(301)) };
    pub const ControlReplayRecord: eControl = .{ .bits = @as(c_uint, @intCast(302)) };
    pub const ControlReplayScreenshot: eControl = .{ .bits = @as(c_uint, @intCast(303)) };
    pub const ControlReplayHidehud: eControl = .{ .bits = @as(c_uint, @intCast(304)) };
    pub const ControlReplayStartpoint: eControl = .{ .bits = @as(c_uint, @intCast(305)) };
    pub const ControlReplayEndpoint: eControl = .{ .bits = @as(c_uint, @intCast(306)) };
    pub const ControlReplayAdvance: eControl = .{ .bits = @as(c_uint, @intCast(307)) };
    pub const ControlReplayBack: eControl = .{ .bits = @as(c_uint, @intCast(308)) };
    pub const ControlReplayTools: eControl = .{ .bits = @as(c_uint, @intCast(309)) };
    pub const ControlReplayRestart: eControl = .{ .bits = @as(c_uint, @intCast(310)) };
    pub const ControlReplayShowhotkey: eControl = .{ .bits = @as(c_uint, @intCast(311)) };
    pub const ControlReplayCycleMarkerLeft: eControl = .{ .bits = @as(c_uint, @intCast(312)) };
    pub const ControlReplayCycleMarkerRight: eControl = .{ .bits = @as(c_uint, @intCast(313)) };
    pub const ControlReplayFOVIncrease: eControl = .{ .bits = @as(c_uint, @intCast(314)) };
    pub const ControlReplayFOVDecrease: eControl = .{ .bits = @as(c_uint, @intCast(315)) };
    pub const ControlReplayCameraUp: eControl = .{ .bits = @as(c_uint, @intCast(316)) };
    pub const ControlReplayCameraDown: eControl = .{ .bits = @as(c_uint, @intCast(317)) };
    pub const ControlReplaySave: eControl = .{ .bits = @as(c_uint, @intCast(318)) };
    pub const ControlReplayToggletime: eControl = .{ .bits = @as(c_uint, @intCast(319)) };
    pub const ControlReplayToggletips: eControl = .{ .bits = @as(c_uint, @intCast(320)) };
    pub const ControlReplayPreview: eControl = .{ .bits = @as(c_uint, @intCast(321)) };
    pub const ControlReplayToggleTimeline: eControl = .{ .bits = @as(c_uint, @intCast(322)) };
    pub const ControlReplayTimelinePickupClip: eControl = .{ .bits = @as(c_uint, @intCast(323)) };
    pub const ControlReplayTimelineDuplicateClip: eControl = .{ .bits = @as(c_uint, @intCast(324)) };
    pub const ControlReplayTimelinePlaceClip: eControl = .{ .bits = @as(c_uint, @intCast(325)) };
    pub const ControlReplayCtrl: eControl = .{ .bits = @as(c_uint, @intCast(326)) };
    pub const ControlReplayTimelineSave: eControl = .{ .bits = @as(c_uint, @intCast(327)) };
    pub const ControlReplayPreviewAudio: eControl = .{ .bits = @as(c_uint, @intCast(328)) };
    pub const ControlVehicleDriveLook: eControl = .{ .bits = @as(c_uint, @intCast(329)) };
    pub const ControlVehicleDriveLook2: eControl = .{ .bits = @as(c_uint, @intCast(330)) };
    pub const ControlVehicleFlyAttack2: eControl = .{ .bits = @as(c_uint, @intCast(331)) };
    pub const ControlRadioWheelUpDown: eControl = .{ .bits = @as(c_uint, @intCast(332)) };
    pub const ControlRadioWheelLeftRight: eControl = .{ .bits = @as(c_uint, @intCast(333)) };
    pub const ControlVehicleSlowMoUpDown: eControl = .{ .bits = @as(c_uint, @intCast(334)) };
    pub const ControlVehicleSlowMoUpOnly: eControl = .{ .bits = @as(c_uint, @intCast(335)) };
    pub const ControlVehicleSlowMoDownOnly: eControl = .{ .bits = @as(c_uint, @intCast(336)) };
    pub const ControlMapPointOfInterest: eControl = .{ .bits = @as(c_uint, @intCast(337)) };
};

pub const eRadioStation = extern struct {
    bits: c_int = 0,

    pub const RadioStationLosSantosRockRadio: eRadioStation = .{ .bits = 0 };
    pub const RadioStationNonStopPopFM: eRadioStation = .{ .bits = 1 };
    pub const RadioStationLosSantos: eRadioStation = .{ .bits = 2 };
    pub const RadioStationChannelX: eRadioStation = .{ .bits = 3 };
    pub const RadioStationWestCoastTalkRadio: eRadioStation = .{ .bits = 4 };
    pub const RadioStationRebelRadio: eRadioStation = .{ .bits = 5 };
    pub const RadioStationSoulwaxFM: eRadioStation = .{ .bits = 6 };
    pub const RadioStationEastLosFM: eRadioStation = .{ .bits = 7 };
    pub const RadioStationWestCoastClassics: eRadioStation = .{ .bits = 8 };
    pub const RadioStationTheBlueArk: eRadioStation = .{ .bits = 9 };
    pub const RadioStationWorldWideFM: eRadioStation = .{ .bits = 10 };
    pub const RadioStationFlyloFM: eRadioStation = .{ .bits = 11 };
    pub const RadioStationTheLowdown: eRadioStation = .{ .bits = 12 };
    pub const RadioStationTheLab: eRadioStation = .{ .bits = 13 };
    pub const RadioStationMirrorPark: eRadioStation = .{ .bits = 14 };
    pub const RadioStationSpace: eRadioStation = .{ .bits = 15 };
    pub const RadioStationVinewoodBoulevardRadio: eRadioStation = .{ .bits = 16 };
};

pub const eWindowTitle = extern struct {
    bits: c_int = 0,

    pub const CELL_EMAIL_BOD: eWindowTitle = .{ .bits = 0 };
    pub const CELL_EMAIL_BODE: eWindowTitle = .{ .bits = 1 };
    pub const CELL_EMAIL_BODF: eWindowTitle = .{ .bits = 2 };
    pub const CELL_EMAIL_SOD: eWindowTitle = .{ .bits = 3 };
    pub const CELL_EMAIL_SODE: eWindowTitle = .{ .bits = 4 };
    pub const CELL_EMAIL_SODF: eWindowTitle = .{ .bits = 5 };
    pub const CELL_EMASH_BOD: eWindowTitle = .{ .bits = 6 };
    pub const CELL_EMASH_BODE: eWindowTitle = .{ .bits = 7 };
    pub const CELL_EMASH_BODF: eWindowTitle = .{ .bits = 8 };
    pub const CELL_EMASH_SOD: eWindowTitle = .{ .bits = 9 };
    pub const CELL_EMASH_SODE: eWindowTitle = .{ .bits = 10 };
    pub const CELL_EMASH_SODF: eWindowTitle = .{ .bits = 11 };
    pub const FMMC_KEY_TIP10: eWindowTitle = .{ .bits = 12 };
    pub const FMMC_KEY_TIP12: eWindowTitle = .{ .bits = 13 };
    pub const FMMC_KEY_TIP12F: eWindowTitle = .{ .bits = 14 };
    pub const FMMC_KEY_TIP12N: eWindowTitle = .{ .bits = 15 };
    pub const FMMC_KEY_TIP8: eWindowTitle = .{ .bits = 16 };
    pub const FMMC_KEY_TIP8F: eWindowTitle = .{ .bits = 17 };
    pub const FMMC_KEY_TIP8FS: eWindowTitle = .{ .bits = 18 };
    pub const FMMC_KEY_TIP8S: eWindowTitle = .{ .bits = 19 };
    pub const FMMC_KEY_TIP9: eWindowTitle = .{ .bits = 20 };
    pub const FMMC_KEY_TIP9F: eWindowTitle = .{ .bits = 21 };
    pub const FMMC_KEY_TIP9N: eWindowTitle = .{ .bits = 22 };
    pub const PM_NAME_CHALL: eWindowTitle = .{ .bits = 23 };
};

pub const eGender = extern struct {
    bits: c_int = 0,

    pub const GenderMale: eGender = .{ .bits = 0 };
    pub const GenderFemale: eGender = .{ .bits = 1 };
};

pub const eDrivingStyle = extern struct {
    bits: c_int = 0,

    pub const DrivingStyleNormal: eDrivingStyle = .{ .bits = @as(c_uint, @intCast(786603)) };
    pub const DrivingStyleIgnoreLights: eDrivingStyle = .{ .bits = @as(c_uint, @intCast(2883621)) };
    pub const DrivingStyleSometimesOvertakeTraffic: eDrivingStyle = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const DrivingStyleRushed: eDrivingStyle = .{ .bits = @as(c_uint, @intCast(1074528293)) };
    pub const DrivingStyleAvoidTraffic: eDrivingStyle = .{ .bits = @as(c_uint, @intCast(786468)) };
    pub const DrivingStyleAvoidTrafficExtremely: eDrivingStyle = .{ .bits = @as(c_uint, @intCast(6)) };
};

pub const eBone = extern struct {
    bits: c_int = 0,

    pub const SKEL_ROOT: eBone = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const SKEL_Pelvis: eBone = .{ .bits = @as(c_uint, @intCast(11816)) };
    pub const SKEL_L_Thigh: eBone = .{ .bits = @as(c_uint, @intCast(58271)) };
    pub const SKEL_L_Calf: eBone = .{ .bits = @as(c_uint, @intCast(63931)) };
    pub const SKEL_L_Foot: eBone = .{ .bits = @as(c_uint, @intCast(14201)) };
    pub const SKEL_L_Toe0: eBone = .{ .bits = @as(c_uint, @intCast(2108)) };
    pub const IK_L_Foot: eBone = .{ .bits = @as(c_uint, @intCast(65245)) };
    pub const PH_L_Foot: eBone = .{ .bits = @as(c_uint, @intCast(57717)) };
    pub const MH_L_Knee: eBone = .{ .bits = @as(c_uint, @intCast(46078)) };
    pub const SKEL_R_Thigh: eBone = .{ .bits = @as(c_uint, @intCast(51826)) };
    pub const SKEL_R_Calf: eBone = .{ .bits = @as(c_uint, @intCast(36864)) };
    pub const SKEL_R_Foot: eBone = .{ .bits = @as(c_uint, @intCast(52301)) };
    pub const SKEL_R_Toe0: eBone = .{ .bits = @as(c_uint, @intCast(20781)) };
    pub const IK_R_Foot: eBone = .{ .bits = @as(c_uint, @intCast(35502)) };
    pub const PH_R_Foot: eBone = .{ .bits = @as(c_uint, @intCast(24806)) };
    pub const MH_R_Knee: eBone = .{ .bits = @as(c_uint, @intCast(16335)) };
    pub const RB_L_ThighRoll: eBone = .{ .bits = @as(c_uint, @intCast(23639)) };
    pub const RB_R_ThighRoll: eBone = .{ .bits = @as(c_uint, @intCast(6442)) };
    pub const SKEL_Spine_Root: eBone = .{ .bits = @as(c_uint, @intCast(57597)) };
    pub const SKEL_Spine0: eBone = .{ .bits = @as(c_uint, @intCast(23553)) };
    pub const SKEL_Spine1: eBone = .{ .bits = @as(c_uint, @intCast(24816)) };
    pub const SKEL_Spine2: eBone = .{ .bits = @as(c_uint, @intCast(24817)) };
    pub const SKEL_Spine3: eBone = .{ .bits = @as(c_uint, @intCast(24818)) };
    pub const SKEL_L_Clavicle: eBone = .{ .bits = @as(c_uint, @intCast(64729)) };
    pub const SKEL_L_UpperArm: eBone = .{ .bits = @as(c_uint, @intCast(45509)) };
    pub const SKEL_L_Forearm: eBone = .{ .bits = @as(c_uint, @intCast(61163)) };
    pub const SKEL_L_Hand: eBone = .{ .bits = @as(c_uint, @intCast(18905)) };
    pub const SKEL_L_Finger00: eBone = .{ .bits = @as(c_uint, @intCast(26610)) };
    pub const SKEL_L_Finger01: eBone = .{ .bits = @as(c_uint, @intCast(4089)) };
    pub const SKEL_L_Finger02: eBone = .{ .bits = @as(c_uint, @intCast(4090)) };
    pub const SKEL_L_Finger10: eBone = .{ .bits = @as(c_uint, @intCast(26611)) };
    pub const SKEL_L_Finger11: eBone = .{ .bits = @as(c_uint, @intCast(4169)) };
    pub const SKEL_L_Finger12: eBone = .{ .bits = @as(c_uint, @intCast(4170)) };
    pub const SKEL_L_Finger20: eBone = .{ .bits = @as(c_uint, @intCast(26612)) };
    pub const SKEL_L_Finger21: eBone = .{ .bits = @as(c_uint, @intCast(4185)) };
    pub const SKEL_L_Finger22: eBone = .{ .bits = @as(c_uint, @intCast(4186)) };
    pub const SKEL_L_Finger30: eBone = .{ .bits = @as(c_uint, @intCast(26613)) };
    pub const SKEL_L_Finger31: eBone = .{ .bits = @as(c_uint, @intCast(4137)) };
    pub const SKEL_L_Finger32: eBone = .{ .bits = @as(c_uint, @intCast(4138)) };
    pub const SKEL_L_Finger40: eBone = .{ .bits = @as(c_uint, @intCast(26614)) };
    pub const SKEL_L_Finger41: eBone = .{ .bits = @as(c_uint, @intCast(4153)) };
    pub const SKEL_L_Finger42: eBone = .{ .bits = @as(c_uint, @intCast(4154)) };
    pub const PH_L_Hand: eBone = .{ .bits = @as(c_uint, @intCast(60309)) };
    pub const IK_L_Hand: eBone = .{ .bits = @as(c_uint, @intCast(36029)) };
    pub const RB_L_ForeArmRoll: eBone = .{ .bits = @as(c_uint, @intCast(61007)) };
    pub const RB_L_ArmRoll: eBone = .{ .bits = @as(c_uint, @intCast(5232)) };
    pub const MH_L_Elbow: eBone = .{ .bits = @as(c_uint, @intCast(22711)) };
    pub const SKEL_R_Clavicle: eBone = .{ .bits = @as(c_uint, @intCast(10706)) };
    pub const SKEL_R_UpperArm: eBone = .{ .bits = @as(c_uint, @intCast(40269)) };
    pub const SKEL_R_Forearm: eBone = .{ .bits = @as(c_uint, @intCast(28252)) };
    pub const SKEL_R_Hand: eBone = .{ .bits = @as(c_uint, @intCast(57005)) };
    pub const SKEL_R_Finger00: eBone = .{ .bits = @as(c_uint, @intCast(58866)) };
    pub const SKEL_R_Finger01: eBone = .{ .bits = @as(c_uint, @intCast(64016)) };
    pub const SKEL_R_Finger02: eBone = .{ .bits = @as(c_uint, @intCast(64017)) };
    pub const SKEL_R_Finger10: eBone = .{ .bits = @as(c_uint, @intCast(58867)) };
    pub const SKEL_R_Finger11: eBone = .{ .bits = @as(c_uint, @intCast(64096)) };
    pub const SKEL_R_Finger12: eBone = .{ .bits = @as(c_uint, @intCast(64097)) };
    pub const SKEL_R_Finger20: eBone = .{ .bits = @as(c_uint, @intCast(58868)) };
    pub const SKEL_R_Finger21: eBone = .{ .bits = @as(c_uint, @intCast(64112)) };
    pub const SKEL_R_Finger22: eBone = .{ .bits = @as(c_uint, @intCast(64113)) };
    pub const SKEL_R_Finger30: eBone = .{ .bits = @as(c_uint, @intCast(58869)) };
    pub const SKEL_R_Finger31: eBone = .{ .bits = @as(c_uint, @intCast(64064)) };
    pub const SKEL_R_Finger32: eBone = .{ .bits = @as(c_uint, @intCast(64065)) };
    pub const SKEL_R_Finger40: eBone = .{ .bits = @as(c_uint, @intCast(58870)) };
    pub const SKEL_R_Finger41: eBone = .{ .bits = @as(c_uint, @intCast(64080)) };
    pub const SKEL_R_Finger42: eBone = .{ .bits = @as(c_uint, @intCast(64081)) };
    pub const PH_R_Hand: eBone = .{ .bits = @as(c_uint, @intCast(28422)) };
    pub const IK_R_Hand: eBone = .{ .bits = @as(c_uint, @intCast(6286)) };
    pub const RB_R_ForeArmRoll: eBone = .{ .bits = @as(c_uint, @intCast(43810)) };
    pub const RB_R_ArmRoll: eBone = .{ .bits = @as(c_uint, @intCast(37119)) };
    pub const MH_R_Elbow: eBone = .{ .bits = @as(c_uint, @intCast(2992)) };
    pub const SKEL_Neck_1: eBone = .{ .bits = @as(c_uint, @intCast(39317)) };
    pub const SKEL_Head: eBone = .{ .bits = @as(c_uint, @intCast(31086)) };
    pub const IK_Head: eBone = .{ .bits = @as(c_uint, @intCast(12844)) };
    pub const FACIAL_facialRoot: eBone = .{ .bits = @as(c_uint, @intCast(65068)) };
    pub const FB_L_Brow_Out_000: eBone = .{ .bits = @as(c_uint, @intCast(58331)) };
    pub const FB_L_Lid_Upper_000: eBone = .{ .bits = @as(c_uint, @intCast(45750)) };
    pub const FB_L_Eye_000: eBone = .{ .bits = @as(c_uint, @intCast(25260)) };
    pub const FB_L_CheekBone_000: eBone = .{ .bits = @as(c_uint, @intCast(21550)) };
    pub const FB_L_Lip_Corner_000: eBone = .{ .bits = @as(c_uint, @intCast(29868)) };
    pub const FB_R_Lid_Upper_000: eBone = .{ .bits = @as(c_uint, @intCast(43536)) };
    pub const FB_R_Eye_000: eBone = .{ .bits = @as(c_uint, @intCast(27474)) };
    pub const FB_R_CheekBone_000: eBone = .{ .bits = @as(c_uint, @intCast(19336)) };
    pub const FB_R_Brow_Out_000: eBone = .{ .bits = @as(c_uint, @intCast(1356)) };
    pub const FB_R_Lip_Corner_000: eBone = .{ .bits = @as(c_uint, @intCast(11174)) };
    pub const FB_Brow_Centre_000: eBone = .{ .bits = @as(c_uint, @intCast(37193)) };
    pub const FB_UpperLipRoot_000: eBone = .{ .bits = @as(c_uint, @intCast(20178)) };
    pub const FB_UpperLip_000: eBone = .{ .bits = @as(c_uint, @intCast(61839)) };
    pub const FB_L_Lip_Top_000: eBone = .{ .bits = @as(c_uint, @intCast(20279)) };
    pub const FB_R_Lip_Top_000: eBone = .{ .bits = @as(c_uint, @intCast(17719)) };
    pub const FB_Jaw_000: eBone = .{ .bits = @as(c_uint, @intCast(46240)) };
    pub const FB_LowerLipRoot_000: eBone = .{ .bits = @as(c_uint, @intCast(17188)) };
    pub const FB_LowerLip_000: eBone = .{ .bits = @as(c_uint, @intCast(20623)) };
    pub const FB_L_Lip_Bot_000: eBone = .{ .bits = @as(c_uint, @intCast(47419)) };
    pub const FB_R_Lip_Bot_000: eBone = .{ .bits = @as(c_uint, @intCast(49979)) };
    pub const FB_Tongue_000: eBone = .{ .bits = @as(c_uint, @intCast(47495)) };
    pub const RB_Neck_1: eBone = .{ .bits = @as(c_uint, @intCast(35731)) };
    pub const IK_Root: eBone = .{ .bits = @as(c_uint, @intCast(56604)) };
};

pub const eFiringPattern = extern struct {
    bits: c_int = 0,

    pub const FiringPatternFullAuto: eFiringPattern = .{ .bits = @as(DWORD, @intCast(3337513804)) };
    pub const FiringPatternBurstFire: eFiringPattern = .{ .bits = @as(DWORD, @intCast(3607063905)) };
    pub const FiringPatternBurstInCover: eFiringPattern = .{ .bits = @as(DWORD, @intCast(40051185)) };
    pub const FiringPatternBurstFireDriveby: eFiringPattern = .{ .bits = @as(DWORD, @intCast(3541198322)) };
    pub const FiringPatternFromGround: eFiringPattern = .{ .bits = @as(DWORD, @intCast(577037782)) };
    pub const FiringPatternDelayFireByOneSec: eFiringPattern = .{ .bits = @as(DWORD, @intCast(2055493265)) };
    pub const FiringPatternSingleShot: eFiringPattern = .{ .bits = @as(DWORD, @intCast(1566631136)) };
    pub const FiringPatternBurstFirePistol: eFiringPattern = .{ .bits = @as(DWORD, @intCast(2685983626)) };
    pub const FiringPatternBurstFireSMG: eFiringPattern = .{ .bits = @as(DWORD, @intCast(3507334638)) };
    pub const FiringPatternBurstFireRifle: eFiringPattern = .{ .bits = @as(DWORD, @intCast(2624893958)) };
    pub const FiringPatternBurstFireMG: eFiringPattern = .{ .bits = @as(DWORD, @intCast(3044263348)) };
    pub const FiringPatternBurstFirePumpShotGun: eFiringPattern = .{ .bits = @as(DWORD, @intCast(12239771)) };
    pub const FiringPatternBurstFireHeli: eFiringPattern = .{ .bits = @as(DWORD, @intCast(2437838959)) };
    pub const FiringPatternBurstFireMicro: eFiringPattern = .{ .bits = @as(DWORD, @intCast(1122960381)) };
    pub const FiringPatternBurstFireBursts: eFiringPattern = .{ .bits = @as(DWORD, @intCast(1122960381)) };
    pub const FiringPatternBurstFireTank: eFiringPattern = .{ .bits = @as(DWORD, @intCast(3804904049)) };
};

pub const eFont = extern struct {
    bits: c_int = 0,

    pub const FontChaletLondon: eFont = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const FontHouseScript: eFont = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const FontMonospace: eFont = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const FontChaletComprimeCologne: eFont = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const FontPricedown: eFont = .{ .bits = @as(c_uint, @intCast(7)) };
};

pub const eVehicleColor = extern struct {
    bits: c_int = 0,

    pub const VehicleColorMetallicBlack: eVehicleColor = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const VehicleColorMetallicGraphiteBlack: eVehicleColor = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const VehicleColorMetallicBlackSteel: eVehicleColor = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const VehicleColorMetallicDarkSilver: eVehicleColor = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const VehicleColorMetallicSilver: eVehicleColor = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const VehicleColorMetallicBlueSilver: eVehicleColor = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const VehicleColorMetallicSteelGray: eVehicleColor = .{ .bits = @as(c_uint, @intCast(6)) };
    pub const VehicleColorMetallicShadowSilver: eVehicleColor = .{ .bits = @as(c_uint, @intCast(7)) };
    pub const VehicleColorMetallicStoneSilver: eVehicleColor = .{ .bits = @as(c_uint, @intCast(8)) };
    pub const VehicleColorMetallicMidnightSilver: eVehicleColor = .{ .bits = @as(c_uint, @intCast(9)) };
    pub const VehicleColorMetallicGunMetal: eVehicleColor = .{ .bits = @as(c_uint, @intCast(10)) };
    pub const VehicleColorMetallicAnthraciteGray: eVehicleColor = .{ .bits = @as(c_uint, @intCast(11)) };
    pub const VehicleColorMatteBlack: eVehicleColor = .{ .bits = @as(c_uint, @intCast(12)) };
    pub const VehicleColorMatteGray: eVehicleColor = .{ .bits = @as(c_uint, @intCast(13)) };
    pub const VehicleColorMatteLightGray: eVehicleColor = .{ .bits = @as(c_uint, @intCast(14)) };
    pub const VehicleColorUtilBlack: eVehicleColor = .{ .bits = @as(c_uint, @intCast(15)) };
    pub const VehicleColorUtilBlackPoly: eVehicleColor = .{ .bits = @as(c_uint, @intCast(16)) };
    pub const VehicleColorUtilDarksilver: eVehicleColor = .{ .bits = @as(c_uint, @intCast(17)) };
    pub const VehicleColorUtilSilver: eVehicleColor = .{ .bits = @as(c_uint, @intCast(18)) };
    pub const VehicleColorUtilGunMetal: eVehicleColor = .{ .bits = @as(c_uint, @intCast(19)) };
    pub const VehicleColorUtilShadowSilver: eVehicleColor = .{ .bits = @as(c_uint, @intCast(20)) };
    pub const VehicleColorWornBlack: eVehicleColor = .{ .bits = @as(c_uint, @intCast(21)) };
    pub const VehicleColorWornGraphite: eVehicleColor = .{ .bits = @as(c_uint, @intCast(22)) };
    pub const VehicleColorWornSilverGray: eVehicleColor = .{ .bits = @as(c_uint, @intCast(23)) };
    pub const VehicleColorWornSilver: eVehicleColor = .{ .bits = @as(c_uint, @intCast(24)) };
    pub const VehicleColorWornBlueSilver: eVehicleColor = .{ .bits = @as(c_uint, @intCast(25)) };
    pub const VehicleColorWornShadowSilver: eVehicleColor = .{ .bits = @as(c_uint, @intCast(26)) };
    pub const VehicleColorMetallicRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(27)) };
    pub const VehicleColorMetallicTorinoRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(28)) };
    pub const VehicleColorMetallicFormulaRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(29)) };
    pub const VehicleColorMetallicBlazeRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(30)) };
    pub const VehicleColorMetallicGracefulRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(31)) };
    pub const VehicleColorMetallicGarnetRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(32)) };
    pub const VehicleColorMetallicDesertRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(33)) };
    pub const VehicleColorMetallicCabernetRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(34)) };
    pub const VehicleColorMetallicCandyRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(35)) };
    pub const VehicleColorMetallicSunriseOrange: eVehicleColor = .{ .bits = @as(c_uint, @intCast(36)) };
    pub const VehicleColorMetallicClassicGold: eVehicleColor = .{ .bits = @as(c_uint, @intCast(37)) };
    pub const VehicleColorMetallicOrange: eVehicleColor = .{ .bits = @as(c_uint, @intCast(38)) };
    pub const VehicleColorMatteRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(39)) };
    pub const VehicleColorMatteDarkRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(40)) };
    pub const VehicleColorMatteOrange: eVehicleColor = .{ .bits = @as(c_uint, @intCast(41)) };
    pub const VehicleColorMatteYellow: eVehicleColor = .{ .bits = @as(c_uint, @intCast(42)) };
    pub const VehicleColorUtilRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(43)) };
    pub const VehicleColorUtilBrightRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(44)) };
    pub const VehicleColorUtilGarnetRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(45)) };
    pub const VehicleColorWornRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(46)) };
    pub const VehicleColorWornGoldenRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(47)) };
    pub const VehicleColorWornDarkRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(48)) };
    pub const VehicleColorMetallicDarkGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(49)) };
    pub const VehicleColorMetallicRacingGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(50)) };
    pub const VehicleColorMetallicSeaGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(51)) };
    pub const VehicleColorMetallicOliveGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(52)) };
    pub const VehicleColorMetallicGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(53)) };
    pub const VehicleColorMetallicGasolineBlueGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(54)) };
    pub const VehicleColorMatteLimeGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(55)) };
    pub const VehicleColorUtilDarkGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(56)) };
    pub const VehicleColorUtilGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(57)) };
    pub const VehicleColorWornDarkGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(58)) };
    pub const VehicleColorWornGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(59)) };
    pub const VehicleColorWornSeaWash: eVehicleColor = .{ .bits = @as(c_uint, @intCast(60)) };
    pub const VehicleColorMetallicMidnightBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(61)) };
    pub const VehicleColorMetallicDarkBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(62)) };
    pub const VehicleColorMetallicSaxonyBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(63)) };
    pub const VehicleColorMetallicBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(64)) };
    pub const VehicleColorMetallicMarinerBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(65)) };
    pub const VehicleColorMetallicHarborBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(66)) };
    pub const VehicleColorMetallicDiamondBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(67)) };
    pub const VehicleColorMetallicSurfBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(68)) };
    pub const VehicleColorMetallicNauticalBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(69)) };
    pub const VehicleColorMetallicBrightBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(70)) };
    pub const VehicleColorMetallicPurpleBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(71)) };
    pub const VehicleColorMetallicSpinnakerBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(72)) };
    pub const VehicleColorMetallicUltraBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(73)) };
    pub const VehicleColorUtilDarkBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(75)) };
    pub const VehicleColorUtilMidnightBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(76)) };
    pub const VehicleColorUtilBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(77)) };
    pub const VehicleColorUtilSeaFoamBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(78)) };
    pub const VehicleColorUtilLightningBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(79)) };
    pub const VehicleColorUtilMauiBluePoly: eVehicleColor = .{ .bits = @as(c_uint, @intCast(80)) };
    pub const VehicleColorUtilBrightBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(81)) };
    pub const VehicleColorMatteDarkBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(82)) };
    pub const VehicleColorMatteBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(83)) };
    pub const VehicleColorMatteMidnightBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(84)) };
    pub const VehicleColorWornDarkBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(85)) };
    pub const VehicleColorWornBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(86)) };
    pub const VehicleColorWornLightBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(87)) };
    pub const VehicleColorMetallicTaxiYellow: eVehicleColor = .{ .bits = @as(c_uint, @intCast(88)) };
    pub const VehicleColorMetallicRaceYellow: eVehicleColor = .{ .bits = @as(c_uint, @intCast(89)) };
    pub const VehicleColorMetallicBronze: eVehicleColor = .{ .bits = @as(c_uint, @intCast(90)) };
    pub const VehicleColorMetallicYellowBird: eVehicleColor = .{ .bits = @as(c_uint, @intCast(91)) };
    pub const VehicleColorMetallicLime: eVehicleColor = .{ .bits = @as(c_uint, @intCast(92)) };
    pub const VehicleColorMetallicChampagne: eVehicleColor = .{ .bits = @as(c_uint, @intCast(93)) };
    pub const VehicleColorMetallicPuebloBeige: eVehicleColor = .{ .bits = @as(c_uint, @intCast(94)) };
    pub const VehicleColorMetallicDarkIvory: eVehicleColor = .{ .bits = @as(c_uint, @intCast(95)) };
    pub const VehicleColorMetallicChocoBrown: eVehicleColor = .{ .bits = @as(c_uint, @intCast(96)) };
    pub const VehicleColorMetallicGoldenBrown: eVehicleColor = .{ .bits = @as(c_uint, @intCast(97)) };
    pub const VehicleColorMetallicLightBrown: eVehicleColor = .{ .bits = @as(c_uint, @intCast(98)) };
    pub const VehicleColorMetallicStrawBeige: eVehicleColor = .{ .bits = @as(c_uint, @intCast(99)) };
    pub const VehicleColorMetallicMossBrown: eVehicleColor = .{ .bits = @as(c_uint, @intCast(100)) };
    pub const VehicleColorMetallicBistonBrown: eVehicleColor = .{ .bits = @as(c_uint, @intCast(101)) };
    pub const VehicleColorMetallicBeechwood: eVehicleColor = .{ .bits = @as(c_uint, @intCast(102)) };
    pub const VehicleColorMetallicDarkBeechwood: eVehicleColor = .{ .bits = @as(c_uint, @intCast(103)) };
    pub const VehicleColorMetallicChocoOrange: eVehicleColor = .{ .bits = @as(c_uint, @intCast(104)) };
    pub const VehicleColorMetallicBeachSand: eVehicleColor = .{ .bits = @as(c_uint, @intCast(105)) };
    pub const VehicleColorMetallicSunBleechedSand: eVehicleColor = .{ .bits = @as(c_uint, @intCast(106)) };
    pub const VehicleColorMetallicCream: eVehicleColor = .{ .bits = @as(c_uint, @intCast(107)) };
    pub const VehicleColorUtilBrown: eVehicleColor = .{ .bits = @as(c_uint, @intCast(108)) };
    pub const VehicleColorUtilMediumBrown: eVehicleColor = .{ .bits = @as(c_uint, @intCast(109)) };
    pub const VehicleColorUtilLightBrown: eVehicleColor = .{ .bits = @as(c_uint, @intCast(110)) };
    pub const VehicleColorMetallicWhite: eVehicleColor = .{ .bits = @as(c_uint, @intCast(111)) };
    pub const VehicleColorMetallicFrostWhite: eVehicleColor = .{ .bits = @as(c_uint, @intCast(112)) };
    pub const VehicleColorWornHoneyBeige: eVehicleColor = .{ .bits = @as(c_uint, @intCast(113)) };
    pub const VehicleColorWornBrown: eVehicleColor = .{ .bits = @as(c_uint, @intCast(114)) };
    pub const VehicleColorWornDarkBrown: eVehicleColor = .{ .bits = @as(c_uint, @intCast(115)) };
    pub const VehicleColorWornStrawBeige: eVehicleColor = .{ .bits = @as(c_uint, @intCast(116)) };
    pub const VehicleColorBrushedSteel: eVehicleColor = .{ .bits = @as(c_uint, @intCast(117)) };
    pub const VehicleColorBrushedBlackSteel: eVehicleColor = .{ .bits = @as(c_uint, @intCast(118)) };
    pub const VehicleColorBrushedAluminium: eVehicleColor = .{ .bits = @as(c_uint, @intCast(119)) };
    pub const VehicleColorChrome: eVehicleColor = .{ .bits = @as(c_uint, @intCast(120)) };
    pub const VehicleColorWornOffWhite: eVehicleColor = .{ .bits = @as(c_uint, @intCast(121)) };
    pub const VehicleColorUtilOffWhite: eVehicleColor = .{ .bits = @as(c_uint, @intCast(122)) };
    pub const VehicleColorWornOrange: eVehicleColor = .{ .bits = @as(c_uint, @intCast(123)) };
    pub const VehicleColorWornLightOrange: eVehicleColor = .{ .bits = @as(c_uint, @intCast(124)) };
    pub const VehicleColorMetallicSecuricorGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(125)) };
    pub const VehicleColorWornTaxiYellow: eVehicleColor = .{ .bits = @as(c_uint, @intCast(126)) };
    pub const VehicleColorPoliceCarBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(127)) };
    pub const VehicleColorMatteGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(128)) };
    pub const VehicleColorMatteBrown: eVehicleColor = .{ .bits = @as(c_uint, @intCast(129)) };
    pub const VehicleColorMatteWhite: eVehicleColor = .{ .bits = @as(c_uint, @intCast(131)) };
    pub const VehicleColorWornWhite: eVehicleColor = .{ .bits = @as(c_uint, @intCast(132)) };
    pub const VehicleColorWornOliveArmyGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(133)) };
    pub const VehicleColorPureWhite: eVehicleColor = .{ .bits = @as(c_uint, @intCast(134)) };
    pub const VehicleColorHotPink: eVehicleColor = .{ .bits = @as(c_uint, @intCast(135)) };
    pub const VehicleColorSalmonpink: eVehicleColor = .{ .bits = @as(c_uint, @intCast(136)) };
    pub const VehicleColorMetallicVermillionPink: eVehicleColor = .{ .bits = @as(c_uint, @intCast(137)) };
    pub const VehicleColorOrange: eVehicleColor = .{ .bits = @as(c_uint, @intCast(138)) };
    pub const VehicleColorGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(139)) };
    pub const VehicleColorBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(140)) };
    pub const VehicleColorMettalicBlackBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(141)) };
    pub const VehicleColorMetallicBlackPurple: eVehicleColor = .{ .bits = @as(c_uint, @intCast(142)) };
    pub const VehicleColorMetallicBlackRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(143)) };
    pub const VehicleColorHunterGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(144)) };
    pub const VehicleColorMetallicPurple: eVehicleColor = .{ .bits = @as(c_uint, @intCast(145)) };
    pub const VehicleColorMetaillicVDarkBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(146)) };
    pub const VehicleColorModshopBlack1: eVehicleColor = .{ .bits = @as(c_uint, @intCast(147)) };
    pub const VehicleColorMattePurple: eVehicleColor = .{ .bits = @as(c_uint, @intCast(148)) };
    pub const VehicleColorMatteDarkPurple: eVehicleColor = .{ .bits = @as(c_uint, @intCast(149)) };
    pub const VehicleColorMetallicLavaRed: eVehicleColor = .{ .bits = @as(c_uint, @intCast(150)) };
    pub const VehicleColorMatteForestGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(151)) };
    pub const VehicleColorMatteOliveDrab: eVehicleColor = .{ .bits = @as(c_uint, @intCast(152)) };
    pub const VehicleColorMatteDesertBrown: eVehicleColor = .{ .bits = @as(c_uint, @intCast(153)) };
    pub const VehicleColorMatteDesertTan: eVehicleColor = .{ .bits = @as(c_uint, @intCast(154)) };
    pub const VehicleColorMatteFoliageGreen: eVehicleColor = .{ .bits = @as(c_uint, @intCast(155)) };
    pub const VehicleColorDefaultAlloyColor: eVehicleColor = .{ .bits = @as(c_uint, @intCast(156)) };
    pub const VehicleColorEpsilonBlue: eVehicleColor = .{ .bits = @as(c_uint, @intCast(157)) };
    pub const VehicleColorPureGold: eVehicleColor = .{ .bits = @as(c_uint, @intCast(158)) };
    pub const VehicleColorBrushedGold: eVehicleColor = .{ .bits = @as(c_uint, @intCast(159)) };
};

pub const eVehicleDoor = extern struct {
    bits: c_int = 0,

    pub const VehicleDoorFrontLeftDoor: eVehicleDoor = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const VehicleDoorFrontRightDoor: eVehicleDoor = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const VehicleDoorBackLeftDoor: eVehicleDoor = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const VehicleDoorBackRightDoor: eVehicleDoor = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const VehicleDoorHood: eVehicleDoor = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const VehicleDoorTrunk: eVehicleDoor = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const VehicleDoorTrunk2: eVehicleDoor = .{ .bits = @as(c_uint, @intCast(6)) };
};

pub const eVehicleLockStatus = extern struct {
    bits: c_int = 0,

    pub const VehicleLockStatusNone: eVehicleLockStatus = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const VehicleLockStatusUnlocked: eVehicleLockStatus = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const VehicleLockStatusLocked: eVehicleLockStatus = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const VehicleLockStatusLockedForPlayer: eVehicleLockStatus = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const VehicleLockStatusStickPlayerInside: eVehicleLockStatus = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const VehicleLockStatusCanBeBrokenInto: eVehicleLockStatus = .{ .bits = @as(c_uint, @intCast(7)) };
    pub const VehicleLockStatusCanBeBrokenIntoPersist: eVehicleLockStatus = .{ .bits = @as(c_uint, @intCast(8)) };
    pub const VehicleLockStatusCannotBeTriedToEnter: eVehicleLockStatus = .{ .bits = @as(c_uint, @intCast(10)) };
};

pub const eVehicleLandingGear = extern struct {
    bits: c_int = 0,

    pub const VehicleLandingGearDeployed: eVehicleLandingGear = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const VehicleLandingGearClosing: eVehicleLandingGear = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const VehicleLandingGearOpening: eVehicleLandingGear = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const VehicleLandingGearRetracted: eVehicleLandingGear = .{ .bits = @as(c_uint, @intCast(3)) };
};

pub const eVehicleMod = extern struct {
    bits: c_int = 0,

    pub const VehicleModSpoilers: eVehicleMod = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const VehicleModFrontBumper: eVehicleMod = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const VehicleModRearBumper: eVehicleMod = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const VehicleModSideSkirt: eVehicleMod = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const VehicleModExhaust: eVehicleMod = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const VehicleModFrame: eVehicleMod = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const VehicleModGrille: eVehicleMod = .{ .bits = @as(c_uint, @intCast(6)) };
    pub const VehicleModHood: eVehicleMod = .{ .bits = @as(c_uint, @intCast(7)) };
    pub const VehicleModFender: eVehicleMod = .{ .bits = @as(c_uint, @intCast(8)) };
    pub const VehicleModRightFender: eVehicleMod = .{ .bits = @as(c_uint, @intCast(9)) };
    pub const VehicleModRoof: eVehicleMod = .{ .bits = @as(c_uint, @intCast(10)) };
    pub const VehicleModEngine: eVehicleMod = .{ .bits = @as(c_uint, @intCast(11)) };
    pub const VehicleModBrakes: eVehicleMod = .{ .bits = @as(c_uint, @intCast(12)) };
    pub const VehicleModTransmission: eVehicleMod = .{ .bits = @as(c_uint, @intCast(13)) };
    pub const VehicleModHorns: eVehicleMod = .{ .bits = @as(c_uint, @intCast(14)) };
    pub const VehicleModSuspension: eVehicleMod = .{ .bits = @as(c_uint, @intCast(15)) };
    pub const VehicleModArmor: eVehicleMod = .{ .bits = @as(c_uint, @intCast(16)) };
    pub const VehicleModFrontWheels: eVehicleMod = .{ .bits = @as(c_uint, @intCast(23)) };
    /// only for motocycles
    pub const VehicleModBackWheels: eVehicleMod = .{ .bits = @as(c_uint, @intCast(24)) };
};

pub const eVehicleNeonLight = extern struct {
    bits: c_int = 0,

    pub const VehicleNeonLightLeft: eVehicleNeonLight = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const VehicleNeonLightRight: eVehicleNeonLight = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const VehicleNeonLightFront: eVehicleNeonLight = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const VehicleNeonLightBack: eVehicleNeonLight = .{ .bits = @as(c_uint, @intCast(3)) };
};

pub const eVehicleRoofState = extern struct {
    bits: c_int = 0,

    pub const VehicleRoofStateClosed: eVehicleRoofState = .{ .bits = 0 };
    pub const VehicleRoofStateOpening: eVehicleRoofState = .{ .bits = 1 };
    pub const VehicleRoofStateOpened: eVehicleRoofState = .{ .bits = 2 };
    pub const VehicleRoofStateClosing: eVehicleRoofState = .{ .bits = 3 };
};

pub const eVehicleSeat = extern struct {
    bits: c_int = 0,

    pub const VehicleSeatNone: eVehicleSeat = .{ .bits = -3 };
    pub const VehicleSeatAny: eVehicleSeat = .{ .bits = -2 };
    pub const VehicleSeatDriver: eVehicleSeat = .{ .bits = -1 };
    pub const VehicleSeatPassenger: eVehicleSeat = .{ .bits = 0 };
    pub const VehicleSeatLeftFront: eVehicleSeat = .{ .bits = -1 };
    pub const VehicleSeatRightFront: eVehicleSeat = .{ .bits = 0 };
    pub const VehicleSeatLeftRear: eVehicleSeat = .{ .bits = 1 };
    pub const VehicleSeatRightRear: eVehicleSeat = .{ .bits = 2 };
};

pub const eVehicleToggleMod = extern struct {
    bits: c_int = 0,

    pub const VehicleToggleModTurbo: eVehicleToggleMod = .{ .bits = @as(c_uint, @intCast(18)) };
    pub const VehicleToggleModTireSmoke: eVehicleToggleMod = .{ .bits = @as(c_uint, @intCast(20)) };
    pub const VehicleToggleModXenonHeadlights: eVehicleToggleMod = .{ .bits = @as(c_uint, @intCast(22)) };
};

pub const eVehicleWheelType = extern struct {
    bits: c_int = 0,

    pub const VehicleWheelTypeSport: eVehicleWheelType = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const VehicleWheelTypeMuscle: eVehicleWheelType = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const VehicleWheelTypeLowrider: eVehicleWheelType = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const VehicleWheelTypeSUV: eVehicleWheelType = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const VehicleWheelTypeOffroad: eVehicleWheelType = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const VehicleWheelTypeTuner: eVehicleWheelType = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const VehicleWheelTypeBikeWheels: eVehicleWheelType = .{ .bits = @as(c_uint, @intCast(6)) };
    pub const VehicleWheelTypeHighEnd: eVehicleWheelType = .{ .bits = @as(c_uint, @intCast(7)) };
};

pub const eVehicleWindow = extern struct {
    bits: c_int = 0,

    pub const VehicleWindowFrontRight: eVehicleWindow = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const VehicleWindowFrontLeft: eVehicleWindow = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const VehicleWindowBackRight: eVehicleWindow = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const VehicleWindowBackLeft: eVehicleWindow = .{ .bits = @as(c_uint, @intCast(2)) };
};

pub const eVehicleWindowTint = extern struct {
    bits: c_int = 0,

    pub const VehicleWindowTintNone: eVehicleWindowTint = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const VehicleWindowTintPureBlack: eVehicleWindowTint = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const VehicleWindowTintDarkSmoke: eVehicleWindowTint = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const VehicleWindowTintLightSmoke: eVehicleWindowTint = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const VehicleWindowTintStock: eVehicleWindowTint = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const VehicleWindowTintLimo: eVehicleWindowTint = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const VehicleWindowTintGreen: eVehicleWindowTint = .{ .bits = @as(c_uint, @intCast(6)) };
};

pub const eNumberPlateMounting = extern struct {
    bits: c_int = 0,

    pub const NumberPlateMountingFrontAndRear: eNumberPlateMounting = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const NumberPlateMountingFront: eNumberPlateMounting = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const NumberPlateMountingRear: eNumberPlateMounting = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const NumberPlateMountingNone: eNumberPlateMounting = .{ .bits = @as(c_uint, @intCast(3)) };
};

pub const eNumberPlateType = extern struct {
    bits: c_int = 0,

    pub const NumberPlateTypeBlueOnWhite1: eNumberPlateType = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const NumberPlateTypeYellowOnBlack: eNumberPlateType = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const NumberPlateTypeYellowOnBlue: eNumberPlateType = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const NumberPlateTypeBlueOnWhite2: eNumberPlateType = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const NumberPlateTypeBlueOnWhite3: eNumberPlateType = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const NumberPlateTypeNorthYankton: eNumberPlateType = .{ .bits = @as(c_uint, @intCast(5)) };
};

pub const eVehicleClass = extern struct {
    bits: c_int = 0,

    pub const VehicleClassCompacts: eVehicleClass = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const VehicleClassSedans: eVehicleClass = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const VehicleClassSUVs: eVehicleClass = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const VehicleClassCoupes: eVehicleClass = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const VehicleClassMuscle: eVehicleClass = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const VehicleClassSportsClassics: eVehicleClass = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const VehicleClassSports: eVehicleClass = .{ .bits = @as(c_uint, @intCast(6)) };
    pub const VehicleClassSuper: eVehicleClass = .{ .bits = @as(c_uint, @intCast(7)) };
    pub const VehicleClassMotorcycles: eVehicleClass = .{ .bits = @as(c_uint, @intCast(8)) };
    pub const VehicleClassOffRoad: eVehicleClass = .{ .bits = @as(c_uint, @intCast(9)) };
    pub const VehicleClassIndustrial: eVehicleClass = .{ .bits = @as(c_uint, @intCast(10)) };
    pub const VehicleClassUtility: eVehicleClass = .{ .bits = @as(c_uint, @intCast(11)) };
    pub const VehicleClassVans: eVehicleClass = .{ .bits = @as(c_uint, @intCast(12)) };
    pub const VehicleClassCycles: eVehicleClass = .{ .bits = @as(c_uint, @intCast(13)) };
    pub const VehicleClassBoats: eVehicleClass = .{ .bits = @as(c_uint, @intCast(14)) };
    pub const VehicleClassHelicopters: eVehicleClass = .{ .bits = @as(c_uint, @intCast(15)) };
    pub const VehicleClassPlanes: eVehicleClass = .{ .bits = @as(c_uint, @intCast(16)) };
    pub const VehicleClassService: eVehicleClass = .{ .bits = @as(c_uint, @intCast(17)) };
    pub const VehicleClassEmergency: eVehicleClass = .{ .bits = @as(c_uint, @intCast(18)) };
    pub const VehicleClassMilitary: eVehicleClass = .{ .bits = @as(c_uint, @intCast(19)) };
    pub const VehicleClassCommercial: eVehicleClass = .{ .bits = @as(c_uint, @intCast(20)) };
    pub const VehicleClassTrains: eVehicleClass = .{ .bits = @as(c_uint, @intCast(21)) };
};

pub const eExplosionType = extern struct {
    bits: c_int = 0,

    pub const ExplosionTypeGrenade: eExplosionType = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const ExplosionTypeGrenadeL: eExplosionType = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const ExplosionTypeStickyBomb: eExplosionType = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const ExplosionTypeMolotov: eExplosionType = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const ExplosionTypeRocket: eExplosionType = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const ExplosionTypeTankShell: eExplosionType = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const ExplosionTypeHiOctane: eExplosionType = .{ .bits = @as(c_uint, @intCast(6)) };
    pub const ExplosionTypeCar: eExplosionType = .{ .bits = @as(c_uint, @intCast(7)) };
    pub const ExplosionTypePlane: eExplosionType = .{ .bits = @as(c_uint, @intCast(8)) };
    pub const ExplosionTypePetrolPump: eExplosionType = .{ .bits = @as(c_uint, @intCast(9)) };
    pub const ExplosionTypeBike: eExplosionType = .{ .bits = @as(c_uint, @intCast(10)) };
    pub const ExplosionTypeSteam: eExplosionType = .{ .bits = @as(c_uint, @intCast(11)) };
    pub const ExplosionTypeFlame: eExplosionType = .{ .bits = @as(c_uint, @intCast(12)) };
    pub const ExplosionTypeWaterHydrant: eExplosionType = .{ .bits = @as(c_uint, @intCast(13)) };
    pub const ExplosionTypeGasCanister: eExplosionType = .{ .bits = @as(c_uint, @intCast(14)) };
    pub const ExplosionTypeBoat: eExplosionType = .{ .bits = @as(c_uint, @intCast(15)) };
    pub const ExplosionTypeShipDestroy: eExplosionType = .{ .bits = @as(c_uint, @intCast(16)) };
    pub const ExplosionTypeTruck: eExplosionType = .{ .bits = @as(c_uint, @intCast(17)) };
    pub const ExplosionTypeBullet: eExplosionType = .{ .bits = @as(c_uint, @intCast(18)) };
    pub const ExplosionTypeSmokeGL: eExplosionType = .{ .bits = @as(c_uint, @intCast(19)) };
    pub const ExplosionTypeSmokeG: eExplosionType = .{ .bits = @as(c_uint, @intCast(20)) };
    pub const ExplosionTypeBZGas: eExplosionType = .{ .bits = @as(c_uint, @intCast(21)) };
    pub const ExplosionTypeFlare: eExplosionType = .{ .bits = @as(c_uint, @intCast(22)) };
    pub const ExplosionTypeGasCanister2: eExplosionType = .{ .bits = @as(c_uint, @intCast(23)) };
    pub const ExplosionTypeExtinguisher: eExplosionType = .{ .bits = @as(c_uint, @intCast(24)) };
    pub const ExplosionTypeProgramAR: eExplosionType = .{ .bits = @as(c_uint, @intCast(25)) };
    pub const ExplosionTypeTrain: eExplosionType = .{ .bits = @as(c_uint, @intCast(26)) };
    pub const ExplosionTypeBarrel: eExplosionType = .{ .bits = @as(c_uint, @intCast(27)) };
    pub const ExplosionTypePropane: eExplosionType = .{ .bits = @as(c_uint, @intCast(28)) };
    pub const ExplosionTypeBlimp: eExplosionType = .{ .bits = @as(c_uint, @intCast(29)) };
    pub const ExplosionTypeFlameExplode: eExplosionType = .{ .bits = @as(c_uint, @intCast(30)) };
    pub const ExplosionTypeTanker: eExplosionType = .{ .bits = @as(c_uint, @intCast(31)) };
    pub const ExplosionTypePlaneRocket: eExplosionType = .{ .bits = @as(c_uint, @intCast(32)) };
    pub const ExplosionTypeVehicleBullet: eExplosionType = .{ .bits = @as(c_uint, @intCast(33)) };
    pub const ExplosionTypeGasTank: eExplosionType = .{ .bits = @as(c_uint, @intCast(34)) };
    pub const ExplosionTypeFireWork: eExplosionType = .{ .bits = @as(c_uint, @intCast(35)) };
    pub const ExplosionTypeSnowBall: eExplosionType = .{ .bits = @as(c_uint, @intCast(36)) };
    pub const ExplosionTypeProxMine: eExplosionType = .{ .bits = @as(c_uint, @intCast(37)) };
    pub const ExplosionTypeValkyrie: eExplosionType = .{ .bits = @as(c_uint, @intCast(38)) };
};

pub const eIntersectFlags = extern struct {
    bits: c_int = 0,

    pub const IntersectFlagsEverything: eIntersectFlags = .{ .bits = -1 };
    pub const IntersectFlagsMap: eIntersectFlags = .{ .bits = 1 };
    pub const IntersectFlagsMissionEntities: eIntersectFlags = .{ .bits = 2 };
    /// 4 and 8 both seem to be peds
    pub const IntersectFlagsPeds1: eIntersectFlags = .{ .bits = 12 };
    pub const IntersectFlagsObjects: eIntersectFlags = .{ .bits = 16 };
    pub const IntersectFlagsUnk1: eIntersectFlags = .{ .bits = 32 };
    pub const IntersectFlagsUnk2: eIntersectFlags = .{ .bits = 64 };
    pub const IntersectFlagsUnk3: eIntersectFlags = .{ .bits = 128 };
    pub const IntersectFlagsVegetation: eIntersectFlags = .{ .bits = 256 };
    pub const IntersectFlagsUnk4: eIntersectFlags = .{ .bits = 512 };
};

pub const eMarkerType = extern struct {
    bits: c_int = 0,

    pub const MarkerTypeUpsideDownCone: eMarkerType = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const MarkerTypeVerticalCylinder: eMarkerType = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const MarkerTypeThickChevronUp: eMarkerType = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const MarkerTypeThinChevronUp: eMarkerType = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const MarkerTypeCheckeredFlagRect: eMarkerType = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const MarkerTypeCheckeredFlagCircle: eMarkerType = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const MarkerTypeVerticleCircle: eMarkerType = .{ .bits = @as(c_uint, @intCast(6)) };
    pub const MarkerTypePlaneModel: eMarkerType = .{ .bits = @as(c_uint, @intCast(7)) };
    pub const MarkerTypeLostMCDark: eMarkerType = .{ .bits = @as(c_uint, @intCast(8)) };
    pub const MarkerTypeLostMCLight: eMarkerType = .{ .bits = @as(c_uint, @intCast(9)) };
    pub const MarkerTypeNumber0: eMarkerType = .{ .bits = @as(c_uint, @intCast(10)) };
    pub const MarkerTypeNumber1: eMarkerType = .{ .bits = @as(c_uint, @intCast(11)) };
    pub const MarkerTypeNumber2: eMarkerType = .{ .bits = @as(c_uint, @intCast(12)) };
    pub const MarkerTypeNumber3: eMarkerType = .{ .bits = @as(c_uint, @intCast(13)) };
    pub const MarkerTypeNumber4: eMarkerType = .{ .bits = @as(c_uint, @intCast(14)) };
    pub const MarkerTypeNumber5: eMarkerType = .{ .bits = @as(c_uint, @intCast(15)) };
    pub const MarkerTypeNumber6: eMarkerType = .{ .bits = @as(c_uint, @intCast(16)) };
    pub const MarkerTypeNumber7: eMarkerType = .{ .bits = @as(c_uint, @intCast(17)) };
    pub const MarkerTypeNumber8: eMarkerType = .{ .bits = @as(c_uint, @intCast(18)) };
    pub const MarkerTypeNumber9: eMarkerType = .{ .bits = @as(c_uint, @intCast(19)) };
    pub const MarkerTypeChevronUpx1: eMarkerType = .{ .bits = @as(c_uint, @intCast(20)) };
    pub const MarkerTypeChevronUpx2: eMarkerType = .{ .bits = @as(c_uint, @intCast(21)) };
    pub const MarkerTypeChevronUpx3: eMarkerType = .{ .bits = @as(c_uint, @intCast(22)) };
    pub const MarkerTypeHorizontalCircleFat: eMarkerType = .{ .bits = @as(c_uint, @intCast(23)) };
    pub const MarkerTypeReplayIcon: eMarkerType = .{ .bits = @as(c_uint, @intCast(24)) };
    pub const MarkerTypeHorizontalCircleSkinny: eMarkerType = .{ .bits = @as(c_uint, @intCast(25)) };
    pub const MarkerTypeHorizontalCircleSkinny_Arrow: eMarkerType = .{ .bits = @as(c_uint, @intCast(26)) };
    pub const MarkerTypeHorizontalSplitArrowCircle: eMarkerType = .{ .bits = @as(c_uint, @intCast(27)) };
    pub const MarkerTypeDebugSphere: eMarkerType = .{ .bits = @as(c_uint, @intCast(28)) };
};

pub const eRelationship = extern struct {
    bits: c_int = 0,

    pub const RelationshipHate: eRelationship = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const RelationshipDislike: eRelationship = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const RelationshipNeutral: eRelationship = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const RelationshipLike: eRelationship = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const RelationshipRespect: eRelationship = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const RelationshipCompanion: eRelationship = .{ .bits = @as(c_uint, @intCast(0)) };
    /// or neutral
    pub const RelationshipPedestrians: eRelationship = .{ .bits = @as(c_uint, @intCast(255)) };
};

pub const eRopeType = extern struct {
    bits: c_int = 0,

    pub const RopeTypeNormal: eRopeType = .{ .bits = @as(c_uint, @intCast(4)) };
};

pub const eWeapon = extern struct {
    bits: c_int = 0,

    pub const WeaponKnife: eWeapon = .{ .bits = @as(DWORD, @intCast(2578778090)) };
    pub const WeaponNightstick: eWeapon = .{ .bits = @as(DWORD, @intCast(1737195953)) };
    pub const WeaponHammer: eWeapon = .{ .bits = @as(DWORD, @intCast(1317494643)) };
    pub const WeaponBat: eWeapon = .{ .bits = @as(DWORD, @intCast(2508868239)) };
    pub const WeaponGolfClub: eWeapon = .{ .bits = @as(DWORD, @intCast(1141786504)) };
    pub const WeaponCrowbar: eWeapon = .{ .bits = @as(DWORD, @intCast(2227010557)) };
    pub const WeaponPistol: eWeapon = .{ .bits = @as(DWORD, @intCast(453432689)) };
    pub const WeaponCombatPistol: eWeapon = .{ .bits = @as(DWORD, @intCast(1593441988)) };
    pub const WeaponAPPistol: eWeapon = .{ .bits = @as(DWORD, @intCast(584646201)) };
    pub const WeaponPistol50: eWeapon = .{ .bits = @as(DWORD, @intCast(2578377531)) };
    pub const WeaponMicroSMG: eWeapon = .{ .bits = @as(DWORD, @intCast(324215364)) };
    pub const WeaponSMG: eWeapon = .{ .bits = @as(DWORD, @intCast(736523883)) };
    pub const WeaponAssaultSMG: eWeapon = .{ .bits = @as(DWORD, @intCast(4024951519)) };
    pub const WeaponCombatPDW: eWeapon = .{ .bits = @as(DWORD, @intCast(171789620)) };
    pub const WeaponAssaultRifle: eWeapon = .{ .bits = @as(DWORD, @intCast(3220176749)) };
    pub const WeaponCarbineRifle: eWeapon = .{ .bits = @as(DWORD, @intCast(2210333304)) };
    pub const WeaponAdvancedRifle: eWeapon = .{ .bits = @as(DWORD, @intCast(2937143193)) };
    pub const WeaponMG: eWeapon = .{ .bits = @as(DWORD, @intCast(2634544996)) };
    pub const WeaponCombatMG: eWeapon = .{ .bits = @as(DWORD, @intCast(2144741730)) };
    pub const WeaponPumpShotgun: eWeapon = .{ .bits = @as(DWORD, @intCast(487013001)) };
    pub const WeaponSawnOffShotgun: eWeapon = .{ .bits = @as(DWORD, @intCast(2017895192)) };
    pub const WeaponAssaultShotgun: eWeapon = .{ .bits = @as(DWORD, @intCast(3800352039)) };
    pub const WeaponBullpupShotgun: eWeapon = .{ .bits = @as(DWORD, @intCast(2640438543)) };
    pub const WeaponStunGun: eWeapon = .{ .bits = @as(DWORD, @intCast(911657153)) };
    pub const WeaponSniperRifle: eWeapon = .{ .bits = @as(DWORD, @intCast(100416529)) };
    pub const WeaponHeavySniper: eWeapon = .{ .bits = @as(DWORD, @intCast(205991906)) };
    pub const WeaponGrenadeLauncher: eWeapon = .{ .bits = @as(DWORD, @intCast(2726580491)) };
    pub const WeaponGrenadeLauncherSmoke: eWeapon = .{ .bits = @as(DWORD, @intCast(1305664598)) };
    pub const WeaponRPG: eWeapon = .{ .bits = @as(DWORD, @intCast(2982836145)) };
    pub const WeaponMinigun: eWeapon = .{ .bits = @as(DWORD, @intCast(1119849093)) };
    pub const WeaponGrenade: eWeapon = .{ .bits = @as(DWORD, @intCast(2481070269)) };
    pub const WeaponStickyBomb: eWeapon = .{ .bits = @as(DWORD, @intCast(741814745)) };
    pub const WeaponSmokeGrenade: eWeapon = .{ .bits = @as(DWORD, @intCast(4256991824)) };
    pub const WeaponBZGas: eWeapon = .{ .bits = @as(DWORD, @intCast(2694266206)) };
    pub const WeaponMolotov: eWeapon = .{ .bits = @as(DWORD, @intCast(615608432)) };
    pub const WeaponFireExtinguisher: eWeapon = .{ .bits = @as(DWORD, @intCast(101631238)) };
    pub const WeaponPetrolCan: eWeapon = .{ .bits = @as(DWORD, @intCast(883325847)) };
    pub const WeaponSNSPistol: eWeapon = .{ .bits = @as(DWORD, @intCast(3218215474)) };
    pub const WeaponSpecialCarbine: eWeapon = .{ .bits = @as(DWORD, @intCast(3231910285)) };
    pub const WeaponHeavyPistol: eWeapon = .{ .bits = @as(DWORD, @intCast(3523564046)) };
    pub const WeaponBullpupRifle: eWeapon = .{ .bits = @as(DWORD, @intCast(2132975508)) };
    pub const WeaponHomingLauncher: eWeapon = .{ .bits = @as(DWORD, @intCast(1672152130)) };
    pub const WeaponProximityMine: eWeapon = .{ .bits = @as(DWORD, @intCast(2874559379)) };
    pub const WeaponSnowball: eWeapon = .{ .bits = @as(DWORD, @intCast(126349499)) };
    pub const WeaponVintagePistol: eWeapon = .{ .bits = @as(DWORD, @intCast(137902532)) };
    pub const WeaponDagger: eWeapon = .{ .bits = @as(DWORD, @intCast(2460120199)) };
    pub const WeaponFirework: eWeapon = .{ .bits = @as(DWORD, @intCast(2138347493)) };
    pub const WeaponMusket: eWeapon = .{ .bits = @as(DWORD, @intCast(2828843422)) };
    pub const WeaponMarksmanRifle: eWeapon = .{ .bits = @as(DWORD, @intCast(3342088282)) };
    pub const WeaponHeavyShotgun: eWeapon = .{ .bits = @as(DWORD, @intCast(984333226)) };
    pub const WeaponGusenberg: eWeapon = .{ .bits = @as(DWORD, @intCast(1627465347)) };
    pub const WeaponHatchet: eWeapon = .{ .bits = @as(DWORD, @intCast(4191993645)) };
    pub const WeaponRailgun: eWeapon = .{ .bits = @as(DWORD, @intCast(1834241177)) };
    pub const WeaponUnarmed: eWeapon = .{ .bits = @as(DWORD, @intCast(2725352035)) };
};

pub const eWeaponGroup = extern struct {
    bits: c_int = 0,

    pub const WeaponGroupUnarmed: eWeaponGroup = .{ .bits = @as(DWORD, @intCast(2685387236)) };
    pub const WeaponGroupMelee: eWeaponGroup = .{ .bits = @as(DWORD, @intCast(3566412244)) };
    pub const WeaponGroupPistol: eWeaponGroup = .{ .bits = @as(DWORD, @intCast(416676503)) };
    pub const WeaponGroupSMG: eWeaponGroup = .{ .bits = @as(DWORD, @intCast(3337201093)) };
    pub const WeaponGroupAssaultRifle: eWeaponGroup = .{ .bits = @as(DWORD, @intCast(3352383570)) };
    pub const WeaponGroupMG: eWeaponGroup = .{ .bits = @as(DWORD, @intCast(1159398588)) };
    pub const WeaponGroupShotgun: eWeaponGroup = .{ .bits = @as(DWORD, @intCast(860033945)) };
    pub const WeaponGroupSniper: eWeaponGroup = .{ .bits = @as(DWORD, @intCast(3082541095)) };
    pub const WeaponGroupHeavy: eWeaponGroup = .{ .bits = @as(DWORD, @intCast(2725924767)) };
    pub const WeaponGroupThrown: eWeaponGroup = .{ .bits = @as(DWORD, @intCast(1548507267)) };
    pub const WeaponGroupPetrolCan: eWeaponGroup = .{ .bits = @as(DWORD, @intCast(1595662460)) };
};

pub const eWeaponTint = extern struct {
    bits: c_int = 0,

    pub const WeaponTintNormal: eWeaponTint = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const WeaponTintGreen: eWeaponTint = .{ .bits = @as(c_uint, @intCast(1)) };
    pub const WeaponTintGold: eWeaponTint = .{ .bits = @as(c_uint, @intCast(2)) };
    pub const WeaponTintPink: eWeaponTint = .{ .bits = @as(c_uint, @intCast(3)) };
    pub const WeaponTintArmy: eWeaponTint = .{ .bits = @as(c_uint, @intCast(4)) };
    pub const WeaponTintLSPD: eWeaponTint = .{ .bits = @as(c_uint, @intCast(5)) };
    pub const WeaponTintOrange: eWeaponTint = .{ .bits = @as(c_uint, @intCast(6)) };
    pub const WeaponTintPlatinum: eWeaponTint = .{ .bits = @as(c_uint, @intCast(7)) };
};

pub const ePickupType = extern struct {
    bits: c_int = 0,

    pub const PickupTypeCustomScript: ePickupType = .{ .bits = @as(DWORD, @intCast(738282662)) };
    pub const PickupTypeVehicleCustomScript: ePickupType = .{ .bits = @as(DWORD, @intCast(2780351145)) };
    pub const PickupTypeParachute: ePickupType = .{ .bits = @as(DWORD, @intCast(1735599485)) };
    pub const PickupTypePortablePackage: ePickupType = .{ .bits = @as(DWORD, @intCast(2158727964)) };
    pub const PickupTypePortableCrateUnfixed: ePickupType = .{ .bits = @as(DWORD, @intCast(1852930709)) };
    pub const PickupTypeHealth: ePickupType = .{ .bits = @as(DWORD, @intCast(2406513688)) };
    pub const PickupTypeHealthSnack: ePickupType = .{ .bits = @as(DWORD, @intCast(483577702)) };
    pub const PickupTypeArmour: ePickupType = .{ .bits = @as(DWORD, @intCast(1274757841)) };
    pub const PickupTypeMoneyCase: ePickupType = .{ .bits = @as(DWORD, @intCast(3463437675)) };
    pub const PickupTypeMoneySecurityCase: ePickupType = .{ .bits = @as(DWORD, @intCast(3732468094)) };
    pub const PickupTypeMoneyVariable: ePickupType = .{ .bits = @as(DWORD, @intCast(4263048111)) };
    pub const PickupTypeMoneyMedBag: ePickupType = .{ .bits = @as(DWORD, @intCast(341217064)) };
    pub const PickupTypeMoneyPurse: ePickupType = .{ .bits = @as(DWORD, @intCast(513448440)) };
    pub const PickupTypeMoneyDepBag: ePickupType = .{ .bits = @as(DWORD, @intCast(545862290)) };
    pub const PickupTypeMoneyWallet: ePickupType = .{ .bits = @as(DWORD, @intCast(1575005502)) };
    pub const PickupTypeMoneyPaperBag: ePickupType = .{ .bits = @as(DWORD, @intCast(1897726628)) };
    pub const PickupTypeWeaponPistol: ePickupType = .{ .bits = @as(DWORD, @intCast(4189041807)) };
    pub const PickupTypeWeaponCombatPistol: ePickupType = .{ .bits = @as(DWORD, @intCast(2305275123)) };
    pub const PickupTypeWeaponAPPistol: ePickupType = .{ .bits = @as(DWORD, @intCast(996550793)) };
    pub const PickupTypeWeaponSNSPistol: ePickupType = .{ .bits = @as(DWORD, @intCast(3317114643)) };
    pub const PickupTypeWeaponHeavyPistol: ePickupType = .{ .bits = @as(DWORD, @intCast(2633054488)) };
    pub const PickupTypeWeaponMicroSMG: ePickupType = .{ .bits = @as(DWORD, @intCast(496339155)) };
    pub const PickupTypeWeaponSMG: ePickupType = .{ .bits = @as(DWORD, @intCast(978070226)) };
    pub const PickupTypeWeaponMG: ePickupType = .{ .bits = @as(DWORD, @intCast(2244651441)) };
    pub const PickupTypeWeaponCombatMG: ePickupType = .{ .bits = @as(DWORD, @intCast(2995980820)) };
    pub const PickupTypeWeaponAssaultRifle: ePickupType = .{ .bits = @as(DWORD, @intCast(4080829360)) };
    pub const PickupTypeWeaponCarbineRifle: ePickupType = .{ .bits = @as(DWORD, @intCast(3748731225)) };
    pub const PickupTypeWeaponAdvancedRifle: ePickupType = .{ .bits = @as(DWORD, @intCast(2998219358)) };
    pub const PickupTypeWeaponSpecialCarbine: ePickupType = .{ .bits = @as(DWORD, @intCast(157823901)) };
    pub const PickupTypeWeaponBullpupRifle: ePickupType = .{ .bits = @as(DWORD, @intCast(2170382056)) };
    pub const PickupTypeWeaponPumpShotgun: ePickupType = .{ .bits = @as(DWORD, @intCast(2838846925)) };
    pub const PickupTypeWeaponSawnoffShotgun: ePickupType = .{ .bits = @as(DWORD, @intCast(2528383651)) };
    pub const PickupTypeWeaponAssaultShotgun: ePickupType = .{ .bits = @as(DWORD, @intCast(2459552091)) };
    pub const PickupTypeWeaponSniperRifle: ePickupType = .{ .bits = @as(DWORD, @intCast(4264178988)) };
    pub const PickupTypeWeaponHeavySniper: ePickupType = .{ .bits = @as(DWORD, @intCast(1765114797)) };
    pub const PickupTypeWeaponGrenadeLauncher: ePickupType = .{ .bits = @as(DWORD, @intCast(779501861)) };
    pub const PickupTypeWeaponRPG: ePickupType = .{ .bits = @as(DWORD, @intCast(1295434569)) };
    pub const PickupTypeWeaponMinigun: ePickupType = .{ .bits = @as(DWORD, @intCast(792114228)) };
    pub const PickupTypeWeaponGrenade: ePickupType = .{ .bits = @as(DWORD, @intCast(1577485217)) };
    pub const PickupTypeWeaponStickyBomb: ePickupType = .{ .bits = @as(DWORD, @intCast(2081529176)) };
    pub const PickupTypeWeaponSmokeGrenade: ePickupType = .{ .bits = @as(DWORD, @intCast(483787975)) };
    pub const PickupTypeWeaponMolotov: ePickupType = .{ .bits = @as(DWORD, @intCast(768803961)) };
    pub const PickupTypeWeaponPetrolCan: ePickupType = .{ .bits = @as(DWORD, @intCast(3332236287)) };
    pub const PickupTypeWeaponKnife: ePickupType = .{ .bits = @as(DWORD, @intCast(663586612)) };
    pub const PickupTypeWeaponNightstick: ePickupType = .{ .bits = @as(DWORD, @intCast(1587637620)) };
    pub const PickupTypeWeaponBat: ePickupType = .{ .bits = @as(DWORD, @intCast(2179883038)) };
    pub const PickupTypeWeaponCrowbar: ePickupType = .{ .bits = @as(DWORD, @intCast(2267924616)) };
    pub const PickupTypeWeaponGolfclub: ePickupType = .{ .bits = @as(DWORD, @intCast(2297080999)) };
    pub const PickupTypeWeaponBottle: ePickupType = .{ .bits = @as(DWORD, @intCast(4199656437)) };
    pub const PickupTypeVehicleWeaponPistol: ePickupType = .{ .bits = @as(DWORD, @intCast(2773149623)) };
    pub const PickupTypeVehicleWeaponCombatPistol: ePickupType = .{ .bits = @as(DWORD, @intCast(3500855031)) };
    pub const PickupTypeVehicleWeaponAPPistol: ePickupType = .{ .bits = @as(DWORD, @intCast(3431676165)) };
    pub const PickupTypeVehicleWeaponMicroSMG: ePickupType = .{ .bits = @as(DWORD, @intCast(3094015579)) };
    pub const PickupTypeVehicleWeaponSawnoffShotgun: ePickupType = .{ .bits = @as(DWORD, @intCast(772217690)) };
    pub const PickupTypeVehicleWeaponGrenade: ePickupType = .{ .bits = @as(DWORD, @intCast(2803366040)) };
    pub const PickupTypeVehicleWeaponSmokeGrenade: ePickupType = .{ .bits = @as(DWORD, @intCast(1705498857)) };
    pub const PickupTypeVehicleWeaponStickyBomb: ePickupType = .{ .bits = @as(DWORD, @intCast(746606563)) };
    pub const PickupTypeVehicleWeaponMolotov: ePickupType = .{ .bits = @as(DWORD, @intCast(2228647636)) };
    pub const PickupTypeVehicleHealth: ePickupType = .{ .bits = @as(DWORD, @intCast(160266735)) };
    pub const PickupTypeAmmoPistol: ePickupType = .{ .bits = @as(DWORD, @intCast(544828034)) };
    pub const PickupTypeAmmoSMG: ePickupType = .{ .bits = @as(DWORD, @intCast(292537574)) };
    pub const PickupTypeAmmoMG: ePickupType = .{ .bits = @as(DWORD, @intCast(3730366643)) };
    pub const PickupTypeAmmoRifle: ePickupType = .{ .bits = @as(DWORD, @intCast(3837603782)) };
    pub const PickupTypeAmmoShotgun: ePickupType = .{ .bits = @as(DWORD, @intCast(2012476125)) };
    pub const PickupTypeAmmoSniper: ePickupType = .{ .bits = @as(DWORD, @intCast(3224170789)) };
    pub const PickupTypeAmmoGrenadeLauncher: ePickupType = .{ .bits = @as(DWORD, @intCast(2283450536)) };
    pub const PickupTypeAmmoRPG: ePickupType = .{ .bits = @as(DWORD, @intCast(2223210455)) };
    pub const PickupTypeAmmoMinigun: ePickupType = .{ .bits = @as(DWORD, @intCast(4065984953)) };
    pub const PickupTypeAmmoMissileMP: ePickupType = .{ .bits = @as(DWORD, @intCast(4187887056)) };
    pub const PickupTypeAmmoBulletMP: ePickupType = .{ .bits = @as(DWORD, @intCast(1426343849)) };
    pub const PickupTypeAmmoGrenadeLauncherMP: ePickupType = .{ .bits = @as(DWORD, @intCast(2753668402)) };
};

pub const eHudComponent = extern struct {
    bits: c_int = 0,

    pub const HudComponentMain: eHudComponent = .{ .bits = @as(c_uint, @intCast(0)) };
    pub const HudComponentWantedStars: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 1 };
    pub const HudComponentWeaponIcon: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 2 };
    pub const HudComponentCash: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 3 };
    pub const HudComponentMpCash: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 4 };
    pub const HudComponentMpMessage: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 5 };
    pub const HudComponentVehicleName: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 6 };
    pub const HudComponentAreaName: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 7 };
    pub const HudComponentUnused: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 8 };
    pub const HudComponentStreetName: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 9 };
    pub const HudComponentHelpText: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 10 };
    pub const HudComponentFloatingHelpText1: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 11 };
    pub const HudComponentFloatingHelpText2: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 12 };
    pub const HudComponentCashChange: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 13 };
    pub const HudComponentReticle: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 14 };
    pub const HudComponentSubtitleText: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 15 };
    pub const HudComponentRadioStationsWheel: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 16 };
    pub const HudComponentSaving: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 17 };
    pub const HudComponentGameStreamUnused: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 18 };
    pub const HudComponentWeaponWheel: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 19 };
    pub const HudComponentWeaponWheelStats: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 20 };
    pub const HudComponentDrugsPurse01: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 21 };
    pub const HudComponentDrugsPurse02: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 22 };
    pub const HudComponentDrugsPurse03: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 23 };
    pub const HudComponentDrugsPurse04: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 24 };
    pub const HudComponentMpTagCashFromBank: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 25 };
    pub const HudComponentMpTagPackages: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 26 };
    pub const HudComponentMpTagCuffKeys: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 27 };
    pub const HudComponentMpTagDownloadData: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 28 };
    pub const HudComponentMpTagIfPedFollowing: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 29 };
    pub const HudComponentMpTagKeyCard: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 30 };
    pub const HudComponentMpTagRandomObject: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 31 };
    pub const HudComponentMpTagRemoteControl: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 32 };
    pub const HudComponentMpTagCashFromSafe: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 33 };
    pub const HudComponentMpTagWeaponsPackage: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 34 };
    pub const HudComponentMpTagKeys: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 35 };
    pub const HudComponentMpVehicle: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 36 };
    pub const HudComponentMpVehicleHeli: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 37 };
    pub const HudComponentMpVehiclePlane: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 38 };
    pub const HudComponentPlayerSwitchAlert: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 39 };
    pub const HudComponentMpRankBar: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 40 };
    pub const HudComponentDirectorMode: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 41 };
    pub const HudComponentReplayController: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 42 };
    pub const HudComponentReplayMouse: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 43 };
    pub const HudComponentReplayHeader: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 44 };
    pub const HudComponentReplayOptions: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 45 };
    pub const HudComponentReplayHelpText: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 46 };
    pub const HudComponentReplayMiscText: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 47 };
    pub const HudComponentReplayTopLine: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 48 };
    pub const HudComponentReplayBottomLine: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 49 };
    pub const HudComponentReplayLeftBar: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 50 };
    pub const HudComponentReplayTimer: eHudComponent = .{ .bits = eHudComponent.HudComponentMain.bits + 51 };
};
