/*
Navicat MySQL Data Transfer

Source Server         : localmysql
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : flowershop

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-03 09:34:15
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `user_id` varchar(64) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_pwd` varchar(30) NOT NULL,
  `user_phone` varchar(30) DEFAULT NULL,
  `user_address` varchar(30) DEFAULT NULL,
  `user_date` datetime DEFAULT NULL,
  `is_delete` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1ce00f8e-89c2-4732-aa2c-a16a90c55561', 'regis', '4321', '111111111', '123@163.com', '2018-03-10 13:04:02', '0');
INSERT INTO `userinfo` VALUES ('4124d1ab-277c-468a-bca7-09d9b9676a66', 'aaabc', '1111', '111114', '2222222@qq.com', '2018-04-02 14:30:12', '0');
INSERT INTO `userinfo` VALUES ('6c4baa7e-e731-4ce7-bb99-2907a08cf9ea', 'test', '333', '1111111', '顺风顺水', '2018-04-02 14:42:07', '0');
