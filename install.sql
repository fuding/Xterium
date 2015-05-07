-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 08 Avril 2015 à 01:55
-- Version du serveur: 5.5.42-cll
-- Version de PHP: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `antarisl_test`
--

-- --------------------------------------------------------

--
-- Structure de la table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `email` varchar(500) NOT NULL,
  `lang` text NOT NULL,
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `superrewards_transactions`
--

CREATE TABLE IF NOT EXISTS `superrewards_transactions` (
  `id` int(11) NOT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `superrewards_users`
--

CREATE TABLE IF NOT EXISTS `superrewards_users` (
  `uid` bigint(20) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_academy_skills`
--

CREATE TABLE IF NOT EXISTS `uni1_academy_skills` (
  `skill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ab1` int(11) unsigned NOT NULL DEFAULT '0',
  `ab2` int(11) unsigned NOT NULL DEFAULT '0',
  `icost` int(11) unsigned NOT NULL DEFAULT '0',
  `factor` float unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `skill_id` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `uni1_academy_skills`
--

INSERT INTO `uni1_academy_skills` (`skill_id`, `ab1`, `ab2`, `icost`, `factor`) VALUES
(1101, 1, 0, 1, 1.2),
(1102, 2, 1, 2, 1.25),
(1103, 2, 0, 4, 1.3),
(1104, 1, 0, 10, 1.5),
(1105, 3, 0, 3, 1.25),
(1106, 1, 0, 3, 1.3),
(1107, 2, 0, 3, 1.3),
(1108, 2, 0, 7, 1.55),
(1109, 1, 0, 9, 1.3),
(1110, 8, 0, 7, 1.5),
(1111, 1, 0, 1, 1.5),
(1112, 2, 2, 3, 1.2),
(1113, 1, 0, 16, 1.6),
(1201, 5, 0, 1, 1.25),
(1202, 2, 0, 2, 1.25),
(1203, 2, 0, 4, 1.3),
(1204, 5, 0, 3, 1.25),
(1205, 1, 0, 30, 1.3),
(1206, 1, 0, 500, 2),
(1207, 5, 0, 2, 1.25),
(1208, 25, 0, 50, 2),
(1209, 3, 0, 2, 1.3),
(1210, 3, 0, 10, 1.3),
(1301, 1, 0, 1, 1.2),
(1302, 1, 2, 2, 1.25),
(1303, 2, 0, 4, 1.3),
(1304, 1, 0, 8, 1.45),
(1305, 1, 0, 3, 1.3),
(1306, 1, 0, 3, 1.3),
(1307, 2, 0, 1, 1.35),
(1308, 2, 0, 10, 1.55),
(1309, 250, 0, 500, 2.3),
(1310, 1, 0, 10, 1.5),
(1311, 3, 0, 4, 1.2),
(1312, 1, 0, 3, 1.35),
(1313, 1, 0, 3, 1.4),
(1314, 1, 0, 3, 1.5);

-- --------------------------------------------------------

--
-- Structure de la table `uni1_aks`
--

CREATE TABLE IF NOT EXISTS `uni1_aks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `target` int(11) unsigned NOT NULL,
  `ankunft` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_alliance`
--

CREATE TABLE IF NOT EXISTS `uni1_alliance` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ally_name` varchar(50) DEFAULT '',
  `ally_tag` varchar(20) DEFAULT '',
  `ally_owner` int(11) unsigned NOT NULL DEFAULT '0',
  `ally_register_time` int(11) NOT NULL DEFAULT '0',
  `ally_description` text,
  `ally_web` varchar(255) DEFAULT '',
  `ally_text` text,
  `ally_image` varchar(255) DEFAULT '',
  `ally_request` varchar(1000) DEFAULT NULL,
  `ally_request_notallow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ally_request_min_points` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ally_owner_range` varchar(32) DEFAULT '',
  `ally_members` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ally_stats` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ally_diplo` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ally_universe` tinyint(3) unsigned NOT NULL,
  `ally_max_members` int(5) unsigned NOT NULL DEFAULT '20',
  `ally_events` varchar(55) NOT NULL DEFAULT '',
  `storage_metal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `storage_crystal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `storage_deuterium` double(50,0) unsigned NOT NULL DEFAULT '0',
  `storage_stardust` bigint(20) unsigned NOT NULL DEFAULT '0',
  `alliance_prod` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_fleet_speed` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_battle_tech` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_build_speed` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_research_speed` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_fleet_construction` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_def_construction` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_points` int(11) unsigned NOT NULL DEFAULT '0',
  `fraction` tinyint(3) NOT NULL DEFAULT '0',
  `FraLevel` int(11) NOT NULL DEFAULT '1',
  `armament` int(11) NOT NULL DEFAULT '0',
  `armamentDA` int(11) NOT NULL DEFAULT '0',
  `Bumper` double(20,0) NOT NULL DEFAULT '0',
  `Boards` double(20,0) NOT NULL DEFAULT '0',
  `SpeedFleet` int(11) NOT NULL DEFAULT '0',
  `TheftResource` double(20,0) NOT NULL DEFAULT '0',
  `CombatExp` int(11) NOT NULL DEFAULT '0',
  `LoseDefWreck` int(11) NOT NULL DEFAULT '0',
  `RestorationDef` int(11) NOT NULL DEFAULT '0',
  `FleetCapa` int(11) NOT NULL DEFAULT '0',
  `FuelReduce` int(11) NOT NULL DEFAULT '0',
  `ComExpExpo` int(11) NOT NULL DEFAULT '0',
  `GetAlliancePoints` int(11) NOT NULL DEFAULT '0',
  `ResourceProduk` int(11) NOT NULL DEFAULT '0',
  `EnergyProduk` int(11) NOT NULL DEFAULT '0',
  `ExpPeace` int(11) NOT NULL DEFAULT '0',
  `SpeedExpo` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ally_tag` (`ally_tag`),
  KEY `ally_name` (`ally_name`),
  KEY `ally_universe` (`ally_universe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_alliance_ranks`
--

CREATE TABLE IF NOT EXISTS `uni1_alliance_ranks` (
  `rankID` int(11) NOT NULL AUTO_INCREMENT,
  `rankName` varchar(32) NOT NULL,
  `allianceID` int(10) unsigned NOT NULL,
  `MEMBERLIST` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ONLINESTATE` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TRANSFER` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SEEAPPLY` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MANAGEAPPLY` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ROUNDMAIL` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ADMIN` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `KICK` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DIPLOMATIC` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RANKS` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MANAGEUSERS` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EVENTS` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PLANETS` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BANK` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rankID`),
  KEY `allianceID` (`allianceID`,`rankID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_alliance_request`
--

CREATE TABLE IF NOT EXISTS `uni1_alliance_request` (
  `applyID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `allianceID` int(10) unsigned NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`applyID`),
  KEY `allianceID` (`allianceID`,`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_allopass_log`
--

CREATE TABLE IF NOT EXISTS `uni1_allopass_log` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `credits` int(11) NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL,
  `transac` varchar(255) NOT NULL,
  `reference_amount` float NOT NULL DEFAULT '0',
  `reference_paid` float NOT NULL DEFAULT '0',
  `reference_payout` float NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  `result` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_banned`
--

CREATE TABLE IF NOT EXISTS `uni1_banned` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `who` varchar(64) NOT NULL DEFAULT '',
  `theme` varchar(500) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `longer` int(11) NOT NULL DEFAULT '0',
  `author` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `universe` tinyint(3) unsigned NOT NULL,
  KEY `ID` (`id`),
  KEY `universe` (`universe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_buddy`
--

CREATE TABLE IF NOT EXISTS `uni1_buddy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(11) unsigned NOT NULL DEFAULT '0',
  `owner` int(11) unsigned NOT NULL DEFAULT '0',
  `universe` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `universe` (`universe`),
  KEY `sender` (`sender`,`owner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_buddy_notif`
--

CREATE TABLE IF NOT EXISTS `uni1_buddy_notif` (
  `userID` int(11) unsigned NOT NULL DEFAULT '0',
  `called` int(11) unsigned NOT NULL DEFAULT '0',
  `loginID` int(11) unsigned NOT NULL DEFAULT '0',
  `type` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_buddy_request`
--

CREATE TABLE IF NOT EXISTS `uni1_buddy_request` (
  `id` int(11) unsigned NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_chat_bans`
--

CREATE TABLE IF NOT EXISTS `uni1_chat_bans` (
  `userID` int(11) NOT NULL,
  `userName` varchar(64) NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_chat_invitations`
--

CREATE TABLE IF NOT EXISTS `uni1_chat_invitations` (
  `userID` int(11) NOT NULL,
  `channel` int(11) NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_chat_messages`
--

CREATE TABLE IF NOT EXISTS `uni1_chat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `userName` varchar(64) NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(11) NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_chat_online`
--

CREATE TABLE IF NOT EXISTS `uni1_chat_online` (
  `userID` int(11) NOT NULL,
  `userName` varchar(64) NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(11) NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL,
  KEY `dateTime` (`dateTime`,`channel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_climate_spec`
--

CREATE TABLE IF NOT EXISTS `uni1_climate_spec` (
  `imageName` varchar(255) DEFAULT NULL,
  `bonusMetal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonusCrystal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonusDeuterium` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonusEnergy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonusStudy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `imageName` (`imageName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_complaints`
--

CREATE TABLE IF NOT EXISTS `uni1_complaints` (
  `compID` bigint(20) NOT NULL AUTO_INCREMENT,
  `message` text CHARACTER SET utf8 NOT NULL,
  `from` text CHARACTER SET utf8 NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `report` text CHARACTER SET utf8 NOT NULL,
  `reportBy` text CHARACTER SET utf8 NOT NULL,
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `finished` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`compID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_config`
--

CREATE TABLE IF NOT EXISTS `uni1_config` (
  `uni` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION` varchar(8) NOT NULL,
  `sql_revision` int(11) NOT NULL DEFAULT '0',
  `users_amount` int(11) unsigned NOT NULL DEFAULT '1',
  `game_speed` double(50,0) unsigned NOT NULL DEFAULT '2500',
  `fleet_speed` bigint(20) unsigned NOT NULL DEFAULT '2500',
  `resource_multiplier` double(50,0) unsigned NOT NULL DEFAULT '1',
  `halt_speed` smallint(5) unsigned NOT NULL DEFAULT '1',
  `Fleet_Cdr` tinyint(3) unsigned NOT NULL DEFAULT '30',
  `Defs_Cdr` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `initial_fields` smallint(5) unsigned NOT NULL DEFAULT '163',
  `uni_name` varchar(30) NOT NULL,
  `game_name` varchar(30) NOT NULL,
  `game_disable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `close_reason` text NOT NULL,
  `metal_basic_income` int(11) NOT NULL DEFAULT '20',
  `crystal_basic_income` int(11) NOT NULL DEFAULT '10',
  `deuterium_basic_income` int(11) NOT NULL DEFAULT '0',
  `energy_basic_income` int(11) NOT NULL DEFAULT '0',
  `LastSettedGalaxyPos` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `LastSettedSystemPos` smallint(5) unsigned NOT NULL DEFAULT '1',
  `LastSettedPlanetPos` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `noobprotection` int(11) NOT NULL DEFAULT '0',
  `noobprotectiontime` bigint(20) NOT NULL DEFAULT '5000',
  `noobprotectionmulti` int(11) NOT NULL DEFAULT '5',
  `forum_url` varchar(128) NOT NULL DEFAULT 'http://2moons.cc',
  `adm_attack` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `debug` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `stat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_level` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `stat_last_update` int(11) NOT NULL DEFAULT '0',
  `stat_settings` bigint(20) unsigned NOT NULL DEFAULT '1000',
  `stat_update_time` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `stat_last_db_update` int(11) NOT NULL DEFAULT '0',
  `stats_fly_lock` int(11) NOT NULL DEFAULT '0',
  `cron_lock` int(11) NOT NULL DEFAULT '0',
  `ts_modon` tinyint(1) NOT NULL DEFAULT '0',
  `ts_server` varchar(64) NOT NULL DEFAULT '',
  `ts_tcpport` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ts_udpport` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ts_timeout` tinyint(1) NOT NULL DEFAULT '1',
  `ts_version` tinyint(1) NOT NULL DEFAULT '2',
  `ts_cron_last` int(11) NOT NULL DEFAULT '0',
  `ts_cron_interval` smallint(5) NOT NULL DEFAULT '5',
  `ts_login` varchar(32) NOT NULL DEFAULT '',
  `ts_password` varchar(32) NOT NULL DEFAULT '',
  `reg_closed` tinyint(1) NOT NULL DEFAULT '0',
  `OverviewNewsFrame` tinyint(1) NOT NULL DEFAULT '1',
  `OverviewNewsText` text NOT NULL,
  `capaktiv` tinyint(1) NOT NULL DEFAULT '0',
  `cappublic` varchar(42) NOT NULL DEFAULT '',
  `capprivate` varchar(42) NOT NULL DEFAULT '',
  `min_build_time` tinyint(2) NOT NULL DEFAULT '1',
  `mail_active` tinyint(1) NOT NULL DEFAULT '0',
  `mail_use` tinyint(1) NOT NULL DEFAULT '0',
  `smtp_host` varchar(64) NOT NULL DEFAULT '',
  `smtp_port` smallint(5) NOT NULL DEFAULT '0',
  `smtp_user` varchar(64) NOT NULL DEFAULT '',
  `smtp_pass` varchar(32) NOT NULL DEFAULT '',
  `smtp_ssl` enum('','ssl','tls') NOT NULL DEFAULT '',
  `smtp_sendmail` varchar(64) NOT NULL DEFAULT '',
  `smail_path` varchar(30) NOT NULL DEFAULT '/usr/sbin/sendmail',
  `user_valid` tinyint(1) NOT NULL DEFAULT '0',
  `fb_on` tinyint(1) NOT NULL DEFAULT '0',
  `fb_apikey` varchar(42) NOT NULL DEFAULT '',
  `fb_skey` varchar(42) NOT NULL DEFAULT '',
  `ga_active` varchar(42) NOT NULL DEFAULT '0',
  `ga_key` varchar(42) NOT NULL DEFAULT '',
  `moduls` varchar(100) NOT NULL DEFAULT '',
  `trade_allowed_ships` varchar(255) NOT NULL DEFAULT '202,401',
  `trade_charge` varchar(5) NOT NULL DEFAULT '30',
  `chat_closed` tinyint(1) NOT NULL DEFAULT '0',
  `chat_allowchan` tinyint(1) NOT NULL DEFAULT '1',
  `chat_allowmes` tinyint(1) NOT NULL DEFAULT '1',
  `chat_allowdelmes` tinyint(1) NOT NULL DEFAULT '1',
  `chat_logmessage` tinyint(1) NOT NULL DEFAULT '1',
  `chat_nickchange` tinyint(1) NOT NULL DEFAULT '1',
  `chat_botname` varchar(15) NOT NULL DEFAULT '2Moons',
  `chat_channelname` varchar(15) NOT NULL DEFAULT '2Moons',
  `chat_socket_active` tinyint(1) NOT NULL DEFAULT '0',
  `chat_socket_host` varchar(64) NOT NULL DEFAULT '',
  `chat_socket_ip` varchar(40) NOT NULL DEFAULT '',
  `chat_socket_port` smallint(5) NOT NULL DEFAULT '0',
  `chat_socket_chatid` tinyint(1) NOT NULL DEFAULT '1',
  `max_galaxy` tinyint(3) unsigned NOT NULL DEFAULT '9',
  `max_system` smallint(5) unsigned NOT NULL DEFAULT '400',
  `max_planets` tinyint(3) unsigned NOT NULL DEFAULT '15',
  `planet_factor` float(2,1) NOT NULL DEFAULT '1.0',
  `max_elements_build` tinyint(3) unsigned NOT NULL DEFAULT '5',
  `max_elements_tech` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `max_elements_ships` tinyint(3) unsigned NOT NULL DEFAULT '10',
  `min_player_planets` tinyint(3) unsigned NOT NULL DEFAULT '9',
  `planets_tech` tinyint(4) NOT NULL DEFAULT '11',
  `planets_officier` tinyint(4) NOT NULL DEFAULT '5',
  `planets_per_tech` float(2,1) NOT NULL DEFAULT '0.5',
  `max_fleet_per_build` double(100,0) unsigned NOT NULL DEFAULT '10000000000000000000000000000000000000',
  `deuterium_cost_galaxy` int(11) unsigned NOT NULL DEFAULT '10',
  `max_dm_missions` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `max_overflow` float(2,1) NOT NULL DEFAULT '1.0',
  `moon_factor` float(2,1) NOT NULL DEFAULT '1.0',
  `moon_chance` tinyint(3) unsigned NOT NULL DEFAULT '20',
  `darkmatter_cost_trader` int(11) unsigned NOT NULL DEFAULT '750',
  `factor_university` tinyint(3) unsigned NOT NULL DEFAULT '8',
  `max_fleets_per_acs` tinyint(3) unsigned NOT NULL DEFAULT '16',
  `debris_moon` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `vmode_min_time` int(11) NOT NULL DEFAULT '259200',
  `gate_wait_time` int(11) NOT NULL DEFAULT '3600',
  `metal_start` int(11) unsigned NOT NULL DEFAULT '500',
  `crystal_start` int(11) unsigned NOT NULL DEFAULT '500',
  `deuterium_start` int(11) unsigned NOT NULL DEFAULT '0',
  `darkmatter_start` int(11) unsigned NOT NULL DEFAULT '0',
  `antimatter_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ttf_file` varchar(128) NOT NULL DEFAULT 'styles/resource/fonts/DroidSansMono.ttf',
  `ref_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ref_bonus` int(11) unsigned NOT NULL DEFAULT '1000',
  `ref_minpoints` bigint(20) unsigned NOT NULL DEFAULT '2000',
  `ref_max_referals` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `del_oldstuff` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `del_user_manually` tinyint(3) unsigned NOT NULL DEFAULT '7',
  `del_user_automatic` tinyint(3) unsigned NOT NULL DEFAULT '30',
  `del_user_sendmail` tinyint(3) unsigned NOT NULL DEFAULT '21',
  `sendmail_inactive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `silo_factor` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `timezone` varchar(32) NOT NULL DEFAULT 'Europe/London',
  `dst` enum('0','1','2') NOT NULL DEFAULT '2',
  `energySpeed` smallint(6) NOT NULL DEFAULT '1',
  `disclamerAddress` text NOT NULL,
  `disclamerPhone` text NOT NULL,
  `disclamerMail` text NOT NULL,
  `disclamerNotice` text NOT NULL,
  `alliance_create_min_points` bigint(20) unsigned NOT NULL DEFAULT '0',
  `purchase_bonus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `academy_bonus` int(11) unsigned NOT NULL DEFAULT '0',
  `purchase_bonus_timer` int(11) unsigned NOT NULL DEFAULT '0',
  `question_message` int(11) unsigned NOT NULL DEFAULT '0',
  `referal_message` int(11) NOT NULL DEFAULT '1395517079',
  `fleetconf` int(11) unsigned NOT NULL DEFAULT '0',
  `asteroid_metal` bigint(20) unsigned NOT NULL DEFAULT '1000000',
  `asteroid_crystal` bigint(20) unsigned NOT NULL DEFAULT '500000',
  `asteroid_deuterium` bigint(20) unsigned NOT NULL DEFAULT '250000',
  `bonus_button` int(11) unsigned NOT NULL DEFAULT '0',
  `premium` int(11) unsigned NOT NULL DEFAULT '0',
  `end_game` int(11) NOT NULL DEFAULT '1414782000',
  `cosmonaute` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `asteroid_event` int(11) unsigned NOT NULL DEFAULT '1397322000',
  `fleet_event_active_1` int(11) NOT NULL DEFAULT '1398963900',
  `fleet_event_active_2` int(11) NOT NULL DEFAULT '1399223100',
  `treasure_event` int(11) unsigned NOT NULL DEFAULT '0',
  `treasure_event_1` int(11) unsigned NOT NULL DEFAULT '0',
  `asteroid_event_1` int(11) unsigned NOT NULL DEFAULT '0',
  `fleet_event_inactive_1` int(11) unsigned NOT NULL DEFAULT '0',
  `fleet_event_inactive_2` int(11) unsigned NOT NULL DEFAULT '0',
  `fleet_event_inactive_3` int(11) unsigned NOT NULL DEFAULT '0',
  `experience_bonus` int(11) unsigned NOT NULL DEFAULT '0',
  `new_year` int(11) unsigned NOT NULL DEFAULT '0',
  `timeRewardFrom` int(11) NOT NULL DEFAULT '0',
  `timeRewardTo` int(11) NOT NULL DEFAULT '0',
  `lottery_time` int(11) NOT NULL DEFAULT '0',
  `lottery_min` int(11) NOT NULL DEFAULT '10',
  `lottery_prize` int(11) NOT NULL DEFAULT '100',
  `modinstant` int(11) NOT NULL DEFAULT '1',
  `modinstantresearch` int(11) NOT NULL DEFAULT '1',
  `modinstantresen` int(11) NOT NULL DEFAULT '1',
  `modinstantbuilds` int(11) NOT NULL DEFAULT '1',
  `jackpot_prize` int(11) NOT NULL DEFAULT '100000',
  `jackpot_update` int(11) NOT NULL DEFAULT '0',
  `jackpot_code` int(11) NOT NULL DEFAULT '123',
  `jackpot_update1` int(11) NOT NULL DEFAULT '0',
  `fortress_event` int(11) unsigned NOT NULL DEFAULT '0',
  `stardust_bonus` int(11) unsigned NOT NULL DEFAULT '0',
  `social_message` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uni`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `uni1_config`
--

INSERT INTO `uni1_config` (`uni`, `VERSION`, `sql_revision`, `users_amount`, `game_speed`, `fleet_speed`, `resource_multiplier`, `halt_speed`, `Fleet_Cdr`, `Defs_Cdr`, `initial_fields`, `uni_name`, `game_name`, `game_disable`, `close_reason`, `metal_basic_income`, `crystal_basic_income`, `deuterium_basic_income`, `energy_basic_income`, `LastSettedGalaxyPos`, `LastSettedSystemPos`, `LastSettedPlanetPos`, `noobprotection`, `noobprotectiontime`, `noobprotectionmulti`, `forum_url`, `adm_attack`, `debug`, `lang`, `stat`, `stat_level`, `stat_last_update`, `stat_settings`, `stat_update_time`, `stat_last_db_update`, `stats_fly_lock`, `cron_lock`, `ts_modon`, `ts_server`, `ts_tcpport`, `ts_udpport`, `ts_timeout`, `ts_version`, `ts_cron_last`, `ts_cron_interval`, `ts_login`, `ts_password`, `reg_closed`, `OverviewNewsFrame`, `OverviewNewsText`, `capaktiv`, `cappublic`, `capprivate`, `min_build_time`, `mail_active`, `mail_use`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `smtp_ssl`, `smtp_sendmail`, `smail_path`, `user_valid`, `fb_on`, `fb_apikey`, `fb_skey`, `ga_active`, `ga_key`, `moduls`, `trade_allowed_ships`, `trade_charge`, `chat_closed`, `chat_allowchan`, `chat_allowmes`, `chat_allowdelmes`, `chat_logmessage`, `chat_nickchange`, `chat_botname`, `chat_channelname`, `chat_socket_active`, `chat_socket_host`, `chat_socket_ip`, `chat_socket_port`, `chat_socket_chatid`, `max_galaxy`, `max_system`, `max_planets`, `planet_factor`, `max_elements_build`, `max_elements_tech`, `max_elements_ships`, `min_player_planets`, `planets_tech`, `planets_officier`, `planets_per_tech`, `max_fleet_per_build`, `deuterium_cost_galaxy`, `max_dm_missions`, `max_overflow`, `moon_factor`, `moon_chance`, `darkmatter_cost_trader`, `factor_university`, `max_fleets_per_acs`, `debris_moon`, `vmode_min_time`, `gate_wait_time`, `metal_start`, `crystal_start`, `deuterium_start`, `darkmatter_start`, `antimatter_start`, `ttf_file`, `ref_active`, `ref_bonus`, `ref_minpoints`, `ref_max_referals`, `del_oldstuff`, `del_user_manually`, `del_user_automatic`, `del_user_sendmail`, `sendmail_inactive`, `silo_factor`, `timezone`, `dst`, `energySpeed`, `disclamerAddress`, `disclamerPhone`, `disclamerMail`, `disclamerNotice`, `alliance_create_min_points`, `purchase_bonus`, `academy_bonus`, `purchase_bonus_timer`, `question_message`, `referal_message`, `fleetconf`, `asteroid_metal`, `asteroid_crystal`, `asteroid_deuterium`, `bonus_button`, `premium`, `end_game`, `cosmonaute`, `asteroid_event`, `fleet_event_active_1`, `fleet_event_active_2`, `treasure_event`, `treasure_event_1`, `asteroid_event_1`, `fleet_event_inactive_1`, `fleet_event_inactive_2`, `fleet_event_inactive_3`, `experience_bonus`, `new_year`, `timeRewardFrom`, `timeRewardTo`, `lottery_time`, `lottery_min`, `lottery_prize`, `modinstant`, `modinstantresearch`, `modinstantresen`, `modinstantbuilds`, `jackpot_prize`, `jackpot_update`, `jackpot_code`, `jackpot_update1`, `fortress_event`, `stardust_bonus`, `social_message`) VALUES
(1, '1.7.2676', 0, 404, 7500000, 35000, 5000, 35, 30, 10, 384, 'Dark-Space', 'Dark-Space', 1, 'We are under updates\nback around 20h (4h left)', 100, 80, 60, 0, 3, 96, 3, 1, 5000000, 5, 'http://forum.dark-space.org/', 1, 0, 'fr', 0, 0, 1428402608, 5000000, 0, 0, 0, 0, 0, '', 0, 0, 1, 2, 0, 5, '', '', 0, 1, 'WE ARE UNDER UPDATES ! OPEN TICKETS ONLY FOR IMPORTANT THING WHILE WE ARE UPDATING THE GAME\r\n\r\nATTACK BLOCK LAST UNTIL 20H', 0, '6Lff_e8SAAAAAFSvrz0jlMM-WBEkDpHoCFGGBPVF', '6Lff_e8SAAAAAKWwrJ1loto765s7X55I47I2cked', 0, 1, 0, 'vs1406.109.230.252.201.serverbiz.org', 465, 'support@dark-space.org', 'EJceRpJcPv3181', 'ssl', 'support@dark-space.org', '/usr/sbin/sendmail', 1, 0, '', '', '0', '', '1;0;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;0;1;1;1;1;1;1;1;1;1;1;1;1;0', '202,203,204,205,206,207,208,209,210,211,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228', '30', 0, 0, 1, 0, 0, 0, 'Dark-Space', 'Dark-Space', 0, '', '', 0, 1, 5, 200, 15, 1.0, 5, 3, 10, 9, 5, 5, 0.5, 5000000000, 10, 3, 1.0, 1.0, 20, 250, 16, 8, 0, 259200, 3600, 3000000, 2000000, 1000000, 0, 0, 'styles/resource/fonts/DroidSansMono.ttf', 1, 5000000, 100000, 10, 3, 7, 30, 21, 1, 1, 'Europe/Brussels', '0', 1, '44, Rue Rodenbach\n1190 Forest\n[BE] - Belgium', '', 'support@dark-space.org', '', 0, 40, 37, 1428505433, 1428695717, 1428949407, 0, 20000000000, 15000000000, 10000000000, 4, 0, 1436983200, 0, 1428502200, 1428578400, 1428608400, 1428531300, 1428477900, 1428526200, 1428510600, 1428485400, 1428517200, 0, 0, 0, 0, 1424708917, 10, 2850, 1, 1, 1, 1, 20000, 1422550591, 247, 1422550595, 1425803100, 0, 1428505930);

-- --------------------------------------------------------

--
-- Structure de la table `uni1_cronjobs`
--

CREATE TABLE IF NOT EXISTS `uni1_cronjobs` (
  `cronjobID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `min` varchar(32) NOT NULL,
  `hours` varchar(32) NOT NULL,
  `dom` varchar(32) NOT NULL,
  `month` varchar(32) NOT NULL,
  `dow` varchar(32) NOT NULL,
  `class` varchar(32) NOT NULL,
  `nextTime` int(11) NOT NULL DEFAULT '0',
  `lock` varchar(32) DEFAULT NULL,
  UNIQUE KEY `cronjobID` (`cronjobID`),
  KEY `isActive` (`isActive`,`nextTime`,`lock`,`cronjobID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `uni1_cronjobs`
--

INSERT INTO `uni1_cronjobs` (`cronjobID`, `name`, `isActive`, `min`, `hours`, `dom`, `month`, `dow`, `class`, `nextTime`, `lock`) VALUES
(1, 'referral', 1, '0,30', '*', '*', '*', '*', 'ReferralCronjob', 1428445800, NULL),
(2, 'statistic', 1, '10,30,50', '*', '*', '*', '*', 'StatisticCronjob', 1428424200, '68e16ea0b7bbb53bf8b4672da3e32725'),
(3, 'daily', 1, '25', '2', '*', '*', '*', 'DailyCronjob', 1428452700, NULL),
(4, 'cleaner', 1, '45', '2', '*', '*', '6', 'CleanerCronjob', 1428713100, NULL),
(5, 'inactive', 0, '30', '1', '*', '*', '0,3,6', 'InactiveMailCronjob', 1428449400, NULL),
(8, 'tracking', 1, '8', '13', '*', '*', '0', 'TrackingCronjob', 1428836880, NULL),
(9, 'Achievement Daily Reset', 1, '5', '0', '*', '*', '*', 'AchievementCronjob', 1428530700, NULL),
(10, 'Planet Auction', 1, '15', '*', '*', '*', '*', 'PlanetauctionCronjob', 1428448500, NULL),
(11, 'Instant Buy', 1, '45', '4', '*', '*', '*', 'InstantCronjob', 1428461100, NULL),
(12, 'Delete Users', 0, '14', '5', '*', '*', '*', 'DeleteuserCronjob', 1428462840, NULL),
(14, 'Events', 1, '29', '9', '*', '*', '*', 'EventsCronjob', 1428478140, NULL),
(15, 'Event 1', 1, '29', '16', '*', '*', '*', 'EventsCronjob', 1428503340, NULL),
(16, 'event 2', 1, '19', '18', '*', '*', '*', 'EventsCronjob', 1428509940, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `uni1_diplo`
--

CREATE TABLE IF NOT EXISTS `uni1_diplo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `owner_1` int(11) unsigned NOT NULL,
  `owner_2` int(11) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `accept` tinyint(1) unsigned NOT NULL,
  `accept_text` varchar(5000) NOT NULL,
  `universe` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `universe` (`universe`),
  KEY `owner_1` (`owner_1`,`owner_2`,`accept`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_ennemies`
--

CREATE TABLE IF NOT EXISTS `uni1_ennemies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(11) unsigned NOT NULL DEFAULT '0',
  `owner` int(11) unsigned NOT NULL DEFAULT '0',
  `universe` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_facebook_gift`
--

CREATE TABLE IF NOT EXISTS `uni1_facebook_gift` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_fleets`
--

CREATE TABLE IF NOT EXISTS `uni1_fleets` (
  `fleet_id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `fleet_owner` int(11) unsigned NOT NULL DEFAULT '0',
  `fleet_mission` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `fleet_amount` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fleet_array` text,
  `fleet_universe` tinyint(3) unsigned NOT NULL,
  `fleet_start_time` int(11) NOT NULL DEFAULT '0',
  `fleet_start_id` int(11) unsigned NOT NULL,
  `fleet_start_galaxy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_start_system` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fleet_start_planet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_start_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fleet_end_time` int(11) NOT NULL DEFAULT '0',
  `fleet_end_stay` int(11) NOT NULL DEFAULT '0',
  `fleet_end_id` int(11) unsigned NOT NULL,
  `fleet_end_galaxy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_end_system` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fleet_end_planet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_end_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fleet_target_obj` smallint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_resource_metal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_resource_crystal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_resource_deuterium` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_resource_darkmatter` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_target_owner` int(11) unsigned NOT NULL DEFAULT '0',
  `fleet_group` int(10) unsigned NOT NULL DEFAULT '0',
  `fleet_mess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `start_time` int(11) DEFAULT NULL,
  `fleet_busy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hasCanceled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fleet_id`),
  KEY `fleet_target_owner` (`fleet_target_owner`,`fleet_mission`),
  KEY `fleet_owner` (`fleet_owner`,`fleet_mission`),
  KEY `fleet_group` (`fleet_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_fleets_alarm`
--

CREATE TABLE IF NOT EXISTS `uni1_fleets_alarm` (
  `fleet_id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `fleet_owner` int(11) unsigned NOT NULL DEFAULT '0',
  `fleet_mission` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `fleet_amount` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fleet_array` text,
  `fleet_universe` tinyint(3) unsigned NOT NULL,
  `fleet_start_time` int(11) NOT NULL DEFAULT '0',
  `fleet_start_id` int(11) unsigned NOT NULL,
  `fleet_start_galaxy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_start_system` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fleet_start_planet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_start_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fleet_end_time` int(11) NOT NULL DEFAULT '0',
  `fleet_end_stay` int(11) NOT NULL DEFAULT '0',
  `fleet_end_id` int(11) unsigned NOT NULL,
  `fleet_end_galaxy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_end_system` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fleet_end_planet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_end_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fleet_target_obj` smallint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_resource_metal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_resource_crystal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_resource_deuterium` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_resource_darkmatter` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_target_owner` int(11) unsigned NOT NULL DEFAULT '0',
  `fleet_group` int(10) unsigned NOT NULL DEFAULT '0',
  `fleet_mess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `start_time` int(11) DEFAULT NULL,
  `fleet_busy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hasCanceled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `called` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fleet_id`),
  KEY `fleet_target_owner` (`fleet_target_owner`,`fleet_mission`),
  KEY `fleet_owner` (`fleet_owner`,`fleet_mission`),
  KEY `fleet_group` (`fleet_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_fleet_event`
--

CREATE TABLE IF NOT EXISTS `uni1_fleet_event` (
  `fleetID` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `lock` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`fleetID`),
  KEY `lock` (`lock`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_inquery_feedback`
--

CREATE TABLE IF NOT EXISTS `uni1_inquery_feedback` (
  `inqueryID` int(11) NOT NULL AUTO_INCREMENT,
  `supportID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `star` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `finished` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`inqueryID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_ipcheck`
--

CREATE TABLE IF NOT EXISTS `uni1_ipcheck` (
  `checkID` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `uni` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`checkID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_jobs`
--

CREATE TABLE IF NOT EXISTS `uni1_jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `title` varchar(64) CHARACTER SET utf8 NOT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  `catID` int(11) NOT NULL DEFAULT '1',
  `is_active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_log`
--

CREATE TABLE IF NOT EXISTS `uni1_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mode` tinyint(3) unsigned NOT NULL,
  `admin` int(11) unsigned NOT NULL,
  `target` int(11) NOT NULL,
  `time` int(11) unsigned NOT NULL,
  `data` text NOT NULL,
  `universe` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mode` (`mode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_log_fleets`
--

CREATE TABLE IF NOT EXISTS `uni1_log_fleets` (
  `fleet_id` bigint(11) unsigned NOT NULL,
  `fleet_owner` int(11) unsigned NOT NULL DEFAULT '0',
  `fleet_mission` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `fleet_amount` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fleet_array` text,
  `fleet_universe` tinyint(3) unsigned NOT NULL,
  `fleet_start_time` int(11) NOT NULL DEFAULT '0',
  `fleet_start_id` int(11) unsigned NOT NULL,
  `fleet_start_galaxy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_start_system` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fleet_start_planet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_start_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fleet_end_time` int(11) NOT NULL DEFAULT '0',
  `fleet_end_stay` int(11) NOT NULL DEFAULT '0',
  `fleet_end_id` int(11) unsigned NOT NULL,
  `fleet_end_galaxy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_end_system` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fleet_end_planet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_end_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fleet_target_obj` smallint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_resource_metal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_resource_crystal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_resource_deuterium` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_resource_darkmatter` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_target_owner` int(11) unsigned NOT NULL DEFAULT '0',
  `fleet_group` varchar(15) NOT NULL DEFAULT '0',
  `fleet_mess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `start_time` int(11) DEFAULT NULL,
  `fleet_busy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fleet_state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fleet_id`),
  KEY `BashRule` (`fleet_owner`,`fleet_end_id`,`fleet_start_time`,`fleet_mission`,`fleet_state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_lostpassword`
--

CREATE TABLE IF NOT EXISTS `uni1_lostpassword` (
  `userID` int(10) unsigned NOT NULL,
  `key` varchar(32) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `hasChanged` tinyint(1) NOT NULL DEFAULT '0',
  `fromIP` varchar(40) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `userID` (`userID`,`key`,`time`,`hasChanged`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_messages`
--

CREATE TABLE IF NOT EXISTS `uni1_messages` (
  `message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message_owner` int(11) unsigned NOT NULL DEFAULT '0',
  `message_sender` int(11) unsigned NOT NULL DEFAULT '0',
  `message_time` int(11) NOT NULL DEFAULT '0',
  `message_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `message_from` varchar(128) DEFAULT NULL,
  `message_subject` varchar(255) DEFAULT NULL,
  `message_text` text,
  `message_unread` tinyint(4) NOT NULL DEFAULT '1',
  `message_universe` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `message_sender` (`message_sender`),
  KEY `message_owner` (`message_owner`,`message_type`,`message_unread`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_messages_copy`
--

CREATE TABLE IF NOT EXISTS `uni1_messages_copy` (
  `message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message_owner` int(11) unsigned NOT NULL DEFAULT '0',
  `message_sender` int(11) unsigned NOT NULL DEFAULT '0',
  `message_time` int(11) NOT NULL DEFAULT '0',
  `message_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `message_from` varchar(128) DEFAULT NULL,
  `message_subject` varchar(255) DEFAULT NULL,
  `message_text` text,
  `message_unread` tinyint(4) NOT NULL DEFAULT '1',
  `message_universe` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `message_sender` (`message_sender`),
  KEY `message_owner` (`message_owner`,`message_type`,`message_unread`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_message_banned`
--

CREATE TABLE IF NOT EXISTS `uni1_message_banned` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `who` varchar(64) NOT NULL DEFAULT '',
  `theme` varchar(500) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `longer` int(11) NOT NULL DEFAULT '0',
  `author` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `universe` tinyint(3) unsigned NOT NULL,
  KEY `ID` (`id`),
  KEY `universe` (`universe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_multi`
--

CREATE TABLE IF NOT EXISTS `uni1_multi` (
  `multiID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`multiID`),
  KEY `userID` (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_multi_declaration`
--

CREATE TABLE IF NOT EXISTS `uni1_multi_declaration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `multi1` text,
  `multi2` text,
  `text` text,
  `date` int(11) NOT NULL DEFAULT '0',
  `finished` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_news`
--

CREATE TABLE IF NOT EXISTS `uni1_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(64) NOT NULL,
  `date` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `catID` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_notes`
--

CREATE TABLE IF NOT EXISTS `uni1_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) unsigned DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `priority` tinyint(1) unsigned DEFAULT '1',
  `title` varchar(32) DEFAULT NULL,
  `text` text,
  `universe` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `universe` (`universe`),
  KEY `owner` (`owner`,`time`,`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_paypal`
--

CREATE TABLE IF NOT EXISTS `uni1_paypal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_paypal_log`
--

CREATE TABLE IF NOT EXISTS `uni1_paypal_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `darkmatter` double(50,0) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_planetauction`
--

CREATE TABLE IF NOT EXISTS `uni1_planetauction` (
  `auctionID` int(11) NOT NULL AUTO_INCREMENT,
  `planetID` int(11) unsigned NOT NULL DEFAULT '0',
  `price` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `type` int(11) unsigned NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `buyerID` int(11) unsigned NOT NULL DEFAULT '0',
  `selledID` int(11) unsigned NOT NULL DEFAULT '0',
  `universe` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auctionID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;


-- --------------------------------------------------------

--
-- Structure de la table `uni1_planetcloak_log`
--

CREATE TABLE IF NOT EXISTS `uni1_planetcloak_log` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `userID` int(11) unsigned NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `credits` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_planets`
--

CREATE TABLE IF NOT EXISTS `uni1_planets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT 'Hauptplanet',
  `id_owner` int(11) unsigned DEFAULT NULL,
  `universe` tinyint(3) unsigned NOT NULL,
  `galaxy` tinyint(3) NOT NULL DEFAULT '0',
  `system` smallint(5) NOT NULL DEFAULT '0',
  `planet` tinyint(3) NOT NULL DEFAULT '0',
  `last_update` int(11) DEFAULT NULL,
  `planet_type` enum('1','3','4') NOT NULL DEFAULT '1',
  `destruyed` int(11) NOT NULL DEFAULT '0',
  `b_building` int(11) NOT NULL DEFAULT '0',
  `b_building_id` text,
  `b_hangar` int(11) NOT NULL DEFAULT '0',
  `b_hangar_id` text,
  `b_hangar_plus` int(11) NOT NULL DEFAULT '0',
  `image` varchar(32) NOT NULL DEFAULT 'normaltempplanet01',
  `diameter` int(11) unsigned NOT NULL DEFAULT '12800',
  `field_current` smallint(5) unsigned NOT NULL DEFAULT '0',
  `field_max` smallint(5) unsigned NOT NULL DEFAULT '163',
  `temp_min` int(3) NOT NULL DEFAULT '-17',
  `temp_max` int(3) NOT NULL DEFAULT '23',
  `eco_hash` varchar(32) NOT NULL DEFAULT '',
  `metal` double(50,6) unsigned NOT NULL DEFAULT '0.000000',
  `metal_perhour` double(50,6) NOT NULL DEFAULT '0.000000',
  `metal_max` double(50,0) unsigned DEFAULT '100000',
  `crystal` double(50,6) unsigned NOT NULL DEFAULT '0.000000',
  `crystal_perhour` double(50,6) NOT NULL DEFAULT '0.000000',
  `crystal_max` double(50,0) unsigned DEFAULT '100000',
  `deuterium` double(50,6) unsigned NOT NULL DEFAULT '0.000000',
  `deuterium_perhour` double(50,6) NOT NULL DEFAULT '0.000000',
  `deuterium_max` double(50,0) unsigned DEFAULT '100000',
  `energy_used` double(50,0) NOT NULL DEFAULT '0',
  `energy` double(50,0) unsigned NOT NULL DEFAULT '0',
  `metal_mine` bigint(20) unsigned NOT NULL DEFAULT '0',
  `crystal_mine` bigint(20) unsigned NOT NULL DEFAULT '0',
  `deuterium_sintetizer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `solar_plant` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `searcher` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fusion_plant` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `robot_factory` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nano_factory` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hangar` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `metal_store` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `crystal_store` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deuterium_store` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `laboratory` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `terraformer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `university` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ally_deposit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `silo` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mondbasis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `phalanx` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sprungtor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `planetarium` bigint(20) unsigned NOT NULL DEFAULT '0',
  `sensor_modul` bigint(20) unsigned NOT NULL DEFAULT '0',
  `research_center` bigint(20) unsigned NOT NULL DEFAULT '0',
  `collider` bigint(20) unsigned NOT NULL DEFAULT '0',
  `small_ship_cargo` double unsigned NOT NULL DEFAULT '0',
  `big_ship_cargo` double unsigned NOT NULL DEFAULT '0',
  `light_hunter` double unsigned NOT NULL DEFAULT '0',
  `heavy_hunter` double unsigned NOT NULL DEFAULT '0',
  `crusher` double unsigned NOT NULL DEFAULT '0',
  `battle_ship` double unsigned NOT NULL DEFAULT '0',
  `colonizer` double unsigned NOT NULL DEFAULT '0',
  `recycler` double unsigned NOT NULL DEFAULT '0',
  `spy_sonde` double unsigned NOT NULL DEFAULT '0',
  `bomber_ship` double unsigned NOT NULL DEFAULT '0',
  `solar_satelit` double unsigned NOT NULL DEFAULT '0',
  `destructor` double unsigned NOT NULL DEFAULT '0',
  `dearth_star` double unsigned NOT NULL DEFAULT '0',
  `battleship` double unsigned NOT NULL DEFAULT '0',
  `lune_noir` double unsigned NOT NULL DEFAULT '0',
  `ev_transporter` double unsigned NOT NULL DEFAULT '0',
  `star_crasher` double unsigned NOT NULL DEFAULT '0',
  `giga_recykler` double unsigned NOT NULL DEFAULT '0',
  `dm_ship` double NOT NULL DEFAULT '0',
  `orbital_station` double unsigned NOT NULL DEFAULT '0',
  `misil_launcher` double unsigned NOT NULL DEFAULT '0',
  `small_laser` double unsigned NOT NULL DEFAULT '0',
  `big_laser` double unsigned NOT NULL DEFAULT '0',
  `gauss_canyon` double unsigned NOT NULL DEFAULT '0',
  `ionic_canyon` double unsigned NOT NULL DEFAULT '0',
  `buster_canyon` double unsigned NOT NULL DEFAULT '0',
  `small_protection_shield` double unsigned NOT NULL DEFAULT '0',
  `planet_protector` double unsigned NOT NULL DEFAULT '0',
  `big_protection_shield` double unsigned NOT NULL DEFAULT '0',
  `graviton_canyon` double unsigned NOT NULL DEFAULT '0',
  `interceptor_misil` double unsigned NOT NULL DEFAULT '0',
  `interplanetary_misil` double unsigned NOT NULL DEFAULT '0',
  `metal_mine_porcent` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '10',
  `crystal_mine_porcent` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '10',
  `deuterium_sintetizer_porcent` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '10',
  `solar_plant_porcent` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '10',
  `fusion_plant_porcent` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '10',
  `solar_satelit_porcent` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '10',
  `collider_porcent` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '10',
  `last_jump_time` int(11) NOT NULL DEFAULT '0',
  `der_metal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `der_crystal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `id_luna` int(11) NOT NULL DEFAULT '0',
  `bs_class_oneil` double(50,0) unsigned NOT NULL DEFAULT '0',
  `flying_death` double(50,0) unsigned NOT NULL DEFAULT '0',
  `Scrappy` double(50,0) unsigned NOT NULL DEFAULT '0',
  `M7` double(50,0) unsigned NOT NULL DEFAULT '0',
  `М19` double(50,0) unsigned NOT NULL DEFAULT '0',
  `M32` double(50,0) unsigned NOT NULL DEFAULT '0',
  `galleon` double(50,0) unsigned NOT NULL DEFAULT '0',
  `destroyer` double(50,0) unsigned NOT NULL DEFAULT '0',
  `frigate` double(50,0) unsigned NOT NULL DEFAULT '0',
  `black_wanderer` double(50,0) unsigned NOT NULL DEFAULT '0',
  `last_relocate` int(11) unsigned NOT NULL DEFAULT '0',
  `lepton_gun` double(50,0) unsigned NOT NULL DEFAULT '0',
  `proton_gun` double(50,0) unsigned NOT NULL DEFAULT '0',
  `canyon` double(50,0) unsigned NOT NULL DEFAULT '0',
  `quantum_gun` double(50,0) unsigned NOT NULL DEFAULT '0',
  `hydrogen_gun` double(50,0) unsigned NOT NULL DEFAULT '0',
  `dora_gun` double(50,0) unsigned NOT NULL DEFAULT '0',
  `photon_cannon` double(50,0) unsigned NOT NULL DEFAULT '0',
  `particle_emitter` double(50,0) unsigned NOT NULL DEFAULT '0',
  `slim_mehador` double unsigned NOT NULL DEFAULT '0',
  `iron_mehador` double unsigned NOT NULL DEFAULT '0',
  `grand_mehador` double unsigned NOT NULL DEFAULT '0',
  `darkmatter_perhour` double(50,6) NOT NULL DEFAULT '0.000000',
  `capture_not` int(11) unsigned NOT NULL DEFAULT '0',
  `planet_protection` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_luna` (`id_luna`),
  KEY `id_owner` (`id_owner`),
  KEY `destruyed` (`destruyed`),
  KEY `universe` (`universe`,`galaxy`,`system`,`planet`,`planet_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34463 ;

--
-- Contenu de la table `uni1_planets`
--

INSERT INTO `uni1_planets` (`id`, `name`, `id_owner`, `universe`, `galaxy`, `system`, `planet`, `last_update`, `planet_type`, `destruyed`, `b_building`, `b_building_id`, `b_hangar`, `b_hangar_id`, `b_hangar_plus`, `image`, `diameter`, `field_current`, `field_max`, `temp_min`, `temp_max`, `eco_hash`, `metal`, `metal_perhour`, `metal_max`, `crystal`, `crystal_perhour`, `crystal_max`, `deuterium`, `deuterium_perhour`, `deuterium_max`, `energy_used`, `energy`, `metal_mine`, `crystal_mine`, `deuterium_sintetizer`, `solar_plant`, `searcher`, `fusion_plant`, `robot_factory`, `nano_factory`, `hangar`, `metal_store`, `crystal_store`, `deuterium_store`, `laboratory`, `terraformer`, `university`, `ally_deposit`, `silo`, `mondbasis`, `phalanx`, `sprungtor`, `planetarium`, `sensor_modul`, `research_center`, `collider`, `small_ship_cargo`, `big_ship_cargo`, `light_hunter`, `heavy_hunter`, `crusher`, `battle_ship`, `colonizer`, `recycler`, `spy_sonde`, `bomber_ship`, `solar_satelit`, `destructor`, `dearth_star`, `battleship`, `lune_noir`, `ev_transporter`, `star_crasher`, `giga_recykler`, `dm_ship`, `orbital_station`, `misil_launcher`, `small_laser`, `big_laser`, `gauss_canyon`, `ionic_canyon`, `buster_canyon`, `small_protection_shield`, `planet_protector`, `big_protection_shield`, `graviton_canyon`, `interceptor_misil`, `interplanetary_misil`, `metal_mine_porcent`, `crystal_mine_porcent`, `deuterium_sintetizer_porcent`, `solar_plant_porcent`, `fusion_plant_porcent`, `solar_satelit_porcent`, `collider_porcent`, `last_jump_time`, `der_metal`, `der_crystal`, `id_luna`, `bs_class_oneil`, `flying_death`, `Scrappy`, `M7`, `М19`, `M32`, `galleon`, `destroyer`, `frigate`, `black_wanderer`, `last_relocate`, `lepton_gun`, `proton_gun`, `canyon`, `quantum_gun`, `hydrogen_gun`, `dora_gun`, `photon_cannon`, `particle_emitter`, `slim_mehador`, `iron_mehador`, `grand_mehador`, `darkmatter_perhour`, `capture_not`, `planet_protection`) VALUES
(1, 'Main Planet', 1, 1, 1, 1, 1, 1428436528, '1', 0, 0, '', 0, '', 0, 'normaltempplanet01', 19595, 31, 385, -18, 22, 'ef7346c42d985025b8342b5cad88704c', 90500000.000000, 0.000000, 90500000, 90500000.000000, 0.000000, 90500000, 90500000.000000, 0.000000, 90500000, 0, 35068864346, 0, 0, 0, 0, 0, 0, 4, 0, 10, 0, 0, 0, 12, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11900004999, 899999999, 399999, 399999, 150000, 150000, 150000, 0, 701526946, 0, 0, 0, 0, 0, 0, 150000, 150000, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '10', '10', '10', '10', '10', '10', '10', 0, 0, 0, 5615, 440200, 0, 150001, 0, 0, 0, 0, 0, 1100499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000000, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `uni1_premium_calc`
--

CREATE TABLE IF NOT EXISTS `uni1_premium_calc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `cost` int(11) unsigned NOT NULL DEFAULT '0',
  `factor` float unsigned NOT NULL DEFAULT '0',
  `factorone` int(11) unsigned NOT NULL DEFAULT '0',
  `rangevalue` int(11) unsigned NOT NULL DEFAULT '0',
  `rangevalueone` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `uni1_premium_calc`
--

INSERT INTO `uni1_premium_calc` (`id`, `name`, `cost`, `factor`, `factorone`, `rangevalue`, `rangevalueone`) VALUES
(1, 'prem_res', 10, 1.07, 90, 0, 1000),
(2, 'prem_storage', 1, 1.05, 4, 0, 1000),
(3, 'prem_s_build', 7, 1.2, 50, 0, 1000),
(4, 'prem_o_build', 100, 1.3, 1, 0, 100),
(5, 'prem_button', 525, 1.45, 1, 2, 10),
(6, 'prem_speed_button', 30, 1.35, 10, 0, 1000),
(7, 'prem_expedition', 30, 1.02, 5, 0, 1000),
(8, 'prem_count_expiditeon', 500, 1.35, 1, 0, 100),
(9, 'prem_speed_expiditeon', 50, 1.03, 8, 0, 1000),
(10, 'prem_moon_dextruct', 8500, 2, 2, 2, 10),
(11, 'prem_leveling', 32, 1.1, 25, 0, 1000),
(12, 'prem_batle_leveling', 37, 1.08, 25, 0, 1000),
(13, 'prem_bank_ally', 200, 1.2, 1, 2, 100),
(14, 'prem_prod_from_colly', 110, 1.3, 15, 0, 1000),
(15, 'prem_moon_creat', 100, 1.04, 2, 0, 100),
(16, 'prem_fuel_consumption', 55, 1.12, 3, 0, 1000);

-- --------------------------------------------------------

--
-- Structure de la table `uni1_raports`
--

CREATE TABLE IF NOT EXISTS `uni1_raports` (
  `rid` varchar(32) NOT NULL,
  `raport` text NOT NULL,
  `time` int(11) NOT NULL,
  `attacker` varchar(255) NOT NULL DEFAULT '',
  `defender` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_records`
--

CREATE TABLE IF NOT EXISTS `uni1_records` (
  `userID` int(10) unsigned NOT NULL,
  `elementID` smallint(5) unsigned NOT NULL,
  `level` double unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_reward`
--

CREATE TABLE IF NOT EXISTS `uni1_reward` (
  `rewardId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rewardCode` varchar(255) NOT NULL,
  `rewardMetal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `rewardCrystal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `rewardDeuterium` double(50,0) unsigned NOT NULL DEFAULT '0',
  `rewardDarkmatter` double(50,0) unsigned NOT NULL DEFAULT '0',
  `rewardAntimatter` double(50,0) unsigned NOT NULL DEFAULT '0',
  `rewardCount` int(11) NOT NULL DEFAULT '0',
  `rewardUserLimit` int(11) NOT NULL DEFAULT '0',
  `universe` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rewardId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_reward_log`
--

CREATE TABLE IF NOT EXISTS `uni1_reward_log` (
  `rewardIdLog` int(11) unsigned NOT NULL DEFAULT '0',
  `rewardUserId` int(11) unsigned NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `universe` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_session`
--

CREATE TABLE IF NOT EXISTS `uni1_session` (
  `sessionID` varchar(32) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `userIP` varchar(40) NOT NULL,
  `lastonline` int(11) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `sessionID` (`sessionID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_shortcuts`
--

CREATE TABLE IF NOT EXISTS `uni1_shortcuts` (
  `shortcutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ownerID` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `galaxy` tinyint(3) unsigned NOT NULL,
  `system` smallint(5) unsigned NOT NULL,
  `planet` tinyint(3) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`shortcutID`),
  KEY `ownerID` (`ownerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_statpoints`
--

CREATE TABLE IF NOT EXISTS `uni1_statpoints` (
  `id_owner` int(11) unsigned NOT NULL DEFAULT '0',
  `id_ally` int(11) unsigned NOT NULL DEFAULT '0',
  `stat_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `universe` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tech_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `tech_old_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `tech_points` double(50,0) unsigned NOT NULL DEFAULT '0',
  `tech_count` double(50,0) unsigned NOT NULL DEFAULT '0',
  `build_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `build_old_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `build_points` double(50,0) unsigned NOT NULL DEFAULT '0',
  `build_count` double(50,0) unsigned NOT NULL DEFAULT '0',
  `defs_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `defs_old_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `defs_points` double(50,0) unsigned NOT NULL DEFAULT '0',
  `defs_count` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `fleet_old_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `fleet_points` double(50,0) unsigned NOT NULL DEFAULT '0',
  `fleet_count` double(50,0) unsigned NOT NULL DEFAULT '0',
  `total_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `total_old_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `total_points` double(50,0) unsigned NOT NULL DEFAULT '0',
  `total_count` double unsigned NOT NULL DEFAULT '0',
  `ach_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `ach_old_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `ach_points` double(50,0) unsigned NOT NULL DEFAULT '0',
  `ach_count` double(50,0) unsigned NOT NULL DEFAULT '0',
  KEY `id_owner` (`id_owner`),
  KEY `universe` (`universe`),
  KEY `stat_type` (`stat_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_storages_logs`
--

CREATE TABLE IF NOT EXISTS `uni1_storages_logs` (
  `storageID` int(11) NOT NULL AUTO_INCREMENT,
  `allyID` tinyint(3) NOT NULL DEFAULT '0',
  `userID` int(11) NOT NULL DEFAULT '0',
  `metal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `crystal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `deuterium` double(50,0) unsigned NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `type` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`storageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_ticket`
--

CREATE TABLE IF NOT EXISTS `uni1_ticket` (
  `ticketID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `universe` tinyint(3) unsigned NOT NULL,
  `ownerID` int(10) unsigned NOT NULL,
  `categoryID` tinyint(1) unsigned NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL,
  `rate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketID`),
  KEY `ownerID` (`ownerID`),
  KEY `universe` (`universe`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_ticket_answer`
--

CREATE TABLE IF NOT EXISTS `uni1_ticket_answer` (
  `answerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ownerID` int(10) unsigned NOT NULL,
  `ownerName` varchar(32) NOT NULL,
  `ticketID` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  PRIMARY KEY (`answerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_ticket_category`
--

CREATE TABLE IF NOT EXISTS `uni1_ticket_category` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_timebonus_log`
--

CREATE TABLE IF NOT EXISTS `uni1_timebonus_log` (
  `logID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) unsigned NOT NULL DEFAULT '0',
  `TIMESTAMP` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_topkb`
--

CREATE TABLE IF NOT EXISTS `uni1_topkb` (
  `rid` varchar(32) NOT NULL,
  `units` double(50,0) unsigned NOT NULL,
  `result` varchar(1) NOT NULL,
  `time` int(11) NOT NULL,
  `universe` tinyint(3) unsigned NOT NULL,
  KEY `time` (`universe`,`rid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_users`
--

CREATE TABLE IF NOT EXISTS `uni1_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `email_2` varchar(64) NOT NULL DEFAULT '',
  `lang` varchar(2) NOT NULL DEFAULT 'de',
  `authattack` tinyint(1) NOT NULL DEFAULT '0',
  `authlevel` tinyint(1) NOT NULL DEFAULT '0',
  `rights` text,
  `id_planet` int(11) unsigned NOT NULL DEFAULT '0',
  `universe` tinyint(3) unsigned NOT NULL,
  `galaxy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `system` smallint(5) unsigned NOT NULL DEFAULT '0',
  `planet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `darkmatter` bigint(20) NOT NULL DEFAULT '0',
  `antimatter` bigint(20) unsigned NOT NULL DEFAULT '0',
  `stardust` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastip` varchar(40) NOT NULL DEFAULT '',
  `ip_at_reg` varchar(40) NOT NULL DEFAULT '',
  `register_time` int(11) NOT NULL DEFAULT '0',
  `onlinetime` int(11) NOT NULL DEFAULT '0',
  `dpath` varchar(20) NOT NULL DEFAULT 'gow',
  `timezone` varchar(32) NOT NULL DEFAULT 'Europe/London',
  `planet_sort` tinyint(1) NOT NULL DEFAULT '0',
  `planet_sort_order` tinyint(1) NOT NULL DEFAULT '0',
  `spio_anz` int(10) unsigned NOT NULL DEFAULT '1',
  `settings_fleetactions` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `settings_esp` tinyint(1) NOT NULL DEFAULT '1',
  `settings_wri` tinyint(1) NOT NULL DEFAULT '1',
  `settings_bud` tinyint(1) NOT NULL DEFAULT '1',
  `settings_mis` tinyint(1) NOT NULL DEFAULT '1',
  `settings_blockPM` tinyint(1) NOT NULL DEFAULT '0',
  `urlaubs_modus` tinyint(1) NOT NULL DEFAULT '0',
  `urlaubs_until` int(11) NOT NULL DEFAULT '0',
  `db_deaktjava` int(11) NOT NULL DEFAULT '0',
  `b_tech_planet` int(11) unsigned NOT NULL DEFAULT '0',
  `b_tech` int(11) unsigned NOT NULL DEFAULT '0',
  `b_tech_id` smallint(2) unsigned NOT NULL DEFAULT '0',
  `b_tech_queue` text,
  `spy_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `computer_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `military_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `defence_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shield_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `energy_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hyperspace_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `combustion_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `impulse_motor_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hyperspace_motor_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `laser_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ionic_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `buster_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intergalactic_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expedition_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `brotherhood` int(11) unsigned NOT NULL DEFAULT '0',
  `metal_proc_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `crystal_proc_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deuterium_proc_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `graviton_tech` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ally_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ally_register_time` int(11) NOT NULL DEFAULT '0',
  `ally_rank_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rpg_geologue` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `rpg_amiral` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_ingenieur` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_technocrate` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_espion` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_constructeur` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_scientifique` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_commandant` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_stockeur` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_defenseur` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_destructeur` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_general` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_bunker` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_raideur` tinyint(2) NOT NULL DEFAULT '0',
  `rpg_empereur` tinyint(22) NOT NULL DEFAULT '0',
  `bana` tinyint(1) NOT NULL DEFAULT '0',
  `banaday` int(11) NOT NULL DEFAULT '0',
  `hof` tinyint(1) NOT NULL DEFAULT '1',
  `spyMessagesMode` tinyint(1) NOT NULL DEFAULT '1',
  `wons` int(11) unsigned NOT NULL DEFAULT '0',
  `loos` int(11) unsigned NOT NULL DEFAULT '0',
  `draws` int(11) unsigned NOT NULL DEFAULT '0',
  `kbmetal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `kbcrystal` double(50,0) unsigned NOT NULL DEFAULT '0',
  `lostunits` double(50,0) unsigned NOT NULL DEFAULT '0',
  `desunits` double(50,0) unsigned NOT NULL DEFAULT '0',
  `uctime` int(11) NOT NULL DEFAULT '0',
  `setmail` int(11) NOT NULL DEFAULT '0',
  `dm_attack` int(11) NOT NULL DEFAULT '0',
  `dm_defensive` int(11) NOT NULL DEFAULT '0',
  `dm_buildtime` int(11) NOT NULL DEFAULT '0',
  `dm_researchtime` int(11) NOT NULL DEFAULT '0',
  `dm_resource` int(11) NOT NULL DEFAULT '0',
  `dm_energie` int(11) NOT NULL DEFAULT '0',
  `dm_fleettime` int(11) NOT NULL DEFAULT '0',
  `ref_id` int(11) NOT NULL DEFAULT '0',
  `ref_bonus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `inactive_mail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lp_points` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_p` int(11) unsigned NOT NULL DEFAULT '3',
  `experience_peace` int(11) unsigned NOT NULL DEFAULT '0',
  `bonus_timer` int(11) unsigned NOT NULL DEFAULT '0',
  `experience_peace_max` int(11) unsigned NOT NULL DEFAULT '3600',
  `experience_peace_level` int(11) unsigned NOT NULL DEFAULT '0',
  `peace_reward_slots` int(11) unsigned NOT NULL DEFAULT '0',
  `peace_reward_fields` int(11) unsigned NOT NULL DEFAULT '0',
  `peace_reward_golf` int(11) unsigned NOT NULL DEFAULT '0',
  `experience_combat` int(11) unsigned NOT NULL DEFAULT '0',
  `experience_combat_max` int(11) unsigned NOT NULL DEFAULT '10700',
  `combat_reward_deut` int(11) unsigned NOT NULL DEFAULT '0',
  `combat_reward_expe` int(11) unsigned NOT NULL DEFAULT '0',
  `combat_reward_bonus` int(11) unsigned NOT NULL DEFAULT '0',
  `combat_reward_collider` int(11) unsigned NOT NULL DEFAULT '0',
  `experience_combat_level` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_extraction` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_storing` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_speed` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_stage` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_bonus` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_moon` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_expedition` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_experience` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_bank` int(11) unsigned NOT NULL DEFAULT '0',
  `prem_speed_button` bigint(20) unsigned NOT NULL DEFAULT '0',
  `prem_expedition` bigint(20) unsigned NOT NULL DEFAULT '0',
  `prem_speed_expiditeon` bigint(20) unsigned NOT NULL DEFAULT '0',
  `prem_batle_leveling` bigint(20) unsigned NOT NULL DEFAULT '0',
  `prem_prod_from_colly` bigint(20) unsigned NOT NULL DEFAULT '0',
  `prem_moon_creat` bigint(20) unsigned NOT NULL DEFAULT '0',
  `prem_fuel_consumption` bigint(20) unsigned NOT NULL DEFAULT '0',
  `premium_reward_days` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_storage_deposit` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_storage_widraw` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_peace_level` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_combat_level` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_attack` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_hostal` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_expedition` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_level_attack` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_level_hostal` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_level_expe` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_build_metal` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_build_crystal` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_build_deuterium` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_build_light` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_build_medium` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_build_heavy` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_build_university` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_build_moon` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_build_phalanx` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_build_terraformer` int(111) unsigned NOT NULL DEFAULT '0',
  `achievement_defense_easy` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_defense_simple` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_defense_average` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_defense_high` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_defense_heavy` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_defense_massive` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_defense_imperial` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_misc_fighter` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_misc_destructor` int(11) unsigned NOT NULL DEFAULT '0',
  `moon_destruction` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_misc_moons` int(11) unsigned NOT NULL DEFAULT '0',
  `moon_creation` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_misc_hostal` int(11) unsigned NOT NULL DEFAULT '0',
  `hostal_count` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_misc_expe` int(11) unsigned NOT NULL DEFAULT '0',
  `expedition_count` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_misc_seeker` int(11) unsigned NOT NULL DEFAULT '0',
  `found_dm` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_misc_upgrades` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_misc_integrator` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_fleets_small` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_fleets_support` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_fleets_battle` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_fleets_destruction` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_fleets_seige` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_fleets_heavy` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_fleets_imperial` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_tech_spy` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_tech_hacker` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_tech_invincible` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_tech_expedition` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_tech_graviton` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_tech_power` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_tech_energy` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_tech_brotherhood` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_tech_speed` int(11) unsigned NOT NULL DEFAULT '0',
  `achievements_tech_geologist` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1101` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1102` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1103` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1104` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1105` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1106` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1107` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1108` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1109` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1110` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1111` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1113` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1112` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1201` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1202` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1203` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1204` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1208` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1209` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1210` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1205` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1207` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1206` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1301` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1304` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1302` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1310` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1305` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1303` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1308` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1311` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1312` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1313` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1314` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1306` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1307` int(11) unsigned NOT NULL DEFAULT '0',
  `academy_1309` int(11) unsigned NOT NULL DEFAULT '0',
  `instant_fleet` bigint(20) unsigned NOT NULL DEFAULT '0',
  `instant_defense` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peacefull_last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `multi_report` int(11) unsigned NOT NULL DEFAULT '0',
  `message_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `message_trusted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `v1` int(11) unsigned NOT NULL DEFAULT '0',
  `v2` int(11) unsigned NOT NULL DEFAULT '0',
  `v3` int(11) unsigned NOT NULL DEFAULT '0',
  `training` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `training_step` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frisbee` int(11) unsigned NOT NULL DEFAULT '0',
  `alien` int(11) unsigned NOT NULL DEFAULT '0',
  `rocket` int(11) unsigned NOT NULL DEFAULT '0',
  `cosmonaute` int(11) unsigned NOT NULL DEFAULT '0',
  `facebook_liked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `light_armor_upgrade` int(11) unsigned NOT NULL DEFAULT '0',
  `average_armor_upgrade` int(11) unsigned NOT NULL DEFAULT '0',
  `heavy_armor_upgrade` int(11) unsigned NOT NULL DEFAULT '0',
  `light_shield_upgrade` int(11) unsigned NOT NULL DEFAULT '0',
  `average_shield_upgrade` int(11) unsigned NOT NULL DEFAULT '0',
  `heavy_shield_upgrade` int(11) unsigned NOT NULL DEFAULT '0',
  `jet_engine_upgrade` int(11) unsigned NOT NULL DEFAULT '0',
  `kick_motor_upgrade` int(11) unsigned NOT NULL DEFAULT '0',
  `hyperspace_drive_upgrade` int(11) unsigned NOT NULL DEFAULT '0',
  `upgrade1_percent` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `upgrade2_percent` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `upgrade3_percent` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `upgrade4_percent` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `upgrade5_percent` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `upgrade6_percent` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `upgrade7_percent` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `upgrade8_percent` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `upgrade9_percent` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `upgrade1_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `upgrade2_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `upgrade3_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `upgrade4_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `upgrade5_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `upgrade6_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `upgrade7_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `upgrade8_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `upgrade9_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alarm_volume` float unsigned NOT NULL DEFAULT '0',
  `planet_cloak` int(11) unsigned NOT NULL DEFAULT '0',
  `planet_cloak_countdown` int(11) unsigned NOT NULL DEFAULT '0',
  `immunity_until` int(11) unsigned NOT NULL DEFAULT '0',
  `next_immunity` int(11) unsigned NOT NULL DEFAULT '0',
  `sdays_b` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sdays_time` int(11) unsigned NOT NULL DEFAULT '0',
  `settings_planetmenu` int(11) NOT NULL DEFAULT '0',
  `PaySafe` int(11) NOT NULL DEFAULT '0',
  `FM_cooldown` int(11) NOT NULL DEFAULT '0',
  `harvest_delay` int(11) NOT NULL DEFAULT '5',
  `harvest_time` int(11) NOT NULL DEFAULT '0',
  `jackpot` int(11) NOT NULL DEFAULT '5',
  `vcount` int(11) NOT NULL DEFAULT '0',
  `premium_reward_extraction_days` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_storing_days` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_speed_days` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_stage_days` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_bonus_days` int(11) unsigned NOT NULL DEFAULT '0',
  `prem_speed_button_days` int(11) unsigned NOT NULL DEFAULT '0',
  `prem_expedition_days` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_expedition_days` int(11) unsigned NOT NULL DEFAULT '0',
  `prem_speed_expiditeon_days` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_experience_days` int(11) unsigned NOT NULL DEFAULT '0',
  `prem_batle_leveling_days` int(11) unsigned NOT NULL DEFAULT '0',
  `premium_reward_bank_days` int(11) unsigned NOT NULL DEFAULT '0',
  `prem_prod_from_colly_days` int(11) unsigned NOT NULL DEFAULT '0',
  `prem_moon_creat_days` int(11) unsigned NOT NULL DEFAULT '0',
  `prem_fuel_consumption_days` int(11) unsigned NOT NULL DEFAULT '0',
  `multi_spotted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `multi_spotted_aproval` int(11) unsigned NOT NULL DEFAULT '0',
  `prem_advanced_battlesim` int(11) unsigned NOT NULL DEFAULT '0',
  `prem_advanced_battlesim_days` int(11) unsigned NOT NULL DEFAULT '0',
  `message_ban_time` int(11) unsigned NOT NULL DEFAULT '0',
  `kolvo` int(11) unsigned NOT NULL DEFAULT '0',
  `extra_palnet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tot_ref` int(11) unsigned NOT NULL DEFAULT '0',
  `fblink` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `age` tinyint(3) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `playstyle` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `climate_change` int(11) unsigned NOT NULL DEFAULT '0',
  `climate_change_name` varchar(255) DEFAULT NULL,
  `achievement_fleet_1` double(50,0) unsigned NOT NULL DEFAULT '200000',
  `achievement_fleet_2` double(50,0) unsigned NOT NULL DEFAULT '200000',
  `achievement_fleet_3` double(50,0) unsigned NOT NULL DEFAULT '200000',
  `achievement_fleet_4` double(50,0) unsigned NOT NULL DEFAULT '4000',
  `achievement_fleet_5` double(50,0) unsigned NOT NULL DEFAULT '20000',
  `achievement_fleet_6` double(50,0) unsigned NOT NULL DEFAULT '100000',
  `achievement_fleet_7` double(50,0) unsigned NOT NULL DEFAULT '5000',
  `achievement_fleet_8` double(50,0) unsigned NOT NULL DEFAULT '1750',
  `achievement_fleet_9` double(50,0) unsigned NOT NULL DEFAULT '750',
  `achievement_fleet_10` double(50,0) unsigned NOT NULL DEFAULT '1000',
  `ach_points_total` int(11) unsigned NOT NULL DEFAULT '0',
  `achievement_def_1` double(50,0) unsigned NOT NULL DEFAULT '200000',
  `achievement_def_2` double(50,0) unsigned NOT NULL DEFAULT '150000',
  `achievement_def_3` double(50,0) unsigned NOT NULL DEFAULT '100000',
  `achievement_def_4` double(50,0) unsigned NOT NULL DEFAULT '125000',
  `achievement_def_5` double(50,0) unsigned NOT NULL DEFAULT '75000',
  `achievement_def_6` double(50,0) unsigned NOT NULL DEFAULT '125000',
  `achievement_def_7` double(50,0) unsigned NOT NULL DEFAULT '15000',
  `achievement_def_8` double(50,0) unsigned NOT NULL DEFAULT '50000',
  `achievement_def_9` double(50,0) unsigned NOT NULL DEFAULT '10000',
  `achievement_def_10` double(50,0) unsigned NOT NULL DEFAULT '5000',
  `achievement_def_11` double(50,0) unsigned NOT NULL DEFAULT '20000',
  `achievement_def_12` double(50,0) unsigned NOT NULL DEFAULT '15000',
  `achievement_def_13` double(50,0) unsigned NOT NULL DEFAULT '35000',
  `daily_produ` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `authlevel` (`authlevel`),
  KEY `ref_bonus` (`ref_bonus`),
  KEY `universe` (`universe`,`username`,`password`,`onlinetime`,`authlevel`),
  KEY `ally_id` (`ally_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=473 ;

--
-- Contenu de la table `uni1_users`
--

INSERT INTO `uni1_users` (`id`, `username`, `password`, `email`, `email_2`, `lang`, `authattack`, `authlevel`, `rights`, `id_planet`, `universe`, `galaxy`, `system`, `planet`, `darkmatter`, `antimatter`, `stardust`, `user_lastip`, `ip_at_reg`, `register_time`, `onlinetime`, `dpath`, `timezone`, `planet_sort`, `planet_sort_order`, `spio_anz`, `settings_fleetactions`, `settings_esp`, `settings_wri`, `settings_bud`, `settings_mis`, `settings_blockPM`, `urlaubs_modus`, `urlaubs_until`, `db_deaktjava`, `b_tech_planet`, `b_tech`, `b_tech_id`, `b_tech_queue`, `spy_tech`, `computer_tech`, `military_tech`, `defence_tech`, `shield_tech`, `energy_tech`, `hyperspace_tech`, `combustion_tech`, `impulse_motor_tech`, `hyperspace_motor_tech`, `laser_tech`, `ionic_tech`, `buster_tech`, `intergalactic_tech`, `expedition_tech`, `brotherhood`, `metal_proc_tech`, `crystal_proc_tech`, `deuterium_proc_tech`, `graviton_tech`, `ally_id`, `ally_register_time`, `ally_rank_id`, `rpg_geologue`, `rpg_amiral`, `rpg_ingenieur`, `rpg_technocrate`, `rpg_espion`, `rpg_constructeur`, `rpg_scientifique`, `rpg_commandant`, `rpg_stockeur`, `rpg_defenseur`, `rpg_destructeur`, `rpg_general`, `rpg_bunker`, `rpg_raideur`, `rpg_empereur`, `bana`, `banaday`, `hof`, `spyMessagesMode`, `wons`, `loos`, `draws`, `kbmetal`, `kbcrystal`, `lostunits`, `desunits`, `uctime`, `setmail`, `dm_attack`, `dm_defensive`, `dm_buildtime`, `dm_researchtime`, `dm_resource`, `dm_energie`, `dm_fleettime`, `ref_id`, `ref_bonus`, `inactive_mail`, `lp_points`, `academy_p`, `experience_peace`, `bonus_timer`, `experience_peace_max`, `experience_peace_level`, `peace_reward_slots`, `peace_reward_fields`, `peace_reward_golf`, `experience_combat`, `experience_combat_max`, `combat_reward_deut`, `combat_reward_expe`, `combat_reward_bonus`, `combat_reward_collider`, `experience_combat_level`, `premium_reward_extraction`, `premium_reward_storing`, `premium_reward_speed`, `premium_reward_stage`, `premium_reward_bonus`, `premium_reward_moon`, `premium_reward_expedition`, `premium_reward_experience`, `premium_reward_bank`, `prem_speed_button`, `prem_expedition`, `prem_speed_expiditeon`, `prem_batle_leveling`, `prem_prod_from_colly`, `prem_moon_creat`, `prem_fuel_consumption`, `premium_reward_days`, `alliance_storage_deposit`, `alliance_storage_widraw`, `achievement_peace_level`, `achievement_combat_level`, `achievements_attack`, `achievements_hostal`, `achievements_expedition`, `achievements_level_attack`, `achievements_level_hostal`, `achievements_level_expe`, `achievement_build_metal`, `achievement_build_crystal`, `achievement_build_deuterium`, `achievement_build_light`, `achievement_build_medium`, `achievement_build_heavy`, `achievement_build_university`, `achievement_build_moon`, `achievement_build_phalanx`, `achievement_build_terraformer`, `achievement_defense_easy`, `achievement_defense_simple`, `achievement_defense_average`, `achievement_defense_high`, `achievement_defense_heavy`, `achievement_defense_massive`, `achievement_defense_imperial`, `achievements_misc_fighter`, `achievements_misc_destructor`, `moon_destruction`, `achievements_misc_moons`, `moon_creation`, `achievements_misc_hostal`, `hostal_count`, `achievements_misc_expe`, `expedition_count`, `achievements_misc_seeker`, `found_dm`, `achievements_misc_upgrades`, `achievements_misc_integrator`, `achievements_fleets_small`, `achievements_fleets_support`, `achievements_fleets_battle`, `achievements_fleets_destruction`, `achievements_fleets_seige`, `achievements_fleets_heavy`, `achievements_fleets_imperial`, `achievements_tech_spy`, `achievements_tech_hacker`, `achievements_tech_invincible`, `achievements_tech_expedition`, `achievements_tech_graviton`, `achievements_tech_power`, `achievements_tech_energy`, `achievements_tech_brotherhood`, `achievements_tech_speed`, `achievements_tech_geologist`, `academy_1101`, `academy_1102`, `academy_1103`, `academy_1104`, `academy_1105`, `academy_1106`, `academy_1107`, `academy_1108`, `academy_1109`, `academy_1110`, `academy_1111`, `academy_1113`, `academy_1112`, `academy_1201`, `academy_1202`, `academy_1203`, `academy_1204`, `academy_1208`, `academy_1209`, `academy_1210`, `academy_1205`, `academy_1207`, `academy_1206`, `academy_1301`, `academy_1304`, `academy_1302`, `academy_1310`, `academy_1305`, `academy_1303`, `academy_1308`, `academy_1311`, `academy_1312`, `academy_1313`, `academy_1314`, `academy_1306`, `academy_1307`, `academy_1309`, `instant_fleet`, `instant_defense`, `peacefull_last_update`, `multi_report`, `message_ban`, `message_trusted`, `v1`, `v2`, `v3`, `training`, `training_step`, `frisbee`, `alien`, `rocket`, `cosmonaute`, `facebook_liked`, `light_armor_upgrade`, `average_armor_upgrade`, `heavy_armor_upgrade`, `light_shield_upgrade`, `average_shield_upgrade`, `heavy_shield_upgrade`, `jet_engine_upgrade`, `kick_motor_upgrade`, `hyperspace_drive_upgrade`, `upgrade1_percent`, `upgrade2_percent`, `upgrade3_percent`, `upgrade4_percent`, `upgrade5_percent`, `upgrade6_percent`, `upgrade7_percent`, `upgrade8_percent`, `upgrade9_percent`, `upgrade1_level`, `upgrade2_level`, `upgrade3_level`, `upgrade4_level`, `upgrade5_level`, `upgrade6_level`, `upgrade7_level`, `upgrade8_level`, `upgrade9_level`, `alarm_volume`, `planet_cloak`, `planet_cloak_countdown`, `immunity_until`, `next_immunity`, `sdays_b`, `sdays_time`, `settings_planetmenu`, `PaySafe`, `FM_cooldown`, `harvest_delay`, `harvest_time`, `jackpot`, `vcount`, `premium_reward_extraction_days`, `premium_reward_storing_days`, `premium_reward_speed_days`, `premium_reward_stage_days`, `premium_reward_bonus_days`, `prem_speed_button_days`, `prem_expedition_days`, `premium_reward_expedition_days`, `prem_speed_expiditeon_days`, `premium_reward_experience_days`, `prem_batle_leveling_days`, `premium_reward_bank_days`, `prem_prod_from_colly_days`, `prem_moon_creat_days`, `prem_fuel_consumption_days`, `multi_spotted`, `multi_spotted_aproval`, `prem_advanced_battlesim`, `prem_advanced_battlesim_days`, `message_ban_time`, `kolvo`, `extra_palnet`, `tot_ref`, `fblink`, `firstname`, `age`, `country`, `playstyle`, `city`, `skype`, `climate_change`, `climate_change_name`, `achievement_fleet_1`, `achievement_fleet_2`, `achievement_fleet_3`, `achievement_fleet_4`, `achievement_fleet_5`, `achievement_fleet_6`, `achievement_fleet_7`, `achievement_fleet_8`, `achievement_fleet_9`, `achievement_fleet_10`, `ach_points_total`, `achievement_def_1`, `achievement_def_2`, `achievement_def_3`, `achievement_def_4`, `achievement_def_5`, `achievement_def_6`, `achievement_def_7`, `achievement_def_8`, `achievement_def_9`, `achievement_def_10`, `achievement_def_11`, `achievement_def_12`, `achievement_def_13`, `daily_produ`) VALUES
(1, 'admin', '227ce75a31be825b98ebbe82089655e3', 'admin@admin.com', 'admin@admin.com', 'en', 3, 3, NULL, 1, 1, 1, 1, 1, 22935356, 112428, 17, '81.164.22.254', '81.164.103.19', 1424625964, 1428436528, 'gow', 'Europe/Brussels', 0, 0, 1, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, '', 9, 10, 0, 6, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 10, 20, 1426196463, 0, 29, 8, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 5, 12, 1, 45350019631400, 28407267752400, 1837843248000, 244019785978000, 0, 0, 1425825466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 286, 113, 1428451026, 15920, 14, 1, 0, 2, 16944, 20260, 1, 0, 0, 0, 3, 50, 250, 30, 0, 4, 0, 0, 50, 2, 50, 0, 0, 22, 50, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 20, 20, 20, 0, 0, 0, 2, 2, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 1, 0, 2, 0, 7, 7, 3, 3, 7, 3, 10, 0, 1, 0, 0, 0, 16, 0, 5, 3, 5, 1, 2, 0, 0, 0, 0, 0, 0, 16, 16, 16, 16, 1, 16, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1428436528, 0, 0, 0, 1427868719, 0, 1427868711, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1427922333, 1428527133, 3, 1428420733, 0, 0, 0, 1425500574, 5, 5, 0, 1426098127, 1426098296, 1424908226, 1424908226, 1426098341, 1426184852, 0, 0, 0, 1426098068, 1428966590, 1426098059, 1426098050, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 'jeremybaukens', 'Jeremy', 24, 'Belgium', 'Miner', 'Bruxelles', '', 7, 'dschjungelplanet02', 819200000, 400000, 200000, 16000, 80000, 100000, 5000, 224000, 96000, 128000, 0, 200000, 150000, 100000, 125000, 75000, 125000, 15000, 50000, 10000, 5000, 20000, 15000, 35000, 0);

-- --------------------------------------------------------

--
-- Structure de la table `uni1_users_to_acs`
--

CREATE TABLE IF NOT EXISTS `uni1_users_to_acs` (
  `userID` int(10) unsigned NOT NULL,
  `acsID` int(10) unsigned NOT NULL,
  KEY `userID` (`userID`),
  KEY `acsID` (`acsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_users_to_extauth`
--

CREATE TABLE IF NOT EXISTS `uni1_users_to_extauth` (
  `id` int(11) NOT NULL,
  `account` varchar(64) NOT NULL,
  `mode` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `account` (`account`,`mode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_users_to_topkb`
--

CREATE TABLE IF NOT EXISTS `uni1_users_to_topkb` (
  `rid` varchar(32) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `role` tinyint(1) NOT NULL,
  KEY `rid` (`rid`,`role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_users_valid`
--

CREATE TABLE IF NOT EXISTS `uni1_users_valid` (
  `validationID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(64) NOT NULL,
  `validationKey` varchar(32) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(64) NOT NULL,
  `date` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `language` varchar(3) NOT NULL,
  `universe` tinyint(3) unsigned NOT NULL,
  `referralID` int(11) DEFAULT NULL,
  `externalAuthUID` varchar(128) DEFAULT NULL,
  `externalAuthMethod` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`validationID`,`validationKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_vars`
--

CREATE TABLE IF NOT EXISTS `uni1_vars` (
  `elementID` smallint(5) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `class` int(11) NOT NULL,
  `onPlanetType` set('1','3','4') NOT NULL,
  `onePerPlanet` tinyint(4) NOT NULL,
  `factor` float(4,2) NOT NULL,
  `maxLevel` int(11) DEFAULT NULL,
  `cost901` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cost902` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cost903` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cost911` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cost921` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cost922` double(50,0) unsigned NOT NULL DEFAULT '0',
  `consumption1` int(11) unsigned DEFAULT NULL,
  `consumption2` int(11) unsigned DEFAULT NULL,
  `speedTech` int(11) unsigned DEFAULT NULL,
  `speed1` int(11) unsigned DEFAULT NULL,
  `speed2` int(11) unsigned DEFAULT NULL,
  `speed2Tech` int(10) unsigned DEFAULT NULL,
  `speed2onLevel` int(10) unsigned DEFAULT NULL,
  `speed3Tech` int(10) unsigned DEFAULT NULL,
  `speed3onLevel` int(10) unsigned DEFAULT NULL,
  `capacity` int(11) unsigned DEFAULT NULL,
  `attack` int(10) unsigned DEFAULT NULL,
  `defend` int(10) unsigned DEFAULT NULL,
  `timeBonus` int(11) unsigned DEFAULT NULL,
  `bonusAttack` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusDefensive` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusShield` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusBuildTime` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusResearchTime` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusShipTime` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusDefensiveTime` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusResource` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusEnergy` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusResourceStorage` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusShipStorage` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusFlyTime` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusFleetSlots` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusPlanets` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusSpyPower` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusExpedition` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusGateCoolTime` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusMoreFound` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusAttackUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusDefensiveUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusShieldUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusBuildTimeUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusResearchTimeUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusShipTimeUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusDefensiveTimeUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusResourceUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusEnergyUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusResourceStorageUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusShipStorageUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusFlyTimeUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusFleetSlotsUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusPlanetsUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusSpyPowerUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusExpeditionUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusGateCoolTimeUnit` smallint(1) NOT NULL DEFAULT '0',
  `bonusMoreFoundUnit` smallint(1) NOT NULL DEFAULT '0',
  `speedFleetFactor` float(4,2) DEFAULT NULL,
  `production901` varchar(1000) DEFAULT NULL,
  `production902` varchar(1000) DEFAULT NULL,
  `production903` varchar(1000) DEFAULT NULL,
  `production911` varchar(500) DEFAULT NULL,
  `production921` varchar(500) DEFAULT NULL,
  `storage901` varchar(255) DEFAULT NULL,
  `storage902` varchar(255) DEFAULT NULL,
  `storage903` varchar(255) DEFAULT NULL,
  `dmprice` int(11) unsigned NOT NULL DEFAULT '0',
  `type_gun` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`elementID`),
  KEY `class` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `uni1_vars`
--

INSERT INTO `uni1_vars` (`elementID`, `name`, `class`, `onPlanetType`, `onePerPlanet`, `factor`, `maxLevel`, `cost901`, `cost902`, `cost903`, `cost911`, `cost921`, `cost922`, `consumption1`, `consumption2`, `speedTech`, `speed1`, `speed2`, `speed2Tech`, `speed2onLevel`, `speed3Tech`, `speed3onLevel`, `capacity`, `attack`, `defend`, `timeBonus`, `bonusAttack`, `bonusDefensive`, `bonusShield`, `bonusBuildTime`, `bonusResearchTime`, `bonusShipTime`, `bonusDefensiveTime`, `bonusResource`, `bonusEnergy`, `bonusResourceStorage`, `bonusShipStorage`, `bonusFlyTime`, `bonusFleetSlots`, `bonusPlanets`, `bonusSpyPower`, `bonusExpedition`, `bonusGateCoolTime`, `bonusMoreFound`, `bonusAttackUnit`, `bonusDefensiveUnit`, `bonusShieldUnit`, `bonusBuildTimeUnit`, `bonusResearchTimeUnit`, `bonusShipTimeUnit`, `bonusDefensiveTimeUnit`, `bonusResourceUnit`, `bonusEnergyUnit`, `bonusResourceStorageUnit`, `bonusShipStorageUnit`, `bonusFlyTimeUnit`, `bonusFleetSlotsUnit`, `bonusPlanetsUnit`, `bonusSpyPowerUnit`, `bonusExpeditionUnit`, `bonusGateCoolTimeUnit`, `bonusMoreFoundUnit`, `speedFleetFactor`, `production901`, `production902`, `production903`, `production911`, `production921`, `storage901`, `storage902`, `storage903`, `dmprice`, `type_gun`) VALUES
(1, 'metal_mine', 0, '1', 0, 1.50, 255, 60, 15, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '(((30 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) + (((30 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $peacefull_resource) + (((30 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $premium_resource) + (((30 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $alliance_prod)  + (((30 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $academy_mines) + (((30 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $daily_prod_bonus))', NULL, NULL, '-(10 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)', NULL, NULL, NULL, NULL, 0, NULL),
(2, 'crystal_mine', 0, '1', 0, 1.50, 255, 48, 24, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '(((20 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) + (((20 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $peacefull_resource) + (((20 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $premium_resource) + (((20 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $alliance_prod) + (((20 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $academy_mines) + (((20 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $daily_prod_bonus))', NULL, '-(10 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)', NULL, NULL, NULL, NULL, 0, NULL),
(3, 'deuterium_sintetizer', 0, '1', 0, 1.50, 255, 225, 75, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '((10 * $BuildLevel * pow((1.1), $BuildLevel) * (-0.002 * $BuildTemp + 1.28) * (0.1 * $BuildLevelFactor)) + ((10 * $BuildLevel * pow((1.1), $BuildLevel) * (-0.002 * $BuildTemp + 1.28) * (0.1 * $BuildLevelFactor)) / 100 * $peacefull_resource) + ((10 * $BuildLevel * pow((1.1), $BuildLevel) * (-0.002 * $BuildTemp + 1.28) * (0.1 * $BuildLevelFactor)) / 100 * $premium_resource) + ((10 * $BuildLevel * pow((1.1), $BuildLevel) * (-0.002 * $BuildTemp + 1.28) * (0.1 * $BuildLevelFactor)) / 100 * $alliance_prod) + ((10 * $BuildLevel * pow((1.1), $BuildLevel) * (-0.002 * $BuildTemp + 1.28) * (0.1 * $BuildLevelFactor)) / 100 * $academy_mines) + ((10 * $BuildLevel * pow((1.1), $BuildLevel) * (-0.002 * $BuildTemp + 1.28) * (0.1 * $BuildLevelFactor)) / 100 * $daily_prod_bonus))', '- (30 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)', NULL, NULL, NULL, NULL, 0, NULL),
(4, 'solar_plant', 0, '1', 0, 1.50, 255, 75, 30, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '(((20 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) + (((20 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $peacefull_resource) + (((20 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $premium_resource) + (((20 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $alliance_prod) + (((20 * $BuildLevel * pow((1.1), $BuildLevel)) * (0.1 * $BuildLevelFactor)) / 100 * $academy_energy))', NULL, NULL, NULL, NULL, 0, NULL),
(6, 'university', 0, '1', 0, 2.00, 255, 100000000, 50000000, 25000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(12, 'fusion_plant', 0, '1', 0, 2.00, 255, 900, 360, 180, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '- (10 * $BuildLevel * pow(1.1,$BuildLevel) * (0.1 * $BuildLevelFactor))', '(((30 * $BuildLevel * pow((1.05 + $BuildEnergy * 0.01), $BuildLevel)) * (0.1 * $BuildLevelFactor)) + (((30 * $BuildLevel * pow((1.05 + $BuildEnergy * 0.01), $BuildLevel)) * (0.1 * $BuildLevelFactor)) /100 * $academy_fusion))', NULL, NULL, NULL, NULL, 0, NULL),
(14, 'robot_factory', 0, '1,3,4', 0, 2.00, 255, 400, 120, 200, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(15, 'nano_factory', 0, '1,3', 0, 2.00, 255, 1000000, 500000, 100000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(21, 'hangar', 0, '1,3', 0, 2.00, 255, 400, 200, 100, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(22, 'metal_store', 0, '1,3', 0, 2.00, 255, 2000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '((floor(2.5 * pow(1.8331954764, $BuildLevel)) * 5000) + ((floor(2.5 * pow(1.8331954764, $BuildLevel)) * 5000) / 100 * $premium_storage) + ((floor(2.5 * pow(1.8331954764, $BuildLevel)) * 5000) / 100 * $academy_storage))', NULL, NULL, 0, NULL),
(23, 'crystal_store', 0, '1,3', 0, 2.00, 255, 2000, 1000, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '((floor(2.5 * pow(1.8331954764, $BuildLevel)) * 5000) + ((floor(2.5 * pow(1.8331954764, $BuildLevel)) * 5000) / 100 * $premium_storage) + ((floor(2.5 * pow(1.8331954764, $BuildLevel)) * 5000) / 100 * $academy_storage))', NULL, 0, NULL),
(24, 'deuterium_store', 0, '1,3', 0, 2.00, 255, 2000, 2000, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '((floor(2.5 * pow(1.8331954764, $BuildLevel)) * 5000) + ((floor(2.5 * pow(1.8331954764, $BuildLevel)) * 5000) / 100 * $premium_storage) + ((floor(2.5 * pow(1.8331954764, $BuildLevel)) * 5000) / 100 * $academy_storage))', 0, NULL),
(31, 'laboratory', 0, '1', 0, 2.00, 255, 200, 400, 200, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(33, 'terraformer', 0, '1', 0, 2.00, 255, 0, 50000, 100000, 1000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(34, 'ally_deposit', 0, '1', 0, 2.00, 255, 20000, 40000, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(41, 'mondbasis', 0, '3', 0, 2.00, 255, 20000, 40000, 20000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(42, 'phalanx', 0, '3', 0, 2.00, 255, 20000, 40000, 20000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(43, 'sprungtor', 0, '3', 0, 2.00, 255, 2000000, 4000000, 2000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(44, 'silo', 0, '1', 0, 2.00, 255, 20000, 20000, 1000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(106, 'spy_tech', 100, '1,3', 0, 2.00, 255, 200, 1000, 200, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(108, 'computer_tech', 100, '1,3', 0, 2.00, 255, 0, 400, 600, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(109, 'military_tech', 100, '1,3', 0, 2.00, 255, 800, 200, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.01, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(110, 'defence_tech', 100, '1,3', 0, 2.00, 255, 200, 600, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.01, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(111, 'shield_tech', 100, '1,3', 0, 2.00, 255, 1000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.01, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(113, 'energy_tech', 100, '1,3', 0, 2.00, 255, 0, 800, 400, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(114, 'hyperspace_tech', 100, '1,3', 0, 2.00, 255, 0, 4000, 2000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(115, 'combustion_tech', 100, '1,3', 0, 2.00, 255, 400, 0, 600, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(117, 'impulse_motor_tech', 100, '1,3', 0, 2.00, 255, 2000, 4000, 600, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(118, 'hyperspace_motor_tech', 100, '1,3', 0, 2.00, 255, 10000, 20000, 6000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(120, 'laser_tech', 100, '1,3', 0, 2.00, 255, 200, 100, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(121, 'ionic_tech', 100, '1,3', 0, 2.00, 255, 1000, 300, 100, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(122, 'buster_tech', 100, '1,3', 0, 2.00, 255, 2000, 4000, 1000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(123, 'intergalactic_tech', 100, '1,3', 0, 2.00, 255, 240000, 400000, 160000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(124, 'expedition_tech', 100, '1,3', 0, 1.75, 255, 4000, 8000, 4000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(131, 'metal_proc_tech', 100, '1,3', 0, 2.00, 255, 750, 500, 250, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(132, 'crystal_proc_tech', 100, '1,3', 0, 2.00, 255, 1000, 750, 500, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(133, 'deuterium_proc_tech', 100, '1,3', 0, 2.00, 255, 1250, 1000, 750, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(199, 'graviton_tech', 100, '1,3', 0, 3.00, 10, 0, 0, 0, 300000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(202, 'small_ship_cargo', 200, '1,3', 0, 1.00, NULL, 2000, 2000, 0, 0, 0, 0, 10, 20, 4, 5000, 10000, NULL, NULL, NULL, NULL, 5000, 7, 20, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(203, 'big_ship_cargo', 200, '1,3', 0, 1.00, NULL, 6000, 6000, 0, 0, 0, 0, 50, 50, 1, 7500, 7500, NULL, NULL, NULL, NULL, 25000, 7, 50, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(204, 'light_hunter', 200, '1,3', 0, 1.00, NULL, 3000, 1000, 0, 0, 0, 0, 20, 20, 1, 12500, 12500, NULL, NULL, NULL, NULL, 50, 50, 10, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(205, 'heavy_hunter', 200, '1,3', 0, 1.00, NULL, 8000, 3000, 0, 0, 0, 0, 75, 75, 2, 10000, 15000, NULL, NULL, NULL, NULL, 100, 150, 25, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(206, 'crusher', 200, '1,3', 0, 1.00, NULL, 15000, 9500, 2000, 0, 0, 0, 300, 300, 2, 15000, 15000, NULL, NULL, NULL, NULL, 800, 400, 50, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL),
(207, 'battle_ship', 200, '1,3', 0, 1.00, NULL, 41000, 17000, 0, 0, 0, 0, 250, 250, 3, 10000, 10000, NULL, NULL, NULL, NULL, 1500, 1000, 200, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL),
(208, 'colonizer', 200, '1,3', 0, 1.00, NULL, 10000, 20000, 10000, 0, 0, 0, 1000, 1000, 2, 2500, 2500, NULL, NULL, NULL, NULL, 7500, 50, 100, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL),
(209, 'recycler', 200, '1,3', 0, 1.00, NULL, 10000, 6000, 2000, 0, 0, 0, 300, 300, 1, 2000, 2000, NULL, NULL, NULL, NULL, 20000, 1, 10, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(210, 'spy_sonde', 200, '1,3', 0, 1.00, NULL, 0, 1000, 0, 0, 0, 0, 1, 1, 1, 100000000, 100000000, NULL, NULL, NULL, NULL, 15, 1, 1, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(211, 'bomber_ship', 200, '1,3', 0, 1.00, NULL, 70000, 45000, 5000, 0, 0, 0, 1000, 1000, 5, 4000, 5000, NULL, NULL, NULL, NULL, 500, 1000, 500, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL),
(212, 'solar_satelit', 200, '1,3', 0, 1.00, NULL, 0, 2000, 500, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '(((($BuildTemp + 160) / 6) * (0.1 * $BuildLevelFactor) * $BuildLevel) + (((($BuildTemp + 160) / 6) * (0.1 * $BuildLevelFactor) * $BuildLevel) / 100 * $academy_solar))', NULL, NULL, NULL, NULL, 1, NULL),
(213, 'destructor', 200, '1,3', 0, 1.00, NULL, 60000, 50000, 15000, 0, 0, 0, 1000, 1000, 3, 5000, 5000, NULL, NULL, NULL, NULL, 2000, 2000, 500, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL),
(214, 'dearth_star', 200, '1,3', 0, 1.00, NULL, 6000000, 3500000, 1000000, 0, 0, 0, 1, 1, 3, 10, 10, NULL, NULL, NULL, NULL, 1000000, 200000, 50000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 425, NULL),
(215, 'battleship', 200, '1,3', 0, 1.00, NULL, 50000, 40000, 10000, 0, 0, 0, 250, 250, 3, 10000, 10000, NULL, NULL, NULL, NULL, 750, 700, 400, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL),
(216, 'lune_noir', 200, '1,3', 0, 1.00, NULL, 8000000, 4000000, 500000, 0, 0, 0, 1250, 1250, 3, 3000, 3000, NULL, NULL, NULL, NULL, 15000000, 150000, 70000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 450, NULL),
(217, 'ev_transporter', 200, '1,3', 0, 1.00, NULL, 35000, 20000, 1500, 0, 0, 0, 90, 90, 3, 6000, 6000, NULL, NULL, NULL, NULL, 400000000, 50, 120, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL),
(218, 'star_crasher', 200, '1,3', 0, 1.00, NULL, 305000000, 155000000, 40000000, 0, 0, 0, 10000, 10000, 3, 600, 600, NULL, NULL, NULL, NULL, 50000000, 35000000, 2000000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19375, NULL),
(219, 'giga_recykler', 200, '1,3', 0, 1.00, NULL, 1000000, 600000, 200000, 0, 0, 0, 300, 300, 3, 7500, 7500, NULL, NULL, NULL, NULL, 200000000, 1, 1000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL),
(220, 'dm_ship', 200, '1,3', 0, 1.00, NULL, 6000000, 7000000, 3000000, 0, 0, 0, 100000, 100000, 3, 100, 100, NULL, NULL, NULL, NULL, 6000000, 5, 50000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(401, 'misil_launcher', 400, '1,3', 0, 1.00, NULL, 2000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 80, 20, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(402, 'small_laser', 400, '1,3', 0, 1.00, NULL, 1500, 500, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 100, 25, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(403, 'big_laser', 400, '1,3', 0, 1.00, NULL, 6000, 2000, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 250, 100, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(404, 'gauss_canyon', 400, '1,3', 0, 1.00, NULL, 20000, 15000, 2000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1100, 200, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL),
(405, 'ionic_canyon', 400, '1,3', 0, 1.00, NULL, 2000, 6000, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 150, 500, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(406, 'buster_canyon', 400, '1,3', 0, 1.00, NULL, 50000, 50000, 30000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3000, 300, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL),
(407, 'small_protection_shield', 400, '1,3', 0, 1.00, NULL, 1000000, 1000000, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(408, 'big_protection_shield', 400, '1,3', 0, 1.00, NULL, 5000000, 5000000, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 10000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(409, 'planet_protector', 400, '1,3', 0, 1.00, NULL, 10000000, 5000000, 2500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1000000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(410, 'graviton_canyon', 400, '1,3', 0, 1.00, NULL, 15000000, 15000000, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 500000, 80000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1125, NULL),
(411, 'orbital_station', 400, '1,3', 0, 1.00, NULL, 5000000000, 2000000000, 500000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 400000000, 200000000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(502, 'interceptor_misil', 500, '1,3', 0, 1.00, NULL, 8000, 0, 2000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(503, 'interplanetary_misil', 500, '1,3', 0, 1.00, NULL, 12500, 2500, 10000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12000, 1, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(601, 'rpg_geologue', 600, '1,3', 0, 1.15, 30, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.02, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(602, 'rpg_amiral', 600, '1,3', 0, 1.20, 20, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.01, 0.01, 0.01, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(603, 'rpg_ingenieur', 600, '1,3', 0, 1.50, 10, 0, 0, 0, 0, 1500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(604, 'rpg_technocrate', 600, '1,3', 0, 1.50, 10, 0, 0, 0, 0, 1500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, -0.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(605, 'rpg_constructeur', 600, '1,3', 0, 2.00, 3, 0, 0, 0, 0, 3000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, -0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(606, 'rpg_scientifique', 600, '1,3', 0, 2.00, 3, 0, 0, 0, 0, 3000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, -0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(607, 'rpg_stockeur', 600, '1,3', 0, 2.00, 2, 0, 0, 0, 0, 5000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.25, 0.25, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(608, 'rpg_defenseur', 600, '1,3', 0, 2.00, 2, 0, 0, 0, 0, 5000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -0.25, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(609, 'rpg_bunker', 600, '1,3', 0, 1.00, 1, 0, 0, 0, 0, 10000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(610, 'rpg_espion', 600, '1,3', 0, 2.00, 2, 0, 0, 0, 0, 5000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.01, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(611, 'rpg_commandant', 600, '1,3', 0, 2.00, 3, 0, 0, 0, 0, 3000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(612, 'rpg_destructeur', 600, '1,3', 0, 1.00, 1, 0, 0, 0, 0, 15000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(613, 'rpg_general', 600, '1,3', 0, 2.00, 3, 0, 0, 0, 0, 3000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -0.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(614, 'rpg_raideur', 600, '1,3', 0, 1.00, 1, 0, 0, 0, 0, 10000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(615, 'rpg_empereur', 600, '1,3', 0, 1.00, 1, 0, 0, 0, 0, 10000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(701, 'dm_attack', 700, '1,3', 0, 1.00, NULL, 0, 0, 0, 0, 15000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.10, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(702, 'dm_defensive', 700, '1,3', 0, 1.00, NULL, 0, 0, 0, 0, 10000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.00, 0.00, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(703, 'dm_buildtime', 700, '1,3', 0, 1.00, NULL, 0, 0, 0, 0, 7500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.00, 0.00, 0.00, -0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(704, 'dm_resource', 700, '1,3', 0, 1.00, NULL, 0, 0, 0, 0, 6500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(705, 'dm_energie', 700, '1,3', 0, 1.00, NULL, 0, 0, 0, 0, 6500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(706, 'dm_researchtime', 700, '1,3', 0, 1.00, NULL, 0, 0, 0, 0, 4500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.00, 0.00, 0.00, 0.00, -0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(707, 'dm_fleettime', 700, '1,3', 0, 1.00, NULL, 0, 0, 0, 0, 12000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(221, 'bs_class_oneil', 200, '1,3', 0, 1.00, NULL, 300000000, 188000000, 52000000, 0, 0, 0, 20000, 20000, 3, 1400, 1400, NULL, NULL, NULL, NULL, 1000000, 4800000, 1750000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37500, NULL),
(222, 'flying_death', 200, '1,3', 0, 1.00, NULL, 220000000, 110000000, 30000000, 0, 0, 0, 10000, 10000, 3, 1600, 1600, NULL, NULL, NULL, NULL, 5000000, 4000000, 1500000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14000, NULL),
(223, 'Scrappy', 200, '1,3', 0, 1.00, NULL, 2500000, 2500000, 625000, 0, 50, 0, 1, 1, 3, 1, 1, NULL, NULL, NULL, NULL, 1, 50, 50, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL),
(224, 'М19', 200, '1,3', 0, 1.00, NULL, 75000, 65000, 10000, 0, 0, 0, 300, 300, 3, 7000, 7000, NULL, NULL, NULL, NULL, 10000, 10000, 20000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL),
(225, 'galleon', 200, '1,3', 0, 1.00, NULL, 900000, 700000, 200000, 0, 0, 0, 950, 950, 3, 3500, 3500, NULL, NULL, NULL, NULL, 500000, 20000, 8000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78, NULL),
(226, 'destroyer', 200, '1,3', 0, 1.00, NULL, 3000000, 2000000, 200000, 0, 0, 0, 1150, 1150, 3, 3000, 3000, NULL, NULL, NULL, NULL, 1000000, 65000, 23000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 195, NULL),
(227, 'frigate', 200, '1,3', 0, 1.00, NULL, 30000000, 10000000, 2000000, 0, 0, 0, 3700, 3700, 3, 2500, 2500, NULL, NULL, NULL, NULL, 1500000, 470000, 190000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1450, NULL),
(228, 'black_wanderer', 200, '1,3', 0, 1.00, NULL, 80000000, 40000000, 7000000, 0, 0, 0, 5800, 5800, 3, 2200, 2200, NULL, NULL, NULL, NULL, 2000000, 1569360, 500000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4700, NULL),
(412, 'lepton_gun', 400, '1,3', 0, 1.00, NULL, 10000000, 5000000, 1500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 400000, 500000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 650, NULL),
(413, 'proton_gun', 400, '1,3', 0, 1.00, NULL, 25000000, 18000000, 3000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 900000, 1000000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1825, NULL),
(414, 'canyon', 400, '1,3', 0, 1.00, NULL, 80000000, 60000000, 20000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2500000, 5000000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7000, NULL),
(415, 'quantum_gun', 400, '1,3', 0, 1.00, NULL, 60000000, 40000000, 10500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000000, 15000000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(416, 'hydrogen_gun', 400, '1,3', 0, 1.00, NULL, 200000, 150000, 50000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 7000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL),
(417, 'dora_gun', 400, '1,3', 0, 1.00, NULL, 350000, 150000, 75000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 7000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL),
(418, 'photon_cannon', 400, '1,3', 0, 1.00, NULL, 2500000, 1250000, 350000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70000, 60000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, NULL),
(419, 'particle_emitter', 400, '1,3', 0, 1.00, NULL, 45000000, 30000000, 8500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1510000, 1450000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3475, NULL),
(125, 'brotherhood', 100, '1,3', 0, 1.75, 255, 1000, 1750, 0, 0, 75, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(48, 'collider', 0, '3', 0, 1.35, 255, 0, 0, 0, 0, 0, 800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '((2500 * $BuildLevel) + ((2500 * $BuildLevel) / 100 * $combat_collider))', NULL, NULL, NULL, 0, NULL),
(229, 'M7', 200, '1,3', 0, 1.00, NULL, 5000, 5000, 500, 0, 0, 0, 40, 40, 2, 12500, 12500, NULL, NULL, NULL, NULL, 100, 100, 1000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(420, 'slim_mehador', 400, '1,3', 0, 1.00, NULL, 3500, 2500, 2500, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 275, 600, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(421, 'iron_mehador', 400, '1,3', 0, 1.00, NULL, 110000, 210000, 60000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8500, 17000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL),
(422, 'grand_mehador', 400, '1,3', 0, 1.00, NULL, 8750000, 11000000, 6000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 258000, 425000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1369, NULL),
(230, 'M32', 200, '1,3', 0, 1.00, NULL, 21000000, 5000000, 1750000, 0, 0, 0, 3500, 3500, 3, 2850, 2850, NULL, NULL, NULL, NULL, 2500000, 450000, 150000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 950, NULL),
(5, 'searcher', 0, '1', 0, 3.00, 255, 2000000, 3000000, 500000, 100000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(45, 'planetarium', 0, '4', 0, 2.00, 255, 500000, 275000, 140000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(46, 'sensor_modul', 0, '4', 0, 2.00, 255, 2250000, 4500000, 1125000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `uni1_vars_rapidfire`
--

CREATE TABLE IF NOT EXISTS `uni1_vars_rapidfire` (
  `elementID` int(11) NOT NULL,
  `rapidfireID` int(11) NOT NULL,
  `shoots` int(11) NOT NULL,
  KEY `elementID` (`elementID`),
  KEY `rapidfireID` (`rapidfireID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `uni1_vars_rapidfire`
--

INSERT INTO `uni1_vars_rapidfire` (`elementID`, `rapidfireID`, `shoots`) VALUES
(204, 202, 2),
(205, 202, 3),
(206, 202, 7),
(213, 202, 40),
(215, 202, 40),
(218, 202, 1000),
(221, 202, 1600),
(218, 202, 1000),
(224, 202, 40),
(225, 202, 70),
(227, 202, 280),
(228, 202, 400),
(206, 203, 3),
(207, 203, 7),
(213, 203, 25),
(215, 203, 15),
(218, 203, 430),
(221, 203, 550),
(222, 203, 315),
(224, 203, 30),
(225, 203, 35),
(224, 204, 3),
(228, 203, 180),
(227, 203, 200),
(227, 202, 280),
(222, 228, 3),
(221, 228, 5),
(228, 227, 2),
(228, 226, 7),
(228, 225, 8),
(228, 224, 5),
(228, 219, 10),
(228, 217, 30),
(228, 216, 2),
(228, 202, 400),
(228, 214, 2),
(228, 213, 10),
(228, 212, 500),
(228, 211, 15),
(228, 209, 100),
(228, 207, 20),
(228, 206, 42),
(228, 205, 100),
(228, 204, 300),
(228, 203, 180),
(227, 204, 280),
(227, 205, 120),
(227, 206, 40),
(227, 207, 22),
(227, 209, 130),
(227, 211, 12),
(227, 213, 13),
(227, 215, 8),
(227, 217, 50),
(227, 224, 9),
(227, 225, 3),
(227, 226, 5),
(221, 227, 11),
(222, 227, 7),
(228, 227, 2),
(226, 211, 6),
(226, 226, 2),
(216, 226, 2),
(221, 226, 23),
(222, 226, 17),
(225, 226, 3),
(225, 204, 5),
(225, 205, 5),
(225, 206, 17),
(225, 207, 7),
(225, 209, 25),
(225, 211, 4),
(225, 212, 125),
(225, 213, 7),
(225, 215, 7),
(225, 217, 25),
(225, 219, 20),
(225, 224, 8),
(216, 225, 3),
(221, 225, 25),
(222, 225, 17),
(224, 205, 3),
(224, 206, 2),
(224, 209, 10),
(224, 211, 3),
(224, 212, 50),
(224, 213, 2),
(224, 215, 2),
(224, 217, 5),
(224, 401, 10),
(224, 402, 10),
(213, 224, 2),
(216, 224, 5),
(221, 224, 15),
(222, 224, 10),
(222, 202, 750),
(222, 204, 560),
(222, 205, 200),
(222, 206, 6),
(222, 206, 67),
(222, 207, 38),
(222, 209, 190),
(222, 211, 13),
(222, 212, 1000),
(222, 213, 28),
(222, 214, 5),
(222, 215, 21),
(222, 216, 3),
(222, 217, 70),
(222, 219, 30),
(222, 221, 2),
(222, 224, 10),
(221, 222, 3),
(221, 204, 980),
(221, 205, 350),
(221, 206, 117),
(221, 207, 65),
(221, 209, 330),
(221, 211, 22),
(221, 212, 2000),
(221, 213, 45),
(221, 214, 5),
(221, 215, 29),
(221, 216, 5),
(221, 217, 121),
(221, 219, 50),
(213, 219, 5),
(215, 219, 6),
(216, 219, 10),
(218, 204, 775),
(218, 205, 286),
(218, 206, 93),
(218, 207, 52),
(218, 209, 260),
(218, 211, 18),
(218, 212, 1500),
(218, 213, 40),
(218, 214, 5),
(218, 215, 21),
(218, 216, 4),
(218, 217, 96),
(218, 219, 40),
(218, 221, 2),
(221, 218, 3),
(222, 218, 3),
(215, 217, 3),
(216, 217, 25),
(213, 217, 2),
(216, 203, 100),
(216, 204, 180),
(216, 205, 65),
(216, 206, 22),
(216, 207, 12),
(216, 209, 65),
(216, 211, 5),
(216, 212, 350),
(216, 213, 5),
(216, 214, 3),
(216, 215, 5),
(410, 216, 8),
(215, 204, 4),
(215, 205, 4),
(215, 206, 4),
(215, 207, 2),
(215, 209, 3),
(215, 211, 2),
(215, 212, 50),
(215, 213, 2),
(206, 215, 2),
(213, 215, 2),
(406, 215, 2),
(410, 214, 10),
(213, 204, 2),
(213, 205, 2),
(213, 206, 2),
(213, 207, 3),
(213, 211, 2),
(213, 212, 50),
(213, 209, 5),
(207, 213, 2),
(205, 212, 5),
(206, 212, 10),
(207, 212, 25),
(211, 401, 100),
(211, 402, 80),
(211, 403, 70),
(211, 404, 60),
(211, 405, 70),
(211, 406, 50),
(206, 209, 2),
(207, 209, 3),
(207, 204, 2),
(207, 205, 2),
(207, 206, 2),
(206, 207, 2),
(412, 213, 15),
(412, 214, 5),
(412, 215, 15),
(412, 216, 5),
(412, 226, 3),
(226, 412, 30),
(413, 214, 12),
(413, 216, 10),
(413, 226, 5),
(413, 227, 4),
(226, 413, 20),
(414, 213, 8),
(414, 216, 8),
(414, 218, 5),
(414, 222, 5),
(414, 226, 25),
(414, 227, 6),
(414, 228, 4),
(226, 414, 10),
(415, 213, 30),
(415, 214, 20),
(415, 215, 27),
(415, 216, 20),
(415, 218, 5),
(415, 221, 2),
(415, 222, 5),
(415, 224, 20),
(415, 226, 35),
(415, 228, 8),
(218, 415, 3),
(221, 415, 3),
(222, 415, 2),
(416, 206, 2),
(416, 207, 2),
(416, 211, 5),
(416, 213, 4),
(416, 215, 3),
(416, 224, 2),
(211, 416, 25),
(417, 211, 10),
(417, 213, 6),
(417, 215, 7),
(417, 224, 3),
(418, 214, 2),
(211, 417, 20),
(418, 213, 2),
(418, 225, 5),
(418, 226, 3),
(226, 418, 40),
(419, 214, 8),
(419, 213, 8),
(419, 226, 15),
(419, 227, 3),
(419, 228, 2),
(226, 419, 15),
(229, 203, 3),
(229, 204, 2),
(229, 212, 5),
(213, 229, 2),
(215, 229, 3),
(216, 229, 75),
(218, 229, 4500),
(221, 229, 5000),
(222, 229, 2200),
(224, 229, 3),
(225, 229, 5),
(227, 229, 250),
(228, 229, 155),
(403, 229, 3),
(411, 229, 25000),
(420, 204, 3),
(420, 205, 2),
(420, 229, 2),
(211, 420, 30),
(421, 206, 2),
(421, 207, 2),
(421, 211, 10),
(421, 217, 7),
(421, 226, 2),
(226, 421, 3),
(211, 421, 5),
(422, 206, 2),
(422, 207, 2),
(422, 211, 5),
(422, 213, 3),
(422, 215, 3),
(422, 224, 3),
(422, 226, 7),
(211, 422, 3),
(226, 422, 7),
(230, 202, 400),
(230, 203, 400),
(230, 204, 350),
(230, 205, 250),
(230, 206, 50),
(230, 207, 25),
(230, 211, 15),
(230, 213, 15),
(230, 215, 15),
(230, 216, 4),
(230, 217, 90),
(230, 224, 15),
(230, 225, 5),
(230, 227, 2),
(230, 229, 300),
(218, 230, 30),
(221, 230, 55),
(222, 230, 15),
(227, 230, 2),
(228, 230, 2),
(410, 230, 5),
(411, 230, 250),
(414, 230, 6);

-- --------------------------------------------------------

--
-- Structure de la table `uni1_vars_requriements`
--

CREATE TABLE IF NOT EXISTS `uni1_vars_requriements` (
  `elementID` int(11) NOT NULL,
  `requireID` int(11) NOT NULL,
  `requireLevel` int(11) NOT NULL,
  KEY `elementID` (`elementID`),
  KEY `requireID` (`requireID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `uni1_vars_requriements`
--

INSERT INTO `uni1_vars_requriements` (`elementID`, `requireID`, `requireLevel`) VALUES
(6, 14, 20),
(6, 31, 22),
(6, 15, 4),
(6, 108, 12),
(6, 123, 3),
(12, 3, 5),
(12, 113, 3),
(15, 14, 10),
(15, 108, 10),
(21, 14, 2),
(33, 15, 1),
(33, 113, 12),
(42, 41, 1),
(43, 41, 1),
(43, 114, 7),
(44, 21, 1),
(106, 31, 3),
(108, 31, 1),
(109, 31, 4),
(110, 113, 3),
(110, 31, 6),
(111, 31, 2),
(113, 31, 1),
(114, 113, 5),
(114, 110, 5),
(114, 31, 7),
(115, 113, 1),
(115, 31, 1),
(117, 113, 1),
(117, 31, 2),
(118, 114, 3),
(118, 31, 7),
(120, 31, 1),
(120, 113, 2),
(121, 31, 4),
(121, 120, 5),
(121, 113, 4),
(122, 31, 5),
(122, 113, 8),
(122, 120, 10),
(122, 121, 5),
(123, 31, 10),
(123, 108, 8),
(123, 114, 8),
(124, 106, 3),
(124, 117, 3),
(124, 31, 3),
(131, 31, 8),
(131, 113, 5),
(132, 31, 8),
(132, 113, 5),
(133, 31, 8),
(133, 113, 5),
(199, 31, 12),
(202, 21, 2),
(202, 115, 2),
(203, 21, 4),
(203, 115, 6),
(204, 21, 1),
(204, 115, 1),
(205, 21, 3),
(205, 111, 2),
(205, 117, 2),
(206, 21, 5),
(206, 117, 4),
(206, 121, 2),
(207, 21, 7),
(207, 118, 4),
(208, 21, 4),
(208, 117, 3),
(209, 21, 4),
(209, 115, 6),
(209, 110, 2),
(210, 21, 3),
(210, 115, 3),
(210, 106, 2),
(211, 117, 6),
(211, 21, 8),
(211, 122, 5),
(212, 21, 1),
(213, 21, 9),
(213, 118, 6),
(213, 114, 5),
(214, 21, 12),
(214, 118, 7),
(214, 114, 6),
(214, 199, 1),
(215, 114, 5),
(215, 120, 12),
(215, 118, 5),
(215, 21, 8),
(216, 106, 12),
(216, 21, 15),
(216, 109, 14),
(216, 110, 14),
(216, 111, 15),
(216, 114, 10),
(216, 120, 20),
(216, 199, 3),
(217, 111, 10),
(217, 21, 14),
(217, 114, 10),
(217, 110, 14),
(217, 117, 15),
(218, 21, 18),
(218, 109, 20),
(218, 110, 20),
(218, 111, 20),
(218, 114, 15),
(218, 118, 20),
(218, 120, 25),
(218, 199, 8),
(219, 21, 15),
(219, 109, 15),
(219, 110, 15),
(219, 111, 15),
(219, 118, 8),
(220, 21, 9),
(220, 114, 5),
(220, 118, 6),
(401, 21, 1),
(402, 113, 1),
(402, 21, 2),
(402, 120, 3),
(403, 113, 3),
(403, 21, 4),
(403, 120, 6),
(404, 21, 6),
(404, 113, 6),
(404, 109, 3),
(404, 110, 1),
(405, 21, 4),
(405, 121, 4),
(406, 21, 8),
(406, 122, 7),
(407, 110, 2),
(407, 21, 1),
(408, 110, 6),
(408, 21, 6),
(409, 609, 1),
(410, 199, 7),
(410, 21, 18),
(410, 109, 20),
(411, 199, 10),
(411, 110, 22),
(411, 122, 20),
(411, 108, 15),
(411, 111, 25),
(411, 113, 20),
(411, 615, 1),
(411, 21, 20),
(502, 44, 2),
(502, 21, 1),
(503, 44, 4),
(503, 21, 1),
(503, 117, 1),
(603, 601, 5),
(604, 602, 5),
(605, 601, 10),
(605, 603, 2),
(606, 601, 10),
(606, 603, 2),
(607, 605, 1),
(608, 606, 1),
(609, 601, 20),
(609, 603, 10),
(609, 605, 3),
(609, 606, 3),
(609, 607, 2),
(609, 608, 2),
(610, 602, 10),
(610, 604, 5),
(611, 602, 10),
(611, 604, 5),
(612, 610, 1),
(613, 611, 1),
(614, 602, 20),
(614, 604, 10),
(614, 610, 2),
(614, 611, 2),
(614, 612, 1),
(614, 613, 3),
(615, 614, 1),
(615, 609, 1),
(221, 21, 20),
(221, 109, 22),
(221, 110, 22),
(221, 111, 22),
(221, 114, 17),
(221, 118, 22),
(221, 199, 9),
(221, 122, 20),
(222, 21, 18),
(222, 109, 18),
(222, 110, 18),
(222, 111, 18),
(222, 118, 20),
(222, 120, 23),
(222, 199, 8),
(222, 122, 18),
(223, 21, 1),
(224, 21, 12),
(224, 118, 7),
(224, 114, 6),
(224, 120, 12),
(224, 121, 8),
(225, 120, 14),
(224, 21, 12),
(225, 121, 14),
(225, 110, 12),
(225, 111, 12),
(225, 109, 12),
(225, 118, 6),
(226, 21, 14),
(226, 120, 12),
(226, 121, 17),
(226, 109, 14),
(226, 110, 13),
(226, 111, 13),
(226, 118, 10),
(227, 21, 16),
(227, 120, 17),
(227, 121, 19),
(227, 199, 5),
(227, 109, 16),
(227, 110, 16),
(227, 111, 17),
(227, 118, 14),
(228, 21, 18),
(228, 121, 20),
(228, 122, 20),
(228, 199, 7),
(228, 109, 17),
(228, 110, 18),
(228, 111, 18),
(228, 118, 16),
(412, 122, 17),
(412, 120, 24),
(412, 113, 20),
(412, 109, 20),
(412, 21, 18),
(413, 199, 8),
(413, 110, 21),
(413, 122, 20),
(413, 111, 22),
(413, 113, 18),
(413, 21, 18),
(414, 109, 23),
(414, 21, 20),
(414, 110, 21),
(414, 121, 24),
(414, 199, 6),
(415, 21, 22),
(415, 15, 17),
(415, 109, 23),
(415, 110, 23),
(415, 111, 23),
(415, 121, 18),
(415, 122, 23),
(415, 199, 9),
(416, 21, 7),
(416, 120, 5),
(416, 121, 7),
(417, 21, 9),
(417, 121, 8),
(417, 122, 11),
(418, 21, 17),
(418, 109, 18),
(418, 110, 17),
(418, 111, 18),
(418, 121, 14),
(418, 122, 14),
(418, 199, 4),
(419, 21, 20),
(419, 109, 20),
(419, 110, 19),
(419, 111, 19),
(419, 121, 17),
(419, 122, 19),
(419, 199, 7),
(125, 34, 1),
(125, 31, 3),
(225, 21, 11),
(221, 614, 1),
(409, 21, 10),
(229, 21, 3),
(229, 120, 3),
(229, 117, 3),
(229, 111, 2),
(420, 121, 2),
(420, 120, 2),
(420, 21, 3),
(420, 110, 2),
(421, 121, 5),
(421, 120, 5),
(421, 122, 5),
(421, 21, 9),
(421, 110, 7),
(422, 121, 17),
(422, 120, 17),
(422, 122, 15),
(422, 21, 20),
(422, 110, 11),
(230, 118, 13),
(230, 111, 16),
(230, 110, 16),
(230, 109, 17),
(230, 199, 6),
(230, 122, 18),
(230, 120, 16),
(230, 21, 16),
(5, 15, 14),
(5, 6, 12),
(5, 113, 18),
(5, 123, 8);

-- --------------------------------------------------------

--
-- Structure de la table `uni1_votefirst`
--

CREATE TABLE IF NOT EXISTS `uni1_votefirst` (
  `id` int(11) NOT NULL DEFAULT '0',
  `vid` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `universe` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `uni1_votesystem`
--

CREATE TABLE IF NOT EXISTS `uni1_votesystem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `prize` int(11) NOT NULL,
  `image` text NOT NULL,
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `universe` int(11) NOT NULL DEFAULT '1',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `uni1_votesystem`
--

INSERT INTO `uni1_votesystem` (`id`, `link`, `prize`, `image`, `time`, `universe`) VALUES
(1, 'http://rivaltoplist.com/in/2311', 1, 'http://www.rivaltoplist.com/vote.jpg', 12, 1),
(2, 'http://arena-top100.com/index.php?a=in&u=Thisishowwedoit\n', 1, 'http://www.arena-top100.com/button.php?u=Thisishowwedoit&buttontype=static', 12, 2),
(3, 'https://private-server.ws/index.php?a=in&u=Thisishowwedoit', 1, 'https://private-server.ws/button.php?u=Zyperax&buttontype=static', 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `uni1_votesystem_log`
--

CREATE TABLE IF NOT EXISTS `uni1_votesystem_log` (
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `vote_system_id` bigint(20) NOT NULL DEFAULT '0',
  `universe` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
