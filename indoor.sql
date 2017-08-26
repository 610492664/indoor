/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : indoor

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-08-26 19:19:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for il_building
-- ----------------------------
DROP TABLE IF EXISTS `il_building`;
CREATE TABLE `il_building` (
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '建筑id',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '建筑名称',
  `totalfloor` smallint(2) unsigned NOT NULL COMMENT '建筑总层数',
  `height` smallint(6) NOT NULL COMMENT '建筑高度',
  `coordinate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '建筑地址',
  `comment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '主管单位',
  PRIMARY KEY (`bui_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_building
-- ----------------------------
INSERT INTO `il_building` VALUES ('{BFF5481F-A3DF-F185-927A-83FF572351DB}', '建筑四', '60', '3000', 'fasdf', '福华三路100号', '福田中队负责', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');
INSERT INTO `il_building` VALUES ('{6642EB69-0EC0-25FF-29A7-C2842E5AB4A7}', '建筑二', '100', '32767', 'fdsafd', '北四道1号', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');
INSERT INTO `il_building` VALUES ('{AF5DA1D5-D8C6-C0E5-23FD-42EBEB43490D}', '贝特尔大厦2', '233', '2334', '2132344', '1232324', '231', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');
INSERT INTO `il_building` VALUES ('{64411154-7767-B932-9575-F70E2D681B17}', '建筑三', '6', '3000', 'fdsdf', '福华三路103号', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');

-- ----------------------------
-- Table structure for il_config
-- ----------------------------
DROP TABLE IF EXISTS `il_config`;
CREATE TABLE `il_config` (
  `id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_config
-- ----------------------------
INSERT INTO `il_config` VALUES ('148', 'site_name', 'Think.Admin Demo');
INSERT INTO `il_config` VALUES ('149', 'site_copy', '广州楚才信息科技有限公司 © 2014~2017');
INSERT INTO `il_config` VALUES ('164', 'storage_type', 'local');
INSERT INTO `il_config` VALUES ('165', 'storage_qiniu_is_https', '1');
INSERT INTO `il_config` VALUES ('166', 'storage_qiniu_bucket', 'static');
INSERT INTO `il_config` VALUES ('167', 'storage_qiniu_domain', 'static.ctolog.com');
INSERT INTO `il_config` VALUES ('168', 'storage_qiniu_access_key', '');
INSERT INTO `il_config` VALUES ('169', 'storage_qiniu_secret_key', '');
INSERT INTO `il_config` VALUES ('170', 'storage_qiniu_region', '华东');
INSERT INTO `il_config` VALUES ('173', 'app_name', 'Think.Admin');
INSERT INTO `il_config` VALUES ('174', 'app_version', '1.00 dev');
INSERT INTO `il_config` VALUES ('176', 'browser_icon', 'https://think.ctolog.com/static/upload/f47b8fe06e38ae99/08e8398da45583b9.png');
INSERT INTO `il_config` VALUES ('184', 'wechat_appid', '');
INSERT INTO `il_config` VALUES ('185', 'wechat_appsecret', '');
INSERT INTO `il_config` VALUES ('186', 'wechat_token', '');
INSERT INTO `il_config` VALUES ('187', 'wechat_encodingaeskey', '');
INSERT INTO `il_config` VALUES ('188', 'wechat_mch_id', '');
INSERT INTO `il_config` VALUES ('189', 'wechat_partnerkey', '');
INSERT INTO `il_config` VALUES ('194', 'wechat_cert_key', '');
INSERT INTO `il_config` VALUES ('196', 'wechat_cert_cert', '');
INSERT INTO `il_config` VALUES ('197', 'tongji_baidu_key', 'aa2f9869e9b578122e4692de2bd9f80f');
INSERT INTO `il_config` VALUES ('198', 'tongji_cnzz_key', '1261854404');
INSERT INTO `il_config` VALUES ('199', 'storage_oss_bucket', '');
INSERT INTO `il_config` VALUES ('200', 'storage_oss_keyid', '');
INSERT INTO `il_config` VALUES ('201', 'storage_oss_secret', '');
INSERT INTO `il_config` VALUES ('202', 'storage_oss_domain', '');
INSERT INTO `il_config` VALUES ('203', 'storage_oss_is_https', '1');

-- ----------------------------
-- Table structure for il_floor
-- ----------------------------
DROP TABLE IF EXISTS `il_floor`;
CREATE TABLE `il_floor` (
  `flo_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属建筑',
  `number` tinyint(2) unsigned NOT NULL COMMENT '楼层号',
  `height` smallint(3) unsigned NOT NULL COMMENT '层高',
  `layout` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '楼层布局',
  `coordinate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '底面坐标',
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`flo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_floor
-- ----------------------------
INSERT INTO `il_floor` VALUES ('{4DCEC62F-F315-2360-E3FC-21A711B28948}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '3', '211', 'dsaf', 'fdsaf', '没有备注');
INSERT INTO `il_floor` VALUES ('{5D8C0F12-EF38-9599-9844-42EA6FA27A9D}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '1', '1', 'ffd', 'dfdf', '首层');
INSERT INTO `il_floor` VALUES ('{03D0A25D-B8B6-C391-46D1-04F554F2A256}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '2', '1221', 'fdsdfd', 'dfsdf', '第二层');
INSERT INTO `il_floor` VALUES ('{E004FD81-CBB1-084E-668C-215E847A0ED9}', '{372B348C-B934-08C4-47B4-F7C47F68F36F}', '12', '313', '324', '32423', '2342');

-- ----------------------------
-- Table structure for il_group
-- ----------------------------
DROP TABLE IF EXISTS `il_group`;
CREATE TABLE `il_group` (
  `gro_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `per_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '组长',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常1弃用',
  PRIMARY KEY (`gro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_group
-- ----------------------------
INSERT INTO `il_group` VALUES ('{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '第4组', '{84BF8A96-4BEA-1515-0973-D725E224F656}', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{6C2532B0-84AF-31B8-5ADD-0A3E9883AE9A}', '第三组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{7F24EB5F-8BF5-0B50-3B14-17654B7593AD}', '第一组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{16855727-C02A-0573-313E-4ACC6211419C}', '第二组', '{A35BF193-C318-C9B9-6B07-CB08CF2E4A75}', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{876C30E2-7730-08BC-4894-7611030AF373}', '第五组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{20B3A08F-6389-6B52-6B40-45DDE2AEE00B}', '第六组', '{6F5AE69C-A5A9-9ABD-A614-1ACF04285F17}', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{64D7372B-BB52-DFC8-0A64-A4774D5B3E62}', '第九组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{A2791C16-B7DE-E92A-5C79-32AB25E1834D}', '第一组', '', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0');
INSERT INTO `il_group` VALUES ('{7AC502AF-77D0-DB1C-4C1F-938096485164}', '第5组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{24788D5B-9702-E015-10DA-3B4D8C8E40B6}', '第1组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{5A9DA281-C29F-DAE2-5AF1-8094747F77DC}', '第2组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{5A043DE3-8A38-9BA7-F1B1-1F983810014A}', '第6组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{24EE91FA-F4B8-20E4-BEBA-A63C02D139CE}', '发', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{CDFC4BD5-423E-FE75-691A-A8830EC13558}', '第111组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{5BF224FF-BC65-38E5-93EA-7E821FDF69E0}', '王', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');

-- ----------------------------
-- Table structure for il_incident
-- ----------------------------
DROP TABLE IF EXISTS `il_incident`;
CREATE TABLE `il_incident` (
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件名称',
  `property` tinyint(1) NOT NULL DEFAULT '1' COMMENT '事件性质：0：实战，1：演习',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '事件类型，0演习，1实战',
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '事件描述',
  `start_time` int(11) NOT NULL COMMENT '事件开始事件',
  `end_time` int(11) DEFAULT NULL COMMENT '事件结束时间',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位',
  PRIMARY KEY (`inc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_incident
-- ----------------------------
INSERT INTO `il_incident` VALUES ('{48460920-1AA0-BF9A-34DB-2358A2E7A4E4}', '事件一', '0', '1', '突发火灾有空445分隔符规范规范', '1462594528', '1462612528', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');

-- ----------------------------
-- Table structure for il_inc_bui
-- ----------------------------
DROP TABLE IF EXISTS `il_inc_bui`;
CREATE TABLE `il_inc_bui` (
  `ibui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件建筑关联表id',
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属事件',
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事发建筑',
  PRIMARY KEY (`ibui_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_inc_bui
-- ----------------------------
INSERT INTO `il_inc_bui` VALUES ('{45614C04-ED5F-C84B-DFAA-845B65FE1194}', '{48460920-1AA0-BF9A-34DB-2358A2E7A4E4}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}');

-- ----------------------------
-- Table structure for il_inc_lmar
-- ----------------------------
DROP TABLE IF EXISTS `il_inc_lmar`;
CREATE TABLE `il_inc_lmar` (
  `ilma_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件、定位信标关联表id',
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属事件id',
  `lmar_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '定位信标id',
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信标所在建筑物id',
  `flo_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信标所在楼层id',
  `start_time` int(11) NOT NULL COMMENT '信标开始工作时间',
  `end_time` int(11) NOT NULL COMMENT '信标结束工作时间',
  `x` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信标x坐标',
  `y` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信标y坐标',
  `z` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信标z坐标',
  PRIMARY KEY (`ilma_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_inc_lmar
-- ----------------------------

-- ----------------------------
-- Table structure for il_inc_per
-- ----------------------------
DROP TABLE IF EXISTS `il_inc_per`;
CREATE TABLE `il_inc_per` (
  `iper_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参与事件人员表id',
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属事件id',
  `per_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '当事人员id',
  `track` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '人员状态轨迹文件',
  PRIMARY KEY (`iper_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_inc_per
-- ----------------------------
INSERT INTO `il_inc_per` VALUES ('{471FFD4C-CF36-7F4C-6D29-5CF8D7B36146}', '{48460920-1AA0-BF9A-34DB-2358A2E7A4E4}', '{0F6AB859-DA46-C1A3-489A-A1B2BABDFBED}', 'gfgsdfg');
INSERT INTO `il_inc_per` VALUES ('{EB471335-7948-5859-BB56-8E916CBCAF9C}', '{48460920-1AA0-BF9A-34DB-2358A2E7A4E4}', '{1E5CD075-E639-6AB3-A300-D24A29F3F417}', 'gfgfg');
INSERT INTO `il_inc_per` VALUES ('{7C9B81C5-7F84-1A3C-5D5E-8F877C3AA3AB}', '{48460920-1AA0-BF9A-34DB-2358A2E7A4E4}', '{06A909A0-9D82-39A2-5098-360C875618C6}', '444');

-- ----------------------------
-- Table structure for il_local_equipment
-- ----------------------------
DROP TABLE IF EXISTS `il_local_equipment`;
CREATE TABLE `il_local_equipment` (
  `lequ_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '设备名',
  `buy_time` int(11) NOT NULL DEFAULT '0' COMMENT '购入时间',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常可用，1正常停用，2故障停用，3报废，4遗失',
  PRIMARY KEY (`lequ_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_local_equipment
-- ----------------------------
INSERT INTO `il_local_equipment` VALUES ('{EDB3F169-BC5B-DE15-F20E-1A68AF657B8E}', '终端二', '2056', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_local_equipment` VALUES ('{48A8F67F-6274-001F-3451-73C848F5D1C3}', '终端8', '1935244800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_local_equipment` VALUES ('{CB98BEEB-7D18-58F9-E138-43FFD0B04CF1}', '终端三', '639244800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_local_equipment` VALUES ('{4D393CCE-B218-9D5A-9040-06DA4E70B701}', '终端5', '1328198400', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');

-- ----------------------------
-- Table structure for il_location_mark
-- ----------------------------
DROP TABLE IF EXISTS `il_location_mark`;
CREATE TABLE `il_location_mark` (
  `lmar_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '定位信标id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '信标类型0一般，1紧急',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位',
  `mac` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常，1故障，2报废，3遗失',
  PRIMARY KEY (`lmar_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_location_mark
-- ----------------------------
INSERT INTO `il_location_mark` VALUES ('{C7448A9E-A9CD-01D5-87FF-4FFC5DB9ECCC}', '信标一', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', 'fdsaf6565', '1');
INSERT INTO `il_location_mark` VALUES ('{50E15174-63B4-3C66-6F5C-EE3B298233E7}', '信标二', '1', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '6556dd', '0');
INSERT INTO `il_location_mark` VALUES ('{C21FDB37-3370-3C4F-3367-02AF8AB39472}', '信标3', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '56544', '0');
INSERT INTO `il_location_mark` VALUES ('{9E948530-C3B4-0671-3AA2-0CE1414F9086}', '信标4', '1', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1454', '0');

-- ----------------------------
-- Table structure for il_locator
-- ----------------------------
DROP TABLE IF EXISTS `il_locator`;
CREATE TABLE `il_locator` (
  `loc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mac` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '物理标识码',
  `buy_time` int(11) NOT NULL DEFAULT '0',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未使用，1已占用，2正常停用，3故障停用，4遗失，5报废',
  PRIMARY KEY (`loc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_locator
-- ----------------------------
INSERT INTO `il_locator` VALUES ('{A73E1147-BC5F-C6AB-55D2-266642AA1C4E}', '套件九', '545345', '1329148800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '3');
INSERT INTO `il_locator` VALUES ('{40F07D59-23A7-1CB7-E4F3-512239754508}', '套件四', '556546', '1370275200', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{6C954674-5492-5377-0327-650870E6FBB2}', '套件13', '123455', '1433692800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{A24AAF1B-AD2D-03D7-B454-274B1FA99A38}', '场', '534254', '2147443200', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_locator` VALUES ('{16CCCA18-3A73-3E5A-BB60-FA8FF6DC876D}', '套件二', '31243', '936806400', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{C3A80AB2-655A-F369-C341-D491D1E6E939}', '套件十', '1234324', '1375200000', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{1A306EC7-3826-5578-0E04-D257EB43CF3C}', '套件三', '54325', '-28800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '3');
INSERT INTO `il_locator` VALUES ('{0B725BAF-7F7D-1ACA-CF37-A586AA79ADEA}', '套件一', '2132', '1399564800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '4');
INSERT INTO `il_locator` VALUES ('{FE9C8835-F3FC-F04C-A741-1A2D9C75DC11}', '套件14', '1265454', '1462550400', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{51DD2F10-B205-4B03-4081-AF7EFD9A046A}', '套件五', '124541', '1428076800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{42149D4C-C8F5-6D5D-71DA-82C6BBDC7D95}', '套件九1', '21321', '1513958400', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{6EB426B6-EE05-0EFC-E34D-396D85F4DB7A}', '套件12', '1234', '1399305600', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{691F0F1F-FC31-3435-7F7A-C46F1220F36F}', '套件15', '46545454', '1433520000', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{7CF8EA50-300B-5609-4D21-68BA55F44702}', '套件16', '12234545', '1462636800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{BF195674-BB56-C1E6-CD83-5C6D8D6C8095}', '套件17', '125465454', '1428422400', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{F16A70F2-83EF-5287-867C-D60EE67FD1C5}', '套件18', '2454545', '1462636800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{9F9B4030-C192-B9C1-4219-330AFE5B2941}', '套件19', '123445', '1438704000', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{D0BE9C9C-082D-31B8-C3E0-480252315DA8}', '套件20', '211654', '1470585600', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{186221D8-3F3F-8749-456C-A5543701617C}', '套件22', '15454', '1462636800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');

-- ----------------------------
-- Table structure for il_node
-- ----------------------------
DROP TABLE IF EXISTS `il_node`;
CREATE TABLE `il_node` (
  `node` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '节点代码',
  `pnode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '节点标题',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是启启动RBAC权限控制',
  `is_log` tinyint(1) unsigned DEFAULT '1' COMMENT '是否访问日志登记',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`node`),
  KEY `index_system_node_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统节点表';

-- ----------------------------
-- Records of il_node
-- ----------------------------
INSERT INTO `il_node` VALUES ('admin', '', '业务管理', '0', '0', '0', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building', 'admin', '建筑管理', '0', '0', '0', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/add', 'admin/building', '添加建筑', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/del', 'admin/building', '删除建筑', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/index', 'admin/building', '建筑列表', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/mod', 'admin/building', '修改建筑', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor', 'admin', '楼层管理', '0', '0', '0', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/add', 'admin/floor', '添加楼层', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/del', 'admin/floor', '删除楼层', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/index', 'admin/floor', '楼层列表', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/mod', 'admin/floor', '修改楼层', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/group', 'admin', '组管理', '0', '0', '0', '1502421923');
INSERT INTO `il_node` VALUES ('admin/group/add', 'admin/group', '添加组', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/group/del', 'admin/group', '删除组', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/group/index', 'admin/group', '组列表', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/group/mod', 'admin/group', '修改组', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/groupperson', 'admin', '组成员管理', '0', '0', '0', '1502421923');
INSERT INTO `il_node` VALUES ('admin/groupperson/add', 'admin/groupperson', '添加成员', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/groupperson/del', 'admin/groupperson', '移除成员', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/groupperson/index', 'admin/groupperson', '成员列表', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/groupperson/set', 'admin/groupperson', '设置组长', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/incident', 'admin', '事件管理', '0', '0', '0', '1502421923');
INSERT INTO `il_node` VALUES ('admin/incident/add', 'admin/incident', '添加', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/incident/del', 'admin/incident', '删除', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/incident/index', 'admin/incident', '列表', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/incident/mod', 'admin/incident', '修改', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/index', 'admin', '首页', '0', '0', '0', '1502421923');
INSERT INTO `il_node` VALUES ('admin/index/dashboard', 'admin/index', '主面板', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/index/index', 'admin/index', '主页', '0', '1', '0', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment', 'admin', '现场终端管理', '0', '0', '0', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment/add', 'admin/localequipment', '添加', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment/del', 'admin/localequipment', '删除', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/localequipment/index', 'admin/localequipment', '列表', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment/mod', 'admin/localequipment', '修改', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/locationmark', 'admin', '信标管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/add', 'admin/locationmark', '添加', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/del', 'admin/locationmark', '删除', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/index', 'admin/locationmark', '列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/mod', 'admin/locationmark', '修改', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator', 'admin', '定位套件管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/add', 'admin/locator', '添加', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/del', 'admin/locator', '删除', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/index', 'admin/locator', '列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/mod', 'admin/locator', '修改', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization', 'admin', '单位管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/add', 'admin/organization', '添加子单位', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/del', 'admin/organization', '删除子单位', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/index', 'admin/organization', '子单位列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/mod', 'admin/organization', '修改子单位', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/self', 'admin/organization', '本单位信息', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility', 'admin', '消防设备管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/add', 'admin/outfirefacility', '添加消防设备', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/del', 'admin/outfirefacility', '删除消防设备', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/index', 'admin/outfirefacility', '消防设备列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/mod', 'admin/outfirefacility', '修改消防设备', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person', 'admin', '人员管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/add', 'admin/person', '添加人员', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/del', 'admin/person', '删除人员', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/detail', 'admin/person', '人员详情', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/index', 'admin/person', '人员列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/mod', 'admin/person', '修改人员信息', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system', '', '系统管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/node', 'system', '节点管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/node/index', 'system/node', '节点列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/node/save', 'system/node', '保存', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role', 'system', '角色管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/add', 'system/role', '添加', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/authsave', 'system/role', '角色授权', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/authshow', 'system/role', '权限明细', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/del', 'system/role', '删除', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/forbid', 'system/role', '禁用', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/index', 'system/role', '列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/mod', 'system/role', '修改', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user', 'system', '用户管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/add', 'system/user', '添加', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/del', 'system/user', '删除', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/forbid', 'system/user', '禁用', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/index', 'system/user', '列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/mod', 'system/user', '修改', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/selfinfo', 'system/user', '修改用户信息', '0', '0', '1', '1503304049');
INSERT INTO `il_node` VALUES ('system/user/selfpass', 'system/user', '修改密码', '0', '0', '1', '1503304049');
INSERT INTO `il_node` VALUES ('system/userlog', 'system', '用户日志', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/userlog/del', 'system/userlog', '删除', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/userlog/delall', 'system/userlog', '清空', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/userlog/index', 'system/userlog', '日志列表', '0', '1', '1', '1502421924');

-- ----------------------------
-- Table structure for il_organization
-- ----------------------------
DROP TABLE IF EXISTS `il_organization`;
CREATE TABLE `il_organization` (
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_org_id` char(38) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父级单位id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `abbr` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常，1撤销',
  PRIMARY KEY (`org_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_organization
-- ----------------------------
INSERT INTO `il_organization` VALUES ('{3033D1DB-3C92-6624-DCDE-0435498BB60D}', null, '深圳市淘米科技有限公司', 'tomee', '深圳市高新北四道贝特尔大厦三楼', '0');
INSERT INTO `il_organization` VALUES ('{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '子单位01', '子01', '科技园大道1号路1号', '0');

-- ----------------------------
-- Table structure for il_outfire_facility
-- ----------------------------
DROP TABLE IF EXISTS `il_outfire_facility`;
CREATE TABLE `il_outfire_facility` (
  `ofac_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消防设施id',
  `number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '设备编号',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消防设施名称',
  `type` tinyint(1) NOT NULL COMMENT '类型，0灭火器，1消防栓',
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属建筑',
  `flo_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '楼层id',
  `coordinate` char(18) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置坐标',
  `place_time` int(11) NOT NULL COMMENT '放置时间',
  `remove_time` int(11) DEFAULT NULL COMMENT '移除时间',
  `status` tinyint(1) unsigned NOT NULL COMMENT '0正常，1故障, 2移除',
  PRIMARY KEY (`ofac_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_outfire_facility
-- ----------------------------
INSERT INTO `il_outfire_facility` VALUES ('{D2A08936-515C-A10F-CD52-8A9164C70FCD}', '44545', '灭火器', '1', '贝塔尔大厦', '3', '45545', '2015', null, '0');
INSERT INTO `il_outfire_facility` VALUES ('{E8ABFE9E-0B42-80AF-DA33-9B9DA2DF16BA}', 'a011', '消防栓', '2', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '{03D0A25D-B8B6-C391-46D1-04F554F2A256}', '121514', '20102400', null, '0');

-- ----------------------------
-- Table structure for il_person
-- ----------------------------
DROP TABLE IF EXISTS `il_person`;
CREATE TABLE `il_person` (
  `per_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '人员主键guid（38位）',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `sex` tinyint(1) unsigned NOT NULL COMMENT '性别：0男，1女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '出生日期',
  `pic` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像url',
  `pidtype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '证件类型0身份证1士官证',
  `pid` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '证件号',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '单位id',
  `gro_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '所属组',
  `position` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '职务',
  `rank` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '警衔',
  `join_time` int(11) NOT NULL DEFAULT '0' COMMENT '入伍时间',
  `loc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '绑定定位器',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0在岗，1离职',
  PRIMARY KEY (`per_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_person
-- ----------------------------
INSERT INTO `il_person` VALUES ('{B4A661EB-B3F5-C40F-B741-9053CC5D2B28}', '人员发', '0', '-28800', '20170623\\b7b27fab7c77201189a9abd805731472.jpg', '0', '654655', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '{20B3A08F-6389-6B52-6B40-45DDE2AEE00B}', '1', '1', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{DB7A3C0D-1676-9CA2-D84B-1EC62B1FB9C9}', '万文', '0', '610556400', '', '0', '54544554', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1462464000', '', '0');
INSERT INTO `il_person` VALUES ('{6F5AE69C-A5A9-9ABD-A614-1ACF04285F17}', '李三', '0', '1399305600', '', '0', '545645', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '{20B3A08F-6389-6B52-6B40-45DDE2AEE00B}', '1', '1', '1439049600', '', '0');
INSERT INTO `il_person` VALUES ('{0A9ECA32-F234-A673-4837-B2388C12C317}', '王柳', '0', '1420041600', '', '0', '54546565', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1430755200', '{A24AAF1B-AD2D-03D7-B454-274B1FA99A38}', '0');
INSERT INTO `il_person` VALUES ('{EF15F03D-74AC-E0BF-6A6A-F852A1325B89}', '张三', '0', '610383600', '', '0', '5254554', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1494000000', '', '0');
INSERT INTO `il_person` VALUES ('{0F6AB859-DA46-C1A3-489A-A1B2BABDFBED}', '王文', '1', '1777996800', '20170822\\94b215ecc14d17eaafd711e95009affc.png', '0', '4656566', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{1E5CD075-E639-6AB3-A300-D24A29F3F417}', '张三', '1', '2029939200', '20170822\\a9a42de9bcd5efb3e24ee7ffbb58611b.png', '0', '342424', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1503417600', '{A73E1147-BC5F-C6AB-55D2-266642AA1C4E}', '0');
INSERT INTO `il_person` VALUES ('{9423A99D-6B55-4621-E98C-A2685F45DE89}', '份饭', '0', '0', '', '0', '556', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1493654400', '', '0');
INSERT INTO `il_person` VALUES ('{1AF6CEA3-3698-1C63-6E4B-F8FF8E9C5EA4}', '人以上', '0', '1399305600', '20170824\\c4ca9c1d09c930c5ceb8f746a96476dc.jpg', '0', '4444545', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1433692800', '', '0');
INSERT INTO `il_person` VALUES ('{06A909A0-9D82-39A2-5098-360C875618C6}', '万文', '0', '641833200', '20170817\\42a758c0fa5401d7efa330f13e2386e3.jpg', '0', '5454454', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1297612800', '', '0');

-- ----------------------------
-- Table structure for il_role
-- ----------------------------
DROP TABLE IF EXISTS `il_role`;
CREATE TABLE `il_role` (
  `rol_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名称',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注说明',
  `sort` smallint(6) unsigned DEFAULT '0' COMMENT '排序权重',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位，（超级管理员此字段为空，所有单位共用）',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态(0:正常,1:禁用)',
  `create_by` char(38) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`rol_id`),
  UNIQUE KEY `index_system_auth_title` (`name`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统权限表';

-- ----------------------------
-- Records of il_role
-- ----------------------------
INSERT INTO `il_role` VALUES ('{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', '普通用户', '拥有查看权限', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', '1501058199');
INSERT INTO `il_role` VALUES ('{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', '普通管理员', '普通', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', '1500637333');
INSERT INTO `il_role` VALUES ('{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '系统超级管理员', '拥有所有权限', '0', '', '0', '', '1501036927');
INSERT INTO `il_role` VALUES ('{E39ECFB9-7B01-22BE-EE4B-D2142F430BE9}', '游客', '普通游客', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', '1503048324');
INSERT INTO `il_role` VALUES ('{F8450F09-9220-8002-287D-6ED9A97F62A1}', '编辑管理员', '拥有编辑权限', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', '1501036959');

-- ----------------------------
-- Table structure for il_rol_nod
-- ----------------------------
DROP TABLE IF EXISTS `il_rol_nod`;
CREATE TABLE `il_rol_nod` (
  `rnod_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol_id` char(38) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色ID',
  `node` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '节点id',
  PRIMARY KEY (`rnod_id`),
  KEY `index_system_auth_auth` (`rol_id`) USING BTREE,
  KEY `index_system_auth_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色与节点关系表';

-- ----------------------------
-- Records of il_rol_nod
-- ----------------------------
INSERT INTO `il_rol_nod` VALUES ('{09327132-70F2-0D32-E22F-D5A9039BCA81}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/floor/index');
INSERT INTO `il_rol_nod` VALUES ('{0B5B29BC-BCC8-EBD9-B74E-08A05487E8AE}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'system/userlog/delall');
INSERT INTO `il_rol_nod` VALUES ('{13FE8398-71B7-211D-3DBC-4D0562119F6D}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building');
INSERT INTO `il_rol_nod` VALUES ('{1D21D566-7E08-C42D-F02A-CFC6E56998A9}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization');
INSERT INTO `il_rol_nod` VALUES ('{1EA0CDD4-6BBF-6AB3-E048-AA353D338E3F}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/building');
INSERT INTO `il_rol_nod` VALUES ('{20777197-10E6-E965-2C11-821D439787E8}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/groupperson/index');
INSERT INTO `il_rol_nod` VALUES ('{213203E7-3A94-95F6-85FC-B3A75D4F5EE1}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/del');
INSERT INTO `il_rol_nod` VALUES ('{252DF271-6379-1410-B127-72AF745526C9}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark');
INSERT INTO `il_rol_nod` VALUES ('{2713B15E-09EF-7CBD-60D9-8A6ADAA174C4}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/floor');
INSERT INTO `il_rol_nod` VALUES ('{28EBF431-5765-CECD-B52A-91CB2B9B9FF6}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building/index');
INSERT INTO `il_rol_nod` VALUES ('{2C0E01C0-1EA7-7F4D-E9DA-8B5025074E83}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/floor/mod');
INSERT INTO `il_rol_nod` VALUES ('{315B7E9F-897D-5889-0B01-86CFC8FA85EA}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/floor');
INSERT INTO `il_rol_nod` VALUES ('{366F2BF9-2E66-25FC-2A64-1EBEB2F4419F}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group');
INSERT INTO `il_rol_nod` VALUES ('{36F73CC6-42A9-5278-7BE0-905A8032665F}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group/index');
INSERT INTO `il_rol_nod` VALUES ('{3B4DC88B-57C6-7F1A-FE0B-7CC803B4B696}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident/index');
INSERT INTO `il_rol_nod` VALUES ('{3E9A5587-250D-8711-3EF1-331D54B9C14E}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/groupperson');
INSERT INTO `il_rol_nod` VALUES ('{44EC7FBB-4151-FC2B-F51C-D8DFCCC3995C}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment');
INSERT INTO `il_rol_nod` VALUES ('{457265AE-DCF1-B810-3238-895535E9DE8E}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/floor/del');
INSERT INTO `il_rol_nod` VALUES ('{46E8CC84-C63F-FCB0-050A-F04849F9500D}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/building/mod');
INSERT INTO `il_rol_nod` VALUES ('{4C9AA82E-1D1D-5A36-9795-23ADC3351239}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/outfirefacility/mod');
INSERT INTO `il_rol_nod` VALUES ('{4D0524B0-BF0F-0698-E5C6-ABBC77F3895C}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/groupperson/add');
INSERT INTO `il_rol_nod` VALUES ('{4FDB64C6-B7CC-32F7-A8C0-AD655B9619EE}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization/index');
INSERT INTO `il_rol_nod` VALUES ('{50D159AA-C758-83AB-5110-CC9493A23935}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin');
INSERT INTO `il_rol_nod` VALUES ('{5115DF26-030E-E5B2-29E2-9EDE56AAD01B}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/building/index');
INSERT INTO `il_rol_nod` VALUES ('{5329B9BE-F8F7-8410-8448-EDFFFF1547E4}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/groupperson');
INSERT INTO `il_rol_nod` VALUES ('{5F39976F-3069-33F7-CAD4-3A46B09BF242}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/floor');
INSERT INTO `il_rol_nod` VALUES ('{65A7F16D-F0A3-AFAC-A7A6-F1442B046258}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator/index');
INSERT INTO `il_rol_nod` VALUES ('{6DE5BFC2-931B-6CF5-9686-B404927833DE}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/add');
INSERT INTO `il_rol_nod` VALUES ('{73BCBEB3-FC2D-BF2F-02C7-0D538F89FBD5}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person');
INSERT INTO `il_rol_nod` VALUES ('{743481E8-EE21-561E-6023-7B050F6E6941}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/outfirefacility/index');
INSERT INTO `il_rol_nod` VALUES ('{7A828129-917F-1A63-C813-5CDD29F13F13}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/building/add');
INSERT INTO `il_rol_nod` VALUES ('{7F2045A8-6ACD-158E-ACAE-2C57B3742FE7}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/building');
INSERT INTO `il_rol_nod` VALUES ('{831E52A8-FC3B-9A42-E4DF-405812ED7A49}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin');
INSERT INTO `il_rol_nod` VALUES ('{84C6078F-3D01-9F87-0E62-9CA9DCB2989B}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin');
INSERT INTO `il_rol_nod` VALUES ('{8661009C-A03A-36B9-20A5-A9D607AF33B1}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility');
INSERT INTO `il_rol_nod` VALUES ('{8896AA02-EDBD-3861-926C-A1DFF6E8BFC4}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/building/add');
INSERT INTO `il_rol_nod` VALUES ('{89ADBA8B-A8FA-164E-09A3-0263985EAB8F}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident');
INSERT INTO `il_rol_nod` VALUES ('{9020214D-0BAE-398B-A044-61DE63DE2014}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/mod');
INSERT INTO `il_rol_nod` VALUES ('{93C76125-8363-9F5B-9CA8-56666ACCDED3}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/outfirefacility/del');
INSERT INTO `il_rol_nod` VALUES ('{98126DC5-60D4-FBAF-7F86-320CAA5FF802}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'system/userlog');
INSERT INTO `il_rol_nod` VALUES ('{A20353E0-A4F3-0C0B-AFAF-0D9CD16752D1}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/floor/del');
INSERT INTO `il_rol_nod` VALUES ('{A2738C6C-C4D3-D8CD-F8F2-71F57C5B81FE}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building');
INSERT INTO `il_rol_nod` VALUES ('{A99005F3-E2BC-11C1-ABC8-2EFAD019C021}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin');
INSERT INTO `il_rol_nod` VALUES ('{AE5214CA-4681-6C71-2457-566C94984615}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person/detail');
INSERT INTO `il_rol_nod` VALUES ('{AF490BCD-9BE9-1046-3038-1677038EB4CD}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'system/user');
INSERT INTO `il_rol_nod` VALUES ('{B435B823-3C47-81A6-752E-E69176B6AA38}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility/index');
INSERT INTO `il_rol_nod` VALUES ('{BDDC4A30-A864-C932-537B-68ABDC8CCC06}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/index');
INSERT INTO `il_rol_nod` VALUES ('{C0D4C1BB-9F11-5387-851A-D7B4191541F0}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark/index');
INSERT INTO `il_rol_nod` VALUES ('{C62DB202-786B-10D8-42D5-319B73BE06E4}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'system');
INSERT INTO `il_rol_nod` VALUES ('{C8CEE465-1D1E-7982-BA3A-002C402F09CB}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/outfirefacility');
INSERT INTO `il_rol_nod` VALUES ('{D198F853-EA20-1CEF-E4D2-F422BF511F4D}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator');
INSERT INTO `il_rol_nod` VALUES ('{D3A02545-2F6F-D270-83E2-E89366D9576B}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/outfirefacility/add');
INSERT INTO `il_rol_nod` VALUES ('{D4B778DB-6351-ED36-C182-3925F681892B}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'system/user/add');
INSERT INTO `il_rol_nod` VALUES ('{D749232C-823A-C812-6919-001436185D31}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/floor/add');
INSERT INTO `il_rol_nod` VALUES ('{D7A1688D-B60E-559B-25B1-2924D30932C1}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment/index');
INSERT INTO `il_rol_nod` VALUES ('{DF1A276B-35B8-64A5-1727-A93E7643373C}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person/index');
INSERT INTO `il_rol_nod` VALUES ('{EAAF2C0E-BA61-DE8A-AB58-DBC0A2CCF10C}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/group/add');
INSERT INTO `il_rol_nod` VALUES ('{ED42B543-F4C2-44CE-C166-F0FD184C34EC}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/group');
INSERT INTO `il_rol_nod` VALUES ('{F0163F5E-19DE-53DC-DCB0-ABA53CF8EDAF}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/floor/index');
INSERT INTO `il_rol_nod` VALUES ('{FA5558C4-6F52-A152-522C-6671711D02D2}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/building/del');

-- ----------------------------
-- Table structure for il_tag
-- ----------------------------
DROP TABLE IF EXISTS `il_tag`;
CREATE TABLE `il_tag` (
  `tag_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '固定物件id',
  `type` tinyint(1) NOT NULL COMMENT '类型，0灭火器，1消防栓',
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属建筑',
  `flo_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '楼层id',
  `x` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `y` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `z` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置坐标',
  `place_time` int(11) NOT NULL COMMENT '放置时间',
  `remove_time` int(11) DEFAULT NULL COMMENT '移除时间',
  `status` tinyint(1) unsigned NOT NULL COMMENT '0正常，1移除，2故障',
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_tag
-- ----------------------------

-- ----------------------------
-- Table structure for il_track
-- ----------------------------
DROP TABLE IF EXISTS `il_track`;
CREATE TABLE `il_track` (
  `tra_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `iper_id` char(38) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '事件人员id',
  `posture` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姿态',
  `power` int(3) DEFAULT NULL COMMENT '设备电量',
  `track` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '轨迹',
  `air_pressure` decimal(2,0) DEFAULT NULL COMMENT '气压',
  `alert` tinyint(1) DEFAULT NULL COMMENT '报警状态',
  `floor` tinyint(3) DEFAULT NULL COMMENT '人员所在的楼层',
  `time` int(11) DEFAULT NULL COMMENT '时间',
  `rssi` int(11) DEFAULT NULL COMMENT '信号的强度',
  `temperature` float DEFAULT NULL COMMENT '环境温度',
  PRIMARY KEY (`tra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_track
-- ----------------------------

-- ----------------------------
-- Table structure for il_usage
-- ----------------------------
DROP TABLE IF EXISTS `il_usage`;
CREATE TABLE `il_usage` (
  `usa_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '使用记录id',
  `loc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '定位模块id',
  `per_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '使用人员id',
  `start_time` int(11) NOT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间，null表示正在使用中',
  PRIMARY KEY (`usa_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_usage
-- ----------------------------

-- ----------------------------
-- Table structure for il_user
-- ----------------------------
DROP TABLE IF EXISTS `il_user`;
CREATE TABLE `il_user` (
  `use_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户登录名',
  `password` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户登录密码',
  `email` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系手机号',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `login_time` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '最后一次登录ip',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态(0:正常,1:禁用)',
  `rol_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色',
  `create_by` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`use_id`),
  UNIQUE KEY `index_system_user_username` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统用户表';

-- ----------------------------
-- Records of il_user
-- ----------------------------
INSERT INTO `il_user` VALUES ('{1865CF44-B3A8-BB22-4E8B-4C98A2445F8C}', 'yonghu5', 'e10adc3949ba59abbe56e057f20f883e', '6464565@qq.com', '', '', '0', '0', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', '', '1503371737');
INSERT INTO `il_user` VALUES ('{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '13888888888', '第二个用户', '3', '1503058810', '10.0.2.111', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', '', '1499341299');
INSERT INTO `il_user` VALUES ('{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', 'e10adc3949ba59abbe56e057f20f883e', '4441544@qq.com', '13888888888', '', '1', '1503385312', '0.0.0.0', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1503385264');
INSERT INTO `il_user` VALUES ('{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@tomee.cn', '13888888824', '主要的管理员', '65', '1503737642', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1501144826');
INSERT INTO `il_user` VALUES ('{97AF6DE5-971B-9D4E-F74D-1CFAD366B773}', 'yonghu4', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '1388888888', '21121', '0', '0', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '', '', '1502973720');
INSERT INTO `il_user` VALUES ('{B6E21170-1C5B-1B25-05A7-4CC75EA4FBF5}', 'yonghu', 'e10adc3949ba59abbe56e057f20f883e', '4455@qq.com', '13888888888', '', '0', '0', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1', '', '', '1503040939');
INSERT INTO `il_user` VALUES ('{B71BCD4B-64D3-6543-627D-BB7D6AB24676}', 'yonghu6', 'e10adc3949ba59abbe56e057f20f883e', '5454@qq.com', '13888888888', '', '0', '0', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1', '', '', '1503042024');
INSERT INTO `il_user` VALUES ('{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', 'yonghu2', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '13888888889', '第二个用户', '53', '1502435788', '10.0.2.111', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', '', '1499838728');
INSERT INTO `il_user` VALUES ('{FEF28DE6-D732-4399-9DA5-9FED5D44C86B}', 'yonghu7', 'e10adc3949ba59abbe56e057f20f883e', 'fdsf@qq.com', '13888888888', '', '0', '0', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '', '', '1503042072');

-- ----------------------------
-- Table structure for il_user_log
-- ----------------------------
DROP TABLE IF EXISTS `il_user_log`;
CREATE TABLE `il_user_log` (
  `ulog_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块',
  `controller` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '控制器',
  `action` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '当前操作方法',
  `result` enum('失败','成功') COLLATE utf8mb4_unicode_ci DEFAULT '成功' COMMENT '操作结果',
  `use_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户id',
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作人单位id',
  `ip` char(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`ulog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统用户操作日志表';

-- ----------------------------
-- Records of il_user_log
-- ----------------------------
INSERT INTO `il_user_log` VALUES ('{008A44E7-222E-A982-5D6E-4B12B90D681A}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:03:02');
INSERT INTO `il_user_log` VALUES ('{00FDF3DD-CF20-4967-801D-2E8FF8E683A6}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:36:02');
INSERT INTO `il_user_log` VALUES ('{01077DA2-DD51-BEE2-E73C-FF6A6882DAAA}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:49:19');
INSERT INTO `il_user_log` VALUES ('{01271759-A314-4555-4E7D-EF86BD7451DC}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:48:12');
INSERT INTO `il_user_log` VALUES ('{015DA531-E5CB-D161-E32B-B104DEDDC7B0}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:44');
INSERT INTO `il_user_log` VALUES ('{0174A4C0-3889-1558-8905-E3E34411A577}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:31:21');
INSERT INTO `il_user_log` VALUES ('{018D6192-0033-B27E-AB68-209CF07EF41A}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:07:13');
INSERT INTO `il_user_log` VALUES ('{01D1974A-8DC3-9CB1-4C8B-7553868BFD10}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:12:07');
INSERT INTO `il_user_log` VALUES ('{0229FA9C-C745-4969-4677-F6513302EAC1}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:41:54');
INSERT INTO `il_user_log` VALUES ('{025CA7C6-18D5-6E7C-2CE7-A4F1B2B346E7}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:15:08');
INSERT INTO `il_user_log` VALUES ('{03477D0E-B9C3-65B1-559E-0EC5B701A73B}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:23:40');
INSERT INTO `il_user_log` VALUES ('{034D05AF-378B-5C2F-5198-568D1D5E8304}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:12:01');
INSERT INTO `il_user_log` VALUES ('{03E29BE8-2BBE-6AA7-DA24-84748BC18CD4}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:37:47');
INSERT INTO `il_user_log` VALUES ('{04313ECF-708F-6170-B40E-B5294EB8142A}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:22:25');
INSERT INTO `il_user_log` VALUES ('{044FE512-C36F-DEE4-6503-58ED77439522}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:30:45');
INSERT INTO `il_user_log` VALUES ('{04849D12-91ED-0D70-338B-556572D0623A}', '业务管理', '消防设备管理', '修改消防设备', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:52:30');
INSERT INTO `il_user_log` VALUES ('{0489F41C-8DAE-B2C2-4457-643ADE332E19}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:07:15');
INSERT INTO `il_user_log` VALUES ('{04C8519F-D40C-98CA-2F33-99DD11592006}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:30:46');
INSERT INTO `il_user_log` VALUES ('{04E2C4FC-C87D-6CFB-FA91-03434498BA09}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 12:34:29');
INSERT INTO `il_user_log` VALUES ('{057BD507-79C6-2D71-5AAF-A10A23A0B316}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:34:46');
INSERT INTO `il_user_log` VALUES ('{05990ED4-14FF-F166-2774-94DA7F4DC1F1}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:09:22');
INSERT INTO `il_user_log` VALUES ('{06261BC9-3476-707A-D08C-AF4BD963E8F9}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:20:15');
INSERT INTO `il_user_log` VALUES ('{065BA91C-E410-442E-C6CA-F99EF7334D3E}', '业务管理', '事件管理', '删除', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:41:13');
INSERT INTO `il_user_log` VALUES ('{0678E746-E631-C309-F1D9-0F46A2BDD3B5}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:11:43');
INSERT INTO `il_user_log` VALUES ('{06822F75-6A74-2216-7B92-83E76159D5A0}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:15:19');
INSERT INTO `il_user_log` VALUES ('{069514A0-0459-5E04-F49D-5AF3183C443A}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:19:27');
INSERT INTO `il_user_log` VALUES ('{06B04D4E-A9C2-C94B-C44B-ACAD50D7AC29}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:07:40');
INSERT INTO `il_user_log` VALUES ('{06B3A8AE-C2C9-DF7C-B80E-640DCC4CA0A3}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:05:27');
INSERT INTO `il_user_log` VALUES ('{06BA771C-9120-AD10-691C-BD0E52DD9364}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:48:55');
INSERT INTO `il_user_log` VALUES ('{06FEF32B-D1C0-B4DA-4FE4-1EB8D66A0B3B}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:48:22');
INSERT INTO `il_user_log` VALUES ('{07421DE3-581A-3973-BCE7-CDDA15ACD585}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:25:38');
INSERT INTO `il_user_log` VALUES ('{0780AD6B-B2E3-8EC7-42C0-BB893F3EA749}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:56:39');
INSERT INTO `il_user_log` VALUES ('{08091E86-B78D-7725-E349-BB9E592E944E}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:15:17');
INSERT INTO `il_user_log` VALUES ('{08611F24-07A1-C452-B795-2161489DB0A7}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 10:52:03');
INSERT INTO `il_user_log` VALUES ('{0866BE21-6E88-D405-109B-F3A0987EA073}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:22:25');
INSERT INTO `il_user_log` VALUES ('{08A57D95-B387-3AF9-BFE9-674700D1A901}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:27:43');
INSERT INTO `il_user_log` VALUES ('{08BB0618-3273-F9C1-274B-05722E49B57D}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:31:49');
INSERT INTO `il_user_log` VALUES ('{08CBC99A-2D4A-D5A1-9AAE-4081EE9D3A30}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:36:23');
INSERT INTO `il_user_log` VALUES ('{08D2640C-B9DA-FBBA-FC41-71A6C713073B}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:50:41');
INSERT INTO `il_user_log` VALUES ('{0907651D-F7D6-87DC-F84F-AAF563F0F4E0}', '业务管理', '组管理', '修改组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:01:41');
INSERT INTO `il_user_log` VALUES ('{096CCFC4-BF5B-2114-A92D-41EB273F1611}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:24:34');
INSERT INTO `il_user_log` VALUES ('{09BAC97B-98A1-9314-9830-E09119447E10}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:54:51');
INSERT INTO `il_user_log` VALUES ('{09C92937-702F-B10A-42C7-109DE1CC5D4A}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:53:42');
INSERT INTO `il_user_log` VALUES ('{09FB276D-2455-A4A0-4026-B3D8CC099787}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:07:08');
INSERT INTO `il_user_log` VALUES ('{0A1359CA-7697-F27E-8175-7B5E2080C136}', '业务管理', '组管理', '添加组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:41:53');
INSERT INTO `il_user_log` VALUES ('{0A4B36D8-9A38-96DA-CC60-7977157C7A47}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:08:43');
INSERT INTO `il_user_log` VALUES ('{0A7A20EB-FB1A-662E-CDB3-C3C95BC28593}', '业务管理', '建筑管理', '建筑列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:26');
INSERT INTO `il_user_log` VALUES ('{0B2C88AF-FD3E-5AFF-AB64-D49A472EB280}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:41:11');
INSERT INTO `il_user_log` VALUES ('{0C324E57-2880-3023-4D00-3EEA23EE86DC}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:09:19');
INSERT INTO `il_user_log` VALUES ('{0C77CC19-4E7B-C85C-E37D-3AECC59DD0B0}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 14:30:39');
INSERT INTO `il_user_log` VALUES ('{0C81BB41-E4DD-1863-8170-24809F7BC5C5}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:04:00');
INSERT INTO `il_user_log` VALUES ('{0CEFBD0A-5388-E5F4-1E78-DE43743E2151}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:37:45');
INSERT INTO `il_user_log` VALUES ('{0D0782AC-13A0-A0D9-FAB2-6809880B9C54}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:50:35');
INSERT INTO `il_user_log` VALUES ('{0D27F067-BD40-6AD2-6EA8-D44D83576095}', '业务管理', '现场终端管理', '修改', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:11:31');
INSERT INTO `il_user_log` VALUES ('{0D2F2BAA-C95D-5A3B-7338-E7598C578175}', '业务管理', '现场终端管理', '修改', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:03:12');
INSERT INTO `il_user_log` VALUES ('{0DBDA996-9236-B0D5-3CF8-5CAE321DB6EB}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:30:34');
INSERT INTO `il_user_log` VALUES ('{0DC395CC-3FCF-80C5-16C7-AEFE6E2205F6}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:51:06');
INSERT INTO `il_user_log` VALUES ('{0DD82D0E-3B98-8399-B43E-E06142EA16B1}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:02:45');
INSERT INTO `il_user_log` VALUES ('{0E412915-FC4C-4C28-059F-93C4E48F7634}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:11:21');
INSERT INTO `il_user_log` VALUES ('{0E945807-F7B3-EDBB-6628-C380ABFAB3A7}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:04:31');
INSERT INTO `il_user_log` VALUES ('{0E9C289A-4549-0675-E223-866C8EDC32FE}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:30:28');
INSERT INTO `il_user_log` VALUES ('{0EA7D3E0-C02F-EBF7-5A37-88B87E15F149}', '业务管理', '单位管理', '添加子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:01:04');
INSERT INTO `il_user_log` VALUES ('{0F82BF53-7446-65ED-DF9D-2C372DA7DD7A}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 16:48:40');
INSERT INTO `il_user_log` VALUES ('{0F872861-2F74-A49A-9C23-08881BD7CA2F}', '业务管理', '单位管理', '删除子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:05:50');
INSERT INTO `il_user_log` VALUES ('{0F8CA990-9F5F-A020-79EC-39C6E87603B8}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 19:18:10');
INSERT INTO `il_user_log` VALUES ('{100CB330-9480-5573-1672-4532E8591642}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 19:17:55');
INSERT INTO `il_user_log` VALUES ('{1079F500-D90E-51D5-CABF-542D0805A0F0}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:40:04');
INSERT INTO `il_user_log` VALUES ('{10C4B074-4B50-A58F-086F-5F14B954B878}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:14:23');
INSERT INTO `il_user_log` VALUES ('{10DE201D-D59C-F525-DC44-D33EC6AED61F}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:33:04');
INSERT INTO `il_user_log` VALUES ('{111C17C1-27DE-0F7C-0F4C-B484DD8C5053}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:31:35');
INSERT INTO `il_user_log` VALUES ('{119189D9-3A46-F6A9-B4C0-0B3FA59639C6}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:08:05');
INSERT INTO `il_user_log` VALUES ('{11A8BA74-6555-1DC0-0B00-51C3A076CE45}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:09:20');
INSERT INTO `il_user_log` VALUES ('{11DCD8C2-BABC-161E-78E2-F67D03C24B70}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:52:56');
INSERT INTO `il_user_log` VALUES ('{11EB0DF5-D6C1-F0BF-2EA5-E929F25C68F4}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:43');
INSERT INTO `il_user_log` VALUES ('{12034199-68DF-E6EE-5D5B-EF54F278A561}', '业务管理', '单位管理', '修改子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:48:47');
INSERT INTO `il_user_log` VALUES ('{1215F6D2-924D-B9FC-B3AE-1A861094D993}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:19:44');
INSERT INTO `il_user_log` VALUES ('{1216770F-FA22-4D85-584A-8AF2C430AA27}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:41:10');
INSERT INTO `il_user_log` VALUES ('{124BF386-BF40-7676-96AF-FF3C515A997F}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:26:17');
INSERT INTO `il_user_log` VALUES ('{125E2877-CC52-81FA-E511-446682397BD4}', '业务管理', '单位管理', '添加子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:42:19');
INSERT INTO `il_user_log` VALUES ('{12A36A17-416C-7171-5276-206A41A49668}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:45:06');
INSERT INTO `il_user_log` VALUES ('{12B8AE35-01E8-6AE1-E30B-D6A5D9A3C7C3}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:32:00');
INSERT INTO `il_user_log` VALUES ('{12F5940E-0DB5-BEBB-3DE8-C18318450238}', '业务管理', '单位管理', '添加子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:45:42');
INSERT INTO `il_user_log` VALUES ('{12FA38EF-3ACA-7C59-9ABE-56393F23689A}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:06:07');
INSERT INTO `il_user_log` VALUES ('{13434994-0BE4-6CE8-039B-81F74D870E08}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:29:17');
INSERT INTO `il_user_log` VALUES ('{1366C5B8-0D88-A3CE-A0C0-09010B03F6D3}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:45:51');
INSERT INTO `il_user_log` VALUES ('{13741033-2B5E-12CB-8B84-B4306142EA04}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:05:08');
INSERT INTO `il_user_log` VALUES ('{138ECDB4-C1D1-D74D-28B1-BB92CEB9F3F8}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:05:15');
INSERT INTO `il_user_log` VALUES ('{139C04CE-87A0-77F5-859D-D26416DEE776}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:24:49');
INSERT INTO `il_user_log` VALUES ('{13FB276A-8781-7369-5E37-5A318B9A82B8}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:05:42');
INSERT INTO `il_user_log` VALUES ('{14158F9C-478C-4EC3-BA28-536C8A3FD185}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 11:52:25');
INSERT INTO `il_user_log` VALUES ('{144E3DDC-1CDD-4168-3D03-C045D7B39144}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:05:47');
INSERT INTO `il_user_log` VALUES ('{1468B79C-96E0-86EF-EF6D-1374D77C7DB2}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:02:26');
INSERT INTO `il_user_log` VALUES ('{14BFF60B-0AC4-3671-1E95-9E5C9B466A44}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:23:17');
INSERT INTO `il_user_log` VALUES ('{14E24556-C343-32FD-3624-2047F6381A2F}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:38:02');
INSERT INTO `il_user_log` VALUES ('{153FD8BC-5E30-D729-6D85-966DB8D9301E}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:56:43');
INSERT INTO `il_user_log` VALUES ('{154B5963-1537-2BDF-C9E1-6FBEB18ACCEC}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:11:24');
INSERT INTO `il_user_log` VALUES ('{15A19668-DE3B-B69A-106E-436C74CD4C72}', '业务管理', '事件管理', '修改', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:04:13');
INSERT INTO `il_user_log` VALUES ('{15F29544-042C-F9A9-730A-C852958CCAE7}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-16 12:24:49');
INSERT INTO `il_user_log` VALUES ('{16026244-20EB-E9D4-67D5-05B5305B2D39}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:47:21');
INSERT INTO `il_user_log` VALUES ('{16075242-7345-0DBC-C8EB-E99FF9C1B103}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:22:39');
INSERT INTO `il_user_log` VALUES ('{160BD03A-784B-278A-C8BF-8A33FA91D5F7}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:30:19');
INSERT INTO `il_user_log` VALUES ('{16233D54-FB93-C634-B23A-53407D641A0B}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:28:19');
INSERT INTO `il_user_log` VALUES ('{16593B97-66DA-56A9-6948-BC53E7819D71}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-12 14:15:39');
INSERT INTO `il_user_log` VALUES ('{1667246B-9619-E96F-1BF0-28CC11C02828}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:03:07');
INSERT INTO `il_user_log` VALUES ('{169F0BA4-6E64-1541-81FC-5D6269911EB4}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:17:24');
INSERT INTO `il_user_log` VALUES ('{171E3611-BEBA-91C4-D60A-0DB452BEA2B7}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:38:59');
INSERT INTO `il_user_log` VALUES ('{1740319D-CDAB-BE40-97FE-F0218AAD7105}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:36:44');
INSERT INTO `il_user_log` VALUES ('{176CC499-F067-E7EE-260F-3706A4AA031B}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:29:05');
INSERT INTO `il_user_log` VALUES ('{17B7AC71-BB5A-4AE7-50C0-F9843F2EB89F}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-15 09:34:42');
INSERT INTO `il_user_log` VALUES ('{17F810F3-9557-F673-AC7D-73F5600362A6}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:48:13');
INSERT INTO `il_user_log` VALUES ('{1802320A-DA78-03A5-AE1C-A375BD5865B0}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:20:10');
INSERT INTO `il_user_log` VALUES ('{18496B14-62C8-262A-EB94-8C250A75F33D}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:06:22');
INSERT INTO `il_user_log` VALUES ('{18A42A9E-963B-2042-2D57-FCA00793F000}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:03:12');
INSERT INTO `il_user_log` VALUES ('{18D7628B-DD98-838E-81CF-B5D185A65699}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:18:28');
INSERT INTO `il_user_log` VALUES ('{18EAAA60-312E-426F-7DA5-323F3107086B}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:05:55');
INSERT INTO `il_user_log` VALUES ('{193389D8-9DA5-F78B-97E6-1E909FD1B2D3}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:55:47');
INSERT INTO `il_user_log` VALUES ('{19B6F5CF-08BD-537A-504D-021CE5247F9B}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:30:13');
INSERT INTO `il_user_log` VALUES ('{19D215E9-1213-CC83-526F-1E6AC5891DA1}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:21:28');
INSERT INTO `il_user_log` VALUES ('{1A284C05-BF80-2E08-514E-56AB61C384D1}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:05:50');
INSERT INTO `il_user_log` VALUES ('{1A2BE972-D17F-DF41-54AC-5347FA56CB4C}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:19:23');
INSERT INTO `il_user_log` VALUES ('{1A43DDE6-03B5-B553-645D-0373BFBA6CBD}', '业务管理', '人员管理', '修改人员信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:57:07');
INSERT INTO `il_user_log` VALUES ('{1A566596-E0E7-DB26-BAD5-B591F80DAC59}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:28:03');
INSERT INTO `il_user_log` VALUES ('{1AD2728D-1AB5-014C-1A77-759A22EC52E9}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:03:53');
INSERT INTO `il_user_log` VALUES ('{1AED4646-4469-9E56-D2BA-A7378E8FF3AA}', '业务管理', '建筑管理', '删除建筑', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:08:15');
INSERT INTO `il_user_log` VALUES ('{1B4D1AB3-2411-6E30-3D97-3AFA3ED89FE9}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:14:33');
INSERT INTO `il_user_log` VALUES ('{1B820B67-DB09-0572-CEA1-4E242CD8E80D}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:17:08');
INSERT INTO `il_user_log` VALUES ('{1C0512FB-3626-B03D-1B8F-319D583727AD}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:56:30');
INSERT INTO `il_user_log` VALUES ('{1C591C2B-D3C2-86FC-2E30-679CCE946F8C}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:40:11');
INSERT INTO `il_user_log` VALUES ('{1C6747CA-CA29-54DA-8C9B-A25702E61324}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:03:25');
INSERT INTO `il_user_log` VALUES ('{1C761C65-64D7-DA1D-E264-90F1D0521241}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:59:49');
INSERT INTO `il_user_log` VALUES ('{1C94E156-862D-B3C1-2EF6-10838215640F}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:41:47');
INSERT INTO `il_user_log` VALUES ('{1CC3A61E-F9B7-A47E-73F4-3A5F0A9B427A}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:31:23');
INSERT INTO `il_user_log` VALUES ('{1D11F086-92B1-CA65-CC0C-9BFCFE9E921A}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:37:07');
INSERT INTO `il_user_log` VALUES ('{1D3633CB-A5D2-A7F8-FA5E-074875D7A38F}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:37:34');
INSERT INTO `il_user_log` VALUES ('{1DA9222B-D93C-D382-D496-C23E55FFBBEE}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 16:21:58');
INSERT INTO `il_user_log` VALUES ('{1DFB54D4-14DB-3A04-1480-542F724589AD}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:10:24');
INSERT INTO `il_user_log` VALUES ('{1E16C013-FD4F-2A04-78D6-B4689B21450F}', '业务管理', '定位套件管理', '修改', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:40:03');
INSERT INTO `il_user_log` VALUES ('{1ECE690E-373C-ACD5-334A-606D59B0F06C}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:02:42');
INSERT INTO `il_user_log` VALUES ('{1EEF1180-5B44-A3C8-A8B7-EBEC6CDCD8C5}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:24:06');
INSERT INTO `il_user_log` VALUES ('{1EF30AAF-02F6-F2F0-910C-C0BFDFB9EB98}', '业务管理', '组管理', '修改组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:33:54');
INSERT INTO `il_user_log` VALUES ('{1F6A0336-75BE-E856-7083-E12C331016F2}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:53:23');
INSERT INTO `il_user_log` VALUES ('{1F744F67-6BB3-063A-CA5C-A564A7B7A6DC}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:05:45');
INSERT INTO `il_user_log` VALUES ('{1FC4B85F-A5C0-5A55-1F21-6CEB59D6A0DD}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:14:52');
INSERT INTO `il_user_log` VALUES ('{1FCCF085-8F7D-32FC-DECE-17A40C07C0BB}', '业务管理', '建筑管理', '修改建筑', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:16:37');
INSERT INTO `il_user_log` VALUES ('{1FCD08AE-CBE9-0354-ABDE-824DD0568831}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:04:54');
INSERT INTO `il_user_log` VALUES ('{212D559C-5736-5F24-24D1-43003269E31F}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:52:07');
INSERT INTO `il_user_log` VALUES ('{2176BFED-4548-9B23-0C3B-A37687E49116}', '业务管理', '信标管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:55:18');
INSERT INTO `il_user_log` VALUES ('{2191838C-0F83-0A8B-5381-3B59EB730BD6}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:09:41');
INSERT INTO `il_user_log` VALUES ('{221E0478-A780-26B3-9F7A-252805FAB0AF}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-21 09:17:04');
INSERT INTO `il_user_log` VALUES ('{221E7EDD-9CD0-5B0A-75E1-CB258354E781}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:43');
INSERT INTO `il_user_log` VALUES ('{225C497D-0421-C1A4-2735-41C35D33BB92}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:47:27');
INSERT INTO `il_user_log` VALUES ('{227C4DA2-59CA-787C-55C6-E046337479CE}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:06:33');
INSERT INTO `il_user_log` VALUES ('{227E1496-064D-1788-68B7-415CADF8C0CF}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:31:52');
INSERT INTO `il_user_log` VALUES ('{22925CD5-DC15-E7C6-C7C1-5D1244A0EA2D}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:51:07');
INSERT INTO `il_user_log` VALUES ('{22C02954-3CBE-2E8F-A4E3-6E66BD25140F}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 10:40:00');
INSERT INTO `il_user_log` VALUES ('{22E2D57C-556A-A345-FBC0-17384E02D892}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:07:43');
INSERT INTO `il_user_log` VALUES ('{22F68444-D9A9-9FC4-7029-B9F4C80BB24C}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:38:00');
INSERT INTO `il_user_log` VALUES ('{2462D3F5-5041-2066-A432-EFAB1B52B28F}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:52:49');
INSERT INTO `il_user_log` VALUES ('{2483C7EB-436C-1175-9ABB-96945457476E}', '业务管理', '组管理', '添加组', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:05:13');
INSERT INTO `il_user_log` VALUES ('{24B37176-B23D-3F32-8A16-A374CF0B6CC9}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:14:52');
INSERT INTO `il_user_log` VALUES ('{251F374A-A8C9-A9E1-9C7C-2D34D502A8E0}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:50:42');
INSERT INTO `il_user_log` VALUES ('{254CB0D5-54DA-2FE4-995C-96E786C8BDDA}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:16:01');
INSERT INTO `il_user_log` VALUES ('{255A6EAF-DFCE-C72D-866B-A4952DBA4935}', '业务管理', '现场终端管理', '删除', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:13:01');
INSERT INTO `il_user_log` VALUES ('{25E1878A-90A6-B848-ABCE-0FE2210FD067}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-08 09:21:42');
INSERT INTO `il_user_log` VALUES ('{26209850-2360-076C-6402-98A4A8AA0D15}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:28:53');
INSERT INTO `il_user_log` VALUES ('{26296AD5-2C05-E532-2F3E-5837E84347AF}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:22:38');
INSERT INTO `il_user_log` VALUES ('{26F07286-3C4A-7485-2AB7-FB3B133F5EDE}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:06');
INSERT INTO `il_user_log` VALUES ('{27363C2E-DCD3-153C-346D-49D9AD583580}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 14:18:52');
INSERT INTO `il_user_log` VALUES ('{27543E14-0141-B22F-5750-DDE5CA87D3F2}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:07');
INSERT INTO `il_user_log` VALUES ('{276C4403-0971-6AFF-E4CF-0FECD4EB090E}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:59:34');
INSERT INTO `il_user_log` VALUES ('{27C88720-9E96-8C90-6695-29A824D7A9CB}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:01:05');
INSERT INTO `il_user_log` VALUES ('{27DF23DF-00C4-4190-8158-612C41FB4B13}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:41:43');
INSERT INTO `il_user_log` VALUES ('{285262AE-58D5-C243-E6B9-6D267B55F445}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:07:33');
INSERT INTO `il_user_log` VALUES ('{287B34AB-FFA1-77DF-F851-6D765E739184}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 10:12:42');
INSERT INTO `il_user_log` VALUES ('{290DB0FD-0AF2-1F6D-F871-AFC178E5FF92}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:33:55');
INSERT INTO `il_user_log` VALUES ('{29EE29D5-010F-AA32-DC2D-8353EB27420C}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:22:13');
INSERT INTO `il_user_log` VALUES ('{29F7A83B-8559-67A6-F3E2-92BFD8678DFC}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:29:16');
INSERT INTO `il_user_log` VALUES ('{2A37BAC3-26C6-0BAC-84C8-630F07F4484C}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:30:42');
INSERT INTO `il_user_log` VALUES ('{2A3D6013-CADA-C7D6-5F8E-CA271BDB0394}', '业务管理', '楼层管理', '修改楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:49:18');
INSERT INTO `il_user_log` VALUES ('{2A406F92-9A7A-B565-B745-5A3D2C0B9BD7}', '业务管理', '建筑管理', '添加建筑', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:58:38');
INSERT INTO `il_user_log` VALUES ('{2A418D46-7DBE-4B2A-F1B2-5390C00D4859}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:15:40');
INSERT INTO `il_user_log` VALUES ('{2A5EE2E4-F9E6-EEE9-E7E1-BBBA89B62A7C}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:53:19');
INSERT INTO `il_user_log` VALUES ('{2A6B5D5E-CC8E-6F4C-C5CB-F90054720B33}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:46:15');
INSERT INTO `il_user_log` VALUES ('{2AAE646E-3E1A-E26D-F560-73AA2E2B9EEF}', '业务管理', '人员管理', '删除人员', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 11:52:52');
INSERT INTO `il_user_log` VALUES ('{2B4CD362-D509-BB96-50E2-9DC4C5BA168F}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:31:20');
INSERT INTO `il_user_log` VALUES ('{2B900B47-4B95-66C9-6BC8-F32F81534F93}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:25:34');
INSERT INTO `il_user_log` VALUES ('{2BA5EDF0-482F-029A-550C-94307E1FC847}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:36:17');
INSERT INTO `il_user_log` VALUES ('{2BECC1F4-117F-95E2-9121-FE4E2F1796EA}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:14:24');
INSERT INTO `il_user_log` VALUES ('{2C2F25EA-85F4-A097-C0AF-FAA68E0D39EF}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:18:07');
INSERT INTO `il_user_log` VALUES ('{2C528443-0880-B3B5-DB6E-2550392E66FD}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:25:47');
INSERT INTO `il_user_log` VALUES ('{2C74E9D2-A9B0-B006-6E3A-D82D2A023EB1}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 16:49:26');
INSERT INTO `il_user_log` VALUES ('{2DBA98D7-14FA-C0E0-9CAC-4D34853C08AF}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:42:48');
INSERT INTO `il_user_log` VALUES ('{2DCA9A68-B08C-1453-6C0A-5BCD9BAFA077}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 09:55:42');
INSERT INTO `il_user_log` VALUES ('{2DE77E59-E00F-F98B-98CB-F4B0D47250CF}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:20:15');
INSERT INTO `il_user_log` VALUES ('{2DEF2F4E-4558-C9BC-8D08-F519F011F29D}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:08:08');
INSERT INTO `il_user_log` VALUES ('{2E09D859-BF0F-4470-B8E5-96CE0EF9602C}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:46:47');
INSERT INTO `il_user_log` VALUES ('{2E626305-BEFE-86CB-2DE0-FD2D667D707C}', '业务管理', '单位管理', '修改子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:20:02');
INSERT INTO `il_user_log` VALUES ('{2E7CF63F-0C6A-6609-1EAD-30A8934DB614}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:38:01');
INSERT INTO `il_user_log` VALUES ('{2F03DD55-0B48-493D-F99C-5D771583EFB7}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:15:09');
INSERT INTO `il_user_log` VALUES ('{2F3B56C1-8B9F-FB45-4EA1-E18A90540843}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:19:11');
INSERT INTO `il_user_log` VALUES ('{2F863A1D-EA47-648B-510E-A2AE4582A950}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:34:13');
INSERT INTO `il_user_log` VALUES ('{2F8F6A49-643A-2C25-BE9B-4B96C728A4E9}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 10:42:13');
INSERT INTO `il_user_log` VALUES ('{2FFE9E5A-5B3C-CFEF-DA49-0380CE882455}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:27:12');
INSERT INTO `il_user_log` VALUES ('{30E4F747-E8E2-B065-512A-5D875A367E09}', '业务管理', '首页', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:23:15');
INSERT INTO `il_user_log` VALUES ('{3161EE00-2C39-B985-A8B4-A7C2AD8ABB79}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:06:55');
INSERT INTO `il_user_log` VALUES ('{31824F18-FBBA-4842-076D-17C9D54E625C}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:14:47');
INSERT INTO `il_user_log` VALUES ('{31891F66-1527-0A79-070F-CB6833D24E07}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:26:13');
INSERT INTO `il_user_log` VALUES ('{31DFAE5C-92ED-E942-08DE-3F4C99094AD7}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:01:34');
INSERT INTO `il_user_log` VALUES ('{323CCCFB-84E7-F296-1307-50D02C3F0355}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:24:06');
INSERT INTO `il_user_log` VALUES ('{32AE1420-B653-FE43-FFB2-E5B5C5B49977}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 16:20:38');
INSERT INTO `il_user_log` VALUES ('{334FFA08-59DF-792F-33D9-CB3D8C98DA76}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:32:16');
INSERT INTO `il_user_log` VALUES ('{3379A5FD-DD60-5200-6ACB-24F780343B6C}', '业务管理', '建筑管理', '修改建筑', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:24:33');
INSERT INTO `il_user_log` VALUES ('{34718C3A-E150-0D9B-628D-4F719B44812D}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-18 10:45:06');
INSERT INTO `il_user_log` VALUES ('{34A9B2CE-F092-00E9-FD26-6C29B412A113}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:34:31');
INSERT INTO `il_user_log` VALUES ('{3573D428-71CE-E70E-ADAF-DEB719187B64}', '业务管理', '事件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:23:30');
INSERT INTO `il_user_log` VALUES ('{3577D381-5135-9F9F-210B-0935F1C602EB}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:22:10');
INSERT INTO `il_user_log` VALUES ('{358AE72B-A1B1-9BD3-49CB-BC5AD5E5F7B7}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:46:20');
INSERT INTO `il_user_log` VALUES ('{35ACCF74-C3B4-18CE-EDB7-C026732CC7DE}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:01:09');
INSERT INTO `il_user_log` VALUES ('{370842F3-FC2F-59A2-E7A8-1EA6D374815C}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:23:43');
INSERT INTO `il_user_log` VALUES ('{375CC62A-E02C-9575-19D9-DD7FA1B475CE}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:53:18');
INSERT INTO `il_user_log` VALUES ('{37672EB6-7C07-13CA-CCDD-F42738D733CB}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-12 16:45:19');
INSERT INTO `il_user_log` VALUES ('{37F77253-53D1-1332-0A2A-89B41890B6B8}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:45:33');
INSERT INTO `il_user_log` VALUES ('{380CF091-8F00-5275-6A31-1FC9B73EA713}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:06:30');
INSERT INTO `il_user_log` VALUES ('{3819CE21-0D48-7A2E-172B-FCD4AFFEC468}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:21:33');
INSERT INTO `il_user_log` VALUES ('{3899004D-C2ED-864E-9E49-B137F6CAA405}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:05:30');
INSERT INTO `il_user_log` VALUES ('{391C65CF-19FF-5693-FA80-3039551D2E68}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:25:46');
INSERT INTO `il_user_log` VALUES ('{3954DC4B-26B4-9B09-BDEB-B1F042966BC2}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:31:15');
INSERT INTO `il_user_log` VALUES ('{39CEE86A-4E96-69BB-D978-03B7D88F124A}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:23:21');
INSERT INTO `il_user_log` VALUES ('{3A1C34F6-EFE9-1E1A-9B43-45FBAD0F1888}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:39:09');
INSERT INTO `il_user_log` VALUES ('{3A4C310B-C109-FA0C-CA99-626A8E75418C}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:01:10');
INSERT INTO `il_user_log` VALUES ('{3A664086-B3A5-69FF-BAC1-7C8E7537EF10}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:32:24');
INSERT INTO `il_user_log` VALUES ('{3A97570F-7F41-BA15-99AA-06FBB8D6DB07}', '业务管理', '单位管理', '修改子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:38:58');
INSERT INTO `il_user_log` VALUES ('{3AA190FE-4296-7546-24F7-AE7DD7DAF827}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:40:49');
INSERT INTO `il_user_log` VALUES ('{3AD17BCA-A183-D3CD-4FA9-DE7E066C799C}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:08:10');
INSERT INTO `il_user_log` VALUES ('{3AE2EAAD-5909-A80E-E75F-88C3DFBE2231}', '业务管理', '信标管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:22');
INSERT INTO `il_user_log` VALUES ('{3AEB6349-4BDC-1B11-08E7-0F64683ABB2D}', '业务管理', '建筑管理', '修改建筑', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:26:44');
INSERT INTO `il_user_log` VALUES ('{3B2024ED-5DC4-C88E-6855-D4852DC2AB70}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:23:29');
INSERT INTO `il_user_log` VALUES ('{3B4CD18E-0EE5-0622-BCB5-C82CC984FA30}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 20:47:52');
INSERT INTO `il_user_log` VALUES ('{3B7112CF-92C8-ECC7-5415-D5AB02BE2B90}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-11 09:16:30');
INSERT INTO `il_user_log` VALUES ('{3B91BEBE-4829-952F-AFCC-DBA41B5B7875}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:44:36');
INSERT INTO `il_user_log` VALUES ('{3C181DCF-72B3-8D1E-23E2-A23ECAA7B9F5}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:07:01');
INSERT INTO `il_user_log` VALUES ('{3CD1591D-6A19-A536-1D63-F95F95277520}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 10:28:23');
INSERT INTO `il_user_log` VALUES ('{3D0351F5-9D7D-5295-2CE6-D63CA6D9219E}', '业务管理', '事件管理', '删除', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:35:51');
INSERT INTO `il_user_log` VALUES ('{3D0A96F3-E0F5-3118-E229-A406280871ED}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:43:37');
INSERT INTO `il_user_log` VALUES ('{3D2D9D4D-85B8-AD49-1A21-629C7A85C5B5}', '业务管理', '首页', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:44:07');
INSERT INTO `il_user_log` VALUES ('{3D77EA95-D486-0B70-95B8-81F582FF3E8F}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:13:06');
INSERT INTO `il_user_log` VALUES ('{3E1141D9-A01F-28B5-057B-2A0AF92DA778}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:46:16');
INSERT INTO `il_user_log` VALUES ('{3E28A70E-44B7-5B93-1605-910F5395FCEE}', '系统管理', '角色管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:36');
INSERT INTO `il_user_log` VALUES ('{3E412142-9886-7236-DECB-ACAA46BC6BC1}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:07:11');
INSERT INTO `il_user_log` VALUES ('{3EC51522-6E5C-5406-980F-193686BE2A25}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 14:17:46');
INSERT INTO `il_user_log` VALUES ('{3ECED3D5-A7B2-EB9B-C4DF-FB261FE33D8C}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:38:33');
INSERT INTO `il_user_log` VALUES ('{3ED42ED7-1BBB-0577-6F0D-DE48F196C4FD}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:30:42');
INSERT INTO `il_user_log` VALUES ('{3F30FE4C-2918-0682-B932-EDE72BFB2026}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:06:59');
INSERT INTO `il_user_log` VALUES ('{3F84207A-FCD8-B7F7-0BF9-00AB7E715F25}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:12:15');
INSERT INTO `il_user_log` VALUES ('{3F9D629A-70F0-2F8B-B6B8-1F10E78BA248}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:50:18');
INSERT INTO `il_user_log` VALUES ('{3FA0754F-8900-0F61-6465-AF557DDE5EBD}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:42:18');
INSERT INTO `il_user_log` VALUES ('{401DDD13-3AB9-1D41-1635-1F0289CF6768}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:27:43');
INSERT INTO `il_user_log` VALUES ('{4058FECF-41B9-E656-FD9A-9018E00F3C3F}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:52:36');
INSERT INTO `il_user_log` VALUES ('{40971C8F-707C-9A86-B52D-E8BA952A9D12}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:44:39');
INSERT INTO `il_user_log` VALUES ('{4184243D-434B-5A46-4742-7D58D9764E18}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:15:51');
INSERT INTO `il_user_log` VALUES ('{41F4633D-C103-8666-438D-21B70DDAC849}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:15:10');
INSERT INTO `il_user_log` VALUES ('{427A30F2-202B-C8AD-5320-6DE182EE78EE}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:13:25');
INSERT INTO `il_user_log` VALUES ('{42C280F9-B510-7087-4D9B-C316985460AA}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 12:22:42');
INSERT INTO `il_user_log` VALUES ('{42FE3873-E867-76F6-10BB-C0D11E07F809}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:45:55');
INSERT INTO `il_user_log` VALUES ('{433AEBCD-FE0B-8D4C-A107-8F3019D7C487}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:45:30');
INSERT INTO `il_user_log` VALUES ('{4374784D-189A-249E-F68D-6C1DCF8936F2}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:07:14');
INSERT INTO `il_user_log` VALUES ('{439AF115-47F3-B32D-1EE2-381848F64570}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:35:15');
INSERT INTO `il_user_log` VALUES ('{43B543F6-5313-4306-1AB2-70E450E9ED9D}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:09:27');
INSERT INTO `il_user_log` VALUES ('{43BAC149-E2B2-7F03-FA43-47A9774D922C}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:35:26');
INSERT INTO `il_user_log` VALUES ('{43BB5551-3F62-195F-7398-09D22E7973A3}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:07:10');
INSERT INTO `il_user_log` VALUES ('{43F24FC0-5E20-1A33-110C-8F2ED62DBFFD}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:11:22');
INSERT INTO `il_user_log` VALUES ('{4447678A-75A0-C0D1-C00F-D51D8871F0FF}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:44:32');
INSERT INTO `il_user_log` VALUES ('{4457304C-79AE-3746-7467-3C909CF38238}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:44:09');
INSERT INTO `il_user_log` VALUES ('{44DEF601-3BEF-D8B9-8785-0262EBC049CD}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:12:54');
INSERT INTO `il_user_log` VALUES ('{45058BA4-2D99-803A-965D-71E67583270E}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:24:36');
INSERT INTO `il_user_log` VALUES ('{450D9D75-4E37-781E-A138-8C4C754E4A97}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:22:38');
INSERT INTO `il_user_log` VALUES ('{452F7943-5F99-2673-7D07-E6FA4B63E84A}', '业务管理', '组成员管理', '成员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:00');
INSERT INTO `il_user_log` VALUES ('{45439480-8F25-7B41-82DE-9605C3FFCFFF}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:08:12');
INSERT INTO `il_user_log` VALUES ('{4573C9DC-3F36-7E49-1D44-066D26D1B9A1}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:29:01');
INSERT INTO `il_user_log` VALUES ('{4595CDFB-8E9E-BC27-75E4-A772A75ABCD7}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:37:09');
INSERT INTO `il_user_log` VALUES ('{459C2DFD-CFF3-F6E9-DAF6-79B13A0EC14D}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 10:37:45');
INSERT INTO `il_user_log` VALUES ('{46032648-9CBD-3FB9-4A09-8F35CDD1ECB3}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:23:46');
INSERT INTO `il_user_log` VALUES ('{465549D3-654B-4257-288D-69E518E19DFB}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 11:17:45');
INSERT INTO `il_user_log` VALUES ('{4655C7A5-FFD8-526F-F944-CACC384F0C2B}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:48:25');
INSERT INTO `il_user_log` VALUES ('{465FA74F-771C-58BF-0A81-AA79FC776253}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:09:40');
INSERT INTO `il_user_log` VALUES ('{46C3A2D2-5F1D-8313-E3CD-E2FA52747808}', 'system', 'login', 'in', '成功', '', '', '', '0.0.0.0', '2017-08-11 11:08:41');
INSERT INTO `il_user_log` VALUES ('{46D3CE58-1AB9-B1C3-5847-186DE5D20291}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:48:57');
INSERT INTO `il_user_log` VALUES ('{46E526BD-F372-67D2-7AA3-DE41DB352088}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:35:31');
INSERT INTO `il_user_log` VALUES ('{476BB66D-D43A-7F5F-4566-73106E223731}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:34:28');
INSERT INTO `il_user_log` VALUES ('{4795C060-1EA3-0C10-7378-24630DFE9466}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 09:18:57');
INSERT INTO `il_user_log` VALUES ('{4806E8B0-AFC9-8C8B-5B6D-A13D7747929F}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:33:26');
INSERT INTO `il_user_log` VALUES ('{488AFCB2-582E-429F-9655-A932F30AC550}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:26:18');
INSERT INTO `il_user_log` VALUES ('{48CD6E24-421D-1D0B-322D-664FD58CD79C}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:44:59');
INSERT INTO `il_user_log` VALUES ('{48D1486C-F5D2-7340-4C9D-BA39B0E127F2}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:33:58');
INSERT INTO `il_user_log` VALUES ('{48E19E6F-3B95-489F-0E78-5DB1A31C9441}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:31:24');
INSERT INTO `il_user_log` VALUES ('{490BDD99-9426-9090-BFA1-EF2B90D3F4A3}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:37:38');
INSERT INTO `il_user_log` VALUES ('{492BEEF5-A90C-87B4-8647-945AAEAFE6FF}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:05:53');
INSERT INTO `il_user_log` VALUES ('{49560387-831D-F95B-5498-C75505C5EFA2}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:54:28');
INSERT INTO `il_user_log` VALUES ('{497B75B6-8E25-5548-593A-B9F94EAD5FD1}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:53:19');
INSERT INTO `il_user_log` VALUES ('{498B4E1C-8AF6-B57F-0219-92249035C645}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 12:22:26');
INSERT INTO `il_user_log` VALUES ('{49E52A29-CB63-6A11-0EFA-F5EBDA9478B6}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:17:59');
INSERT INTO `il_user_log` VALUES ('{49F0A4B4-3CD0-3F19-33EF-AF93940135DD}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:21:47');
INSERT INTO `il_user_log` VALUES ('{4A675C23-F331-B8B6-618A-1C7BBC751E3C}', '业务管理', '人员管理', '添加人员', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:29:54');
INSERT INTO `il_user_log` VALUES ('{4B1C8F3F-C5A1-4CCE-AF70-5B1B5B987467}', '业务管理', '单位管理', '修改子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:29:54');
INSERT INTO `il_user_log` VALUES ('{4B4A3C83-2A63-DE75-8EDB-D16D4E8FF384}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-10 09:17:42');
INSERT INTO `il_user_log` VALUES ('{4BAE7B3D-8A81-C394-B720-88CA59F5F2E1}', '业务管理', '单位管理', '修改子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:24:56');
INSERT INTO `il_user_log` VALUES ('{4BCF768E-A5A2-0CB1-AE51-4EE136C8AC7A}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:03:55');
INSERT INTO `il_user_log` VALUES ('{4BD8F8FD-D5D0-F030-7B7D-DC8757FF7C81}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:43:53');
INSERT INTO `il_user_log` VALUES ('{4BF27045-5B51-897B-0E16-67B4EB7B6E1A}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 12:09:12');
INSERT INTO `il_user_log` VALUES ('{4BF30F4B-0682-2B2B-7F0A-2AFB911B5464}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:45:22');
INSERT INTO `il_user_log` VALUES ('{4C05E6FF-5921-33ED-C641-CDDCCDF19648}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:34:33');
INSERT INTO `il_user_log` VALUES ('{4C6464B0-114A-92B3-615D-53E869D30AC1}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:07:18');
INSERT INTO `il_user_log` VALUES ('{4C7EA8A4-6CDE-2BD1-09F9-613B550F2E55}', '业务管理', '组管理', '添加组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:14:43');
INSERT INTO `il_user_log` VALUES ('{4C8D73FF-B620-21CE-774B-E34587E853F6}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 16:48:03');
INSERT INTO `il_user_log` VALUES ('{4CAB8BD6-0A40-0FED-5E06-CF8F50225016}', '业务管理', '单位管理', '添加子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:04:26');
INSERT INTO `il_user_log` VALUES ('{4CACC3F7-D603-4E6D-F608-4422BB3E00D3}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:07:40');
INSERT INTO `il_user_log` VALUES ('{4CD3AD2A-21E9-83DB-EA37-227236057095}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:18:45');
INSERT INTO `il_user_log` VALUES ('{4D15B595-4C8A-12BA-C83D-256CC1321749}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:26:13');
INSERT INTO `il_user_log` VALUES ('{4D1FF8DB-A36B-F195-33C7-35FA78979054}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:36:16');
INSERT INTO `il_user_log` VALUES ('{4D33B3B5-ED8D-6F2A-5257-51F62ABA6F8B}', '业务管理', '首页', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:29:48');
INSERT INTO `il_user_log` VALUES ('{4D786A0D-657D-DF91-FEA4-5CBCBC1F6B00}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:11');
INSERT INTO `il_user_log` VALUES ('{4D826642-3E91-1522-60C0-E3DD53C7C1D7}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:42:53');
INSERT INTO `il_user_log` VALUES ('{4DA2E892-B40E-CB43-84E4-9FA7FEA5F2D6}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:34:46');
INSERT INTO `il_user_log` VALUES ('{4DB4AF85-CDB0-D93F-F733-81511D8AA703}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 14:31:24');
INSERT INTO `il_user_log` VALUES ('{4E0C764D-AD40-0B93-FA5C-E46D50DDF8D0}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:23:37');
INSERT INTO `il_user_log` VALUES ('{4E26CDB3-8E0F-E2C0-765E-9185165DDE89}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:34:43');
INSERT INTO `il_user_log` VALUES ('{4E6682FF-F4BF-8CB7-9B72-4DEE08C1BBF8}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:07:18');
INSERT INTO `il_user_log` VALUES ('{4F1D4B54-9960-1EA1-1DC0-5528F4A994C3}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:36:16');
INSERT INTO `il_user_log` VALUES ('{4F37D89F-F6DB-EE12-F4AD-FCC007243C6F}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:51:07');
INSERT INTO `il_user_log` VALUES ('{4F8EE81C-7306-A43F-C72D-BA0092ECA605}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:32:14');
INSERT INTO `il_user_log` VALUES ('{4FA0A6C2-C8C1-5F36-A527-5ADD10ECBFA7}', '业务管理', '单位管理', '本单位信息', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:01');
INSERT INTO `il_user_log` VALUES ('{507195D2-39C6-D83F-62F9-5AA7D40716D8}', '业务管理', '建筑管理', '添加建筑', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 10:58:27');
INSERT INTO `il_user_log` VALUES ('{507FBA8D-5A8A-B994-C002-0818C85703AF}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 14:42:56');
INSERT INTO `il_user_log` VALUES ('{50B6A672-2F98-777B-8335-99F82C982767}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:46:52');
INSERT INTO `il_user_log` VALUES ('{51396C2D-C223-B17A-9B45-A1618904247B}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 13:57:27');
INSERT INTO `il_user_log` VALUES ('{51E8F8F2-3EE8-90F5-6852-344E85A9F4F6}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:22:23');
INSERT INTO `il_user_log` VALUES ('{51E9B31D-AB20-8D5E-3DBF-3FB5A8A5E42E}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:50:09');
INSERT INTO `il_user_log` VALUES ('{523DDBB5-843A-5F20-BBDB-7031E185CD71}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:07:46');
INSERT INTO `il_user_log` VALUES ('{5241D9DD-CC67-617E-0697-83F38846C68B}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 10:14:05');
INSERT INTO `il_user_log` VALUES ('{52C4CDEA-C67E-6EBF-3D84-CE30C0972575}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:11:44');
INSERT INTO `il_user_log` VALUES ('{5315F220-FEE0-1F62-7718-2876823843C6}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:24:50');
INSERT INTO `il_user_log` VALUES ('{531E0ED2-69C2-95EB-FEE3-AB76B3F69F6E}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 14:57:25');
INSERT INTO `il_user_log` VALUES ('{5328C3D5-995A-81AA-2B84-99BBAEC964A4}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:49:25');
INSERT INTO `il_user_log` VALUES ('{5331C646-7A05-FB2E-F87E-92DB50B0787E}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 19:18:07');
INSERT INTO `il_user_log` VALUES ('{53518393-CF0A-2B02-E721-6371B831E1C6}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-12 14:15:27');
INSERT INTO `il_user_log` VALUES ('{536D914F-4C12-EA60-9978-91D5FD15987E}', '业务管理', '建筑管理', '修改建筑', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:26:29');
INSERT INTO `il_user_log` VALUES ('{53702D8F-1138-84CF-8E36-6BEE118D506E}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:38:55');
INSERT INTO `il_user_log` VALUES ('{5412CD77-43A2-5ECC-8D14-01182130E6B2}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:07:17');
INSERT INTO `il_user_log` VALUES ('{542F8C53-5FE7-9ECF-97BC-169A90C69246}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:06:01');
INSERT INTO `il_user_log` VALUES ('{54456E1A-DE8D-0595-7A40-295FFE12D0A7}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:39:09');
INSERT INTO `il_user_log` VALUES ('{544D761A-DB17-3B59-BF4A-373BD89B1A6A}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:16:36');
INSERT INTO `il_user_log` VALUES ('{54B4536D-B654-BFC2-ACF6-42FF11FCC6F2}', '业务管理', '首页', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:45:45');
INSERT INTO `il_user_log` VALUES ('{54DD663C-03AD-9FF0-D3CD-7394447435BA}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 17:16:10');
INSERT INTO `il_user_log` VALUES ('{54E91D09-FEE4-2F51-E26E-A5C02828278B}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 10:28:18');
INSERT INTO `il_user_log` VALUES ('{55794760-D8C4-EBEB-A9F4-06A22D635CC0}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:38:44');
INSERT INTO `il_user_log` VALUES ('{55829A91-EB33-3D32-E9BC-FF69EA36932E}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:04:54');
INSERT INTO `il_user_log` VALUES ('{5585EC29-2678-D7EB-4572-CDBE9E7674F6}', '业务管理', '组管理', '修改组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:01:44');
INSERT INTO `il_user_log` VALUES ('{55C3613C-2506-CAAA-873C-8A375366650C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 10:12:44');
INSERT INTO `il_user_log` VALUES ('{55E88202-AFDB-119C-AAC5-074A8B24E8C3}', '系统管理', '用户管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:34');
INSERT INTO `il_user_log` VALUES ('{56D5620D-F212-7C2A-0D63-EC3DFE9BDC3B}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:41:06');
INSERT INTO `il_user_log` VALUES ('{572852E1-0878-7AD5-3766-648AB9817DF7}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 16:54:04');
INSERT INTO `il_user_log` VALUES ('{57411A63-19F2-39D5-57C4-5FE78A6A7AC3}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:30:24');
INSERT INTO `il_user_log` VALUES ('{57558602-5E70-091C-B7B6-3D69D2665A6F}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:21:55');
INSERT INTO `il_user_log` VALUES ('{5795A611-7A49-370A-F5E8-E85770FBDE32}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:42:08');
INSERT INTO `il_user_log` VALUES ('{57BE5AF7-0C2D-6880-B253-EB30B5607ABD}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:57:02');
INSERT INTO `il_user_log` VALUES ('{57FFC7E4-438C-FF4B-1360-5A2CAD66035B}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:41:00');
INSERT INTO `il_user_log` VALUES ('{5834C35B-D95D-FE4B-6B95-69A2DC7DB2B8}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:22:30');
INSERT INTO `il_user_log` VALUES ('{58515478-96DA-900B-B854-8A392B4686E6}', '业务管理', '人员管理', '修改人员信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 11:26:33');
INSERT INTO `il_user_log` VALUES ('{5868B0D6-4DDB-FF95-9664-EFEE684338BC}', '业务管理', '事件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:41:01');
INSERT INTO `il_user_log` VALUES ('{58C4A6DA-6A77-0967-394C-0A771F7258FF}', '业务管理', '首页', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:22:02');
INSERT INTO `il_user_log` VALUES ('{58DD98BE-D0BA-9E8F-A737-A1AB959BC1BC}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 14:42:24');
INSERT INTO `il_user_log` VALUES ('{59122933-6E45-A5DA-34C6-EDBD3DC028AF}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:18:03');
INSERT INTO `il_user_log` VALUES ('{592E83B1-8CA4-0816-4D05-F6EA6908A7EF}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:45:27');
INSERT INTO `il_user_log` VALUES ('{5965AC7A-94EB-0F63-0389-B3A722475778}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:40:44');
INSERT INTO `il_user_log` VALUES ('{597485E2-4381-89B5-CF7C-0E527DBA2687}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:16:59');
INSERT INTO `il_user_log` VALUES ('{5982B7A1-AF58-6591-2303-31AF1E49AE2E}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:48:56');
INSERT INTO `il_user_log` VALUES ('{5A2E1B20-2DA5-5509-F39B-2EF8191EA53B}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:06:14');
INSERT INTO `il_user_log` VALUES ('{5AB64817-7165-8CB9-CAFD-21781A11DFBB}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:28:12');
INSERT INTO `il_user_log` VALUES ('{5AC574E6-6180-D209-8371-A4B0B10719B9}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:13:23');
INSERT INTO `il_user_log` VALUES ('{5ACBAB93-8EDB-E30E-FD99-F75ADECF6063}', '业务管理', '组成员管理', '成员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:55:01');
INSERT INTO `il_user_log` VALUES ('{5B109773-287F-3988-5704-438409779E78}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:48:07');
INSERT INTO `il_user_log` VALUES ('{5BA21A96-8D00-2E79-FEFB-8DB77C1BC23C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:20:11');
INSERT INTO `il_user_log` VALUES ('{5C096367-9527-C023-9722-6FFA90241C78}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:07:22');
INSERT INTO `il_user_log` VALUES ('{5C15C485-6203-51A5-9404-D50263B63922}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 14:43:53');
INSERT INTO `il_user_log` VALUES ('{5C22AF9C-BFA8-24D1-19F7-8778CBAA47C9}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:14:34');
INSERT INTO `il_user_log` VALUES ('{5C741E0F-1533-724C-AB7D-B6AE6CF4D023}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 10:36:49');
INSERT INTO `il_user_log` VALUES ('{5D1DE1F3-CFDB-18B0-8D6B-92E3783E81AD}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:01:16');
INSERT INTO `il_user_log` VALUES ('{5D61D9B3-48A7-D911-0B10-139C6EDE21F1}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:17:24');
INSERT INTO `il_user_log` VALUES ('{5DB3AC58-235C-0E8A-AE6D-5DDCEF77CB53}', '业务管理', '建筑管理', '添加建筑', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:58:35');
INSERT INTO `il_user_log` VALUES ('{5DCF9430-31FF-5CC0-2269-818C46E8F8D9}', '业务管理', '建筑管理', '删除建筑', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:16:55');
INSERT INTO `il_user_log` VALUES ('{5E3CE08A-2B98-6033-2702-EF5440B71A0B}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:54:44');
INSERT INTO `il_user_log` VALUES ('{5E4EC12B-B776-BE42-168B-A7CF06909F0F}', '业务管理', '单位管理', '添加子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:02:24');
INSERT INTO `il_user_log` VALUES ('{5E63EE52-430E-3E8E-C569-C5BD02ACFB56}', '业务管理', '单位管理', '修改子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:57:20');
INSERT INTO `il_user_log` VALUES ('{5E6EBE87-12F5-9CCD-5D10-A43AF8A19D72}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 14:51:33');
INSERT INTO `il_user_log` VALUES ('{5F013281-98D2-3938-9725-2269CD74A0B2}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:29:16');
INSERT INTO `il_user_log` VALUES ('{60920B92-865D-DEEF-CAA0-4655C245A5B3}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 20:47:31');
INSERT INTO `il_user_log` VALUES ('{60C1E5F9-13BD-F5B4-76E3-6DDB2742A2B4}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 09:36:38');
INSERT INTO `il_user_log` VALUES ('{60DFD655-603E-5DC1-00AA-CE1A1B574738}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:10:38');
INSERT INTO `il_user_log` VALUES ('{610C6075-8939-B61C-5577-698B1257F339}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:05:52');
INSERT INTO `il_user_log` VALUES ('{61560EA5-0018-4DA0-8B40-110005BEB777}', '系统管理', '用户管理', '修改密码', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:08:02');
INSERT INTO `il_user_log` VALUES ('{61CEED94-574B-BBB2-20DB-4D61BC42CCD0}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 14:17:52');
INSERT INTO `il_user_log` VALUES ('{61D9E10E-9455-6BA6-7779-BCE875D0051B}', '业务管理', '组管理', '修改组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:33:45');
INSERT INTO `il_user_log` VALUES ('{61EDCC68-B013-C007-F904-ABD743E46C94}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-09 10:18:59');
INSERT INTO `il_user_log` VALUES ('{6231C853-2C9F-E1B5-8FB0-84CD19D5EA3D}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:21:35');
INSERT INTO `il_user_log` VALUES ('{62346EBC-07D4-A891-D8E7-93FE8034079E}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:30:27');
INSERT INTO `il_user_log` VALUES ('{626E58FE-AEF9-D442-C10E-07E150D4F845}', '业务管理', '组成员管理', '成员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:21:13');
INSERT INTO `il_user_log` VALUES ('{62E760CC-7C2A-BBB9-F788-76739BB2DA68}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:36:56');
INSERT INTO `il_user_log` VALUES ('{633504FF-8DED-4EA8-0F31-8C023D01A3A5}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:08:06');
INSERT INTO `il_user_log` VALUES ('{637F64AC-069B-76F0-360E-DE38D4CB597F}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:48:37');
INSERT INTO `il_user_log` VALUES ('{63AFAD26-0015-15CE-F448-802E69F05B5E}', '业务管理', '单位管理', '子单位列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:01:59');
INSERT INTO `il_user_log` VALUES ('{6485A8AD-69FA-6F1B-CED5-877C3D23FF8F}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-12 16:42:56');
INSERT INTO `il_user_log` VALUES ('{64D01425-BC87-E710-810C-A824A308DCD9}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:28:42');
INSERT INTO `il_user_log` VALUES ('{65209362-2C11-EF9C-B704-16F2B883F7DE}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 10:03:15');
INSERT INTO `il_user_log` VALUES ('{6546FFD2-C087-EAED-CAEE-D737DCF4447F}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:30:56');
INSERT INTO `il_user_log` VALUES ('{6564CF80-D62F-3B6D-00AD-292DB29D0582}', '业务管理', '建筑管理', '修改建筑', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:25:00');
INSERT INTO `il_user_log` VALUES ('{65BF6F6F-F981-D3B4-1EF1-F93CAA9CEFF0}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 19:18:10');
INSERT INTO `il_user_log` VALUES ('{65EE6DD1-B13D-FB58-01C0-9DF121E7D379}', '业务管理', '单位管理', '修改子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:48:51');
INSERT INTO `il_user_log` VALUES ('{661C5A4B-46C6-15B5-3FB7-3C0EF4659BD0}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:24:53');
INSERT INTO `il_user_log` VALUES ('{66AD9479-4EC3-5775-29A8-B57224CBE380}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:06:09');
INSERT INTO `il_user_log` VALUES ('{671ED462-E5DF-DF7C-B735-7C60F84EE4C8}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:21:22');
INSERT INTO `il_user_log` VALUES ('{6722D546-103E-01CE-D69A-2EC1FC182709}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:01:12');
INSERT INTO `il_user_log` VALUES ('{678BA1C4-53A4-E847-9B94-E9958E9CC56D}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:53:11');
INSERT INTO `il_user_log` VALUES ('{67CFE212-3850-1D01-8E1A-A4535D6C401E}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:48:37');
INSERT INTO `il_user_log` VALUES ('{68102AD9-1C28-E6F2-C4C3-9B7E851AAD01}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:23:18');
INSERT INTO `il_user_log` VALUES ('{684F649D-EB18-B71E-1045-8B14180DBD23}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-11 15:16:15');
INSERT INTO `il_user_log` VALUES ('{68880589-A50F-E374-84F1-22D738FC8E71}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:54:46');
INSERT INTO `il_user_log` VALUES ('{689B8781-B3C5-50A5-98DD-85F3A83B6C9C}', '业务管理', '单位管理', '删除子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:01:28');
INSERT INTO `il_user_log` VALUES ('{68B56E9F-CB50-D0BA-97A0-02B38A2ACC91}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:38:28');
INSERT INTO `il_user_log` VALUES ('{691C957B-FDC1-2ABE-DDBC-FD3444F314D1}', '业务管理', '人员管理', '添加人员', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 11:17:30');
INSERT INTO `il_user_log` VALUES ('{694FD0E6-324F-D7F7-0860-E31AFF527B36}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:08:49');
INSERT INTO `il_user_log` VALUES ('{6985AC68-19C1-7E2D-C593-5C28D30CE907}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:05:03');
INSERT INTO `il_user_log` VALUES ('{699C2F7A-ECC7-0FB2-86E0-65849CC0C3B1}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:33:47');
INSERT INTO `il_user_log` VALUES ('{6A9F79C4-9E34-4EFE-24D6-ABC0EB140921}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:41:15');
INSERT INTO `il_user_log` VALUES ('{6ABEF11F-DCC5-FCCB-B5EF-49401143CF4F}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:09:35');
INSERT INTO `il_user_log` VALUES ('{6B8320BD-5BBF-450B-1ACA-E1CFEB759133}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:33:45');
INSERT INTO `il_user_log` VALUES ('{6C5F2485-9F6F-1CEE-AFA4-CE69A26072A5}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:11:27');
INSERT INTO `il_user_log` VALUES ('{6C653ECD-890D-8B93-6BA0-7C3B96055F03}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-17 10:29:07');
INSERT INTO `il_user_log` VALUES ('{6CA3A898-77AF-DC9B-F388-06864B8B1257}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:52:13');
INSERT INTO `il_user_log` VALUES ('{6D351EB2-E7A8-9543-1634-2EBB855F3442}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 16:21:49');
INSERT INTO `il_user_log` VALUES ('{6D40F94F-5949-23AE-4CE1-3E5819BD5511}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:53:49');
INSERT INTO `il_user_log` VALUES ('{6DA24575-78C0-6D57-3AD0-8132D221A189}', '业务管理', '现场终端管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:06:20');
INSERT INTO `il_user_log` VALUES ('{6DBB6857-3D9C-818A-9348-B91ACBB7238B}', '业务管理', '信标管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 20:45:25');
INSERT INTO `il_user_log` VALUES ('{6DE9FCF8-41D6-AF1C-81BA-8BA37D82435E}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:37:40');
INSERT INTO `il_user_log` VALUES ('{6E430CEC-AB42-EFED-17FC-173C70FD82D1}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 11:47:05');
INSERT INTO `il_user_log` VALUES ('{6EB905CF-17F3-5725-6046-0236AA72F115}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 13:57:47');
INSERT INTO `il_user_log` VALUES ('{6F06C2D5-9B31-00C1-EDED-2E96BC932CAF}', '业务管理', '首页', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:19:09');
INSERT INTO `il_user_log` VALUES ('{6F4938F3-1369-E195-235F-C78E2C148BCC}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:59:07');
INSERT INTO `il_user_log` VALUES ('{6F552E86-CF0F-7FF0-DC7D-B8FD245B0880}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:26:01');
INSERT INTO `il_user_log` VALUES ('{6F8B02B4-231B-5928-223E-9553C8EC500B}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:10:44');
INSERT INTO `il_user_log` VALUES ('{6F95240E-7485-BEE6-AF45-61648B0CBAB4}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 16:20:25');
INSERT INTO `il_user_log` VALUES ('{6F9F2327-4D92-084C-C75C-0B6863F7A5DD}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:48:23');
INSERT INTO `il_user_log` VALUES ('{704C4F5E-28AA-DD34-0A78-CA742B2E48A9}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:27:27');
INSERT INTO `il_user_log` VALUES ('{70699F53-92C0-B0DA-ACA6-772BED01473F}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:45:18');
INSERT INTO `il_user_log` VALUES ('{70DF32AE-D07E-018A-776A-C15994AF4C69}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:06:10');
INSERT INTO `il_user_log` VALUES ('{70E3F87D-B468-1758-0F3F-9EC923D65FF4}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:19:17');
INSERT INTO `il_user_log` VALUES ('{7100D83E-F749-9ADB-E794-1B4477103F5C}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:07:07');
INSERT INTO `il_user_log` VALUES ('{71F78C2D-E0FD-A46E-07CC-7037A9688611}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:06:32');
INSERT INTO `il_user_log` VALUES ('{71FCBF39-185C-F98A-1A1A-A8A1ED9416D6}', 'admin', 'index', 'dashboard', '失败', '', '', '', '0.0.0.0', '2017-08-21 09:20:33');
INSERT INTO `il_user_log` VALUES ('{723F7D40-C738-2C94-C794-D6B9CFC3A3B9}', '业务管理', '单位管理', '本单位信息', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:01:57');
INSERT INTO `il_user_log` VALUES ('{725F6847-0379-4D75-C3D7-CECEBAACF4B6}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:33:46');
INSERT INTO `il_user_log` VALUES ('{72773A1D-2456-A29C-1964-B34F0F1880B1}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:10:27');
INSERT INTO `il_user_log` VALUES ('{7293E0E6-8CFA-CC05-B9BE-4AF396781A25}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:14:18');
INSERT INTO `il_user_log` VALUES ('{72BFBA1B-F6C1-41FD-2806-4859E15F91C7}', '业务管理', '事件管理', '修改', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:23:45');
INSERT INTO `il_user_log` VALUES ('{72C67CB1-9A1C-C504-E1AC-7DFF3F5C9ED8}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:05:02');
INSERT INTO `il_user_log` VALUES ('{7307BA09-7D35-91EB-988C-072D39549B9F}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 10:52:58');
INSERT INTO `il_user_log` VALUES ('{732025DF-6AF2-B692-BC80-C7EC5D1FBA3F}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:58:50');
INSERT INTO `il_user_log` VALUES ('{7350D0FD-C2E5-9264-703B-DE6250539613}', '业务管理', '首页', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:43:39');
INSERT INTO `il_user_log` VALUES ('{74042DDD-65E2-C0E8-359E-CBAE37E13D9E}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:44:53');
INSERT INTO `il_user_log` VALUES ('{7480EBD4-AD39-9E40-F39A-D3B74E2FEFDF}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:08:55');
INSERT INTO `il_user_log` VALUES ('{749C9A74-2193-A622-6680-8D6E3FE8C2F8}', '业务管理', '人员管理', '修改人员信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:56:29');
INSERT INTO `il_user_log` VALUES ('{74C1EA00-E8A2-7B3B-5267-89B09E8BF50C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:57:08');
INSERT INTO `il_user_log` VALUES ('{74FCDF64-5A0A-7A30-5359-26AEACC6515E}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:54:02');
INSERT INTO `il_user_log` VALUES ('{75B775FB-06A2-14BA-9318-8E83E9BB41BE}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:53:20');
INSERT INTO `il_user_log` VALUES ('{763EB381-68A2-DC78-E1AF-3B4017FD9315}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:57:57');
INSERT INTO `il_user_log` VALUES ('{76C54777-0DAD-4706-AF64-288ED3BCD5EA}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:45:30');
INSERT INTO `il_user_log` VALUES ('{77394E00-38DA-3D44-8015-4CD1DC2FB160}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:23:08');
INSERT INTO `il_user_log` VALUES ('{7791EDBD-A138-9EE1-9B30-272853114608}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:52:59');
INSERT INTO `il_user_log` VALUES ('{78AF0662-8FC4-7ADB-1451-0D4578D5C9A1}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:20');
INSERT INTO `il_user_log` VALUES ('{78B85EDD-912B-6542-6AAC-9C812765A276}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:17:00');
INSERT INTO `il_user_log` VALUES ('{78CD3C72-3E22-7F23-FEAE-0A75D8461D80}', '业务管理', '单位管理', '修改子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:57:15');
INSERT INTO `il_user_log` VALUES ('{79570039-9D96-F432-87C8-44E77D885AA7}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:30:44');
INSERT INTO `il_user_log` VALUES ('{79644266-B4AB-2B6F-1B36-9F217DA14D77}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 16:54:08');
INSERT INTO `il_user_log` VALUES ('{797D868F-02FE-B1B5-AB10-2F8742177C2A}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 20:09:43');
INSERT INTO `il_user_log` VALUES ('{79ABD1F0-65EB-58B6-3095-C0D2772A0810}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:05:32');
INSERT INTO `il_user_log` VALUES ('{79B9E85E-3057-07BE-A5C8-B62F1A54D610}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:52:41');
INSERT INTO `il_user_log` VALUES ('{79CC0F48-A17D-01B3-3B6B-61F0F2A7B01D}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:41:16');
INSERT INTO `il_user_log` VALUES ('{7A4FE24C-3D64-8BA4-6AA9-96D4C32F42FC}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:23:55');
INSERT INTO `il_user_log` VALUES ('{7A65B900-82EE-2C52-9068-2FD515A95A87}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:37:52');
INSERT INTO `il_user_log` VALUES ('{7A82345C-2526-34B5-1A83-EF4AAD727B24}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:17');
INSERT INTO `il_user_log` VALUES ('{7B33D546-DB40-1471-F1F9-B865D4FEC59A}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:42:25');
INSERT INTO `il_user_log` VALUES ('{7B38D776-794C-6282-387B-31A4A0416396}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:44:34');
INSERT INTO `il_user_log` VALUES ('{7B61348C-BC2A-D6A2-1589-B9A842F95AC9}', '业务管理', '首页', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:46:45');
INSERT INTO `il_user_log` VALUES ('{7BCEFFA5-ED88-7E11-274C-52A3AB9E4787}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:14:30');
INSERT INTO `il_user_log` VALUES ('{7C7077C0-CAB6-884A-AB4B-AC61AEF367DA}', '业务管理', '事件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:34:11');
INSERT INTO `il_user_log` VALUES ('{7C907A70-D21D-C267-0AE7-F28D74710609}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:49:57');
INSERT INTO `il_user_log` VALUES ('{7CAC27D0-2FC4-2671-3FD0-150367284678}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:15');
INSERT INTO `il_user_log` VALUES ('{7CF722A6-2070-9228-82FB-4AF92CBCDF84}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:11:10');
INSERT INTO `il_user_log` VALUES ('{7D1B68F6-3DE3-C5B1-0C94-CBEC8DAAA2C2}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:44:30');
INSERT INTO `il_user_log` VALUES ('{7D2E8EC7-B7E0-01E5-151D-5B97C68E696B}', '业务管理', '楼层管理', '楼层列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:28');
INSERT INTO `il_user_log` VALUES ('{7D551F81-04D7-F15D-9C4A-BB7243BEB828}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:38:20');
INSERT INTO `il_user_log` VALUES ('{7DADE4EC-42AC-D7DC-D15C-421A8C4E35FD}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:41:06');
INSERT INTO `il_user_log` VALUES ('{7DE4972B-FA39-955A-ABB6-CCEE4BDFF328}', '业务管理', '单位管理', '删除子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 16:43:49');
INSERT INTO `il_user_log` VALUES ('{7E21639D-A4F2-6DAA-FEBB-20A1A5F0ADC2}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:36:08');
INSERT INTO `il_user_log` VALUES ('{7E5041DB-27BD-4396-875E-E2C699167A85}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 20:46:59');
INSERT INTO `il_user_log` VALUES ('{7E82B451-5324-BC6E-CE51-184D01978807}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:50:55');
INSERT INTO `il_user_log` VALUES ('{7F1C8A58-EF29-C555-8006-2A18116B7143}', '业务管理', '建筑管理', '修改建筑', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:24:11');
INSERT INTO `il_user_log` VALUES ('{7F351CE1-970B-6651-5C62-CEFC6252D692}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:16:48');
INSERT INTO `il_user_log` VALUES ('{7F75C7FD-5186-DD28-CF41-D6B05C0CC0B4}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:22:25');
INSERT INTO `il_user_log` VALUES ('{7FA88E3D-51E3-F099-67C7-C598889D6FCB}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:11:33');
INSERT INTO `il_user_log` VALUES ('{7FD194DF-38C5-3ED9-D296-148A73475547}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:21:37');
INSERT INTO `il_user_log` VALUES ('{802126D1-0F3A-7950-36C2-21DF855E3F11}', '业务管理', '信标管理', '删除', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:01:31');
INSERT INTO `il_user_log` VALUES ('{8035AB57-C8D1-A0FF-0A5E-EFD44334549A}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:30:45');
INSERT INTO `il_user_log` VALUES ('{80D59A49-8CF9-C183-FAC8-90471DB2A3CA}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:09:53');
INSERT INTO `il_user_log` VALUES ('{80E60F56-EFAD-4EDB-4276-69736FB8EC11}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:44:35');
INSERT INTO `il_user_log` VALUES ('{81000E75-2B8A-1116-1845-D0B6ACD51E00}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:08:05');
INSERT INTO `il_user_log` VALUES ('{8139A730-0ADA-EFAF-8DF4-31501ECA9F1F}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:53:12');
INSERT INTO `il_user_log` VALUES ('{813FC23B-00ED-B76F-5A80-7C78B46DF1A4}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:44:44');
INSERT INTO `il_user_log` VALUES ('{815F9431-2DF3-DD3F-15EC-33D5E2D69549}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:06:15');
INSERT INTO `il_user_log` VALUES ('{819DF239-3308-0F49-36D5-89D52C156BFE}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:00:57');
INSERT INTO `il_user_log` VALUES ('{81A60A0F-49B6-1B01-60E4-2DCC0EF8DE11}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:08:15');
INSERT INTO `il_user_log` VALUES ('{81BBE66F-1CA1-4104-D00F-15BE4FB0CB4E}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:39:27');
INSERT INTO `il_user_log` VALUES ('{8200628F-E2A9-B389-5A40-38A22BFFBCFF}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:57:26');
INSERT INTO `il_user_log` VALUES ('{82729601-1A65-8FD2-EEAD-6E1EA8B771D2}', '业务管理', '组管理', '添加组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:04:27');
INSERT INTO `il_user_log` VALUES ('{82CD55C7-ED9A-B024-077F-18D16F9DBE5E}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:22:29');
INSERT INTO `il_user_log` VALUES ('{83126826-AA6F-612C-4A13-B13A9DB16E37}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:27:24');
INSERT INTO `il_user_log` VALUES ('{8322F329-A96B-8A0F-9086-9C87D2D8EE67}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:33:43');
INSERT INTO `il_user_log` VALUES ('{833FF4A3-D85B-BD34-87A3-04B6FC0F4276}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 12:14:40');
INSERT INTO `il_user_log` VALUES ('{8366B6A8-4C01-5FA9-713C-D3260DDE4013}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 14:02:02');
INSERT INTO `il_user_log` VALUES ('{83E392F1-D6B3-18F4-C861-FD9BD9C0AD22}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:18:28');
INSERT INTO `il_user_log` VALUES ('{83FE9722-AFDA-EBB2-E9CE-B0E7D77B6E26}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:16:51');
INSERT INTO `il_user_log` VALUES ('{8466D9B2-CCAA-0BB8-BA36-84E7D5DB5D8C}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:03:44');
INSERT INTO `il_user_log` VALUES ('{8474493C-6327-D083-097C-071ED275CC17}', '业务管理', '单位管理', '删除子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 12:14:57');
INSERT INTO `il_user_log` VALUES ('{84A6062E-8F07-FAA3-2CD0-50882600B257}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:45:43');
INSERT INTO `il_user_log` VALUES ('{84EA279A-AAC5-2347-8E0D-7517655FA16F}', '业务管理', '组管理', '添加组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:41:05');
INSERT INTO `il_user_log` VALUES ('{85B94866-72C4-E8C8-B5BE-84103CE8C6B9}', '业务管理', '建筑管理', '修改建筑', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:14:06');
INSERT INTO `il_user_log` VALUES ('{85DE23A5-BB86-1E23-DF42-EF29C91A3A43}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:17:25');
INSERT INTO `il_user_log` VALUES ('{86175CB0-CAE5-8F07-A9F9-BEDCE0A752F1}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:26:35');
INSERT INTO `il_user_log` VALUES ('{865A6EFC-328A-C728-F041-B67BE476EE54}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:43:27');
INSERT INTO `il_user_log` VALUES ('{8668D7D7-80BF-EADF-D8AD-E3598D2A22F5}', '业务管理', '定位套件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:20');
INSERT INTO `il_user_log` VALUES ('{86801604-EB48-D7FA-B079-8AAF9BF9FE2A}', '业务管理', '事件管理', '删除', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:28:17');
INSERT INTO `il_user_log` VALUES ('{86DE9115-C595-D0E9-CE09-4F8D2AF1BA33}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:05:48');
INSERT INTO `il_user_log` VALUES ('{871E2FBF-E454-BA73-3CD1-D02087AA5EEE}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:45:56');
INSERT INTO `il_user_log` VALUES ('{8757125C-83C4-BE25-6491-404C37E2624B}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 19:17:39');
INSERT INTO `il_user_log` VALUES ('{8776994E-081E-4215-A5C6-5C46F6CEB499}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:09:28');
INSERT INTO `il_user_log` VALUES ('{877CD998-624D-E01B-AFA4-A0752C8008DC}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:47:45');
INSERT INTO `il_user_log` VALUES ('{8796DC7B-99F9-FCEC-CE77-01D0DEE6FE67}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:04:55');
INSERT INTO `il_user_log` VALUES ('{87C9B1ED-DA75-C6B6-ECE1-ACA597A2206E}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:03:20');
INSERT INTO `il_user_log` VALUES ('{87FAB16F-B91C-DFB8-5423-FFC9804FBF18}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:08:29');
INSERT INTO `il_user_log` VALUES ('{88024451-EE78-0615-7CD1-B0A41D94E952}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:54:18');
INSERT INTO `il_user_log` VALUES ('{889D263A-DA6A-E5B2-97EA-2E638DC8AFF2}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:38:06');
INSERT INTO `il_user_log` VALUES ('{88AEAC3A-ACBA-397C-9109-D708D6C6C0AB}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 16:37:42');
INSERT INTO `il_user_log` VALUES ('{88BFDB6E-CC1D-032A-F153-AD21F6B23F0A}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:27:29');
INSERT INTO `il_user_log` VALUES ('{88C51510-2873-EC55-79A1-796B4AFC2DFD}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:34:10');
INSERT INTO `il_user_log` VALUES ('{88FD01F5-C021-96A0-CAB1-2A2FF26E50F9}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-14 09:24:47');
INSERT INTO `il_user_log` VALUES ('{89105E87-72C6-49CD-DA65-C46645FDDC0E}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:54:49');
INSERT INTO `il_user_log` VALUES ('{894B20B6-A4F4-2E36-CA42-19C5E4F50A5F}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:38:05');
INSERT INTO `il_user_log` VALUES ('{89621F52-77BA-851A-B9A3-006D5F41340E}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:34:49');
INSERT INTO `il_user_log` VALUES ('{8A119525-EB3C-C20F-6EDB-16F6EA4594BC}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:45:53');
INSERT INTO `il_user_log` VALUES ('{8AE2A241-E352-DCF5-8FA1-EA6CA879F8A0}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:44:40');
INSERT INTO `il_user_log` VALUES ('{8B083D61-8FA4-5DB8-37C1-D9A24DC256BE}', '业务管理', '组管理', '修改组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:21:42');
INSERT INTO `il_user_log` VALUES ('{8B151B25-27C9-AF8B-4991-284AE790A4D8}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:07:02');
INSERT INTO `il_user_log` VALUES ('{8B4A0E52-A8C8-47E3-0207-BDFCB96801DB}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:24:45');
INSERT INTO `il_user_log` VALUES ('{8B5646DD-C609-5026-E407-52EC1B84AD4B}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:20:17');
INSERT INTO `il_user_log` VALUES ('{8BCB1045-2909-FFA4-E138-8DFD0360AE64}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:43:41');
INSERT INTO `il_user_log` VALUES ('{8BE25C6C-A967-4652-6ABB-C2AC4E75E2CE}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:59:11');
INSERT INTO `il_user_log` VALUES ('{8CB1AFB0-3956-7BC0-A882-5B8ADAADE759}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-21 09:20:56');
INSERT INTO `il_user_log` VALUES ('{8CB32BBC-F06B-9907-A508-D992F87598DC}', '业务管理', '信标管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 20:44:52');
INSERT INTO `il_user_log` VALUES ('{8D1A1DBC-011B-F284-A738-DDB1FE6FA138}', '业务管理', '信标管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:55:18');
INSERT INTO `il_user_log` VALUES ('{8D812E36-02CF-E057-C588-0FB8D52EFEDD}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:50:55');
INSERT INTO `il_user_log` VALUES ('{8DDA8B88-82DE-390D-C357-73AE5D7CDEC5}', '业务管理', '信标管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 20:14:01');
INSERT INTO `il_user_log` VALUES ('{8EA67353-CBAD-0F43-F7E3-3E413C03B902}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:38:07');
INSERT INTO `il_user_log` VALUES ('{8EE1DB64-58DD-C347-66B4-DC2B80AF33DF}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:30:42');
INSERT INTO `il_user_log` VALUES ('{8EF46BBD-587F-6307-80EB-2C2C836B2F46}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:11:47');
INSERT INTO `il_user_log` VALUES ('{8F282A0B-160B-03B0-A7EF-B19FC171A217}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:29:13');
INSERT INTO `il_user_log` VALUES ('{8F6EBDCD-2A48-B249-519F-8F8E7EDB9302}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:50:29');
INSERT INTO `il_user_log` VALUES ('{9012DA6B-CC17-C7EE-4E26-E818EB7FD60A}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:04:49');
INSERT INTO `il_user_log` VALUES ('{90426FDE-E95E-481E-935D-53BAEBA99900}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:17:22');
INSERT INTO `il_user_log` VALUES ('{90CF467F-CCA3-EDC5-8347-B82BC811DE1E}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:03:03');
INSERT INTO `il_user_log` VALUES ('{912B776A-0E4A-2F7B-D0D1-120D320E21A4}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:04:48');
INSERT INTO `il_user_log` VALUES ('{91561776-1DFD-A3AA-D84B-A1BD84C2DE09}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 16:20:43');
INSERT INTO `il_user_log` VALUES ('{916B3E39-9198-1F9F-4E82-3A0912E3B0CB}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:30:49');
INSERT INTO `il_user_log` VALUES ('{91C69A93-26FA-C6F6-CCAF-A2DE9593FE1E}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:17:25');
INSERT INTO `il_user_log` VALUES ('{91DAFEFA-0B0D-E3C1-68BF-E71665EB5B17}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:08:52');
INSERT INTO `il_user_log` VALUES ('{929CB8DF-22CD-EE5A-1764-68EF886EC46E}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:31:38');
INSERT INTO `il_user_log` VALUES ('{9309CFD6-8E9B-588B-D747-013D7A7C9DFC}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 20:11:19');
INSERT INTO `il_user_log` VALUES ('{9338DBC3-F581-22DA-05E5-B269C69896DA}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:21:07');
INSERT INTO `il_user_log` VALUES ('{93399FEB-EF53-B3CD-BBAA-632126B4D134}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:06:16');
INSERT INTO `il_user_log` VALUES ('{93567E1C-E722-95FA-5949-ADB1DC09237A}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:01:09');
INSERT INTO `il_user_log` VALUES ('{945F2684-3666-5590-3A3E-8DF52534F95D}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:14:36');
INSERT INTO `il_user_log` VALUES ('{946528C7-57C2-09A8-3F1E-8491A68EBE5E}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:18:02');
INSERT INTO `il_user_log` VALUES ('{954B5243-A28D-1744-95F1-7986E4B081A2}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:31:31');
INSERT INTO `il_user_log` VALUES ('{962DCE80-F86D-9C42-15F4-2AB0111746F2}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:53:19');
INSERT INTO `il_user_log` VALUES ('{965DD57D-A729-2A7D-8A98-FC739AE3F7F9}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:46:18');
INSERT INTO `il_user_log` VALUES ('{967CFC64-2B39-9A81-BA50-F37254D832A0}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:44:34');
INSERT INTO `il_user_log` VALUES ('{9698A4D6-7867-B4DC-78A0-77BEBF5CAA7A}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:42:21');
INSERT INTO `il_user_log` VALUES ('{96BB8EF2-B17F-DCAC-F34A-E114DF3B0139}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 14:11:46');
INSERT INTO `il_user_log` VALUES ('{96CFD21C-6A19-3AF2-81E3-070A24A2DA8E}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:03:13');
INSERT INTO `il_user_log` VALUES ('{96D79895-1827-0878-E8E3-8F923801392C}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:50:53');
INSERT INTO `il_user_log` VALUES ('{97524153-5E89-0D7A-9326-559CAE69A427}', '业务管理', '楼层管理', '楼层列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:27');
INSERT INTO `il_user_log` VALUES ('{97595DA8-31FB-9E05-4C45-1E61DBE0F275}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:46:47');
INSERT INTO `il_user_log` VALUES ('{975E6ABC-AB4F-0614-1385-40FD4D6EDE81}', '业务管理', '单位管理', '修改子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:50:24');
INSERT INTO `il_user_log` VALUES ('{975FEC3B-7BCD-8E31-9480-CA9EFCB8625D}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:45:10');
INSERT INTO `il_user_log` VALUES ('{97874AD5-D907-ACA5-159D-933A9085451F}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:46:00');
INSERT INTO `il_user_log` VALUES ('{97A6D6EB-DFE7-2B64-E2B3-434D2E8A856F}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:22:33');
INSERT INTO `il_user_log` VALUES ('{97E4EC32-3E57-B547-25CF-5C90CE1A7676}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 20:50:17');
INSERT INTO `il_user_log` VALUES ('{983AF41F-F7C3-1B50-AEA0-2CD7B4168AA9}', '系统管理', '节点管理', '节点列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:41');
INSERT INTO `il_user_log` VALUES ('{98A2710B-CDD7-0144-18E5-7271137DCD84}', '业务管理', '单位管理', '添加子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:53:41');
INSERT INTO `il_user_log` VALUES ('{98A39B8B-96A4-37FA-FFC7-003DA55F6C9C}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-11 10:23:41');
INSERT INTO `il_user_log` VALUES ('{98B36EF2-A810-A39E-3913-34D2647E4FFE}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:20:14');
INSERT INTO `il_user_log` VALUES ('{9907598C-8B34-5A22-FBEB-57AE55911A7B}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 11:52:14');
INSERT INTO `il_user_log` VALUES ('{99706196-0717-8F22-AF22-3375903845D4}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:23:39');
INSERT INTO `il_user_log` VALUES ('{998AC393-CBE8-869A-5292-67012C3E852E}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:45:47');
INSERT INTO `il_user_log` VALUES ('{99A38D0B-1457-9DAA-1FF2-23E0BDA4749F}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:13:25');
INSERT INTO `il_user_log` VALUES ('{99ECDACD-9A63-5EF7-A981-831BF9B61C07}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:18');
INSERT INTO `il_user_log` VALUES ('{9A13F020-E7E4-A538-466F-2514E0C13C8C}', '业务管理', '人员管理', '修改人员信息', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:57:01');
INSERT INTO `il_user_log` VALUES ('{9A67A416-68C6-1B78-9FBF-EE89A31072D3}', '系统管理', '角色管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:39');
INSERT INTO `il_user_log` VALUES ('{9A78D362-1CCA-4A71-81E1-44D681D07955}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:27:23');
INSERT INTO `il_user_log` VALUES ('{9A79570F-BE51-DE2B-4051-6B60EA9BC6B0}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:08:24');
INSERT INTO `il_user_log` VALUES ('{9A842A03-2042-29A1-D565-EDF792B4F0D4}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 16:53:51');
INSERT INTO `il_user_log` VALUES ('{9B107839-1002-7F7B-D728-F09D1137B347}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:14:23');
INSERT INTO `il_user_log` VALUES ('{9BB72129-EBFE-DB15-4730-5EF57D6E920D}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:04:15');
INSERT INTO `il_user_log` VALUES ('{9BD83A9F-98FB-BFC0-4682-4473DF8F8A5F}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:22:24');
INSERT INTO `il_user_log` VALUES ('{9C3AFA27-9173-51BD-2E99-2B573F7FDEF6}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:49:43');
INSERT INTO `il_user_log` VALUES ('{9C3BBC1D-4BBE-7E31-A439-106FD320E3D7}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 12:22:03');
INSERT INTO `il_user_log` VALUES ('{9C49E7CA-C8FA-2695-8A3A-906FC1617BB3}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:53:45');
INSERT INTO `il_user_log` VALUES ('{9CAB402C-AD80-F512-A4FD-F58099F9A408}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:15:14');
INSERT INTO `il_user_log` VALUES ('{9D4552D5-362C-51D9-26E5-EF2833778F42}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:07:04');
INSERT INTO `il_user_log` VALUES ('{9D6B8352-2C10-E20D-4996-0CE1E20DE267}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:07:08');
INSERT INTO `il_user_log` VALUES ('{9D7E9EC0-9FF3-4BD4-90BD-C56A6449DE2E}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:08:16');
INSERT INTO `il_user_log` VALUES ('{9E17E827-F517-FA5F-8575-765C79BF0A20}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:11:48');
INSERT INTO `il_user_log` VALUES ('{9E48CE73-F169-8338-97CF-56F73D7F57D4}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:35:58');
INSERT INTO `il_user_log` VALUES ('{9E7044E8-0995-46BC-B9A5-691133F52355}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:57:26');
INSERT INTO `il_user_log` VALUES ('{9E725CBA-073C-214D-5163-9AC8BF66165E}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:28:10');
INSERT INTO `il_user_log` VALUES ('{9ED5248E-69E2-9B79-39EF-01A0FBF3CD12}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 14:30:35');
INSERT INTO `il_user_log` VALUES ('{9EF24789-5EEE-CB04-C789-75FE5FE188CA}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:07:34');
INSERT INTO `il_user_log` VALUES ('{9F352ECD-B919-8D8E-9A59-C3A880EA9479}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:35:35');
INSERT INTO `il_user_log` VALUES ('{9F960B2A-CDB8-C8DA-C42E-F08B2449D74C}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 12:14:43');
INSERT INTO `il_user_log` VALUES ('{9FE6D210-99C1-61E0-03B2-497BFB2270A6}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:51:08');
INSERT INTO `il_user_log` VALUES ('{A019DF27-96FD-C947-0A08-7C09CBF6F90A}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:30:58');
INSERT INTO `il_user_log` VALUES ('{A090677A-0667-3B03-2522-2C2A292126BA}', '业务管理', '组管理', '添加组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:22:12');
INSERT INTO `il_user_log` VALUES ('{A127718A-8F9A-F3EF-6C7F-3721FD28DED3}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:07:17');
INSERT INTO `il_user_log` VALUES ('{A164D669-9A97-C07B-D76C-49B0621B0DE6}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:13:25');
INSERT INTO `il_user_log` VALUES ('{A1A7DC4A-0970-667E-00CB-A0BAE8939CF0}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:17:14');
INSERT INTO `il_user_log` VALUES ('{A1C72F40-C197-5B26-7422-589D7E9E5519}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:07:55');
INSERT INTO `il_user_log` VALUES ('{A29FAA3D-3431-3C92-B07C-1E8B447498F5}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:55:03');
INSERT INTO `il_user_log` VALUES ('{A2AB4F6E-E2A5-CE75-05F4-0FD8F51A5503}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:29');
INSERT INTO `il_user_log` VALUES ('{A37B07EF-6630-9BAE-DC47-E7C5E03596C0}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:29:54');
INSERT INTO `il_user_log` VALUES ('{A38EA838-88FA-A4C4-57F1-B5FB10D5E3C0}', '业务管理', '事件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:31');
INSERT INTO `il_user_log` VALUES ('{A39F59BD-44C8-F06A-1D78-0EA80B71C037}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:43:20');
INSERT INTO `il_user_log` VALUES ('{A3BA8860-6A3A-CA57-D3F4-BB4E8C30065D}', '业务管理', '首页', '主面板', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:01:53');
INSERT INTO `il_user_log` VALUES ('{A4A5BB55-DA1A-4567-AD9B-0393F1E93253}', '业务管理', '组成员管理', '成员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:28:55');
INSERT INTO `il_user_log` VALUES ('{A4CAB803-D07D-D874-5EDD-63EF84334435}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:04:48');
INSERT INTO `il_user_log` VALUES ('{A550069C-F597-0515-E288-CE16B2172E97}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:03:02');
INSERT INTO `il_user_log` VALUES ('{A552CDDF-81B2-50DC-5088-864E35923EF3}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:48:38');
INSERT INTO `il_user_log` VALUES ('{A581AAD3-937E-E657-4E25-721E4CB4F602}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:31:42');
INSERT INTO `il_user_log` VALUES ('{A5AEE819-EE04-2B2D-8C63-896F4EF471AE}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:39:42');
INSERT INTO `il_user_log` VALUES ('{A647CC12-E3A6-B568-2661-9129DC9C8269}', '业务管理', '建筑管理', '修改建筑', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:01:20');
INSERT INTO `il_user_log` VALUES ('{A69C1FC0-F1E6-D909-FC37-05509A208429}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:45:27');
INSERT INTO `il_user_log` VALUES ('{A6CF033A-5FE8-1C52-8613-504582A6D04A}', '系统管理', '用户日志', '日志列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:46');
INSERT INTO `il_user_log` VALUES ('{A6F6B843-A142-EF27-0865-5C123E56C21B}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:50:38');
INSERT INTO `il_user_log` VALUES ('{A70E862A-D265-6C63-1DE7-1CDC0F4DE5BD}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:25:32');
INSERT INTO `il_user_log` VALUES ('{A7161AF1-C6EA-D59A-62B3-190F2182158C}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:35:49');
INSERT INTO `il_user_log` VALUES ('{A7A3D174-582B-426F-DB36-CEA8E9AD5C96}', '业务管理', '信标管理', '修改', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 20:46:31');
INSERT INTO `il_user_log` VALUES ('{A7A7CC7E-2CDC-4C36-78A4-69B0804ADEC0}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:37:56');
INSERT INTO `il_user_log` VALUES ('{A7B34D17-0FD3-D947-7A82-1514A7DA3496}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:18:16');
INSERT INTO `il_user_log` VALUES ('{A7B60503-123F-65EF-9500-4AE22941939E}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:18');
INSERT INTO `il_user_log` VALUES ('{A892AC6D-C797-8524-C534-759BCA97A199}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:28:22');
INSERT INTO `il_user_log` VALUES ('{A8A37F89-8FB2-B8EB-1C12-9A7DE1E17D1B}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:17:22');
INSERT INTO `il_user_log` VALUES ('{A8BB37FC-7C00-413F-25DB-11E16C831BB3}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:18:09');
INSERT INTO `il_user_log` VALUES ('{A8BC27FD-FAC8-C72F-8B49-44EF9F198EE0}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:50:55');
INSERT INTO `il_user_log` VALUES ('{A8DDDAC6-818D-5753-6A22-B8E389DE247C}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 13:57:30');
INSERT INTO `il_user_log` VALUES ('{A8F63253-5116-0612-5F4D-439C9BB86415}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:22:36');
INSERT INTO `il_user_log` VALUES ('{A8FF6144-8291-885A-51D2-E212CE16EE4D}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:08:34');
INSERT INTO `il_user_log` VALUES ('{A9485C9F-C8F3-375A-ED9E-062C332C9C67}', '业务管理', '首页', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:38:31');
INSERT INTO `il_user_log` VALUES ('{A9603723-022C-2EB5-1CB9-9FC45CE8F559}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:34:39');
INSERT INTO `il_user_log` VALUES ('{AA29C60A-BEA6-380A-1F32-9291B92D51C7}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:14:45');
INSERT INTO `il_user_log` VALUES ('{AAF6B6AF-843E-7CD8-D212-597A1E1DABAE}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 16:20:31');
INSERT INTO `il_user_log` VALUES ('{AB49D286-8CAD-0FB5-15DA-38451F203068}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-09 15:26:42');
INSERT INTO `il_user_log` VALUES ('{ABEA9CC3-42FD-0946-1850-F15510B8D21D}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:17:02');
INSERT INTO `il_user_log` VALUES ('{AC6F4CEA-85C2-2419-8A5A-9E4F34054AE4}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:45:40');
INSERT INTO `il_user_log` VALUES ('{ACAE54D2-5C1C-4F61-7B26-9D7AAF043267}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:15:18');
INSERT INTO `il_user_log` VALUES ('{ACC6123F-A9CE-6BB7-A0C6-05C9A7B64F28}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:47:46');
INSERT INTO `il_user_log` VALUES ('{AD01C6E0-0242-F17D-AF89-3C7694731A91}', '业务管理', '现场终端管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:24');
INSERT INTO `il_user_log` VALUES ('{AD31A0E0-0687-DBDA-AF5A-B7E3D07BC324}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:11:35');
INSERT INTO `il_user_log` VALUES ('{AD566E5A-7BC1-4D1A-C554-86611EE24005}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-19 14:29:47');
INSERT INTO `il_user_log` VALUES ('{AD71090F-7919-2E49-DEAF-DB169DBBE1AD}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:17:24');
INSERT INTO `il_user_log` VALUES ('{AD766856-49E5-2950-307C-EE41695BF7C1}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:21:58');
INSERT INTO `il_user_log` VALUES ('{AE256A1A-599C-AD84-7ED7-743D3D5FE809}', '业务管理', '消防设备管理', '添加消防设备', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:21:49');
INSERT INTO `il_user_log` VALUES ('{AE300A7D-565F-40CD-1420-19543788CB7F}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:15:15');
INSERT INTO `il_user_log` VALUES ('{AE907388-6F9C-7AB9-E117-D0944271BD8E}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:34:55');
INSERT INTO `il_user_log` VALUES ('{AEB782B2-87D2-3CAB-BBA5-90E5A1C2635C}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 10:58:13');
INSERT INTO `il_user_log` VALUES ('{AFC96734-3D41-0F9F-0F13-FA167FD6A805}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:32:05');
INSERT INTO `il_user_log` VALUES ('{B00A4981-DB79-6615-9870-E4A9B506FEDB}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:44:43');
INSERT INTO `il_user_log` VALUES ('{B016C3C9-A938-A82D-6DCB-ADD2439C956A}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:54:48');
INSERT INTO `il_user_log` VALUES ('{B03F04D6-F059-7451-8715-E30186210362}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:19:35');
INSERT INTO `il_user_log` VALUES ('{B08018D9-8822-033C-047B-20FF5983274A}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:46:47');
INSERT INTO `il_user_log` VALUES ('{B0A714C5-9A51-20A4-B4B3-D44CE8CA90F1}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:13:41');
INSERT INTO `il_user_log` VALUES ('{B0C58964-CD24-9E2E-943D-3C31DD290A5A}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 16:49:57');
INSERT INTO `il_user_log` VALUES ('{B0E051C5-28CD-BF05-9B92-4722241FEE4A}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:08');
INSERT INTO `il_user_log` VALUES ('{B1270A09-810D-D1DA-77E6-E397A5159220}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 14:59:27');
INSERT INTO `il_user_log` VALUES ('{B1A057CF-245B-50A4-5252-26AB052421B6}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:36:52');
INSERT INTO `il_user_log` VALUES ('{B1A35A35-0EB7-4334-21F6-1B9217C8397E}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:17:03');
INSERT INTO `il_user_log` VALUES ('{B1CC7A0C-8BAA-A7E4-B123-FEDECAEC9BA0}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:54:58');
INSERT INTO `il_user_log` VALUES ('{B1DCB207-5011-8DF9-5544-EDEFF021808B}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:09:33');
INSERT INTO `il_user_log` VALUES ('{B21937A0-7969-CE3E-FE7D-81229D6D58A9}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:45:58');
INSERT INTO `il_user_log` VALUES ('{B2CEF633-B368-B3C3-B68F-883C9FD7B007}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 10:28:45');
INSERT INTO `il_user_log` VALUES ('{B2D9D044-E437-86A9-9FB8-1981F2FFA144}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:50:26');
INSERT INTO `il_user_log` VALUES ('{B34B9F91-2C4A-60D8-E545-DA025418AF3B}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:18:09');
INSERT INTO `il_user_log` VALUES ('{B375B65B-7011-83A5-748E-18606E5E9EEB}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:23:37');
INSERT INTO `il_user_log` VALUES ('{B401E68C-7CB7-2215-5DA0-BDF1EA7563F2}', '业务管理', '定位套件管理', '删除', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:51:36');
INSERT INTO `il_user_log` VALUES ('{B45D7D77-C13D-FEDC-5B38-950CBB029E85}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:15:15');
INSERT INTO `il_user_log` VALUES ('{B5955EE5-5BA8-507A-66B5-64CDE2DF29B0}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:31:46');
INSERT INTO `il_user_log` VALUES ('{B5A6BC33-E581-C9E2-ABB2-F86195C0367A}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 15:15:25');
INSERT INTO `il_user_log` VALUES ('{B5B12CF0-CACE-D2D2-F38D-5B787E913F4D}', '系统管理', '用户管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:37');
INSERT INTO `il_user_log` VALUES ('{B66A4E5E-ACDC-BB1F-8E8D-CB8E10D7A394}', '业务管理', '单位管理', '删除子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:12:14');
INSERT INTO `il_user_log` VALUES ('{B6A6DE8F-49AD-6D9D-ED94-5CF516CDA580}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:23:57');
INSERT INTO `il_user_log` VALUES ('{B6D7319A-323B-BC67-200E-6168F21A6533}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 12:09:43');
INSERT INTO `il_user_log` VALUES ('{B7972801-5BF9-2418-6955-D17E6D7B66E9}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 14:59:55');
INSERT INTO `il_user_log` VALUES ('{B8007E61-0314-25FB-537D-A951A508B94F}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:07:32');
INSERT INTO `il_user_log` VALUES ('{B8241919-D8B9-0DFB-4C3C-F77B86249C73}', '系统管理', '用户日志', '清空', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:16:33');
INSERT INTO `il_user_log` VALUES ('{B84128C8-FC49-57CD-8B22-86771601EEA5}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:07:54');
INSERT INTO `il_user_log` VALUES ('{B92889AC-C689-FDB8-A6B3-84B2180CCF5F}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:44:45');
INSERT INTO `il_user_log` VALUES ('{B9493263-C0E9-E8E8-A0B5-D43E361F7983}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 19:18:12');
INSERT INTO `il_user_log` VALUES ('{B988DB44-929E-1BE5-6249-86488E4A83AD}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:09:02');
INSERT INTO `il_user_log` VALUES ('{B98B70CA-8D88-607D-8772-F4C81E692576}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:20:18');
INSERT INTO `il_user_log` VALUES ('{B9C8FA56-FA00-D4B4-6A5E-7A4ED27499FB}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:08:27');
INSERT INTO `il_user_log` VALUES ('{B9D3D8E3-4D0F-09E8-56B7-49EDEE8874F1}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:06:09');
INSERT INTO `il_user_log` VALUES ('{BB37D42F-B3F9-28EF-AC02-2F6D67CAEED8}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:33:17');
INSERT INTO `il_user_log` VALUES ('{BB47F26C-22B4-B6D5-1069-5BBE2AFBF6D8}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:08:38');
INSERT INTO `il_user_log` VALUES ('{BB7452D6-FCCD-C14E-AFCF-862FCBD2519B}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:08:36');
INSERT INTO `il_user_log` VALUES ('{BBDACA44-71BB-CA0D-ACF4-2E6337591FFE}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:42:29');
INSERT INTO `il_user_log` VALUES ('{BC1B71A3-99E5-0319-C6AC-CC0FB12DE007}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:03:56');
INSERT INTO `il_user_log` VALUES ('{BCFAECA0-008D-6B1B-49FE-A2A7F346FA63}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:10');
INSERT INTO `il_user_log` VALUES ('{BD2B43AD-BDCE-6AA8-557B-59A3A7ABC7EE}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:37:50');
INSERT INTO `il_user_log` VALUES ('{BD3255E2-28B0-AE36-0EEE-48E2DED0B247}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:28:15');
INSERT INTO `il_user_log` VALUES ('{BD5EA3EE-B0EC-0E47-F919-07E232AC829B}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:17:11');
INSERT INTO `il_user_log` VALUES ('{BDFFD451-891B-A850-C792-A89856EF95DD}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:25:50');
INSERT INTO `il_user_log` VALUES ('{BE42F790-3531-AA8A-62A6-6B132BCA0B10}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:55:03');
INSERT INTO `il_user_log` VALUES ('{BE8CC5E7-322C-B2E9-D49E-3907B295B147}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:38:07');
INSERT INTO `il_user_log` VALUES ('{BEA99202-384E-2223-0560-D75179897982}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:40:45');
INSERT INTO `il_user_log` VALUES ('{BEAC4650-81A1-5EDF-384A-67D1AD4F335C}', '业务管理', '人员管理', '添加人员', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:27:58');
INSERT INTO `il_user_log` VALUES ('{BEC610F2-214F-CEAD-7C41-35E4D56DCA5E}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:11:10');
INSERT INTO `il_user_log` VALUES ('{BEEEC4FB-1299-5FC7-4969-710FFF0E8F38}', '业务管理', '人员管理', '修改人员信息', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:57:04');
INSERT INTO `il_user_log` VALUES ('{BEF80585-8DA7-E810-DD7A-A08BD1B4A0D8}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:33:35');
INSERT INTO `il_user_log` VALUES ('{BF63A936-0FCF-F0FB-BCD9-24DFFB2D01C6}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:04:28');
INSERT INTO `il_user_log` VALUES ('{BF6900AD-D8A9-C3CF-1C64-E9F097C74BEE}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:33:14');
INSERT INTO `il_user_log` VALUES ('{BF767BFB-B13C-0B26-DE99-709C25E3DBA1}', '业务管理', '组成员管理', '成员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:05:20');
INSERT INTO `il_user_log` VALUES ('{C016A583-F973-8D6C-3ECB-20F30519FE7D}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:08:50');
INSERT INTO `il_user_log` VALUES ('{C02F6FFF-F27E-A600-4E56-1936B726DA34}', '业务管理', '楼层管理', '修改楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:47:20');
INSERT INTO `il_user_log` VALUES ('{C05E51DA-384A-530D-FA1D-86B2A67A1E92}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:04:28');
INSERT INTO `il_user_log` VALUES ('{C15674D9-CC3C-630A-FEEC-884A14F7B4B3}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:18:54');
INSERT INTO `il_user_log` VALUES ('{C1876675-6D77-3656-469B-4203ECCF5AED}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:14:22');
INSERT INTO `il_user_log` VALUES ('{C1D641D7-3524-1CF7-5880-4BE599D13EB9}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:06:17');
INSERT INTO `il_user_log` VALUES ('{C1E841B5-D276-120E-DCE5-22C6FDDDD010}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:19:22');
INSERT INTO `il_user_log` VALUES ('{C28FA357-A264-2163-6762-C313F020549A}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:18:51');
INSERT INTO `il_user_log` VALUES ('{C35E83D7-AA10-B842-7D79-CE6BBCAFA692}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:23:47');
INSERT INTO `il_user_log` VALUES ('{C397E6E9-862F-83FF-69A1-E34CE4066CE4}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:33:27');
INSERT INTO `il_user_log` VALUES ('{C3F9EDDD-DD44-2C8F-B8A1-569953CEDEB2}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:07:53');
INSERT INTO `il_user_log` VALUES ('{C44CC2C6-87F3-BB56-3431-DC404FBD5B50}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:14');
INSERT INTO `il_user_log` VALUES ('{C4C5A434-F99F-E6EB-FBDC-B22E42CFC557}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:43:33');
INSERT INTO `il_user_log` VALUES ('{C4D4C39E-DF80-B92A-CBC5-74C536FD8807}', '业务管理', '楼层管理', '添加楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:03:00');
INSERT INTO `il_user_log` VALUES ('{C52E352D-B4E7-4EA0-886A-2F6FC4C6A441}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:09:16');
INSERT INTO `il_user_log` VALUES ('{C53B7AB6-64E8-374A-9205-C9C78883646D}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 18:44:34');
INSERT INTO `il_user_log` VALUES ('{C619DA87-BCDA-54BC-71E1-82914FF62516}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:32:08');
INSERT INTO `il_user_log` VALUES ('{C61EA3D7-0222-BAB5-912E-BB9CAFDD7FCB}', '业务管理', '组成员管理', '成员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:54:48');
INSERT INTO `il_user_log` VALUES ('{C6B69128-1A6F-1D89-2074-A3AD3E1ECC8A}', '业务管理', '建筑管理', '添加建筑', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:16:21');
INSERT INTO `il_user_log` VALUES ('{C6C70C71-C5AD-F8EB-3F53-3FC9531506C7}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:07:40');
INSERT INTO `il_user_log` VALUES ('{C6DC7B10-501C-94DE-B52A-493A68DDC6BD}', '系统管理', '用户管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:44:51');
INSERT INTO `il_user_log` VALUES ('{C73DA94C-A82B-FBC7-082A-330F40781615}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:38:18');
INSERT INTO `il_user_log` VALUES ('{C756D457-7DA2-58EA-354E-35D0D5304AED}', '业务管理', '组管理', '修改组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:21:46');
INSERT INTO `il_user_log` VALUES ('{C7E4AA4B-C80D-445C-9BC5-F37CB658F4E4}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:07:31');
INSERT INTO `il_user_log` VALUES ('{C7E52E40-9895-3D44-770A-5B42AC3A5D58}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:17:22');
INSERT INTO `il_user_log` VALUES ('{C7FBA0B6-1F58-EB2E-CD2C-00AFC413765C}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:06:21');
INSERT INTO `il_user_log` VALUES ('{C8269EEA-92B7-4800-7E6F-9D5F05C293AA}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 13:57:24');
INSERT INTO `il_user_log` VALUES ('{C884D58C-56C9-A5E5-A51D-B83D2BCBB4E3}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:36:03');
INSERT INTO `il_user_log` VALUES ('{C8B02D09-F3F9-24F1-2A77-24D1E5671223}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:10:14');
INSERT INTO `il_user_log` VALUES ('{C8B770E7-B5F8-8E8F-7D4A-0CCF933732C7}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:30:27');
INSERT INTO `il_user_log` VALUES ('{C8CE8E19-27EF-8CF6-3531-C563C7437E07}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:09:21');
INSERT INTO `il_user_log` VALUES ('{C92E4D82-BA14-DD49-46CA-9BCF7670F06B}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:44:32');
INSERT INTO `il_user_log` VALUES ('{C985B72B-E894-9F48-82FB-CED6CECFDB2D}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:03:12');
INSERT INTO `il_user_log` VALUES ('{C98A3B8B-6F8B-423A-7510-03A10D0B063F}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:08:05');
INSERT INTO `il_user_log` VALUES ('{C99E82EA-AA65-E41D-70CF-9A81FB53673C}', '业务管理', '单位管理', '删除子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:42:25');
INSERT INTO `il_user_log` VALUES ('{CAA39F45-7B54-31B5-4F7C-776EC97B175F}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:06:11');
INSERT INTO `il_user_log` VALUES ('{CAE8FBAC-9758-D01A-4EEB-C6DF0B320CA0}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:06:31');
INSERT INTO `il_user_log` VALUES ('{CAFB3E41-910F-EEB9-A450-9A3549ED090E}', '业务管理', '事件管理', '修改', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:14:17');
INSERT INTO `il_user_log` VALUES ('{CB13AD49-D101-0AC2-8CB4-55DD61D69AC4}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:45:19');
INSERT INTO `il_user_log` VALUES ('{CB560753-A6A7-C268-CE13-BBC0FA383923}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-21 09:20:42');
INSERT INTO `il_user_log` VALUES ('{CB83C81C-3C55-C0E2-A44E-E69A12FCE704}', '业务管理', '人员管理', '添加人员', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:29:10');
INSERT INTO `il_user_log` VALUES ('{CC34E7FF-DF68-D3E0-9793-7E2C053FCBD4}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:48:20');
INSERT INTO `il_user_log` VALUES ('{CC6EBBDE-B853-060F-89BA-956628AF1334}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:06:54');
INSERT INTO `il_user_log` VALUES ('{CD391DDD-B8FE-B4B0-4EE2-CD8A0BAE278E}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:31:01');
INSERT INTO `il_user_log` VALUES ('{CDBA2823-0962-6443-3145-355A27ECF944}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:59:36');
INSERT INTO `il_user_log` VALUES ('{CDC71E24-4698-5036-328B-C5B851A9BF0F}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 18:05:59');
INSERT INTO `il_user_log` VALUES ('{CDD006A0-64B9-A559-8742-F46C5921B149}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 16:43:44');
INSERT INTO `il_user_log` VALUES ('{CDE0B70D-11EB-5453-48AB-8C7738F6622F}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 19:11:46');
INSERT INTO `il_user_log` VALUES ('{CE4DF3A7-0483-0880-CC98-9B642AFAB157}', '业务管理', '事件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:36:54');
INSERT INTO `il_user_log` VALUES ('{CE702FC1-CC4C-5C26-A323-B664C3527D8C}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:33:21');
INSERT INTO `il_user_log` VALUES ('{CEB5738E-4954-E4FF-3649-737D070E2850}', '业务管理', '组管理', '添加组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:16:00');
INSERT INTO `il_user_log` VALUES ('{CEEC5C9A-E1EA-1961-2A91-BE981CADDEF5}', '业务管理', '楼层管理', '修改楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 14:59:54');
INSERT INTO `il_user_log` VALUES ('{CF050F01-AA29-3431-473A-354467F148D5}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:14:07');
INSERT INTO `il_user_log` VALUES ('{CF0519B5-CFC7-07A3-90FB-5C05462E833B}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:44:39');
INSERT INTO `il_user_log` VALUES ('{CF10FAAA-245B-3756-DC81-A29B173F4F28}', '系统管理', '用户管理', '修改密码', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:00:28');
INSERT INTO `il_user_log` VALUES ('{CF5268F7-6B9E-D67A-435E-2996842B27D5}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:42:13');
INSERT INTO `il_user_log` VALUES ('{CFA78B8F-B6FD-25AA-DECE-B53C2B95CCA2}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:41:55');
INSERT INTO `il_user_log` VALUES ('{CFD4E592-8AD4-7212-DDEB-9D6FE323E590}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:16:09');
INSERT INTO `il_user_log` VALUES ('{CFF617AB-7FE7-E64D-A722-C9782F68E66E}', '业务管理', '人员管理', '添加人员', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:27:43');
INSERT INTO `il_user_log` VALUES ('{D01D11CE-EAD4-46EE-C0BE-5C5643AB3263}', '系统管理', '用户管理', '修改密码', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:30:30');
INSERT INTO `il_user_log` VALUES ('{D01F538F-70F1-D9AD-9537-E89582D6509B}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 15:19:45');
INSERT INTO `il_user_log` VALUES ('{D05C2A31-8A6C-8DC6-2D9A-E89842F3EA35}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:04:59');
INSERT INTO `il_user_log` VALUES ('{D0B1AC53-E899-27D7-F8CD-116AD34D8F21}', '业务管理', '单位管理', '添加子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:14:29');
INSERT INTO `il_user_log` VALUES ('{D10BD1E6-824F-4137-D13F-56493DAD2A36}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:32:11');
INSERT INTO `il_user_log` VALUES ('{D168698E-4B6A-A9E8-5D71-FE948FFF521A}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:03:07');
INSERT INTO `il_user_log` VALUES ('{D1E5121D-4CD1-E806-3467-6D33BEB94E1D}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:43:49');
INSERT INTO `il_user_log` VALUES ('{D22AFA26-FCF6-7897-C86D-EE78822012BD}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 09:18:27');
INSERT INTO `il_user_log` VALUES ('{D2545068-64B9-1E8B-E615-14813962458C}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:05:26');
INSERT INTO `il_user_log` VALUES ('{D27167DC-0B59-40D4-1D2F-346EE63FF260}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:18:54');
INSERT INTO `il_user_log` VALUES ('{D313FC47-3D88-BDF5-59BE-9BB46274209F}', '业务管理', '组管理', '修改组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:16:16');
INSERT INTO `il_user_log` VALUES ('{D33175FD-3A09-6A28-2812-C291FC4ADBFE}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:31:10');
INSERT INTO `il_user_log` VALUES ('{D33A896E-A688-3C12-F71E-1FED5800E68F}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:55:27');
INSERT INTO `il_user_log` VALUES ('{D354A033-3071-DB62-25FD-E52DA5A6C74D}', '业务管理', '建筑管理', '添加建筑', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:16:47');
INSERT INTO `il_user_log` VALUES ('{D37921E2-9DA2-2B52-4109-4F0A9D43626A}', '业务管理', '单位管理', '修改子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:24:46');
INSERT INTO `il_user_log` VALUES ('{D38320A5-DF21-40D9-ECD8-8FCCA66C6A9D}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:17:01');
INSERT INTO `il_user_log` VALUES ('{D3C96A53-F36C-ABE1-91BE-ACA181D796A3}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:11:47');
INSERT INTO `il_user_log` VALUES ('{D3DC5BFD-32E4-1211-3BB3-009C0714B128}', '业务管理', '人员管理', '添加人员', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 14:31:16');
INSERT INTO `il_user_log` VALUES ('{D4146564-0101-E05D-D6A2-9EDFA3469E6C}', 'system', 'login', 'in', '成功', '', '', '', '0.0.0.0', '2017-08-10 09:18:02');
INSERT INTO `il_user_log` VALUES ('{D51856F8-4243-B287-F047-3955AF28BA9A}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 20:47:01');
INSERT INTO `il_user_log` VALUES ('{D59E84B0-EDD2-72EB-C30E-E1B49362FC86}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:07:37');
INSERT INTO `il_user_log` VALUES ('{D605A56C-6CCE-DAAC-701B-D17F5348F7E6}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:51:09');
INSERT INTO `il_user_log` VALUES ('{D63CAD8D-AD72-CAF5-0589-570A34CDBFE6}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:46:03');
INSERT INTO `il_user_log` VALUES ('{D67ECC1D-3A3C-B5EF-D6AD-0F198659F05B}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:30:34');
INSERT INTO `il_user_log` VALUES ('{D7093A06-1274-8A7B-7F24-4902A29597BE}', '业务管理', '单位管理', '删除子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:03:53');
INSERT INTO `il_user_log` VALUES ('{D7662A07-88D6-8460-B728-5287DFBDA65D}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:10:31');
INSERT INTO `il_user_log` VALUES ('{D77FD5D7-2EA6-7AB0-B1A1-849C2BB6C0E0}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 16:20:23');
INSERT INTO `il_user_log` VALUES ('{D7B5040B-740A-B7AD-D1E6-3724E79ABAD5}', '业务管理', '单位管理', '子单位列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:02');
INSERT INTO `il_user_log` VALUES ('{D7B882AB-385B-EFF2-D4A8-463FF80862F9}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:22:03');
INSERT INTO `il_user_log` VALUES ('{D7CCF4C4-17D4-BB1B-5315-54F9C144E0E9}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:15:36');
INSERT INTO `il_user_log` VALUES ('{D7E0CA87-6338-C40B-196B-2CEB9EC13F78}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:07:13');
INSERT INTO `il_user_log` VALUES ('{D848F1BE-BF73-DCED-CA77-212DDD045019}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 14:07:13');
INSERT INTO `il_user_log` VALUES ('{D87F3A67-AA62-C45B-2CB3-8051183DAF08}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:30:11');
INSERT INTO `il_user_log` VALUES ('{D89ED94A-5F28-BF4C-AF58-C9A2657D81E9}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:21:51');
INSERT INTO `il_user_log` VALUES ('{D8C3C1F9-9A98-AA2A-E725-09A0452B99BF}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 10:03:58');
INSERT INTO `il_user_log` VALUES ('{D9061A9A-6CE3-F4DE-B074-1717B39A7938}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:17:11');
INSERT INTO `il_user_log` VALUES ('{D9102EC8-A352-1976-D7BC-26A94ACA224D}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:07:00');
INSERT INTO `il_user_log` VALUES ('{D915FB51-F7CB-3F34-DAF2-5D24FCBF2F93}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:35:03');
INSERT INTO `il_user_log` VALUES ('{D91873BC-EE4C-6DBF-A23F-9EA37C39283B}', '业务管理', '人员管理', '添加人员', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 11:17:43');
INSERT INTO `il_user_log` VALUES ('{D9208A01-AC66-7F32-8FB0-AECC3AB0FFEB}', '业务管理', '楼层管理', '添加楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:07:30');
INSERT INTO `il_user_log` VALUES ('{DA3F30A6-CD55-4F82-7869-C5ACC34BF6EC}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:31:19');
INSERT INTO `il_user_log` VALUES ('{DA766C0F-3E54-98C4-348B-EE1D29331A66}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:10:36');
INSERT INTO `il_user_log` VALUES ('{DAB83544-CB2D-07E3-4BAC-072452AFC333}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:23:31');
INSERT INTO `il_user_log` VALUES ('{DAE3849E-9D6E-6D33-765D-AE8E9AE71363}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:41:42');
INSERT INTO `il_user_log` VALUES ('{DAF266BD-0261-3463-2276-1C6CC3A3E571}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:06:13');
INSERT INTO `il_user_log` VALUES ('{DB01A8E2-2143-843B-FB61-91F45B79C6B5}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:42:28');
INSERT INTO `il_user_log` VALUES ('{DB115326-AF06-F473-C386-06ACEB8A89D7}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:37:58');
INSERT INTO `il_user_log` VALUES ('{DB223E3D-42CB-8230-703E-594E82D1E46E}', '业务管理', '首页', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:19:25');
INSERT INTO `il_user_log` VALUES ('{DBAF48DF-5708-7E75-E514-0212814BD8F9}', '业务管理', '人员管理', '添加人员', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 14:31:22');
INSERT INTO `il_user_log` VALUES ('{DC203423-BF16-4DFC-40F6-B1CA0BE8401E}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:50:57');
INSERT INTO `il_user_log` VALUES ('{DC2BD769-E4B8-E010-6E1E-3AB1683FC4CE}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 20:44:53');
INSERT INTO `il_user_log` VALUES ('{DC32B04A-A989-D371-4770-0AC78BF9579D}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:42:13');
INSERT INTO `il_user_log` VALUES ('{DC3FFF41-98A9-7211-B4DA-4FFEB4BB1650}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:30:44');
INSERT INTO `il_user_log` VALUES ('{DC60AF4C-D51D-AC1B-9407-B1753881601C}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:21:50');
INSERT INTO `il_user_log` VALUES ('{DC6310B6-97F9-4316-2BA7-BACE4823C6CF}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:01:25');
INSERT INTO `il_user_log` VALUES ('{DC719829-3FF1-8245-2E0F-809292D8C84A}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:04:03');
INSERT INTO `il_user_log` VALUES ('{DC7352A9-5600-4A1C-0A42-5BCA4EA6177B}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:17:18');
INSERT INTO `il_user_log` VALUES ('{DC9F3234-38BF-13B5-CB06-B9C37AA9778E}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 16:20:34');
INSERT INTO `il_user_log` VALUES ('{DD9BEBD6-7FFD-6AFD-B557-AF0ACA891499}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:43:41');
INSERT INTO `il_user_log` VALUES ('{DDE67E84-3C18-102C-9D2E-77A31C84B7CF}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:54:20');
INSERT INTO `il_user_log` VALUES ('{DDE8D5E4-083A-C610-8F64-A720BF5E16CA}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:49:31');
INSERT INTO `il_user_log` VALUES ('{DDEE2483-64E6-8FE9-5315-96977292FB2E}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:41:03');
INSERT INTO `il_user_log` VALUES ('{DE635C1F-1948-536D-377F-C672EC49E3EE}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 20:46:50');
INSERT INTO `il_user_log` VALUES ('{DE7781EB-4680-2046-AEF9-2C9B1392465B}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:22:28');
INSERT INTO `il_user_log` VALUES ('{DF558CE3-CBBF-D7BF-F27B-A6597DF8CBE7}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:50:41');
INSERT INTO `il_user_log` VALUES ('{DF9B1046-1E30-0F31-1363-1C9C10D49414}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:18:24');
INSERT INTO `il_user_log` VALUES ('{E10C5894-A32D-1D37-8342-0937A8AAB489}', '业务管理', '定位套件管理', '删除', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:51:44');
INSERT INTO `il_user_log` VALUES ('{E18CCEAE-2864-F757-55B7-84E7C2B61EA0}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:42:23');
INSERT INTO `il_user_log` VALUES ('{E2F9F5DB-3D01-4D4A-E0A1-97726EC6199D}', 'system', 'login', 'in', '成功', '', '', '', '10.0.2.111', '2017-08-11 10:03:41');
INSERT INTO `il_user_log` VALUES ('{E31DFADA-C9BB-C134-D3A7-DB1E1824ABD3}', '业务管理', '消防设备管理', '删除消防设备', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:22:47');
INSERT INTO `il_user_log` VALUES ('{E3DC577F-FE73-2A39-C8BE-0FB5DC7947D3}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:45:33');
INSERT INTO `il_user_log` VALUES ('{E409CDB0-65B3-0004-3D6B-285A83481F4E}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:37:49');
INSERT INTO `il_user_log` VALUES ('{E43EE1BE-3BCC-7036-DE66-013262E5F81A}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:37:17');
INSERT INTO `il_user_log` VALUES ('{E473871D-87A2-DBFA-712F-2B7831F969EF}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:55:52');
INSERT INTO `il_user_log` VALUES ('{E47E1D5A-0263-D591-A07C-D933B1CFE01F}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:26:27');
INSERT INTO `il_user_log` VALUES ('{E5374708-C2DA-9244-9BA8-AEA2F2224920}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 10:38:20');
INSERT INTO `il_user_log` VALUES ('{E5724A41-EB6B-CDBD-84F2-9594292DB342}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:26:21');
INSERT INTO `il_user_log` VALUES ('{E6430F29-703F-738F-4332-1FEDFF8FE7BE}', '业务管理', '楼层管理', '删除楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:04:56');
INSERT INTO `il_user_log` VALUES ('{E6623E14-59E2-1FC7-01A5-151736653778}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:13:22');
INSERT INTO `il_user_log` VALUES ('{E6726909-B7A8-466D-9E28-9EF4FF2F245C}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:24:45');
INSERT INTO `il_user_log` VALUES ('{E6BE2F08-BA17-7BB6-BAA1-685A1C013626}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:52:49');
INSERT INTO `il_user_log` VALUES ('{E6D1D466-4424-02E8-F1EA-B48BD7DD543A}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:27:59');
INSERT INTO `il_user_log` VALUES ('{E6E13983-2109-1ED7-6820-FD685BC8D0B8}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:53:43');
INSERT INTO `il_user_log` VALUES ('{E7125518-F3A0-A193-7DDD-663BCA4812EB}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:16:37');
INSERT INTO `il_user_log` VALUES ('{E73CCF8F-07D1-BFC8-0D93-CBC112DB48C2}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:17:14');
INSERT INTO `il_user_log` VALUES ('{E86F6667-C72C-AFA1-A3BB-C79056BD3836}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:29:16');
INSERT INTO `il_user_log` VALUES ('{E88C5124-2C3F-829C-B041-123A3BB92C9C}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:55:20');
INSERT INTO `il_user_log` VALUES ('{E8A66627-45CC-5039-D1FB-6D030C52A682}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 11:56:13');
INSERT INTO `il_user_log` VALUES ('{E90AB852-F152-0B52-1335-6FFAADA439FC}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:37:52');
INSERT INTO `il_user_log` VALUES ('{E90B67D4-148E-98AB-197C-E711BA5459DB}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 20:17:11');
INSERT INTO `il_user_log` VALUES ('{E96B72A5-3EE0-8B98-5C1D-6EE9E0526540}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:23:31');
INSERT INTO `il_user_log` VALUES ('{EA7FF94D-CD50-A0C0-04C9-24DC5BA8F2B5}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 12:21:25');
INSERT INTO `il_user_log` VALUES ('{EAF5031B-D37C-9B83-5757-85C1D0937ACE}', '业务管理', '首页', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:23:35');
INSERT INTO `il_user_log` VALUES ('{EB07140D-D69C-44DC-9DD7-FA52AE17D58B}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 12:05:18');
INSERT INTO `il_user_log` VALUES ('{EB6173A6-5676-537E-FD28-C772C2FBF1F2}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 15:28:39');
INSERT INTO `il_user_log` VALUES ('{EBC9FB7E-0344-81A3-6F34-169220E87132}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:43:06');
INSERT INTO `il_user_log` VALUES ('{EBD29BE9-8A98-D567-7ABF-82B39E434AF4}', '业务管理', '消防设备管理', '修改消防设备', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 15:11:47');
INSERT INTO `il_user_log` VALUES ('{EBD388DC-0080-22BD-2204-EE3A5CC83DA6}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:33:06');
INSERT INTO `il_user_log` VALUES ('{EBE9FA1E-B99D-E0D0-21BF-6432542F1386}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:22:10');
INSERT INTO `il_user_log` VALUES ('{EC12900D-4C2D-5C73-0018-207CC9E4DCCB}', '业务管理', '现场终端管理', '修改', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:03:19');
INSERT INTO `il_user_log` VALUES ('{EC2B299E-CF54-8103-081B-C47A5D8B71D3}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-12 14:15:40');
INSERT INTO `il_user_log` VALUES ('{EC33539D-A610-3252-992E-F8533CB1E06B}', '业务管理', '定位套件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 12:22:55');
INSERT INTO `il_user_log` VALUES ('{EC47F387-0A96-835A-036C-0260DFB1027F}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:46:03');
INSERT INTO `il_user_log` VALUES ('{ECAB940C-FC59-A464-E4D6-87B0596BDA81}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 14:18:05');
INSERT INTO `il_user_log` VALUES ('{ECB3EDC7-A18A-8E17-33EA-37C3F3B34400}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:52:24');
INSERT INTO `il_user_log` VALUES ('{ECD38CFD-E08A-2E75-D2E9-72F4F3EEB019}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:35:19');
INSERT INTO `il_user_log` VALUES ('{ED23412D-B81A-8F2E-F468-EF381CCD2EC8}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:15:38');
INSERT INTO `il_user_log` VALUES ('{EDA1D077-A98D-FAC3-DF22-C039C3A5DA1D}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:01:59');
INSERT INTO `il_user_log` VALUES ('{EE6CB32C-03DA-7F9F-6600-3DA176EB2690}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:50:43');
INSERT INTO `il_user_log` VALUES ('{EE9A93A6-8856-A361-842B-CBFCA954068F}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:31:55');
INSERT INTO `il_user_log` VALUES ('{EF050267-C6F9-EF2E-65FA-20BA384904D7}', '业务管理', '定位套件管理', '修改', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:40:09');
INSERT INTO `il_user_log` VALUES ('{EF59B21E-05F5-36A5-039D-CE84B6583510}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:18:29');
INSERT INTO `il_user_log` VALUES ('{EF5CBACC-A538-F5BF-B445-08A3FBEE5061}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:27:31');
INSERT INTO `il_user_log` VALUES ('{EF76B159-21FA-9CA8-68E3-F5FF9E1AD057}', '业务管理', '现场终端管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 15:06:14');
INSERT INTO `il_user_log` VALUES ('{EF838B52-744E-1415-E13F-BF5F3CD91671}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:50:40');
INSERT INTO `il_user_log` VALUES ('{EFBA6AD7-0B67-17BA-B232-C01DD904D8E7}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:22');
INSERT INTO `il_user_log` VALUES ('{F0723D42-3D5D-B669-4710-6A18B7A17EB1}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '{C506DD54-5CF3-E56C-EA02-FA7E04ABF8DF}', '0.0.0.0', '2017-08-22 15:02:55');
INSERT INTO `il_user_log` VALUES ('{F0B60163-3C86-E51B-0971-36C9EFF323AA}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:48:14');
INSERT INTO `il_user_log` VALUES ('{F0C57777-3AAE-0577-72B8-D228E96F699C}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:59:51');
INSERT INTO `il_user_log` VALUES ('{F0F73411-A714-80C6-8397-1B5C3EBAE34E}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:14:30');
INSERT INTO `il_user_log` VALUES ('{F192555D-997E-4913-7EF9-E7C497131FF3}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:30:25');
INSERT INTO `il_user_log` VALUES ('{F21DC38E-9FF0-94D4-578D-9BB4A1613126}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:31:00');
INSERT INTO `il_user_log` VALUES ('{F26120FB-6C79-0649-BFB6-830E2751BFE7}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 21:10:36');
INSERT INTO `il_user_log` VALUES ('{F27E75EE-96A3-63DE-3B0F-18974F6AD5EA}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:05:09');
INSERT INTO `il_user_log` VALUES ('{F28A5EFB-6571-1D31-3E84-27A1809F36DC}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:31:38');
INSERT INTO `il_user_log` VALUES ('{F2A4EE74-605A-4299-E1DE-2356AF72744E}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 12:14:33');
INSERT INTO `il_user_log` VALUES ('{F31C5D38-69D3-060D-C5D1-DD99843E3A68}', '业务管理', '单位管理', '添加子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 16:43:43');
INSERT INTO `il_user_log` VALUES ('{F36E9AD6-5177-CA49-FC9D-21CE806C14C4}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:52:53');
INSERT INTO `il_user_log` VALUES ('{F3908864-9975-DBC0-6C33-977786D03AF5}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 11:26:34');
INSERT INTO `il_user_log` VALUES ('{F439DFC0-DCCD-6D95-076E-C454B38CEA60}', '系统管理', '用户管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:15:37');
INSERT INTO `il_user_log` VALUES ('{F4FEA8C6-5751-AF5E-0FF4-0E76B0C27FEF}', 'system', 'login', 'in', '成功', '', '', '', '0.0.0.0', '2017-08-11 09:16:49');
INSERT INTO `il_user_log` VALUES ('{F577FE75-857B-93EF-B0B2-6285033B3539}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 11:21:54');
INSERT INTO `il_user_log` VALUES ('{F5EBABD8-04AB-3F0D-247A-CD3A17FEEFD0}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 14:12:15');
INSERT INTO `il_user_log` VALUES ('{F6151E35-3106-31C3-A035-B6A5CCD75B2A}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:45:28');
INSERT INTO `il_user_log` VALUES ('{F6172FB5-1506-F655-4F01-91723FA2D7C1}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:48:26');
INSERT INTO `il_user_log` VALUES ('{F6279AEE-0DA3-55B0-D724-D86C4C6CCBE1}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:22:36');
INSERT INTO `il_user_log` VALUES ('{F63DC6F2-A151-8216-FE56-24EA8291C365}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:29:00');
INSERT INTO `il_user_log` VALUES ('{F64AA59F-0109-0DFD-C214-50E92910D0EC}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:29:52');
INSERT INTO `il_user_log` VALUES ('{F659DA9C-4497-B309-2DCE-CFBF4A3CB947}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:20:30');
INSERT INTO `il_user_log` VALUES ('{F66E73A6-427F-C678-6762-56D9F3216822}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:42:07');
INSERT INTO `il_user_log` VALUES ('{F67DBED3-C0CC-4C38-D872-24A7CC510C1B}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 16:37:07');
INSERT INTO `il_user_log` VALUES ('{F69BE804-19E9-6D3B-FB63-A1E0846F49E6}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:33:52');
INSERT INTO `il_user_log` VALUES ('{F6A34ED5-3B00-1B10-442A-D6510B621A30}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:05:53');
INSERT INTO `il_user_log` VALUES ('{F6E16400-5C86-106B-A65F-BDA2EEC6530F}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:35:03');
INSERT INTO `il_user_log` VALUES ('{F73E5C1A-2F90-A622-DB90-36CAD092FA0A}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 14:38:01');
INSERT INTO `il_user_log` VALUES ('{F886C6A3-EED0-C720-FB14-72FE452CBB35}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:29:50');
INSERT INTO `il_user_log` VALUES ('{F8AEA532-BFF5-5294-1302-E3193164CE3B}', '系统管理', '用户管理', '修改密码', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 13:56:53');
INSERT INTO `il_user_log` VALUES ('{F922A1B9-A065-1AE9-B851-8823BCAE18EF}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 20:46:55');
INSERT INTO `il_user_log` VALUES ('{FA09AD5A-3057-4D19-0C42-6A3BB6E5832D}', '业务管理', '建筑管理', '修改建筑', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 11:06:00');
INSERT INTO `il_user_log` VALUES ('{FA2EA755-0830-F491-AA74-0784D407EED1}', '业务管理', '定位套件管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 10:28:31');
INSERT INTO `il_user_log` VALUES ('{FA510EC6-1776-905F-216C-87BAB4F5F113}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 11:45:17');
INSERT INTO `il_user_log` VALUES ('{FA7AD983-A970-FF00-8962-5AD9660AD70B}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 10:54:32');
INSERT INTO `il_user_log` VALUES ('{FA861DA6-3B24-0E5B-D2A5-8B605A001B5D}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-22 11:52:06');
INSERT INTO `il_user_log` VALUES ('{FAB4CCC9-4B17-E66C-8BA8-29DF5433062A}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 16:53:51');
INSERT INTO `il_user_log` VALUES ('{FAE0DA44-D377-72C6-E50D-BCDA5181D800}', '业务管理', '信标管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 20:45:28');
INSERT INTO `il_user_log` VALUES ('{FAE2A528-8BB8-A057-B548-4BDF89220101}', '业务管理', '建筑管理', '添加建筑', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:26:16');
INSERT INTO `il_user_log` VALUES ('{FAEF5DC8-E54E-098D-92D2-CF5510B1A75A}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 14:07:48');
INSERT INTO `il_user_log` VALUES ('{FB02E4DD-670C-7918-BC93-BDFC7062D0D1}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-23 16:08:47');
INSERT INTO `il_user_log` VALUES ('{FB17BB33-8CDC-2198-DC69-EFC67297C85F}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:14:27');
INSERT INTO `il_user_log` VALUES ('{FB367ABF-F026-30C8-2A05-70EC1B63CAE4}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 16:01:36');
INSERT INTO `il_user_log` VALUES ('{FB5F79D3-BDBE-D07E-8A94-5ACC7083AC97}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 18:16:13');
INSERT INTO `il_user_log` VALUES ('{FB764052-8012-E7C6-832D-2A7E76575876}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:53:29');
INSERT INTO `il_user_log` VALUES ('{FC4E446D-8541-4DF2-FC7E-0C5604B61AB7}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 15:32:43');
INSERT INTO `il_user_log` VALUES ('{FC4E7917-A74A-D2C1-97A2-F9A7FF65D59E}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 14:23:51');
INSERT INTO `il_user_log` VALUES ('{FCAD7C93-6708-2FF4-81C5-C14002CA2168}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 18:06:31');
INSERT INTO `il_user_log` VALUES ('{FCB55158-112D-64A7-5CD7-30D4586E6781}', '系统管理', '用户管理', '添加', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:44:47');
INSERT INTO `il_user_log` VALUES ('{FCC37CAD-BFFC-1570-818F-1F570416C037}', '业务管理', '单位管理', '添加子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 10:52:50');
INSERT INTO `il_user_log` VALUES ('{FCC600A4-6AA2-093E-DCCF-F59653791779}', '业务管理', '单位管理', '删除子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-22 14:48:59');
INSERT INTO `il_user_log` VALUES ('{FD07B0F2-611E-E96F-5E12-1A06D6DC9F04}', '业务管理', '单位管理', '修改子单位', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 17:24:59');
INSERT INTO `il_user_log` VALUES ('{FD90FFF1-6245-8D68-9B93-810300FF79DD}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-24 10:46:06');
INSERT INTO `il_user_log` VALUES ('{FDD033D4-58D4-FB27-B3F4-2EC3671A904F}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:34:21');
INSERT INTO `il_user_log` VALUES ('{FDF3FACC-1E0B-041C-F6BF-ACB6A1C5E8A8}', '业务管理', '消防设备管理', '修改消防设备', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 17:52:58');
INSERT INTO `il_user_log` VALUES ('{FE9A06AE-45FC-7C67-987C-AF35D246DAFF}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 11:30:53');
INSERT INTO `il_user_log` VALUES ('{FEBC00E7-DB61-B0E7-DAFD-D6B9E7484880}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-25 19:14:35');
INSERT INTO `il_user_log` VALUES ('{FEDE8B44-324E-5E22-EC06-5CD62AD35E09}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-23 16:20:20');
INSERT INTO `il_user_log` VALUES ('{FF40E06B-28CB-FACC-7A90-D17916B07F8B}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-21 19:38:12');
INSERT INTO `il_user_log` VALUES ('{FF5F68C8-E381-C18E-4565-AA6D32FA5A3B}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-26 17:46:15');
INSERT INTO `il_user_log` VALUES ('{FFC10A76-7E33-812D-4DF3-77A70257E78E}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-12 16:42:12');
