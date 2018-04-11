/*
Navicat MySQL Data Transfer

Source Server         : fashionShop
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : flower

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-11 16:58:11
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
  `g_price` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('28a541a5-9591-4a59-b62d-cd08853f9ba2', '新品一', null, '哈哈哦哦哦 这里是规格说明 \r\n这里是规格说明\r\n这里是规格说明\r\n这里是规格说明\r\n这里是规格说明\r\n', '哦哦哦   推荐理由推荐理由\r\n推荐理由\r\n推荐理由\r\n推荐理由\r\n推荐理由', '0', '3', '88');
INSERT INTO `goods` VALUES ('721ba58b-17c5-494c-8e09-a1683f6d6a44', '新品二', null, '规格说明\r\n规格说明\r\n规格说明\r\n规格说明\r\n规格说明', '推荐理由\r\n推荐理由\r\n推荐理由', '0', '3', '99');
