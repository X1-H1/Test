/*
MySQL Data Transfer
Source Host: localhost
Source Database: tushuguan
Target Host: localhost
Target Database: tushuguan
Date: 2010-5-19 22:55:27
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_book
-- ----------------------------
CREATE TABLE `t_book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) default NULL,
  `book_isbn` varchar(255) default NULL,
  `book_zuozhe` varchar(255) default NULL,
  `book_chuban` varchar(255) default NULL,
  `book_jiage` varchar(255) default NULL,
  `book_one1` varchar(255) default NULL,
  `book_one2` varchar(255) default NULL,
  `book_one3` varchar(255) default NULL,
  `book_one4` varchar(255) default NULL,
  `book_one5` int(11) default NULL,
  `book_one6` int(11) default NULL,
  `book_one7` date default NULL,
  `book_one8` date default NULL,
  PRIMARY KEY  (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_borrow
-- ----------------------------
CREATE TABLE `t_borrow` (
  `borrow_id` int(11) NOT NULL,
  `borrow_bookId` int(11) default NULL,
  `borrow_bookName` varchar(255) default NULL,
  `borrow_userId` int(11) default NULL,
  `borrow_userName` varchar(255) default NULL,
  `borrow_shuliang` varchar(255) default NULL,
  `borrow_start` varchar(255) default NULL,
  `borrow_end` varchar(255) default NULL,
  `borrow_one1` varchar(255) default NULL,
  `borrow_one2` varchar(255) default NULL,
  `borrow_one3` varchar(255) default NULL,
  `borrow_one4` datetime default NULL,
  `borrow_one5` datetime default NULL,
  `borrow_one6` bigint(20) default NULL,
  `borrow_one7` bigint(20) default NULL,
  `borrow_one8` varchar(255) default NULL,
  PRIMARY KEY  (`borrow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) default NULL,
  `user_pw` varchar(255) default NULL,
  `user_type` int(11) default NULL,
  `user_one2` varchar(255) default NULL,
  `user_one3` int(11) default NULL,
  `user_one4` int(11) default NULL,
  `user_one5` varchar(255) default NULL,
  `user_one6` varchar(255) default NULL,
  `user_one7` varchar(255) default NULL,
  `user_one8` varchar(255) default NULL,
  `user_one9` varchar(255) default NULL,
  `user_one10` varchar(255) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_book` VALUES ('1', '计算机科学技术', '20029-22', '刘光亮', '青岛大学出版社', '232', null, null, null, null, '222', null, null, null);
INSERT INTO `t_book` VALUES ('2', '21天精通java', '232323', '流光里', '邮电出版社', '34', null, null, null, null, '100', null, null, null);
INSERT INTO `t_book` VALUES ('3', 'c语言入门', '434343433', '唐国强', '邮电出版处', '33', null, null, null, null, '122', null, null, null);
INSERT INTO `t_book` VALUES ('4', 'c语言入门', 'erere', 'l刘光亮', '邮电出版社', '33', null, null, null, null, '333', null, null, null);
INSERT INTO `t_book` VALUES ('5', 'java编程思想', '4343433', '刘光亮', '邮电出版社', '33', null, null, null, null, '33', null, null, null);
INSERT INTO `t_book` VALUES ('6', 'java编程思想', '34343', '刘光亮', '邮电出版社', '55', null, null, null, null, '555', null, null, null);
INSERT INTO `t_book` VALUES ('7', 'flash动画制作', '4545', '踢踢腿', '邮电出版社', '44', null, null, null, null, '44', null, null, null);
INSERT INTO `t_book` VALUES ('8', 'flash动画制作 ', '666666', '666666', '666666', '666666', null, null, null, null, '666666', null, null, null);
INSERT INTO `t_book` VALUES ('9', '666666', '666666', '666666', '666666', '666666', null, null, null, null, '666666', null, null, null);
INSERT INTO `t_book` VALUES ('10', '666666', '666666', '666666', '666666', '666666', null, null, null, null, '666666', null, null, null);
INSERT INTO `t_book` VALUES ('11', '666666', '666666', '666666', '666666', '666666', null, null, null, null, '666666', null, null, null);
INSERT INTO `t_book` VALUES ('12', '666666', '666666', '666666', '666666', '666666', null, null, null, null, '666666', null, null, null);
INSERT INTO `t_borrow` VALUES ('1', '1', '计算机科学技术', '2', '44', '33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_borrow` VALUES ('2', '1', '计算机科学技术', '2', '44', '33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_borrow` VALUES ('3', '1', '计算机科学技术', '2', '44', '33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_borrow` VALUES ('4', '1', '计算机科学技术', '2', '44', '44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('1', 't', 't', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('2', '44', '44', '1', null, null, null, '44', '44', '44d', null, null, null);
