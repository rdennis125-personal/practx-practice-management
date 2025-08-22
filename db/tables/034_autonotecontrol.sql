CREATE TABLE `autonotecontrol` (
  `AutoNoteControlNum` bigint(20) NOT NULL AUTO_INCREMENT,
  `Descript` varchar(50) DEFAULT NULL,
  `ControlType` varchar(50) DEFAULT NULL,
  `ControlLabel` varchar(255) DEFAULT NULL,
  `ControlOptions` text DEFAULT NULL,
  PRIMARY KEY (`AutoNoteControlNum`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;