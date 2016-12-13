/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ELearningAcademic

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-12-14 00:30:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for Account
-- ----------------------------
DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account` (
  `User_Name` varchar(50) NOT NULL,
  `Active` bit(1) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `User_Role` varchar(50) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`User_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of Account
-- ----------------------------
INSERT INTO `Account` VALUES ('admin_account', '\0', '$2a$10$qPSvlcoEDlHuctWgyrf7dedJd8cShuBVKODb6.86HKAEcl2DauRW2', 'ADMIN', 'tran thanh tam', '45 Ly thuong kiet', 'bcd@yahoo.com', '+841677533388');
INSERT INTO `Account` VALUES ('buidoanngoc', '', '$2a$10$s.J5CiY3x/M7IR.i4ETabeWo0q91mGUPMtBp70m/h09IvXh/Scu7m', 'STUDENT', 'hung bui', '12 lang thuong', 'buiduchung.bkhn@gmail.com', '+841677533388');
INSERT INTO `Account` VALUES ('changtraiyeudoi171288', '', '$2a$10$JY.M4NLAc87E.SU87KFJr.BMMuzXfLJGCL.AEQbyHgJgdUkxY4eTu', 'STUDENT', 'Bui Duc Hung', '34 Duong Lang, quan Dong Da, Ha Noi', 'buiduchung.bkhn@gmail.com', '+841677533388');
INSERT INTO `Account` VALUES ('employee1', '', '$2a$10$/7WGsKBWDzxZAAW5q7K/cuJaLONGop5.Mkuo2sfESBVAfbHBzzLhe', 'STUDENT', 'bui doan ngoc', '6b Tho nhuom', 'abc@gmail.com', '+841677533388');
INSERT INTO `Account` VALUES ('hungbui', '', '$2a$10$imNlFGvKq4eOgUPwLnYbr.LRsQLesV2JA2/mIqjMNK0JN.k0L9jDq', 'STUDENT', 'bui duc hung dep trai', '92c/1, ngo 1194 duong Lang, quan Dong Da', 'buiduchung.bkhn@testing.com', '+8412345678');
INSERT INTO `Account` VALUES ('hungbui94', '', '$2a$10$peygZanH5VzOIkoR34Gtw.rrGU4GGNOlc.ExEeUiNACAD.SjjPUM6', 'STUDENT', 'hung bui', 'lang thuong', 'buiduchung.bkhn@gmail.com', '+841677533388');
INSERT INTO `Account` VALUES ('mentor_1', '', '$2a$10$fjUMURgMtRadfBAQngnjXOhDlj1UIn3Vdb5Wb3ploHecusx9P00t2', 'MENTOR', 'hung nguyen', '45/232 lang thuong', 'cpp@hotmail.com', '+841677533388');
INSERT INTO `Account` VALUES ('mentor_2', '', '$2a$10$xNIGAQiKxS8vUnfG9Kujxes.jL2R05kkDq.MuFYScSt9.Vwdzup.6', 'MENTOR', 'nguyen van b', '3445/343 Chua Lang', 'java@hotmail.com', '+841677533388');
INSERT INTO `Account` VALUES ('mentor_3', '', '$2a$10$qaw9NKoU.K46YPw8o1Z58u5TgXh6.QeD5HeNHVKOotFiLo0VcNZ9C', 'MENTOR', 'nguyen van a', '565 Phan Dinh Phung', 'bvc@gmail.com', '+841677533388');
INSERT INTO `Account` VALUES ('mentor_4', '', '$2a$10$kCHaUL/NEChkxrTfWOMkTO0JPNav4Wb5h26jUi9abwFiqFW7eGvg6', 'MENTOR', 'hung bui', 'lang thuong', 'buiduchung.bkhn@gmail.com', '1677533388');
INSERT INTO `Account` VALUES ('mentor_5', '', '$2a$10$cqQuirj9uultcnuTGWCWHeLVJtPL3e/MoAlXteMXur.UBlB/CTPZu', 'MENTOR', 'bui duc hung dep trai', '92c/1, ngo 1194 duong Lang, quan Dong Da', 'buiduchung.bkhn@testing.com', '+8412345678');
INSERT INTO `Account` VALUES ('mod1_account', '', '$2a$10$yk/zZ9gCI084aVVJdbIdbe536JtKZOlynms1Uc47ItK9rRZhw46LC', 'MODERATOR', 'HUNG BUI', '12 cua nam', 'sdk@skymail.com', '+841677533388');
INSERT INTO `Account` VALUES ('mod2_account', '', '$2a$10$Ci8GDngDo9iiB02dR3NSBu0CV3q3qlBtyxLU312W/9IRzoC3CK/B.', 'MODERATOR', 'hung thanh', 'ngo 3423 lang thuong', 'buiduchung.bkhn@gmail.com', '+841677533388');
INSERT INTO `Account` VALUES ('mod3_account', '', '$2a$10$pBe5h9JZcfkpGQlzkMt2U.ACo5.f61UkfYUd6j1.SpMs7l9GLiw0.', 'MODERATOR', 'hung tran', '342/343 lang thuong', 'bkhn@gmail.com', '+841677533388');
INSERT INTO `Account` VALUES ('sadekyo1234', '', '$2a$10$pZGA/Gqo6IgWU/dh/GL1WevExwqyxgi1yqdQsc6ZeoqnxRTyGxhcy', 'STUDENT', 'Bui Duc Hung', '92c/1 chua Lang, Dong Da, Ha Noi', 'buiduchung.bkhn@gmail.com', '01677533389');
INSERT INTO `Account` VALUES ('sadekyo1294', '', '$2a$10$yLLIsEsdLGaHvJV38ccA.O4aNnZJtfjQ1KKSpkQLKTugb/GLFFGhK', 'STUDENT', 'Bui Duc Hung ', 'so 1 dai co viet', 'buiduchung.bkhn@gmail.com', '1677533388');
INSERT INTO `Account` VALUES ('sadekyo94', '', '$2a$10$sqvFwRTvuhaSsD7FLfa5hO5DFer3E7BbsKPt/laMAza1/SKKn.mT6', 'STUDENT', 'bui duc hung', 'so 1 dai co viet', 'buiduchung.bkhn@gmail.com', '01237818866');
INSERT INTO `Account` VALUES ('test1', '', '$2a$10$3ZTsFZvgN44TkR5z.FdoNe38xvuXYISYvYX.CeopGl6rErfCu8dU6', 'STUDENT', 'hung tran', 'ngo 3423 lang thuong', 'buiduchung.bkhn@gmail.com', '1677533388');
INSERT INTO `Account` VALUES ('test123', '', '$2a$10$.YaF44IbX/wdykmkBlcZH.RgiRbjXxlrHK/GtmM500pHtnFupbQnW', 'STUDENT', 'Bui Duc Hung', 'lang thuong', 'buiduchung.bkhn@gmail.com', '+841677533388');
INSERT INTO `Account` VALUES ('test2', '', '$2a$10$tvjJcerMhjdN5rAnbDFOg.sgueqYy7tmWMGsY0IV2R80nNg/8YSGq', 'STUDENT', 'hung tran', 'ngo 3423 lang thuong', 'buiduchung.bkhn@gmail.com', '1677533388');
INSERT INTO `Account` VALUES ('test3', '', '$2a$10$jdz2mL.VCFMsIdD2OVRoie28N8LaXq39nkrZ.4W5um7EQeFl5dm3e', 'STUDENT', 'Bui Duc Hung', '92c/1 ngo 1194, duong Lang quan Dong Da, Ha  Noi', 'buiduchung.bkhn@gmail.com', '01237818866');
INSERT INTO `Account` VALUES ('test4', '', '$2a$10$C.TzXjdSJpx6eHds3LoKCe4kzOiDrh/MaVEkNrjR3g3cvBBgZ6flK', 'STUDENT', 'hung bui', 'lang thuong', 'buiduchung.bkhn@gmail.com', '1677533388');
INSERT INTO `Account` VALUES ('test5', '', '$2a$10$Iu53a0xp43KTMKO11PC7H.WF.66oL4jNrB9VS1Kti6onWcCVM1/OS', 'STUDENT', 'Bui Duc Hung', 'lang thuong', 'buiduchung.bkhn@gmail.com', '1677533388');
INSERT INTO `Account` VALUES ('test6', '', '$2a$10$qPSvlcoEDlHuctWgyrf7dedJd8cShuBVKODb6.86HKAEcl2DauRW2', 'STUDENT', 'hung bui', 'lang thuong', 'buiduchung.bkhn@gmail.com', '1677533388');
INSERT INTO `Account` VALUES ('test7', '', '$2a$10$H5.59hpeycf/Fd3rzmGWceQ7elZCnpezZTRJMRtuakK0kL2fSuSHO', 'STUDENT', 'hung bui', 'lang thuong', 'buiduchung.bkhn@gmail.com', '1677533388');
INSERT INTO `Account` VALUES ('test8', '', '$2a$10$psf8W2N4BhxzAVbRJKvrd.p7E7LeaMNeTUW4ImaRynHn/rRcHcTOS', 'STUDENT', 'hung bui', 'lang thuong', 'buiduchung.bkhn@gmail.com', '1677533388');
INSERT INTO `Account` VALUES ('testtest', '', '$2a$10$iwXhWEnzVpED6jUuWdVWf.dAXrUaJCi2qJIQx9t1HZ5wSUkazGley', 'STUDENT', 'hung bui', 'lang thuong', 'buiduchung.bkhn@gmail.com', '+841677533388');
