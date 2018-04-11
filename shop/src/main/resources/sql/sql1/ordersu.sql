/*
Navicat MySQL Data Transfer

Source Server         : fashionShop
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : flower

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-11 16:58:40
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

-- ----------------------------
-- Records of ordersu
-- ----------------------------
INSERT INTO `ordersu` VALUES ('1', '2', '3', '4', '5', '6', '7', '8');
INSERT INTO `ordersu` VALUES ('818c94eb-9bcd-42f0-8c95-97fa422b5971', '28a541a5-9591-4a59-b62d-cd08853f9ba2', '1', '11-11-11', '88.0', 'A', null, '111');
