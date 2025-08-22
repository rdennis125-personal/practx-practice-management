CREATE TABLE `grouppermission` (
  `GroupPermNum` bigint(20) NOT NULL AUTO_INCREMENT,
  `NewerDate` date NOT NULL DEFAULT '0001-01-01',
  `NewerDays` int(11) NOT NULL,
  `UserGroupNum` bigint(20) NOT NULL,
  `PermType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `FKey` bigint(20) NOT NULL,
  PRIMARY KEY (`GroupPermNum`),
  KEY `FKey` (`FKey`),
  KEY `UserGroupNum` (`UserGroupNum`)
) ENGINE=MyISAM AUTO_INCREMENT=794 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;