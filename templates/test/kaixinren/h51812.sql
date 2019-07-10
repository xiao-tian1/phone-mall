/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : h51812

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-03-25 19:21:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '999 感冒灵颗粒 10g*9袋', '13.50', '5');
INSERT INTO `car` VALUES ('4', '曼秀雷敦 复方薄荷脑鼻用吸入剂 0.675g', '10.50', '1');
INSERT INTO `car` VALUES ('3', '克比奇 羚羊角胶囊 0.15g*12粒', '35.00', '1');
INSERT INTO `car` VALUES ('2', '同仁堂 感冒清热颗粒（无蔗糖） 6g*10袋（效期1911）', '12.80', '4');
INSERT INTO `car` VALUES ('16', '金诃 安儿宁颗粒 3g*12袋', '32.00', '2');
INSERT INTO `car` VALUES ('14', '可立克 复方氨酚烷胺胶囊20粒*3盒', '46.00', '1');
INSERT INTO `car` VALUES ('17', '太极 复方板蓝根颗粒 15g*25袋', '15.00', '6');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `func` varchar(255) NOT NULL,
  `cnname` varchar(255) NOT NULL,
  `pfprice` decimal(10,2) NOT NULL,
  `save` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL,
  `img6` varchar(255) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('2', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', null, null, null, '1');
INSERT INTO `goods` VALUES ('4', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('5', '曼秀雷敦 复方薄荷脑鼻用吸入剂..', '提神醒脑，缓解鼻塞', '复方薄荷脑鼻用吸入剂', '10.50', '1', '../img/b6c8ae599fa24226b130d3e328018759.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '../img/3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('6', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('7', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('8', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('9', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('10', '曼秀雷敦 复方薄荷脑鼻用吸入剂..', '提神醒脑，缓解鼻塞', '复方薄荷脑鼻用吸入剂', '10.50', '1', '../img/b6c8ae599fa24226b130d3e328018759.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '../img/3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('11', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('12', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('13', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('14', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('15', '曼秀雷敦 复方薄荷脑鼻用吸入剂..', '提神醒脑，缓解鼻塞', '复方薄荷脑鼻用吸入剂', '10.50', '1', '../img/b6c8ae599fa24226b130d3e328018759.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '../img/3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('16', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('17', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('18', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('19', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('20', '曼秀雷敦 复方薄荷脑鼻用吸入剂..', '提神醒脑，缓解鼻塞', '复方薄荷脑鼻用吸入剂', '10.50', '1', '../img/b6c8ae599fa24226b130d3e328018759.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '../img/3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('21', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('22', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('23', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('24', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('25', '曼秀雷敦 复方薄荷脑鼻用吸入剂..', '提神醒脑，缓解鼻塞', '复方薄荷脑鼻用吸入剂', '10.50', '1', '../img/b6c8ae599fa24226b130d3e328018759.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '../img/3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('26', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('27', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('28', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('29', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('30', '曼秀雷敦 复方薄荷脑鼻用吸入剂..', '提神醒脑，缓解鼻塞', '复方薄荷脑鼻用吸入剂', '10.50', '1', '../img/b6c8ae599fa24226b130d3e328018759.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '../img/3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('31', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('32', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('33', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('34', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');
INSERT INTO `goods` VALUES ('3', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('35', '曼秀雷敦 复方薄荷脑鼻用吸入剂..', '提神醒脑，缓解鼻塞', '复方薄荷脑鼻用吸入剂', '10.50', '1', '../img/b6c8ae599fa24226b130d3e328018759.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '../img/3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', '../img/b6c8ae599fa24226b130d3e328018759_178x133.jpg', '../img/5d9a93e27bae4bef96caf20e44ca4dc4_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('36', '999 感冒灵颗粒 10g*9..', '热销感冒药，家庭常备治感冒', '感冒灵冲剂', '13.50', '1.4', '../img/8bbc76422edc4b499e8218eda23748a6.jpg', '../img/8bbc76422edc4b499e8218eda23748a6_178x133.jpg', '../img/d2674a452482477a92fd3b73ccfc2505_178x133.jpg', '../img/2a4667ae0aa14803ac1aab914db405cf_178x133.jpg', '../img/22e7e9d05b4a487a8bb79aaba3ac5bf2_178x133.jpg', '../img/321b9d85419a488e8995227089cc5bd6_178x133.jpg', '1');
INSERT INTO `goods` VALUES ('37', '同仁堂 感冒清热颗粒（无蔗糖）..', '用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，??嗽咽干。（效期1911）', '感冒清热颗粒', '12.80', '3.7', '../img/6e9f486b221e430c81caecbff96cbb6d.JPG', '../img/6e9f486b221e430c81caecbff96cbb6d_178x133.JPG', '../img/ef90c414a6a04359993b808eefd6bb29_178x133.jpg', 'b6c8ae599fa24226b130d3e328018759_178x133.jpg', '3dfd317a3237444a9520f1292e7c8cee_178x133.jpg', null, '1');

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `use` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `save` varchar(255) DEFAULT NULL,
  `cnname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '999 感冒灵颗粒 10g*9袋', '解热镇痛。用于感冒引起的头痛，发热，鼻塞，流涕，咽痛', '13.50', '../img/ganmao.jpg', '1', '1.5', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('2', '同仁堂 感冒清热颗粒（无蔗糖） 6g*10袋（效期1911）', '疏风散寒，解表清热。用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，咳嗽咽干。', '12.80', '../img/ganmao2.JPG', '1', '1.7', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('3', '克比奇 羚羊角胶囊 0.15g*12粒', null, '35.00', '../img/ganmao3.jpg', '1', '1.3', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('4', '曼秀雷敦 复方薄荷脑鼻用吸入剂 0.675g', '用于感冒引起的鼻塞，气味芳香，具清凉感。其他用途：鼻子通气不适、空气混浊、精神萎靡时可适量使用。', '10.50', '../img/ganmao4.jpg', '1', '1.8', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('5', '太极 感冒清热颗粒 12g*9袋', '疏风散寒，解表清热。用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，咳嗽咽干。', '13.80', '../img/ganmao5.JPG', '1', '12', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('6', '太极 感冒清热颗粒 12g*9袋', '疏风散寒，解表清热。用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，咳嗽咽干。', '15.00', '../img/ganmao6.JPG', '1', '2.3', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('7', '安药 午时茶颗粒 6g*20袋', '祛风解表，化湿和中。用于外感风寒、内伤食积证，症见恶寒发热、头痛身楚、胸脘满闷、恶心呕吐、腹痛腹泻。', '15.80', '../img/ganmao7.jpg', '1', '5.6', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('8', '宁宁 正柴胡饮颗粒 10g*6袋', '表散风寒，解热止痛。用于外感风寒及流行性感冒初起等。', '13.80', '../img/ganmao8.png', '1', '7.8', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('9', '欧意 感冒清热软胶囊 0.65g*24粒 疏风散寒，解表清热。用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，咳嗽咽干。', null, '15.80', '../img/ganmao9.jpg', '1', '2.3', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('10', '桑海 维C银翘片18片（效期1909，仅6盒多拍不发）', null, '0.99', '../img/ganmao.jpg', '1', '4.6', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('11', '可立克 复方氨酚烷胺胶囊20粒', '用于缓解普通感冒及流行性感冒引起的发热、头痛、鼻塞、咽痛等症状，也可用于流行性感冒的预防和治疗。', '16.60', '../img/ganmao2.jpg', '1', '1.5', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('12', '福森 双黄连口服液 10ml*6支', '疏风解表，清热解毒。用于外感风热所致的感冒，症见发热、咳嗽、咽痛。', '18.00', '../img/ganmao3.jpg', '1', '1.6', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('13', '力克舒 复方银翘氨敏胶囊 24粒（效期1911）', '适用于缓解普通感冒及流行性感冒引起的发热、头痛、四肢酸痛、打喷嚏、流鼻涕、鼻塞、咽痛、咳嗽口干等症状。', '9.80', '../img/ganmao4.jpg', '1', '1.8', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('14', '可立克 复方氨酚烷胺胶囊20粒*3盒', '用于缓解普通感冒及流行性感冒引起的发热、头痛、鼻塞、咽痛等症状，也可用于流行性感冒的预防和治疗。', '46.00', '../img/ganmao5.jpg', '1', '1.8', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('15', '神奇 枇杷止咳胶囊 0.25g*24粒/盒（仅7盒多拍不发） ', null, '12.90', '../img/ganmao6.jpg', '1', '1.5', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('16', '金诃 安儿宁颗粒 3g*12袋', null, '32.00', '../img/ganmao7.jpg', '1', '1.4', '感冒灵冲剂');
INSERT INTO `shop` VALUES ('17', '太极 复方板蓝根颗粒 15g*25袋', '清热解毒，凉血。用于风热感冒，咽喉肿痛', '15.00', '../img/ganmao8.png', '1', '10.2', '感冒灵冲剂');

-- ----------------------------
-- Table structure for zhuce
-- ----------------------------
DROP TABLE IF EXISTS `zhuce`;
CREATE TABLE `zhuce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `psw` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuce
-- ----------------------------
INSERT INTO `zhuce` VALUES ('1', 'ojbk123', 'a123456');
INSERT INTO `zhuce` VALUES ('2', 'qaz123', 'a123456');
INSERT INTO `zhuce` VALUES ('3', 'qw1234', 'z123456');
INSERT INTO `zhuce` VALUES ('4', 'a123456', 'b123456');
INSERT INTO `zhuce` VALUES ('7', 'a789456', 'a789456');
INSERT INTO `zhuce` VALUES ('6', 'a1234567', 'a1234567');
INSERT INTO `zhuce` VALUES ('8', 'qwas123', 'qwas123');
INSERT INTO `zhuce` VALUES ('9', 'qw123456', 'qw1235456');
INSERT INTO `zhuce` VALUES ('10', 'dsad456', 'dsad456');
INSERT INTO `zhuce` VALUES ('14', 'a843379451', 'qw1234');
INSERT INTO `zhuce` VALUES ('32', 'q12345', 'q12345');
INSERT INTO `zhuce` VALUES ('29', 'sa1234', 'as1234');
INSERT INTO `zhuce` VALUES ('30', 'qwe123', 'qwe123');
SET FOREIGN_KEY_CHECKS=1;
