/*
Navicat MySQL Data Transfer

Source Server         : fashionShop
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : flower

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-21 20:21:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `g_id` varchar(64) DEFAULT NULL,
  `g_title` varchar(255) DEFAULT NULL,
  `g_detal` varchar(255) DEFAULT NULL,
  `g_parameter` varchar(255) DEFAULT NULL,
  `g_recommend` varchar(255) DEFAULT NULL,
  `g_view` int(11) DEFAULT NULL,
  `g_status` int(2) DEFAULT NULL,
  `g_price` varchar(10) DEFAULT NULL,
  `hot_index` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
