CREATE TABLE `plannedappt` (
  `PlannedApptNum` bigint(20) NOT NULL AUTO_INCREMENT,
  `PatNum` bigint(20) NOT NULL,
  `AptNum` bigint(20) NOT NULL,
  `ItemOrder` int(11) NOT NULL,
  PRIMARY KEY (`PlannedApptNum`),
  KEY `PatNum` (`PatNum`),
  KEY `AptNum` (`AptNum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;