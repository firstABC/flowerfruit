/*
Navicat MySQL Data Transfer

Source Server         : fashionShop
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : flower

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-21 20:21:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ordersu
-- ----------------------------
DROP TABLE IF EXISTS `ordersu`;
CREATE TABLE `ordersu` (
  `or_id` varchar(64) DEFAULT NULL,
  `g_id` varchar(64) DEFAULT NULL,
  `or_number` int(3) DEFAULT NULL,
  `or_date` varchar(255) DEFAULT NULL,
  `or_price` varchar(10) DEFAULT NULL,
  `or_status` varchar(2) DEFAULT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `ua_id` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
