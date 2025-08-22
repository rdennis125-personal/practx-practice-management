CREATE TABLE `eroutingactiondef` (
  `ERoutingActionDefNum` bigint(20) NOT NULL AUTO_INCREMENT,
  `ERoutingDefNum` bigint(20) NOT NULL,
  `ERoutingActionType` tinyint(4) NOT NULL,
  `ItemOrder` int(11) NOT NULL,
  `SecDateTEntry` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `DateTLastModified` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  PRIMARY KEY (`ERoutingActionDefNum`),
  KEY `ERoutingDefNum` (`ERoutingDefNum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;