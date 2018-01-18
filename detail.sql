-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 25, 2010 at 10:54 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--

--
CREATE DATABASE detail;
USE detail;

CREATE TABLE IF NOT EXISTS `details` (
	`id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `age` int(3) NOT NULL ,
  `sex` varchar(10) NOT NULL ,
  `status` varchar(30) NOT NULL,
  primary key (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

--

--

INSERT INTO `details` ( `name`, `age`, `sex`, `status`) VALUES
( 'upasana', '21', 'Female', 'Unmarried');
-- --------------------------------------------------------

--

--




CREATE TABLE IF NOT EXISTS `Address` (
	`id` int(3) NOT NULL AUTO_INCREMENT,
  `Country` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL ,
  `Area` varchar(300) NOT NULL,
  `Pincode` int(6) NOT NULL,
   primary key(`id`),
   foreign key(`id`) references details(`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--

--

INSERT INTO `Address` ( `Country`, `State`, `Area`, `Pincode`) VALUES
('India', 'Uttar Pradesh', 'Allahabad', '211015');
-- --------------------------------------------------------


CREATE TABLE IF NOT EXISTS `other_details` (
	`id` int(20) NOT NULL AUTO_INCREMENT,
  `income` int(20) NOT NULL,
  `percentage` int(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `Health_check` varchar(300) NOT NULL,
  `Parents` varchar(50) NOT NULL,
  primary key(`id`),
   foreign key(`id`) references details(`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


--

INSERT INTO `other_details` ( `income`, `percentage`, `type`, `Health_check`, `Parents`) VALUES
('100','75','Unemployed','None','Anil Kumar');



