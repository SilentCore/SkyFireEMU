
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
  `account` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`account`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `account_data` WRITE;
/*!40000 ALTER TABLE `account_data` DISABLE KEYS */;
INSERT INTO `account_data` VALUES (6,0,1306099674,'SET spellActivationOverlayOpacity \"0.65000003576279\"\r\nSET flaggedTutorials \"v##Y##E##%##:##$##-##\'##(##.##Z##8##[##)##K##_##1##9##I##D##0##J##V##3##F##A##B##7##X##6##S##T##Q##C##?##<##5##L##4\"\r\nSET UnitNameOwn \"1\"\r\nSET cameraDistanceMaxFactor \"1\"\r\nSET showNewbieTips \"0\"\r\nSET UberTooltips \"0\"\r\nSET showTutorials \"0\"\r\nSET talentFrameShown \"1\"\r\n'),(6,4,1306099675,'MACRO 9 \"cooldown\" Ability_Creature_Disease_03\r\n.cooldown\r\nEND\r\nMACRO 12 \"Deserter \" Ability_Creature_Disease_05\r\n.unaura 26013\r\nEND\r\nMACRO 7 \"Finger 11\" Ability_Creature_Disease_04\r\n.ann (.(....(....(..../.)..)..(..(.\\....)....)....).)\r\n.ann .\\................\\/.../....\\...\\/................/\r\n.ann ..\\................. /........\\................../\r\n.ann ....\\..............(............)............../\r\nEND\r\nMACRO 6 \"finger2\" Ability_Creature_Disease_04\r\n.ann ............./´¯/).............(\\¯`\\\r\n.ann ............/....//..............\\\\....\\\r\n.ann .........../....//................\\\\....\\\r\n.ann ...../´¯/..../´¯\\.........../¯`\\....\\¯`\\\r\n.ann .././.../..../..../.||_......_||.\\....\\....\\...\\.\\..\r\nEND\r\nMACRO 5 \"GO Delete\" Ability_Creature_Cursed_04\r\n.gobject delete\r\nEND\r\nMACRO 4 \"Kill\" Ability_Creature_Cursed_05\r\n.die\r\nEND\r\nMACRO 14 \"killer\" INV_Misc_QuestionMark\r\n/target Adar\r\n.die Adar\r\n/target Adar\r\n.revive\r\nEND\r\nMACRO 3 \"Npc Delete\" Ability_Ambush\r\n.npc delete\r\nEND\r\nMACRO 1 \"Opcode\" INV_Misc_QuestionMark\r\n.opcode\r\nEND\r\nMACRO 10 \"opcode backup\" Ability_Creature_Poison_02\r\n.opcode back\r\nEND\r\nMACRO 11 \"opcode forward1\" Ability_Creature_Cursed_03\r\n.opcode\r\nEND\r\nMACRO 13 \"orb teleporter\" Ability_Druid_AquaticForm\r\n.gob add 184503\r\nEND\r\nMACRO 8 \"respawn\" Ability_Creature_Poison_05\r\n.respawn\r\nEND\r\nMACRO 2 \"Target GO\" Ability_CheapShot\r\n.gobject target\r\nEND\r\n');
/*!40000 ALTER TABLE `account_data` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `account_instance_times`;
CREATE TABLE `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `account_instance_times` WRITE;
/*!40000 ALTER TABLE `account_instance_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_instance_times` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
  `name` varchar(120) NOT NULL DEFAULT '',
  `crc` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Addons';

LOCK TABLES `addons` WRITE;
/*!40000 ALTER TABLE `addons` DISABLE KEYS */;
INSERT INTO `addons` VALUES ('Blizzard_AchievementUI',1276933997),('Blizzard_ArchaeologyUI',1276933997),('Blizzard_ArenaUI',1276933997),('Blizzard_AuctionUI',1276933997),('Blizzard_BarbershopUI',1276933997),('Blizzard_BattlefieldMinimap',1276933997),('Blizzard_BindingUI',1276933997),('Blizzard_Calendar',1276933997),('Blizzard_CombatLog',1276933997),('Blizzard_CombatText',1276933997),('Blizzard_CompactRaidFrames',1276933997),('Blizzard_DebugTools',1276933997),('Blizzard_GlyphUI',1276933997),('Blizzard_GMChatUI',1276933997),('Blizzard_GMSurveyUI',1276933997),('Blizzard_GuildBankUI',1276933997),('Blizzard_GuildControlUI',1276933997),('Blizzard_GuildUI',1276933997),('Blizzard_InspectUI',1276933997),('Blizzard_ItemSocketingUI',1276933997),('Blizzard_MacroUI',1276933997),('Blizzard_RaidUI',1276933997),('Blizzard_ReforgingUI',1276933997),('Blizzard_TalentUI',1276933997),('Blizzard_TimeManager',1276933997),('Blizzard_TokenUI',1276933997),('Blizzard_TradeSkillUI',1276933997),('Blizzard_TrainerUI',1276933997);
/*!40000 ALTER TABLE `addons` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(5) unsigned NOT NULL,
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL,
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `borderColor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `arena_team` WRITE;
/*!40000 ALTER TABLE `arena_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `personalRating` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `arena_team_member` WRITE;
/*!40000 ALTER TABLE `arena_team_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team_member` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE `auctionhouse` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemowner` int(10) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `buyguid` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbid` int(10) unsigned NOT NULL DEFAULT '0',
  `startbid` int(10) unsigned NOT NULL DEFAULT '0',
  `deposit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `auctionhouse` WRITE;
/*!40000 ALTER TABLE `auctionhouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctionhouse` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE `bugreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Debug System';

LOCK TABLES `bugreport` WRITE;
/*!40000 ALTER TABLE `bugreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugreport` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `channels`;
CREATE TABLE `channels` (
  `name` varchar(128) NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `password` varchar(32) DEFAULT NULL,
  `bannedList` text,
  `lastUsed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Channel System';

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE `character_account_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_account_data` WRITE;
/*!40000 ALTER TABLE `character_account_data` DISABLE KEYS */;
INSERT INTO `character_account_data` VALUES (1,1,1306099727,'SET trackedQuests \"v\"\r\nSET trackedAchievements \"v\"\r\nSET cameraSavedDistance \"5.550000\"\r\nSET cameraSavedPitch \"10.000000\"\r\nSET minimapShapeshiftTracking \"v\"\r\nSET reputationsCollapsed \"v##$\"\r\n'),(1,7,1306099767,'VERSION 5\n\nADDEDVERSION 16\n\nOPTION_GUILD_RECRUITMENT_CHANNEL AUTO\n\nCHANNELS\nEND\n\nZONECHANNELS 35651587\n\nCOLORS\nSYSTEM 255 255 0 N\nSAY 255 255 255 N\nPARTY 170 170 255 N\nRAID 255 127 0 N\nGUILD 64 255 64 N\nOFFICER 64 192 64 N\nYELL 255 64 64 N\nWHISPER 255 128 255 N\nWHISPER_FOREIGN 255 128 255 N\nWHISPER_INFORM 255 128 255 N\nEMOTE 255 128 64 N\nTEXT_EMOTE 255 128 64 N\nMONSTER_SAY 255 255 159 N\nMONSTER_PARTY 170 170 255 N\nMONSTER_YELL 255 64 64 N\nMONSTER_WHISPER 255 181 235 N\nMONSTER_EMOTE 255 128 64 N\nCHANNEL 255 192 192 N\nCHANNEL_JOIN 192 128 128 N\nCHANNEL_LEAVE 192 128 128 N\nCHANNEL_LIST 192 128 128 N\nCHANNEL_NOTICE 192 192 192 N\nCHANNEL_NOTICE_USER 192 192 192 N\nAFK 255 128 255 N\nDND 255 128 255 N\nIGNORED 255 0 0 N\nSKILL 85 85 255 N\nLOOT 0 170 0 N\nMONEY 255 255 0 N\nOPENING 128 128 255 N\nTRADESKILLS 255 255 255 N\nPET_INFO 128 128 255 N\nCOMBAT_MISC_INFO 128 128 255 N\nCOMBAT_XP_GAIN 111 111 255 N\nCOMBAT_HONOR_GAIN 224 202 10 N\nCOMBAT_FACTION_CHANGE 128 128 255 N\nBG_SYSTEM_NEUTRAL 255 120 10 N\nBG_SYSTEM_ALLIANCE 0 174 239 N\nBG_SYSTEM_HORDE 255 0 0 N\nRAID_LEADER 255 72 9 N\nRAID_WARNING 255 72 0 N\nRAID_BOSS_EMOTE 255 221 0 N\nRAID_BOSS_WHISPER 255 221 0 N\nFILTERED 255 0 0 N\nBATTLEGROUND 255 127 0 N\nBATTLEGROUND_LEADER 255 219 183 N\nRESTRICTED 255 0 0 N\nBATTLENET 255 255 255 N\nACHIEVEMENT 255 255 0 N\nGUILD_ACHIEVEMENT 64 255 64 N\nARENA_POINTS 255 255 255 N\nPARTY_LEADER 118 200 255 N\nTARGETICONS 255 255 0 N\nBN_WHISPER 0 255 246 N\nBN_WHISPER_INFORM 0 255 246 N\nBN_CONVERSATION 0 177 240 N\nBN_CONVERSATION_NOTICE 0 177 240 N\nBN_CONVERSATION_LIST 0 177 240 N\nBN_INLINE_TOAST_ALERT 130 197 255 N\nBN_INLINE_TOAST_BROADCAST 130 197 255 N\nBN_INLINE_TOAST_BROADCAST_INFORM 130 197 255 N\nBN_INLINE_TOAST_CONVERSATION 130 197 255 N\nCOMBAT_GUILD_XP_GAIN 111 111 255 N\nCURRENCY 0 170 0 N\nBN_WHISPER_PLAYER_OFFLINE 255 255 0 N\nCHANNEL1 255 192 192 N\nCHANNEL2 255 192 192 N\nCHANNEL3 255 192 192 N\nCHANNEL4 255 192 192 N\nCHANNEL5 255 192 192 N\nCHANNEL6 255 192 192 N\nCHANNEL7 255 192 192 N\nCHANNEL8 255 192 192 N\nCHANNEL9 255 192 192 N\nCHANNEL10 255 192 192 N\nEND\n\nWINDOW 1\nNAME General\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 1\nSHOWN 1\nMESSAGES\nSYSTEM\nSYSTEM_NOMENU\nSAY\nEMOTE\nYELL\nWHISPER\nPARTY\nPARTY_LEADER\nRAID\nRAID_LEADER\nRAID_WARNING\nBATTLEGROUND\nBATTLEGROUND_LEADER\nGUILD\nOFFICER\nMONSTER_SAY\nMONSTER_YELL\nMONSTER_EMOTE\nMONSTER_WHISPER\nMONSTER_BOSS_EMOTE\nMONSTER_BOSS_WHISPER\nERRORS\nAFK\nDND\nIGNORED\nBG_HORDE\nBG_ALLIANCE\nBG_NEUTRAL\nCOMBAT_FACTION_CHANGE\nSKILL\nLOOT\nMONEY\nCHANNEL\nACHIEVEMENT\nGUILD_ACHIEVEMENT\nTARGETICONS\nBN_WHISPER\nBN_WHISPER_INFORM\nBN_CONVERSATION\nBN_INLINE_TOAST_ALERT\nCURRENCY\nBN_WHISPER_PLAYER_OFFLINE\nEND\n\nCHANNELS\nLookingForGroup\nEND\n\nZONECHANNELS 2097155\n\nEND\n\nWINDOW 2\nNAME Combat Log\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 2\nSHOWN 0\nMESSAGES\nOPENING\nTRADESKILLS\nPET_INFO\nCOMBAT_XP_GAIN\nCOMBAT_HONOR_GAIN\nCOMBAT_MISC_INFO\nCOMBAT_GUILD_XP_GAIN\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 3\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 4\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 5\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 6\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 7\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 8\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 9\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 10\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\n');
/*!40000 ALTER TABLE `character_account_data` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE `character_achievement` (
  `guid` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_achievement` WRITE;
/*!40000 ALTER TABLE `character_achievement` DISABLE KEYS */;
INSERT INTO `character_achievement` VALUES (1,6,1306099747);
/*!40000 ALTER TABLE `character_achievement` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE `character_achievement_progress` (
  `guid` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_achievement_progress` WRITE;
/*!40000 ALTER TABLE `character_achievement_progress` DISABLE KEYS */;
INSERT INTO `character_achievement_progress` VALUES (1,34,10,1306099747),(1,35,10,1306099747),(1,36,10,1306099747),(1,37,10,1306099747),(1,38,10,1306099747),(1,39,10,1306099747),(1,40,10,1306099747),(1,41,10,1306099747),(1,167,50,1306099767),(1,641,50,1306099767),(1,652,50,1306099767),(1,653,50,1306099767),(1,654,50,1306099767),(1,655,50,1306099767),(1,753,50,1306099767),(1,756,50,1306099767),(1,1146,1,1306099768),(1,2020,200,1306099727),(1,2030,4000,1306099727),(1,2031,3100,1306099727),(1,2032,3100,1306099727),(1,2033,3100,1306099727),(1,2034,3000,1306099727),(1,5018,10,1306099747),(1,5212,10,1306099747),(1,5213,10,1306099747),(1,5214,10,1306099747),(1,5215,10,1306099747),(1,5216,10,1306099747),(1,5217,10,1306099747),(1,5218,10,1306099747),(1,5219,10,1306099747),(1,5220,10,1306099747),(1,5221,10,1306099747),(1,5229,10,1306099747),(1,5230,10,1306099747),(1,5231,10,1306099747),(1,5232,10,1306099747),(1,5233,10,1306099747),(1,5234,10,1306099747),(1,5235,10,1306099747),(1,5236,10,1306099747),(1,5237,10,1306099747),(1,5238,10,1306099747),(1,5301,7,1306099727),(1,5328,3100,1306099727),(1,5329,3100,1306099727),(1,5330,3100,1306099727),(1,5331,4000,1306099727),(1,5332,3000,1306099727),(1,5576,50,1306099767),(1,5578,50,1306099767),(1,5580,50,1306099767),(1,5582,1,1306099727),(1,5583,50,1306099767),(1,5585,50,1306099767),(1,5587,50,1306099767),(1,5588,50,1306099767),(1,5589,50,1306099767),(1,6790,691077120,1306296671),(1,6791,691077120,1306296671),(1,6792,691077120,1306296671),(1,6793,691077120,1306296671),(1,6794,691077120,1306296671),(1,6795,691077120,1306296671),(1,6796,691077120,1306296671),(1,6797,691077120,1306296671),(1,6798,691077120,1306296671),(1,8819,500,1306099727),(1,8820,500,1306099727),(1,8821,500,1306099727),(1,8822,500,1306099727),(1,9160,691077120,1306296671),(1,9378,50,1306099767),(1,9598,10,1306099747),(1,9678,3100,1306099727),(1,9679,3000,1306099727),(1,9680,3100,1306099727),(1,9681,3100,1306099727),(1,9682,4000,1306099727),(1,12698,10,1306099747),(1,13253,691077120,1306296671),(1,13259,691077120,1306296671),(1,13498,10,1306099747),(1,14022,10,1306099747),(1,14023,10,1306099747),(1,14024,10,1306099747),(1,14025,10,1306099747),(1,14026,10,1306099747),(1,14027,10,1306099747),(1,14028,10,1306099747),(1,14029,10,1306099747),(1,14030,10,1306099747),(1,14031,10,1306099747),(1,14173,10,1306099747),(1,14174,10,1306099747),(1,14175,10,1306099747),(1,14176,10,1306099747),(1,14177,10,1306099747),(1,14178,10,1306099747),(1,14179,10,1306099747),(1,14180,10,1306099747),(1,14181,10,1306099747),(1,14182,10,1306099747),(1,14183,10,1306099747),(1,14516,200,1306099727),(1,14537,10,1306099747),(1,14538,10,1306099747),(1,14539,10,1306099747),(1,14540,10,1306099747),(1,14541,10,1306099747),(1,14542,10,1306099747),(1,14543,10,1306099747),(1,14544,10,1306099747),(1,14545,10,1306099747),(1,14546,10,1306099747),(1,14547,10,1306099747),(1,14548,10,1306099747),(1,14549,10,1306099747),(1,14550,10,1306099747),(1,14551,10,1306099747),(1,14552,10,1306099747),(1,14553,10,1306099747),(1,14554,10,1306099747),(1,14555,10,1306099747),(1,14556,10,1306099747),(1,14557,10,1306099747),(1,14558,10,1306099747),(1,14559,10,1306099747),(1,14560,10,1306099747),(1,14561,10,1306099747),(1,14562,10,1306099747),(1,14563,10,1306099747),(1,14564,10,1306099747),(1,14565,10,1306099747),(1,14566,10,1306099747),(1,14567,10,1306099747),(1,14568,10,1306099747),(1,14569,10,1306099747),(1,14570,10,1306099747),(1,14571,10,1306099747),(1,14572,10,1306099747),(1,14573,10,1306099747),(1,14574,10,1306099747),(1,14575,10,1306099747),(1,14648,10,1306099747),(1,14649,10,1306099747),(1,14650,10,1306099747),(1,14651,10,1306099747),(1,14652,10,1306099747),(1,14653,10,1306099747),(1,15326,691077120,1306296671),(1,15333,1,1306099693),(1,15335,1,1306099693),(1,15336,1,1306099693),(1,15344,1,1306099693),(1,15345,1,1306099693),(1,15349,1,1306099693),(1,15351,1,1306099693),(1,15352,1,1306099693),(1,15360,1,1306099693),(1,15361,1,1306099693),(2,15333,1,1306296648),(2,15335,1,1306296648),(2,15336,1,1306296648),(2,15344,1,1306296648),(2,15345,1,1306296648),(2,15349,1,1306296648),(2,15351,1,1306296648),(2,15352,1,1306296648),(2,15360,1,1306296648),(2,15361,1,1306296648);
/*!40000 ALTER TABLE `character_achievement_progress` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_action` WRITE;
/*!40000 ALTER TABLE `character_action` DISABLE KEYS */;
INSERT INTO `character_action` VALUES (1,0,0,1752,0),(1,0,9,59752,0),(2,0,0,3044,0),(2,0,9,59752,0),(2,0,11,982,0);
/*!40000 ALTER TABLE `character_action` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_arena_stats`;
CREATE TABLE `character_arena_stats` (
  `guid` int(10) NOT NULL,
  `slot` tinyint(3) NOT NULL,
  `matchMakerRating` smallint(5) NOT NULL,
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_arena_stats` WRITE;
/*!40000 ALTER TABLE `character_arena_stats` DISABLE KEYS */;
INSERT INTO `character_arena_stats` VALUES (1,0,1500),(1,1,1500),(1,2,1500);
/*!40000 ALTER TABLE `character_arena_stats` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE `character_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount0` int(11) NOT NULL DEFAULT '0',
  `amount1` int(11) NOT NULL DEFAULT '0',
  `amount2` int(11) NOT NULL DEFAULT '0',
  `base_amount0` int(11) NOT NULL DEFAULT '0',
  `base_amount1` int(11) NOT NULL DEFAULT '0',
  `base_amount2` int(11) NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_aura` WRITE;
/*!40000 ALTER TABLE `character_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_banned`;
CREATE TABLE `character_banned` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account id',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Ban List';

LOCK TABLES `character_banned` WRITE;
/*!40000 ALTER TABLE `character_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_banned` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `mountSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_battleground_data` WRITE;
/*!40000 ALTER TABLE `character_battleground_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_data` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE `character_battleground_random` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_battleground_random` WRITE;
/*!40000 ALTER TABLE `character_battleground_random` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_random` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_branchspec`;
CREATE TABLE `character_branchspec` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `spec` int(11) unsigned NOT NULL DEFAULT '0',
  `branchSpec` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `character_branchspec` WRITE;
/*!40000 ALTER TABLE `character_branchspec` DISABLE KEYS */;
INSERT INTO `character_branchspec` VALUES (1,0,0),(2,0,0);
/*!40000 ALTER TABLE `character_branchspec` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_currency`;
CREATE TABLE `character_currency` (
  `guid` int(11) unsigned NOT NULL,
  `currency` smallint(5) unsigned NOT NULL,
  `count` int(11) unsigned NOT NULL,
  `thisweek` int(11) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_currency` WRITE;
/*!40000 ALTER TABLE `character_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_currency` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE `character_declinedname` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_declinedname` WRITE;
/*!40000 ALTER TABLE `character_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_declinedname` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_equipmentsets`;
CREATE TABLE `character_equipmentsets` (
  `guid` int(10) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `item0` int(10) unsigned NOT NULL DEFAULT '0',
  `item1` int(10) unsigned NOT NULL DEFAULT '0',
  `item2` int(10) unsigned NOT NULL DEFAULT '0',
  `item3` int(10) unsigned NOT NULL DEFAULT '0',
  `item4` int(10) unsigned NOT NULL DEFAULT '0',
  `item5` int(10) unsigned NOT NULL DEFAULT '0',
  `item6` int(10) unsigned NOT NULL DEFAULT '0',
  `item7` int(10) unsigned NOT NULL DEFAULT '0',
  `item8` int(10) unsigned NOT NULL DEFAULT '0',
  `item9` int(10) unsigned NOT NULL DEFAULT '0',
  `item10` int(10) unsigned NOT NULL DEFAULT '0',
  `item11` int(10) unsigned NOT NULL DEFAULT '0',
  `item12` int(10) unsigned NOT NULL DEFAULT '0',
  `item13` int(10) unsigned NOT NULL DEFAULT '0',
  `item14` int(10) unsigned NOT NULL DEFAULT '0',
  `item15` int(10) unsigned NOT NULL DEFAULT '0',
  `item16` int(10) unsigned NOT NULL DEFAULT '0',
  `item17` int(10) unsigned NOT NULL DEFAULT '0',
  `item18` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_equipmentsets` WRITE;
/*!40000 ALTER TABLE `character_equipmentsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_equipmentsets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE `character_gifts` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_gifts` WRITE;
/*!40000 ALTER TABLE `character_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_gifts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE `character_glyphs` (
  `guid` int(10) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `glyph1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `glyph2` smallint(5) unsigned DEFAULT '0',
  `glyph3` smallint(5) unsigned DEFAULT '0',
  `glyph4` smallint(5) unsigned DEFAULT '0',
  `glyph5` smallint(5) unsigned DEFAULT '0',
  `glyph6` smallint(5) unsigned DEFAULT '0',
  `glyph7` smallint(5) unsigned DEFAULT '0',
  `glyph8` smallint(5) unsigned DEFAULT '0',
  `glyph9` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_glyphs` WRITE;
/*!40000 ALTER TABLE `character_glyphs` DISABLE KEYS */;
INSERT INTO `character_glyphs` VALUES (1,0,0,0,0,0,0,0,0,0,0),(2,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `character_glyphs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE `character_homebind` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_homebind` WRITE;
/*!40000 ALTER TABLE `character_homebind` DISABLE KEYS */;
INSERT INTO `character_homebind` VALUES (1,0,12,-8914.57,-133.909,80.5378);
/*!40000 ALTER TABLE `character_homebind` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE `character_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_instance` WRITE;
/*!40000 ALTER TABLE `character_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_instance` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE `character_inventory` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_inventory` WRITE;
/*!40000 ALTER TABLE `character_inventory` DISABLE KEYS */;
INSERT INTO `character_inventory` VALUES (1,0,4,2),(1,0,7,4),(1,0,6,6),(1,0,17,8),(1,0,15,10),(1,0,16,12),(1,0,23,14),(2,0,4,16),(2,0,6,18),(2,0,7,20),(2,0,15,22),(2,0,17,24),(2,0,23,26);
/*!40000 ALTER TABLE `character_inventory` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned DEFAULT '0',
  `CreatedBySpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `curhappiness` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `abdata` text,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

LOCK TABLES `character_pet` WRITE;
/*!40000 ALTER TABLE `character_pet` DISABLE KEYS */;
INSERT INTO `character_pet` VALUES (1,42717,2,903,13481,1,1,0,0,'Wolf',0,0,192,0,166500,1295727347,0,0,'7 2 7 1 7 0 129 2649 129 17253 1 0 1 0 6 2 6 1 6 0 ');
/*!40000 ALTER TABLE `character_pet` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_pet_declinedname` WRITE;
/*!40000 ALTER TABLE `character_pet_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet_declinedname` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE `character_queststatus` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timer` int(10) unsigned NOT NULL DEFAULT '0',
  `mobcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_queststatus` WRITE;
/*!40000 ALTER TABLE `character_queststatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE `character_queststatus_daily` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_queststatus_daily` WRITE;
/*!40000 ALTER TABLE `character_queststatus_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_daily` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_queststatus_rewarded`;
CREATE TABLE `character_queststatus_rewarded` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_queststatus_rewarded` WRITE;
/*!40000 ALTER TABLE `character_queststatus_rewarded` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_rewarded` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE `character_queststatus_weekly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_queststatus_weekly` WRITE;
/*!40000 ALTER TABLE `character_queststatus_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_weekly` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE `character_reputation` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_reputation` WRITE;
/*!40000 ALTER TABLE `character_reputation` DISABLE KEYS */;
INSERT INTO `character_reputation` VALUES (1,21,0,64),(1,46,0,4),(1,47,0,17),(1,54,0,17),(1,59,0,16),(1,67,0,14),(1,68,0,6),(1,69,0,17),(1,70,0,2),(1,72,0,17),(1,76,0,6),(1,81,0,6),(1,83,0,4),(1,86,0,4),(1,87,0,2),(1,92,0,2),(1,93,0,2),(1,169,0,12),(1,270,0,16),(1,289,0,4),(1,349,0,0),(1,369,0,64),(1,469,0,25),(1,470,0,64),(1,471,0,20),(1,509,0,16),(1,510,0,2),(1,529,0,0),(1,530,0,6),(1,549,0,4),(1,550,0,4),(1,551,0,4),(1,569,0,4),(1,570,0,4),(1,571,0,4),(1,574,0,4),(1,576,0,0),(1,577,0,64),(1,589,0,0),(1,609,0,0),(1,729,0,6),(1,730,0,16),(1,749,0,0),(1,809,0,16),(1,889,0,6),(1,890,0,16),(1,891,0,24),(1,892,0,14),(1,909,0,16),(1,910,0,2),(1,911,0,6),(1,922,0,6),(1,930,0,17),(1,932,0,80),(1,933,0,16),(1,934,0,80),(1,935,0,16),(1,936,0,28),(1,941,0,6),(1,942,0,16),(1,946,0,16),(1,947,0,2),(1,948,0,8),(1,949,0,24),(1,952,0,0),(1,967,0,16),(1,970,0,0),(1,978,0,16),(1,980,0,24),(1,989,0,16),(1,990,0,16),(1,1005,0,20),(1,1011,0,16),(1,1012,0,16),(1,1015,0,2),(1,1031,0,16),(1,1037,0,136),(1,1038,0,16),(1,1050,0,16),(1,1052,0,2),(1,1064,0,6),(1,1067,0,2),(1,1068,0,16),(1,1073,0,16),(1,1077,0,16),(1,1082,0,4),(1,1085,0,6),(1,1090,0,16),(1,1091,0,16),(1,1094,0,16),(1,1097,0,12),(1,1098,0,16),(1,1104,0,16),(1,1105,0,16),(1,1106,0,16),(1,1117,0,12),(1,1118,0,12),(1,1119,0,2),(1,1124,0,6),(1,1126,0,16),(1,1133,0,6),(1,1134,0,17),(1,1135,0,16),(1,1136,0,4),(1,1137,0,4),(1,1154,0,4),(1,1155,0,4),(1,1156,0,16),(1,1158,0,16),(1,1162,0,8),(1,1163,0,0),(1,1166,0,0),(1,1167,0,0),(1,1168,0,16),(1,1169,0,28),(1,1171,0,66),(1,1172,0,2),(1,1173,0,16),(1,1174,0,16),(1,1177,0,0),(1,1178,0,6),(1,1181,0,20);
/*!40000 ALTER TABLE `character_reputation` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_skills` WRITE;
/*!40000 ALTER TABLE `character_skills` DISABLE KEYS */;
INSERT INTO `character_skills` VALUES (1,38,1,1),(1,43,50,50),(1,44,50,50),(1,46,50,50),(1,54,50,50),(1,95,50,50),(1,98,300,300),(1,118,50,50),(1,162,50,50),(1,173,50,50),(1,176,50,50),(1,226,50,50),(1,414,1,1),(1,415,1,1),(1,473,1,1),(1,797,1,1),(2,43,1,5),(2,44,1,5),(2,45,1,5),(2,46,1,5),(2,50,1,1),(2,55,1,5),(2,95,1,5),(2,98,300,300),(2,136,1,5),(2,162,1,5),(2,163,1,1),(2,172,1,5),(2,173,1,5),(2,226,1,5),(2,229,1,5),(2,414,1,1),(2,415,1,1),(2,473,1,1),(2,795,1,1),(2,803,1,1);
/*!40000 ALTER TABLE `character_skills` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE `character_social` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_social` WRITE;
/*!40000 ALTER TABLE `character_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_social` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE `character_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_spell` WRITE;
/*!40000 ALTER TABLE `character_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE `character_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_spell_cooldown` WRITE;
/*!40000 ALTER TABLE `character_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_cooldown` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower6` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower7` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower8` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower9` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower10` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `spirit` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPower` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_stats` WRITE;
/*!40000 ALTER TABLE `character_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stats` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE `character_talent` (
  `guid` int(10) unsigned NOT NULL,
  `spell` mediumint(8) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `character_talent` WRITE;
/*!40000 ALTER TABLE `character_talent` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_talent` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_tutorial`;
CREATE TABLE `character_tutorial` (
  `account` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT '0',
  `tut1` int(10) unsigned NOT NULL DEFAULT '0',
  `tut2` int(10) unsigned NOT NULL DEFAULT '0',
  `tut3` int(10) unsigned NOT NULL DEFAULT '0',
  `tut4` int(10) unsigned NOT NULL DEFAULT '0',
  `tut5` int(10) unsigned NOT NULL DEFAULT '0',
  `tut6` int(10) unsigned NOT NULL DEFAULT '0',
  `tut7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `character_tutorial` WRITE;
/*!40000 ALTER TABLE `character_tutorial` DISABLE KEYS */;
INSERT INTO `character_tutorial` VALUES (6,6303745,33,0,0,0,0,0,0);
/*!40000 ALTER TABLE `character_tutorial` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) NOT NULL DEFAULT '',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `instance_mode_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `at_login` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `arenaPoints` int(10) unsigned NOT NULL DEFAULT '0',
  `totalHonorPoints` int(10) unsigned NOT NULL DEFAULT '0',
  `todayHonorPoints` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdayHonorPoints` int(10) unsigned NOT NULL DEFAULT '0',
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `knownCurrencies` bigint(20) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` smallint(5) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `power6` int(10) unsigned NOT NULL DEFAULT '0',
  `power7` int(10) unsigned NOT NULL DEFAULT '0',
  `power8` int(10) unsigned NOT NULL DEFAULT '0',
  `power9` int(10) unsigned NOT NULL DEFAULT '0',
  `power10` int(10) unsigned NOT NULL DEFAULT '0',
  `latency` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `speccount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `activespec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `ammoId` int(10) unsigned NOT NULL DEFAULT '0',
  `knownTitles` longtext,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int(10) unsigned DEFAULT NULL,
  `currentPetSlot` int(10) DEFAULT NULL,
  `petSlotUsed` int(10) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,6,'Alex',1,4,0,10,0,0,84017413,16777218,0,-8914.43,-133.956,80.5329,0,0,0,5.14671,'2 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,1,2281,2261,1306298054,0,2586.74,0,0,0,0,0,0,0,8,0,0,12,0,'',0,0,0,0,0,0,0,0,0,4294967295,0,236,0,0,0,100,0,0,0,0,0,0,0,1,0,'0 0 0 536870912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','0 0 0 0 0 0 0 0 58234 0 0 0 48 0 47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 0 50055 0 28979 0 0 0 ',0,'0 0 0 0 0 0 0 7600 38 65537 0 43 ',0,NULL,NULL,NULL,-1,0),(2,6,'Fartz',1,3,0,1,0,0,50856450,33554437,0,-8914.57,-133.909,80.5378,0,0,0,0,'2 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,1306296648,0,0,0,0,0,0,0,0,0,0,0,32,12,0,'',0,0,0,0,0,0,0,0,0,4294967295,0,66,0,0,0,100,0,0,0,0,0,0,0,1,0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','0 0 0 0 0 0 0 0 58232 0 0 0 147 0 129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 52532 0 0 0 23347 0 0 0 ',0,'0 0 0 0 0 0 0 400 163 65537 0 803 ',0,NULL,NULL,NULL,0,0);
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE `corpse` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `player` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `phaseMask` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `guild` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `corpse_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_type` (`corpse_type`),
  KEY `instance` (`instance`),
  KEY `Idx_player` (`player`),
  KEY `Idx_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Death System';

LOCK TABLES `corpse` WRITE;
/*!40000 ALTER TABLE `corpse` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpse` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `game_event_condition_save`;
CREATE TABLE `game_event_condition_save` (
  `event_id` smallint(5) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`event_id`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `game_event_condition_save` WRITE;
/*!40000 ALTER TABLE `game_event_condition_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_condition_save` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `game_event_save`;
CREATE TABLE `game_event_save` (
  `event_id` mediumint(8) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` bigint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `game_event_save` WRITE;
/*!40000 ALTER TABLE `game_event_save` DISABLE KEYS */;
INSERT INTO `game_event_save` VALUES (35,4,0),(36,3,1461619562),(37,4,0),(38,3,1461619562),(39,4,0),(40,3,1461619562),(41,4,0),(42,3,1461619562),(43,4,0),(44,3,1461619562),(45,4,0),(46,3,1461619562),(47,4,0),(48,3,1461619562),(49,3,1461619562);
/*!40000 ALTER TABLE `game_event_save` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `gm_subsurveys`;
CREATE TABLE `gm_subsurveys` (
  `surveyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsurveyid` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`surveyid`,`subsurveyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `gm_subsurveys` WRITE;
/*!40000 ALTER TABLE `gm_subsurveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_subsurveys` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `gm_surveys`;
CREATE TABLE `gm_surveys` (
  `surveyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `player` int(10) unsigned NOT NULL DEFAULT '0',
  `mainSurvey` int(10) unsigned NOT NULL DEFAULT '0',
  `overall_comment` longtext NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`surveyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `gm_surveys` WRITE;
/*!40000 ALTER TABLE `gm_surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_surveys` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `gm_tickets`;
CREATE TABLE `gm_tickets` (
  `guid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `playerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(12) NOT NULL,
  `message` text NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `closed` int(11) NOT NULL DEFAULT '0',
  `assignedto` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `completed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `escalated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `viewed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `gm_tickets` WRITE;
/*!40000 ALTER TABLE `gm_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_tickets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE `group_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `group_instance` WRITE;
/*!40000 ALTER TABLE `group_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_instance` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `guid` int(10) unsigned NOT NULL,
  `memberGuid` int(10) unsigned NOT NULL,
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

LOCK TABLES `group_member` WRITE;
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` int(10) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` int(10) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` int(10) unsigned NOT NULL,
  `icon2` int(10) unsigned NOT NULL,
  `icon3` int(10) unsigned NOT NULL,
  `icon4` int(10) unsigned NOT NULL,
  `icon5` int(10) unsigned NOT NULL,
  `icon6` int(10) unsigned NOT NULL,
  `icon7` int(10) unsigned NOT NULL,
  `icon8` int(10) unsigned NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `raiddifficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` int(10) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(128) NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `xp` bigint(20) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

LOCK TABLES `guild` WRITE;
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `guild_bank_eventlog` WRITE;
/*!40000 ALTER TABLE `guild_bank_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_eventlog` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE `guild_bank_item` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `guild_bank_item` WRITE;
/*!40000 ALTER TABLE `guild_bank_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_item` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE `guild_bank_right` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `guild_bank_right` WRITE;
/*!40000 ALTER TABLE `guild_bank_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_right` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE `guild_bank_tab` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `guild_bank_tab` WRITE;
/*!40000 ALTER TABLE `guild_bank_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_tab` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(10) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(10) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';

LOCK TABLES `guild_eventlog` WRITE;
/*!40000 ALTER TABLE `guild_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_eventlog` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` int(10) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  `BankResetTimeMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab0` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab0` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab1` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab1` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab2` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab2` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab3` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab3` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab4` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab4` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab5` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab5` int(10) unsigned NOT NULL DEFAULT '0',
  `achievementPoints` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

LOCK TABLES `guild_member` WRITE;
/*!40000 ALTER TABLE `guild_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL,
  `rname` varchar(15) NOT NULL DEFAULT '',
  `rights` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

LOCK TABLES `guild_rank` WRITE;
/*!40000 ALTER TABLE `guild_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_rank` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int(10) unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `instance` WRITE;
/*!40000 ALTER TABLE `instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset` (
  `mapid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `instance_reset` WRITE;
/*!40000 ALTER TABLE `instance_reset` DISABLE KEYS */;
INSERT INTO `instance_reset` VALUES (33,1,1306555200),(36,1,1306555200),(249,0,1306728000),(249,1,1306728000),(269,1,1306555200),(409,0,1306728000),(469,0,1306728000),(509,0,1306555200),(531,0,1306728000),(532,0,1306728000),(533,0,1306728000),(533,1,1306728000),(534,0,1306728000),(540,1,1306555200),(542,1,1306555200),(543,1,1306555200),(544,0,1306728000),(545,1,1306555200),(546,1,1306555200),(547,1,1306555200),(548,0,1306728000),(550,0,1306728000),(552,1,1306555200),(553,1,1306555200),(554,1,1306555200),(555,1,1306555200),(556,1,1306555200),(557,1,1306555200),(558,1,1306555200),(560,1,1306555200),(564,0,1306728000),(565,0,1306728000),(568,0,1306555200),(574,1,1306555200),(575,1,1306555200),(576,1,1306555200),(578,1,1306555200),(580,0,1306728000),(585,1,1306555200),(595,1,1306555200),(598,1,1306555200),(599,1,1306555200),(600,1,1306555200),(601,1,1306555200),(602,1,1306555200),(603,0,1306728000),(603,1,1306728000),(604,1,1306555200),(608,1,1306555200),(615,0,1306728000),(615,1,1306728000),(616,0,1306728000),(616,1,1306728000),(619,1,1306555200),(624,0,1306728000),(624,1,1306728000),(631,0,1306728000),(631,1,1306728000),(631,2,1306728000),(631,3,1306728000),(632,1,1306555200),(643,1,1306555200),(644,1,1306555200),(645,1,1306555200),(649,0,1306728000),(649,1,1306728000),(649,2,1306728000),(649,3,1306728000),(650,1,1306555200),(657,1,1306555200),(658,1,1306555200),(668,1,1306555200),(669,0,1306728000),(669,1,1306728000),(669,2,1306728000),(669,3,1306728000),(670,1,1306555200),(671,0,1306728000),(671,1,1306728000),(671,2,1306728000),(671,3,1306728000),(724,0,1306728000),(724,1,1306728000),(724,2,1306728000),(724,3,1306728000),(725,1,1306555200),(754,0,1306728000),(754,1,1306728000),(754,2,1306728000),(754,3,1306728000),(755,1,1306555200),(757,0,1306728000),(757,1,1306728000);
/*!40000 ALTER TABLE `instance_reset` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE `item_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(10) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyId` smallint(5) NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `text` text,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';

LOCK TABLES `item_instance` WRITE;
/*!40000 ALTER TABLE `item_instance` DISABLE KEYS */;
INSERT INTO `item_instance` VALUES (2,58234,1,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,55,0,''),(4,47,1,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,25,0,''),(6,48,1,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,40,0,''),(8,28979,1,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,''),(10,25,1,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,20,0,''),(12,50055,1,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,16,0,''),(14,6948,1,0,0,1,0,'0 0 0 0 0 ',1,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,''),(16,58232,2,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,55,0,''),(18,147,2,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,40,0,''),(20,129,2,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,25,0,''),(22,52532,2,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,20,0,''),(24,23347,2,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,20,0,''),(26,6948,2,0,0,1,0,'0 0 0 0 0 ',1,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,'');
/*!40000 ALTER TABLE `item_instance` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `item_refund_instance`;
CREATE TABLE `item_refund_instance` (
  `item_guid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` int(10) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

LOCK TABLES `item_refund_instance` WRITE;
/*!40000 ALTER TABLE `item_refund_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_refund_instance` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `item_soulbound_trade_data`;
CREATE TABLE `item_soulbound_trade_data` (
  `itemGuid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

LOCK TABLES `item_soulbound_trade_data` WRITE;
/*!40000 ALTER TABLE `item_soulbound_trade_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_soulbound_trade_data` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `lag_reports`;
CREATE TABLE `lag_reports` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `player` int(10) unsigned NOT NULL DEFAULT '0',
  `lag_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

LOCK TABLES `lag_reports` WRITE;
/*!40000 ALTER TABLE `lag_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `lag_reports` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `deliver_time` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `cod` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail System';

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`mail_id`,`item_guid`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

LOCK TABLES `mail_items` WRITE;
/*!40000 ALTER TABLE `mail_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_items` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE `pet_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount0` mediumint(8) NOT NULL,
  `amount1` mediumint(8) NOT NULL,
  `amount2` mediumint(8) NOT NULL,
  `base_amount0` mediumint(8) NOT NULL,
  `base_amount1` mediumint(8) NOT NULL,
  `base_amount2` mediumint(8) NOT NULL,
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

LOCK TABLES `pet_aura` WRITE;
/*!40000 ALTER TABLE `pet_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

LOCK TABLES `pet_spell` WRITE;
/*!40000 ALTER TABLE `pet_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pet_spell_cooldown` WRITE;
/*!40000 ALTER TABLE `pet_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell_cooldown` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `petition`;
CREATE TABLE `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `name` varchar(24) NOT NULL,
  PRIMARY KEY (`ownerguid`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

LOCK TABLES `petition` WRITE;
/*!40000 ALTER TABLE `petition` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `player_account` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

LOCK TABLES `petition_sign` WRITE;
/*!40000 ALTER TABLE `petition_sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition_sign` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pool_quest_save`;
CREATE TABLE `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pool_quest_save` WRITE;
/*!40000 ALTER TABLE `pool_quest_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `pool_quest_save` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE `worldstates` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

LOCK TABLES `worldstates` WRITE;
/*!40000 ALTER TABLE `worldstates` DISABLE KEYS */;
INSERT INTO `worldstates` VALUES (20002,1306704373,NULL),(20003,1306494000,NULL);
/*!40000 ALTER TABLE `worldstates` ENABLE KEYS */;
UNLOCK TABLES;
DELIMITER ;;
DELIMITER ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
