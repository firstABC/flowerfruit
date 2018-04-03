/*
Navicat MySQL Data Transfer

Source Server         : localmysql
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : flowershop

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-03 09:34:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` varchar(64) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `goods_id` varchar(64) DEFAULT NULL,
  `comment_msg` varchar(200) DEFAULT NULL,
  `comment_type` varchar(200) DEFAULT NULL,
  `comment_date` datetime DEFAULT NULL,
  `is_delete` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('7092683d-14ec-4729-add0-3dbaa9ba24a4', '4124d1ab-277c-468a-bca7-09d9b9676a66', 'test', 'gggggg', '2', '2018-03-10 00:10:47', '0');
INSERT INTO `comment` VALUES ('1ad1d16d-611a-40b7-8c47-d0aa2e8cb29f', '4124d1ab-277c-468a-bca7-09d9b9676a66', 'test', 'llll', '1', '2018-03-10 00:12:48', '0');
INSERT INTO `comment` VALUES ('93bd2a99-c5d7-431f-8722-59de06e69fb4', '4124d1ab-277c-468a-bca7-09d9b9676a66', 'test', 'llllllll99', '1', '2018-03-10 00:15:01', '0');
INSERT INTO `comment` VALUES ('d2269317-170c-4189-b5d5-40c9cca2c6a7', '4124d1ab-277c-468a-bca7-09d9b9676a66', 'test', 'ooooo', '1', '2018-03-10 00:39:30', '0');
INSERT INTO `comment` VALUES ('8093d6ff-af1d-4b17-bad4-584d4ea3861b', '4124d1ab-277c-468a-bca7-09d9b9676a66', 'test', 'yyyyyyyy', '1', '2018-03-10 02:33:10', '0');
INSERT INTO `comment` VALUES ('7bde4f5a-d52d-4ab7-9b02-2e9b5cd72a95', '1ce00f8e-89c2-4732-aa2c-a16a90c55561', 'test', 'hhhhhhhhhhhh', '1', '2018-03-10 13:09:27', '0');
