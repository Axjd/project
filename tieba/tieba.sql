/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : tieba

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-08 15:47:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `author` varchar(10) DEFAULT NULL,
  `title` varchar(40) NOT NULL,
  `content` longtext,
  `posttime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '马少鹏', 'PHP是这个世界上最好的语言', '网上有很多学习PHP的资源，比如CSDN，吴胜利用课余时间自学了PHP，并自己开发了一个网站，有兴趣的同学可以去访问看看哦！www.w3cschool.com', '2018-07-19 23:47:33', '2');
INSERT INTO `post` VALUES ('2', '肖经达', 'JSP的相对路径深入研究（多次完善）', '要在/jsp/index.jsp文件使用图片，如何计算相对路径？ 经过Servlet,struts转发后又如何计算相对路径?第一种情况:直接访问JSP文件,URL是http://localhost:8080/jsp/index.jsp', '2018-07-20 23:38:14', '1');
INSERT INTO `post` VALUES ('3', '吴胜', '本网站调试地址', '<p>\r\n	http://localhost:8084/bbs/login!showAll.action</p>\r\n<p>\r\n	调试，</p>\r\n<p>\r\n	发布。</p>\r\n<p>\r\n	http://localhost:8084/bbs/login!showAll.action</p>\r\n<p>\r\n	调试，</p>\r\n<p>\r\n	发布。</p>\r\nhttp://localhost:8084/bbs/login!showAll.action\r\n\r\n调试，\r\n\r\n发布。\r\n浏览器寻找方式: 域名+/Context path/images/go.gif ，可找到。', '2018-07-19 23:45:58', '5');
INSERT INTO `post` VALUES ('4', '吴泽楠', '德国战败', '德国惜败韩国，赌狗末日？下次再战', '2018-07-12 23:43:36', '6');
INSERT INTO `post` VALUES ('5', '肖经达', '组队吃鸡', '412最有活力小组，中午组队吃鸡吗？**', '2018-07-10 23:50:21', '1');
INSERT INTO `post` VALUES ('6', '张国政', 'ios社团招新', 'iOS社团招新啦，暑假有免费夏令营，在娱乐中学习，快来报名吧！！！', '2018-07-04 23:52:58', '4');
INSERT INTO `post` VALUES ('7', '许伟杰', '软4团支书通知', '团员缴费，积极分子党课安排，推优开会，预备党员考核。。。', '2018-07-05 23:56:09', '3');
INSERT INTO `post` VALUES ('9', '肖经达', '巴西afa', '爱迪生多', '2018-07-04 00:00:00', '2');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `author` varchar(10) DEFAULT NULL,
  `uid` int(5) DEFAULT NULL,
  `content` longtext NOT NULL,
  `replytime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pid` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `urid` (`uid`),
  KEY `pid` (`pid`),
  CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `urid` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('14', '张国政', null, '谢谢楼主分享！！', '2018-07-20 00:04:22', '1');
INSERT INTO `reply` VALUES ('15', '吴泽楠', null, '谢谢楼主', '2018-07-20 00:04:02', '1');
INSERT INTO `reply` VALUES ('16', '吴胜', null, '学习一波', '2018-07-20 00:03:51', '1');
INSERT INTO `reply` VALUES ('17', '肖经达', null, 'jsp学习', '2018-07-20 00:00:00', '2');
INSERT INTO `reply` VALUES ('18', '吴胜', null, '你好', '2018-07-19 00:05:08', '2');
INSERT INTO `reply` VALUES ('19', '张国政', null, 'ios发一波', '2018-07-18 00:06:21', '2');
INSERT INTO `reply` VALUES ('20', '肖经达', null, '来吃鸡啦', '2018-07-19 00:07:18', '5');
INSERT INTO `reply` VALUES ('21', '张国政', null, '来呀', '2018-07-19 00:07:58', '5');
INSERT INTO `reply` VALUES ('22', '马少鹏', null, '组队搞起', '2018-07-19 00:08:36', '5');
INSERT INTO `reply` VALUES ('23', '肖经达', null, '包过吗', '2018-07-12 00:00:00', '6');
INSERT INTO `reply` VALUES ('25', '肖经达', null, '**', '2018-07-18 00:00:00', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` char(2) DEFAULT NULL,
  `photopath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '肖经达', '123', '男', null);
INSERT INTO `user` VALUES ('2', '马少鹏', '123', '男', null);
INSERT INTO `user` VALUES ('3', '许伟杰', '123', '男', null);
INSERT INTO `user` VALUES ('4', '张国政', '123', '男', null);
INSERT INTO `user` VALUES ('5', '吴胜', '123', '男', null);
INSERT INTO `user` VALUES ('6', '吴泽楠', '123', '男', null);
INSERT INTO `user` VALUES ('10', '杨劲', '123', '男', null);
