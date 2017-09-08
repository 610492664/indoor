/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : indoor

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-09-08 20:54:54
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
  `height` decimal(5,2) NOT NULL COMMENT '建筑高度',
  `coordinate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '建筑地址',
  `comment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `org_id` mediumint(9) NOT NULL COMMENT '主管单位',
  PRIMARY KEY (`bui_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_building
-- ----------------------------
INSERT INTO `il_building` VALUES ('{BFF5481F-A3DF-F185-927A-83FF572351DB}', '建筑四', '60', '199.00', 'fasdf', '福华三路100号', '福田中队负责', '1');
INSERT INTO `il_building` VALUES ('{6642EB69-0EC0-25FF-29A7-C2842E5AB4A7}', '建筑二', '30', '327.00', 'fdsafd', '北四道1号', '', '1');
INSERT INTO `il_building` VALUES ('{AF5DA1D5-D8C6-C0E5-23FD-42EBEB43490D}', '贝特尔大厦2', '12', '40.00', '2132344', '1232324', '231', '1');
INSERT INTO `il_building` VALUES ('{64411154-7767-B932-9575-F70E2D681B17}', '建筑三', '6', '300.00', 'fdsdf', '福华三路103号', '', '1');
INSERT INTO `il_building` VALUES ('{70AE99C2-5044-DAC8-A94C-89B6CAF7D1A1}', '建筑五', '28', '101.50', 'fddf', '中山四路18号', '', '1');

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
  `height` decimal(3,2) unsigned NOT NULL COMMENT '层高',
  `layout` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '楼层布局',
  `coordinate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '底面坐标',
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`flo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_floor
-- ----------------------------
INSERT INTO `il_floor` VALUES ('{4DCEC62F-F315-2360-E3FC-21A711B28948}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '3', '4.00', 'dsaf', 'fdsaf', '没有备注');
INSERT INTO `il_floor` VALUES ('{5D8C0F12-EF38-9599-9844-42EA6FA27A9D}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '1', '5.00', 'ffd', 'dfdf', '首层');
INSERT INTO `il_floor` VALUES ('{03D0A25D-B8B6-C391-46D1-04F554F2A256}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '2', '3.00', 'fdsdfd', 'dfsdf', '第二层');
INSERT INTO `il_floor` VALUES ('{E004FD81-CBB1-084E-668C-215E847A0ED9}', '{372B348C-B934-08C4-47B4-F7C47F68F36F}', '12', '3.00', '324', '32423', '2342');
INSERT INTO `il_floor` VALUES ('{C7F4B791-9E65-FA8F-B7C4-7D9BB74819FB}', '{64411154-7767-B932-9575-F70E2D681B17}', '1', '4.00', 'ddff', 'ddfff', '首层');

-- ----------------------------
-- Table structure for il_group
-- ----------------------------
DROP TABLE IF EXISTS `il_group`;
CREATE TABLE `il_group` (
  `gro_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `per_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '组长',
  `org_id` mediumint(9) NOT NULL COMMENT '所属单位',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常1弃用',
  PRIMARY KEY (`gro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_group
-- ----------------------------
INSERT INTO `il_group` VALUES ('{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '第4组', '{0A9ECA32-F234-A673-4837-B2388C12C317}', '1', '0');
INSERT INTO `il_group` VALUES ('{6C2532B0-84AF-31B8-5ADD-0A3E9883AE9A}', '第三组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{7F24EB5F-8BF5-0B50-3B14-17654B7593AD}', '第一组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{16855727-C02A-0573-313E-4ACC6211419C}', '第二组', '{A35BF193-C318-C9B9-6B07-CB08CF2E4A75}', '1', '0');
INSERT INTO `il_group` VALUES ('{876C30E2-7730-08BC-4894-7611030AF373}', '第五组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{20B3A08F-6389-6B52-6B40-45DDE2AEE00B}', '第六组', '{6F5AE69C-A5A9-9ABD-A614-1ACF04285F17}', '1', '0');
INSERT INTO `il_group` VALUES ('{64D7372B-BB52-DFC8-0A64-A4774D5B3E62}', '第九组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{A2791C16-B7DE-E92A-5C79-32AB25E1834D}', '第一组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{7AC502AF-77D0-DB1C-4C1F-938096485164}', '第5组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{24788D5B-9702-E015-10DA-3B4D8C8E40B6}', '第1组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{5A9DA281-C29F-DAE2-5AF1-8094747F77DC}', '第2组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{5A043DE3-8A38-9BA7-F1B1-1F983810014A}', '第6组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{24EE91FA-F4B8-20E4-BEBA-A63C02D139CE}', '发', '', '1', '0');
INSERT INTO `il_group` VALUES ('{CDFC4BD5-423E-FE75-691A-A8830EC13558}', '第111组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{5BF224FF-BC65-38E5-93EA-7E821FDF69E0}', '王', '', '1', '0');
INSERT INTO `il_group` VALUES ('{21376E84-3001-6E02-F828-C6696ABAA34D}', '第123组', '', '1', '0');

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
  `org_id` mediumint(9) NOT NULL COMMENT '所属单位',
  PRIMARY KEY (`inc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_incident
-- ----------------------------
INSERT INTO `il_incident` VALUES ('{48460920-1AA0-BF9A-34DB-2358A2E7A4E4}', '事件一', '0', '1', '突发火灾有空445分隔符规范规范', '1502012693', '1502012780', '1');

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
INSERT INTO `il_inc_bui` VALUES ('{83EB81C6-22DE-022C-3B10-6D203B65FB4A}', '{D8997D8B-131C-FCDD-3486-9506E139490F}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}');

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
  `org_id` mediumint(9) NOT NULL COMMENT '所属单位',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常可用，1正常停用，2故障停用，3报废，4遗失',
  PRIMARY KEY (`lequ_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_local_equipment
-- ----------------------------
INSERT INTO `il_local_equipment` VALUES ('{EDB3F169-BC5B-DE15-F20E-1A68AF657B8E}', '终端二', '2056', '1', '0');
INSERT INTO `il_local_equipment` VALUES ('{48A8F67F-6274-001F-3451-73C848F5D1C3}', '终端8', '1935244800', '1', '0');
INSERT INTO `il_local_equipment` VALUES ('{CB98BEEB-7D18-58F9-E138-43FFD0B04CF1}', '终端三', '639244800', '1', '0');
INSERT INTO `il_local_equipment` VALUES ('{4D393CCE-B218-9D5A-9040-06DA4E70B701}', '终端5', '1328198400', '1', '0');

-- ----------------------------
-- Table structure for il_location_mark
-- ----------------------------
DROP TABLE IF EXISTS `il_location_mark`;
CREATE TABLE `il_location_mark` (
  `lmar_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '定位信标id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '信标类型0一般，1紧急',
  `org_id` mediumint(9) NOT NULL COMMENT '所属单位',
  `mac` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常，1故障，2报废，3遗失',
  PRIMARY KEY (`lmar_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_location_mark
-- ----------------------------
INSERT INTO `il_location_mark` VALUES ('{C7448A9E-A9CD-01D5-87FF-4FFC5DB9ECCC}', '信标一', '0', '1', 'fdsaf6565', '1');
INSERT INTO `il_location_mark` VALUES ('{50E15174-63B4-3C66-6F5C-EE3B298233E7}', '信标二', '1', '1', '6556dd', '0');
INSERT INTO `il_location_mark` VALUES ('{C21FDB37-3370-3C4F-3367-02AF8AB39472}', '信标3', '0', '1', '56544', '0');
INSERT INTO `il_location_mark` VALUES ('{9E948530-C3B4-0671-3AA2-0CE1414F9086}', '信标4', '1', '1', '1454', '0');

-- ----------------------------
-- Table structure for il_locator
-- ----------------------------
DROP TABLE IF EXISTS `il_locator`;
CREATE TABLE `il_locator` (
  `loc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mac` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '物理标识码',
  `buy_time` int(11) NOT NULL DEFAULT '0',
  `org_id` mediumint(9) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未使用，1已占用，2正常停用，3故障停用，4遗失，5报废',
  PRIMARY KEY (`loc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_locator
-- ----------------------------
INSERT INTO `il_locator` VALUES ('{A73E1147-BC5F-C6AB-55D2-266642AA1C4E}', '套件九', '545345', '1329148800', '1', '0');
INSERT INTO `il_locator` VALUES ('{40F07D59-23A7-1CB7-E4F3-512239754508}', '套件四', '556546', '1370275200', '1', '0');
INSERT INTO `il_locator` VALUES ('{6C954674-5492-5377-0327-650870E6FBB2}', '套件13', '123455', '1433692800', '1', '0');
INSERT INTO `il_locator` VALUES ('{A24AAF1B-AD2D-03D7-B454-274B1FA99A38}', '场', '534256', '2147443200', '1', '1');
INSERT INTO `il_locator` VALUES ('{16CCCA18-3A73-3E5A-BB60-FA8FF6DC876D}', '套件二', '31243', '936806400', '1', '0');
INSERT INTO `il_locator` VALUES ('{C3A80AB2-655A-F369-C341-D491D1E6E939}', '套件十', '1234324', '1375200000', '1', '0');
INSERT INTO `il_locator` VALUES ('{1A306EC7-3826-5578-0E04-D257EB43CF3C}', '套件三', '54325', '-28800', '1', '3');
INSERT INTO `il_locator` VALUES ('{0B725BAF-7F7D-1ACA-CF37-A586AA79ADEA}', '套件一', '2132', '1399564800', '1', '4');
INSERT INTO `il_locator` VALUES ('{FE9C8835-F3FC-F04C-A741-1A2D9C75DC11}', '套件14', '1265454', '1462550400', '1', '0');
INSERT INTO `il_locator` VALUES ('{51DD2F10-B205-4B03-4081-AF7EFD9A046A}', '套件五', '124541', '1428076800', '1', '0');
INSERT INTO `il_locator` VALUES ('{42149D4C-C8F5-6D5D-71DA-82C6BBDC7D95}', '套件九1', '21321', '1513958400', '1', '0');
INSERT INTO `il_locator` VALUES ('{6EB426B6-EE05-0EFC-E34D-396D85F4DB7A}', '套件12', '1234', '1399305600', '1', '0');
INSERT INTO `il_locator` VALUES ('{691F0F1F-FC31-3435-7F7A-C46F1220F36F}', '套件15', '46545454', '1433520000', '1', '0');
INSERT INTO `il_locator` VALUES ('{7CF8EA50-300B-5609-4D21-68BA55F44702}', '套件16', '12234545', '1462636800', '1', '0');
INSERT INTO `il_locator` VALUES ('{BF195674-BB56-C1E6-CD83-5C6D8D6C8095}', '套件17', '125465454', '1428422400', '1', '0');
INSERT INTO `il_locator` VALUES ('{F16A70F2-83EF-5287-867C-D60EE67FD1C5}', '套件18', '2454545', '1462636800', '1', '0');
INSERT INTO `il_locator` VALUES ('{9F9B4030-C192-B9C1-4219-330AFE5B2941}', '套件19', '123445', '1438704000', '1', '0');
INSERT INTO `il_locator` VALUES ('{D0BE9C9C-082D-31B8-C3E0-480252315DA8}', '套件20', '211654', '1470585600', '1', '0');
INSERT INTO `il_locator` VALUES ('{186221D8-3F3F-8749-456C-A5543701617C}', '套件22', '15454', '1462636800', '1', '0');
INSERT INTO `il_locator` VALUES ('{7234B14B-D60A-74F5-7A40-E9C82D091B8F}', '套件25', '5465454', '1462636800', '1', '0');

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
INSERT INTO `il_node` VALUES ('admin/incident/detail', 'admin/incident', '', '0', '0', '0', '1503903041');
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
INSERT INTO `il_node` VALUES ('admin/organization/resetpass', 'admin/organization', '', '0', '0', '0', '1504084355');
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
INSERT INTO `il_node` VALUES ('system/user/resetpass', 'system/user', '', '0', '0', '0', '1504084355');
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
  `org_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `p_org_id` mediumint(9) unsigned DEFAULT NULL COMMENT '父级单位id',
  `chain` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父级单位链',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `abbr` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常，1撤销',
  PRIMARY KEY (`org_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_organization
-- ----------------------------
INSERT INTO `il_organization` VALUES ('1', '0', '', '深圳市淘米科技有限公司', 'tomee', '深圳市高新北四道贝特尔大厦三楼', '0');
INSERT INTO `il_organization` VALUES ('2', '1', '-1', '佛山市消防总队', '佛山总队', '科技园大道1号路1号', '0');
INSERT INTO `il_organization` VALUES ('3', '1', '-1', '深圳市消防总队', '深圳总队', '福田区长安路13号', '0');
INSERT INTO `il_organization` VALUES ('4', '3', '-1-3', '南山区消防大队', '南山大队', '南海大道25号', '0');

-- ----------------------------
-- Table structure for il_outfire_facility
-- ----------------------------
DROP TABLE IF EXISTS `il_outfire_facility`;
CREATE TABLE `il_outfire_facility` (
  `ofac_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消防设施id',
  `number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '设备编号',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消防设施名称',
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型，0灭火器，1消防栓',
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属建筑',
  `flo_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '楼层id',
  `coordinate` char(18) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置坐标',
  `place_time` int(11) NOT NULL COMMENT '放置时间',
  `remove_time` int(11) DEFAULT NULL COMMENT '移除时间',
  `status` tinyint(1) unsigned NOT NULL COMMENT '0正常，1故障, 2已移除',
  PRIMARY KEY (`ofac_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_outfire_facility
-- ----------------------------
INSERT INTO `il_outfire_facility` VALUES ('{D2A08936-515C-A10F-CD52-8A9164C70FCD}', '44545', '灭火器', '1', '贝塔尔大厦', '3', '45545', '2015', null, '0');
INSERT INTO `il_outfire_facility` VALUES ('{E8ABFE9E-0B42-80AF-DA33-9B9DA2DF16BA}', 'a011', '消防栓', '1', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '{03D0A25D-B8B6-C391-46D1-04F554F2A256}', '121514', '20102400', null, '0');

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
  `org_id` mediumint(9) NOT NULL COMMENT '单位id',
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
INSERT INTO `il_person` VALUES ('{B4A661EB-B3F5-C40F-B741-9053CC5D2B28}', '人员发', '0', '-28800', '20170623\\b7b27fab7c77201189a9abd805731472.jpg', '0', '654655', '1', '{20B3A08F-6389-6B52-6B40-45DDE2AEE00B}', '1', '1', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{DB7A3C0D-1676-9CA2-D84B-1EC62B1FB9C9}', '万文', '0', '610556400', '', '0', '54544554', '1', '', '1', '1', '1462464000', '', '0');
INSERT INTO `il_person` VALUES ('{0A9ECA32-F234-A673-4837-B2388C12C317}', '王柳', '0', '1420041600', '', '0', '54546565', '1', '{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '1', '1', '1430755200', '{A24AAF1B-AD2D-03D7-B454-274B1FA99A38}', '0');
INSERT INTO `il_person` VALUES ('{EF15F03D-74AC-E0BF-6A6A-F852A1325B89}', '张三', '0', '610383600', '', '0', '5254554', '1', '', '1', '1', '1494000000', '', '0');
INSERT INTO `il_person` VALUES ('{0F6AB859-DA46-C1A3-489A-A1B2BABDFBED}', '王文', '1', '1777996800', '20170822\\94b215ecc14d17eaafd711e95009affc.png', '0', '4656566', '1', '', '1', '1', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{1E5CD075-E639-6AB3-A300-D24A29F3F417}', '张三', '1', '2029939200', '20170822\\a9a42de9bcd5efb3e24ee7ffbb58611b.png', '0', '342424', '1', '', '1', '1', '1503417600', '', '0');
INSERT INTO `il_person` VALUES ('{9423A99D-6B55-4621-E98C-A2685F45DE89}', '份饭', '0', '644857200', '20170901\\e2888c11e7576ea425e52a44bc197a42.jpg', '0', '556', '1', '', '1', '2', '1493654400', '', '0');
INSERT INTO `il_person` VALUES ('{1AF6CEA3-3698-1C63-6E4B-F8FF8E9C5EA4}', '人以上', '0', '1399305600', '20170824\\c4ca9c1d09c930c5ceb8f746a96476dc.jpg', '0', '4444545', '1', '', '1', '1', '1433692800', '', '0');
INSERT INTO `il_person` VALUES ('{06A909A0-9D82-39A2-5098-360C875618C6}', '万文', '0', '641833200', '20170817\\42a758c0fa5401d7efa330f13e2386e3.jpg', '0', '5454454', '1', '{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '1', '1', '1297612800', '', '0');
INSERT INTO `il_person` VALUES ('{8A923002-E56E-8A6B-A79C-21140380FB58}', '柳林', '0', '515689200', '', '1', '5465444654', '3', '', '0', '0', '1210003200', '', '0');

-- ----------------------------
-- Table structure for il_role
-- ----------------------------
DROP TABLE IF EXISTS `il_role`;
CREATE TABLE `il_role` (
  `rol_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名称',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注说明',
  `sort` smallint(6) unsigned DEFAULT '0' COMMENT '排序权重',
  `org_id` mediumint(9) DEFAULT NULL COMMENT '所属单位，（超级管理员此字段为0，所有单位共用）',
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
INSERT INTO `il_role` VALUES ('{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', '普通用户', '拥有查看权限', '0', '1', '0', '{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', '1501058199');
INSERT INTO `il_role` VALUES ('{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', '普通管理员', '普通', '0', '1', '0', '{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', '1500637333');
INSERT INTO `il_role` VALUES ('{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '系统超级管理员', '拥有所有权限', '0', '0', '0', '', '1501036927');
INSERT INTO `il_role` VALUES ('{E39ECFB9-7B01-22BE-EE4B-D2142F430BE9}', '游客', '普通游客', '0', '1', '0', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', '1503048324');
INSERT INTO `il_role` VALUES ('{F8450F09-9220-8002-287D-6ED9A97F62A1}', '编辑管理员', '拥有编辑权限', '0', '1', '0', '{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', '1501036959');

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
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属事件',
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
  `org_id` mediumint(9) NOT NULL COMMENT '所属单位id',
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
INSERT INTO `il_user` VALUES ('{1865CF44-B3A8-BB22-4E8B-4C98A2445F8C}', 'yonghu5', 'e10adc3949ba59abbe56e057f20f883e', '6464565@qq.com', '', '', '0', '0', '0.0.0.0', '1', '0', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', '', '1503371737');
INSERT INTO `il_user` VALUES ('{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '13888888888', '第二个用户', '3', '1503058810', '10.0.2.111', '1', '0', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', '', '1499341299');
INSERT INTO `il_user` VALUES ('{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', 'e10adc3949ba59abbe56e057f20f883e', '4441544@qq.com', '13888888888', '', '1', '1503385312', '0.0.0.0', '2', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1503385264');
INSERT INTO `il_user` VALUES ('{58B08885-1D93-997F-0D7E-8C7903E30D83}', 'nsdd', 'e10adc3949ba59abbe56e057f20f883e', '56444564@qq.com', '13888888888', '', '0', '0', '0.0.0.0', '4', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1504519298');
INSERT INTO `il_user` VALUES ('{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@tomee.cn', '13888888827', '主要的管理员1', '88', '1504861321', '0.0.0.0', '1', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1501144826');
INSERT INTO `il_user` VALUES ('{97AF6DE5-971B-9D4E-F74D-1CFAD366B773}', 'yonghu4', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '13888888888', '21121', '0', '0', '0.0.0.0', '1', '0', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', '', '1502973720');
INSERT INTO `il_user` VALUES ('{B6E21170-1C5B-1B25-05A7-4CC75EA4FBF5}', 'yonghu', 'e10adc3949ba59abbe56e057f20f883e', '4455@qq.com', '13888888888', '', '0', '0', '0.0.0.0', '1', '1', '', '', '1503040939');
INSERT INTO `il_user` VALUES ('{B71BCD4B-64D3-6543-627D-BB7D6AB24676}', 'yonghu6', 'e10adc3949ba59abbe56e057f20f883e', '5454@qq.com', '13888888888', '', '0', '0', '0.0.0.0', '1', '1', '', '', '1503042024');
INSERT INTO `il_user` VALUES ('{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', 'yonghu2', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '13888888889', '第二个用户', '53', '1502435788', '0.0.0.0', '1', '1', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', '', '1499838728');
INSERT INTO `il_user` VALUES ('{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', 'e10adc3949ba59abbe56e057f20f883e', '6554445@qq.com', '13888888880', '', '2', '1504688240', '0.0.0.0', '3', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1504519147');
INSERT INTO `il_user` VALUES ('{FEF28DE6-D732-4399-9DA5-9FED5D44C86B}', 'yonghu7', 'e10adc3949ba59abbe56e057f20f883e', 'fdsf@qq.com', '13888888888', '', '0', '0', '0.0.0.0', '1', '0', '', '', '1503042072');

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
INSERT INTO `il_user_log` VALUES ('{0000CFA2-BB33-13D7-F560-416DDED428EE}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:54');
INSERT INTO `il_user_log` VALUES ('{011FDD6E-431A-B0FD-B962-53089671D2BB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:04:01');
INSERT INTO `il_user_log` VALUES ('{0270EC7E-57F7-488F-4394-EEC11F745BB5}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-06 19:26:42');
INSERT INTO `il_user_log` VALUES ('{03098604-0AE5-BE6D-B2BA-C7E782C1F862}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-08 17:02:17');
INSERT INTO `il_user_log` VALUES ('{034F6392-D27B-EF87-C1B9-716207D49EAD}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:39:33');
INSERT INTO `il_user_log` VALUES ('{0379F380-A76D-91B4-44B3-2E18E2B3AC64}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 17:59:50');
INSERT INTO `il_user_log` VALUES ('{06B5FF9E-ED87-9DDD-89AF-463A99983ECD}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:13:47');
INSERT INTO `il_user_log` VALUES ('{06D91EF5-94E8-DF37-F3A6-D5718745E975}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:51');
INSERT INTO `il_user_log` VALUES ('{076F298B-D450-57C4-B12D-708EE7C8DE74}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:03');
INSERT INTO `il_user_log` VALUES ('{07B924FB-4BC9-51DB-03D2-09BFED0E3752}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:38:27');
INSERT INTO `il_user_log` VALUES ('{084272AF-ADB8-E19C-FE92-502AF9FF636E}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:32:46');
INSERT INTO `il_user_log` VALUES ('{089A1F41-7CDF-72A5-46D1-2E820D51E5A5}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:55');
INSERT INTO `il_user_log` VALUES ('{08A17B20-34C5-5CAE-795C-07E0661B3E00}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:33:02');
INSERT INTO `il_user_log` VALUES ('{09338A50-3126-6F56-C9FA-CF52C497B15C}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 19:43:39');
INSERT INTO `il_user_log` VALUES ('{0A5841A2-8D52-7B1C-275D-C113538D0B52}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:55:52');
INSERT INTO `il_user_log` VALUES ('{0A710A40-514E-CB73-18D0-E8B1F7C54207}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 17:59:49');
INSERT INTO `il_user_log` VALUES ('{0C6F86FF-3CCA-D989-000E-DC67DADED024}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:01');
INSERT INTO `il_user_log` VALUES ('{0CC015AF-1020-F1F7-8FA3-75E9BAF953AB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:10:20');
INSERT INTO `il_user_log` VALUES ('{0D8E417B-E936-F245-B359-8298DA1545F9}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:35:56');
INSERT INTO `il_user_log` VALUES ('{0F5888B2-E36C-D4A5-6656-1DC7D3BE7432}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:29');
INSERT INTO `il_user_log` VALUES ('{0FB0A067-9D5F-808B-54ED-3BEDBFF0600C}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:03:55');
INSERT INTO `il_user_log` VALUES ('{10C5997B-42A5-2A36-E60C-4AF8C4BC6AF7}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:41:31');
INSERT INTO `il_user_log` VALUES ('{10FB94D3-6DD5-EF7D-E203-DC12B52DCD73}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:46');
INSERT INTO `il_user_log` VALUES ('{11784F32-DBFD-63A8-6F5C-B93C42B725FB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:16');
INSERT INTO `il_user_log` VALUES ('{11C57329-DD40-66AE-6483-147C28D6CACB}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:33:12');
INSERT INTO `il_user_log` VALUES ('{122FB919-6188-EAD0-1600-15F96A19A320}', '业务管理', '单位管理', '修改子单位', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:30');
INSERT INTO `il_user_log` VALUES ('{1266960A-EA08-D3DD-0DF3-80A711CE25A3}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:22:02');
INSERT INTO `il_user_log` VALUES ('{12AC7B71-BA38-9694-D912-5186122C8216}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:53');
INSERT INTO `il_user_log` VALUES ('{12B0D819-65BF-9B5F-2F6D-FFDECFBC6E6F}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:29:36');
INSERT INTO `il_user_log` VALUES ('{1343C25D-5544-2C74-ED3A-F598B2031284}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:07:43');
INSERT INTO `il_user_log` VALUES ('{13F088F0-F5EB-B477-5D8C-E335DD7B6F1A}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:16:55');
INSERT INTO `il_user_log` VALUES ('{152E8D17-CA1C-9F54-AD38-B5F5AB9E980C}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:53:54');
INSERT INTO `il_user_log` VALUES ('{153C0F0E-BCCC-EE58-3E37-790A5A8293D2}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:24');
INSERT INTO `il_user_log` VALUES ('{15EBD571-0225-2D44-37F4-ED798E0F6916}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:54:48');
INSERT INTO `il_user_log` VALUES ('{168758E0-4AB9-5514-6791-E6F7662DB7A8}', '系统管理', '用户管理', '修改密码', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:03');
INSERT INTO `il_user_log` VALUES ('{16AC0BEF-7762-C5EF-51C7-8A77072E38E8}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:03');
INSERT INTO `il_user_log` VALUES ('{17C92A9B-9B5A-BD8E-B25B-E818FA6850D3}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 20:03:27');
INSERT INTO `il_user_log` VALUES ('{1937822E-432C-9827-4DA6-8A540248025E}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:40:19');
INSERT INTO `il_user_log` VALUES ('{19857182-FEBE-E028-47DE-BAA5C9F2CB6A}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:39:15');
INSERT INTO `il_user_log` VALUES ('{1A3D882B-13AC-4B5B-0AF8-188D1D0CAAE2}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:57:41');
INSERT INTO `il_user_log` VALUES ('{1AB55709-47D7-B768-45CC-52732EBC3490}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:31');
INSERT INTO `il_user_log` VALUES ('{1ACBC68E-338C-20CE-6DCE-9FEC924DC7F7}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:55');
INSERT INTO `il_user_log` VALUES ('{1B2922DA-51C7-0D26-5D80-2118E4FD04A8}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:09:39');
INSERT INTO `il_user_log` VALUES ('{1BC3A714-A48D-0D1F-847F-55D012A56999}', '业务管理', '人员管理', '人员列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-06 16:57:25');
INSERT INTO `il_user_log` VALUES ('{1C22F91E-8075-ACF1-6BC8-B869EB31D38B}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:30');
INSERT INTO `il_user_log` VALUES ('{1CB391BB-5156-782A-31BA-EFD2C1FD1000}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:45:16');
INSERT INTO `il_user_log` VALUES ('{1E420C49-5243-945A-FBA3-10629F95F2BF}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:15:21');
INSERT INTO `il_user_log` VALUES ('{1EE766B5-1937-EFB2-2034-AFAA7AC68482}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-06 16:57:21');
INSERT INTO `il_user_log` VALUES ('{2053E50C-58FE-0259-3ADF-90A11724537C}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:43');
INSERT INTO `il_user_log` VALUES ('{214742A7-73AF-07E0-75F9-E4B95D04517D}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:49');
INSERT INTO `il_user_log` VALUES ('{21E3E31B-BEF7-6E3A-70DB-FA85BE9354A0}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:22:20');
INSERT INTO `il_user_log` VALUES ('{2385FED6-60B1-D805-863C-55CA16E569B8}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:51');
INSERT INTO `il_user_log` VALUES ('{2395D274-F024-C9B8-BE3B-A8F0E372C6E8}', '业务管理', '组管理', '组列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:15:37');
INSERT INTO `il_user_log` VALUES ('{24DD965C-800E-8F29-2F26-9CEB2BE87E86}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:07:57');
INSERT INTO `il_user_log` VALUES ('{253D5F31-A288-3F86-93B2-EA522C1E353E}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-06 19:26:38');
INSERT INTO `il_user_log` VALUES ('{25D7FB23-894E-6356-84BA-67718EE96338}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:32:42');
INSERT INTO `il_user_log` VALUES ('{26AFFB67-831B-1A77-8034-4E60E00072FF}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:20:58');
INSERT INTO `il_user_log` VALUES ('{26B4DDC5-DD27-AC60-386B-A114D177B812}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:59:15');
INSERT INTO `il_user_log` VALUES ('{26F336B9-976B-D1B3-0CED-AA2D292A5998}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:08');
INSERT INTO `il_user_log` VALUES ('{277535FA-BE5A-FA05-5769-B6C86368F834}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:10');
INSERT INTO `il_user_log` VALUES ('{28425AC4-88A0-69C1-F705-E95B487273CF}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:06:44');
INSERT INTO `il_user_log` VALUES ('{28AA1493-9AB9-3C53-4E17-2F56B189B753}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:53:45');
INSERT INTO `il_user_log` VALUES ('{299E3F95-ED9E-F828-4D69-6A28114E663B}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:39:01');
INSERT INTO `il_user_log` VALUES ('{2B0C4E6D-FD49-2CD9-CCB9-E833DC7030A0}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 19:43:52');
INSERT INTO `il_user_log` VALUES ('{2B90EF97-C424-0539-7558-1A90BF967595}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 18:21:19');
INSERT INTO `il_user_log` VALUES ('{2DA56BC4-8ED1-72FC-CC1B-C7BFE3FD560C}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:10');
INSERT INTO `il_user_log` VALUES ('{2F2E3C87-9266-695C-4FB6-EBACC404EBED}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:03');
INSERT INTO `il_user_log` VALUES ('{2F67AA07-CCA0-86DC-9FD3-FA4C26467793}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:54');
INSERT INTO `il_user_log` VALUES ('{2F9926D9-A96D-9912-CFAE-C8F7B6558B4B}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:39:06');
INSERT INTO `il_user_log` VALUES ('{2FDD30EE-D0EB-7023-D288-CFF7BD2646D3}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:03');
INSERT INTO `il_user_log` VALUES ('{30DDB357-64D7-7BB3-1250-37C1FD791D38}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:53:58');
INSERT INTO `il_user_log` VALUES ('{30DFB2AA-8AF7-5D70-67F3-6008E42B1C79}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:39:12');
INSERT INTO `il_user_log` VALUES ('{316CAC00-35B3-3A26-7DA9-839D49C589C9}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:17:43');
INSERT INTO `il_user_log` VALUES ('{31A76E8D-FD75-1208-15B5-0265BD6D2AB6}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:53:53');
INSERT INTO `il_user_log` VALUES ('{31E76B06-15F7-AA9E-DC7F-DAB389FC96D2}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:55:06');
INSERT INTO `il_user_log` VALUES ('{34F20B6D-C927-89B0-6A6E-F87D2DEDCDC0}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:33');
INSERT INTO `il_user_log` VALUES ('{3584CDC1-B85C-2B7B-8BE9-E977C926F0DD}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:42:14');
INSERT INTO `il_user_log` VALUES ('{367461BE-B10C-FB01-D6A8-872A0F21E469}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:08:04');
INSERT INTO `il_user_log` VALUES ('{3685A7AA-2597-1915-FB2C-CB6D295AEA32}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:38:02');
INSERT INTO `il_user_log` VALUES ('{37DFE745-08B5-36FD-8C37-88AAB7F411FE}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:54:59');
INSERT INTO `il_user_log` VALUES ('{38B3A20D-D579-3AE6-A0F7-2D3D46D7E8F5}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:35:07');
INSERT INTO `il_user_log` VALUES ('{3907F97E-E1F1-287E-6613-9E86EBF7142B}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:17');
INSERT INTO `il_user_log` VALUES ('{3980CE94-DB7D-8522-0A54-6BD6034797BB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:50:42');
INSERT INTO `il_user_log` VALUES ('{3992D794-DA9D-C198-0BBD-8B34DBD81221}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd02', '3', '0.0.0.0', '2017-09-04 18:44:32');
INSERT INTO `il_user_log` VALUES ('{3A3F7C90-434A-1C8D-87B3-2D564C442A39}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd02', '3', '0.0.0.0', '2017-09-04 18:39:38');
INSERT INTO `il_user_log` VALUES ('{3B7719DE-36E4-B444-0014-F08CFFD53AD2}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:32');
INSERT INTO `il_user_log` VALUES ('{3BD143EA-1004-18F0-9AAE-7E083289F522}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:45');
INSERT INTO `il_user_log` VALUES ('{3C688B42-D5BD-071B-0B16-F62761CABEC1}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:43:29');
INSERT INTO `il_user_log` VALUES ('{3CC6B64E-7338-A185-56CA-6E20BCFB33D7}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:21:12');
INSERT INTO `il_user_log` VALUES ('{3CE09FD4-3311-8043-56A5-9453494E0FB3}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:42:47');
INSERT INTO `il_user_log` VALUES ('{3D6ACF73-C8EE-B39B-0FFA-20184B969BAA}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:49');
INSERT INTO `il_user_log` VALUES ('{3E1FFDCD-BAC3-FF97-5B50-67869063866F}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:07:50');
INSERT INTO `il_user_log` VALUES ('{3FDE0B6A-0098-5835-7E38-9E19D5BF2F5B}', '业务管理', '楼层管理', '楼层列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:37');
INSERT INTO `il_user_log` VALUES ('{3FFA089C-58AD-18B3-9961-8218627BE73B}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:31');
INSERT INTO `il_user_log` VALUES ('{40212BE7-8B6F-FA6F-5488-6EE2EF3BAF20}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:15');
INSERT INTO `il_user_log` VALUES ('{4176F42D-B448-E3EC-4E38-FD2CB537B6F8}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:31');
INSERT INTO `il_user_log` VALUES ('{41DD3D85-2ABF-330A-9083-BBD30FB2D8C6}', '业务管理', '组管理', '添加组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:16:09');
INSERT INTO `il_user_log` VALUES ('{43A9CA1B-981F-2593-1BE8-8ACF81A7BB17}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:44:54');
INSERT INTO `il_user_log` VALUES ('{448506AE-D4CD-6B38-5E28-CCDAEA5C5C9A}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:39:17');
INSERT INTO `il_user_log` VALUES ('{44AAC2FC-EF05-4164-3853-5DE31CA1DF40}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:09:55');
INSERT INTO `il_user_log` VALUES ('{45C7340A-747F-C9AE-9EF8-2B3C465CB65A}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:15:41');
INSERT INTO `il_user_log` VALUES ('{463EC2D1-EC62-5A79-799E-6A0321D3DC58}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:23');
INSERT INTO `il_user_log` VALUES ('{47CE9E38-20B6-33F5-6674-77EEE0423545}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 17:59:47');
INSERT INTO `il_user_log` VALUES ('{47D7DF34-9EEA-0360-4E65-43A7FB5C1FFB}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:49');
INSERT INTO `il_user_log` VALUES ('{48BA3948-41D5-346F-520E-6F2A5CC854D6}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:41');
INSERT INTO `il_user_log` VALUES ('{4998B11E-AE38-C061-34A4-E427762022B4}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:45');
INSERT INTO `il_user_log` VALUES ('{4A978C23-97CC-3FE4-0E40-F6E770A68EE0}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:30');
INSERT INTO `il_user_log` VALUES ('{4AF61C26-C0F7-4F03-830F-B97FA97DB944}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:28');
INSERT INTO `il_user_log` VALUES ('{4B5B8A94-8750-760D-FA2F-8102FAD556FE}', '业务管理', '组管理', '添加组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:09:02');
INSERT INTO `il_user_log` VALUES ('{4BC1BE43-6704-2D69-C571-C9529F1CEA66}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:10');
INSERT INTO `il_user_log` VALUES ('{4C04ED3B-AF8A-824D-578E-CDACCBCA6043}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:04:07');
INSERT INTO `il_user_log` VALUES ('{4C24B7AE-4253-E603-8B12-B8FC0E30B180}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:53');
INSERT INTO `il_user_log` VALUES ('{4C5816C8-880F-2352-71C0-096C446178DE}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:42:49');
INSERT INTO `il_user_log` VALUES ('{4E18B87D-86C4-8DC1-E8F4-45DFE9DD1545}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:43');
INSERT INTO `il_user_log` VALUES ('{504112B0-F33C-437F-179D-F41A6B41BD03}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:38:30');
INSERT INTO `il_user_log` VALUES ('{50D09B30-E851-F318-058C-18B9A9657F2D}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:35');
INSERT INTO `il_user_log` VALUES ('{5146FCD4-0FED-9B8B-0511-CED68F50ABC3}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:41');
INSERT INTO `il_user_log` VALUES ('{516B1231-2035-E6B1-AF5A-69A26B541E3F}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:41');
INSERT INTO `il_user_log` VALUES ('{51D45692-F5E3-3066-6F03-41AED46A4190}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:46:16');
INSERT INTO `il_user_log` VALUES ('{51F73C04-40FE-7B0F-2746-A1643C10684C}', '业务管理', '建筑管理', '建筑列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:36');
INSERT INTO `il_user_log` VALUES ('{5275CFB9-FBD3-BC29-007F-2D707DEA1675}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:38:09');
INSERT INTO `il_user_log` VALUES ('{52E40D91-A28C-5C0F-A267-7798F41A2532}', '业务管理', '现场终端管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:26');
INSERT INTO `il_user_log` VALUES ('{53D2063D-A103-04E1-DA8A-477FA4628D8D}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:04:24');
INSERT INTO `il_user_log` VALUES ('{53E945E9-1F5C-D51A-BE7E-F082A083B566}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 18:21:20');
INSERT INTO `il_user_log` VALUES ('{5677445A-D4DB-F316-3803-41618CEAF814}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:18');
INSERT INTO `il_user_log` VALUES ('{56B75E70-0C62-9F2E-2BFC-7A84030A689F}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:45:20');
INSERT INTO `il_user_log` VALUES ('{572FC329-158E-3E40-DF4E-F63F6FE53CAD}', '业务管理', '单位管理', '修改子单位', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:02');
INSERT INTO `il_user_log` VALUES ('{57DC0AFE-D848-C224-3884-1C94642014D9}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:25');
INSERT INTO `il_user_log` VALUES ('{5815EC50-C5A7-BFB6-B53E-2154E256B45C}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:30');
INSERT INTO `il_user_log` VALUES ('{58E2FC2B-25A1-4C0A-7176-4FC1A6F1B32D}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:09:36');
INSERT INTO `il_user_log` VALUES ('{5979C047-82D6-FA15-37C5-353BAECC3E32}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:53');
INSERT INTO `il_user_log` VALUES ('{5AA92CEA-C8B7-9DFA-4ED1-882F589CB187}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:04:19');
INSERT INTO `il_user_log` VALUES ('{5AF0058E-FC7F-E539-CCA0-636787751B40}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:46:23');
INSERT INTO `il_user_log` VALUES ('{5B0CA713-AF37-CFE8-2FA0-50D6470094D1}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:46:18');
INSERT INTO `il_user_log` VALUES ('{5B10B113-960E-D438-98B1-E2AB5666BF10}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:22');
INSERT INTO `il_user_log` VALUES ('{5BE74B9F-CD4C-7A17-6C2A-11CFBFCA5324}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:20');
INSERT INTO `il_user_log` VALUES ('{5BEB7291-61EC-EB01-B212-550B1BF3FA06}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 18:35:00');
INSERT INTO `il_user_log` VALUES ('{5C111014-1889-0709-A1E7-CE7F0C5B169F}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:05:23');
INSERT INTO `il_user_log` VALUES ('{5D5AE130-AE62-2D97-6EE5-DA249A9D7CA1}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:00');
INSERT INTO `il_user_log` VALUES ('{5DC78A3C-B56A-00C7-D1AE-EFDACB33C010}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:32');
INSERT INTO `il_user_log` VALUES ('{5E237A4A-66B3-909F-5E7F-2D45F5B7E936}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:56:49');
INSERT INTO `il_user_log` VALUES ('{5E745ECC-B0E2-6CBE-0F0B-FE73B5945048}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 20:03:18');
INSERT INTO `il_user_log` VALUES ('{5E801988-BB92-2041-A275-E87C588B5F46}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:08:01');
INSERT INTO `il_user_log` VALUES ('{5F60DA18-A8D8-E9F2-41DD-459F8930AE57}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:51');
INSERT INTO `il_user_log` VALUES ('{61CF4514-D49B-A777-BFCD-4BD559187F1B}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:31');
INSERT INTO `il_user_log` VALUES ('{633AD946-ECE4-2EE1-6646-065C33E40110}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:48');
INSERT INTO `il_user_log` VALUES ('{633F3134-1873-E2BF-E32C-EB2ABABEEDD5}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 17:59:44');
INSERT INTO `il_user_log` VALUES ('{63571824-C082-5FBC-90BC-B3628D8053B5}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:32');
INSERT INTO `il_user_log` VALUES ('{656B6631-5792-1EAC-E1F1-B6D14F71BFED}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:50');
INSERT INTO `il_user_log` VALUES ('{65AF12C3-0887-1948-705D-340E9463E3C5}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:23:37');
INSERT INTO `il_user_log` VALUES ('{663A9AA2-A239-CC95-8179-2311977860FB}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:26:01');
INSERT INTO `il_user_log` VALUES ('{6729BDAF-2F71-6A04-C0B1-9CE45B1F81F7}', '业务管理', '单位管理', '添加子单位', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:01:38');
INSERT INTO `il_user_log` VALUES ('{691E87CE-37CD-938D-BFC2-467C58A7A688}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:37:33');
INSERT INTO `il_user_log` VALUES ('{69927FD7-43CD-2DEF-BD6B-45B3BF386CCD}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:34');
INSERT INTO `il_user_log` VALUES ('{69F7128B-D2E2-0A5B-8ED2-442DD6EFFF8C}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:13:58');
INSERT INTO `il_user_log` VALUES ('{6A1733BB-68BC-FAB2-3A2E-FE8AB2C4CD5F}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:33:00');
INSERT INTO `il_user_log` VALUES ('{6A8C0AEA-EEEB-060B-FAE0-215CBF45F6F6}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:07:58');
INSERT INTO `il_user_log` VALUES ('{6AC30FFE-5BD5-656A-E2BD-9C217B3081D7}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd02', '3', '0.0.0.0', '2017-09-04 18:44:39');
INSERT INTO `il_user_log` VALUES ('{6BB87F84-F13F-30F7-B992-F5FC09CA9E89}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:17');
INSERT INTO `il_user_log` VALUES ('{6BCD432E-F864-3039-FB82-3C513499E31A}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:30');
INSERT INTO `il_user_log` VALUES ('{6C6D013B-C21B-6C96-FC8C-048224A69B01}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:41');
INSERT INTO `il_user_log` VALUES ('{6D1D3C35-367E-4044-5AA0-CAC349DCA9FD}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:38:55');
INSERT INTO `il_user_log` VALUES ('{6D5F4851-C1FA-B245-D9D7-81A5100851BA}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:38:51');
INSERT INTO `il_user_log` VALUES ('{6E03BFF0-4FC9-3D42-A162-DEE0848EB83A}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:23');
INSERT INTO `il_user_log` VALUES ('{6F075512-80CC-2D59-6CB0-3D9C24AB345F}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:04:04');
INSERT INTO `il_user_log` VALUES ('{6F3EF0AB-9047-5C34-7015-11D020EFC810}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:10:14');
INSERT INTO `il_user_log` VALUES ('{6F8B72DB-67F3-6B18-DD6E-C39917384D22}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:12:55');
INSERT INTO `il_user_log` VALUES ('{70326BBA-8157-2019-987C-600DE84D3E98}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:34');
INSERT INTO `il_user_log` VALUES ('{7041807C-9371-7DD1-5385-FCC363D0F93C}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:22:43');
INSERT INTO `il_user_log` VALUES ('{707AF956-5469-39EF-1F63-EE92AD32F3A5}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:09');
INSERT INTO `il_user_log` VALUES ('{707EAC73-AD73-81CB-0086-438DF8284FF4}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:04:22');
INSERT INTO `il_user_log` VALUES ('{726AE7AD-F51E-3E66-F0E6-499BC163C5F2}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:36:50');
INSERT INTO `il_user_log` VALUES ('{72720B10-0208-B8A9-8FD6-6DA7294C404E}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:46');
INSERT INTO `il_user_log` VALUES ('{732F7572-6995-A081-9A7C-C295D5559311}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:42');
INSERT INTO `il_user_log` VALUES ('{73F4C242-41C7-2470-470B-9C45E0873AAC}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:43');
INSERT INTO `il_user_log` VALUES ('{73F80D4C-E01B-056D-6F90-04BC564CF9C8}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:38');
INSERT INTO `il_user_log` VALUES ('{74B0C003-BC4A-0B9F-5924-7AED730495CC}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:40:26');
INSERT INTO `il_user_log` VALUES ('{74EC282F-CA6E-C97C-2A4E-48820F3BC1F3}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:04:11');
INSERT INTO `il_user_log` VALUES ('{75116476-4A66-4CAB-DDFE-5604DB687167}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:34');
INSERT INTO `il_user_log` VALUES ('{75B2EC62-A46D-323F-7E57-E6A02A67F03A}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:44:46');
INSERT INTO `il_user_log` VALUES ('{75EA9444-78D7-CF0C-ABAD-967C3DE42870}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:04:10');
INSERT INTO `il_user_log` VALUES ('{76C1BF54-0E13-8A3A-D408-0AE0B2DAFC58}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:49');
INSERT INTO `il_user_log` VALUES ('{77ED8A27-0915-9E06-61B6-A5D9AA0D4949}', '系统管理', '用户管理', '修改密码', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:51');
INSERT INTO `il_user_log` VALUES ('{7832345F-F82D-366F-B297-93D2B07A3CD9}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:44');
INSERT INTO `il_user_log` VALUES ('{7966B185-DE92-5BB0-0ED0-2FDB2E6A47EC}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:35:39');
INSERT INTO `il_user_log` VALUES ('{7A363E79-A47F-907A-5B58-6CC4F3854B15}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:38:25');
INSERT INTO `il_user_log` VALUES ('{7A855CE6-06EC-7F33-7557-83F7D0CC5D24}', '业务管理', '事件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:52:46');
INSERT INTO `il_user_log` VALUES ('{7A909426-80F4-B0DF-6410-F8724FD50167}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:16:20');
INSERT INTO `il_user_log` VALUES ('{7B610E2B-8854-D958-2DC2-A26122CAC424}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:23:45');
INSERT INTO `il_user_log` VALUES ('{7C5C98F4-B794-7580-462F-8AE50303BA16}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:39:11');
INSERT INTO `il_user_log` VALUES ('{7EEB8F4F-E335-817B-47ED-64F912A17AB5}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:03:38');
INSERT INTO `il_user_log` VALUES ('{7FC291BD-3181-B1E1-3C29-A8C54C126F8D}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:47:43');
INSERT INTO `il_user_log` VALUES ('{80D5223E-F691-E822-F1BD-B3C4DA5EB96E}', '业务管理', '现场终端管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:55');
INSERT INTO `il_user_log` VALUES ('{81210144-C211-AB15-7F78-1F5826355170}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:04:13');
INSERT INTO `il_user_log` VALUES ('{82E1242C-B252-AC66-6FD0-4A4DF4A0B636}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:38:05');
INSERT INTO `il_user_log` VALUES ('{83367C4F-4EDD-1998-0FBB-425AF0BCAE06}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:34');
INSERT INTO `il_user_log` VALUES ('{8350285C-49F8-EFBB-B904-0FF140F57209}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:49');
INSERT INTO `il_user_log` VALUES ('{83B822D2-B6A8-CD21-269F-766627F91C0A}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:28');
INSERT INTO `il_user_log` VALUES ('{83C5CCA3-9F05-00F0-0808-CA6FDC3A9453}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:55:05');
INSERT INTO `il_user_log` VALUES ('{83C7DD98-5D2D-AB1D-6688-C45A71CFF6F7}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:36');
INSERT INTO `il_user_log` VALUES ('{84894689-D547-BE93-B1E9-B576C3FA7CCB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:03:40');
INSERT INTO `il_user_log` VALUES ('{84A55517-0C7E-041E-26CC-3FF14914258D}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:11');
INSERT INTO `il_user_log` VALUES ('{84D40FF2-F685-B769-CFF4-DFEB3B0EDFEA}', '系统管理', '用户日志', '清空', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-06 19:26:25');
INSERT INTO `il_user_log` VALUES ('{850F7022-D43E-31B3-F5BA-FF780234AE7A}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:46');
INSERT INTO `il_user_log` VALUES ('{87E80DA5-E236-E51D-3848-9329AC4787E7}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:21:24');
INSERT INTO `il_user_log` VALUES ('{882D1237-CD9F-44EC-C354-DC818A18D4C1}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:50');
INSERT INTO `il_user_log` VALUES ('{884B0615-2CB5-9679-1EFF-D5764A6BA36F}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:17:42');
INSERT INTO `il_user_log` VALUES ('{889D72F6-2050-5372-27E0-76FFC1F608C6}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:27');
INSERT INTO `il_user_log` VALUES ('{899B4C60-22CD-BA86-95FE-6F28C72322AC}', '业务管理', '组管理', '组列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:52');
INSERT INTO `il_user_log` VALUES ('{8A00CC36-F8F0-01E8-5B53-1035F62A7354}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:06');
INSERT INTO `il_user_log` VALUES ('{8A3213F3-54DE-9873-447D-DF49F5D82CF7}', '业务管理', '单位管理', '修改子单位', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:44');
INSERT INTO `il_user_log` VALUES ('{8A6FF714-9327-D6EC-6073-A0A37B78E033}', '业务管理', '单位管理', '修改子单位', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:48');
INSERT INTO `il_user_log` VALUES ('{8BC99A5D-B9E2-69B1-610D-D3CEB82C53C8}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:35');
INSERT INTO `il_user_log` VALUES ('{8C8DD4B9-D683-83E5-0606-EAAB7FF488EC}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:26');
INSERT INTO `il_user_log` VALUES ('{8CC1C6EA-AAB9-DCA4-4833-014214E82B5E}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:22');
INSERT INTO `il_user_log` VALUES ('{8CE76C36-847F-9E9B-1691-66172B5E1168}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:39');
INSERT INTO `il_user_log` VALUES ('{8D44DE06-9324-7AC4-1A10-1A681267F49D}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:19:15');
INSERT INTO `il_user_log` VALUES ('{8EA7E0BD-22F6-813C-E001-91841D618964}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:58');
INSERT INTO `il_user_log` VALUES ('{8F0F2B21-4130-445F-BCAD-D4FC0D9F5A26}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:32');
INSERT INTO `il_user_log` VALUES ('{8F14B884-0348-6B31-1418-84A0446D7F93}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:21');
INSERT INTO `il_user_log` VALUES ('{8F55E413-9C81-F0F6-7010-3C811930CE46}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:56');
INSERT INTO `il_user_log` VALUES ('{8FE21C73-932C-2D90-946C-F35AFB8AA3BA}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:07:47');
INSERT INTO `il_user_log` VALUES ('{90ADAFA2-B151-440A-766F-61942A7F77D1}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:00');
INSERT INTO `il_user_log` VALUES ('{91160292-89F7-8D10-0C97-E3D49D9C8A13}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:41:01');
INSERT INTO `il_user_log` VALUES ('{91CED16A-9BAB-7365-C10E-EC2C3B628BD3}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:56');
INSERT INTO `il_user_log` VALUES ('{9312D99C-5462-4685-F76E-92AB3338D56A}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:59');
INSERT INTO `il_user_log` VALUES ('{9408D43A-DD04-C7F4-510D-7C45460B9761}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:04:05');
INSERT INTO `il_user_log` VALUES ('{9498C31A-0906-FAD3-265A-FBDDD7AFFAE4}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:10:11');
INSERT INTO `il_user_log` VALUES ('{94B84869-4F06-6826-E885-610A5799C8BF}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:47');
INSERT INTO `il_user_log` VALUES ('{94C3E460-E6C6-6D4D-E875-8970F999F822}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:36');
INSERT INTO `il_user_log` VALUES ('{9519DFCE-5E97-8784-597B-C6A384A2564D}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:35:15');
INSERT INTO `il_user_log` VALUES ('{952AC395-10F4-4012-9BF4-1FDF691D3A67}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:07:56');
INSERT INTO `il_user_log` VALUES ('{9577C420-29F3-97C6-9073-AD1823BD71DE}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 19:43:50');
INSERT INTO `il_user_log` VALUES ('{95DF8D73-7ADA-22C7-EE33-07B197F09FA6}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:38:58');
INSERT INTO `il_user_log` VALUES ('{9765D47C-7DED-C71E-ABDC-3FDC98A2E96C}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:37:30');
INSERT INTO `il_user_log` VALUES ('{9879100F-D48F-0622-2226-E8118DC92569}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:37:24');
INSERT INTO `il_user_log` VALUES ('{9968C3A5-472E-02E0-B30C-1AF888BE8F9D}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:09:44');
INSERT INTO `il_user_log` VALUES ('{998756FE-F961-77EC-3419-AC3BBF6F19EB}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:59');
INSERT INTO `il_user_log` VALUES ('{9B3CCB4D-C9B4-0C78-DCFE-1D863CE1EB66}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:07:41');
INSERT INTO `il_user_log` VALUES ('{9BB6DE42-F9B8-F8A7-1406-22C3BA1DCA82}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:35:05');
INSERT INTO `il_user_log` VALUES ('{9CB659F9-598A-215F-1894-E2099A0F7855}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:23');
INSERT INTO `il_user_log` VALUES ('{9CD75F4B-4A1A-2EA2-5F9A-D627D67AC79F}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:39:18');
INSERT INTO `il_user_log` VALUES ('{9CE984F2-3941-747B-A4A1-E489530DDD5A}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:21');
INSERT INTO `il_user_log` VALUES ('{9DA4CEA4-1CBF-117C-FAC7-36A98D5A2986}', '业务管理', '组管理', '添加组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:09:43');
INSERT INTO `il_user_log` VALUES ('{9DA96BB6-967F-932E-FB11-8D8B33A01E74}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:32:57');
INSERT INTO `il_user_log` VALUES ('{9DEA93B9-A203-5D22-9999-C19047907B83}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:45');
INSERT INTO `il_user_log` VALUES ('{9E66A30A-4559-0AE2-B977-87DA61472A6D}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:38');
INSERT INTO `il_user_log` VALUES ('{9E67003A-7813-AC78-B889-E266929ACA4C}', '业务管理', '楼层管理', '楼层列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:37');
INSERT INTO `il_user_log` VALUES ('{9F2B9B9D-1252-F2E6-CD8F-EAE1D36EF797}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:18:54');
INSERT INTO `il_user_log` VALUES ('{A135360F-E0C9-5623-8400-ACA44C1052D4}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:47');
INSERT INTO `il_user_log` VALUES ('{A167BDED-6209-AB0B-EB65-29F1245E0991}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:24');
INSERT INTO `il_user_log` VALUES ('{A1AA6ECC-C511-BBB3-564B-057116D7638F}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:01');
INSERT INTO `il_user_log` VALUES ('{A3069DE0-ED08-5831-C170-EE01836F6D80}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:35:06');
INSERT INTO `il_user_log` VALUES ('{A336AE8B-D137-818C-3E48-E86CC3D2D60D}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:10:12');
INSERT INTO `il_user_log` VALUES ('{A39BF133-5FC6-B480-2C28-7393DEF6FE07}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:40');
INSERT INTO `il_user_log` VALUES ('{A4CEFEE3-D62A-8E91-7A2D-73917122B801}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:32:45');
INSERT INTO `il_user_log` VALUES ('{A592F27D-E78F-FEAD-2B1D-C05E526542CD}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:06');
INSERT INTO `il_user_log` VALUES ('{A5D0DC0F-1A0F-6401-CD29-ED6E83F1A562}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:35:50');
INSERT INTO `il_user_log` VALUES ('{A60524C7-8074-DAAD-FC49-02F3FD1DEA85}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:30');
INSERT INTO `il_user_log` VALUES ('{A6D4D369-8786-893B-5B85-BFF02D072677}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:08:02');
INSERT INTO `il_user_log` VALUES ('{A6F1EFCA-A237-10E4-7D2D-E5CDF2BE4FFB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:51');
INSERT INTO `il_user_log` VALUES ('{A78919E9-3239-DE7A-8B83-B13B701CFA90}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:54:58');
INSERT INTO `il_user_log` VALUES ('{A8EAFE3D-CC90-CC8B-1985-ADE7C3AC56B3}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:40:50');
INSERT INTO `il_user_log` VALUES ('{A9C08FF7-28E0-8634-650D-3594DF9FA2E7}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 18:34:48');
INSERT INTO `il_user_log` VALUES ('{A9DB00D1-2D47-1570-FCCE-9B2BE4FC807F}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:40:24');
INSERT INTO `il_user_log` VALUES ('{A9EF133E-E3E1-3313-B790-99715642E2BA}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:54:45');
INSERT INTO `il_user_log` VALUES ('{AC124963-EAEB-D67F-193C-C94F968941B4}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:43:57');
INSERT INTO `il_user_log` VALUES ('{AC44405A-DF06-406D-9782-DDE765DEE595}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:42');
INSERT INTO `il_user_log` VALUES ('{ACBF2E15-4311-3348-4DA5-F81610E2BB2D}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:46');
INSERT INTO `il_user_log` VALUES ('{AD027AB5-A729-C6B6-7819-F9FF89F834DB}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:07:53');
INSERT INTO `il_user_log` VALUES ('{AD57EFE6-01D9-5FD7-621E-B10D5F6D8173}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:51:56');
INSERT INTO `il_user_log` VALUES ('{AD75688B-F751-565A-5CB9-7D731A55E570}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:22');
INSERT INTO `il_user_log` VALUES ('{AD9D163A-0C96-1C0C-AF4C-27167D5D2562}', '系统管理', '用户管理', '修改密码', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:42:05');
INSERT INTO `il_user_log` VALUES ('{ADAE6A52-2C8C-61B8-1A36-BC69EFBF3E8A}', '业务管理', '单位管理', '修改子单位', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:41');
INSERT INTO `il_user_log` VALUES ('{AE007AC5-4180-37C3-AD22-AD3F3C5B5471}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:15:26');
INSERT INTO `il_user_log` VALUES ('{AE0A6D45-01BC-46A1-81F7-BB6E4BD66D99}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:47');
INSERT INTO `il_user_log` VALUES ('{AE5C8ED3-71DC-A7A2-976D-1D4851E63BDB}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:45');
INSERT INTO `il_user_log` VALUES ('{AFF021CC-A985-F4E5-4A26-32875337F266}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:26');
INSERT INTO `il_user_log` VALUES ('{AFF63C01-3870-D423-26F0-907839080BA8}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:02');
INSERT INTO `il_user_log` VALUES ('{B113E584-2D3D-E98E-C8A3-28128FDA9302}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:31');
INSERT INTO `il_user_log` VALUES ('{B22BA85D-828F-557D-71CD-6F64E9C6681C}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:32:15');
INSERT INTO `il_user_log` VALUES ('{B2DEC648-661F-16F6-92E7-E17EF2245061}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:27');
INSERT INTO `il_user_log` VALUES ('{B32B7436-887A-C7B9-8275-CE702E196294}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:32:20');
INSERT INTO `il_user_log` VALUES ('{B4101087-7DAC-F30C-9065-1E280E4EDBC3}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:50');
INSERT INTO `il_user_log` VALUES ('{B4136084-1301-4D9F-EB3A-B3C8EAE12EFC}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:54');
INSERT INTO `il_user_log` VALUES ('{B427287B-15FC-6B20-DA3D-6E23E08D39C9}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:04:17');
INSERT INTO `il_user_log` VALUES ('{B496938B-5C26-412E-FE4E-40F84373A8A3}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:41:38');
INSERT INTO `il_user_log` VALUES ('{B4CF4E26-75E2-C3E9-2B80-2A39F576C923}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:10:17');
INSERT INTO `il_user_log` VALUES ('{B649DB8D-6998-7370-0AA0-DFEC8FD93CC2}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:51:47');
INSERT INTO `il_user_log` VALUES ('{B64B2CF2-8688-070C-2DA1-064669784895}', '业务管理', '组管理', '添加组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:18:50');
INSERT INTO `il_user_log` VALUES ('{B7B90378-4157-FCA4-54A4-310CB9165C55}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:28');
INSERT INTO `il_user_log` VALUES ('{B7EC3303-A17B-177D-5203-F048B4A38B63}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:39:23');
INSERT INTO `il_user_log` VALUES ('{B8EDE887-E462-AFD3-55D7-348528BB70F1}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:05');
INSERT INTO `il_user_log` VALUES ('{B915E31C-C894-B2BA-F4C8-A15F43274DB7}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:08:01');
INSERT INTO `il_user_log` VALUES ('{B99E1A62-D653-CB91-429D-3492A8A98719}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:32:21');
INSERT INTO `il_user_log` VALUES ('{BA2C9231-756E-08EC-69DB-40EF9F10A2C8}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:57:07');
INSERT INTO `il_user_log` VALUES ('{BA4FF765-CF36-BC0A-B230-9EDF69A3E282}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:51');
INSERT INTO `il_user_log` VALUES ('{BAF8C58C-FD7F-66DD-65C5-969DF6C6EC9A}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 18:39:33');
INSERT INTO `il_user_log` VALUES ('{BB3CBAE1-A52F-E7B4-27B6-2B81A42B52A2}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:06:55');
INSERT INTO `il_user_log` VALUES ('{BC29B046-A29B-4EB7-4FCF-0DB20DC9CB39}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:44');
INSERT INTO `il_user_log` VALUES ('{BCEDA83F-6D36-94C6-0B9F-EB73BDD0F73B}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:06');
INSERT INTO `il_user_log` VALUES ('{BCEE3C06-7336-E75F-6204-2635E8797B69}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:27:09');
INSERT INTO `il_user_log` VALUES ('{BD794630-4866-C80A-8F67-D0F5D0CEDCEF}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:48');
INSERT INTO `il_user_log` VALUES ('{BDD03296-2907-D99E-F485-60F4A55C9192}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:35');
INSERT INTO `il_user_log` VALUES ('{BE02DA0C-130A-3BC4-0331-FFED729709F0}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:39:31');
INSERT INTO `il_user_log` VALUES ('{BEACAF84-6C5C-2942-3B3E-53F467F04007}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:35');
INSERT INTO `il_user_log` VALUES ('{BF1627E7-1B79-844E-A8A9-A6EED0B70BFA}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:29:11');
INSERT INTO `il_user_log` VALUES ('{BF25D3A6-471C-BB0C-2105-CDFE4B62CA1C}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:55:17');
INSERT INTO `il_user_log` VALUES ('{C0B32F67-8E4B-8A47-BE0F-15B30416F4FB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:57:45');
INSERT INTO `il_user_log` VALUES ('{C1254B4A-EBFC-EE7C-7FB3-720919FCA799}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:12:13');
INSERT INTO `il_user_log` VALUES ('{C1E7CC5C-6BD1-A155-B2BE-E3C9DD0A448C}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:51:34');
INSERT INTO `il_user_log` VALUES ('{C21C361D-51CF-48B3-C905-C97ACEE412F1}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:48');
INSERT INTO `il_user_log` VALUES ('{C2923471-5A54-EFD8-A6B5-41CBA55A544A}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:46');
INSERT INTO `il_user_log` VALUES ('{C30062D5-D708-70E8-BEDF-805153894230}', '系统管理', '用户管理', '修改密码', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:46');
INSERT INTO `il_user_log` VALUES ('{C30992D3-10E2-A274-4295-A3DE7D0DD5A6}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:40');
INSERT INTO `il_user_log` VALUES ('{C3D3853B-FF77-D6FD-551E-3DAABF9F54AF}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:37:54');
INSERT INTO `il_user_log` VALUES ('{C5353FA2-6BBA-1179-7B38-7A16F038C23F}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:57:43');
INSERT INTO `il_user_log` VALUES ('{C588FB34-FBC4-304A-AAF4-9CF90A50E6C1}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:51:25');
INSERT INTO `il_user_log` VALUES ('{C58EE91E-6002-E6CA-5FA0-92FB4372CF5B}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:40:57');
INSERT INTO `il_user_log` VALUES ('{C77C7F19-CEB2-C603-86DE-C2ED091E8FA8}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:45');
INSERT INTO `il_user_log` VALUES ('{C78AB018-1DA6-7585-878D-E7AFC65C03F7}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:41:23');
INSERT INTO `il_user_log` VALUES ('{C7FE381C-294B-5683-BB71-CB3100D27FD5}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:40');
INSERT INTO `il_user_log` VALUES ('{C9006EB4-D610-0A78-AB85-1E1CC4C1514C}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:52:56');
INSERT INTO `il_user_log` VALUES ('{C9011201-1248-D02F-396F-F67F3AEA7CCC}', '业务管理', '现场终端管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:29');
INSERT INTO `il_user_log` VALUES ('{C9646645-F964-86E6-F07F-47D6C151EFB3}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:29');
INSERT INTO `il_user_log` VALUES ('{C9855B00-A675-491E-E13D-C91795D53DDC}', '业务管理', '人员管理', '人员列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-06 16:58:24');
INSERT INTO `il_user_log` VALUES ('{CAC7C96F-5598-8277-04A1-671587C95B1E}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:03:54');
INSERT INTO `il_user_log` VALUES ('{CB06798B-CE98-867E-BD1A-AB80C75115EB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:43:31');
INSERT INTO `il_user_log` VALUES ('{CB51F088-C6CB-DE89-EA81-0F713563BD0F}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:27:49');
INSERT INTO `il_user_log` VALUES ('{CCC94DE7-BA1E-4F29-E0A2-30498F38B76F}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:32');
INSERT INTO `il_user_log` VALUES ('{CE4BC4CC-F433-0789-5482-F4F8D3D1D6E6}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:31');
INSERT INTO `il_user_log` VALUES ('{CEC04FA2-C972-A089-6AF4-79D04C5F3814}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-06 19:26:29');
INSERT INTO `il_user_log` VALUES ('{CEC2B332-FFF2-2F21-1D35-8C7A05CBED53}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:33');
INSERT INTO `il_user_log` VALUES ('{CEE854E1-F0A2-12F4-BE00-610763B79169}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:13:50');
INSERT INTO `il_user_log` VALUES ('{CFD03FD8-E499-F5FF-6947-0B9FB1E5EDD6}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:19:45');
INSERT INTO `il_user_log` VALUES ('{D158609C-D532-276C-460C-E4B2F12125E0}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:23');
INSERT INTO `il_user_log` VALUES ('{D2456BFA-E879-23F6-F606-42591CADC572}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:41:43');
INSERT INTO `il_user_log` VALUES ('{D361B5FE-C2E9-A317-30C1-E9D69ACE3CFC}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:13:52');
INSERT INTO `il_user_log` VALUES ('{D3FFA180-2C0B-24BB-C811-1B540D2E0E73}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 20:03:16');
INSERT INTO `il_user_log` VALUES ('{D50A343E-0DAF-5548-2BDF-C738FAD08176}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:38:45');
INSERT INTO `il_user_log` VALUES ('{D7BE607A-109A-9874-9288-1190D6427931}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:12:16');
INSERT INTO `il_user_log` VALUES ('{D8CC16C4-C8E8-C639-566D-778FA5B5B8F2}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:07');
INSERT INTO `il_user_log` VALUES ('{D8E0A6A7-98BE-3538-556A-6E77A5AE2C2E}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:44:45');
INSERT INTO `il_user_log` VALUES ('{DB7D80D2-3733-102C-DD73-09339743588E}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:09:57');
INSERT INTO `il_user_log` VALUES ('{DC7C27BC-338E-DD73-05D6-60A9C4F47617}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:28');
INSERT INTO `il_user_log` VALUES ('{DD725C57-2F03-E115-F483-C0AFC26C27B9}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:35:29');
INSERT INTO `il_user_log` VALUES ('{DD847474-02E5-AB91-7B6C-C65F996EB033}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:34');
INSERT INTO `il_user_log` VALUES ('{DD96D4D1-9DA4-8DF5-04BB-A374076DAEBB}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:05:00');
INSERT INTO `il_user_log` VALUES ('{DDE3553B-3BAD-0858-0B50-D4DAC3706F7D}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:39');
INSERT INTO `il_user_log` VALUES ('{DE7EEEE5-84D6-DA16-F219-F516333AEC2C}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:15:39');
INSERT INTO `il_user_log` VALUES ('{E03F5DF2-54F2-B91D-5CE2-84AC09AEED04}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd02', '3', '0.0.0.0', '2017-09-04 18:39:39');
INSERT INTO `il_user_log` VALUES ('{E0B3D8AE-C415-59B3-EFC6-B56E8A5938CB}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:49');
INSERT INTO `il_user_log` VALUES ('{E1032CDF-5A2A-7597-9C29-E85D8B479144}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:15:34');
INSERT INTO `il_user_log` VALUES ('{E200A94A-4F8A-E02C-D7B6-EC6C6E16CE0F}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:31');
INSERT INTO `il_user_log` VALUES ('{E242EE00-0F3F-AD36-4CD1-608ADBD860AD}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:28:40');
INSERT INTO `il_user_log` VALUES ('{E2E8F62C-C3A1-6B2A-699B-619E6946FC3D}', '业务管理', '单位管理', '修改子单位', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:46');
INSERT INTO `il_user_log` VALUES ('{E30A2FFC-E94A-CEF8-6E7B-F7886928A866}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:21:27');
INSERT INTO `il_user_log` VALUES ('{E463664D-556C-F03F-C43F-E8B7666ED729}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:10:17');
INSERT INTO `il_user_log` VALUES ('{E4651FEB-2711-EB26-A8D2-CB419E671DE0}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:01:39');
INSERT INTO `il_user_log` VALUES ('{E4D4507C-BE90-1F8D-8A2A-97D33EC016D3}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:37:48');
INSERT INTO `il_user_log` VALUES ('{E5264598-DF2B-342C-F4E4-D88E89516258}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:55');
INSERT INTO `il_user_log` VALUES ('{E6038235-6014-90B6-B000-F7A771D6493B}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:51:50');
INSERT INTO `il_user_log` VALUES ('{E6D16C5A-D2A4-4329-7210-8FB01603318E}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:13:51');
INSERT INTO `il_user_log` VALUES ('{E751BA85-8C0E-F41B-9535-FEF39656C7E4}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:45');
INSERT INTO `il_user_log` VALUES ('{E765CD5D-9495-63C3-E519-7EF80B23D9DC}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:54');
INSERT INTO `il_user_log` VALUES ('{E952E904-FA2B-B59B-8245-CC3224424EA3}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:33:11');
INSERT INTO `il_user_log` VALUES ('{EA458CB3-B0EC-6666-88DB-E68423256364}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:44:53');
INSERT INTO `il_user_log` VALUES ('{EABB42D1-90D8-8E86-C12A-A5CB48CA15EF}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:50');
INSERT INTO `il_user_log` VALUES ('{EAD32D91-92B0-86EA-F14D-5A1789B4B113}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 18:02:04');
INSERT INTO `il_user_log` VALUES ('{EB87B5F7-8D3A-4E4D-3239-05E6BA31914F}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:46:33');
INSERT INTO `il_user_log` VALUES ('{EBE77712-E649-DBB1-DB2F-FC443FB618F3}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:40');
INSERT INTO `il_user_log` VALUES ('{ECBA5369-8F91-2124-8F07-5D93164164D6}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-08 17:02:02');
INSERT INTO `il_user_log` VALUES ('{EDB3C8B7-A7E0-72E4-B78E-9B639A9D6257}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:44:49');
INSERT INTO `il_user_log` VALUES ('{EE7B4158-70CA-2A5D-8DAE-01CBB0E2F41B}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:43:59');
INSERT INTO `il_user_log` VALUES ('{EE8859EC-BFBA-571C-1AA7-4B2D96C949E8}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:39:17');
INSERT INTO `il_user_log` VALUES ('{EE8BF462-A049-263A-29DD-D7C61D3DDBAE}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:57');
INSERT INTO `il_user_log` VALUES ('{EF9BAF0B-AB8C-2AD8-796D-01863E68DE6E}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:46:22');
INSERT INTO `il_user_log` VALUES ('{EFAD9C0D-802E-1F80-A712-6F77901A048E}', '业务管理', '现场终端管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:30');
INSERT INTO `il_user_log` VALUES ('{EFE5205F-FD51-5A2D-6B12-C37B7B3B508C}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:41:25');
INSERT INTO `il_user_log` VALUES ('{F0CB65D4-93B2-1586-6F99-95855EB2EBE9}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:07');
INSERT INTO `il_user_log` VALUES ('{F102D986-C62A-87C6-832A-E055F2FD4E6A}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:53');
INSERT INTO `il_user_log` VALUES ('{F1707056-B9C6-54D4-2E8A-C702BF097047}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:54:46');
INSERT INTO `il_user_log` VALUES ('{F24262FD-87F0-CC67-B605-51BE125F870A}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:55');
INSERT INTO `il_user_log` VALUES ('{F26A1DE0-52B1-7EBA-E295-C7EF065FB408}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:03');
INSERT INTO `il_user_log` VALUES ('{F29B0653-27F5-D0E8-A0A8-50F03A879AA7}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:35:13');
INSERT INTO `il_user_log` VALUES ('{F2C29C8B-639E-835D-A7A5-E6A25B593355}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:20:19');
INSERT INTO `il_user_log` VALUES ('{F2DEF81C-0127-3B04-8E37-53B9C2D38A56}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:38:05');
INSERT INTO `il_user_log` VALUES ('{F2FC4E89-3BB7-5134-3FB3-45338F755AEE}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:49:05');
INSERT INTO `il_user_log` VALUES ('{F36B3746-87FB-D516-FE32-349CE08F6FAB}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:48');
INSERT INTO `il_user_log` VALUES ('{F43596EC-2009-0203-3655-E551B77EA3BA}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:55:02');
INSERT INTO `il_user_log` VALUES ('{F58CD86B-69FE-4829-7773-297C49B1E320}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:34');
INSERT INTO `il_user_log` VALUES ('{F61A6D61-6BC0-0A6C-D5AF-FC8159306DEA}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:30');
INSERT INTO `il_user_log` VALUES ('{F6498C32-74C4-6D7D-328D-BC25BF43E824}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:40:51');
INSERT INTO `il_user_log` VALUES ('{F6ABBD97-99A2-49A3-157C-5EB0905F8A07}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:52:47');
INSERT INTO `il_user_log` VALUES ('{F6CDAD75-177C-F942-0D53-22AB252EAAF9}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:20:24');
INSERT INTO `il_user_log` VALUES ('{F7269CF9-983A-87F7-8CBF-A463059F5CBF}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-08 17:02:08');
INSERT INTO `il_user_log` VALUES ('{F77C9417-8572-12B8-9551-64BCAB8912F6}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:28');
INSERT INTO `il_user_log` VALUES ('{F7FB9DD5-B0EA-5D4F-EA27-322A8961A6C9}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:04:16');
INSERT INTO `il_user_log` VALUES ('{F87B899F-746D-C51E-E5F5-FF9A55D7111B}', '业务管理', '人员管理', '添加人员', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-06 16:58:22');
INSERT INTO `il_user_log` VALUES ('{F8C5DB6E-A166-F11D-8CE0-A6EE33644DD5}', '业务管理', '人员管理', '人员列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:52');
INSERT INTO `il_user_log` VALUES ('{FBFE0871-D2E0-B9E2-21D6-E650E39D11D8}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:07:59');
INSERT INTO `il_user_log` VALUES ('{FC3455BA-9D69-5FC8-B060-740377369068}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:03:37');
INSERT INTO `il_user_log` VALUES ('{FC713380-98DA-31A3-83E7-B137A5D56B9F}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:03:52');
INSERT INTO `il_user_log` VALUES ('{FC87A181-BFDD-C205-96D9-8F205A730D70}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:41:41');
INSERT INTO `il_user_log` VALUES ('{FCACF8FE-88AE-9AE7-FE6E-AB06D7ECB888}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:58');
INSERT INTO `il_user_log` VALUES ('{FCB0C19F-0E28-0D37-8522-B35F6A676A8A}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:48');
INSERT INTO `il_user_log` VALUES ('{FD14BA91-D411-FE2C-E3BF-2D02391B265C}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:33');
INSERT INTO `il_user_log` VALUES ('{FD251335-0A2D-B786-D874-497267B1FD1A}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:39:30');
INSERT INTO `il_user_log` VALUES ('{FD6BA1FE-2265-F799-09CF-FAAC992BA174}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:14');
INSERT INTO `il_user_log` VALUES ('{FDAEF877-5431-D895-7AC4-25AAB32210BF}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:36:41');
INSERT INTO `il_user_log` VALUES ('{FE264B30-385A-2CC6-C861-5A537B665EA5}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 19:43:37');
INSERT INTO `il_user_log` VALUES ('{FE5DC3E2-9D50-7E49-8E54-FD4D4EF5DECD}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:44');
INSERT INTO `il_user_log` VALUES ('{FE91E1C8-0BF5-A750-FEDF-F4FB3E603EDD}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:28:19');
INSERT INTO `il_user_log` VALUES ('{FF9C0D2B-9AF8-4556-8809-4AFA980FDE74}', '业务管理', '组管理', '组列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-06 16:57:24');
