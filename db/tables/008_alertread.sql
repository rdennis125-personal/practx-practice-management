CREATE TABLE `alertread` (
  `AlertReadNum` bigint(20) NOT NULL AUTO_INCREMENT,
  `AlertItemNum` bigint(20) NOT NULL,
  `UserNum` bigint(20) NOT NULL,
  PRIMARY KEY (`AlertReadNum`),
  KEY `AlertItemNum` (`AlertItemNum`),
  KEY `UserNum` (`UserNum`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;