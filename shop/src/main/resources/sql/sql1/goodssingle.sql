/*
Navicat MySQL Data Transfer

Source Server         : fashionShop
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : flower

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-11 16:58:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodssingle
-- ----------------------------
DROP TABLE IF EXISTS `goodssingle`;
CREATE TABLE `goodssingle` (
  `gs_id` varchar(64) DEFAULT NULL,
  `gs_price` varchar(10) DEFAULT NULL,
  `gs_type` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodssingle
-- ----------------------------
