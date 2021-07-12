/*
Navicat MySQL Data Transfer

Source Server         : lhy
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : secondhandmarket

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `p_Id` int(100) NOT NULL AUTO_INCREMENT,
  `p_Account` varchar(100) DEFAULT NULL,
  `p_Name` varchar(100) DEFAULT NULL,
  `c_Id` varchar(100) DEFAULT NULL,
  `p_Title` varchar(100) DEFAULT NULL,
  `p_Des` varchar(100) DEFAULT NULL,
  `p_Price` double DEFAULT NULL,
  `p_Date` date DEFAULT NULL,
  `p_href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('01', 'user1', '电子产品', 'c02', '2020新款14英寸IPS便携显示器', '成色: 全新售后服务: 店铺三包产地: 港澳台地区屏幕尺寸: 14英寸屏幕比例: 16:9接口类型: HDMI 音频', '2410', '2020-9-18', '/images/product/01.jpg');
INSERT INTO `product` VALUES ('02', 'user1', '电子产品', 'c02', 'Lenovo/联想 拯救者 R7000 2020款', '15.6英寸游戏笔记本电脑锐龙六核R5轻薄独显4G手提游戏本便携电脑Y7000', '5000', '2021-3-2', '/images/product/02.jpg');
INSERT INTO `product` VALUES ('03', 'user1', '衣帽鞋伞', 'c04', '全新天堂雨伞', '没用过，伞稍微有点小', '10', '2020-4-3', '/images/product/03.jpg');
INSERT INTO `product` VALUES ('04', 'user1', '电子产品', 'c02', '华为P40', '256g储存内存，七成新', '4500', '2020-6-23', '/images/product/04.jpg');
INSERT INTO `product` VALUES ('05', 'user1', '书籍教材', 'c01', '计算机网络', '五成新，有笔记', '20', null, '/images/product/05.jpg');
INSERT INTO `product` VALUES ('06', 'user1', '音乐器材', 'c10', 'JAY周杰伦专辑正版全套', '全新，CD唱片珍藏杰伦十代 叶惠美/七里香/范特西', '300', null, '/images/product/06.jpg');
INSERT INTO `product` VALUES ('07', 'user1', '音乐器材', 'c10', '陶喆 同名专辑', '全新，典藏彩胶 透明蓝 12寸+7寸黑胶 LP', '200', null, '/images/product/07.jpg');
INSERT INTO `product` VALUES ('08', 'user1', '电子产品', 'c02', '罗技K380无线蓝牙网红键盘', '超薄安静便携LINE FRIENDS联名iPad安卓办公打字专用游戏', '300', null, '/images/product/08.jpg');
INSERT INTO `product` VALUES ('09', 'user1', '电子产品', 'c02', 'GoProMAXVlog运动相机5.6K', '360度全景防水防抖，有小刮痕', '3700', null, '/images/product/09.jpg');
INSERT INTO `product` VALUES ('10', 'user1', '电子产品', 'c02', 'Sony/索尼 WI-1000XM2', '颈挂无线蓝牙主动降噪耳机入耳式双耳挂脖式耳麦重低音男女生通用', '1', null, '/images/product/10.jpg');
INSERT INTO `product` VALUES ('11', 'user2', '电子产品', 'c02', 'AOC 27英寸240Hz电竞显示器', '0.5ms响应曲面HDR Mode曲屏屏幕1MS电脑游戏144Hz旋转升降PS4K壁挂24', '1500', null, '/images/product/11.jpg');
INSERT INTO `product` VALUES ('12', 'user2', '电子产品', 'c02', '【新品】HP/惠普 暗影精灵7', '抽奖中的，全新的', '11000', null, '/images/product/12.jpg');
INSERT INTO `product` VALUES ('13', 'user2', '衣帽鞋伞', 'c04', '全自动雨伞', '十二骨抗风 黑胶防晒，晴雨两用 可定制LOGO', '10', null, '/images/product/13.jpg');
INSERT INTO `product` VALUES ('14', 'user2', '电子产品', 'c02', '9成新iphone12', '256g储存内存，换华为了不用这个了', '4000', null, '/images/product/14.jpg');
INSERT INTO `product` VALUES ('15', 'user2', '书籍教材', 'c01', '亚里士多德全集', '多买了一本，便宜出了', '20', null, '/images/product/15.jpg');
INSERT INTO `product` VALUES ('16', 'user2', '音乐器材', 'c10', '正版 邓紫棋专辑 摩天动物园', 'CD+歌词写真本+贴纸 实体专辑唱片。封面为内地发行独占版本，付内地独占贴纸', '99', null, '/images/product/16.jpg');
INSERT INTO `product` VALUES ('17', 'user2', '音乐器材', 'c10', '涅盘乐队 Nirvana专辑', 'Unplugged纽约不插电 黑胶唱片lp 摇滚音乐，两张黑胶唱片，12寸大唱盘，摇滚音乐', '198', null, '/images/product/17.jpg');
