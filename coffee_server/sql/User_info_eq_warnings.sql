/*
Navicat MySQL Data Transfer

Source Server         : 176.23.4.231
Source Server Version : 50725
Source Host           : 176.23.4.231:3306
Source Database       : Coffee_System

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-04-21 16:45:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for User_info_eq_warnings
-- ----------------------------
DROP TABLE IF EXISTS `User_info_eq_warnings`;
CREATE TABLE `User_info_eq_warnings` (
  `MACHINE_ID` int(11) DEFAULT NULL,
  `alter_msg` varchar(128) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
