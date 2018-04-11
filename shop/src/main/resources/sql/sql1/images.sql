/*
Navicat MySQL Data Transfer

Source Server         : fashionShop
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : flower

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-11 16:58:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `im_id` varchar(64) DEFAULT NULL,
  `pathName` varchar(255) DEFAULT NULL,
  `g_id` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('cb872e66-cacb-4b6c-82ec-c6e926a6b426', '1523427835775pic1.jpg', '28a541a5-9591-4a59-b62d-cd08853f9ba2');
INSERT INTO `images` VALUES ('b638e766-ed77-4c8d-b24f-66daf40400f2', '1523427835790', '28a541a5-9591-4a59-b62d-cd08853f9ba2');
INSERT INTO `images` VALUES ('d0ec5dfb-3b12-4626-9bc0-8565728fc436', '1523427835793', '28a541a5-9591-4a59-b62d-cd08853f9ba2');
INSERT INTO `images` VALUES ('1ad57e3b-5157-4e5f-8d0a-44bea70642f5', '1523427835797', '28a541a5-9591-4a59-b62d-cd08853f9ba2');
INSERT INTO `images` VALUES ('470db28f-59b9-4cb3-9b22-bf400eec8c9b', '1523428059563pic2.jpg', '721ba58b-17c5-494c-8e09-a1683f6d6a44');
INSERT INTO `images` VALUES ('0f9527d5-b4ca-409e-81f9-c53de79668b9', '1523428059567', '721ba58b-17c5-494c-8e09-a1683f6d6a44');
INSERT INTO `images` VALUES ('f61766a2-4e27-4f00-8ed3-500b01d29c14', '1523428059572', '721ba58b-17c5-494c-8e09-a1683f6d6a44');
INSERT INTO `images` VALUES ('b731a41b-7631-411d-af3b-84913fdbbbb0', '1523428059575', '721ba58b-17c5-494c-8e09-a1683f6d6a44');
