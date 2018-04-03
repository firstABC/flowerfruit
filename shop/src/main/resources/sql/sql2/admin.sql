/*
Navicat MySQL Data Transfer

Source Server         : localmysql
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : flowershop

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-03 11:43:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` varchar(64) DEFAULT NULL,
  `admin_name` varchar(30) DEFAULT NULL,
  `admin_pwd` varchar(30) DEFAULT NULL,
  `is_delete` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('9600f10e-b495-42d6-91dd-820bd918321c', 'testa', '111222', '0');
INSERT INTO `admin` VALUES ('1237be91-9ca2-4c0d-ac21-1fbcef87a754', 'teata', '5555', '0');
