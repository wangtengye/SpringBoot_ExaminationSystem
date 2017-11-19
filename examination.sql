-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-18 10:14:22
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examination`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` char(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` char(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `account`, `name`, `password`) VALUES
(1, 'acj', '贾中昊', 'acj'),
(2, 'wty', '王腾叶', 'wty'),
(3, 'zyr', '钟燕榕', 'zyr');

-- --------------------------------------------------------

--
-- 表的结构 `ansrecord`
--

CREATE TABLE `ansrecord` (
  `sid` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `objrecord` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `subrecord` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE `class` (
  `classid` bigint(20) NOT NULL,
  `teacherid` bigint(20) NOT NULL,
  `classname` char(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`classid`, `teacherid`, `classname`) VALUES
(1, 1, '15网工'),
(2, 3, '15计创'),
(3, 3, '15计联'),
(4, 2, '15计科1'),
(5, 2, '15计科2'),
(6, 1, '15信安');

-- --------------------------------------------------------

--
-- 表的结构 `objdba`
--

CREATE TABLE `objdba` (
  `objid` bigint(20) NOT NULL,
  `question` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rightanswer` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `objdba`
--

INSERT INTO `objdba` (`objid`, `question`, `rightanswer`) VALUES
(1, '5、数据库三级模式中，真正存在的是（ ）。\r\n\r\nA 外模式 B 子模式\r\n\r\nC 模式 D 内模式\r\n\r\n', '答案：D'),
(2, '6、关系数据库中的关键字是指（ ）。\r\n\r\nA 能唯一决定关系的字段\r\n\r\nB 不可改动的专用保留字\r\n\r\nC 关键的很重要的字段\r\n\r\nD 能唯一标识元组的属性或属性集合\r\n', '答案：D'),
(3, '1、数据库的三级模式之间存在的映象关系正确的是（ ）。\r\n\r\nA 外模式/内模式 B 外模式/模式\r\n\r\nC 外模式/外模式 D 模式/模式\r\n', '答案：B'),
(4, '2、数据库三级结构从内到外的三个层次为（ ）。\r\n\r\nA 外模式、模式、内模式 B 内模式、模式、外模式\r\n\r\nC 模式、外模式、内模式 D 内模式、外模式、模式\r\n', '答案：B'),
(5, '3、下述关于数据库系统的正确叙述是（ ）。\r\n\r\nA 数据库系统减少了数据冗余\r\n\r\nB 数据库系统避免了一切冗余\r\n\r\nC 数据库系统中数据的一致性是指数据类型一致\r\n\r\nD 数据库系统比文件系统能管理更多的数据\r\n', '答案：A'),
(6, '4、数据库系统和文件系统的主要区别是（ ）。\r\n\r\nA 数据库系统复杂，而文件系统简单\r\n\r\nB 文件系统不能解决数据冗余和数据独立性问题，而数据库系统能够解决\r\n\r\nC 文件系统只能管理文件，而数据库系统还能管理其他类型的数据\r\n\r\nD 文件系统只能用于小型、微型机，而数据库系统还能用于大型机\r\n', '答案：B');

-- --------------------------------------------------------

--
-- 表的结构 `paper`
--

CREATE TABLE `paper` (
  `pid` bigint(20) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `obj` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sub` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `paper`
--

INSERT INTO `paper` (`pid`, `name`, `obj`, `sub`) VALUES
(2, '数据库平时练习第一章', '1,2,3,4,5,6,7,8,9,10', '1,2,3,4,5'),
(3, '数据库平时练习第一章', '2,3,4,5,6,7,8,9,10,11', '2,3,4,5,6'),
(4, '数据库平时练习第二章', '21,22,23,24,25,26,27,28,29,30', '11,12,13,14,15'),
(5, '数据库平时练习第二章', '22,23,24,25,26,27,28,29,30,31', '12,13,14,15,16');

-- --------------------------------------------------------

--
-- 表的结构 `scorecord`
--

CREATE TABLE `scorecord` (
  `pid` bigint(20) NOT NULL,
  `sid` bigint(20) NOT NULL,
  `objscore` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `subscore` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allscore` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE `student` (
  `id` bigint(20) NOT NULL,
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` char(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sex` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` char(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `classid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`id`, `account`, `name`, `sex`, `password`, `classid`) VALUES
(2, 'zal', '张爱玲', '女', 'zal', 1),
(3, 'gyq', '高雨晴', '女', 'gyq', 6),
(4, 'zcl', '郑春玲', '女', 'zcl', 4),
(5, 'ln', '黎宁', '男', 'ln', 5),
(6, 'laq', '林安琪', '女', 'laq', 2),
(8, 'wff', '魏凤凤', '女', 'wff', 3);

-- --------------------------------------------------------

--
-- 表的结构 `subdba`
--

CREATE TABLE `subdba` (
  `subid` bigint(20) NOT NULL,
  `qustion` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `refanswer` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `subdba`
--

INSERT INTO `subdba` (`subid`, `qustion`, `refanswer`) VALUES
(1, '1.数据与信息有何区别，有何联系？', '答：数据是一组对客观事物定性或定量描述的原始物理符号的集合，包括文本、图形\r\n、图像、声音等形式，也是数据库存储和加工的基本对象。信息是一种已经被加工为\r\n特定形式的数据，是对现实世界事物存在方式或运动状态的反映。\r\n'),
(2, '2.简述数据库、数据库管理系统、数据库系统的概念。\r\n\r\n', '答：数据库：简单理解就是数据的仓库，长期存储可共享，冗余小，独立性高的数据\r\n      的集合。\r\n    数据库管理系统：用来操纵和管理数据库的软件，介于用户和操作系统之间，对\r\n      数据库进行统一的管理和控制。\r\n    数据库系统：数据库系统是数据库应用系统的简称，是计算机系统引入数据库之\r\n      后的系统，由计算机、数据库、数据库管理系统、应用程序和用户组成。\r\n'),
(3, '3.数据库管理技术经历了哪几个阶段？各阶段主要特点是什么？', '答：人工管理阶段：\r\n       1.数据不能长期保存；2.系统没有专用的软件对数据进行管理；3.程序与数\r\n         据不具有独立性；4.数据无法共享。\r\n    文件系统阶段：\r\n       1.数据可以长期保存；2.程序与数据有一定的独立性；3.文件系统对数据进\r\n    行统一管理，文件形式多种多样；\r\n       4.数据冗余度大；5数据独立性低。\r\n    数据库系统阶段：\r\n       1.数据整体结构化；2.数据共享性高，冗余度高，易扩展；3.数据独立性高；\r\n    4.数据由数据库管理系统统一管理。\r\n'),
(4, '4.文件系统与数据库系统有什么本质的区别？', '答：数据库系统是将所有应用程序需要的数据按照统一的结构集成在一起，即数据\r\n的结构化。\r\n\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE `teacher` (
  `id` bigint(20) NOT NULL,
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` char(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` char(20) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`id`, `account`, `name`, `password`) VALUES
(1, 'dsl2015', '董守玲', 'dsl2015'),
(2, 'zjw2015', '张见威', 'zjw2015'),
(3, 'dsb2015', '董守斌', 'dsb2015');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classid`),
  ADD KEY `teacher_id` (`teacherid`);

--
-- Indexes for table `objdba`
--
ALTER TABLE `objdba`
  ADD PRIMARY KEY (`objid`);

--
-- Indexes for table `paper`
--
ALTER TABLE `paper`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `subdba`
--
ALTER TABLE `subdba`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account` (`account`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `class`
--
ALTER TABLE `class`
  MODIFY `classid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `objdba`
--
ALTER TABLE `objdba`
  MODIFY `objid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `paper`
--
ALTER TABLE `paper`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `student`
--
ALTER TABLE `student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `subdba`
--
ALTER TABLE `subdba`
  MODIFY `subid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 限制导出的表
--

--
-- 限制表 `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`teacherid`) REFERENCES `teacher` (`id`);

--
-- 限制表 `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `class` (`classid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;