/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : xjd

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-15 12:01:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for xjd_by
-- ----------------------------
DROP TABLE IF EXISTS `xjd_by`;
CREATE TABLE `xjd_by` (
  `Gno` char(3) NOT NULL,
  `Sno` char(9) NOT NULL,
  `Gtime` date NOT NULL,
  `Gcredit` smallint(6) NOT NULL,
  PRIMARY KEY (`Gno`),
  UNIQUE KEY `bysno` (`Sno`),
  CONSTRAINT `xjd_by_ibfk_1` FOREIGN KEY (`Sno`) REFERENCES `xjd_student` (`Sno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xjd_by
-- ----------------------------
INSERT INTO `xjd_by` VALUES ('01', '201315121', '2017-06-02', '35');
INSERT INTO `xjd_by` VALUES ('02', '201315122', '2017-06-04', '35');

-- ----------------------------
-- Table structure for xjd_student
-- ----------------------------
DROP TABLE IF EXISTS `xjd_student`;
CREATE TABLE `xjd_student` (
  `Sno` char(9) NOT NULL,
  `Sname` char(10) DEFAULT NULL,
  `Ssex` char(2) NOT NULL,
  `Sbirth` date NOT NULL,
  `Snative` char(10) NOT NULL,
  `Sdept` char(20) NOT NULL,
  `Sent` date NOT NULL,
  PRIMARY KEY (`Sno`),
  UNIQUE KEY `stusno` (`Sno`),
  UNIQUE KEY `zxsname` (`Sname`),
  UNIQUE KEY `stusname` (`Sname`),
  UNIQUE KEY `sname` (`Sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xjd_student
-- ----------------------------
INSERT INTO `xjd_student` VALUES ('201315121', '张立', '男', '1994-06-07', '肇庆', '环境学院', '2013-09-04');
INSERT INTO `xjd_student` VALUES ('201315122', '郑晨', '男', '1995-09-23', '广州', '计算机学院', '2013-09-03');
INSERT INTO `xjd_student` VALUES ('201415131', '陈强', '男', '1995-03-13', '揭阳', '外国语学院', '2014-09-05');
INSERT INTO `xjd_student` VALUES ('201515121', '李勇', '男', '1996-02-05', '广州', '计算机学院', '2015-09-01');
INSERT INTO `xjd_student` VALUES ('201515122', '刘晨', '女', '1996-05-07', '佛山', '信息工程', '2015-09-02');
INSERT INTO `xjd_student` VALUES ('201515123', '王敏', '女', '1997-08-09', '汕头', '计算机学院', '2015-09-01');
INSERT INTO `xjd_student` VALUES ('201515131', '肖经达', '男', '1996-07-02', '茂名', '计算机学院', '2015-09-01');
INSERT INTO `xjd_student` VALUES ('201615121', '吴昊', '男', '1998-10-15', '汕头', '计算机学院', '2016-09-01');
INSERT INTO `xjd_student` VALUES ('201615122', '韩丽', '女', '1997-01-06', '广州', '管理学院', '2016-09-03');
INSERT INTO `xjd_student` VALUES ('201715121', '李佳', '女', '1997-08-06', '湛江', '信息学院', '2017-09-06');

-- ----------------------------
-- Table structure for xjd_user
-- ----------------------------
DROP TABLE IF EXISTS `xjd_user`;
CREATE TABLE `xjd_user` (
  `Yname` char(3) NOT NULL,
  `Ypass` char(9) NOT NULL,
  `Ytype` char(4) DEFAULT NULL,
  PRIMARY KEY (`Yname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xjd_user
-- ----------------------------
INSERT INTO `xjd_user` VALUES ('ad', '123456', '1');
INSERT INTO `xjd_user` VALUES ('sh', '123456', '0');
INSERT INTO `xjd_user` VALUES ('st', '123456', '0');
INSERT INTO `xjd_user` VALUES ('xjd', '123456', '1');

-- ----------------------------
-- Table structure for xjd_zx
-- ----------------------------
DROP TABLE IF EXISTS `xjd_zx`;
CREATE TABLE `xjd_zx` (
  `Bno` char(3) NOT NULL,
  `Sno` char(9) NOT NULL,
  `Btime` date NOT NULL,
  `Btype` char(4) NOT NULL,
  PRIMARY KEY (`Bno`),
  UNIQUE KEY `zxsno` (`Sno`),
  CONSTRAINT `xjd_zx_ibfk_1` FOREIGN KEY (`Sno`) REFERENCES `xjd_student` (`Sno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xjd_zx
-- ----------------------------
INSERT INTO `xjd_zx` VALUES ('01', '201415131', '2017-03-03', '休学');
INSERT INTO `xjd_zx` VALUES ('02', '201715121', '2017-09-07', '转学');
INSERT INTO `xjd_zx` VALUES ('03', '201615122', '2017-06-02', '休学');

-- ----------------------------
-- View structure for gra
-- ----------------------------
DROP VIEW IF EXISTS `gra`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gra` AS select `xjd_by`.`Sno` AS `Sno`,`xjd_student`.`Sname` AS `Sname`,`xjd_by`.`Gtime` AS `Gtime`,`xjd_by`.`Gcredit` AS `Gcredit` from (`xjd_student` join `xjd_by`) where (`xjd_student`.`Sno` = `xjd_by`.`Sno`) ;

-- ----------------------------
-- View structure for student
-- ----------------------------
DROP VIEW IF EXISTS `student`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student` AS select `xjd_student`.`Sno` AS `Sno`,`xjd_student`.`Sname` AS `Sname`,`xjd_student`.`Ssex` AS `Ssex`,`xjd_student`.`Sbirth` AS `Sbirth`,`xjd_student`.`Snative` AS `Snative`,`xjd_student`.`Sdept` AS `Sdept`,`xjd_student`.`Sent` AS `Sent` from `xjd_student` ;

-- ----------------------------
-- View structure for zx
-- ----------------------------
DROP VIEW IF EXISTS `zx`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zx` AS select `xjd_zx`.`Sno` AS `Sno`,`xjd_student`.`Sname` AS `Sname`,`xjd_zx`.`Btime` AS `Btime`,`xjd_zx`.`Btype` AS `Btype` from (`xjd_student` join `xjd_zx`) where (`xjd_student`.`Sno` = `xjd_zx`.`Sno`) ;
DROP TRIGGER IF EXISTS `T3`;
DELIMITER ;;
CREATE TRIGGER `T3` BEFORE INSERT ON `xjd_by` FOR EACH ROW begin
        if
new.Gcredit <32 
        then
            delete from xjd_by where Gcredit = new.Gcredit;
        end if;
    end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `T4`;
DELIMITER ;;
CREATE TRIGGER `T4` BEFORE UPDATE ON `xjd_by` FOR EACH ROW begin
        if
new.Gcredit <32
        then
            delete from xjd_by where Gcredit = new.Gcredit;
        end if;
    end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `T1`;
DELIMITER ;;
CREATE TRIGGER `T1` BEFORE INSERT ON `xjd_student` FOR EACH ROW begin
        if
new.Ssex <> '男' 
        and new.Ssex <> '女' then
            delete from xjd_student where Ssex = new.Ssex;
        end if;
    end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `T2`;
DELIMITER ;;
CREATE TRIGGER `T2` BEFORE UPDATE ON `xjd_student` FOR EACH ROW begin
        if
new.Ssex <> '男' 
        and new.Ssex <> '女' then
            delete from xjd_student where Ssex = new.Ssex;
        end if;
    end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `T5`;
DELIMITER ;;
CREATE TRIGGER `T5` BEFORE INSERT ON `xjd_zx` FOR EACH ROW begin
        if
new.Btype <> '转学' 
        and new. Btype <> '休学' then
            delete from xjd_zx where Btype = new. Btype;
        end if;
    end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `T6`;
DELIMITER ;;
CREATE TRIGGER `T6` BEFORE UPDATE ON `xjd_zx` FOR EACH ROW begin
        if
new. Btype <> '转学' 
        and new. Btype <> '休学' then
            delete from xjd_zx where Btype = new. Btype;
        end if;
    end
;;
DELIMITER ;
