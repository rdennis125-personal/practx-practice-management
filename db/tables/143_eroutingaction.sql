CREATE TABLE `eroutingaction` (
  `ERoutingActionNum` bigint(20) NOT NULL AUTO_INCREMENT,
  `ERoutingNum` bigint(20) NOT NULL,
  `ItemOrder` int(11) NOT NULL,
  `ERoutingActionType` tinyint(4) NOT NULL,
  `UserNum` bigint(20) NOT NULL,
  `IsComplete` tinyint(4) NOT NULL,
  `DateTimeComplete` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  PRIMARY KEY (`ERoutingActionNum`),
  KEY `ERoutingNum` (`ERoutingNum`),
  KEY `UserNum` (`UserNum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;