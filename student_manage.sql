/*
Navicat MySQL Data Transfer

Source Server         : 3232
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : student_manage

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2017-08-03 11:50:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL DEFAULT '0',
  `username` text,
  `password` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');
INSERT INTO `admin` VALUES ('2', 'admin2', 'admin2');
INSERT INTO `admin` VALUES ('3', 'admin3', 'admin2');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `classid` int(11) DEFAULT NULL,
  `classname` text,
  `major` text,
  `membernum` int(11) DEFAULT NULL,
  `instructor` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('101', '电子1班', '电子信息', '29', '赵一');
INSERT INTO `class` VALUES ('102', '电子2班', '电子信息', '30', '钱二');
INSERT INTO `class` VALUES ('103', '电子3班', '电子信息', '30', '孙三');
INSERT INTO `class` VALUES ('201', '经管1班', '经济管理', '30', '李四');
INSERT INTO `class` VALUES ('302', '软工2班', '软件工程', '30', '周五');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL DEFAULT '0',
  `object` text,
  `teacher` text,
  `coursetime` text,
  `courseaddress` text,
  `period` text,
  `credit` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '大物', '吴六', '大一下', '主楼102', '56', '4');
INSERT INTO `course` VALUES ('2', '高数', '郑七', '大二上', '主楼307', '64', '5');
INSERT INTO `course` VALUES ('3', 'c语言', '王八', '大三上', '主楼109', '64', '3');
INSERT INTO `course` VALUES ('4', 'C++', '冯九', '大四下', '主楼103', '56', '4');
INSERT INTO `course` VALUES ('5', '英语', '陈十', '大四上', '主楼101', '56', '4');

-- ----------------------------
-- Table structure for fee
-- ----------------------------
DROP TABLE IF EXISTS `fee`;
CREATE TABLE `fee` (
  `id` bigint(20) DEFAULT NULL,
  `name` text,
  `banji` text,
  `major` text,
  `term` text,
  `fee` text,
  `arrearage` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fee
-- ----------------------------
INSERT INTO `fee` VALUES ('1001', '褚十一', '电子1班', '电子信息', '大一上', '5550元', '0元');
INSERT INTO `fee` VALUES ('1002', '卫十二', '电子2班', '电子信息', '大二上', '5550元', '0元');
INSERT INTO `fee` VALUES ('1003', '蒋十三', '电子3班', '电子信息', '大三下', '5550元', '0元');
INSERT INTO `fee` VALUES ('1004', '沈十四', '经管1班', '经济管理', '大四上', '5550元', '0元');
INSERT INTO `fee` VALUES ('1005', '韩十五', '软工2班', '软件工程', '大一上', '5550元', '0元');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` bigint(20) DEFAULT NULL,
  `time` text,
  `object` text,
  `score` text,
  `banji` text,
  `teacher` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1001', '大一下', '大物', '81', '101', '吴六');
INSERT INTO `score` VALUES ('1002', '大二上', '高数', '89', '102', '郑七');
INSERT INTO `score` VALUES ('1003', '大三上', 'c语言', '100', '103', '王八');
INSERT INTO `score` VALUES ('1004', '大四下', 'C++', '83', '201', '冯九');
INSERT INTO `score` VALUES ('1005', '大四上', '英语', '98', '302', '陈十');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint(11) NOT NULL,
  `name` text,
  `sex` text,
  `age` text,
  `major` text,
  `banji` int(11) DEFAULT NULL,
  `address` text,
  `phonenumber` text,
  `beizhu` text,
  `password` text,
  `dormnum` text,
  `bednum` text,
  `award` text,
  `punish` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1001', '褚十一', '男', '19', '电子信息', '101', '上海', '15912341234', '学生', '123456', '304', '1', '无', '记过');
INSERT INTO `student` VALUES ('1002', '卫十二', '男', '18', '电子信息', '102', '南昌', '14612341234', '学生', '123456', '301', '3', '数学竞赛一等奖', '无');
INSERT INTO `student` VALUES ('1003', '蒋十三', '女', '19', '电子信息', '103', '广东', '18112341234', '学生', '123456', '207', '5', '运动会跳远第一', '无');
INSERT INTO `student` VALUES ('1004', '沈十四', '女', '18', '经济管理', '201', '河北', '13512341234', '学生', '123456', '207', '2', '学习积极分子', '无');
INSERT INTO `student` VALUES ('1005', '韩十五', '男', '18', '经济管理', '302', '南昌', '15012341234', '学生', '123456', '301', '4', '先进班干部', '无');
