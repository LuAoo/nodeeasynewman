/*
 Navicat Premium Data Transfer

 Source Server         : conn
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : nodeeasynewman

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 21/03/2021 17:21:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES (1, '纽曼是一家集研发、制造、销售、服务为一体的高新技术企业。公司创建以来，坚持并发扬以“两个目标、四剑八\r\n和、十字精神”为核心的纽曼企业文化，使公司得以持续、健康、和谐的发展，迅速成长为中国数码行业的旗舰企业。旗下产\r\n品跨越专业及消费数码产品领域，涵盖MP3/MP4/MP5、GPS导航仪、手机、优盘、移动硬盘、电子书、数码相机/摄像机、\r\n汽车影音产品、数码相框、教育电子产品、录音笔、刻录光盘、耳机等二十大系列产品。经过十年品牌建设，在数千万纽曼\r\n用户的支持下，成为目前中国数码行业最知名的品牌之一。');

-- ----------------------------
-- Table structure for navlist
-- ----------------------------
DROP TABLE IF EXISTS `navlist`;
CREATE TABLE `navlist`  (
  `id` int(0) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of navlist
-- ----------------------------
INSERT INTO `navlist` VALUES (1, '/images/list_1.png', '产品中心');
INSERT INTO `navlist` VALUES (2, '/images/list_2.png', '新闻中心');
INSERT INTO `navlist` VALUES (3, '/images/list_3.png', '关于我们');
INSERT INTO `navlist` VALUES (4, '/images/list_4.png', '联系我们');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(0) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '正品控宣言：让商品拥有独一无二的身...', '今天，中国家电及消费电子博览会(Appliance&electronics \r\nWorld Expo，简称AWE)圆满落幕，展会吸引了包括消费电子、智能家电、白色家电、厨房电器、生活电器、环境家电及家\r\n电配件等...');
INSERT INTO `news` VALUES (2, '2016年中国家电发展高峰论坛文字实录', '马洪涛：尊敬的各位家电行业的大佬，尊敬的各位媒体同行，尊敬\r\n的各位来宾，大家下午好，我是中央电视台财经频道的主持人马洪涛');
INSERT INTO `news` VALUES (3, '美的焖香鼎釜IH智能电饭煲全球首发', '还记得儿时的柴火饭吗?奶奶在灶台上忙这忙那，爷爷坐在灶膛前，一\r\n把一把的往里塞柴禾，而我们则趴在饭桌上，急切地等待着香喷喷的米饭出锅。在我们的记忆中，用灶台焖出的米饭又\r\n香...');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(0) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `featrues` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chara` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '/images/pic_1.jpg', '微波炉-MA323BFS', 'ST2106', '黑色', '6.0kg', 'BOKING微晶面板', '290*365*60mm', '防刮耐磨,健康炒“节能烹饪”程序聚能加热技术多点测温技\r\n术。双环节能线盘。此款商品型号为C21-ST2106,货号为ST2106,为同一款商品。赠送炒锅和汤锅');
INSERT INTO `product` VALUES (2, '/images/pic_2.jpg', '迷你风扇-HE-1359', 'ST2106', '黑色', '6.0kg', 'BOKING微晶面板', '290*365*60mm', '防刮耐磨,健康炒“节能烹饪程序 聚能加热技术 多点测温技术。双环节\r\n能线盘。此款商品型号为C21-ST2106,货号为ST2106,为同一款商品。赠送炒锅和汤锅');
INSERT INTO `product` VALUES (3, '/images/pic_3.jpg', '打印机-DJ-360', 'ST2106', '黑色', '6.0kg', 'BOKING微晶面\r\n板', '290*365*60mm', '防刮耐磨,健康炒“节能烹饪程序 聚能加热技术 多点测温技术。双环节能线盘。此款商品型号为\r\nC21-ST2106,货号为ST2106,为同一款商品。赠送炒锅和汤锅');
INSERT INTO `product` VALUES (4, '/images/pic_4.jpg', '电饭锅-RC-10ZWH', 'ST2106', '黑色', '6.0kg', 'BOKING微晶面\r\n板', '290*365*60mm', '防刮耐磨,健康炒“节能烹饪程序 聚能加热技术 多点测温技术。双环节能线盘。此款商品型号为\r\nC21-ST2106,货号为ST2106,为同一款商品。赠送炒锅和汤锅');

SET FOREIGN_KEY_CHECKS = 1;
