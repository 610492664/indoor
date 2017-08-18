/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : indoor

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-08-18 20:28:56
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
INSERT INTO `il_building` VALUES ('{BFF5481F-A3DF-F185-927A-83FF572351DB}', '建筑四', '60', '300', 'fasdf', '福华三路100号', '福田中队负责', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');
INSERT INTO `il_building` VALUES ('{6642EB69-0EC0-25FF-29A7-C2842E5AB4A7}', '建筑二', '100', '32767', 'fdsafd', '北四道1号', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');
INSERT INTO `il_building` VALUES ('{AF5DA1D5-D8C6-C0E5-23FD-42EBEB43490D}', '贝特尔大厦', '233', '233', '2132344', '1232324', '231', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');

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
INSERT INTO `il_floor` VALUES ('{5D8C0F12-EF38-9599-9844-42EA6FA27A9D}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '1', '100', 'ffd', 'dfdf', '首层');
INSERT INTO `il_floor` VALUES ('{03D0A25D-B8B6-C391-46D1-04F554F2A256}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '2', '1221', 'fdsdfd', 'dfsdf', '第二层');

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
INSERT INTO `il_group` VALUES ('{7AC502AF-77D0-DB1C-4C1F-938096485164}', '第5组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');

-- ----------------------------
-- Table structure for il_incident
-- ----------------------------
DROP TABLE IF EXISTS `il_incident`;
CREATE TABLE `il_incident` (
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件名称',
  `property` tinyint(1) NOT NULL DEFAULT '1' COMMENT '事件性质：0：实战，1：演习',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '事件类型',
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '事件描述',
  `start_time` int(11) NOT NULL COMMENT '事件开始事件',
  `end_time` int(11) NOT NULL COMMENT '事件结束时间',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位',
  PRIMARY KEY (`inc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_incident
-- ----------------------------
INSERT INTO `il_incident` VALUES ('{48460920-1AA0-BF9A-34DB-2358A2E7A4E4}', '事件一', '0', '1', '突发火灾', '1462594528', '1462612528', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');

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
INSERT INTO `il_inc_bui` VALUES ('{77E2790D-39A1-8B4B-6832-90824CBE90B3}', '{7CFC3BB0-9DB2-471B-6667-99E52C03C169}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}');
INSERT INTO `il_inc_bui` VALUES ('{365566E7-6D16-F3DA-2FA9-19467DCABD74}', '{1A93A653-2C6B-B9BA-74E4-6BEFF3A14355}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}');
INSERT INTO `il_inc_bui` VALUES ('{34EF25FE-F718-3B35-EB0B-0179C6580BB8}', '{F83F6524-0C38-4BAE-C184-A3CB22D6EF45}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}');

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
INSERT INTO `il_local_equipment` VALUES ('{5F92D52A-A7A6-D7F7-73B0-CF969EA7EB68}', '终端7', '2025014400', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
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
INSERT INTO `il_locator` VALUES ('{A73E1147-BC5F-C6AB-55D2-266642AA1C4E}', '套件九', '545345', '1329148800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{40F07D59-23A7-1CB7-E4F3-512239754508}', '套件四', '556546', '1370275200', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{A24AAF1B-AD2D-03D7-B454-274B1FA99A38}', '场', '534254', '2147443200', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_locator` VALUES ('{16CCCA18-3A73-3E5A-BB60-FA8FF6DC876D}', '套件二', '31243', '936806400', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{C3A80AB2-655A-F369-C341-D491D1E6E939}', '套件十', '1234324', '1375200000', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{1A306EC7-3826-5578-0E04-D257EB43CF3C}', '套件三', '54325', '-28800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '3');
INSERT INTO `il_locator` VALUES ('{0B725BAF-7F7D-1ACA-CF37-A586AA79ADEA}', '套件一', '2132', '1399564800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '4');
INSERT INTO `il_locator` VALUES ('{51DD2F10-B205-4B03-4081-AF7EFD9A046A}', '套件五', '124541', '1428076800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');

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
INSERT INTO `il_node` VALUES ('admin/index/index', 'admin/index', '', '0', '1', '1', '1502421923');
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
INSERT INTO `il_organization` VALUES ('{C584937A-6D3B-B762-1029-095D68D54663}', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '子单位一', '一', '科技园高新北四道233号', '0');
INSERT INTO `il_organization` VALUES ('{3033D1DB-3C92-6624-DCDE-0435498BB60D}', null, '深圳市淘米科技有限公司', 'tomee2', '深圳市高新北四道贝特尔大厦三楼', '0');
INSERT INTO `il_organization` VALUES ('{DBF4B774-6081-DF31-5E06-3802A845AFBB}', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '测试3', 'test03', '深圳', '0');
INSERT INTO `il_organization` VALUES ('{91F68BC5-F6A0-327D-6B71-D4E772D524BA}', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '测试单位22', 'test022', '高新北2', '0');
INSERT INTO `il_organization` VALUES ('{68C773AC-5F0C-2037-AC79-F79CA1793BEB}', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '英拿电子', 'inna', '深圳市', '0');
INSERT INTO `il_organization` VALUES ('{09F0ABC0-6314-9B37-3874-D806E525BBE9}', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '测试4', 'test0', '深圳市', '0');

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
  `status` tinyint(1) unsigned NOT NULL COMMENT '0正常，1移除，2故障',
  PRIMARY KEY (`ofac_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_outfire_facility
-- ----------------------------
INSERT INTO `il_outfire_facility` VALUES ('{D2A08936-515C-A10F-CD52-8A9164C70FCD}', '44545', '灭火器', '1', '贝塔尔大厦', '3', '45545', '2015', null, '0');
INSERT INTO `il_outfire_facility` VALUES ('{7E5443E6-4B37-A4C6-C5CF-05AD3F9FF7AF}', '111', '灭火器', '4', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '{5D8C0F12-EF38-9599-9844-42EA6FA27A9D}', '6454', '54544444', null, '0');

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
INSERT INTO `il_person` VALUES ('{0F6AB859-DA46-C1A3-489A-A1B2BABDFBED}', '王文', '0', '1777996800', '', '0', '4656566', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{3FE5F5D6-F9D9-F9F2-18B6-53BCCCACCA1A}', '人员刘', '0', '-28800', '', '0', '95456554', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '2', '3', '-28800', '', '0');
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
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:正常,1:禁用)',
  `rol_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色',
  `create_by` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`use_id`),
  UNIQUE KEY `index_system_user_username` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统用户表';

-- ----------------------------
-- Records of il_user
-- ----------------------------
INSERT INTO `il_user` VALUES ('{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '13888888888', '第二个用户', '3', '1503058810', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', '', '1499341299');
INSERT INTO `il_user` VALUES ('{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@tomee.cn', '13888888888', '超级管理员', '44', '1503058852', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1501144826');
INSERT INTO `il_user` VALUES ('{97AF6DE5-971B-9D4E-F74D-1CFAD366B773}', 'yonghu4', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '1388888888', '21121', '0', '0', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '', '', '1502973720');
INSERT INTO `il_user` VALUES ('{B6E21170-1C5B-1B25-05A7-4CC75EA4FBF5}', 'yonghu', 'e10adc3949ba59abbe56e057f20f883e', '4455@qq.com', '13888888888', '', '0', '0', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1', '', '', '1503040939');
INSERT INTO `il_user` VALUES ('{B71BCD4B-64D3-6543-627D-BB7D6AB24676}', 'yonghu6', 'e10adc3949ba59abbe56e057f20f883e', '5454@qq.com', '13888888888', '', '0', '0', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1', '', '', '1503042024');
INSERT INTO `il_user` VALUES ('{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', 'yonghu2', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '13888888888', '第二个用户', '53', '1502435788', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', '', '1499838728');
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
INSERT INTO `il_user_log` VALUES ('{00D5C7DF-E907-B8EC-5B3D-C50D807C0716}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:49:41');
INSERT INTO `il_user_log` VALUES ('{010A637F-0A4E-2644-1D31-AEB29CBD4C5E}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:37:54');
INSERT INTO `il_user_log` VALUES ('{012FF787-F76C-77D3-D6D2-550D86B6FA84}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:43:41');
INSERT INTO `il_user_log` VALUES ('{0172F4AE-14E5-6FB1-EAA6-F381FBE1D234}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 11:11:43');
INSERT INTO `il_user_log` VALUES ('{01754BAC-EA16-89AB-FFD1-F335A096DBAA}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:17:24');
INSERT INTO `il_user_log` VALUES ('{018BABB3-4BE6-2441-9331-9C9E33948EE4}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:00:28');
INSERT INTO `il_user_log` VALUES ('{01A5BF85-70C6-13AB-F05F-BDC05D7F694D}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:43:42');
INSERT INTO `il_user_log` VALUES ('{01D339EB-E3BF-FFAB-A745-8E389F774DA4}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:41:34');
INSERT INTO `il_user_log` VALUES ('{01F4C7F3-F9EB-DF01-3645-3179B13D7197}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:47:57');
INSERT INTO `il_user_log` VALUES ('{01FA0BB6-8529-456D-43C1-18A45123F6C9}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:03:14');
INSERT INTO `il_user_log` VALUES ('{022883C3-90C3-5556-84F7-899175BCAD35}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:46:43');
INSERT INTO `il_user_log` VALUES ('{024F4975-2854-E5ED-749E-AB337A75B33C}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:59:42');
INSERT INTO `il_user_log` VALUES ('{0273B609-F15C-5724-C51A-44CE1F8976EE}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:13:38');
INSERT INTO `il_user_log` VALUES ('{02744128-9204-DAAD-DD0D-F40F99D082CB}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:49:53');
INSERT INTO `il_user_log` VALUES ('{033DD200-D7E1-118E-7D5F-AE17035BAFA3}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:34:33');
INSERT INTO `il_user_log` VALUES ('{0343B5DB-CAFF-FCAD-0362-E12C98760BE8}', 'system', 'role', 'forbid', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:54:32');
INSERT INTO `il_user_log` VALUES ('{0384AC9C-1002-FCBF-62F9-90B5AC622112}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:41:33');
INSERT INTO `il_user_log` VALUES ('{038DC54C-014D-0606-0691-573C0B387949}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:22:29');
INSERT INTO `il_user_log` VALUES ('{039A07D0-BE63-8146-43BF-2AA662AD215E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:58:40');
INSERT INTO `il_user_log` VALUES ('{044CAD98-FCBE-C4DE-E5EC-B9DBD1DF0BE1}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:58:14');
INSERT INTO `il_user_log` VALUES ('{04746604-9F65-932A-2EEB-35658FB78A11}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:58:42');
INSERT INTO `il_user_log` VALUES ('{049DFE37-F897-4DB4-4CE8-F38F8DF5A922}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:22:37');
INSERT INTO `il_user_log` VALUES ('{04C5C692-2C34-4822-7EF2-38BFC05024C7}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:49:07');
INSERT INTO `il_user_log` VALUES ('{057DCC93-78E1-9318-865A-54B61BB415A4}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:19');
INSERT INTO `il_user_log` VALUES ('{0592F163-337F-1150-B055-604AB7CC20CE}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:34:04');
INSERT INTO `il_user_log` VALUES ('{05E08088-9CDC-4A77-D10F-1E91441FF5F6}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 12:25:13');
INSERT INTO `il_user_log` VALUES ('{0647D784-8014-F66B-E825-64A2F9A2ED40}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:19:34');
INSERT INTO `il_user_log` VALUES ('{06490686-9E52-28D2-67F9-E22DECD5F23D}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:22:24');
INSERT INTO `il_user_log` VALUES ('{068BD140-D754-6203-5FF6-08D262670B75}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:48:17');
INSERT INTO `il_user_log` VALUES ('{0692F017-D820-261C-35AE-062E04457875}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:37:08');
INSERT INTO `il_user_log` VALUES ('{06B6832B-FEF3-6EBC-86B6-35B4C6BEE1FA}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:52:11');
INSERT INTO `il_user_log` VALUES ('{080F2F40-1BFA-94ED-5BF5-D54A9EEA51C8}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:43:34');
INSERT INTO `il_user_log` VALUES ('{083DF3A5-8876-FC19-5BB4-BD3B7F7BD7D4}', 'admin', 'locator', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:09:16');
INSERT INTO `il_user_log` VALUES ('{08550D83-6A84-9170-7DC0-CC2CE48B0036}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:31:57');
INSERT INTO `il_user_log` VALUES ('{08665E63-5020-C15B-546B-65810A842E55}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:55:02');
INSERT INTO `il_user_log` VALUES ('{0868FBA1-C7F2-7A79-C509-2B0613C81EEF}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:32:19');
INSERT INTO `il_user_log` VALUES ('{088DD377-1584-6862-5FAC-7E0A9F8600CC}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:16:42');
INSERT INTO `il_user_log` VALUES ('{08AA9BEA-7D03-EEE7-D2A5-0A31F6F7D0D0}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:52:08');
INSERT INTO `il_user_log` VALUES ('{0932FABD-962D-07EF-ABA6-3412BA48C8A4}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:49:15');
INSERT INTO `il_user_log` VALUES ('{0939BD34-F64A-9380-7F5A-77DA4C4C1D8B}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:31:52');
INSERT INTO `il_user_log` VALUES ('{094B8DFB-5C7C-BB2D-9E89-BDF6FD909417}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:32:26');
INSERT INTO `il_user_log` VALUES ('{09E13854-1053-CADE-DF49-3A84DAA19553}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:49:05');
INSERT INTO `il_user_log` VALUES ('{0A34EC59-D428-F5C6-4F6F-3B4DB473C7EC}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:47:54');
INSERT INTO `il_user_log` VALUES ('{0A7B5D92-1FA0-A37E-23E4-BA0DA3B37915}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:12:01');
INSERT INTO `il_user_log` VALUES ('{0AADC6E7-DFCB-3EB6-6714-C7A77B7C0732}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:05:04');
INSERT INTO `il_user_log` VALUES ('{0ABD24B0-5BDF-1766-CB63-2C943B6A996C}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:48:28');
INSERT INTO `il_user_log` VALUES ('{0AC1E12E-1366-6CCB-E832-AEFD7A31E2DD}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:35:48');
INSERT INTO `il_user_log` VALUES ('{0AEB67C7-AF4C-2AC6-F724-83AB0287FC46}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 16:58:54');
INSERT INTO `il_user_log` VALUES ('{0B0828CC-43FD-0A76-828A-4AB334D9A881}', 'admin', 'index', 'dashboard', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:17:34');
INSERT INTO `il_user_log` VALUES ('{0B104100-967F-7B72-1AE1-4210B63ED87C}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 09:34:57');
INSERT INTO `il_user_log` VALUES ('{0BCF8C93-A1BD-B54E-2FE9-C673192C1A3C}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:26:08');
INSERT INTO `il_user_log` VALUES ('{0BDF6D5B-D772-07EA-F901-56AE469C6158}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:21:42');
INSERT INTO `il_user_log` VALUES ('{0C4568D1-2122-439B-683F-FA8EE72A2918}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:51:07');
INSERT INTO `il_user_log` VALUES ('{0C5DD0FB-2BB5-CB32-930B-9C956238AA15}', 'admin', 'organization', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:41:11');
INSERT INTO `il_user_log` VALUES ('{0C7CD98B-CFE7-8498-7DAA-87107DDDFEC4}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:49:04');
INSERT INTO `il_user_log` VALUES ('{0C87B58B-0F32-E8DD-ED43-6763EA43A657}', 'admin', 'person', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:31:28');
INSERT INTO `il_user_log` VALUES ('{0C89635F-D721-8B6A-04E1-97F27BCD9D08}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:26:46');
INSERT INTO `il_user_log` VALUES ('{0C92BCED-B128-252D-63DF-449B88C5C241}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:59:14');
INSERT INTO `il_user_log` VALUES ('{0CB40D92-43F9-1176-6BD0-95F9E3537A34}', 'system', 'role', 'authsave', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:43:33');
INSERT INTO `il_user_log` VALUES ('{0CCE912B-E34B-077D-63B5-DB1E6C3C6807}', 'admin', 'group', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:27:48');
INSERT INTO `il_user_log` VALUES ('{0D23E01F-57E1-4052-AD43-C2920EA6CD70}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:52:14');
INSERT INTO `il_user_log` VALUES ('{0D305AE4-3939-3B0F-A03B-E2A26194807F}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:52:15');
INSERT INTO `il_user_log` VALUES ('{0DE24373-8FD3-1E0C-1651-E9BF87CCF631}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:16:25');
INSERT INTO `il_user_log` VALUES ('{0DE9CD42-E31D-E4B4-71D2-C54AF8A0F201}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:26:04');
INSERT INTO `il_user_log` VALUES ('{0E1BB769-8EF9-1D53-BEE9-F01F636198B2}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:04:29');
INSERT INTO `il_user_log` VALUES ('{0E2F5279-0F60-E47A-BE9D-056952CB68E9}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:20:16');
INSERT INTO `il_user_log` VALUES ('{0E36A53D-C5D9-72A4-AF12-531CD93AE544}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:44:07');
INSERT INTO `il_user_log` VALUES ('{0E9FD4FC-743E-8202-2B5C-D6951A53D46C}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:51:54');
INSERT INTO `il_user_log` VALUES ('{0EB28D64-DFA2-3884-71F0-5830622FE764}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:18:25');
INSERT INTO `il_user_log` VALUES ('{0EE32CEB-4164-2763-4DE1-BBCA883D97FF}', 'admin', 'organization', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:46:37');
INSERT INTO `il_user_log` VALUES ('{0F291D0D-93BE-3F6E-2932-D90259737299}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:05:14');
INSERT INTO `il_user_log` VALUES ('{0F82BF53-7446-65ED-DF9D-2C372DA7DD7A}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 16:48:40');
INSERT INTO `il_user_log` VALUES ('{0F92F287-1AE6-4BBD-5509-ECE2F8E0AAC5}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:53:58');
INSERT INTO `il_user_log` VALUES ('{0FD1E473-8985-7C28-EAC6-9504167293FD}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:59:20');
INSERT INTO `il_user_log` VALUES ('{107CACC5-7680-2940-562B-7927CAE4AE64}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:23:48');
INSERT INTO `il_user_log` VALUES ('{10BF4D81-C3FC-52F6-DD49-EB5D7F35E221}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:51:21');
INSERT INTO `il_user_log` VALUES ('{10E63D69-2525-4FB2-A0B9-0313A528E93A}', 'admin', 'localequipment', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:58:52');
INSERT INTO `il_user_log` VALUES ('{11187494-7178-F549-71F1-A0C9B1170FBE}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:39:45');
INSERT INTO `il_user_log` VALUES ('{11949266-DC77-8ED4-1EAE-99A66E253D2D}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:11:40');
INSERT INTO `il_user_log` VALUES ('{119E2377-CDBA-C23A-0CD4-5B357EDA6BB6}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:10:49');
INSERT INTO `il_user_log` VALUES ('{11F257C3-0965-4EDA-6F36-A3419E1CF812}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 12:23:00');
INSERT INTO `il_user_log` VALUES ('{121841BC-FFA9-A276-66D4-C431373ABE47}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:48:18');
INSERT INTO `il_user_log` VALUES ('{124A9F2D-AA59-6989-818A-71A9B183D5D7}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:26:58');
INSERT INTO `il_user_log` VALUES ('{12662688-53A6-AEA2-A92A-035C907ECC99}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:16:06');
INSERT INTO `il_user_log` VALUES ('{12E064EE-AB56-FB23-28CB-DDE459D23011}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:36:20');
INSERT INTO `il_user_log` VALUES ('{132CE25D-8ECD-80F6-99A2-0A13B6B271B1}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:19:59');
INSERT INTO `il_user_log` VALUES ('{134C9AF9-BA2C-173F-90F0-680688A14E49}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:21:14');
INSERT INTO `il_user_log` VALUES ('{13BE255F-C285-0D77-B3B5-C14D90401D4A}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:23:13');
INSERT INTO `il_user_log` VALUES ('{13F25FFF-199E-F092-CB52-D04EA12F6CDE}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:32:57');
INSERT INTO `il_user_log` VALUES ('{13F56713-B995-4457-AA56-5D66227FC4BF}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:03:09');
INSERT INTO `il_user_log` VALUES ('{141338BC-70C6-C032-81E7-5D76CD8A1F28}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:19:39');
INSERT INTO `il_user_log` VALUES ('{14275A1E-736F-F113-1696-079E061C8B55}', 'admin', 'locator', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:46:47');
INSERT INTO `il_user_log` VALUES ('{14522C4F-4890-4A6A-1BAB-67FC023FEC16}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:00:48');
INSERT INTO `il_user_log` VALUES ('{14657E05-8613-6208-A435-16D85CBC2454}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:34:09');
INSERT INTO `il_user_log` VALUES ('{1497CE57-B872-1F3F-7FBF-6291CB6BFE6A}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:57:58');
INSERT INTO `il_user_log` VALUES ('{14D0F6DE-4074-BD03-79CE-1B7A854CF87F}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:36:54');
INSERT INTO `il_user_log` VALUES ('{14E53753-64F7-0A1C-7452-7E10C1441C22}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:50:33');
INSERT INTO `il_user_log` VALUES ('{14F337CE-4ED5-7878-F183-3F6794538A77}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:48:18');
INSERT INTO `il_user_log` VALUES ('{15259837-E903-7241-E2D2-68F451E3D57D}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:32:15');
INSERT INTO `il_user_log` VALUES ('{152EFA77-F3F3-628C-0229-D4598C449F79}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 11:12:01');
INSERT INTO `il_user_log` VALUES ('{15727B9C-DBDB-99B5-A3B9-D40967F45F32}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:21:04');
INSERT INTO `il_user_log` VALUES ('{15B8B984-AECE-4B33-AE8F-97850714A4C5}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:48:25');
INSERT INTO `il_user_log` VALUES ('{15C40071-EEF9-EE4E-4656-7658E2F03D5D}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:35');
INSERT INTO `il_user_log` VALUES ('{15F29544-042C-F9A9-730A-C852958CCAE7}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-16 12:24:49');
INSERT INTO `il_user_log` VALUES ('{1630E5CF-FE02-B0BB-B0E6-612388CF061D}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 16:12:53');
INSERT INTO `il_user_log` VALUES ('{1643DEA5-BA03-FF8B-8D73-F9EDE5F57198}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:58:46');
INSERT INTO `il_user_log` VALUES ('{165122AB-E835-3E22-5165-DF02CD3AB6CE}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:37:52');
INSERT INTO `il_user_log` VALUES ('{16593B97-66DA-56A9-6948-BC53E7819D71}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-12 14:15:39');
INSERT INTO `il_user_log` VALUES ('{1663F9E2-85FF-478D-0681-C3EA7C96B075}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:07:25');
INSERT INTO `il_user_log` VALUES ('{16770D36-FD97-86FE-6582-14597DE4EF8C}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:51:26');
INSERT INTO `il_user_log` VALUES ('{16A50D17-DFC3-B07C-C1E5-589F7817CFC5}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:41:19');
INSERT INTO `il_user_log` VALUES ('{17244101-ED4D-759F-2531-F6F4110ACF86}', 'admin', 'locationmark', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:19:29');
INSERT INTO `il_user_log` VALUES ('{1743509D-9042-8A1E-EC26-303802261A7E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:08:20');
INSERT INTO `il_user_log` VALUES ('{175EEC3C-3048-A351-ACB1-F480092B5711}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:49:24');
INSERT INTO `il_user_log` VALUES ('{17B7AC71-BB5A-4AE7-50C0-F9843F2EB89F}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-15 09:34:42');
INSERT INTO `il_user_log` VALUES ('{17FFBE1F-8109-7693-BA79-8C1E07ED6BEE}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:35:22');
INSERT INTO `il_user_log` VALUES ('{18211B9A-2AD7-6D74-6660-6AEF598ABBEC}', 'admin', 'locator', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:21:23');
INSERT INTO `il_user_log` VALUES ('{186378FA-E334-B8C5-A8FE-15F258866DBF}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:57:50');
INSERT INTO `il_user_log` VALUES ('{1884672D-5E9D-C30E-9190-020F6EE48E05}', 'admin', 'outfirefacility', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:50:29');
INSERT INTO `il_user_log` VALUES ('{18AD57F0-8FC2-4CC2-1481-236DF1511D54}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:10:14');
INSERT INTO `il_user_log` VALUES ('{1913D923-4DB6-8AF8-F66E-0801073AF1E8}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:52:00');
INSERT INTO `il_user_log` VALUES ('{1963E565-7BA5-282D-F39E-A2936B3FFFEE}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:34:00');
INSERT INTO `il_user_log` VALUES ('{19A66148-D608-0598-51D1-866572D65F3C}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:15:36');
INSERT INTO `il_user_log` VALUES ('{19DE652F-150A-6699-6B27-B568AD449946}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:12:31');
INSERT INTO `il_user_log` VALUES ('{1A3E103A-1CC9-E943-6B06-85C8E44ED478}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:34:21');
INSERT INTO `il_user_log` VALUES ('{1A91A448-D5A6-5D92-D527-61EEA05220CB}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 16:52:35');
INSERT INTO `il_user_log` VALUES ('{1AC24372-DEE4-CDE8-CBD4-659D1E1D6CE4}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:13:31');
INSERT INTO `il_user_log` VALUES ('{1B5B1003-F6DF-47BC-787C-5C166A10B0CD}', 'system', 'node', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:11:43');
INSERT INTO `il_user_log` VALUES ('{1B7435F2-108C-9C4E-B9A1-EEFAE61C79D6}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:26:37');
INSERT INTO `il_user_log` VALUES ('{1B7C4199-EE40-5128-0F7E-D4032793B63C}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:44:20');
INSERT INTO `il_user_log` VALUES ('{1BBB21D2-6F23-1995-DF4A-A88F46FF59DE}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:50:07');
INSERT INTO `il_user_log` VALUES ('{1BE98763-0069-F0F0-A20F-1540DCC08110}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 19:59:35');
INSERT INTO `il_user_log` VALUES ('{1C09B28C-6634-D6A2-2B47-AA73662B58AA}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:47:40');
INSERT INTO `il_user_log` VALUES ('{1C215D5A-1799-4351-AE6F-1626C0766A89}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:50:42');
INSERT INTO `il_user_log` VALUES ('{1C3B93F0-3EE5-F04B-12CD-394DAF64A3BB}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:34:19');
INSERT INTO `il_user_log` VALUES ('{1C4593F3-4683-63E9-34B0-63A65557A965}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:52:02');
INSERT INTO `il_user_log` VALUES ('{1C72F331-9E19-4D8D-4859-412AC2A87468}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:39:42');
INSERT INTO `il_user_log` VALUES ('{1CA1C584-91C7-DC61-E531-E7EECE4B44BD}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:08:48');
INSERT INTO `il_user_log` VALUES ('{1CA81464-99A9-A1AA-4B91-9928CED6C764}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:58:49');
INSERT INTO `il_user_log` VALUES ('{1CC7DC5B-D7AE-DEFC-B649-F3F403B10249}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:25');
INSERT INTO `il_user_log` VALUES ('{1CDDA15A-980B-3046-42DE-0A18A318D2B7}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:40:20');
INSERT INTO `il_user_log` VALUES ('{1CEF8F2B-914B-6618-54FA-810D4C616A6A}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:30:56');
INSERT INTO `il_user_log` VALUES ('{1D2CDDCE-8E49-CEAF-B96E-89032C0BC1FF}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:49:01');
INSERT INTO `il_user_log` VALUES ('{1D655149-3C90-B844-0410-BADE365EDC20}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:38:38');
INSERT INTO `il_user_log` VALUES ('{1D95E61F-64E3-46EF-E3AC-54BE827CBE24}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:43:41');
INSERT INTO `il_user_log` VALUES ('{1D9850F8-F25E-44BA-D46D-5911F8B239E1}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:48:06');
INSERT INTO `il_user_log` VALUES ('{1DA7A334-A0AE-D9F6-FB51-616DD00854DE}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:16:07');
INSERT INTO `il_user_log` VALUES ('{1DB0AD41-C126-5557-2FBA-5632D03B121B}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:36:36');
INSERT INTO `il_user_log` VALUES ('{1DC6C707-533C-22AE-C975-9F7E8DAFB1F1}', 'system', 'user', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:15:21');
INSERT INTO `il_user_log` VALUES ('{1E1D85C4-6990-1D6C-9064-BE3814826AEA}', 'admin', 'organization', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:50:41');
INSERT INTO `il_user_log` VALUES ('{1E26C049-DBEB-5DBD-D345-22FFC766CE03}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:01:13');
INSERT INTO `il_user_log` VALUES ('{1E2B5B03-B47D-22DB-2220-0E27FEB4BD94}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:37:19');
INSERT INTO `il_user_log` VALUES ('{1E4DEAE6-976A-C5C5-05C9-DA96B44141ED}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:01:37');
INSERT INTO `il_user_log` VALUES ('{1E8D0903-13BD-51D5-5A00-BF825E97A350}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:36:38');
INSERT INTO `il_user_log` VALUES ('{1ECAF85B-E58D-B092-DA51-C2838DBD62A8}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:21:10');
INSERT INTO `il_user_log` VALUES ('{1F050B1E-891A-7582-621F-6601E0305ECA}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:49:41');
INSERT INTO `il_user_log` VALUES ('{1F554C03-2106-9D91-0254-ED29ACE00AD5}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:57:51');
INSERT INTO `il_user_log` VALUES ('{1FA9B49A-D64A-8554-6181-43D26BB90BBF}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:09:58');
INSERT INTO `il_user_log` VALUES ('{1FD02AFF-1EC4-EFBA-2C10-EC7FC2825397}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:03:43');
INSERT INTO `il_user_log` VALUES ('{1FED3AC3-945E-B5EE-2037-9AFEDEBB18A1}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:09:31');
INSERT INTO `il_user_log` VALUES ('{20276166-5B5F-219C-CAEE-67A2A80F6B7A}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:56:05');
INSERT INTO `il_user_log` VALUES ('{2063FB81-FCCE-E4AE-7C3D-AAAE24C9F520}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:38:05');
INSERT INTO `il_user_log` VALUES ('{20829D11-B8AC-601C-77DF-8EF80E3C367D}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:22:16');
INSERT INTO `il_user_log` VALUES ('{208F1125-667D-2089-F746-9088F70BFD46}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:50:33');
INSERT INTO `il_user_log` VALUES ('{20DA5BAF-0A61-FCD0-69BD-6AC6ABBB9E84}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 09:35:04');
INSERT INTO `il_user_log` VALUES ('{20DF71D5-2AC4-DD37-FEEB-25FCAF8C9C96}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:07:43');
INSERT INTO `il_user_log` VALUES ('{20F86E2A-70C2-EECE-5460-D520778909DD}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:49:29');
INSERT INTO `il_user_log` VALUES ('{210EE516-55D1-0C71-8F30-2E622BF04A60}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:53:10');
INSERT INTO `il_user_log` VALUES ('{21340069-ADA3-276A-8CD3-1B99518FD3CE}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:52:38');
INSERT INTO `il_user_log` VALUES ('{213CACD9-8941-9DCB-9884-7ABA0C103FC9}', 'admin', 'groupperson', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:06:49');
INSERT INTO `il_user_log` VALUES ('{21E69204-DC3D-91FF-A6A1-9BDF3224ADCB}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:23:56');
INSERT INTO `il_user_log` VALUES ('{21E81448-9D9F-8D17-2A5E-81E9E8327322}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:04:38');
INSERT INTO `il_user_log` VALUES ('{2246533A-5B3B-9F87-037D-0E95BE829AF9}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:53');
INSERT INTO `il_user_log` VALUES ('{227A83AF-959F-6C6E-3A99-E5A43562F8C7}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:06:05');
INSERT INTO `il_user_log` VALUES ('{227D716D-461F-E5D3-D1D7-0318D8BC0BD1}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:21:50');
INSERT INTO `il_user_log` VALUES ('{2292C2A4-DBD0-40D9-9384-46E7BB71395A}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:39:27');
INSERT INTO `il_user_log` VALUES ('{22A03594-CD5E-4EDF-85F3-78450C8BBA0F}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:03:58');
INSERT INTO `il_user_log` VALUES ('{22C0E446-BFD4-A6C3-C421-FBF777B33BB6}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:41:24');
INSERT INTO `il_user_log` VALUES ('{22F7DED5-F5ED-6576-9522-FCABFCCE6933}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:39');
INSERT INTO `il_user_log` VALUES ('{23469128-C3FB-2216-D70E-5B4267793017}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:50:43');
INSERT INTO `il_user_log` VALUES ('{23559678-9FD7-1812-D7EE-981675D33D4C}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:48:56');
INSERT INTO `il_user_log` VALUES ('{23A309A7-623C-22BE-8FE6-AC82A70CA022}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:36:57');
INSERT INTO `il_user_log` VALUES ('{23B176E2-8332-91DE-6A76-17C5D03C7F83}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:17');
INSERT INTO `il_user_log` VALUES ('{23BD4D87-DF33-9D7A-F242-CB2865348997}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:41:13');
INSERT INTO `il_user_log` VALUES ('{23E3F98D-D8E7-4B97-1196-884870BC605D}', 'admin', 'organization', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:13:10');
INSERT INTO `il_user_log` VALUES ('{23E9CC0A-7712-8EAB-2291-FD42477393C2}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:19');
INSERT INTO `il_user_log` VALUES ('{24103D50-F985-E1A8-BFD7-AB2F9A799F45}', 'admin', 'person', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:54:11');
INSERT INTO `il_user_log` VALUES ('{244B5418-6D79-1363-24F5-58612B57AA65}', 'system', 'userlog', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 16:56:28');
INSERT INTO `il_user_log` VALUES ('{244FCE48-AE6B-2794-CB06-4196A95E452F}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:30:21');
INSERT INTO `il_user_log` VALUES ('{247A6CB8-0664-012D-C981-32E6F3BC911A}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:18:38');
INSERT INTO `il_user_log` VALUES ('{247DB508-DE84-CAAC-AFC0-F8B67CDDAFC7}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:17:41');
INSERT INTO `il_user_log` VALUES ('{24C4890F-EAE8-8095-CB75-A25E24506BDF}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 16:40:19');
INSERT INTO `il_user_log` VALUES ('{24D3BFA4-80E7-B776-C952-B39B4251C7DF}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:00:20');
INSERT INTO `il_user_log` VALUES ('{24DD292B-9E0D-FC9A-84B8-252461F5123A}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:21:56');
INSERT INTO `il_user_log` VALUES ('{24EFFD4B-501E-715B-DDD1-A07E5A7F3A3D}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:53:39');
INSERT INTO `il_user_log` VALUES ('{24F681E6-BA7D-F141-46F4-4E6B97D1E9ED}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:59:52');
INSERT INTO `il_user_log` VALUES ('{25597A84-4F33-D508-DE0C-72B5E478FF6B}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:05:11');
INSERT INTO `il_user_log` VALUES ('{259D5374-1674-FA23-622B-B2DE90D18399}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:58:32');
INSERT INTO `il_user_log` VALUES ('{25A83010-98ED-38F9-CFDE-D009D7E8A30D}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:59:27');
INSERT INTO `il_user_log` VALUES ('{25BB0415-A1B9-E10D-F622-DEDAF82946A7}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:15:07');
INSERT INTO `il_user_log` VALUES ('{25BE9E11-998D-3502-3662-9F284FB56D79}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:47:41');
INSERT INTO `il_user_log` VALUES ('{25D734C2-E7CF-81F8-4645-BF2067D4DB93}', 'system', 'user', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:42:01');
INSERT INTO `il_user_log` VALUES ('{25E1878A-90A6-B848-ABCE-0FE2210FD067}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-08 09:21:42');
INSERT INTO `il_user_log` VALUES ('{25E20F5B-607D-5E04-2067-D0F1DF4414A4}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:42:16');
INSERT INTO `il_user_log` VALUES ('{25FCBD13-4064-E2DC-054B-49A25388D46D}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:51:26');
INSERT INTO `il_user_log` VALUES ('{2695756A-5682-5AE0-F008-8E9B5653C084}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:07:42');
INSERT INTO `il_user_log` VALUES ('{26A05EEA-B995-2F63-D9E9-421B104EEE59}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:10:53');
INSERT INTO `il_user_log` VALUES ('{26C84654-672E-280A-1EB1-16686B0C7A1D}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:32:00');
INSERT INTO `il_user_log` VALUES ('{26C9F5AC-5871-74EB-0CDD-001A1875DA89}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:49:39');
INSERT INTO `il_user_log` VALUES ('{26FFC460-2900-094E-4707-C1892550BD90}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:10:01');
INSERT INTO `il_user_log` VALUES ('{2724A021-7676-36CD-9459-DE7E87E88BC7}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:27:56');
INSERT INTO `il_user_log` VALUES ('{27C12D7D-F216-6DF7-A52D-15D2F179C8D1}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:05:46');
INSERT INTO `il_user_log` VALUES ('{27C82A5B-D08D-2B5C-F45D-8676CA6A04B5}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:45:20');
INSERT INTO `il_user_log` VALUES ('{27D40C1B-3A1A-5166-B6C0-3036A27FB4EF}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:39:35');
INSERT INTO `il_user_log` VALUES ('{27F8E81E-45BF-2E1D-CE4C-9F1D5EEF3E8C}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:47:29');
INSERT INTO `il_user_log` VALUES ('{288C370C-959D-2739-A16B-B20176AB450E}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:07:41');
INSERT INTO `il_user_log` VALUES ('{297B8241-5686-5D40-32AA-D427E837E94F}', 'system', 'role', 'forbid', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:42:12');
INSERT INTO `il_user_log` VALUES ('{297FF7A7-6BE0-0DF2-4404-D7A011434804}', 'admin', 'index', 'dashboard', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:20:13');
INSERT INTO `il_user_log` VALUES ('{298FEF7B-32E1-A4B4-B5B0-866E3117FECF}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:07:42');
INSERT INTO `il_user_log` VALUES ('{29D6C6BA-6BAB-C5C4-C2A7-234503EF8B13}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:31:47');
INSERT INTO `il_user_log` VALUES ('{29E987C8-7020-7E74-383D-70356E92398D}', 'admin', 'localequipment', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:55:51');
INSERT INTO `il_user_log` VALUES ('{2A3C288B-B1DC-B078-C5D2-0ACABDA81DFF}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:48:59');
INSERT INTO `il_user_log` VALUES ('{2A4D4BF3-0CF9-2779-7EFC-ABEB97B0E17D}', 'admin', 'locator', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:47:13');
INSERT INTO `il_user_log` VALUES ('{2A59A303-95BA-8B85-481F-4071E7F5F0B7}', 'admin', 'locator', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:30:20');
INSERT INTO `il_user_log` VALUES ('{2A6949E7-DC48-4FBB-87E0-11A2AE5D1EDE}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:37:52');
INSERT INTO `il_user_log` VALUES ('{2A7F5896-0E99-5B94-E8C7-0AFDE6D62320}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:11:57');
INSERT INTO `il_user_log` VALUES ('{2AD4FA39-4081-2370-59E8-2C06A7D97295}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:56:00');
INSERT INTO `il_user_log` VALUES ('{2B48B60F-745B-30B9-0D1A-2B9F52A6933D}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:26:19');
INSERT INTO `il_user_log` VALUES ('{2B574FD6-106C-3028-1798-524BD1DBBFF7}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:41:36');
INSERT INTO `il_user_log` VALUES ('{2B867307-877E-0FDF-1B60-86B30A234789}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:52:13');
INSERT INTO `il_user_log` VALUES ('{2B8E8C48-2E99-E78B-2831-0238160762D8}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:48:50');
INSERT INTO `il_user_log` VALUES ('{2C871C20-D4B3-064A-19E7-9B7763ED5D80}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:48:56');
INSERT INTO `il_user_log` VALUES ('{2CAB2323-2BF5-9D51-2E76-2CF66AA2A6F4}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:18:51');
INSERT INTO `il_user_log` VALUES ('{2CB8DD00-2209-D23A-6A18-AFEE68B05FA6}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:32:47');
INSERT INTO `il_user_log` VALUES ('{2CE64A0B-ACCE-321D-B73F-107A4A088036}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:18:36');
INSERT INTO `il_user_log` VALUES ('{2D73D83B-5375-A303-0856-7761704CAC05}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:53:47');
INSERT INTO `il_user_log` VALUES ('{2DB05956-075D-263C-969D-36E1F18BDF0A}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:23:23');
INSERT INTO `il_user_log` VALUES ('{2DCEFB8A-DEDB-F98E-811F-720B4B71A713}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:25:41');
INSERT INTO `il_user_log` VALUES ('{2DF8B4FE-A50C-0658-98F1-0FCE3BAD444F}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:50:37');
INSERT INTO `il_user_log` VALUES ('{2E13A095-C090-D033-9E97-7C273209860A}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:19:31');
INSERT INTO `il_user_log` VALUES ('{2E6529A4-55F7-E458-1B1B-440DAD2DA58D}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:38:25');
INSERT INTO `il_user_log` VALUES ('{2F44FA60-5C29-FB81-59AD-A0C0138BB78F}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:42:18');
INSERT INTO `il_user_log` VALUES ('{2F7EFF46-E1A4-7BFD-B564-27EC263FAB06}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:54:03');
INSERT INTO `il_user_log` VALUES ('{2FB49B38-3A98-0233-8F74-DE87CA8B688E}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:50:10');
INSERT INTO `il_user_log` VALUES ('{2FC6F901-6036-A128-B79F-FC1E748040AD}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:54:24');
INSERT INTO `il_user_log` VALUES ('{2FD013A3-1D41-6727-0C4A-E912FE46C92C}', 'admin', 'person', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:49:48');
INSERT INTO `il_user_log` VALUES ('{2FEFDAD9-D78A-5146-37C0-089FE6A33584}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:51:48');
INSERT INTO `il_user_log` VALUES ('{307026D5-1716-DDD7-2DFC-A91A59E94B5D}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:50:40');
INSERT INTO `il_user_log` VALUES ('{307F5E5D-303C-B909-D9F8-1A6D2F30DB10}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 17:51:03');
INSERT INTO `il_user_log` VALUES ('{30A255AF-312F-59B6-16F4-C01FDA8E7201}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:04:10');
INSERT INTO `il_user_log` VALUES ('{312DC544-D2EC-71B5-E2BE-703736C053E6}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:38:23');
INSERT INTO `il_user_log` VALUES ('{3133C10C-3D29-0C5C-48A9-4C8DD2E79185}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 19:59:44');
INSERT INTO `il_user_log` VALUES ('{31484D3E-2E02-468B-C967-4CCEEC5931F5}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:03:03');
INSERT INTO `il_user_log` VALUES ('{317D7309-1071-6C54-3B06-53C494FD2764}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:39:04');
INSERT INTO `il_user_log` VALUES ('{31A7E42F-16DF-11B4-12B2-4E9518491A2B}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:31:44');
INSERT INTO `il_user_log` VALUES ('{31EDDB34-4F73-002E-0CE8-3D17DC8D5931}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:23:31');
INSERT INTO `il_user_log` VALUES ('{3215FDD0-26C5-EFD5-1FFF-4055344E1983}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:31:41');
INSERT INTO `il_user_log` VALUES ('{325B3044-502C-1ABA-C698-FCC9662C7D33}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:24:12');
INSERT INTO `il_user_log` VALUES ('{32F91196-165A-917F-0004-62BAE161DB95}', 'system', 'user', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:23:01');
INSERT INTO `il_user_log` VALUES ('{32FEE7B7-F3B8-43E9-42BD-95229D4119E1}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:41:09');
INSERT INTO `il_user_log` VALUES ('{33523E55-A939-A6F4-5EA8-B7C5D96FB95F}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 10:29:35');
INSERT INTO `il_user_log` VALUES ('{33C586D4-8E13-5389-BAD5-BAB62716D1A5}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:37:09');
INSERT INTO `il_user_log` VALUES ('{33CBDAFD-82DD-592D-0D87-996384DF8619}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:08:29');
INSERT INTO `il_user_log` VALUES ('{33D2E5C9-47C4-E648-F2D0-FD17E48EE016}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:41:20');
INSERT INTO `il_user_log` VALUES ('{33D73AAC-B84D-5992-62C6-2A1C563BA76B}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:34:34');
INSERT INTO `il_user_log` VALUES ('{33F96DA6-935E-97E9-BC2C-579DE8B31F36}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:25:29');
INSERT INTO `il_user_log` VALUES ('{340D1402-2280-80CE-6198-911E89C3DF19}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:02:23');
INSERT INTO `il_user_log` VALUES ('{34718C3A-E150-0D9B-628D-4F719B44812D}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-18 10:45:06');
INSERT INTO `il_user_log` VALUES ('{34B31710-66F1-2E03-A199-35F2E1C656AA}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:04:45');
INSERT INTO `il_user_log` VALUES ('{34C8D8CE-B6F5-FFFD-9EDD-8B6077DB1100}', 'admin', 'outfirefacility', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:43:38');
INSERT INTO `il_user_log` VALUES ('{34DE5A90-3E4D-9DF7-3BA6-A92684417B2B}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:45:16');
INSERT INTO `il_user_log` VALUES ('{34FE70F5-3C16-0B68-3094-AE002C4AE2E0}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:54:24');
INSERT INTO `il_user_log` VALUES ('{3596368F-7693-1735-6C3A-9338A563C5F3}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:08:31');
INSERT INTO `il_user_log` VALUES ('{35B455A2-4017-DEF1-25BF-80F2EC852B6F}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:43:47');
INSERT INTO `il_user_log` VALUES ('{35C34377-ED9D-5061-6427-5039BFF2C44B}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:48:24');
INSERT INTO `il_user_log` VALUES ('{35DB2295-0E80-B4E3-2338-97E4B1EF87DD}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:23:30');
INSERT INTO `il_user_log` VALUES ('{35E2C18C-6D79-8AD6-4E53-3740EC79CC00}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:21:44');
INSERT INTO `il_user_log` VALUES ('{3708EA16-04FD-B3D5-F199-236DC0286E4A}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:04:50');
INSERT INTO `il_user_log` VALUES ('{37264733-1DA1-90A2-F85E-7E692104D521}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:18:35');
INSERT INTO `il_user_log` VALUES ('{37672EB6-7C07-13CA-CCDD-F42738D733CB}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-12 16:45:19');
INSERT INTO `il_user_log` VALUES ('{3794E8E1-9CE1-C515-DE18-65776ED395B3}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:45:36');
INSERT INTO `il_user_log` VALUES ('{37A75040-3880-599D-4A29-A236E0AC7128}', 'system', 'node', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:46:15');
INSERT INTO `il_user_log` VALUES ('{37B5123E-E7BF-3DEE-C47E-CC1F544F7691}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:30:05');
INSERT INTO `il_user_log` VALUES ('{37E620E7-513D-D030-23AD-E62DA026B99E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:27:19');
INSERT INTO `il_user_log` VALUES ('{37FEC9D5-1FBA-ABD3-D20B-FF169A3ACE62}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:49:32');
INSERT INTO `il_user_log` VALUES ('{380D24A6-5994-6E4B-ACD8-808AD1B52A89}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:36');
INSERT INTO `il_user_log` VALUES ('{38189A0A-ED80-B945-24CD-DB1319B1C1C1}', 'system', 'userlog', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:27:53');
INSERT INTO `il_user_log` VALUES ('{38357008-DF2E-606A-1081-DE298DAC4C98}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:39:03');
INSERT INTO `il_user_log` VALUES ('{383A8ACF-4EC6-6495-4E32-B612E60517BD}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:37:01');
INSERT INTO `il_user_log` VALUES ('{38572F13-04EA-1311-0F08-8749589510FA}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:41:56');
INSERT INTO `il_user_log` VALUES ('{38613170-0A74-461C-4D88-3CB9EB353A18}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:21:00');
INSERT INTO `il_user_log` VALUES ('{3877C5D4-0343-0748-5E49-AF8E1F730D23}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:26:30');
INSERT INTO `il_user_log` VALUES ('{3879D618-8728-810C-46D6-340F346AADC0}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:39:46');
INSERT INTO `il_user_log` VALUES ('{38BD86C7-31A2-462C-04E0-F3337905D267}', 'admin', 'person', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:58:50');
INSERT INTO `il_user_log` VALUES ('{3917435F-AE2A-0B37-BD1C-51D457ED9389}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:39:18');
INSERT INTO `il_user_log` VALUES ('{3922007B-6D2E-9754-EF34-588960EA3BB4}', 'admin', 'outfirefacility', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:53:25');
INSERT INTO `il_user_log` VALUES ('{39A9D65C-267C-3E7B-80A0-5D642EB87924}', 'admin', 'person', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:51:25');
INSERT INTO `il_user_log` VALUES ('{39BF00D1-2451-AA83-2BC9-11504C74A2C3}', 'admin', 'organization', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:38:47');
INSERT INTO `il_user_log` VALUES ('{39F4457A-2415-5EBE-E8B0-351CB63396F8}', 'admin', 'group', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:48:16');
INSERT INTO `il_user_log` VALUES ('{3A0EC2C1-4371-2C26-135C-CB7D9649DB35}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:41:19');
INSERT INTO `il_user_log` VALUES ('{3A25B5E2-DAAC-265E-94F7-102639F23EFF}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:54:35');
INSERT INTO `il_user_log` VALUES ('{3A2F222D-47CC-CD19-619E-790487173498}', 'admin', 'groupperson', 'set', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:07:56');
INSERT INTO `il_user_log` VALUES ('{3A5611FF-9823-62B6-1A7E-3408FB3B0DC1}', 'admin', 'group', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:18:51');
INSERT INTO `il_user_log` VALUES ('{3AC655D1-0E52-D795-F852-A7A18989BB9A}', 'admin', 'locator', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:58:03');
INSERT INTO `il_user_log` VALUES ('{3AEDBED8-37BE-EAE0-52D4-EB0A9E961FBA}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:41:32');
INSERT INTO `il_user_log` VALUES ('{3B7112CF-92C8-ECC7-5415-D5AB02BE2B90}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-11 09:16:30');
INSERT INTO `il_user_log` VALUES ('{3B728C0E-CFE7-12E8-2FF8-7D8173C3520C}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:58:47');
INSERT INTO `il_user_log` VALUES ('{3B9AF024-0F96-0146-B300-8514C3CA8C07}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:31:50');
INSERT INTO `il_user_log` VALUES ('{3C41DD21-E06F-C2C9-99F3-CBABBA6BC686}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:45:11');
INSERT INTO `il_user_log` VALUES ('{3C95DD1E-7AC8-BDC2-FCA4-5A40B5B01E75}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:40:09');
INSERT INTO `il_user_log` VALUES ('{3CDBE036-FE71-888F-7DD8-F88E283945E7}', 'system', 'userlog', 'delall', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 16:56:27');
INSERT INTO `il_user_log` VALUES ('{3CDE29A6-363E-5C49-6A8A-648CB534D52A}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:12:58');
INSERT INTO `il_user_log` VALUES ('{3D1B7181-2228-4296-25FD-62202D8952C0}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:08:22');
INSERT INTO `il_user_log` VALUES ('{3D2741EB-9EAE-C917-594F-B99878BC4371}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:45:39');
INSERT INTO `il_user_log` VALUES ('{3D3C155D-5CFB-E95A-4BA5-DFBFFA4C7C05}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:55:57');
INSERT INTO `il_user_log` VALUES ('{3D5216DF-AEF1-F515-A266-B93C13B0D681}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:11:54');
INSERT INTO `il_user_log` VALUES ('{3D5641BD-A2FE-3B0E-0B31-C49FAB0AD5BA}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:14:57');
INSERT INTO `il_user_log` VALUES ('{3D80D45D-C569-64EE-2EF7-9AC6D3E89BAB}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:05:44');
INSERT INTO `il_user_log` VALUES ('{3DE2EEE6-79E8-A6DA-281B-FA3B4388743E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:46:56');
INSERT INTO `il_user_log` VALUES ('{3DE940B9-E3E4-01DA-D69A-D0528D86D11F}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:35:26');
INSERT INTO `il_user_log` VALUES ('{3DF44E4C-89FD-7EB4-493C-DA535CBD7D94}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:59:00');
INSERT INTO `il_user_log` VALUES ('{3E40FE3A-33A2-A7A5-4DCB-147D39FAC981}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:46:58');
INSERT INTO `il_user_log` VALUES ('{3E54DF56-5A75-41FA-B232-C4678CEF85AE}', 'admin', 'organization', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:41:06');
INSERT INTO `il_user_log` VALUES ('{3F46DC64-2343-A9C1-6D90-B81CB4ADCA3D}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:45:21');
INSERT INTO `il_user_log` VALUES ('{3F48DD9D-CDFD-D73E-66E3-B36DE61F3C29}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:08:40');
INSERT INTO `il_user_log` VALUES ('{3F7BE6CB-F49C-3E0A-8D70-A2F5E37F94D1}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:44:38');
INSERT INTO `il_user_log` VALUES ('{3FF599CC-841E-F146-2C87-F89D0A3D8CEE}', 'admin', 'person', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:49:39');
INSERT INTO `il_user_log` VALUES ('{402C9747-49B5-401C-4E9B-D4E80907B021}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:39:05');
INSERT INTO `il_user_log` VALUES ('{408A9F52-C2E6-679D-7E55-72A4DAF1CF03}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:35:08');
INSERT INTO `il_user_log` VALUES ('{408C73AD-82B9-4650-D3AE-5BFC3233AF9C}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:15:47');
INSERT INTO `il_user_log` VALUES ('{40A6FC4C-C955-FE61-DC1D-37B3BEDEEDC4}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:34:51');
INSERT INTO `il_user_log` VALUES ('{40E75E50-C6AE-E30B-B221-19BBF136F1CB}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:45:56');
INSERT INTO `il_user_log` VALUES ('{4101E006-9814-561B-AB81-7C4649DF86D1}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:10:25');
INSERT INTO `il_user_log` VALUES ('{4157079E-048E-6F1B-7027-D8A6DB5108F4}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:55');
INSERT INTO `il_user_log` VALUES ('{41C4E053-5B7B-7DBA-7B31-FE5417FAFF3A}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:44:01');
INSERT INTO `il_user_log` VALUES ('{41FCB8F9-F762-1C76-B770-48033E144E92}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:51:47');
INSERT INTO `il_user_log` VALUES ('{41FE80CE-782F-8DAD-2A5A-F8F54BFF98DD}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:01:28');
INSERT INTO `il_user_log` VALUES ('{42673857-0432-9967-2290-90F559693195}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:10:22');
INSERT INTO `il_user_log` VALUES ('{42A114B3-C6AE-D61C-2005-6B1DA73DD5C5}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:54:05');
INSERT INTO `il_user_log` VALUES ('{42BBB748-85E7-F049-4998-82EC538460E5}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:50:17');
INSERT INTO `il_user_log` VALUES ('{43088092-6940-655F-6767-A549F53B6BEF}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:38:12');
INSERT INTO `il_user_log` VALUES ('{433F5650-D5B7-8BED-DD0B-F7BBC2ED5565}', 'admin', 'locator', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:40:56');
INSERT INTO `il_user_log` VALUES ('{4353EDD8-4B09-D64E-C8A3-4B45E68C236F}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:36:50');
INSERT INTO `il_user_log` VALUES ('{43A0605E-B8E6-840E-C493-AD2FFD584107}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:17:29');
INSERT INTO `il_user_log` VALUES ('{43A1A5CB-E8AB-F169-D0BC-9ED6216162BB}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:45:38');
INSERT INTO `il_user_log` VALUES ('{43A9D72A-2910-998B-1F8E-0B1742443F75}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:22:17');
INSERT INTO `il_user_log` VALUES ('{43FC7FF1-0CC0-42F2-DFAB-F39EF3C0E0EC}', 'admin', 'locator', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:21:12');
INSERT INTO `il_user_log` VALUES ('{440BA566-2FB9-1214-81E7-1AC022751FFC}', 'admin', 'person', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:05:06');
INSERT INTO `il_user_log` VALUES ('{4434D52A-04FD-2703-4F8B-3717ED668CFA}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:06:29');
INSERT INTO `il_user_log` VALUES ('{447FEAA1-1AA5-2E66-9C6A-281DF210C7D0}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:48:04');
INSERT INTO `il_user_log` VALUES ('{4508EBA2-71BB-A3AB-A365-7DB408EEA263}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:09:51');
INSERT INTO `il_user_log` VALUES ('{451C36F6-3E21-34E6-D537-4DF78E1D637C}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 17:50:11');
INSERT INTO `il_user_log` VALUES ('{451F2CC3-FC16-E69C-222E-13C6C4CC4EE7}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:10:25');
INSERT INTO `il_user_log` VALUES ('{45A40587-29C7-BFAE-38C6-2E765DA04CE0}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:56:21');
INSERT INTO `il_user_log` VALUES ('{45B054FF-BB58-FDA3-47CD-92D7924A7AF8}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 13:56:19');
INSERT INTO `il_user_log` VALUES ('{45B4841D-3100-BD2F-BA16-BA15818F63A9}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:11:54');
INSERT INTO `il_user_log` VALUES ('{45BB9481-346F-990F-C784-21D237A651DF}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:11:07');
INSERT INTO `il_user_log` VALUES ('{45FA3886-4BB9-17EF-2314-7FB97CDD393D}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:49:07');
INSERT INTO `il_user_log` VALUES ('{4600BACE-25A8-990E-BB8F-8A78808CCEE1}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:23:06');
INSERT INTO `il_user_log` VALUES ('{46382C77-208B-F2A4-A9F4-3F3F4DDF4D1E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:02:14');
INSERT INTO `il_user_log` VALUES ('{4690E9DC-5301-899B-3EF2-639C53352C0A}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:03:15');
INSERT INTO `il_user_log` VALUES ('{46AB2905-8C9E-0488-6793-536370B77BEA}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:05:14');
INSERT INTO `il_user_log` VALUES ('{46C3A2D2-5F1D-8313-E3CD-E2FA52747808}', 'system', 'login', 'in', '成功', '', '', '', '0.0.0.0', '2017-08-11 11:08:41');
INSERT INTO `il_user_log` VALUES ('{46C689B6-C105-71B0-E443-8E21D9198544}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:21:56');
INSERT INTO `il_user_log` VALUES ('{46E7DC02-9271-B643-E0D7-E5A0B344F9A8}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:28:52');
INSERT INTO `il_user_log` VALUES ('{46F671D7-F0A1-3585-86AE-7BCBBBDFDDF3}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:17:18');
INSERT INTO `il_user_log` VALUES ('{47585198-154D-D808-F93A-75121E3FB400}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:57:22');
INSERT INTO `il_user_log` VALUES ('{475B6147-B90E-CF57-FD68-F141D85F2009}', 'admin', 'locator', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:44:29');
INSERT INTO `il_user_log` VALUES ('{47A2C1A0-0CB2-49A8-E33D-31589180D04C}', 'admin', 'person', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:58:59');
INSERT INTO `il_user_log` VALUES ('{47B3C495-FD40-8B95-8DB5-0020B010547D}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:59:23');
INSERT INTO `il_user_log` VALUES ('{47D2CD8F-78AD-02CC-A029-5C425C58B6B6}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:21:19');
INSERT INTO `il_user_log` VALUES ('{47D80122-C038-AC2F-01CD-DD44B4ED6DCB}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:34:42');
INSERT INTO `il_user_log` VALUES ('{47F0AABF-6FC4-FCC0-0A4C-ED85B29D5018}', 'admin', 'group', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:48:58');
INSERT INTO `il_user_log` VALUES ('{47F3049B-9449-9D81-C731-662DB5D55B1E}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 12:21:45');
INSERT INTO `il_user_log` VALUES ('{47FAE3BB-1935-2FA0-B4E6-E193746FD848}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:10:21');
INSERT INTO `il_user_log` VALUES ('{484C797D-9A13-45D6-5D79-6DD5E2FDA22B}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:26:32');
INSERT INTO `il_user_log` VALUES ('{48510C4F-B2E0-2C65-2734-42BA5434848E}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:48:27');
INSERT INTO `il_user_log` VALUES ('{48A13D94-2562-84F8-F575-E38B34326B41}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:54:36');
INSERT INTO `il_user_log` VALUES ('{48D55AF0-3B00-AA19-F2EC-BD1A8FEBEB40}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:57:55');
INSERT INTO `il_user_log` VALUES ('{48D88A1C-2B87-748C-1EA6-7CDC55FD8C84}', 'admin', 'locator', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:31:03');
INSERT INTO `il_user_log` VALUES ('{49188141-47B0-2813-4D6F-ADF6FB46BBE7}', 'system', 'role', 'authsave', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:28:39');
INSERT INTO `il_user_log` VALUES ('{493F7471-61E5-562D-8B92-B27E5DFAD884}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:01:32');
INSERT INTO `il_user_log` VALUES ('{49504A4B-C5CD-1456-9ACC-567787B73AC3}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:56:46');
INSERT INTO `il_user_log` VALUES ('{49739EAB-A0B5-FB81-2A1A-3A9191182B75}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 16:59:13');
INSERT INTO `il_user_log` VALUES ('{49CF0AA8-AAD2-4824-20E9-AE1D6FE92FB0}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:15:09');
INSERT INTO `il_user_log` VALUES ('{49D9E200-6594-DF88-91BA-BD7BBFB4C622}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:41:56');
INSERT INTO `il_user_log` VALUES ('{49ED3A3C-7BEC-E156-EACF-8F3249505833}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:55:09');
INSERT INTO `il_user_log` VALUES ('{4A92460C-D0B8-9AD7-4956-6E5F8D7C2AD4}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:24:00');
INSERT INTO `il_user_log` VALUES ('{4A9B4F97-0B79-D644-B98A-FD192C2A4611}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:15:30');
INSERT INTO `il_user_log` VALUES ('{4AEEF6E4-F828-C9CC-197D-B4797664E158}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:48:24');
INSERT INTO `il_user_log` VALUES ('{4B11295E-C58D-AD78-7EC2-AD8F8C06D831}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:53:59');
INSERT INTO `il_user_log` VALUES ('{4B20FAEA-CF12-202D-3356-11651ABE09C8}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:23:58');
INSERT INTO `il_user_log` VALUES ('{4B41D198-92DE-044F-7A1B-507F674686AB}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:21:25');
INSERT INTO `il_user_log` VALUES ('{4B4A3C83-2A63-DE75-8EDB-D16D4E8FF384}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-10 09:17:42');
INSERT INTO `il_user_log` VALUES ('{4B7CEAB6-3BEC-FA1B-108D-C34A3417C486}', 'admin', 'person', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:58:40');
INSERT INTO `il_user_log` VALUES ('{4B8DB511-4A01-8936-9802-14BE6D80D7E2}', 'system', 'node', 'index', '失败', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:17:23');
INSERT INTO `il_user_log` VALUES ('{4B9B4BB7-F12B-D86D-FBFF-0D5E7186D4DA}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:35:39');
INSERT INTO `il_user_log` VALUES ('{4BA06175-5C3C-5C75-8CD2-547F6569E84C}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:05:16');
INSERT INTO `il_user_log` VALUES ('{4C00B0CA-4FAB-C90E-6A09-12E38BA458E5}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:26:49');
INSERT INTO `il_user_log` VALUES ('{4C1A0F6B-795A-CCE0-87C8-658F23398A0E}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:06:36');
INSERT INTO `il_user_log` VALUES ('{4C39E730-8B36-3F99-761D-13C2C5068285}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:57:56');
INSERT INTO `il_user_log` VALUES ('{4C8D73FF-B620-21CE-774B-E34587E853F6}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 16:48:03');
INSERT INTO `il_user_log` VALUES ('{4C8FF1BC-453C-F07E-4279-F79696AD2D5C}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:07:01');
INSERT INTO `il_user_log` VALUES ('{4CC5D2C2-7D89-F193-1626-514473ED7256}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:05:01');
INSERT INTO `il_user_log` VALUES ('{4CE3F8B5-DC19-9189-7D50-E9B719CF42C8}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:49:07');
INSERT INTO `il_user_log` VALUES ('{4D0CD4CB-DF00-12F8-9A6B-291B0D7537C9}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:33:34');
INSERT INTO `il_user_log` VALUES ('{4D73B2FC-AB90-533A-C9DA-5D03BAB1EEE5}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:28:58');
INSERT INTO `il_user_log` VALUES ('{4DC04B3C-9E0A-15EB-6026-77CE28E775A7}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:39:03');
INSERT INTO `il_user_log` VALUES ('{4DE8BE47-B299-36DB-D0B2-55FD517D0C6B}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:13');
INSERT INTO `il_user_log` VALUES ('{4E02D8BA-8E30-6BC9-E008-878DCF822754}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:37:11');
INSERT INTO `il_user_log` VALUES ('{4E55D2F7-BE0C-7742-BC5A-D48BE164B759}', 'admin', 'locator', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:44:36');
INSERT INTO `il_user_log` VALUES ('{4E6C8DD7-48D8-F2D2-04EE-313099435CCB}', 'system', 'userlog', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:26:13');
INSERT INTO `il_user_log` VALUES ('{4E6F7F94-A07F-CF7A-8CC4-2EF7C1735282}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:34:22');
INSERT INTO `il_user_log` VALUES ('{4EDAFA5B-0F9B-DED5-4936-C25CB847FADF}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:32:12');
INSERT INTO `il_user_log` VALUES ('{4F20EE36-14F4-C8A2-00D2-BFF2A056D82D}', 'admin', 'group', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:51:25');
INSERT INTO `il_user_log` VALUES ('{4F3BBB76-81A4-527B-BA64-0B78C2F347CB}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:23:05');
INSERT INTO `il_user_log` VALUES ('{4F5B950D-008C-7AD1-F548-0B497ABD14B9}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:40:43');
INSERT INTO `il_user_log` VALUES ('{4F98FD0A-9376-5E5F-7C6A-ECA5CE1C092E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:10:16');
INSERT INTO `il_user_log` VALUES ('{4F9CC289-4C96-EC4C-2119-21BDF13390CC}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:08:32');
INSERT INTO `il_user_log` VALUES ('{4FA22BDD-338D-0C17-C3C8-CB990C03747D}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:19:55');
INSERT INTO `il_user_log` VALUES ('{4FE24B6B-9ADD-D1DD-27EC-CB0C3BEFD004}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:05:11');
INSERT INTO `il_user_log` VALUES ('{4FF196AD-1F50-DF1D-DF86-14D66F1A1C10}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:26:57');
INSERT INTO `il_user_log` VALUES ('{5065DC7C-620C-5398-FD1F-4C50A2BED404}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:10:16');
INSERT INTO `il_user_log` VALUES ('{5066FF0B-FCB9-C8E8-B007-E35264B7D48A}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:31:56');
INSERT INTO `il_user_log` VALUES ('{50D7D21A-C155-73AB-F7E8-2EC3E4C56E58}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:14:18');
INSERT INTO `il_user_log` VALUES ('{50DE16FA-7555-82D5-4F42-250757DDCEA1}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:22:21');
INSERT INTO `il_user_log` VALUES ('{50FC67C9-D8FC-5180-5809-9DEFE11EA2F3}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:10:17');
INSERT INTO `il_user_log` VALUES ('{51047DCF-5D0B-FAFF-8555-0EEB7BC57557}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 19:59:35');
INSERT INTO `il_user_log` VALUES ('{51570253-13F7-5DE0-53C8-4E8696A76902}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:38:28');
INSERT INTO `il_user_log` VALUES ('{51953B77-AB89-DC27-398E-3BAAA580CE39}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:48:53');
INSERT INTO `il_user_log` VALUES ('{51A59438-2455-46F8-80FC-6A1BB79B5A3A}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:56:50');
INSERT INTO `il_user_log` VALUES ('{51C9AF4F-E8A1-BB46-5402-EB95C8641BC5}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:08:19');
INSERT INTO `il_user_log` VALUES ('{51E1A12D-E9D0-CBD8-CD7E-0ACE81529BB5}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:21:00');
INSERT INTO `il_user_log` VALUES ('{51F5908A-75EA-753B-9889-3F201BCC5BE4}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:05:30');
INSERT INTO `il_user_log` VALUES ('{5213E3F0-D9D6-9BC2-B9EE-D8E058D63BB6}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:48:38');
INSERT INTO `il_user_log` VALUES ('{522C900D-05D4-15ED-8DA3-084545D15EDE}', 'admin', 'group', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:32:44');
INSERT INTO `il_user_log` VALUES ('{522CFC4A-3F90-5854-7F8B-07E6AE5D5BC7}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:05:04');
INSERT INTO `il_user_log` VALUES ('{528F570A-F3E4-250F-1951-8974A62CAF5F}', 'admin', 'organization', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:36:49');
INSERT INTO `il_user_log` VALUES ('{52A9D792-3435-1140-2212-3EF352539270}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:02:26');
INSERT INTO `il_user_log` VALUES ('{52D8B4EC-20ED-457C-FB97-2B267CBDC8F5}', 'admin', 'locationmark', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:26:47');
INSERT INTO `il_user_log` VALUES ('{52E847DF-177A-C2A1-5B45-12CCE66E49EB}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:30:41');
INSERT INTO `il_user_log` VALUES ('{52F4BCFC-A736-2CC4-7EB6-BFA752D9A680}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:44:59');
INSERT INTO `il_user_log` VALUES ('{52F5BA41-D44D-8D2C-3379-266D1BD9714E}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:37:56');
INSERT INTO `il_user_log` VALUES ('{532675C0-6C19-8541-CA04-F86010EEBFA2}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:18:44');
INSERT INTO `il_user_log` VALUES ('{53518393-CF0A-2B02-E721-6371B831E1C6}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-12 14:15:27');
INSERT INTO `il_user_log` VALUES ('{53ED513B-F7B7-8183-AF37-83B6202B6359}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:35:54');
INSERT INTO `il_user_log` VALUES ('{53F69CCE-BD8B-6F96-C25C-1B40B900CA78}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:57:17');
INSERT INTO `il_user_log` VALUES ('{541A94ED-96DE-5806-1F5B-371702EAEC86}', 'system', 'node', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:44:17');
INSERT INTO `il_user_log` VALUES ('{541B6D59-1DF6-CB1B-F8EA-B39AEFDA3B66}', 'admin', 'localequipment', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:59:27');
INSERT INTO `il_user_log` VALUES ('{54373119-D5FF-C082-79F2-06AC3AEA3F24}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:02:46');
INSERT INTO `il_user_log` VALUES ('{54A90FD2-0E71-55C1-E4D6-0ECD18586D40}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:08:44');
INSERT INTO `il_user_log` VALUES ('{54B2BC7E-354C-B0EB-FFD2-0C80B2CAB8E8}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:34:06');
INSERT INTO `il_user_log` VALUES ('{54CD0AF1-1D13-D094-C59E-F2D1D35FB89D}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:06:07');
INSERT INTO `il_user_log` VALUES ('{54DD663C-03AD-9FF0-D3CD-7394447435BA}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 17:16:10');
INSERT INTO `il_user_log` VALUES ('{55180DC3-C77A-835B-25C5-D5084010ECB3}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:03:10');
INSERT INTO `il_user_log` VALUES ('{55366C9E-916A-5799-681C-FDB2EC489A4F}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:21:16');
INSERT INTO `il_user_log` VALUES ('{55368BAE-4427-BBF7-1970-0E9B33855ABD}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:23:53');
INSERT INTO `il_user_log` VALUES ('{5572F023-82F8-146F-FB8E-6FA26912D8A5}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:48:21');
INSERT INTO `il_user_log` VALUES ('{55B40B4E-7BF4-0169-905B-6DA598B0C5EC}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:41:54');
INSERT INTO `il_user_log` VALUES ('{55C0BE09-0633-1116-3D9F-56EC2B6FEBEC}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:34:03');
INSERT INTO `il_user_log` VALUES ('{55EBCABD-1883-11BC-CA70-572B53FDAEEF}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:30:29');
INSERT INTO `il_user_log` VALUES ('{560FE1CC-58BB-2CCE-FFEA-59770CF1B108}', 'admin', 'localequipment', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:55:35');
INSERT INTO `il_user_log` VALUES ('{564E0589-6FB9-0012-EFD3-7415A267F049}', 'admin', 'group', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:27:21');
INSERT INTO `il_user_log` VALUES ('{56913DE4-1A8D-717C-C406-D1797E7133A1}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:35:56');
INSERT INTO `il_user_log` VALUES ('{574A980D-DC19-26CB-0964-F48CB87BB198}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:23:53');
INSERT INTO `il_user_log` VALUES ('{575C2C17-31D7-2EAD-00C9-CF6C9EC1BB74}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:25:28');
INSERT INTO `il_user_log` VALUES ('{577AE8CC-BBDF-D895-8472-935B07D93230}', 'admin', 'organization', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:14:05');
INSERT INTO `il_user_log` VALUES ('{57888F6F-67FA-D2DB-0141-9F80C01E0874}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:12:51');
INSERT INTO `il_user_log` VALUES ('{579B0F9C-E00F-CC2B-7EF5-784C4D446F3B}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:11:01');
INSERT INTO `il_user_log` VALUES ('{57C36859-28CA-7A52-4FBA-5605ADA3545D}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:36:42');
INSERT INTO `il_user_log` VALUES ('{57D19644-EC0C-622D-133A-2A7D264D9DFC}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:46:54');
INSERT INTO `il_user_log` VALUES ('{57E47E44-73BC-8AB8-11B8-7E25C47DE481}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:22:25');
INSERT INTO `il_user_log` VALUES ('{5812C7B9-CE8E-78C0-C1C8-F2FC27218D07}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:20:55');
INSERT INTO `il_user_log` VALUES ('{5816E1EC-4E22-3F1E-E1C0-C2D5F1E8FD6F}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:41:46');
INSERT INTO `il_user_log` VALUES ('{582C0069-3274-2853-4CCC-CD4C34606BEE}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:49:49');
INSERT INTO `il_user_log` VALUES ('{588C3B91-D86B-B1F8-416A-ED7F615B9F08}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:08:56');
INSERT INTO `il_user_log` VALUES ('{58A5B42E-33BA-CE11-B0D6-D6AE5EE59C6B}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:49:08');
INSERT INTO `il_user_log` VALUES ('{58FDE0D7-5C13-E499-8F9A-DD5913AE85DD}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:41:09');
INSERT INTO `il_user_log` VALUES ('{59030DDD-A880-D70E-EFF8-6C0F408B0013}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:10:03');
INSERT INTO `il_user_log` VALUES ('{59248F2D-8D45-1FA4-4601-0CE4EDB074C3}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:01:20');
INSERT INTO `il_user_log` VALUES ('{59A5ED84-A4F0-A18B-F55A-D1EAFC381919}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:41:06');
INSERT INTO `il_user_log` VALUES ('{59B9AAFF-5DAB-64E9-5AD6-2D83C5EB55AD}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:08:14');
INSERT INTO `il_user_log` VALUES ('{59BD48DF-BAF4-5C3A-F5AE-BA93DAC16A7D}', 'admin', 'localequipment', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:11:05');
INSERT INTO `il_user_log` VALUES ('{5A1B9B66-4171-2EA4-1E4C-9637365B8E94}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 16:59:31');
INSERT INTO `il_user_log` VALUES ('{5ACF22F3-2823-5742-0799-09DE7911D206}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:07:49');
INSERT INTO `il_user_log` VALUES ('{5AE4FE3F-4F4D-68ED-B190-DEA5A7052205}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:59:09');
INSERT INTO `il_user_log` VALUES ('{5AE8CAC1-5D9C-B94F-902B-69BB5255004F}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:04:31');
INSERT INTO `il_user_log` VALUES ('{5B88733A-F062-1329-33DC-F81475E219D7}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:26:10');
INSERT INTO `il_user_log` VALUES ('{5B937F6A-68B4-7910-E242-973E48AC2460}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:10:27');
INSERT INTO `il_user_log` VALUES ('{5C0E72A4-27F4-DC0D-3189-274C9A65B807}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:01:19');
INSERT INTO `il_user_log` VALUES ('{5C18C89C-61B1-C1A4-A7FA-E70B411252DE}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:12:41');
INSERT INTO `il_user_log` VALUES ('{5C5D75BE-3F20-D9CA-4BAF-15982462D89F}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:44:49');
INSERT INTO `il_user_log` VALUES ('{5C631CC6-E8A6-92AA-F9AB-49C38E83DA1C}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:00:49');
INSERT INTO `il_user_log` VALUES ('{5C741E0F-1533-724C-AB7D-B6AE6CF4D023}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 10:36:49');
INSERT INTO `il_user_log` VALUES ('{5C85D0C3-C300-C3A4-CFBA-954E29E8AA81}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:31:19');
INSERT INTO `il_user_log` VALUES ('{5CB2876A-FAAD-630E-13F0-6ED90DFF4F78}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:49:04');
INSERT INTO `il_user_log` VALUES ('{5CBDB8C6-A41B-A1E1-7B56-4C1716C90AB3}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:41:06');
INSERT INTO `il_user_log` VALUES ('{5D375A18-59BE-F399-7C36-41B428B35F59}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:56:02');
INSERT INTO `il_user_log` VALUES ('{5D7135C8-5743-37CB-7535-CBB50CFE8657}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:42:02');
INSERT INTO `il_user_log` VALUES ('{5DE8533B-2461-F6D9-225F-D260032D054B}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 09:35:10');
INSERT INTO `il_user_log` VALUES ('{5DEDE1B7-D287-8060-69F9-7BA43B949FD1}', 'admin', 'group', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:47:52');
INSERT INTO `il_user_log` VALUES ('{5E6EBE87-12F5-9CCD-5D10-A43AF8A19D72}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 14:51:33');
INSERT INTO `il_user_log` VALUES ('{5EEC53E5-A815-45D8-8C91-8CD1B369F377}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 16:56:00');
INSERT INTO `il_user_log` VALUES ('{5F4C76C2-B5FA-82E2-915B-D88DB722E0B2}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:47:04');
INSERT INTO `il_user_log` VALUES ('{5F8DAC8A-7E97-49D8-37E4-891C31F30636}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:42:02');
INSERT INTO `il_user_log` VALUES ('{5FB5BB36-38BF-5939-6820-975E05285057}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:18:31');
INSERT INTO `il_user_log` VALUES ('{5FB92BB7-5261-AA48-B7F8-3C490CF7FCE6}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:54:00');
INSERT INTO `il_user_log` VALUES ('{5FE3FD95-0AD9-76E0-BA3E-4704826C1F99}', 'admin', 'group', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:48:05');
INSERT INTO `il_user_log` VALUES ('{601CC7A0-7464-C01F-D9D0-DD6E30EDFE1F}', 'system', 'user', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:15:43');
INSERT INTO `il_user_log` VALUES ('{602D04A8-F770-4EE9-555D-717A8AD1C839}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:09:19');
INSERT INTO `il_user_log` VALUES ('{602D810B-43D9-D8A3-31DC-11E25D2A94D4}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:11:21');
INSERT INTO `il_user_log` VALUES ('{60781E84-D631-9731-6583-71A38F54485B}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:32:50');
INSERT INTO `il_user_log` VALUES ('{607A9C98-4C1E-6554-A20F-9D2B4390DD67}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:31:54');
INSERT INTO `il_user_log` VALUES ('{60B3FC2E-310D-FF93-87B4-ECE2AB0F193B}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:12');
INSERT INTO `il_user_log` VALUES ('{60BE9D98-8BE0-0481-BB6F-7D9C8BB4684C}', 'admin', 'group', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:31:59');
INSERT INTO `il_user_log` VALUES ('{60C1E5F9-13BD-F5B4-76E3-6DDB2742A2B4}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 09:36:38');
INSERT INTO `il_user_log` VALUES ('{60FEB65F-905F-2536-81C2-B4E218E5EE0B}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:30:58');
INSERT INTO `il_user_log` VALUES ('{6160F69D-0161-481F-D544-250984438673}', 'admin', 'person', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:57:34');
INSERT INTO `il_user_log` VALUES ('{617E19BC-8EA8-9CBE-EC19-FF55CAAD9516}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:46:53');
INSERT INTO `il_user_log` VALUES ('{61B12441-CF6E-EFCB-6F57-9A69B8F8298B}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:28:05');
INSERT INTO `il_user_log` VALUES ('{61C51441-0262-17BD-90CC-84E3E5BD7D1E}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:08:23');
INSERT INTO `il_user_log` VALUES ('{61EDCC68-B013-C007-F904-ABD743E46C94}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-09 10:18:59');
INSERT INTO `il_user_log` VALUES ('{6234E221-A3A7-50AF-0B18-B9BACF35D814}', 'admin', 'organization', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:46:34');
INSERT INTO `il_user_log` VALUES ('{628BEC9A-14D6-01D5-417D-4EEC8927D29E}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:32:39');
INSERT INTO `il_user_log` VALUES ('{6295E27E-804F-07A5-29A3-8093FE36EFF2}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:15:35');
INSERT INTO `il_user_log` VALUES ('{62CE8081-3484-9B87-C245-6F5BE5794458}', 'admin', 'person', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:51:31');
INSERT INTO `il_user_log` VALUES ('{62E6BC56-956A-5E7C-4C90-E5ED32272A05}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:38:07');
INSERT INTO `il_user_log` VALUES ('{62FD79E9-4AF9-C14F-B055-86E332FC6FEE}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:11:57');
INSERT INTO `il_user_log` VALUES ('{63896FF5-8D51-9D3A-3EDE-838EFFB47F9D}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:38:19');
INSERT INTO `il_user_log` VALUES ('{63CB2705-DD65-D3B1-8453-ACF8560036AF}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:38:20');
INSERT INTO `il_user_log` VALUES ('{63EA3AEE-F3FE-864A-F293-09EBBB599BD2}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:21:44');
INSERT INTO `il_user_log` VALUES ('{6485A8AD-69FA-6F1B-CED5-877C3D23FF8F}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-12 16:42:56');
INSERT INTO `il_user_log` VALUES ('{650B4005-403B-7C00-2221-B3005B080BB1}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:52:20');
INSERT INTO `il_user_log` VALUES ('{651F8EF2-8259-C9B1-4859-95D64F63A815}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:47:41');
INSERT INTO `il_user_log` VALUES ('{65205F6A-9B79-197C-9CA3-C3EB2E6415BE}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:43:25');
INSERT INTO `il_user_log` VALUES ('{65209362-2C11-EF9C-B704-16F2B883F7DE}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 10:03:15');
INSERT INTO `il_user_log` VALUES ('{65374248-5EB3-D9BF-97EB-98D2246BFC47}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:00:58');
INSERT INTO `il_user_log` VALUES ('{657DE78F-B483-9A82-D078-1FB6CF53411E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:11:27');
INSERT INTO `il_user_log` VALUES ('{65BA98E6-1BFF-20F0-D845-E7B962343DB4}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:51:26');
INSERT INTO `il_user_log` VALUES ('{65E118B2-2C50-EF9F-3BE8-BC76F5BEE126}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:33:49');
INSERT INTO `il_user_log` VALUES ('{65F18875-5525-17FE-9027-008010ADC655}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:56:29');
INSERT INTO `il_user_log` VALUES ('{65F2C10C-EC4F-E18B-25D3-09774D9AA467}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:57:13');
INSERT INTO `il_user_log` VALUES ('{65FEB44D-D3EB-6C53-DF49-25740F18640C}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:25:17');
INSERT INTO `il_user_log` VALUES ('{662940AC-CA29-C415-9A9F-39EFB42D3D67}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:51:52');
INSERT INTO `il_user_log` VALUES ('{662E6D23-CA3E-936E-8A8C-A2BC372127EF}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:42:06');
INSERT INTO `il_user_log` VALUES ('{6641251D-F4BE-F0C3-5C64-BA695321BB67}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:46:18');
INSERT INTO `il_user_log` VALUES ('{668C1522-D7A5-9D75-6FE8-20CEFEDBF226}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:22:35');
INSERT INTO `il_user_log` VALUES ('{66CA8769-287A-2753-A601-0413FC4C6F62}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:01:44');
INSERT INTO `il_user_log` VALUES ('{67165018-F231-004C-92AC-C826241E7815}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:00:46');
INSERT INTO `il_user_log` VALUES ('{6716F29B-202B-244B-76ED-CD1E0143E9F0}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:32:58');
INSERT INTO `il_user_log` VALUES ('{675A6D56-E628-192E-C640-3FCF4F212E57}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:09:30');
INSERT INTO `il_user_log` VALUES ('{678FF0FE-89DB-6CBC-B8F5-CBFFF24E0827}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:34:48');
INSERT INTO `il_user_log` VALUES ('{68054EEA-B654-5E64-C43F-778A4C4F925B}', 'system', 'user', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:16:15');
INSERT INTO `il_user_log` VALUES ('{684F3668-CD86-D04A-6FAF-A96D28BB6907}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:49:01');
INSERT INTO `il_user_log` VALUES ('{684F649D-EB18-B71E-1045-8B14180DBD23}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-11 15:16:15');
INSERT INTO `il_user_log` VALUES ('{68540FF6-D207-D20D-56E1-95D9A74727FA}', 'admin', 'outfirefacility', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:42:28');
INSERT INTO `il_user_log` VALUES ('{686473F1-5627-14AA-F3D6-783673CA9C90}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:01:15');
INSERT INTO `il_user_log` VALUES ('{686E082C-2ED4-E280-3501-1D14BD48E8D5}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:16:49');
INSERT INTO `il_user_log` VALUES ('{68DB57C1-7CEE-CC9E-CDD7-8194355233EA}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:23:50');
INSERT INTO `il_user_log` VALUES ('{68F83CA3-359A-981C-006E-871F122B55B0}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:24:27');
INSERT INTO `il_user_log` VALUES ('{69B3A329-C7AD-8864-3867-F2F9D48D9EC3}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:53:42');
INSERT INTO `il_user_log` VALUES ('{6A544DB7-97EE-4EC5-660E-B80E504128AC}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:01:35');
INSERT INTO `il_user_log` VALUES ('{6A96184A-DCFE-A86D-DECB-E052D1C88515}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:23:51');
INSERT INTO `il_user_log` VALUES ('{6ACA5E7B-C506-B8D1-40C5-EFF536CDC14E}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 09:36:18');
INSERT INTO `il_user_log` VALUES ('{6AF2ACC3-960A-B2BF-AC45-04B4BB63E66A}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:29:14');
INSERT INTO `il_user_log` VALUES ('{6B005E9F-0937-0941-018D-2326021CC855}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:24');
INSERT INTO `il_user_log` VALUES ('{6B6A554F-B1F3-9A21-568F-2B64459FEE48}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:00:54');
INSERT INTO `il_user_log` VALUES ('{6B6F58E9-1B9A-8AD2-A146-5D6BC4393853}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:25:19');
INSERT INTO `il_user_log` VALUES ('{6B889228-1EE0-EEA6-9B02-B33735FAFDCB}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:43:55');
INSERT INTO `il_user_log` VALUES ('{6B9A217E-546E-AF56-6675-8A29E94C1FA1}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:51:23');
INSERT INTO `il_user_log` VALUES ('{6BAB2709-7A04-0D11-1827-44986D046EC7}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:50:35');
INSERT INTO `il_user_log` VALUES ('{6BB47A8B-C324-9B97-8D33-256FF6040899}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:40:22');
INSERT INTO `il_user_log` VALUES ('{6BFF0F47-0AB5-0AE1-3EB3-03072E46D581}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:22:31');
INSERT INTO `il_user_log` VALUES ('{6C40B1A3-AF88-9150-C477-A1017CC1AF71}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:40:57');
INSERT INTO `il_user_log` VALUES ('{6C611082-E622-A9E8-ED73-D5539FF10F0A}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:48:48');
INSERT INTO `il_user_log` VALUES ('{6C6289DE-6F66-42A9-E703-7239B5011703}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:23:10');
INSERT INTO `il_user_log` VALUES ('{6C653ECD-890D-8B93-6BA0-7C3B96055F03}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-17 10:29:07');
INSERT INTO `il_user_log` VALUES ('{6C73F5C0-BFA7-A22C-0662-C4E5AD0A37A2}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:00:32');
INSERT INTO `il_user_log` VALUES ('{6CAC918D-48C5-D5DA-4497-F051AB95E304}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:17:44');
INSERT INTO `il_user_log` VALUES ('{6D2DB5E0-E1A5-CC19-A9AE-BBE4EE6C5809}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:41:26');
INSERT INTO `il_user_log` VALUES ('{6D33E11D-97AC-50B0-D24E-4AF16C59AA4E}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:46:49');
INSERT INTO `il_user_log` VALUES ('{6D4C05DB-BA40-AE9B-164A-4A495741299C}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:51:26');
INSERT INTO `il_user_log` VALUES ('{6D613D4C-20B4-8742-060C-74A432B1389D}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:57:49');
INSERT INTO `il_user_log` VALUES ('{6D7FC4CB-A4FB-4B53-937A-D6F41360CF0C}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:48:46');
INSERT INTO `il_user_log` VALUES ('{6D81BCBC-55FE-8AF5-5810-33C0862C0D8F}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:12:28');
INSERT INTO `il_user_log` VALUES ('{6E383BF8-FACD-A86F-3752-ED8CFCB3888E}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:54:59');
INSERT INTO `il_user_log` VALUES ('{6E673BF2-05B8-246E-B432-739EB63DD4C2}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:44:11');
INSERT INTO `il_user_log` VALUES ('{6EA5E228-5D89-9129-0D42-DCB587E8123E}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:54:21');
INSERT INTO `il_user_log` VALUES ('{6F1B546A-AC4C-D6C7-44E9-5AD2171E57AC}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:59:03');
INSERT INTO `il_user_log` VALUES ('{6F4DA9EE-B016-5387-72E1-8EA27953539C}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:08:39');
INSERT INTO `il_user_log` VALUES ('{6F4E5012-9DED-416C-A51C-92E01C430D0D}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:38:48');
INSERT INTO `il_user_log` VALUES ('{6F6D30FF-9156-21CC-14C7-E2BBEDB0112D}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:11:25');
INSERT INTO `il_user_log` VALUES ('{6F84C955-4624-2CD0-DC1A-F87298CCD096}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 10:29:27');
INSERT INTO `il_user_log` VALUES ('{6FB1EA90-0AC2-7FB4-844C-9A56DC0CA61C}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:36:33');
INSERT INTO `il_user_log` VALUES ('{6FD0E036-1755-64CE-C020-B66B59C68FBD}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:23:56');
INSERT INTO `il_user_log` VALUES ('{6FF694F8-799B-4640-D237-5B316F320738}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 12:25:14');
INSERT INTO `il_user_log` VALUES ('{6FFADC45-D6BF-1DD1-AB42-C843572B7A94}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:38:55');
INSERT INTO `il_user_log` VALUES ('{6FFF384C-1AAE-7D1B-B5B6-7EE323F9D6F5}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:25:12');
INSERT INTO `il_user_log` VALUES ('{70454B3F-EF29-F5D0-ECE2-403E327B6536}', 'admin', 'index', 'index', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:20:11');
INSERT INTO `il_user_log` VALUES ('{70698875-5C8A-50F4-D480-DDCE7BDFFFE6}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:48:43');
INSERT INTO `il_user_log` VALUES ('{707754B0-D77B-3E04-F580-DC954C7FF175}', 'admin', 'locator', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:46:10');
INSERT INTO `il_user_log` VALUES ('{70969085-7314-C00E-6750-05EFE9089B62}', 'admin', 'person', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:51:53');
INSERT INTO `il_user_log` VALUES ('{70A7AF21-E714-EED1-3D10-5CE2383FDA91}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:25:30');
INSERT INTO `il_user_log` VALUES ('{7126964A-51E7-80DE-FA7E-D6D48214C3CE}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:57:53');
INSERT INTO `il_user_log` VALUES ('{71337405-0834-27A2-6D82-7213E3A48087}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 16:56:48');
INSERT INTO `il_user_log` VALUES ('{7183BAF8-57C0-7DA5-3706-1FA5E3AE22FC}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:50:07');
INSERT INTO `il_user_log` VALUES ('{71A1267F-9972-71CD-BDCE-7B313A94DCBE}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:08:05');
INSERT INTO `il_user_log` VALUES ('{71B290DF-F6B2-EF92-F15E-3185C0829F0A}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:39:38');
INSERT INTO `il_user_log` VALUES ('{71F68A77-1EC9-9CD3-08DB-8A4E1684947B}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 16:40:14');
INSERT INTO `il_user_log` VALUES ('{722C3126-3862-D648-FB65-46AFDDA2479E}', 'admin', 'organization', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:13:59');
INSERT INTO `il_user_log` VALUES ('{72703E19-F818-40B2-F776-9B2C24B365BE}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:11:52');
INSERT INTO `il_user_log` VALUES ('{7296B6FA-0B1B-3708-20AB-76768EE6A2EC}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:19:56');
INSERT INTO `il_user_log` VALUES ('{72C385FE-0506-9C73-B200-DFCF57D2E442}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:01:17');
INSERT INTO `il_user_log` VALUES ('{72EC6446-D84A-EA77-AE14-1BCABB4A972B}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:47:04');
INSERT INTO `il_user_log` VALUES ('{733403F8-4FD6-0388-945F-E89D99DFC15F}', 'admin', 'organization', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:42:16');
INSERT INTO `il_user_log` VALUES ('{735AD7D4-1239-90D7-C593-7D93CCD751BE}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:22:26');
INSERT INTO `il_user_log` VALUES ('{736D9783-CDE9-A75E-6AE4-AC13C8219AC0}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:19:41');
INSERT INTO `il_user_log` VALUES ('{7376D81E-01E5-616A-EFC4-AF926231CC20}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:40:34');
INSERT INTO `il_user_log` VALUES ('{73BBE3CB-C1CA-6043-F620-CF548F2DEEF7}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:37:50');
INSERT INTO `il_user_log` VALUES ('{73CDADE2-1F3D-EEBE-04E4-EABF72B0AE5C}', 'admin', 'group', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:30:32');
INSERT INTO `il_user_log` VALUES ('{73D0AD05-571C-067E-1077-AEC02BC420A2}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:27:52');
INSERT INTO `il_user_log` VALUES ('{73F91F0F-A595-0E63-06BF-C25519A91305}', 'admin', 'person', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:59:20');
INSERT INTO `il_user_log` VALUES ('{7444B962-4B70-FBB4-496C-D5C4F0370EF6}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:38:26');
INSERT INTO `il_user_log` VALUES ('{74558756-3F08-6251-FD97-5A60A127B1A8}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:28');
INSERT INTO `il_user_log` VALUES ('{74CBEDA8-6160-E4EB-0202-A9C329CF61D4}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:22:35');
INSERT INTO `il_user_log` VALUES ('{74E12116-DEF7-9B8F-309E-D25CD3FFD08D}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:41:14');
INSERT INTO `il_user_log` VALUES ('{758F043D-3FA1-E614-6E22-0A8BB2B35159}', 'admin', 'group', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:16:15');
INSERT INTO `il_user_log` VALUES ('{75EEE902-1D53-3D27-A253-7FB867AAF9ED}', 'admin', 'locator', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:09:28');
INSERT INTO `il_user_log` VALUES ('{76316706-F8CE-BF1B-C291-BE5AE6FB35A6}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:24:21');
INSERT INTO `il_user_log` VALUES ('{763593FA-FB07-CAA6-8255-CB6B5BEC1154}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:52:17');
INSERT INTO `il_user_log` VALUES ('{7640A0ED-4AF2-1E70-DF2D-44B053DDB37C}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:22:23');
INSERT INTO `il_user_log` VALUES ('{7649547E-9C85-929A-577E-BA8C481BAD7F}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:21:15');
INSERT INTO `il_user_log` VALUES ('{76869125-C0A6-E7AF-3C2A-D06A66D8554B}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:47:35');
INSERT INTO `il_user_log` VALUES ('{7698DED3-D704-B705-FA60-CB117F482121}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:39:18');
INSERT INTO `il_user_log` VALUES ('{76A43425-EB6C-71F7-E262-B59AD24F1097}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 12:21:41');
INSERT INTO `il_user_log` VALUES ('{76D9D7A5-9529-587E-5712-08ADB95D506B}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:06:24');
INSERT INTO `il_user_log` VALUES ('{76E6948A-FE3A-D1BE-8FE4-8E36DFD16F76}', 'system', 'user', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:22:19');
INSERT INTO `il_user_log` VALUES ('{7730BE27-E39D-1521-F09C-4466F269A089}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:01:11');
INSERT INTO `il_user_log` VALUES ('{77798F2F-B618-51AB-B0EB-D4387A667FF6}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:11:37');
INSERT INTO `il_user_log` VALUES ('{7780CE42-3C58-00F6-C65B-50EB019C517F}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:48:13');
INSERT INTO `il_user_log` VALUES ('{77944593-CCBD-9A41-181D-8A74662F60DC}', 'admin', 'group', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:48:12');
INSERT INTO `il_user_log` VALUES ('{779A7D9E-8C75-66F6-C0CA-F8455A7FA116}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:46:57');
INSERT INTO `il_user_log` VALUES ('{77CBFFF3-D0A8-7F0C-CC13-7CBB96A00974}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:49:48');
INSERT INTO `il_user_log` VALUES ('{78089F1E-6512-FF0E-C1FC-154505E9C235}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:38:50');
INSERT INTO `il_user_log` VALUES ('{7812634B-6673-EE71-1EAB-4A3751FD5C2D}', 'admin', 'person', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:58:29');
INSERT INTO `il_user_log` VALUES ('{78417817-9F49-E004-8A7B-58FB2DD38A75}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:49:52');
INSERT INTO `il_user_log` VALUES ('{78659BC5-1C8C-E558-9317-382C43B9764C}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:38:22');
INSERT INTO `il_user_log` VALUES ('{787C1D8F-EA3F-F085-1F36-B6988666CB2F}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:52:03');
INSERT INTO `il_user_log` VALUES ('{787F2C19-E3DB-8B40-D380-242C7A458B10}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:12:39');
INSERT INTO `il_user_log` VALUES ('{78B9CFA5-D7B7-0A6B-B755-B9FBD70851B8}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:45:30');
INSERT INTO `il_user_log` VALUES ('{78CEFEAB-694C-DC1C-72AF-9AE3351CC97E}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 11:11:46');
INSERT INTO `il_user_log` VALUES ('{78F91263-F478-446C-1F9C-7DDAB853A021}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:17:26');
INSERT INTO `il_user_log` VALUES ('{79988946-E84F-4360-995B-878001E98DBF}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:58:31');
INSERT INTO `il_user_log` VALUES ('{79D531D8-9D88-C592-4B51-17AE557FDB18}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:06:30');
INSERT INTO `il_user_log` VALUES ('{7A7FE274-0442-F448-2A7E-3DF14AF2CE75}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:26:52');
INSERT INTO `il_user_log` VALUES ('{7A923C83-BA9A-0546-4190-B2C6CA41F79E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:40:36');
INSERT INTO `il_user_log` VALUES ('{7AA6E73F-0063-FB38-B8D6-96A6D85EA512}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:33:31');
INSERT INTO `il_user_log` VALUES ('{7B1B4F6E-31D5-05A0-7B85-F322419A0BD6}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:50:40');
INSERT INTO `il_user_log` VALUES ('{7B840159-D494-6C44-73EA-E2B199654F62}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:36:32');
INSERT INTO `il_user_log` VALUES ('{7BAA249B-4FE9-3B8F-F947-717B6463D86A}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 12:23:22');
INSERT INTO `il_user_log` VALUES ('{7BBEE6B1-8243-81BD-6CF1-203F78F83A0D}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:38:16');
INSERT INTO `il_user_log` VALUES ('{7BCC08A1-320B-FAC0-EBFD-B3F38F372125}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:18:26');
INSERT INTO `il_user_log` VALUES ('{7BDF3C90-65DD-0E7B-CC82-A65AEDD0B71C}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:50:22');
INSERT INTO `il_user_log` VALUES ('{7BFB9351-B089-9C10-1411-1FB5E33BF687}', 'admin', 'locator', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:46:07');
INSERT INTO `il_user_log` VALUES ('{7C0B235F-F4FB-F80A-DAA1-6BA1C1BEEA05}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:41:11');
INSERT INTO `il_user_log` VALUES ('{7C0FC914-D615-C069-F350-384B0028DA33}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:49:12');
INSERT INTO `il_user_log` VALUES ('{7C65EE76-0D76-EB92-B421-E1A819A576EA}', 'admin', 'person', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:49:39');
INSERT INTO `il_user_log` VALUES ('{7C977894-076C-58D8-CC85-CF6B8516177B}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:23:46');
INSERT INTO `il_user_log` VALUES ('{7CB2E31F-4DB8-1298-7478-19E27A13FA9D}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:50:02');
INSERT INTO `il_user_log` VALUES ('{7CBE1442-3B97-6D2F-CB06-66C22918EF74}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:47:37');
INSERT INTO `il_user_log` VALUES ('{7CC0348B-AE98-6BC1-CB7C-05D8BB0656FF}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:49:51');
INSERT INTO `il_user_log` VALUES ('{7CF7812F-531D-E013-102D-E67437CEC791}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:00:51');
INSERT INTO `il_user_log` VALUES ('{7D2355D7-A0A1-F5CD-E0A2-87C66DC2403E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:19:57');
INSERT INTO `il_user_log` VALUES ('{7D446653-7FC2-592B-49EE-12F0A0D99E99}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:28:52');
INSERT INTO `il_user_log` VALUES ('{7D548025-2F86-86E9-BA3E-AD821354E22B}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:05:08');
INSERT INTO `il_user_log` VALUES ('{7D745348-E67B-C600-396D-3020991373D5}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:16:23');
INSERT INTO `il_user_log` VALUES ('{7DA99ABC-13B1-BFB9-8022-7E2872D9A411}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:41:59');
INSERT INTO `il_user_log` VALUES ('{7DC12DA7-EA85-6880-4873-C41585BDEB75}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:35:30');
INSERT INTO `il_user_log` VALUES ('{7DE660C7-BB11-1586-0408-30352BFCD3B3}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:40:32');
INSERT INTO `il_user_log` VALUES ('{7E163049-F0FD-30AD-AA30-8D56660AE777}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 19:59:41');
INSERT INTO `il_user_log` VALUES ('{7E63F6CB-D944-56DF-4A8F-48EA0C77625C}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:11:25');
INSERT INTO `il_user_log` VALUES ('{7EB0E953-1F92-0823-CC8B-D4C961EA8B27}', 'admin', 'locator', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:57:55');
INSERT INTO `il_user_log` VALUES ('{7ECBCD65-9613-450E-5764-3ED243401496}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:37:46');
INSERT INTO `il_user_log` VALUES ('{7EF43975-0E01-4922-089C-D4FE5391D073}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:40:46');
INSERT INTO `il_user_log` VALUES ('{7EF737A8-A58D-CDF7-29A5-DEB2D833A087}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:10');
INSERT INTO `il_user_log` VALUES ('{7EFD1716-419E-7ED5-2A72-981DFAFDC30F}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:17:40');
INSERT INTO `il_user_log` VALUES ('{7F1F28A8-EC6E-0B71-1998-B640B4183657}', 'system', 'node', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:39:02');
INSERT INTO `il_user_log` VALUES ('{7F8BFD01-719A-46F2-AEE0-C2264C0FE515}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:36:43');
INSERT INTO `il_user_log` VALUES ('{7F9B8B61-3CEE-5F1F-C0B3-1DBB876BB927}', 'admin', 'group', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:30:04');
INSERT INTO `il_user_log` VALUES ('{7FBB5739-AE71-E436-D403-76CBB8A4336D}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:06:29');
INSERT INTO `il_user_log` VALUES ('{80ABCC4D-3BDF-936A-BA00-60189C9C745B}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:53:34');
INSERT INTO `il_user_log` VALUES ('{80C22CC9-403E-32AB-95C3-EA55FF224555}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:38:57');
INSERT INTO `il_user_log` VALUES ('{812431C6-C2A0-2126-0ECE-76A2E8A9A551}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 12:25:18');
INSERT INTO `il_user_log` VALUES ('{81DA44BA-885A-1E9A-4C17-27C71A56A569}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:09:55');
INSERT INTO `il_user_log` VALUES ('{82171C06-9960-6EE8-D49B-AA9FDA9492A1}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:48:16');
INSERT INTO `il_user_log` VALUES ('{82197B05-B050-DB0E-6641-23AB53D4A8C2}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:23:16');
INSERT INTO `il_user_log` VALUES ('{829B2B1E-4733-3403-8A93-BFAF45A9AA4D}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:07:51');
INSERT INTO `il_user_log` VALUES ('{82AC1F70-1479-5B78-C245-0F93558B5335}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:41:15');
INSERT INTO `il_user_log` VALUES ('{82AF98E1-0609-9009-D02B-DDA5E24E2D96}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:00:49');
INSERT INTO `il_user_log` VALUES ('{82BCE12B-9299-1276-E7AE-8D6E101C1F60}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:10:23');
INSERT INTO `il_user_log` VALUES ('{82C9D892-2B20-B50F-C090-C83770C11A7C}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:43:51');
INSERT INTO `il_user_log` VALUES ('{82CF15D7-2B39-3909-99ED-59AC65AA3251}', 'system', 'role', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:11:45');
INSERT INTO `il_user_log` VALUES ('{82D1DFA1-D701-70BE-9392-9B68BAB44AD0}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:54:02');
INSERT INTO `il_user_log` VALUES ('{8376C5DB-95D7-3381-A0B6-0A0FD912E2AF}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:22:00');
INSERT INTO `il_user_log` VALUES ('{8382890C-C01E-EED2-5235-6B6BEEBA154B}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:58:40');
INSERT INTO `il_user_log` VALUES ('{8388DBA0-FB7E-02CF-089E-364C7B699149}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:07:21');
INSERT INTO `il_user_log` VALUES ('{83B7EEEF-D313-316B-B4D8-4F229E018BE3}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:29:43');
INSERT INTO `il_user_log` VALUES ('{83CF83F2-19BD-3375-F56B-A8D1FB0DC9BD}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:39:14');
INSERT INTO `il_user_log` VALUES ('{8404E7B4-6204-13A0-4D92-40D425590697}', 'admin', 'person', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:03:57');
INSERT INTO `il_user_log` VALUES ('{843B9449-5847-E729-2724-5E896B06AA76}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:08:17');
INSERT INTO `il_user_log` VALUES ('{844B60B5-241E-5A91-09EF-E9AEB62779FC}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:49:30');
INSERT INTO `il_user_log` VALUES ('{8457E6A4-5A2A-D017-D6AA-D4F91A4BBD9D}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 19:59:32');
INSERT INTO `il_user_log` VALUES ('{84A1478F-B0AA-A5E5-4C27-75434B76E933}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:23:05');
INSERT INTO `il_user_log` VALUES ('{853C9786-CE08-5CF6-2F66-36015BDD7920}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:40:16');
INSERT INTO `il_user_log` VALUES ('{857ECE9D-B53E-2796-055E-5640D339CB5F}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:20:06');
INSERT INTO `il_user_log` VALUES ('{85A1060E-B196-EBB7-6587-5AB52DB56417}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:32:44');
INSERT INTO `il_user_log` VALUES ('{85B2BE02-E80C-7DB0-CC6B-A1C3E50B461F}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:45:38');
INSERT INTO `il_user_log` VALUES ('{860118C3-0C31-6273-147B-531981F7447D}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:48:22');
INSERT INTO `il_user_log` VALUES ('{861FD34A-CBF2-385F-0A49-D13A569C18F7}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:27:23');
INSERT INTO `il_user_log` VALUES ('{86874103-215B-41D2-9EBA-FBCA5D868444}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:58:12');
INSERT INTO `il_user_log` VALUES ('{86E16DE4-A744-2A1F-DC4A-5928B9B96217}', 'admin', 'person', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:58:03');
INSERT INTO `il_user_log` VALUES ('{870208D8-5D9F-8DC3-E8E4-15E781AC64BD}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:54:30');
INSERT INTO `il_user_log` VALUES ('{877F9B1A-F246-F234-B3CD-24FC3E8DF05D}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:23:40');
INSERT INTO `il_user_log` VALUES ('{87D86866-6CF8-72BE-36CB-C0864D9923CC}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:54:42');
INSERT INTO `il_user_log` VALUES ('{87DE27D6-06D9-592A-3AEB-B640EA0EA1F2}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:18:52');
INSERT INTO `il_user_log` VALUES ('{881E1557-7200-A2BE-6CD7-D6B69C153C95}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:04:21');
INSERT INTO `il_user_log` VALUES ('{885C68E0-D49A-4198-2132-4C75062DDE9B}', 'system', 'userlog', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:21:19');
INSERT INTO `il_user_log` VALUES ('{887B4BD4-1DEF-FC0A-C38F-5606ED7A32BB}', 'admin', 'organization', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:50:34');
INSERT INTO `il_user_log` VALUES ('{887E761A-65E6-39AA-2AC4-2A353774698E}', 'admin', 'organization', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:28:22');
INSERT INTO `il_user_log` VALUES ('{88A2FDAB-D3AC-E084-E9A7-6788278F9A69}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:35:19');
INSERT INTO `il_user_log` VALUES ('{88C86C14-9DA4-718B-D40A-DA439ED1D3B2}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:41:39');
INSERT INTO `il_user_log` VALUES ('{88E42E08-2CB1-8B30-F2FF-D0992E7040AD}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:47:42');
INSERT INTO `il_user_log` VALUES ('{88ED5489-7E27-7929-5AC9-E2BFCF1E07F5}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:31:41');
INSERT INTO `il_user_log` VALUES ('{88FD01F5-C021-96A0-CAB1-2A2FF26E50F9}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-14 09:24:47');
INSERT INTO `il_user_log` VALUES ('{8983080B-5AA4-8EBF-F102-86B12C2EEE26}', 'admin', 'person', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:58:45');
INSERT INTO `il_user_log` VALUES ('{898CE04A-5C0C-E64F-DFE2-01F15F376D25}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:40:26');
INSERT INTO `il_user_log` VALUES ('{89BE6646-BE12-65C0-9242-EDA17A90229B}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:42:11');
INSERT INTO `il_user_log` VALUES ('{89D7BCC5-D308-5AC8-DEAA-5D1FE55C5793}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:48:47');
INSERT INTO `il_user_log` VALUES ('{8A54A1DA-35B1-EAA9-9D01-3D0DF30472D1}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:00:29');
INSERT INTO `il_user_log` VALUES ('{8AF64DD0-9B60-6C29-3199-48A60421DBEF}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:23:39');
INSERT INTO `il_user_log` VALUES ('{8AFBE80A-D1EB-61C3-CEF2-42B7AEB4F31F}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:17:03');
INSERT INTO `il_user_log` VALUES ('{8B19E885-C193-506D-D9DA-49E9254C1877}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 13:56:20');
INSERT INTO `il_user_log` VALUES ('{8B873D52-1995-AE7E-A39D-BEF1325CC398}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:01:53');
INSERT INTO `il_user_log` VALUES ('{8BDFAC36-DECB-E6B0-6FAF-231F2C9C020C}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:06:47');
INSERT INTO `il_user_log` VALUES ('{8BEA05E7-8A5D-05F2-B912-7202D35D8F3E}', 'system', 'role', 'authsave', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:19:39');
INSERT INTO `il_user_log` VALUES ('{8C26AF83-A359-3060-47C8-DF60F73F9285}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:37');
INSERT INTO `il_user_log` VALUES ('{8CAE8191-ED05-FF62-E140-2F6B9AB3CB5A}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:59:59');
INSERT INTO `il_user_log` VALUES ('{8CDCA854-75DC-A6A3-D6D1-E76FCC1CA1FD}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 12:22:50');
INSERT INTO `il_user_log` VALUES ('{8D0FE014-289B-ABFB-733D-EBE8AABB68E3}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:58:54');
INSERT INTO `il_user_log` VALUES ('{8D30C373-EBE3-DE1B-4E21-CFE3F9707530}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:58:31');
INSERT INTO `il_user_log` VALUES ('{8D58675B-03C7-4928-F507-6A9A1B6FF03C}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:38:10');
INSERT INTO `il_user_log` VALUES ('{8D62839D-99E4-BBAE-7DC2-AAB8DDB4F991}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:04:26');
INSERT INTO `il_user_log` VALUES ('{8D88DD39-5C26-2577-81F9-E4BD47518824}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:03:06');
INSERT INTO `il_user_log` VALUES ('{8D9ED3F5-DC2B-1398-8A43-E8120E0385C4}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:08:54');
INSERT INTO `il_user_log` VALUES ('{8E0B9848-EC3B-D8F8-47DA-5DE8339F6213}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:04:20');
INSERT INTO `il_user_log` VALUES ('{8E4DD0BA-AD16-2DB1-9D24-DC70E2579F72}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:36:56');
INSERT INTO `il_user_log` VALUES ('{8E5173F8-1FA2-E378-F30C-9DC69537F403}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:41:07');
INSERT INTO `il_user_log` VALUES ('{8E59C11E-4589-F72B-DEE6-C677E2408025}', 'admin', 'group', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:16:22');
INSERT INTO `il_user_log` VALUES ('{8E5FCB34-CCDB-E0D8-EF45-D0003E34362C}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:44:31');
INSERT INTO `il_user_log` VALUES ('{8E6B95AB-007F-1DD1-1D8F-E3360AAA67CF}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:04:40');
INSERT INTO `il_user_log` VALUES ('{8E847933-744A-3E33-4750-939771B37651}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:42');
INSERT INTO `il_user_log` VALUES ('{8E934D2E-21B9-126E-FF34-5EEACB5E8B19}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:11:56');
INSERT INTO `il_user_log` VALUES ('{8E9B4B7D-4F95-1806-2E54-4D94214E18D2}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 11:11:58');
INSERT INTO `il_user_log` VALUES ('{8EA32CAE-4EA4-7AA9-EE11-FCF59AAF1EFB}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:28:41');
INSERT INTO `il_user_log` VALUES ('{8F0BA409-1095-5CA6-1717-F3D8B7961838}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:48:41');
INSERT INTO `il_user_log` VALUES ('{8F307610-DF26-7116-CA5A-20627B0DD044}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:34:43');
INSERT INTO `il_user_log` VALUES ('{8F36C31B-3B41-8D57-78DB-343142A2FBA9}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:10:19');
INSERT INTO `il_user_log` VALUES ('{8F829760-F8AB-A9DF-489D-412F7CC7E3DD}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:48:22');
INSERT INTO `il_user_log` VALUES ('{8F999F78-715F-E1C7-0575-6DD2194C6E6E}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:23:19');
INSERT INTO `il_user_log` VALUES ('{8FA27739-C523-EEA0-6D19-6E3C0CC14308}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:19:15');
INSERT INTO `il_user_log` VALUES ('{8FB8ED32-B8D8-4805-6699-113FA497CD9D}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:29:41');
INSERT INTO `il_user_log` VALUES ('{8FCD98AD-DFD9-3945-A42B-AA8361BD925F}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:49:03');
INSERT INTO `il_user_log` VALUES ('{901328D9-AAA2-9253-D3D4-7DBD72818C20}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:20:54');
INSERT INTO `il_user_log` VALUES ('{90520E44-A402-1B1F-FC56-B6D386349BA6}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:31:22');
INSERT INTO `il_user_log` VALUES ('{9057F570-7798-493F-F7EE-749E6ED20A90}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 11:12:04');
INSERT INTO `il_user_log` VALUES ('{90612712-616E-4D98-8F11-51AE69C3CCA0}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:28:51');
INSERT INTO `il_user_log` VALUES ('{90735F13-C095-EB4E-6EF5-3CD2B448B6DD}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:23:05');
INSERT INTO `il_user_log` VALUES ('{907715A4-890D-8415-1518-D6EB78D57783}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:22:13');
INSERT INTO `il_user_log` VALUES ('{90EA33E8-12A2-D9BB-F5BE-37EE4B80734C}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:46:45');
INSERT INTO `il_user_log` VALUES ('{9132334C-0605-8760-E218-6DC5EFC83843}', 'system', 'user', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:12:57');
INSERT INTO `il_user_log` VALUES ('{9147F12C-4F99-01EE-9B9D-4EA8CD4DEA7C}', 'admin', 'building', 'index', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:20:22');
INSERT INTO `il_user_log` VALUES ('{91482BB4-1649-8DFC-562D-D525905B59BB}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:54:40');
INSERT INTO `il_user_log` VALUES ('{91E76B85-FA28-DC31-5DEE-8482D3E9FDA4}', 'admin', 'person', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:44:11');
INSERT INTO `il_user_log` VALUES ('{9206077E-6A89-85AD-72FA-7C8F10D6A8A9}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:04:42');
INSERT INTO `il_user_log` VALUES ('{921BA1FB-7978-2C30-D3C2-D1FD23EB4611}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 16:56:01');
INSERT INTO `il_user_log` VALUES ('{9238B2A4-F8BF-DEF2-1932-CDA5E9D1D980}', 'system', 'role', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:04:19');
INSERT INTO `il_user_log` VALUES ('{923D67E1-8AA5-5589-29D9-A338CBE2953D}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:40:44');
INSERT INTO `il_user_log` VALUES ('{926D782C-16F6-343A-AAAD-0D402004024A}', 'admin', 'localequipment', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:58:58');
INSERT INTO `il_user_log` VALUES ('{92B4E2DC-BAF2-9A8C-2F51-9CBBA0430F65}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:47:13');
INSERT INTO `il_user_log` VALUES ('{92BDB6B4-80F9-EFD6-A373-ACDEE4F4D49D}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:58:34');
INSERT INTO `il_user_log` VALUES ('{92C901ED-A83B-F1E0-4AEA-42E0740F128E}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:24:02');
INSERT INTO `il_user_log` VALUES ('{92CC6E3C-8F7D-C869-2369-14FCFEB98900}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:04:22');
INSERT INTO `il_user_log` VALUES ('{9324D5E1-D0AF-C892-44D7-305A4979EE0D}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:39:02');
INSERT INTO `il_user_log` VALUES ('{9359A48E-A63B-7EC6-A135-312CAE61B6EF}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:30:38');
INSERT INTO `il_user_log` VALUES ('{93A49FAF-374C-6375-8476-36C14E99761A}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:38:21');
INSERT INTO `il_user_log` VALUES ('{93B6E1EB-3A0B-A8BF-1391-EC1AE2A1F0C7}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:25:27');
INSERT INTO `il_user_log` VALUES ('{93D9F8F3-35E1-F776-EAE0-201391C490DD}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:39:07');
INSERT INTO `il_user_log` VALUES ('{93DFF378-2DE6-2201-C653-8B292E138063}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:18:45');
INSERT INTO `il_user_log` VALUES ('{93FB2307-EF70-823C-DD7E-F6443354EEA2}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:02:15');
INSERT INTO `il_user_log` VALUES ('{940F9EE3-077D-29A5-7014-8A73299A9678}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:11:13');
INSERT INTO `il_user_log` VALUES ('{9417FA06-677F-8723-6E99-46B4870425F4}', 'admin', 'group', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:48:23');
INSERT INTO `il_user_log` VALUES ('{942DE3EB-2FD6-3367-714E-C927DD08B354}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:56:23');
INSERT INTO `il_user_log` VALUES ('{94421F58-C0FA-ED06-2203-07A43B4151A0}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:33:11');
INSERT INTO `il_user_log` VALUES ('{949075E4-C536-15F5-EDEB-5CA4560C3DA0}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 17:53:11');
INSERT INTO `il_user_log` VALUES ('{94AB7042-4FF0-4018-C86F-23C86118555C}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:57:59');
INSERT INTO `il_user_log` VALUES ('{94E915E2-6DEF-E24B-46EF-9F6616D4C9C0}', 'admin', 'person', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:52:19');
INSERT INTO `il_user_log` VALUES ('{94E96AFB-8879-FAD1-8EA1-8305D4A53781}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:21:07');
INSERT INTO `il_user_log` VALUES ('{94EC303B-8FE2-3C99-5DF4-45A9C50C5976}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:23:14');
INSERT INTO `il_user_log` VALUES ('{9508C6C0-37C6-4314-4894-DBBDE2708CF2}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:10:04');
INSERT INTO `il_user_log` VALUES ('{952E1FF5-09F8-718D-62FA-89200FC99E7E}', 'admin', 'localequipment', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:59:02');
INSERT INTO `il_user_log` VALUES ('{956FC4CB-0294-94D1-B67C-B7E06901BAA7}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:06:24');
INSERT INTO `il_user_log` VALUES ('{960A38B5-F580-6E00-34BA-823407745EA9}', 'admin', 'groupperson', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:04:09');
INSERT INTO `il_user_log` VALUES ('{962AE096-FBAC-17E3-7318-EE7AB1C89402}', 'admin', 'organization', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:13:06');
INSERT INTO `il_user_log` VALUES ('{962EC3B2-6B44-8B5F-38D3-3A78EE00F313}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:47:08');
INSERT INTO `il_user_log` VALUES ('{965F625E-271E-9FE4-A256-4BB70FCA5AC5}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:56:00');
INSERT INTO `il_user_log` VALUES ('{9665CF50-1D94-9F91-A1CF-6CC7219486BC}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:37:45');
INSERT INTO `il_user_log` VALUES ('{966B703C-8EA7-0622-CAC3-321FE13DA768}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:17:53');
INSERT INTO `il_user_log` VALUES ('{969C7258-B693-3372-EAD1-C5868B056277}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:45:22');
INSERT INTO `il_user_log` VALUES ('{96D4913A-F5EB-F44A-FCAD-302F9CE3CE4C}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:09:27');
INSERT INTO `il_user_log` VALUES ('{97642C87-F30E-761C-234F-23866E867E43}', 'admin', 'outfirefacility', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:47:26');
INSERT INTO `il_user_log` VALUES ('{9774CBED-E6E0-862B-5B86-9B30AE690FEB}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:21:53');
INSERT INTO `il_user_log` VALUES ('{9796AE09-8672-85DC-70DF-DC943806C4B7}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:08:35');
INSERT INTO `il_user_log` VALUES ('{979F0823-87BC-2219-B32F-70494A3908A9}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:05:41');
INSERT INTO `il_user_log` VALUES ('{97E9F0E3-6AE5-B8AB-FF8F-556E96B7F75E}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:15:39');
INSERT INTO `il_user_log` VALUES ('{9892FF1A-2E4C-9A14-009C-BBBFCFC5A567}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:47:38');
INSERT INTO `il_user_log` VALUES ('{98A39B8B-96A4-37FA-FFC7-003DA55F6C9C}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-11 10:23:41');
INSERT INTO `il_user_log` VALUES ('{98B4457A-B35A-D4D0-52D0-C4D1ECFA9A72}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:05:13');
INSERT INTO `il_user_log` VALUES ('{98D911F2-9BDC-1F4C-F409-04FF64DE8B75}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 12:23:47');
INSERT INTO `il_user_log` VALUES ('{99ADF713-7B5D-840C-0D1A-41ABAF4AAACC}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:29:03');
INSERT INTO `il_user_log` VALUES ('{99F47AF5-E339-6A23-B644-1C8AA262DBF2}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:10:29');
INSERT INTO `il_user_log` VALUES ('{9A302890-8D67-16FC-5CCC-80979679109A}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:29:15');
INSERT INTO `il_user_log` VALUES ('{9A795812-144D-9AF0-9128-0BBEE66B647B}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:53:53');
INSERT INTO `il_user_log` VALUES ('{9A7C8B24-959D-5466-56A2-E05868EE3323}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:54:07');
INSERT INTO `il_user_log` VALUES ('{9A8861C1-C499-63C7-A60C-2DE684CE0EB4}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:52:10');
INSERT INTO `il_user_log` VALUES ('{9A9EA95B-3464-C2CF-3746-0004BB5A3BA9}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 09:35:12');
INSERT INTO `il_user_log` VALUES ('{9AA4BC9A-2E3A-2EB3-063B-43986E21E99E}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:25:31');
INSERT INTO `il_user_log` VALUES ('{9AB68FCF-4DF9-2753-B61D-5133E774BB9A}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:09:51');
INSERT INTO `il_user_log` VALUES ('{9ABC0BB0-9A42-59FF-3D89-83B79F279F6A}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:55:53');
INSERT INTO `il_user_log` VALUES ('{9AE4E610-2C8B-5A21-3D8B-A49C4E73B77E}', 'admin', 'index', 'index', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:17:03');
INSERT INTO `il_user_log` VALUES ('{9AE5A5C1-E055-25B7-F49F-4465956F2C9B}', 'system', 'user', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:41:12');
INSERT INTO `il_user_log` VALUES ('{9B3E4665-6555-C18E-1672-BA59AC083C83}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:47:54');
INSERT INTO `il_user_log` VALUES ('{9B975588-D064-F8CB-A3FE-4D38E9DE0C49}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:48:35');
INSERT INTO `il_user_log` VALUES ('{9BA78134-A348-3E20-EAFB-15EFBF9E6613}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:52:42');
INSERT INTO `il_user_log` VALUES ('{9C0726D7-D461-C0FC-8EDF-FFD7E08C5B2E}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:33:24');
INSERT INTO `il_user_log` VALUES ('{9C0AA849-E2E2-0BC9-A1B4-333ACCAA9983}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:10:33');
INSERT INTO `il_user_log` VALUES ('{9C37456D-C11E-3113-E953-702E0E458ACE}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:48:22');
INSERT INTO `il_user_log` VALUES ('{9C3AB083-0226-3AE0-8CA7-26DA8D0298CF}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:10:33');
INSERT INTO `il_user_log` VALUES ('{9C4AB01A-55A4-AB97-10BC-A44E515D5661}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:16:20');
INSERT INTO `il_user_log` VALUES ('{9C74C4D4-B161-C03B-BC74-C4965CF60335}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:54:04');
INSERT INTO `il_user_log` VALUES ('{9C8BF951-9420-9B67-E4A8-517F223562DA}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:07:12');
INSERT INTO `il_user_log` VALUES ('{9C986C85-2C9F-B401-E3BB-D4A1B32C9B78}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:27:50');
INSERT INTO `il_user_log` VALUES ('{9CA239D1-C240-A0C2-53AF-5B0194D97923}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:01:32');
INSERT INTO `il_user_log` VALUES ('{9CAB6DC6-635E-F08B-E9E6-805C8F8B0059}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:49:11');
INSERT INTO `il_user_log` VALUES ('{9CB38F7E-4000-405A-1BA2-1465B9E3A317}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:28:11');
INSERT INTO `il_user_log` VALUES ('{9CC78B4A-776B-A7EE-4379-4AEE338502DA}', 'admin', 'locationmark', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:13:25');
INSERT INTO `il_user_log` VALUES ('{9D042A55-4DE7-ABE6-43F9-45F2CC336D49}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:57:47');
INSERT INTO `il_user_log` VALUES ('{9D0BC81C-0C59-0073-EDF9-251BAB70B9ED}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:43:32');
INSERT INTO `il_user_log` VALUES ('{9D6AF5A9-FFFD-D954-4922-97C780B0D08C}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:04:27');
INSERT INTO `il_user_log` VALUES ('{9DCF2A6C-8AA9-96AA-C7CA-CFEACF2CBE0A}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:14:35');
INSERT INTO `il_user_log` VALUES ('{9DD4E012-3295-FCC2-81BE-4A4EC5360F91}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:45:04');
INSERT INTO `il_user_log` VALUES ('{9DFE3B5E-742C-9795-3D00-3EF7C70A4B46}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:42:06');
INSERT INTO `il_user_log` VALUES ('{9E4B4FEA-F10C-442D-C23F-5A7435F25367}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:09:48');
INSERT INTO `il_user_log` VALUES ('{9E66F07B-4447-E706-1DF0-BBFC876DF96C}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:23:43');
INSERT INTO `il_user_log` VALUES ('{9E87819D-593A-C03B-B697-05A5141E6AE7}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:00:04');
INSERT INTO `il_user_log` VALUES ('{9E8BA978-8FB8-0FF0-5B29-5A464C9F196F}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 16:39:17');
INSERT INTO `il_user_log` VALUES ('{9F15F3E5-6417-49BA-8FE1-E714E3446CE7}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:27:47');
INSERT INTO `il_user_log` VALUES ('{9F20CAE7-63A2-ECC9-067A-3B1A7B480126}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:12:16');
INSERT INTO `il_user_log` VALUES ('{9F3A54A1-2F93-721B-D7CE-C4CD7DE4D6B8}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:14:10');
INSERT INTO `il_user_log` VALUES ('{9F6D0FEB-3D39-21A4-B6D2-FC1A12F3A16A}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:07:36');
INSERT INTO `il_user_log` VALUES ('{9F7DBF7C-E851-BB33-9374-4F8FF7D7D4A2}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:12:30');
INSERT INTO `il_user_log` VALUES ('{9FBCD66B-1740-5F1D-46AC-6487E4714427}', 'admin', 'locator', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:09:42');
INSERT INTO `il_user_log` VALUES ('{A00AD9B1-61C7-B6A5-7B32-D541B7DF09DA}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:59:05');
INSERT INTO `il_user_log` VALUES ('{A08EDDFD-3B51-E579-9D56-AF7080EA7926}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:30:14');
INSERT INTO `il_user_log` VALUES ('{A1226DA7-B517-0E29-739F-E0AE6BB48805}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:04:27');
INSERT INTO `il_user_log` VALUES ('{A12320B0-F722-F189-14E3-BF65A3CED022}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:51:20');
INSERT INTO `il_user_log` VALUES ('{A12A1A1D-B67A-8D56-E919-7F7E12ABE06E}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:29:12');
INSERT INTO `il_user_log` VALUES ('{A15B8E6C-720C-9E01-A513-1E7438AE9F26}', 'admin', 'person', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:54:07');
INSERT INTO `il_user_log` VALUES ('{A1746DF0-0D69-B69C-C669-B3194C5952A3}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:34:27');
INSERT INTO `il_user_log` VALUES ('{A1B228BB-E11B-0E18-CD23-818701FBA7AD}', 'admin', 'organization', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:28:09');
INSERT INTO `il_user_log` VALUES ('{A248DEB6-220A-3F11-30C0-85AD767A6CA4}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:46:44');
INSERT INTO `il_user_log` VALUES ('{A256AFEB-3E7D-9AAE-E0E2-F5555D026AF6}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:19:41');
INSERT INTO `il_user_log` VALUES ('{A2AD50E9-AAFF-35D6-E710-665ADBEB6F26}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:39:30');
INSERT INTO `il_user_log` VALUES ('{A31BE320-1925-9008-C29A-D4DD2072FBF6}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:52:05');
INSERT INTO `il_user_log` VALUES ('{A32E2619-8463-9CB5-76C5-53899A3653D2}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:08:31');
INSERT INTO `il_user_log` VALUES ('{A35F7FD5-B3C6-E7D8-610C-C1DAA04AC16C}', 'system', 'user', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:15:36');
INSERT INTO `il_user_log` VALUES ('{A3EE95D6-0139-9E12-FACE-79FC4B5F7084}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:33:32');
INSERT INTO `il_user_log` VALUES ('{A3F812E2-8F43-AF9E-64E5-0D2710192907}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:47:58');
INSERT INTO `il_user_log` VALUES ('{A40D7C95-0BDF-CF6B-E91A-105FD5960DAF}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:51:45');
INSERT INTO `il_user_log` VALUES ('{A446748F-E016-28CD-4C6D-6217F6FB0AD3}', 'system', 'userlog', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:43');
INSERT INTO `il_user_log` VALUES ('{A44DD25C-DF97-71E4-BE82-C1B29CA0D2FA}', 'admin', 'group', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:18:57');
INSERT INTO `il_user_log` VALUES ('{A4543696-4F01-08B6-ABB7-53E1C8D6F542}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:12:31');
INSERT INTO `il_user_log` VALUES ('{A460D588-346E-499A-69C7-59CF01837ED6}', 'admin', 'organization', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:07:51');
INSERT INTO `il_user_log` VALUES ('{A4A5E326-BBD7-DEF2-50A1-03ACD1900D57}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:03:15');
INSERT INTO `il_user_log` VALUES ('{A4C3E65F-C004-34EA-E2B3-432EC8511B01}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:11:30');
INSERT INTO `il_user_log` VALUES ('{A4C402A9-FFE0-8CFA-007F-D435AF5A0F44}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:56:53');
INSERT INTO `il_user_log` VALUES ('{A5147CB7-D518-3545-A59F-1F19B9BA3727}', 'admin', 'outfirefacility', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:43:36');
INSERT INTO `il_user_log` VALUES ('{A5371DD3-66B3-A3A1-9023-0547445535FB}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:06:55');
INSERT INTO `il_user_log` VALUES ('{A54C21D0-7CD6-2476-2E9C-21F264C5C57E}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:06:28');
INSERT INTO `il_user_log` VALUES ('{A55972B8-B4BB-68D7-4F83-9E677B502CA7}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:18:59');
INSERT INTO `il_user_log` VALUES ('{A576514C-2751-E718-EC56-F173743C6C7D}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:23:48');
INSERT INTO `il_user_log` VALUES ('{A5C68715-5222-C77F-04E5-6929ED72D076}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:02:16');
INSERT INTO `il_user_log` VALUES ('{A5CA2CB4-3FE3-E279-6371-D284D80E3936}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:47');
INSERT INTO `il_user_log` VALUES ('{A5CC21F5-D1BC-7FA1-E295-38AD02FE5B4F}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:14:25');
INSERT INTO `il_user_log` VALUES ('{A60F13E9-E2BD-34C6-0660-5F725D3D962D}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:20:14');
INSERT INTO `il_user_log` VALUES ('{A63D5DE9-840E-2983-F05B-40A19C20D77C}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:07:58');
INSERT INTO `il_user_log` VALUES ('{A66650CE-5D83-BA47-C25F-D67D82D5415C}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:46:09');
INSERT INTO `il_user_log` VALUES ('{A66817B8-FD5D-01EB-8DAD-96D55FD33A23}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:47:04');
INSERT INTO `il_user_log` VALUES ('{A6732ADB-15AB-7D50-CB0A-9982DDB0C6DE}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:07:45');
INSERT INTO `il_user_log` VALUES ('{A6ADA68B-D564-AB52-B5B4-8353B1EBDA7A}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:09:16');
INSERT INTO `il_user_log` VALUES ('{A6B77AE4-D292-9911-DD8B-0710C4FB8751}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:52:52');
INSERT INTO `il_user_log` VALUES ('{A6EC8214-41F3-D6D2-A6AC-97E3C9E146C4}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:23:03');
INSERT INTO `il_user_log` VALUES ('{A72B638C-98DA-DF74-E2E5-7DA6703423DE}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:31:24');
INSERT INTO `il_user_log` VALUES ('{A751174B-5000-28BE-2FBA-51E8564F4BAF}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:44:07');
INSERT INTO `il_user_log` VALUES ('{A774860F-8952-22CC-6A87-2EE0A4807D35}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:19:45');
INSERT INTO `il_user_log` VALUES ('{A7B95463-FE99-47FE-15D0-5953699E41D9}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:50:20');
INSERT INTO `il_user_log` VALUES ('{A8379E8B-195F-0211-8F2C-A5CC3EAABDC6}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:04:33');
INSERT INTO `il_user_log` VALUES ('{A84044BA-9430-8225-FB0C-BC6EF5F71BA1}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:01:24');
INSERT INTO `il_user_log` VALUES ('{A8516CFC-1390-0B35-0A18-437B0B3ED7C2}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:03:25');
INSERT INTO `il_user_log` VALUES ('{A86F2728-36BB-2E14-7466-CA38359254EF}', 'admin', 'person', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:31:41');
INSERT INTO `il_user_log` VALUES ('{A8BEE890-9F75-2995-EEFF-CAF97FB1615C}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:39:11');
INSERT INTO `il_user_log` VALUES ('{A90B09A2-7B68-DDCB-320E-094369A1FF82}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:34:30');
INSERT INTO `il_user_log` VALUES ('{A95EC795-B39D-A889-6F9E-54111940B368}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:04:24');
INSERT INTO `il_user_log` VALUES ('{A966D1E2-D1A0-7E68-E6E5-95625BFB5F09}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 12:23:42');
INSERT INTO `il_user_log` VALUES ('{A978EADD-211C-5757-0EB1-352AE0D59F5C}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:54:37');
INSERT INTO `il_user_log` VALUES ('{A99C5E0E-21FC-6247-711C-3B61AB2460D7}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:01:17');
INSERT INTO `il_user_log` VALUES ('{A9CBBA15-12F6-A177-330B-FC47BB8C03CA}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:30:50');
INSERT INTO `il_user_log` VALUES ('{A9D2729D-F440-612C-010F-94FE129B07E4}', 'system', 'node', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:21:58');
INSERT INTO `il_user_log` VALUES ('{A9DE50E0-8475-BC26-12D3-2FADDF0AE244}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:45:14');
INSERT INTO `il_user_log` VALUES ('{A9E1DCAD-7725-E2F4-AE4E-DB8243227FD2}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:59:18');
INSERT INTO `il_user_log` VALUES ('{AA09B802-CB4D-FEB4-BCDB-5F5B88DE12E3}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:55:57');
INSERT INTO `il_user_log` VALUES ('{AA32F131-439C-6F18-DC0C-8A01F0B38725}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:48:46');
INSERT INTO `il_user_log` VALUES ('{AA3F981E-7154-BEDB-94C3-FA089AD4ED73}', 'admin', 'organization', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:42:23');
INSERT INTO `il_user_log` VALUES ('{AA8C0D8D-E6BE-5C12-33B5-482CC4FC0B8D}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:58:00');
INSERT INTO `il_user_log` VALUES ('{AB30E4B7-1848-1A9F-9CA1-FEAAC4F7F2A1}', 'system', 'role', 'authsave', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:43:28');
INSERT INTO `il_user_log` VALUES ('{AB38C457-D590-77F0-EE64-E5FF11E508D2}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:50:25');
INSERT INTO `il_user_log` VALUES ('{AB41C1BA-25FC-3B6F-2134-724C3A7B332C}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:15:38');
INSERT INTO `il_user_log` VALUES ('{AB49D286-8CAD-0FB5-15DA-38451F203068}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-09 15:26:42');
INSERT INTO `il_user_log` VALUES ('{AC235E34-DE18-B2B2-2E0A-E78FD84FC092}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:19:57');
INSERT INTO `il_user_log` VALUES ('{AC4C6C27-1249-8F40-81DC-6ECCBA088258}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:07:48');
INSERT INTO `il_user_log` VALUES ('{AC67F3A3-E0AF-D6C8-FEE8-9CE0B75B822F}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:42:17');
INSERT INTO `il_user_log` VALUES ('{AC823DC7-3CAB-6846-1A6C-B1D0697910C6}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:52:54');
INSERT INTO `il_user_log` VALUES ('{AC8A8D43-E3BB-B737-E920-8F62A7169BB1}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:12:10');
INSERT INTO `il_user_log` VALUES ('{AC979A4F-5DBB-016A-AD2E-D7D1DAD57674}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:41:04');
INSERT INTO `il_user_log` VALUES ('{ACAC8168-1948-BA09-0F3F-6F0BC4E4C93E}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:52:25');
INSERT INTO `il_user_log` VALUES ('{ACDCAABE-1C03-CB43-E254-4BD6CD58CFC7}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:44:27');
INSERT INTO `il_user_log` VALUES ('{ACE32CCD-597B-27DC-CFD4-C5EBC7B4B5E3}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:35:33');
INSERT INTO `il_user_log` VALUES ('{ACEA8184-4EA9-E574-FF85-4160EAD69CBA}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:55:07');
INSERT INTO `il_user_log` VALUES ('{AD66801B-0A20-D4AF-680B-BACCB1D3D02B}', 'system', 'userlog', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:43:02');
INSERT INTO `il_user_log` VALUES ('{AD6AAEBD-5E37-F3D1-850D-A267FEA961CD}', 'admin', 'person', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:37:16');
INSERT INTO `il_user_log` VALUES ('{AD96E280-D8E9-20D2-8E8C-1C9C265B07A4}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:38:48');
INSERT INTO `il_user_log` VALUES ('{AE35E4E0-864A-DB0A-3B00-E6C65C3464CB}', 'admin', 'organization', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:33:22');
INSERT INTO `il_user_log` VALUES ('{AE603458-CC8F-64AE-5545-2E7A46B0930C}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:59:39');
INSERT INTO `il_user_log` VALUES ('{AE775B46-8B15-157C-90F6-3EFA7F99600F}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:07:20');
INSERT INTO `il_user_log` VALUES ('{AE7A0264-6622-6AD8-69E4-A38DAEA31EDD}', 'system', 'role', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:25:24');
INSERT INTO `il_user_log` VALUES ('{AE8EE60B-942B-97C7-7B44-1D305EFECA8D}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:09:54');
INSERT INTO `il_user_log` VALUES ('{AE9A89DD-4F92-8DDD-9D7A-EBFD029F2872}', 'admin', 'floor', 'index', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:20:25');
INSERT INTO `il_user_log` VALUES ('{AEB782B2-87D2-3CAB-BBA5-90E5A1C2635C}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 10:58:13');
INSERT INTO `il_user_log` VALUES ('{AED008E5-5930-03C2-7245-24E88DC1C225}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:16:23');
INSERT INTO `il_user_log` VALUES ('{AED8F042-AAF6-47A1-1582-833B73D9FA67}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:51:25');
INSERT INTO `il_user_log` VALUES ('{AEE10AB4-CE3F-7B4F-BE5D-BD18A1CCF8A0}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:06:11');
INSERT INTO `il_user_log` VALUES ('{AF56F73D-D63B-0465-162C-3B12C984DC4C}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:33:08');
INSERT INTO `il_user_log` VALUES ('{AF6D3AAD-073B-6F77-0B33-7C6E3CD23D38}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:15:39');
INSERT INTO `il_user_log` VALUES ('{AF83B656-D06A-194B-7F8C-54CEA99C94C7}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:16:16');
INSERT INTO `il_user_log` VALUES ('{AFA207C6-4590-2E20-531B-E5E1025C1A6F}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:59:22');
INSERT INTO `il_user_log` VALUES ('{AFD0EFA7-7C19-47A6-60B8-B0E58BC26AD7}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:47:24');
INSERT INTO `il_user_log` VALUES ('{AFED6E4F-F5FA-4D3D-5908-9E78A93CDB3A}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:20:34');
INSERT INTO `il_user_log` VALUES ('{B01426A3-CAF6-4695-CB36-5B5E70E2297C}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:01:54');
INSERT INTO `il_user_log` VALUES ('{B05B27EC-C664-97A8-07C2-2476D27D47A0}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:34:09');
INSERT INTO `il_user_log` VALUES ('{B064B92F-28CB-D2AD-29AB-EA3AF7E79137}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:43:52');
INSERT INTO `il_user_log` VALUES ('{B0E8DD03-E21B-6648-FBCE-4A4507AD7F9F}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:48:26');
INSERT INTO `il_user_log` VALUES ('{B10DC210-76D4-4A94-E003-1FA8F4E4AC25}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:16:17');
INSERT INTO `il_user_log` VALUES ('{B1229FE3-D6B9-45EB-875E-485E4D9E9FB2}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:11:04');
INSERT INTO `il_user_log` VALUES ('{B12E3CF9-141A-C260-7666-B8DE11BF32C0}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:40:56');
INSERT INTO `il_user_log` VALUES ('{B148EDF5-1960-C613-BB87-2DB2398CEEDA}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:24:19');
INSERT INTO `il_user_log` VALUES ('{B1665D95-85FA-F3F4-D702-D58BA5369B03}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:23:17');
INSERT INTO `il_user_log` VALUES ('{B17C0125-2EDF-7CFF-FB86-0F100FCEECCA}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:54:37');
INSERT INTO `il_user_log` VALUES ('{B1C85C33-3917-5FF6-7303-327F312E578B}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:58:32');
INSERT INTO `il_user_log` VALUES ('{B22A938C-17F4-B12A-CABC-008669F68AF9}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:23:29');
INSERT INTO `il_user_log` VALUES ('{B2367607-165A-EEF2-5A20-1D2AE5741A98}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:49:41');
INSERT INTO `il_user_log` VALUES ('{B25CB379-8C9A-414E-23B9-AC19D1997B78}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:05:26');
INSERT INTO `il_user_log` VALUES ('{B2633DA5-2C5F-9508-40C6-F4080739C30A}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:44:38');
INSERT INTO `il_user_log` VALUES ('{B2660B98-6AE5-9CBB-56A8-E7EF2807E303}', 'admin', 'person', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:57:46');
INSERT INTO `il_user_log` VALUES ('{B26B490B-6EA4-D170-01BF-FEB594F11FAF}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:03:16');
INSERT INTO `il_user_log` VALUES ('{B26FA8C6-031C-40E2-46C5-924A5EE28192}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:43:24');
INSERT INTO `il_user_log` VALUES ('{B2A40321-1E5F-E654-5FD9-98F3EE527F33}', 'admin', 'localequipment', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:58:38');
INSERT INTO `il_user_log` VALUES ('{B2AFE5D8-300A-3F67-1055-9D49C743DC0D}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:53:16');
INSERT INTO `il_user_log` VALUES ('{B2D837DF-DB98-D098-15B8-006E789D44DB}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:49:48');
INSERT INTO `il_user_log` VALUES ('{B3115D52-976A-3B91-23E5-189720D48B5F}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:17:32');
INSERT INTO `il_user_log` VALUES ('{B37184C0-10EC-6098-080D-A6608144B26E}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:02:20');
INSERT INTO `il_user_log` VALUES ('{B3D5B05E-5CBE-ED4C-C119-58C48043DFFE}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:06:51');
INSERT INTO `il_user_log` VALUES ('{B3DA039B-E7C4-AC8F-E324-833CBE55AEE9}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:42:59');
INSERT INTO `il_user_log` VALUES ('{B3F81CE3-9BDB-5BE7-93A8-619240305FAC}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:18:33');
INSERT INTO `il_user_log` VALUES ('{B439BCF8-4B3C-D8B7-5AB2-87926365C69D}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:06:04');
INSERT INTO `il_user_log` VALUES ('{B49097E5-D477-E01F-9C91-719BB0FB30A9}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:58:01');
INSERT INTO `il_user_log` VALUES ('{B4A761E3-E803-39C1-9EE6-BBE59687EC23}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:41:19');
INSERT INTO `il_user_log` VALUES ('{B4E5DFD9-93CE-A5DF-FBAA-1490E3B4C0A4}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:11:28');
INSERT INTO `il_user_log` VALUES ('{B524B3A9-1DEC-C21C-B11D-187CF246A52C}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:51:20');
INSERT INTO `il_user_log` VALUES ('{B56076ED-6887-BEA2-1E6B-E954990C7963}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:41:14');
INSERT INTO `il_user_log` VALUES ('{B5823C70-0227-18BD-1225-64B18518B43F}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:09:43');
INSERT INTO `il_user_log` VALUES ('{B5A6BC33-E581-C9E2-ABB2-F86195C0367A}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 15:15:25');
INSERT INTO `il_user_log` VALUES ('{B5B6868E-BAC4-DC93-ACD3-AA33F34B7A84}', 'admin', 'person', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:04:20');
INSERT INTO `il_user_log` VALUES ('{B5D0EE5E-F51C-2051-570E-3DA267C30545}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:42:02');
INSERT INTO `il_user_log` VALUES ('{B5D5E907-C777-FB72-5975-E6B42FA00C49}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:23:23');
INSERT INTO `il_user_log` VALUES ('{B5D6ED0E-C45A-B6B6-177E-D423D10E218E}', 'admin', 'person', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:57:59');
INSERT INTO `il_user_log` VALUES ('{B5DAB48A-5830-0510-659E-BE293B9A9925}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:17:45');
INSERT INTO `il_user_log` VALUES ('{B63128BE-41B9-81C3-5AA1-D7153C8A1ABE}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:07:06');
INSERT INTO `il_user_log` VALUES ('{B65469D3-D098-C572-ADAC-5E3091A3B1DF}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:47:06');
INSERT INTO `il_user_log` VALUES ('{B6681C46-8998-F5A8-A4CE-A650CCC9CCB6}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:48:59');
INSERT INTO `il_user_log` VALUES ('{B688D045-1243-EF92-C10F-EACFB762D537}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:38:40');
INSERT INTO `il_user_log` VALUES ('{B69B535A-1A49-659F-DA98-19B31573C9A7}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:27:03');
INSERT INTO `il_user_log` VALUES ('{B6DBF614-5BE2-306D-90A6-33736E7C5F84}', 'admin', 'locationmark', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:18:33');
INSERT INTO `il_user_log` VALUES ('{B6E0AD0E-BBBD-C42C-C8DA-0DA70DC3C433}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:51');
INSERT INTO `il_user_log` VALUES ('{B78E9463-BD0E-2E5B-B55D-C026F236C460}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:01:37');
INSERT INTO `il_user_log` VALUES ('{B7BE624D-2807-095E-9717-50D5406B0FFD}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:35:36');
INSERT INTO `il_user_log` VALUES ('{B7DC091D-3558-4DB7-5718-D4CCF3C33EA0}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:19:40');
INSERT INTO `il_user_log` VALUES ('{B809681A-9A27-52BF-53B1-198D77AEBC34}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:19:37');
INSERT INTO `il_user_log` VALUES ('{B8112306-1026-457C-ABE3-A66F8E037AD2}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:19:28');
INSERT INTO `il_user_log` VALUES ('{B8370754-F5D8-4DB8-90C1-8830BE923BEA}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:06:24');
INSERT INTO `il_user_log` VALUES ('{B858C952-C5FA-9882-C2B8-31908FD7B776}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:08:34');
INSERT INTO `il_user_log` VALUES ('{B8A32ED7-AF5C-6D4E-67A7-6D7FEC1078E9}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 16:56:42');
INSERT INTO `il_user_log` VALUES ('{B8F2A664-6429-AF73-E2FD-92BDF5545970}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:10:58');
INSERT INTO `il_user_log` VALUES ('{B93654B8-5D72-D674-C5C7-13F29F2873F4}', 'admin', 'outfirefacility', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:51:27');
INSERT INTO `il_user_log` VALUES ('{B93F9C82-75C7-120C-2682-FAD03FF3C827}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:34:10');
INSERT INTO `il_user_log` VALUES ('{B94BCF72-E7D8-C0D1-A480-0DAA01A63F25}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:58:24');
INSERT INTO `il_user_log` VALUES ('{B95FA64F-C87B-B97E-7326-C41800C85DDF}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:57:00');
INSERT INTO `il_user_log` VALUES ('{B9F88496-E908-595E-9C8F-7C0F5CF3B557}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:49:17');
INSERT INTO `il_user_log` VALUES ('{BA0525DD-DAA4-49B9-1D71-A213BC748AB3}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:57:42');
INSERT INTO `il_user_log` VALUES ('{BA50AFE8-BE98-5731-4805-7F5427849D10}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:50:34');
INSERT INTO `il_user_log` VALUES ('{BA5B1A75-49DD-3130-28B4-E24B4A51E019}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:59:10');
INSERT INTO `il_user_log` VALUES ('{BA71EA5C-BB6C-00F4-0A41-529033A6EF25}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:46:42');
INSERT INTO `il_user_log` VALUES ('{BABA98BB-E799-60B1-1726-B16B193F8978}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:08:31');
INSERT INTO `il_user_log` VALUES ('{BAEB297C-27DE-5496-5EA6-113CADE1D3C3}', 'admin', 'organization', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:13:22');
INSERT INTO `il_user_log` VALUES ('{BB07E226-9225-9A40-3611-2E7685F402F6}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:28:54');
INSERT INTO `il_user_log` VALUES ('{BB105717-BF34-86A5-3E94-AAF234BD21A0}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:00:28');
INSERT INTO `il_user_log` VALUES ('{BB1ED6E1-684E-7DF4-9EE3-7BA5F88ABDCF}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:49:32');
INSERT INTO `il_user_log` VALUES ('{BB44DA1E-C675-1E66-47CF-AF1D696CF747}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:39:28');
INSERT INTO `il_user_log` VALUES ('{BB7AF6B3-652B-911C-5498-307E43AEBCA6}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:27:50');
INSERT INTO `il_user_log` VALUES ('{BB7D832F-6E9E-49B7-08F8-82C9EA9D239F}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:38:22');
INSERT INTO `il_user_log` VALUES ('{BB9E6A25-A265-3CA9-B373-531C461872E8}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:39:09');
INSERT INTO `il_user_log` VALUES ('{BBC4D557-77DB-B645-B096-28183D7B9B69}', 'admin', 'localequipment', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:10:43');
INSERT INTO `il_user_log` VALUES ('{BBE4FA53-77F4-BB1C-10DF-91C3C174182F}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:10:01');
INSERT INTO `il_user_log` VALUES ('{BC0A3D75-5849-A562-7BA4-1F98BD9B0029}', 'admin', 'localequipment', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:59:43');
INSERT INTO `il_user_log` VALUES ('{BC1BCCD8-A449-220B-2CC6-7EC83E871353}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:54:01');
INSERT INTO `il_user_log` VALUES ('{BC27309E-DF95-E507-6EAC-4CD836642D8E}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:36:03');
INSERT INTO `il_user_log` VALUES ('{BC3F6820-EF79-814D-2F3E-4FCDF83E8625}', 'admin', 'organization', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:42:20');
INSERT INTO `il_user_log` VALUES ('{BC65697D-4751-A37F-C653-CC5ABD247808}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:06:44');
INSERT INTO `il_user_log` VALUES ('{BC7FB15B-E237-2D32-82E6-078815F0C580}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:08:54');
INSERT INTO `il_user_log` VALUES ('{BCDF0FAC-0FDC-BFFF-6686-197A727151E2}', 'admin', 'group', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:41:19');
INSERT INTO `il_user_log` VALUES ('{BD5C3E77-45D9-1183-BA46-E64BA92A85C6}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:52:29');
INSERT INTO `il_user_log` VALUES ('{BD5DE8F3-51EA-9B56-6DF6-338C8C21D937}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 17:51:04');
INSERT INTO `il_user_log` VALUES ('{BD64B060-04EF-DDE6-8CB1-353E1840BEB4}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 09:36:15');
INSERT INTO `il_user_log` VALUES ('{BDA30143-F835-ED0F-2794-888F1BD94C36}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:10:24');
INSERT INTO `il_user_log` VALUES ('{BDCBBA20-7299-5490-4C3A-41B7119061A0}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:40:41');
INSERT INTO `il_user_log` VALUES ('{BDF089B2-B960-1B67-B96E-8DF75A875A0C}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:51:17');
INSERT INTO `il_user_log` VALUES ('{BE15F687-1D76-8761-012D-8E465F570A86}', 'admin', 'localequipment', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:59:34');
INSERT INTO `il_user_log` VALUES ('{BE6B4179-2710-5CDC-5224-955F96C9AC81}', 'admin', 'group', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:49:10');
INSERT INTO `il_user_log` VALUES ('{BE796C49-408E-5B65-9DDA-3119104B1500}', 'system', 'userlog', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:33:04');
INSERT INTO `il_user_log` VALUES ('{BED261D3-3D33-4C62-1AE3-9A1E007A3048}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:09:57');
INSERT INTO `il_user_log` VALUES ('{BF1899B2-32F4-2A35-270E-BB3098F0344A}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:26:19');
INSERT INTO `il_user_log` VALUES ('{BF5AF98B-FACC-8698-9E67-D28D6C81A331}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:49:34');
INSERT INTO `il_user_log` VALUES ('{BF6BA9BE-CEDA-718F-A81B-25A1D192527C}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 17:54:55');
INSERT INTO `il_user_log` VALUES ('{BF8969D0-D774-5BFF-37AA-680A46BD6E60}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:19:53');
INSERT INTO `il_user_log` VALUES ('{BF8A960E-442A-70DD-2DAD-8BA3695F21CC}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:09:29');
INSERT INTO `il_user_log` VALUES ('{BFA7764D-4C0B-4E0B-664D-5A8024A20F28}', 'admin', 'outfirefacility', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:44:09');
INSERT INTO `il_user_log` VALUES ('{BFEE7987-45CB-14A9-24F0-5151034D087E}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:58:15');
INSERT INTO `il_user_log` VALUES ('{BFF12AE6-23EB-0E16-65E5-A4C026F86E9F}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:19:42');
INSERT INTO `il_user_log` VALUES ('{BFF62765-3332-3574-3379-1A71DAF3B8A0}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:19:03');
INSERT INTO `il_user_log` VALUES ('{C01CBADB-7CD9-D969-BC18-3C7F8CF14DE9}', 'system', 'node', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:29');
INSERT INTO `il_user_log` VALUES ('{C03451C3-6482-5D24-5582-DCAA875A3FEF}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:05:43');
INSERT INTO `il_user_log` VALUES ('{C06F9023-AAA2-2FC9-FD5B-83C13452A224}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:50:19');
INSERT INTO `il_user_log` VALUES ('{C0BF7840-F584-F6E1-2F3C-5B532F0C514E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:20:53');
INSERT INTO `il_user_log` VALUES ('{C0D9C75D-DA8D-4B73-34CA-6C2E86A69A7E}', 'system', 'user', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:19:00');
INSERT INTO `il_user_log` VALUES ('{C0ED7D61-1465-73E8-6B35-B77DBE84A816}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:30:15');
INSERT INTO `il_user_log` VALUES ('{C11EF6A9-6A17-59DF-1BA9-DDD8D87E51CC}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:26:59');
INSERT INTO `il_user_log` VALUES ('{C12D7BA9-6110-307F-7511-EB096BC7FFA6}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:57:43');
INSERT INTO `il_user_log` VALUES ('{C130BB6B-AFF0-F566-A251-85B1A9ACC4A0}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:43:39');
INSERT INTO `il_user_log` VALUES ('{C1339F70-BA95-970D-419C-A7974BD1055D}', 'admin', 'organization', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:15:03');
INSERT INTO `il_user_log` VALUES ('{C18BDC2D-CE62-D7FF-40C3-2A210E9677A4}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:31:47');
INSERT INTO `il_user_log` VALUES ('{C1C867CE-8DC6-425E-BE26-3A8343CF25EE}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:16:05');
INSERT INTO `il_user_log` VALUES ('{C20234FE-C2DE-135D-0679-E2810B2FFBE0}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 12:25:23');
INSERT INTO `il_user_log` VALUES ('{C20DFF63-8A16-A058-27BC-226D15A11B72}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:57:59');
INSERT INTO `il_user_log` VALUES ('{C28E33A0-CCFB-03E7-9B2A-FE9F7A588996}', 'admin', 'organization', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:33:26');
INSERT INTO `il_user_log` VALUES ('{C2CD9DCD-A016-854B-0337-CA4A2D0F16DB}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:38:00');
INSERT INTO `il_user_log` VALUES ('{C2DFEFBB-EF13-6CA5-DB38-C90B1233E165}', 'admin', 'person', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:12:21');
INSERT INTO `il_user_log` VALUES ('{C30A2E1F-5FCD-68C9-573A-7DE078D52B23}', 'admin', 'localequipment', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:10:52');
INSERT INTO `il_user_log` VALUES ('{C382A634-D47A-3A10-D30D-7A5D9AACE9AD}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:36:02');
INSERT INTO `il_user_log` VALUES ('{C39A02C1-4E32-E205-4E3A-ABF09915CEB4}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:47:27');
INSERT INTO `il_user_log` VALUES ('{C3B1C032-6D91-1612-3CB1-EC816945FC55}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:22:49');
INSERT INTO `il_user_log` VALUES ('{C4842C2F-DC2D-9759-C25F-EFCC54F89283}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:23:33');
INSERT INTO `il_user_log` VALUES ('{C49B5729-4AD6-23FB-DE6D-7708DBD0A640}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 12:23:35');
INSERT INTO `il_user_log` VALUES ('{C521F5F1-7297-8AAA-97B6-43BE13DE746A}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:56:41');
INSERT INTO `il_user_log` VALUES ('{C529BF0F-5DCC-6B29-F20D-94B1F5B715B2}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:41:42');
INSERT INTO `il_user_log` VALUES ('{C563F381-2B10-6C09-5D77-C0F316E855ED}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:38:43');
INSERT INTO `il_user_log` VALUES ('{C58D6232-D163-D6BD-242E-0458F3E758F2}', 'admin', 'locator', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:46:17');
INSERT INTO `il_user_log` VALUES ('{C5A828CF-A4EB-3449-EA09-0EC487A05E95}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:30:16');
INSERT INTO `il_user_log` VALUES ('{C5BC6935-F838-DCFD-61BB-A80F6F0F4A7A}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:32:49');
INSERT INTO `il_user_log` VALUES ('{C5C3DEEA-E960-62D6-9DFC-09CF1E640DBB}', 'admin', 'person', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:50:00');
INSERT INTO `il_user_log` VALUES ('{C5C6DF18-9E9B-17AC-99C5-4515B4A61359}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:51:18');
INSERT INTO `il_user_log` VALUES ('{C62F38CB-BA4B-4EA0-6EC5-1FED738819A8}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:02:44');
INSERT INTO `il_user_log` VALUES ('{C6698BA8-CA5E-ABFF-645D-6477E1B3CD63}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:36:01');
INSERT INTO `il_user_log` VALUES ('{C67CF30B-5C23-1814-C140-96235F158571}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:44:58');
INSERT INTO `il_user_log` VALUES ('{C6B9E715-9CDF-74D8-2375-CFC24DDF3AEC}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:47:24');
INSERT INTO `il_user_log` VALUES ('{C6C2610B-DAC8-AD2F-3656-19AC53B52FE1}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:33:08');
INSERT INTO `il_user_log` VALUES ('{C6CED412-C289-6066-7D88-23E498F55002}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:32:29');
INSERT INTO `il_user_log` VALUES ('{C6E78095-CEBA-1367-F468-385492B8043F}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:41:24');
INSERT INTO `il_user_log` VALUES ('{C738BD9A-8C03-BBC6-B8F8-5EDB6C66DE96}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:40:48');
INSERT INTO `il_user_log` VALUES ('{C7CAA349-3424-FC41-97C2-EEAB94130C86}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:23:27');
INSERT INTO `il_user_log` VALUES ('{C7D4E89E-6BAF-E713-3CD5-C344A01DEC82}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:46:51');
INSERT INTO `il_user_log` VALUES ('{C7D6317B-1B65-5347-4D78-DC000598F8EF}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:24:57');
INSERT INTO `il_user_log` VALUES ('{C7EA91C6-3ED5-960C-9B1B-35D40865874A}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:30:47');
INSERT INTO `il_user_log` VALUES ('{C7EB9359-EE40-F00C-A2B9-3F333164834E}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:59:12');
INSERT INTO `il_user_log` VALUES ('{C80AB72A-CE26-C1EC-3EB6-D201096EC1F4}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:39:00');
INSERT INTO `il_user_log` VALUES ('{C81328AB-3F41-A74D-2339-00FAAA75C4A1}', 'system', 'user', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:16:20');
INSERT INTO `il_user_log` VALUES ('{C8310397-C078-4467-5C70-95987FBA7E5C}', 'system', 'userlog', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:46:44');
INSERT INTO `il_user_log` VALUES ('{C86007A0-D38D-5F9D-CF09-75308B4BA2E6}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:26:23');
INSERT INTO `il_user_log` VALUES ('{C895F32E-5992-3C56-CC27-D3F5F7D8B153}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:31:54');
INSERT INTO `il_user_log` VALUES ('{C8B98947-2F0D-1A0F-BD72-C8B19D44F044}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:57:49');
INSERT INTO `il_user_log` VALUES ('{C8F357EB-3CCE-663E-38F4-55574C9F64A8}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:58:15');
INSERT INTO `il_user_log` VALUES ('{C911A118-4E94-A77C-3620-1FA612BD639A}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:38:27');
INSERT INTO `il_user_log` VALUES ('{C954AB44-726B-ABE7-7974-5A82FAA0E6C3}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 10:29:32');
INSERT INTO `il_user_log` VALUES ('{C9633DF5-3BB7-38BD-ECB3-958A0CED0B03}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:04:23');
INSERT INTO `il_user_log` VALUES ('{C9D5AF21-9D44-1934-0EBC-489BC6499D1C}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:50:19');
INSERT INTO `il_user_log` VALUES ('{CA0D369E-B50E-4DAE-AA8C-8461B93A703E}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:22:55');
INSERT INTO `il_user_log` VALUES ('{CA2F3C76-98EB-606C-59AD-346E4F75F820}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:43:48');
INSERT INTO `il_user_log` VALUES ('{CA6D73FE-E6EF-86C2-B694-07539340A8E7}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:12:23');
INSERT INTO `il_user_log` VALUES ('{CA7D3141-4BAA-9686-90F6-F27801D9EE71}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:19:21');
INSERT INTO `il_user_log` VALUES ('{CA7D8C41-2B2B-AA23-EA7B-B1DBE748EFED}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:26:56');
INSERT INTO `il_user_log` VALUES ('{CB2FA8C6-8E9A-D888-2763-2580C6118901}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:10:55');
INSERT INTO `il_user_log` VALUES ('{CB760968-35AA-64E8-ADF9-1108F9C7F8F6}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:45:39');
INSERT INTO `il_user_log` VALUES ('{CC16F527-7A1C-EEFA-CE1B-1BFE04FAC932}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:27:58');
INSERT INTO `il_user_log` VALUES ('{CC8D377F-34F1-AF21-89B7-0F7B2CF5D75E}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:23:02');
INSERT INTO `il_user_log` VALUES ('{CC9683AF-A395-A21C-5EE6-CCF6AA7ABF83}', 'admin', 'person', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:50:34');
INSERT INTO `il_user_log` VALUES ('{CCB98CEF-871B-6484-E9A3-F1CD705151BD}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:06:15');
INSERT INTO `il_user_log` VALUES ('{CCFA8A38-D8EB-F3AA-A3A8-B4F31ACCC47F}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 16:56:51');
INSERT INTO `il_user_log` VALUES ('{CD26807B-6B77-3C0B-A6F4-200265B1A9CC}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:13:01');
INSERT INTO `il_user_log` VALUES ('{CDAB7D59-0E94-5973-4959-B576DD67A053}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:16:20');
INSERT INTO `il_user_log` VALUES ('{CDEA84B7-5A86-A232-5762-451797D03906}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:04:20');
INSERT INTO `il_user_log` VALUES ('{CDFE2AA4-BA8F-9E59-16E0-49CBE892C101}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:48:29');
INSERT INTO `il_user_log` VALUES ('{CE0BFDBC-913E-E6AE-1065-87DD31D1C5C6}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:57:14');
INSERT INTO `il_user_log` VALUES ('{CE285AEF-FB02-BB45-6C8E-50D3F68AD3BC}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:27:33');
INSERT INTO `il_user_log` VALUES ('{CE5D1C7B-1C5C-8CF1-6D99-A279BEDF1CB5}', 'system', 'node', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 12:21:48');
INSERT INTO `il_user_log` VALUES ('{CE857073-09F2-4D04-A3D7-75513A78CDCE}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:40:56');
INSERT INTO `il_user_log` VALUES ('{CE9BE828-6FF6-BC86-2F34-B2C3E973B070}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:37:58');
INSERT INTO `il_user_log` VALUES ('{CEDD51E0-4F36-DCD3-1A2B-EDE54D508DF9}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:05:39');
INSERT INTO `il_user_log` VALUES ('{CEF92E85-E502-2E52-07A6-47FD4BE5FB67}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:19:53');
INSERT INTO `il_user_log` VALUES ('{CF36439E-CC48-7506-9744-1C63C13EDD6D}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:33:25');
INSERT INTO `il_user_log` VALUES ('{CF8E8854-9400-8456-CB6F-4E45723DF581}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:48:27');
INSERT INTO `il_user_log` VALUES ('{D0014544-8894-3BCC-A36C-82DCF51EF45B}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:33:32');
INSERT INTO `il_user_log` VALUES ('{D019FBD5-67DA-5378-6495-E6DC9272BD66}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:05:29');
INSERT INTO `il_user_log` VALUES ('{D01F538F-70F1-D9AD-9537-E89582D6509B}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 15:19:45');
INSERT INTO `il_user_log` VALUES ('{D06077A6-46E2-FD27-C0A4-058FB3BCFA59}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:55:02');
INSERT INTO `il_user_log` VALUES ('{D0DC41D9-3B02-86A8-810E-223C7AFA8AD6}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:40:26');
INSERT INTO `il_user_log` VALUES ('{D0F40F5E-FD81-6C04-1C66-826E6A4A8F63}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:23:16');
INSERT INTO `il_user_log` VALUES ('{D1601F8F-FB76-FCB4-7E58-3DBC19DE924E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:12:29');
INSERT INTO `il_user_log` VALUES ('{D1E2AF1C-37D8-273B-10EF-0E736C095238}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:32:56');
INSERT INTO `il_user_log` VALUES ('{D1E9342A-7B8A-2AB8-EF42-4A5101B7AECB}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:36:01');
INSERT INTO `il_user_log` VALUES ('{D1F55A4A-0F10-56B1-5F74-375824791BEC}', 'admin', 'organization', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:14:13');
INSERT INTO `il_user_log` VALUES ('{D258B716-5F1E-A2B8-BB12-B25E4CB9D242}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:00:23');
INSERT INTO `il_user_log` VALUES ('{D2640D93-522F-3402-71DA-9C8ECD6AD762}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:55:16');
INSERT INTO `il_user_log` VALUES ('{D2789021-19A9-EBFD-B91E-21727DDD31DF}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:04:52');
INSERT INTO `il_user_log` VALUES ('{D28211F8-EA58-80B7-A143-9E4137DDA795}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:48:09');
INSERT INTO `il_user_log` VALUES ('{D288B9D6-2F00-BC9F-3ECA-CDDDBA563820}', 'system', 'role', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:04:35');
INSERT INTO `il_user_log` VALUES ('{D3167C29-7322-A348-F0C9-A9BDB6805EE0}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:56:55');
INSERT INTO `il_user_log` VALUES ('{D3216C85-6FD6-75B3-8DE6-47F02891EF28}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:47:18');
INSERT INTO `il_user_log` VALUES ('{D38F03E7-AFB0-64AC-769B-95E405A447A6}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:32:43');
INSERT INTO `il_user_log` VALUES ('{D3D85C8E-2283-552F-CB76-32F6A1CCC224}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:33:13');
INSERT INTO `il_user_log` VALUES ('{D3ED2ED5-CCBE-394A-B0BB-C1991AA48D41}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:40:38');
INSERT INTO `il_user_log` VALUES ('{D3FA42AC-F15C-4FD9-DD44-C5DADF7DDDA2}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:58:33');
INSERT INTO `il_user_log` VALUES ('{D3FD3E05-615B-1FF2-86ED-DABEE1B84FFB}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:41:40');
INSERT INTO `il_user_log` VALUES ('{D3FEF2EF-502F-0082-94AE-308BE2A75ADB}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:47:38');
INSERT INTO `il_user_log` VALUES ('{D4146564-0101-E05D-D6A2-9EDFA3469E6C}', 'system', 'login', 'in', '成功', '', '', '', '0.0.0.0', '2017-08-10 09:18:02');
INSERT INTO `il_user_log` VALUES ('{D426634B-6903-BE10-9917-AA49C87CCD15}', 'system', 'role', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:10:40');
INSERT INTO `il_user_log` VALUES ('{D441FC58-520F-158E-C9FA-128E903B5F3C}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:46:00');
INSERT INTO `il_user_log` VALUES ('{D45854FD-17DC-D2D0-0D1C-0AE977B6AE23}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:09:23');
INSERT INTO `il_user_log` VALUES ('{D45920C0-4CC9-1930-8533-3D35AA0B6929}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:35:12');
INSERT INTO `il_user_log` VALUES ('{D46F942E-B673-6167-DE16-122C06E06608}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:51:32');
INSERT INTO `il_user_log` VALUES ('{D4C29E8A-98A4-4136-2CC3-4A0C7EBB3A54}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:05');
INSERT INTO `il_user_log` VALUES ('{D4DBA5B1-F823-56D7-3510-1676756880B4}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:44:36');
INSERT INTO `il_user_log` VALUES ('{D4F291F8-D12C-BCF0-B39C-6180E380E80D}', 'system', 'role', 'forbid', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:57:35');
INSERT INTO `il_user_log` VALUES ('{D52692FC-D778-40FA-11E9-017005EC28AC}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:48:29');
INSERT INTO `il_user_log` VALUES ('{D5274728-ABFB-16DC-3EB7-A15D0E467543}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 12:23:24');
INSERT INTO `il_user_log` VALUES ('{D53C74D5-08D6-0323-3F2A-06E05FDA739B}', 'admin', 'person', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:12:15');
INSERT INTO `il_user_log` VALUES ('{D5755665-0D98-C14C-CCE9-B6FC220C5F2E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:58:22');
INSERT INTO `il_user_log` VALUES ('{D57FB296-373D-8E76-83CF-5920CF4176A0}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:52:22');
INSERT INTO `il_user_log` VALUES ('{D5E0FBCB-494D-C6D2-2B30-0C54F8FC4401}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:33:57');
INSERT INTO `il_user_log` VALUES ('{D60CF426-E711-411A-B21B-D91F8D4DE533}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:21:40');
INSERT INTO `il_user_log` VALUES ('{D6199153-2363-24F9-1193-E17DA852150E}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:09:59');
INSERT INTO `il_user_log` VALUES ('{D634DB2D-6BFF-0D8D-8A8D-F22977F8A2EF}', 'admin', 'organization', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:27:56');
INSERT INTO `il_user_log` VALUES ('{D63E905B-8443-2398-7B7A-BFE06ABF70D0}', 'system', 'user', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:15:02');
INSERT INTO `il_user_log` VALUES ('{D6923E70-C134-FA29-9DE5-A563EB892C9B}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:31:56');
INSERT INTO `il_user_log` VALUES ('{D6D6A395-215C-BD81-FF05-4B5ABEBA47A0}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:29:00');
INSERT INTO `il_user_log` VALUES ('{D7CEEE4A-AB63-3497-017C-A867A0723A76}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:46:32');
INSERT INTO `il_user_log` VALUES ('{D7DF2F20-8DF8-644A-2A28-371893ED73BD}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:02:36');
INSERT INTO `il_user_log` VALUES ('{D87DB910-9B72-F31A-7CFF-334E7561178C}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:24:03');
INSERT INTO `il_user_log` VALUES ('{D885DF28-86D3-52FC-0075-A9931CA4E7DE}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:58:18');
INSERT INTO `il_user_log` VALUES ('{D8A00498-5927-D125-0B52-F7653D793F27}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 15:44:58');
INSERT INTO `il_user_log` VALUES ('{D8ACC93E-108D-5997-3480-E1C0C713BABE}', 'system', 'user', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:12:44');
INSERT INTO `il_user_log` VALUES ('{D8B0B516-CDF1-E24E-7CC0-4DA75646D7D2}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:44:13');
INSERT INTO `il_user_log` VALUES ('{D8C3C1F9-9A98-AA2A-E725-09A0452B99BF}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 10:03:58');
INSERT INTO `il_user_log` VALUES ('{D9069FD7-0E75-5B86-09E4-E60D0A1A9D7B}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:42:21');
INSERT INTO `il_user_log` VALUES ('{D9345BB7-2CF7-CFF4-A78E-E2DC4B49FB7A}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:07:59');
INSERT INTO `il_user_log` VALUES ('{D974AA0B-46DE-CA7C-1596-25BF4B4EC4FB}', 'system', 'node', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:54:33');
INSERT INTO `il_user_log` VALUES ('{D9B067F1-9E38-83D4-4E9E-A9399699D9FB}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 12:23:32');
INSERT INTO `il_user_log` VALUES ('{D9C4B1F2-4206-DB27-FBBF-33BCBD148DE3}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:32:50');
INSERT INTO `il_user_log` VALUES ('{D9EE9CE2-0ABE-6B20-AF63-C6A26EA8CE23}', 'system', 'role', 'forbid', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:57:25');
INSERT INTO `il_user_log` VALUES ('{D9EEB660-21E7-4336-D53B-646D0495208E}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:42:19');
INSERT INTO `il_user_log` VALUES ('{DA43FF39-5EC5-F556-68E4-50423052B99D}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:38:56');
INSERT INTO `il_user_log` VALUES ('{DAC4B9CC-2301-061A-F5E6-322CB01AA746}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:05:40');
INSERT INTO `il_user_log` VALUES ('{DAE84280-F91E-46E0-B1D3-6AFCB767867D}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:49:16');
INSERT INTO `il_user_log` VALUES ('{DB261A58-6067-4B8F-D48B-BF764EE6439A}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 19:59:45');
INSERT INTO `il_user_log` VALUES ('{DBEB4B6C-35DC-C7F6-B895-27FE4DB6786F}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:08:56');
INSERT INTO `il_user_log` VALUES ('{DBF04B5C-991A-5965-89BE-CE2A6CEA033B}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:57:47');
INSERT INTO `il_user_log` VALUES ('{DBF7071E-4757-CB4B-6920-AA4F73427A0E}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:23:06');
INSERT INTO `il_user_log` VALUES ('{DC95FA41-E55F-DD31-74DF-025BCA8D1813}', 'admin', 'group', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:14:56');
INSERT INTO `il_user_log` VALUES ('{DC9A7BD6-C0B5-7E47-3249-E3DC94935918}', 'admin', 'organization', 'self', '失败', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:17:14');
INSERT INTO `il_user_log` VALUES ('{DCDDB5EE-7C36-3660-2BF2-378740CC5B4F}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:43:37');
INSERT INTO `il_user_log` VALUES ('{DCE301DA-7731-F357-013A-5E5C5ACF82BF}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:33:46');
INSERT INTO `il_user_log` VALUES ('{DD127AEA-2D76-6425-E620-A2C53328AB71}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:12:37');
INSERT INTO `il_user_log` VALUES ('{DD4D5B08-C763-F862-D545-44C106A75071}', 'admin', 'localequipment', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:55:25');
INSERT INTO `il_user_log` VALUES ('{DD5754D0-A2CF-10FA-2983-2CC35CEB5337}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:34:08');
INSERT INTO `il_user_log` VALUES ('{DDBA706B-54DD-B3EE-CBAE-0CAAD20715D3}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:30:52');
INSERT INTO `il_user_log` VALUES ('{DDC780A5-5679-57F7-9179-655038F243A4}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:58:47');
INSERT INTO `il_user_log` VALUES ('{DE4A27D4-3327-B11C-74BA-C1FEC9785017}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 16:56:51');
INSERT INTO `il_user_log` VALUES ('{DEAC5241-60F3-3F8D-16BA-9A6056D3DF2A}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:07:45');
INSERT INTO `il_user_log` VALUES ('{DEC1595F-0FF5-28E1-F19F-FBB9026C155B}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:38:23');
INSERT INTO `il_user_log` VALUES ('{DF25B88A-614C-4F7E-3061-0E692AD9F71A}', 'admin', 'floor', 'index', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:20:25');
INSERT INTO `il_user_log` VALUES ('{DF5D2C85-8FE7-3C15-869F-0B1F473F0999}', 'admin', 'person', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:05:37');
INSERT INTO `il_user_log` VALUES ('{DF6FDE76-41C3-D194-607A-68EC36B5D557}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:10:21');
INSERT INTO `il_user_log` VALUES ('{DF83A499-8FBE-641A-9A0D-0AB1E066AC6D}', 'admin', 'organization', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:38:51');
INSERT INTO `il_user_log` VALUES ('{DF894EC1-5BBE-B2B0-9111-E13A9F5D623C}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:43:23');
INSERT INTO `il_user_log` VALUES ('{DFD1AC88-7AD1-DDC3-939F-9985CC6D6AA2}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:58:04');
INSERT INTO `il_user_log` VALUES ('{E02F256E-FC6C-4981-6F1C-A5332AF00BA0}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:48:59');
INSERT INTO `il_user_log` VALUES ('{E07AB20F-F124-3EA0-0036-831D5035578F}', 'system', 'role', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:01:07');
INSERT INTO `il_user_log` VALUES ('{E0A7637D-9044-BE21-B44C-C7E0ED04ECA8}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:52:20');
INSERT INTO `il_user_log` VALUES ('{E0C082B0-1455-1D90-C07D-1B2D155012A7}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 16:34:40');
INSERT INTO `il_user_log` VALUES ('{E16CF204-C912-1264-0A4B-6DC7E66D54CC}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:16:04');
INSERT INTO `il_user_log` VALUES ('{E192475F-8305-CAF4-24EA-374A323C4AE3}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:05:05');
INSERT INTO `il_user_log` VALUES ('{E1D0F82B-BEBF-8B10-53D5-57F53D1F9846}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:15:44');
INSERT INTO `il_user_log` VALUES ('{E1D6FC14-EC86-E1C9-2CC0-768713726CA8}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:15:47');
INSERT INTO `il_user_log` VALUES ('{E1FCD2DF-F256-E1B4-D034-341767FEB53D}', 'system', 'node', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:21:15');
INSERT INTO `il_user_log` VALUES ('{E2307D50-2087-3C58-3F8D-10531A63E1CB}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:39:19');
INSERT INTO `il_user_log` VALUES ('{E2592885-76B4-A922-9B36-8D80351E4017}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:34:27');
INSERT INTO `il_user_log` VALUES ('{E2CBAF5C-7D7E-F018-EA34-D68AC455D420}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:15:27');
INSERT INTO `il_user_log` VALUES ('{E2F9F5DB-3D01-4D4A-E0A1-97726EC6199D}', 'system', 'login', 'in', '成功', '', '', '', '10.0.2.111', '2017-08-11 10:03:41');
INSERT INTO `il_user_log` VALUES ('{E308BFA7-B20A-3CE0-E228-3CD17CB91B1D}', 'admin', 'outfirefacility', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:05:23');
INSERT INTO `il_user_log` VALUES ('{E317ADE7-86B7-9DF4-C1E9-48E1E448DD1D}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:41:16');
INSERT INTO `il_user_log` VALUES ('{E3A05057-54B8-3EA9-94B5-2676ED43A88C}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:11');
INSERT INTO `il_user_log` VALUES ('{E40394E4-F679-A083-E962-FB1607B650B4}', 'admin', 'person', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:45:21');
INSERT INTO `il_user_log` VALUES ('{E447BD03-BCEC-CEEF-01B9-6F6AD16BA642}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:02:37');
INSERT INTO `il_user_log` VALUES ('{E4571D59-9AF8-415F-0D6C-59589ACC73AF}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:32:23');
INSERT INTO `il_user_log` VALUES ('{E4708BFB-2EFB-D637-716B-EEFEE6E49F36}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:36:24');
INSERT INTO `il_user_log` VALUES ('{E4791A38-7435-316C-20BF-7D894800B7B1}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:47:07');
INSERT INTO `il_user_log` VALUES ('{E4E2CBFA-0148-EDD7-68F9-B62E10554559}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:37:42');
INSERT INTO `il_user_log` VALUES ('{E5021166-A4B2-CA12-F1D5-B61AC34BD686}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:50:44');
INSERT INTO `il_user_log` VALUES ('{E6069D50-9543-7DCE-BB56-E7FC1349EE5F}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:41:31');
INSERT INTO `il_user_log` VALUES ('{E682BD23-BF10-C0EA-5ED5-C5115850435F}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:52:08');
INSERT INTO `il_user_log` VALUES ('{E687EDBD-806F-5B96-1B0D-3D39750BC16C}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:00:03');
INSERT INTO `il_user_log` VALUES ('{E6B50531-73ED-895E-252A-D77EBCCAE48B}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:19:43');
INSERT INTO `il_user_log` VALUES ('{E6CD89CA-4CC3-95FA-19FD-BF854A061BBB}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:01:38');
INSERT INTO `il_user_log` VALUES ('{E72740D9-F68A-4792-B6AC-FBDB6644C7AD}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 15:34:23');
INSERT INTO `il_user_log` VALUES ('{E7491769-4327-C3C7-F9CC-4EB2396DF124}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:38:21');
INSERT INTO `il_user_log` VALUES ('{E76D1C80-7F22-9C7B-AADC-D1136DEA1AD5}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:15:47');
INSERT INTO `il_user_log` VALUES ('{E7F3C040-A6C8-CB37-3D1F-7BC5D7FB5AFE}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:47:25');
INSERT INTO `il_user_log` VALUES ('{E802BF31-7B9C-6995-D2B0-D67CC76826BF}', 'system', 'user', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:22:43');
INSERT INTO `il_user_log` VALUES ('{E80CBB9B-F104-7C4F-53F8-C96EEBA735F6}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:08:22');
INSERT INTO `il_user_log` VALUES ('{E88DE3D3-5B28-64EA-01F8-E0967F7674E7}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:39:21');
INSERT INTO `il_user_log` VALUES ('{E901BB30-7AB5-A149-D480-8E986AE66D20}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 17:57:03');
INSERT INTO `il_user_log` VALUES ('{E91DB35C-B354-C022-5954-7DF36FC02C7B}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:38:59');
INSERT INTO `il_user_log` VALUES ('{E939686D-3575-EA4C-0576-A2D55EEE01F2}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:41:29');
INSERT INTO `il_user_log` VALUES ('{E951BAE0-D062-8972-8177-53AA68586579}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:01:30');
INSERT INTO `il_user_log` VALUES ('{E964040D-7C30-0E26-C04B-C508EA4E27C5}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:35:11');
INSERT INTO `il_user_log` VALUES ('{E9AD175D-EBE8-E650-1192-7FB878B00608}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:01:11');
INSERT INTO `il_user_log` VALUES ('{EA17FE91-4BF4-8EBC-E158-835E5480613E}', 'admin', 'outfirefacility', 'index', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:20:28');
INSERT INTO `il_user_log` VALUES ('{EA2A7E08-B8C4-1B4A-D3C4-0C2A2A93EB90}', 'admin', 'person', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:51:56');
INSERT INTO `il_user_log` VALUES ('{EA470312-F129-9D2C-D1D8-ACAE93A2DD33}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:24:42');
INSERT INTO `il_user_log` VALUES ('{EA7C2D53-26AB-1AD4-43D8-8AFB023AD4AD}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:20:00');
INSERT INTO `il_user_log` VALUES ('{EA938153-A413-8D97-E1CE-B05E1AF5DEC6}', 'system', 'userlog', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:50:24');
INSERT INTO `il_user_log` VALUES ('{EAF62983-902C-3B32-FDF4-57B8617410A4}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:15:25');
INSERT INTO `il_user_log` VALUES ('{EAF8B860-91E0-20CA-2B3C-38E0A658D7C5}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:26:17');
INSERT INTO `il_user_log` VALUES ('{EAF8BDA7-DDE1-69C5-3A2F-F314CF8C6497}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:50:36');
INSERT INTO `il_user_log` VALUES ('{EB75BFA0-7F5E-D32E-1703-16CF592F7BB4}', 'system', 'user', 'add', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:40:24');
INSERT INTO `il_user_log` VALUES ('{EBB832C0-52A3-8210-710A-1B5C1FA2F0E3}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:32:21');
INSERT INTO `il_user_log` VALUES ('{EC2B299E-CF54-8103-081B-C47A5D8B71D3}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-12 14:15:40');
INSERT INTO `il_user_log` VALUES ('{ECA4A022-0995-3EDA-0EE8-D54DCCCFA2FB}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:07:23');
INSERT INTO `il_user_log` VALUES ('{ECAD36CB-6C7B-A9D6-B23B-1C2B1F2D149F}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 19:21:13');
INSERT INTO `il_user_log` VALUES ('{ECC95493-D8BA-C12E-7DA8-49DC6E063A17}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:53:45');
INSERT INTO `il_user_log` VALUES ('{ED12BBD0-DDE7-A039-AE99-4A982F7DC193}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:24:01');
INSERT INTO `il_user_log` VALUES ('{ED2F31D4-27C1-8F99-08B6-F8FDC072777C}', 'admin', 'groupperson', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:41:17');
INSERT INTO `il_user_log` VALUES ('{ED8AB21B-86F7-A14B-CC47-03D5A4224BC0}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:49:20');
INSERT INTO `il_user_log` VALUES ('{EDAACAD9-B3AC-BDDA-1174-5A582E14478A}', 'admin', 'person', 'del', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:05:53');
INSERT INTO `il_user_log` VALUES ('{EDBF513C-4328-852D-CDDC-D5C558E347F6}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:34:16');
INSERT INTO `il_user_log` VALUES ('{EDBF62A8-A5A7-5F73-F3ED-1264B7F31889}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:25:56');
INSERT INTO `il_user_log` VALUES ('{EDC3678A-9409-95DC-F162-96406E2E19AD}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:21:41');
INSERT INTO `il_user_log` VALUES ('{EDDF289F-5347-9FE0-CEC9-2DDB539B1263}', 'admin', 'outfirefacility', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:15');
INSERT INTO `il_user_log` VALUES ('{EEAA8F35-EF5C-B6B0-6317-D68A0ECA4C80}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:26:59');
INSERT INTO `il_user_log` VALUES ('{EEB84057-EC87-4F52-05F7-A970DAD28B90}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 10:29:26');
INSERT INTO `il_user_log` VALUES ('{EF05CC97-BB52-4E34-E38B-868BC01AD7DC}', 'admin', 'locator', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:47:07');
INSERT INTO `il_user_log` VALUES ('{EF40A3C6-D40E-40E4-6589-6BE32514A94D}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:05:08');
INSERT INTO `il_user_log` VALUES ('{EF94ED5D-1737-5F91-01E6-7C3C26460FD8}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:44');
INSERT INTO `il_user_log` VALUES ('{EFBD97DE-99EE-9EDA-C59A-E503499801C2}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:52:06');
INSERT INTO `il_user_log` VALUES ('{EFCFFAF9-FF8F-D4BA-DEC6-2F7030DCD6B1}', 'system', 'userlog', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:27:21');
INSERT INTO `il_user_log` VALUES ('{F0029AE2-7065-A3F1-2A06-E8259DFB1DD6}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:48:26');
INSERT INTO `il_user_log` VALUES ('{F008A25F-FA29-FB6B-1A67-EBB681BB9172}', 'system', 'role', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 16:39:28');
INSERT INTO `il_user_log` VALUES ('{F019AE16-B14B-6C79-23AC-0A7A3BEE3175}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:58:05');
INSERT INTO `il_user_log` VALUES ('{F01EF236-EBB7-596A-1770-C5882616995D}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:08:25');
INSERT INTO `il_user_log` VALUES ('{F034253B-ABB9-2D84-C532-F04CC30C2CF4}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:44:05');
INSERT INTO `il_user_log` VALUES ('{F0A1AB8F-3B10-20B5-DCEB-A0B840428660}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:08:40');
INSERT INTO `il_user_log` VALUES ('{F0B51A58-1E00-FCAC-9F92-8FC1CE80C988}', 'admin', 'outfirefacility', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:19:21');
INSERT INTO `il_user_log` VALUES ('{F0DA2CDC-F651-BDC1-A1F1-BCB705AA253C}', 'admin', 'organization', 'self', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 09:35:01');
INSERT INTO `il_user_log` VALUES ('{F0DCB057-08A5-B94B-CDD0-DF84B1452426}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:05:02');
INSERT INTO `il_user_log` VALUES ('{F0FA4EA5-72C7-7D15-17A2-846E70C0B8CE}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:48:03');
INSERT INTO `il_user_log` VALUES ('{F1836FC3-2F7A-25D2-C6A0-943A78B932E2}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:26:55');
INSERT INTO `il_user_log` VALUES ('{F1BC0B8B-67CE-FCE5-4725-0772E317639F}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:35:59');
INSERT INTO `il_user_log` VALUES ('{F20BD50C-1B83-DDAE-BD55-616C4C907A71}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:43:56');
INSERT INTO `il_user_log` VALUES ('{F2A053FA-B5B0-A82E-D28E-C4DD89285193}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:28:49');
INSERT INTO `il_user_log` VALUES ('{F2A5EE3C-9F8D-6016-A3B1-EDA76C892A7B}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:42:09');
INSERT INTO `il_user_log` VALUES ('{F2C47AD7-C1C6-A235-3554-459BE1AF530D}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:20:36');
INSERT INTO `il_user_log` VALUES ('{F2C777D1-3323-CF4B-400B-12818898438F}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:46:04');
INSERT INTO `il_user_log` VALUES ('{F34BDA48-1251-7DD2-473E-99FCCC40DD44}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:21:42');
INSERT INTO `il_user_log` VALUES ('{F35F1DE0-DFF8-5649-B53A-2590D7AEB808}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:34:12');
INSERT INTO `il_user_log` VALUES ('{F37E10B9-0E16-765A-C50C-878EB8FB2DA4}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:48:57');
INSERT INTO `il_user_log` VALUES ('{F3E52D7C-481A-44FF-731F-6B95289C0177}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:07:10');
INSERT INTO `il_user_log` VALUES ('{F428EF55-2410-9E7F-6D07-ADFEF5029396}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:25:26');
INSERT INTO `il_user_log` VALUES ('{F45C4B21-C5FA-619B-5EF2-09377E0D1412}', 'system', 'user', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:52:19');
INSERT INTO `il_user_log` VALUES ('{F476FF02-6BEC-3422-8AAA-F0139F331CC8}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 15:45:01');
INSERT INTO `il_user_log` VALUES ('{F4A55376-E7B3-E306-327E-A51E0B526BB0}', 'admin', 'locationmark', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:26:36');
INSERT INTO `il_user_log` VALUES ('{F4A7F4BF-75B2-7D25-2749-DF68DE7917B3}', 'admin', 'localequipment', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:45:53');
INSERT INTO `il_user_log` VALUES ('{F4DDAB0D-83BC-C519-3DFB-B68681150196}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:23:44');
INSERT INTO `il_user_log` VALUES ('{F4FEA8C6-5751-AF5E-0FF4-0E76B0C27FEF}', 'system', 'login', 'in', '成功', '', '', '', '0.0.0.0', '2017-08-11 09:16:49');
INSERT INTO `il_user_log` VALUES ('{F52460AB-28EB-1807-BE73-F0E8C9CEB402}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:44:21');
INSERT INTO `il_user_log` VALUES ('{F554D1BF-FE29-586B-E7D0-FAA9F55871B8}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:47:08');
INSERT INTO `il_user_log` VALUES ('{F57EBAB4-CE85-2D3C-C6CC-516D44F5879D}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:07:15');
INSERT INTO `il_user_log` VALUES ('{F5BBAD7B-691B-4EC9-5DD2-206D050F726E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:28:46');
INSERT INTO `il_user_log` VALUES ('{F5DFCABA-C0D3-5AB1-AFAA-41DEF6165A9A}', 'admin', 'organization', 'self', '失败', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:17:36');
INSERT INTO `il_user_log` VALUES ('{F61F114A-2AEA-9161-F347-3A436747DF1B}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:47:00');
INSERT INTO `il_user_log` VALUES ('{F641F58B-C635-5428-0E1F-CE2046556872}', 'admin', 'group', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:32:01');
INSERT INTO `il_user_log` VALUES ('{F68A6588-340E-8CF6-A540-9DA05E8A9EDC}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:12:38');
INSERT INTO `il_user_log` VALUES ('{F6E3D30B-4B5F-F5D5-68FE-E96FA6B55570}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:45:31');
INSERT INTO `il_user_log` VALUES ('{F6F2DC18-7382-F3DC-81F1-77BF3FE89FEE}', 'admin', 'organization', 'mod', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:08:40');
INSERT INTO `il_user_log` VALUES ('{F7010C3F-58E6-A5F4-A3FD-F329082AA18E}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 14:44:26');
INSERT INTO `il_user_log` VALUES ('{F70F2E76-D75E-BE1F-595F-25E2B41BEF58}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 14:59:35');
INSERT INTO `il_user_log` VALUES ('{F71705A1-6935-C45A-6372-865FCA18BA21}', 'admin', 'index', 'dashboard', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 20:17:04');
INSERT INTO `il_user_log` VALUES ('{F7215F72-38E2-EF91-E60F-5064FE5A2410}', 'system', 'node', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:42:29');
INSERT INTO `il_user_log` VALUES ('{F7283182-3E0F-5424-E456-42BF4CA0DE24}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:49:55');
INSERT INTO `il_user_log` VALUES ('{F77D3FB7-CDBC-FAA2-6F1A-F482B4BCE311}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:37:12');
INSERT INTO `il_user_log` VALUES ('{F7843305-F1AF-47AC-6D75-07613DC3CE41}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 11:48:35');
INSERT INTO `il_user_log` VALUES ('{F899F457-2F7F-0FF1-E3DD-56A51C1E50A6}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:39:22');
INSERT INTO `il_user_log` VALUES ('{F8CFDD99-6B54-6B8D-7644-3D5F9CB78E50}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:12:26');
INSERT INTO `il_user_log` VALUES ('{F8FBD5ED-F858-12F4-F573-29A85A282D5E}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:52:11');
INSERT INTO `il_user_log` VALUES ('{F952AAC9-9A76-6F56-0487-D2E7169668FE}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:04:18');
INSERT INTO `il_user_log` VALUES ('{F95E80AD-2679-75DF-5BC2-4526E24C42F9}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 13:56:06');
INSERT INTO `il_user_log` VALUES ('{F9837410-ACE9-2D1D-A619-D5EDDFD8C823}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 20:44:15');
INSERT INTO `il_user_log` VALUES ('{F9C1D6C9-A7C6-6D64-7E9D-4FCA7B330E75}', 'admin', 'locator', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 17:17:36');
INSERT INTO `il_user_log` VALUES ('{FA228279-C753-65E4-4CC9-14C4C8E4A494}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:45:58');
INSERT INTO `il_user_log` VALUES ('{FA2702B5-0AFA-AEC0-E4E6-40E59E822717}', 'system', 'role', 'del', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:12:34');
INSERT INTO `il_user_log` VALUES ('{FA5FBC70-3CF1-26DC-7DA7-2FB38155215C}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:45:41');
INSERT INTO `il_user_log` VALUES ('{FA992F09-D358-2AA8-D7D0-8F921A541ABD}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:17:47');
INSERT INTO `il_user_log` VALUES ('{FA9CD780-F9F7-B6B1-6AB0-8856A496EF14}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:01:22');
INSERT INTO `il_user_log` VALUES ('{FAAAC7C2-1D6C-EA38-0EBE-2F462DE76485}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:50:40');
INSERT INTO `il_user_log` VALUES ('{FAF4D615-0E61-CF3C-F1AE-68C52218B955}', 'admin', 'incident', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:57:52');
INSERT INTO `il_user_log` VALUES ('{FAF600CF-4CF9-68D6-C2F6-B22449737116}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 20:39:23');
INSERT INTO `il_user_log` VALUES ('{FB04C244-E336-E563-3E50-A90E832B1FF7}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:40:54');
INSERT INTO `il_user_log` VALUES ('{FC3A6DB9-8806-8BE6-DAF3-B8B5CB22C308}', 'admin', 'person', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 13:58:10');
INSERT INTO `il_user_log` VALUES ('{FC4619BB-6B28-078B-1C11-24495A4DFC9D}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 17:36:18');
INSERT INTO `il_user_log` VALUES ('{FC5786F2-B449-48DD-1F9D-7188AFF93714}', 'admin', 'outfirefacility', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:17:35');
INSERT INTO `il_user_log` VALUES ('{FCAA06FB-17DC-5957-AA16-6C73E14372B2}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 17:38:26');
INSERT INTO `il_user_log` VALUES ('{FCAD4881-592D-49AC-E36E-7487058D9D14}', 'admin', 'person', 'detail', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:07:56');
INSERT INTO `il_user_log` VALUES ('{FCE39299-4E58-3A8F-00EE-31E5F080F61C}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:47:18');
INSERT INTO `il_user_log` VALUES ('{FCEA375D-C0A7-B08B-D711-E2C5CFD932F5}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:24:09');
INSERT INTO `il_user_log` VALUES ('{FD18688F-108C-D441-29DD-8E41BBF02F2C}', 'admin', 'index', 'dashboard', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 09:34:58');
INSERT INTO `il_user_log` VALUES ('{FDB9771F-ABC6-F771-4DDA-4D779EC2DFFC}', 'system', 'role', 'forbid', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 18:48:51');
INSERT INTO `il_user_log` VALUES ('{FDC4C3FD-BBCB-7B71-8EC4-7C2033D1531F}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 20:02:34');
INSERT INTO `il_user_log` VALUES ('{FDD6DD0E-6A8F-C262-FB0A-30AA4528A131}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:23:41');
INSERT INTO `il_user_log` VALUES ('{FDDE6146-697F-467E-D0DE-67FFFD7BF106}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 18:05:39');
INSERT INTO `il_user_log` VALUES ('{FE5F2E0F-C647-C8EB-8FE9-05DE326EEC38}', 'admin', 'person', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 19:47:22');
INSERT INTO `il_user_log` VALUES ('{FE685709-AC3D-3081-DDE6-28C63600CB86}', 'admin', 'person', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 12:07:23');
INSERT INTO `il_user_log` VALUES ('{FE74BC1D-83CE-5A6B-DD80-C3AD618F160E}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 20:02:21');
INSERT INTO `il_user_log` VALUES ('{FE8C17F0-4426-0587-D3FD-9C0009A8C3F9}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 18:09:24');
INSERT INTO `il_user_log` VALUES ('{FE93BDF6-0A20-1159-0CAD-F6B68CB33113}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 17:41:12');
INSERT INTO `il_user_log` VALUES ('{FED95DA5-6AEB-A453-776C-D23B3C1ACC5B}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-14 18:15:30');
INSERT INTO `il_user_log` VALUES ('{FEE5243D-F4A3-84F2-709F-5E7E4A67F41C}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 16:58:49');
INSERT INTO `il_user_log` VALUES ('{FF2E4699-C703-A8CD-DACC-0A7FD847E0AE}', 'admin', 'organization', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-16 15:04:36');
INSERT INTO `il_user_log` VALUES ('{FF388961-D940-38E0-5BAD-0C94D7C076D0}', 'admin', 'localequipment', 'mod', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 10:56:03');
INSERT INTO `il_user_log` VALUES ('{FFBA377D-9FAA-DE65-8740-3A8440865BBC}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 11:19:51');
INSERT INTO `il_user_log` VALUES ('{FFBEA650-4AD6-1169-A484-AFE72AE5A383}', 'admin', 'group', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-15 19:41:08');
INSERT INTO `il_user_log` VALUES ('{FFC06A32-3DD0-B9B0-8223-1707CDF44728}', 'admin', 'floor', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 12:17:33');
INSERT INTO `il_user_log` VALUES ('{FFC0C64B-575A-F0DC-A505-243E19951CB4}', 'admin', 'locator', 'add', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-17 16:29:44');
INSERT INTO `il_user_log` VALUES ('{FFC10A76-7E33-812D-4DF3-77A70257E78E}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-12 16:42:12');
INSERT INTO `il_user_log` VALUES ('{FFD854FB-8436-05C2-6B66-671F25E99102}', 'system', 'user', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-18 19:28:14');

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_menu_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('2', '0', '系统管理', '', '', '#', '', '_self', '1000', '1', '0', '2015-11-16 19:15:38');
INSERT INTO `system_menu` VALUES ('3', '4', '后台首页', '', 'fa fa-fw fa-tachometer', 'admin/index/main', '', '_self', '10', '1', '0', '2015-11-17 13:27:25');
INSERT INTO `system_menu` VALUES ('4', '2', '系统配置', '', '', '#', '', '_self', '100', '1', '0', '2016-03-14 18:12:55');
INSERT INTO `system_menu` VALUES ('5', '4', '网站参数', '', 'fa fa-apple', 'admin/config/index', '', '_self', '20', '1', '0', '2016-05-06 14:36:49');
INSERT INTO `system_menu` VALUES ('6', '4', '文件存储', '', 'fa fa-hdd-o', 'admin/config/file', '', '_self', '30', '1', '0', '2016-05-06 14:39:43');
INSERT INTO `system_menu` VALUES ('9', '20', '操作日志', '', 'glyphicon glyphicon-console', 'admin/log/index', '', '_self', '50', '1', '0', '2017-03-24 15:49:31');
INSERT INTO `system_menu` VALUES ('19', '20', '权限管理', '', 'fa fa-user-secret', 'admin/auth/index', '', '_self', '20', '1', '0', '2015-11-17 13:18:12');
INSERT INTO `system_menu` VALUES ('20', '2', '系统权限', '', '', '#', '', '_self', '200', '1', '0', '2016-03-14 18:11:41');
INSERT INTO `system_menu` VALUES ('21', '20', '系统菜单', '', 'glyphicon glyphicon-menu-hamburger', 'admin/menu/index', '', '_self', '30', '1', '0', '2015-11-16 19:16:16');
INSERT INTO `system_menu` VALUES ('22', '20', '节点管理', '', 'fa fa-ellipsis-v', 'admin/node/index', '', '_self', '10', '1', '0', '2015-11-16 19:16:16');
INSERT INTO `system_menu` VALUES ('29', '20', '系统用户', '', 'fa fa-users', 'admin/user/index', '', '_self', '40', '1', '0', '2016-10-31 14:31:40');
INSERT INTO `system_menu` VALUES ('61', '0', '微信管理', '', '', '#', '', '_self', '2000', '1', '0', '2017-03-29 11:00:21');
INSERT INTO `system_menu` VALUES ('62', '61', '微信对接配置', '', '', '#', '', '_self', '0', '1', '0', '2017-03-29 11:03:38');
INSERT INTO `system_menu` VALUES ('63', '62', '微信接口配置\r\n', '', 'fa fa-usb', 'wechat/config/index', '', '_self', '0', '1', '0', '2017-03-29 11:04:44');
INSERT INTO `system_menu` VALUES ('64', '62', '微信支付配置', '', 'fa fa-paypal', 'wechat/config/pay', '', '_self', '0', '1', '0', '2017-03-29 11:05:29');
INSERT INTO `system_menu` VALUES ('65', '61', '微信粉丝管理', '', '', '#', '', '_self', '0', '1', '0', '2017-03-29 11:08:32');
INSERT INTO `system_menu` VALUES ('66', '65', '粉丝标签', '', 'fa fa-tags', 'wechat/tags/index', '', '_self', '0', '1', '0', '2017-03-29 11:09:41');
INSERT INTO `system_menu` VALUES ('67', '65', '已关注粉丝', '', 'fa fa-wechat', 'wechat/fans/index', '', '_self', '0', '1', '0', '2017-03-29 11:10:07');
INSERT INTO `system_menu` VALUES ('68', '61', '微信订制', '', '', '#', '', '_self', '0', '1', '0', '2017-03-29 11:10:39');
INSERT INTO `system_menu` VALUES ('69', '68', '微信菜单定制', '', 'glyphicon glyphicon-phone', 'wechat/menu/index', '', '_self', '0', '1', '0', '2017-03-29 11:11:08');
INSERT INTO `system_menu` VALUES ('70', '68', '关键字管理', '', 'fa fa-paw', 'wechat/keys/index', '', '_self', '0', '1', '0', '2017-03-29 11:11:49');
INSERT INTO `system_menu` VALUES ('71', '68', '关注自动回复', '', 'fa fa-commenting-o', 'wechat/keys/subscribe', '', '_self', '0', '1', '0', '2017-03-29 11:12:32');
INSERT INTO `system_menu` VALUES ('81', '68', '无配置默认回复', '', 'fa fa-commenting-o', 'wechat/keys/defaults', '', '_self', '0', '1', '0', '2017-04-21 14:48:25');
INSERT INTO `system_menu` VALUES ('82', '61', '素材资源管理', '', '', '#', '', '_self', '0', '1', '0', '2017-04-24 11:23:18');
INSERT INTO `system_menu` VALUES ('83', '82', '添加图文', '', 'fa fa-folder-open-o', 'wechat/news/add?id=1', '', '_self', '0', '1', '0', '2017-04-24 11:23:40');
INSERT INTO `system_menu` VALUES ('85', '82', '图文列表', '', 'fa fa-file-pdf-o', 'wechat/news/index', '', '_self', '0', '1', '0', '2017-04-24 11:25:45');
INSERT INTO `system_menu` VALUES ('86', '65', '粉丝黑名单', '', 'fa fa-reddit-alien', 'wechat/fans/back', '', '_self', '0', '1', '0', '2017-05-05 16:17:03');

-- ----------------------------
-- Table structure for system_sequence
-- ----------------------------
DROP TABLE IF EXISTS `system_sequence`;
CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  KEY `index_system_sequence_type` (`type`) USING BTREE,
  KEY `index_system_sequence_number` (`sequence`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统序号表';

-- ----------------------------
-- Records of system_sequence
-- ----------------------------
