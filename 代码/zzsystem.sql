-- phpMyAdmin SQL Dump
-- version 3.1.2deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2009 年 09 月 26 日 18:58
-- 服务器版本: 5.0.75
-- PHP 版本: 5.2.6-3ubuntu4.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `zzsystem`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_name` varchar(15) NOT NULL,
  `admin_password` varchar(20) NOT NULL,
  PRIMARY KEY  (`admin_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `admin`
--

INSERT INTO `admin` (`admin_name`, `admin_password`) VALUES
('0615210129', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `assess_table`
--

CREATE TABLE IF NOT EXISTS `assess_table` (
  `table_id` varchar(20) NOT NULL,
  `assessor` varchar(15) default NULL,
  `results` varchar(15) default NULL,
  `assess_reason` varchar(50) default NULL,
  `submit_time` date default NULL,
  PRIMARY KEY  (`table_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `assess_table`
--


-- --------------------------------------------------------

--
-- 表的结构 `daikuandengjibiao`
--

CREATE TABLE IF NOT EXISTS `daikuandengjibiao` (
  `dk_id` varchar(20) NOT NULL,
  `dk_student_no` varchar(15) NOT NULL,
  `xfdk` decimal(6,2) default NULL,
  `zsdk` decimal(6,2) default NULL,
  `shenghuofei` decimal(6,2) default NULL,
  `dk_reason` varchar(500) default NULL,
  PRIMARY KEY  (`dk_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `daikuandengjibiao`
--


-- --------------------------------------------------------

--
-- 表的结构 `gongzibiao`
--

CREATE TABLE IF NOT EXISTS `gongzibiao` (
  `gz_student_no` varchar(15) NOT NULL,
  `month` date NOT NULL,
  `worktime` float NOT NULL,
  PRIMARY KEY  (`gz_student_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `gongzibiao`
--


-- --------------------------------------------------------

--
-- 表的结构 `home_detailed_info`
--

CREATE TABLE IF NOT EXISTS `home_detailed_info` (
  `home_detailed_student_no` varchar(15) NOT NULL,
  `economic_income` varchar(30) default NULL,
  `zrzh` varchar(200) default NULL,
  `events` varchar(200) default NULL,
  `cycr` varchar(200) default NULL,
  `cysy` varchar(200) default NULL,
  `qz` varchar(200) default NULL,
  `other` varchar(200) default NULL,
  PRIMARY KEY  (`home_detailed_student_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `home_detailed_info`
--


-- --------------------------------------------------------

--
-- 表的结构 `huanjiaoxuefeishenqingbiao`
--

CREATE TABLE IF NOT EXISTS `huanjiaoxuefeishenqingbiao` (
  `hj_id` varchar(20) NOT NULL,
  `hj_student_no` varchar(15) NOT NULL,
  `hj_time` date default NULL,
  `hjxf` decimal(6,2) default NULL,
  `hjzsf` decimal(6,2) default NULL,
  `datelimt` int(11) default NULL,
  `hdgjzxdk` tinyint(1) default NULL,
  `sqgjzxdk` tinyint(1) default NULL,
  PRIMARY KEY  (`hj_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `huanjiaoxuefeishenqingbiao`
--


-- --------------------------------------------------------

--
-- 表的结构 `jiangzhuxuejinshenqingbiao`
--

CREATE TABLE IF NOT EXISTS `jiangzhuxuejinshenqingbiao` (
  `jzxj_id` varchar(20) NOT NULL,
  `jzxj_student_no` varchar(15) NOT NULL,
  `jzxj_name` varchar(30) default NULL,
  `zc` int(11) default NULL,
  `bkkm` varchar(30) default NULL,
  `cf` tinyint(1) default NULL,
  `jzxj_reason` varchar(500) default NULL,
  PRIMARY KEY  (`jzxj_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `jiangzhuxuejinshenqingbiao`
--


-- --------------------------------------------------------

--
-- 表的结构 `jiangzhuxuejintongjibiao`
--

CREATE TABLE IF NOT EXISTS `jiangzhuxuejintongjibiao` (
  `jzxtj_student_no` varchar(15) NOT NULL,
  `year` date default NULL,
  `gradeone` varchar(100) default NULL,
  `gradetwo` varchar(100) default NULL,
  `gradethree` varchar(100) default NULL,
  `gradefour` varchar(100) default NULL,
  PRIMARY KEY  (`jzxtj_student_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `jiangzhuxuejintongjibiao`
--


-- --------------------------------------------------------

--
-- 表的结构 `qingongbiao`
--

CREATE TABLE IF NOT EXISTS `qingongbiao` (
  `qg_id` varchar(20) NOT NULL,
  `qg_student_no` varchar(15) NOT NULL,
  `fwbm` varchar(30) default NULL,
  `ssh` varchar(15) default NULL,
  `ss_phone` varchar(15) default NULL,
  `card_no` varchar(30) default NULL,
  `qg_time` date default NULL,
  `study` varchar(200) default NULL,
  `worktype` varchar(50) default NULL,
  `jxj` decimal(6,2) default NULL,
  `qxf` decimal(6,2) default NULL,
  PRIMARY KEY  (`qg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `qingongbiao`
--


-- --------------------------------------------------------

--
-- 表的结构 `rendingbiao`
--

CREATE TABLE IF NOT EXISTS `rendingbiao` (
  `rd_id` varchar(20) NOT NULL,
  `rd_student_no` varchar(15) NOT NULL,
  `flag` int(11) default NULL,
  `zzje` decimal(6,2) default NULL,
  `xuefei` decimal(6,2) default NULL,
  `zhusufei` decimal(6,2) default NULL,
  `shenghuofei` decimal(6,2) default NULL,
  `rd_reason` varchar(500) default NULL,
  PRIMARY KEY  (`rd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `rendingbiao`
--


-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `no` varchar(15) NOT NULL,
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `student`
--

INSERT INTO `student` (`no`) VALUES
('0615210126'),
('0615210127'),
('0615210128'),
('0615210129'),
('0615210191');

-- --------------------------------------------------------

--
-- 表的结构 `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `student_id` varchar(20) NOT NULL,
  `student_no` varchar(15) NOT NULL,
  `student_name` varchar(15) NOT NULL,
  `student_sex` varchar(10) NOT NULL,
  `college` varchar(50) NOT NULL,
  `grade` int(11) default NULL,
  `class` varchar(30) default NULL,
  `telephone` varchar(15) default NULL,
  `birthday` date default NULL,
  `xuezhi` int(11) default NULL,
  `gruop` varchar(15) default NULL,
  `zzmm` varchar(15) default NULL,
  `id` varchar(30) default NULL,
  `school` varchar(30) default NULL,
  `techang` varchar(50) default NULL,
  `gucan` tinyint(1) default NULL,
  `danxin` tinyint(1) default NULL,
  `lieshizinv` tinyint(1) default NULL,
  `address` varchar(100) default NULL,
  `postcode` varchar(15) default NULL,
  `homephone` varchar(15) default NULL,
  `people` int(11) default NULL,
  `hk` varchar(10) default NULL,
  `jtzkjs` varchar(500) default NULL,
  PRIMARY KEY  (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `student_info`
--


-- --------------------------------------------------------

--
-- 表的结构 `tihuangangshenqingbiao`
--

CREATE TABLE IF NOT EXISTS `tihuangangshenqingbiao` (
  `thgsqb_id` varchar(20) NOT NULL,
  `sstudent_no` varchar(15) NOT NULL,
  `tstudent_no` varchar(15) NOT NULL,
  PRIMARY KEY  (`thgsqb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `tihuangangshenqingbiao`
--


-- --------------------------------------------------------

--
-- 表的结构 `tuigangshenqingbiao`
--

CREATE TABLE IF NOT EXISTS `tuigangshenqingbiao` (
  `tgsqb_id` varchar(20) NOT NULL,
  `tg_student_no` varchar(15) NOT NULL,
  `fdate` date default NULL,
  `tdate` date default NULL,
  `tg_reason` varchar(500) default NULL,
  PRIMARY KEY  (`tgsqb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `tuigangshenqingbiao`
--


-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `problem` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `user`
--

INSERT INTO `user` (`name`, `password`, `problem`, `answer`) VALUES
('username1', '1upw', '1problem', '1answer'),
('username', 'upw', 'problem', 'answer');

-- --------------------------------------------------------

--
-- 表的结构 `yuebaobiao`
--

CREATE TABLE IF NOT EXISTS `yuebaobiao` (
  `yb_month` date NOT NULL,
  `tgbm` varchar(30) NOT NULL,
  `tb_time` date default NULL,
  `bmzg` varchar(15) default NULL,
  `shenheren` varchar(15) default NULL,
  `zhibiaoren` varchar(15) default NULL,
  PRIMARY KEY  (`yb_month`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `yuebaobiao`
--

