/*
SQLyog Enterprise v8.63 
MySQL - 5.6.17 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `PEOPLE` (
	`ID` double ,
	`NAME` varchar (90),
	`SURNAME` varchar (120),
	`BIRTHDATE` datetime ,
	`PROFESSION` varchar (60),
	`MONEY` double 
); 
insert into `PEOPLE` (`ID`, `NAME`, `SURNAME`, `BIRTHDATE`, `PROFESSION`, `MONEY`) values('1','Bill','Gates','1955-11-28 00:00:00','bigboss','1000000000000');
insert into `PEOPLE` (`ID`, `NAME`, `SURNAME`, `BIRTHDATE`, `PROFESSION`, `MONEY`) values('2','Steve','Jobs','1955-02-24 00:00:00','bigboss','100000000');
insert into `PEOPLE` (`ID`, `NAME`, `SURNAME`, `BIRTHDATE`, `PROFESSION`, `MONEY`) values('3','Linus','Torvalds','1969-12-28 00:00:00','bigboss','10000000');
insert into `PEOPLE` (`ID`, `NAME`, `SURNAME`, `BIRTHDATE`, `PROFESSION`, `MONEY`) values('4','John','Carmack','1970-08-20 00:00:00','programmer','1000000000');
insert into `PEOPLE` (`ID`, `NAME`, `SURNAME`, `BIRTHDATE`, `PROFESSION`, `MONEY`) values('5','Brian','Kernighan','1942-10-20 00:00:00','programmer','1000');
insert into `PEOPLE` (`ID`, `NAME`, `SURNAME`, `BIRTHDATE`, `PROFESSION`, `MONEY`) values('6','Dennis','Ritchie','1941-04-03 00:00:00','programmer','1000');
