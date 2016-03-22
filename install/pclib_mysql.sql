/*Table structure for table `LOOKUPS` (TPL) */

CREATE TABLE `LOOKUPS` (
  `GUID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID` varchar(10) DEFAULT NULL,
  `APP` varchar(10) DEFAULT NULL,
  `CNAME` varchar(20) DEFAULT NULL,
  `LABEL` varchar(100) DEFAULT NULL,
  `POSITION` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`GUID`),
  KEY `CNAME` (`CNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `TRANSLATOR` */

CREATE TABLE `TRANSLATOR` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TRANSLATOR` smallint(11) DEFAULT NULL,
  `LANG` smallint(6) DEFAULT '0',
  `PAGE` smallint(6) DEFAULT NULL,
  `TEXT_ID` int(11) DEFAULT '0',
  `TSTEXT` text,
  `DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `TRANSLATOR_LABELS` */

CREATE TABLE `TRANSLATOR_LABELS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LABEL` varchar(80) DEFAULT NULL,
  `CATEGORY` tinyint(4) DEFAULT NULL,
  `DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LABEL` (`LABEL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


/*Table structure for table `AUTH_REGISTER` */

CREATE TABLE `AUTH_REGISTER` (
  `USER_ID` int(11) DEFAULT NULL,
  `ROLE_ID` int(11) DEFAULT NULL,
  `OBJ_ID` int(11) DEFAULT '0',
  `RIGHT_ID` int(11) DEFAULT NULL,
  `RVAL` varchar(20) DEFAULT '0',
  UNIQUE KEY `I_ROLE` (`ROLE_ID`,`OBJ_ID`,`RIGHT_ID`),
  UNIQUE KEY `I_USER` (`USER_ID`,`OBJ_ID`,`RIGHT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


/*Table structure for table `AUTH_RIGHTS` */

CREATE TABLE `AUTH_RIGHTS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNAME` varchar(100) DEFAULT NULL,
  `ANNOT` varchar(100) DEFAULT NULL,
  `RTYPE` enum('B','C','I') DEFAULT 'B',
  `DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `AUTH_ROLES` */

CREATE TABLE `AUTH_ROLES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNAME` varchar(100) DEFAULT NULL,
  `ANNOT` varchar(100) DEFAULT NULL,
  `LASTMOD` datetime DEFAULT NULL,
  `DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `AUTH_USER_ROLE` */

CREATE TABLE `AUTH_USER_ROLE` (
  `USER_ID` int(11) DEFAULT NULL,
  `ROLE_ID` int(11) DEFAULT NULL,
  `OBJ_ID` int(11) DEFAULT '0',
  `R_PRIORITY` int(11) DEFAULT '1',
  UNIQUE KEY `USER_ID` (`USER_ID`,`ROLE_ID`,`OBJ_ID`),
  KEY `ROLE_ID` (`ROLE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `AUTH_USERS` */

CREATE TABLE `AUTH_USERS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(30) DEFAULT NULL,
  `FULLNAME` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PASSW` varchar(255) DEFAULT NULL,
  `DPASSW` varchar(50) DEFAULT NULL,
  `ANNOT` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `LOGINFAIL` tinyint(4) DEFAULT '0',
  `ACTIVE` tinyint(4) DEFAULT '1',
  `LASTMOD` datetime DEFAULT NULL,
  `DT` datetime DEFAULT NULL,
  `IP` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `LOGGER` */

CREATE TABLE `LOGGER` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGGER` smallint(11) DEFAULT NULL,
  `ACTION` smallint(6) DEFAULT NULL,
  `CATEGORY` smallint(6),
  `USER_ID` int(11) DEFAULT '0',
  `ITEM_ID` int(11) DEFAULT NULL,
  `IP` int(11) DEFAULT NULL,
  `UA` smallint(6) DEFAULT NULL,
  `DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `USER_ID` (`USER_ID`),
  KEY `DT` (`DT`),
  KEY `ACTION` (`ACTION`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `LOGGER_LABELS` */

CREATE TABLE `LOGGER_LABELS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LABEL` varchar(80) DEFAULT NULL,
  `CATEGORY` tinyint(4) DEFAULT '0',
  `DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LABEL` (`LABEL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `LOGGER_MESSAGES` */

CREATE TABLE `LOGGER_MESSAGES` (
  `LOG_ID` int(11) NOT NULL,
  `LOGGER` smallint(11) DEFAULT NULL,  
  `MESSAGE` text,
  `DT` datetime DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `TREE_LOOKUPS` (APP) */
CREATE TABLE `TREE_LOOKUPS` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `TREE_ID` INT(11) DEFAULT NULL,
  `LABEL` VARCHAR(50) DEFAULT NULL,
  `LEVEL` TINYINT(4) DEFAULT NULL,
  `ROUTE` VARCHAR(50) DEFAULT NULL,
  `URL` VARCHAR(100) DEFAULT NULL,
  `RKEY` varchar(50) DEFAULT NULL,
  `NR` int(11) DEFAULT NULL,
  `ACTIVE` tinyint(4) DEFAULT '1',
   PRIMARY KEY (`ID`),
  KEY `I_NR` (`TREE_ID`,`NR`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;