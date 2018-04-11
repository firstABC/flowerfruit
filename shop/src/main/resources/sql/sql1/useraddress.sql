/*
Navicat MySQL Data Transfer

Source Server         : fashionShop
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : flower

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-11 16:58:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for useraddress
-- ----------------------------
DROP TABLE IF EXISTS `useraddress`;
CREATE TABLE `useraddress` (
  `ua_id` varchar(64) DEFAULT NULL,
  `userId` varchar(64) DEFAULT NULL,
  `ua_name` varchar(255) DEFAULT NULL,
  `ua_mobile` varchar(255) DEFAULT NULL,
  `ua_province` varchar(255) DEFAULT NULL,
  `ua_detal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useraddress
-- ----------------------------
