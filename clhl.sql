-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2020 年 12 月 21 日 17:18
-- 伺服器版本： 10.4.10-MariaDB
-- PHP 版本： 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `clhl`
--
CREATE DATABASE IF NOT EXISTS `clhl` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `clhl`;

-- --------------------------------------------------------

--
-- 資料表結構 `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `ID` char(36) NOT NULL,
  `Time` time NOT NULL,
  `Date` date NOT NULL,
  `Word` text DEFAULT NULL,
  `Img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `browse`
--

DROP TABLE IF EXISTS `browse`;
CREATE TABLE IF NOT EXISTS `browse` (
  `UserID` int(11) NOT NULL,
  `PostID` int(11) NOT NULL,
  KEY `PostID` (`PostID`),
  KEY `UserID` (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE IF NOT EXISTS `friends` (
  `UserID1` char(36) NOT NULL,
  `UserID2` char(36) NOT NULL,
  KEY `UserID` (`UserID1`,`UserID2`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `group`
--

DROP TABLE IF EXISTS `group`;
CREATE TABLE IF NOT EXISTS `group` (
  `ID` char(36) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `group_activity`
--

DROP TABLE IF EXISTS `group_activity`;
CREATE TABLE IF NOT EXISTS `group_activity` (
  `GroupID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  KEY `GroupID` (`GroupID`),
  KEY `ActivityID` (`ActivityID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `group_announcement`
--

DROP TABLE IF EXISTS `group_announcement`;
CREATE TABLE IF NOT EXISTS `group_announcement` (
  `GroupID` char(36) NOT NULL,
  `ID` char(36) NOT NULL,
  `Time` time NOT NULL,
  `Date` date NOT NULL,
  `Word` text DEFAULT NULL,
  `Img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `UserID1` char(36) NOT NULL,
  `UserID2` char(36) NOT NULL,
  `Time` time NOT NULL,
  `Date` date NOT NULL,
  `Word` text NOT NULL,
  `Img` varchar(100) NOT NULL,
  KEY `UserID` (`UserID1`,`UserID2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `message_board`
--

DROP TABLE IF EXISTS `message_board`;
CREATE TABLE IF NOT EXISTS `message_board` (
  `PostID` char(36) NOT NULL,
  `ID` char(36) NOT NULL,
  `Time` time NOT NULL,
  `Date` date NOT NULL,
  `Word` text DEFAULT NULL,
  `Img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PostID` (`PostID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `ID` char(36) NOT NULL,
  `Time` time NOT NULL,
  `Date` date NOT NULL,
  `Word` text DEFAULT NULL,
  `Img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE IF NOT EXISTS `userinfo` (
  `ID` char(36) NOT NULL,
  `Birthday` date NOT NULL,
  `Account` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Sex` varchar(1) NOT NULL,
  `Place` text DEFAULT NULL,
  `School` text DEFAULT NULL,
  `Phone` varchar(11) DEFAULT NULL,
  `Email` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `user_work`
--

DROP TABLE IF EXISTS `user_work`;
CREATE TABLE IF NOT EXISTS `user_work` (
  `UserID` char(36) NOT NULL,
  `experience` text DEFAULT NULL,
  KEY `UserID` (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
