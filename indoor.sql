/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : indoor

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-08-11 20:40:35
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
INSERT INTO `il_floor` VALUES ('{FF45E1EB-0721-7D71-9608-BC212359908D}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '4', '4554', 'dsfad', 'dasfd', '备注2层');
INSERT INTO `il_floor` VALUES ('{9E0162C6-0D65-376E-73A5-1C9573956CAE}', '', '1', '1600', 'fdf', 'dfdf', '5层');
INSERT INTO `il_floor` VALUES ('{C716F988-72BC-FB6A-AB2D-A353BD7A3DE9}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '1', '3000', 'tffd', 'fdd', '5层');

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
INSERT INTO `il_group` VALUES ('{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '第4组', '{58E2B509-502D-E77D-3902-A3A6F11ED240}', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{6C2532B0-84AF-31B8-5ADD-0A3E9883AE9A}', '第三组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{7F24EB5F-8BF5-0B50-3B14-17654B7593AD}', '第一组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{16855727-C02A-0573-313E-4ACC6211419C}', '第二组', '{A35BF193-C318-C9B9-6B07-CB08CF2E4A75}', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{876C30E2-7730-08BC-4894-7611030AF373}', '第五组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{20B3A08F-6389-6B52-6B40-45DDE2AEE00B}', '第六组', '{6F5AE69C-A5A9-9ABD-A614-1ACF04285F17}', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{653FBEA5-0D59-244E-4166-55FC3DD3EC76}', '第二组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');

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
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未使用，1正常在用，2正常停用，3故障停用',
  PRIMARY KEY (`lequ_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_local_equipment
-- ----------------------------
INSERT INTO `il_local_equipment` VALUES ('{EDB3F169-BC5B-DE15-F20E-1A68AF657B8E}', '终端二', '2056', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_local_equipment` VALUES ('{81667213-50DA-4AEC-9EC8-B11097123D3B}', '中断而', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_local_equipment` VALUES ('{9FA11B9A-3704-F002-44E9-2DE4ABA17064}', '终端4', '894556800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_local_equipment` VALUES ('{CB98BEEB-7D18-58F9-E138-43FFD0B04CF1}', '终端三', '639244800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_local_equipment` VALUES ('{C124CD47-C69C-04AE-9FA2-9612C06E69D0}', '终端5', '1399305600', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');

-- ----------------------------
-- Table structure for il_location_mark
-- ----------------------------
DROP TABLE IF EXISTS `il_location_mark`;
CREATE TABLE `il_location_mark` (
  `lmar_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '定位信标id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '信标类型',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位',
  `mac` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未使用，1正常在用，2正常停用，3故障停用',
  PRIMARY KEY (`lmar_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_location_mark
-- ----------------------------
INSERT INTO `il_location_mark` VALUES ('{C7448A9E-A9CD-01D5-87FF-4FFC5DB9ECCC}', '信标一', '1', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', 'fdsaf6565', '1');
INSERT INTO `il_location_mark` VALUES ('{50E15174-63B4-3C66-6F5C-EE3B298233E7}', '信标二', '1', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '6556+56sdf', '0');

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
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未使用，1正常在用，2正常停用，3故障停用，4遗失，5报废',
  PRIMARY KEY (`loc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_locator
-- ----------------------------
INSERT INTO `il_locator` VALUES ('{A73E1147-BC5F-C6AB-55D2-266642AA1C4E}', '套件九', '545345', '1329148800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_locator` VALUES ('{40F07D59-23A7-1CB7-E4F3-512239754508}', '套件四', '556546', '1370275200', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_locator` VALUES ('{96C78A19-C82A-6A0A-0B2D-6A86CC031088}', '套件七', '654656', '-28800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_locator` VALUES ('{9548413F-9E38-FEC4-1636-58BEAD37A2EF}', '套件六', '5432545', '545410800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_locator` VALUES ('{A24AAF1B-AD2D-03D7-B454-274B1FA99A38}', '套件八', '534254', '2147443200', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_locator` VALUES ('{16CCCA18-3A73-3E5A-BB60-FA8FF6DC876D}', '套件二', '31243', '936806400', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_locator` VALUES ('{FA9A37EC-758B-6877-6E12-49F9749322B6}', '套件十一', '543656', '-28800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{C3A80AB2-655A-F369-C341-D491D1E6E939}', '套件十', '1234324', '1378396800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{1A306EC7-3826-5578-0E04-D257EB43CF3C}', '套件三', '54325', '-28800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '3');
INSERT INTO `il_locator` VALUES ('{0B725BAF-7F7D-1ACA-CF37-A586AA79ADEA}', '套件一', '2132', '1399564800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{6C2F3990-B14D-5194-FD59-1003C3656DEE}', '套件五', '54214', '1428681600', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');

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
INSERT INTO `il_node` VALUES ('admin/building/add', 'admin/building', '添加', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/del', 'admin/building', '删除', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/detail', 'admin/building', '详情', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/index', 'admin/building', '列表', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/mod', 'admin/building', '修改', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor', 'admin', '楼层管理', '0', '0', '0', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/add', 'admin/floor', '添加', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/del', 'admin/floor', '删除', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/detail', 'admin/floor', '', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/index', 'admin/floor', '查看', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/mod', 'admin/floor', '修改', '1', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/group', 'admin', '组管理', '0', '0', '0', '1502421923');
INSERT INTO `il_node` VALUES ('admin/group/add', 'admin/group', '', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/group/del', 'admin/group', '', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/group/detail', 'admin/group', '', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/group/index', 'admin/group', '列表', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/group/mod', 'admin/group', '', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/groupperson', 'admin', '组成员管理', '0', '0', '0', '1502421923');
INSERT INTO `il_node` VALUES ('admin/groupperson/add', 'admin/groupperson', '', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/groupperson/del', 'admin/groupperson', '', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/groupperson/index', 'admin/groupperson', '组员列表', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/groupperson/set', 'admin/groupperson', '', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/incident', 'admin', '事件管理', '0', '0', '0', '1502421923');
INSERT INTO `il_node` VALUES ('admin/incident/add', 'admin/incident', '', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/incident/del', 'admin/incident', '', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/incident/detail', 'admin/incident', '', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/incident/index', 'admin/incident', '事件列表', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/incident/mod', 'admin/incident', '', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/index', 'admin', '首页', '0', '0', '0', '1502421923');
INSERT INTO `il_node` VALUES ('admin/index/dashboard', 'admin/index', '主面板', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/index/index', 'admin/index', '', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment', 'admin', '现场终端管理', '0', '0', '0', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment/add', 'admin/localequipment', '', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment/del', 'admin/localequipment', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/localequipment/detail', 'admin/localequipment', '', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment/index', 'admin/localequipment', '终端列表', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment/mod', 'admin/localequipment', '', '0', '0', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/locationmark', 'admin', '信标管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/add', 'admin/locationmark', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/del', 'admin/locationmark', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/detail', 'admin/locationmark', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/index', 'admin/locationmark', '信标列表', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/mod', 'admin/locationmark', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator', 'admin', '定位套件管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/add', 'admin/locator', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/del', 'admin/locator', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/detail', 'admin/locator', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/index', 'admin/locator', '列表', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/mod', 'admin/locator', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization', 'admin', '单位管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/add', 'admin/organization', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/del', 'admin/organization', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/detail', 'admin/organization', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/index', 'admin/organization', '子单位列表', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/mod', 'admin/organization', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/self', 'admin/organization', '本单位信息', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility', 'admin', '消防设备管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/add', 'admin/outfirefacility', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/del', 'admin/outfirefacility', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/detail', 'admin/outfirefacility', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/floors', 'admin/outfirefacility', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/index', 'admin/outfirefacility', '列表', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/mod', 'admin/outfirefacility', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person', 'admin', '人员管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/add', 'admin/person', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/del', 'admin/person', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/detail', 'admin/person', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/index', 'admin/person', '人员列表', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/mod', 'admin/person', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system', '', '系统管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/node', 'system', '节点管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/node/index', 'system/node', '节点列表', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/node/save', 'system/node', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role', 'system', '角色管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/add', 'system/role', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/authsave', 'system/role', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/authshow', 'system/role', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/del', 'system/role', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/forbid', 'system/role', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/index', 'system/role', '角色列表', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/mod', 'system/role', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/resume', 'system/role', '', '0', '0', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user', 'system', '用户管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/add', 'system/user', '', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/del', 'system/user', '', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/detail', 'system/user', '', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/forbid', 'system/user', '', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/index', 'system/user', '用户列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/mod', 'system/user', '', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/userlog', 'system', '用户日志', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/userlog/del', 'system/userlog', '', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/userlog/delall', 'system/userlog', '', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/userlog/index', 'system/userlog', '日志列表', '0', '1', '1', '1502421924');

-- ----------------------------
-- Table structure for il_organization
-- ----------------------------
DROP TABLE IF EXISTS `il_organization`;
CREATE TABLE `il_organization` (
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `abbr` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `p_org_id` char(38) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父级单位id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`org_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_organization
-- ----------------------------
INSERT INTO `il_organization` VALUES ('{C584937A-6D3B-B762-1029-095D68D54663}', '子单位一', '一', '科技园高新北四道233号', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_organization` VALUES ('{3591E0DD-5013-8640-0BFF-4E48FA697596}', '子单位一', '三', '科技园高新北四道23号', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_organization` VALUES ('{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '深圳市淘米科技有限公司', 'tomee2', '深圳市高新北四道贝特尔大厦三楼', null, '0');
INSERT INTO `il_organization` VALUES ('{DBF4B774-6081-DF31-5E06-3802A845AFBB}', '测试3', 'test03', '深圳', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_organization` VALUES ('{91F68BC5-F6A0-327D-6B71-D4E772D524BA}', '测试单位22', 'test022', '高新北2', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_organization` VALUES ('{68C773AC-5F0C-2037-AC79-F79CA1793BEB}', '英拿电子', 'inna', '深圳市', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_organization` VALUES ('{09F0ABC0-6314-9B37-3874-D806E525BBE9}', '测试4', 'test04', '深圳市', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');

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
INSERT INTO `il_person` VALUES ('{5B5E18E7-22E5-8C2F-3E50-2B0803EF85FE}', '人员三', '0', '65548800', '20170613\\eae2b17ecf8e93a1999bf', '1', '444444444', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '1', '3', '1433779200', '{96C78A19-C82A-6A0A-0B2D-6A86CC031088}', '0');
INSERT INTO `il_person` VALUES ('{25EF63DD-7B3B-3770-16C2-2A6E65BEE290}', '王五', '1', '1396627200', '20170613\\eae2b17ecf8e93a1999bf', '1', '6546545454', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '1258732800', '{A73E1147-BC5F-C6AB-55D2-266642AA1C4E}', '0');
INSERT INTO `il_person` VALUES ('{485A04A4-90BC-C425-E350-F7654B6B6FC9}', '李三', '0', '618591600', '20170613\\eae2b17ecf8e93a1999bf', '1', '456446', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '{20B3A08F-6389-6B52-6B40-45DDE2AEE00B}', '2', '2', '1260633600', '{40F07D59-23A7-1CB7-E4F3-512239754508}', '0');
INSERT INTO `il_person` VALUES ('{F6863A60-4D79-4934-95AB-648D504E004B}', '人员w', '1', '-460022400', '20170623\\990c0207bff34c60304697247a7263d7.jpg', '0', '65556665', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '1430668800', '{9548413F-9E38-FEC4-1636-58BEAD37A2EF}', '0');
INSERT INTO `il_person` VALUES ('{A893365B-305A-CEDB-7688-9720B5330015}', '人员刘', '0', '-28800', '20170622\\37016c6b2c532214f53637a021c7584e.jpg', '0', '95456554', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '{16855727-C02A-0573-313E-4ACC6211419C}', '2', '3', '-28800', '{A24AAF1B-AD2D-03D7-B454-274B1FA99A38}', '0');
INSERT INTO `il_person` VALUES ('{B4A661EB-B3F5-C40F-B741-9053CC5D2B28}', '人员发', '0', '-28800', '20170623\\b7b27fab7c77201189a9abd805731472.jpg', '0', '654655', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '{20B3A08F-6389-6B52-6B40-45DDE2AEE00B}', '2', '2', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{6F5AE69C-A5A9-9ABD-A614-1ACF04285F17}', '李三', '0', '1399305600', '', '0', '545645', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '{20B3A08F-6389-6B52-6B40-45DDE2AEE00B}', '1', '1', '1439049600', '', '0');
INSERT INTO `il_person` VALUES ('{84BF8A96-4BEA-1515-0973-D725E224F656}', '测试11', '0', '736099200', '', '0', '6534656', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '1', '1', '1367596800', '', '0');
INSERT INTO `il_person` VALUES ('{8406C428-7CCB-FD68-284E-01C7E0FA3D0B}', '张三', '0', '1433433600', '', '0', '878778', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '0', '{16CCCA18-3A73-3E5A-BB60-FA8FF6DC876D}', '0');
INSERT INTO `il_person` VALUES ('{0A9ECA32-F234-A673-4837-B2388C12C317}', '王柳', '0', '1420041600', '', '0', '54546565', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1430755200', '', '0');
INSERT INTO `il_person` VALUES ('{58E2B509-502D-E77D-3902-A3A6F11ED240}', '王文', '0', '-28800', '', '0', '546+65+65', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '1', '1', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{0F6AB859-DA46-C1A3-489A-A1B2BABDFBED}', '王文', '0', '1777996800', '', '0', '+656566', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{A35BF193-C318-C9B9-6B07-CB08CF2E4A75}', '人员发', '0', '-28800', '', '0', '654655', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '{16855727-C02A-0573-313E-4ACC6211419C}', '2', '2', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{E6A73A0D-E492-21DB-D71E-2ED1058D7C9D}', '人员发', '0', '-28800', '', '0', '654655', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{3FE5F5D6-F9D9-F9F2-18B6-53BCCCACCA1A}', '人员刘', '0', '-28800', '', '0', '95456554', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '3', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{F20F8AF5-C27C-5FE3-59D3-5BF5583E8CDD}', '张庆庆', '1', '0', '20170811\\7d4643269539ce9561c7022fa7aa8128.png', '1', '123232433234二维', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '1404403200', '{C3A80AB2-655A-F369-C341-D491D1E6E939}', '0');

-- ----------------------------
-- Table structure for il_role
-- ----------------------------
DROP TABLE IF EXISTS `il_role`;
CREATE TABLE `il_role` (
  `rol_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名称',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注说明',
  `sort` smallint(6) unsigned DEFAULT '0' COMMENT '排序权重',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0:正常,1:禁用)',
  `create_by` char(38) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '创建人',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`rol_id`),
  UNIQUE KEY `index_system_auth_title` (`name`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统权限表';

-- ----------------------------
-- Records of il_role
-- ----------------------------
INSERT INTO `il_role` VALUES ('{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', '普通用户', '拥有查看权限', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1', '{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', '1501058199');
INSERT INTO `il_role` VALUES ('{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', '普通管理员', '普通', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', '1500637333');
INSERT INTO `il_role` VALUES ('{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '超级管理员', '拥有所有权限', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', '1501036927');
INSERT INTO `il_role` VALUES ('{F8450F09-9220-8002-287D-6ED9A97F62A1}', '编辑管理员', '拥有编辑权限', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1', '{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', '1501036959');

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
INSERT INTO `il_rol_nod` VALUES ('{13FE8398-71B7-211D-3DBC-4D0562119F6D}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building');
INSERT INTO `il_rol_nod` VALUES ('{213203E7-3A94-95F6-85FC-B3A75D4F5EE1}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/del');
INSERT INTO `il_rol_nod` VALUES ('{6DE5BFC2-931B-6CF5-9686-B404927833DE}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/add');
INSERT INTO `il_rol_nod` VALUES ('{84C6078F-3D01-9F87-0E62-9CA9DCB2989B}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin');
INSERT INTO `il_rol_nod` VALUES ('{858B8F9C-BE3A-FB94-5193-F591A815CF5C}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/detail');
INSERT INTO `il_rol_nod` VALUES ('{9020214D-0BAE-398B-A044-61DE63DE2014}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/mod');
INSERT INTO `il_rol_nod` VALUES ('{BDDC4A30-A864-C932-537B-68ABDC8CCC06}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/index');

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
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `rol_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色',
  `create_by` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`use_id`),
  UNIQUE KEY `index_system_user_username` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统用户表';

-- ----------------------------
-- Records of il_user
-- ----------------------------
INSERT INTO `il_user` VALUES ('{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '123456', '123456@qq.com', '13888888888', '第二个用户', '0', '0', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', '', '1499341299');
INSERT INTO `il_user` VALUES ('{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@tomee.cn', '13888888888', '超级管理员', '32', '1502442981', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1501144826');
INSERT INTO `il_user` VALUES ('{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', 'yonghu2', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '13888888888', '第二个用户', '53', '1502435788', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', '', '1499838728');

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
INSERT INTO `il_user_log` VALUES ('{058F8E33-B95C-D6B4-C820-41175BB5C700}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:31');
INSERT INTO `il_user_log` VALUES ('{05A3E493-79E2-8817-B060-BDACF933078B}', 'admin', 'locator', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-11 18:27:14');
INSERT INTO `il_user_log` VALUES ('{0AB8AD59-8AD3-5ABD-7861-55A3F631BA11}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 20:37:12');
INSERT INTO `il_user_log` VALUES ('{0D291962-DE33-D980-2E96-8779BDF2F266}', 'admin', 'locationmark', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '10.0.2.111', '2017-08-11 18:27:13');
INSERT INTO `il_user_log` VALUES ('{0F82BF53-7446-65ED-DF9D-2C372DA7DD7A}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 16:48:40');
INSERT INTO `il_user_log` VALUES ('{17C4B61F-7465-EA32-F365-F619FA746A08}', 'system', 'node', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 20:37:08');
INSERT INTO `il_user_log` VALUES ('{2084B581-93F4-C4D0-36F2-E79A28F2A732}', 'system', 'role', 'authshow', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 20:38:35');
INSERT INTO `il_user_log` VALUES ('{210360DA-49B4-2169-201B-D663E6BE0B3C}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:38');
INSERT INTO `il_user_log` VALUES ('{25E1878A-90A6-B848-ABCE-0FE2210FD067}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-08 09:21:42');
INSERT INTO `il_user_log` VALUES ('{2823FEB1-AAAE-B29D-985F-B9AB736539E0}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:11');
INSERT INTO `il_user_log` VALUES ('{3B7112CF-92C8-ECC7-5415-D5AB02BE2B90}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-11 09:16:30');
INSERT INTO `il_user_log` VALUES ('{45EAFC8C-A5E9-7791-793F-CD1012E279EC}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:05');
INSERT INTO `il_user_log` VALUES ('{46C3A2D2-5F1D-8313-E3CD-E2FA52747808}', 'system', 'login', 'in', '成功', '', '', '', '0.0.0.0', '2017-08-11 11:08:41');
INSERT INTO `il_user_log` VALUES ('{4B4A3C83-2A63-DE75-8EDB-D16D4E8FF384}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-10 09:17:42');
INSERT INTO `il_user_log` VALUES ('{4C8D73FF-B620-21CE-774B-E34587E853F6}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 16:48:03');
INSERT INTO `il_user_log` VALUES ('{54DD663C-03AD-9FF0-D3CD-7394447435BA}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 17:16:10');
INSERT INTO `il_user_log` VALUES ('{558E4800-3CF4-B0CE-9998-BB26C0368DBA}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:16');
INSERT INTO `il_user_log` VALUES ('{58F328CE-4D7F-80F9-23A7-A071EB045D82}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 20:38:33');
INSERT INTO `il_user_log` VALUES ('{5A4D5033-F587-F702-3DA2-BB8332548967}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:41');
INSERT INTO `il_user_log` VALUES ('{5B094BFC-EE9D-84A6-8F35-D0B3C5EC8416}', 'system', 'userlog', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:48:07');
INSERT INTO `il_user_log` VALUES ('{5C741E0F-1533-724C-AB7D-B6AE6CF4D023}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 10:36:49');
INSERT INTO `il_user_log` VALUES ('{5E6EBE87-12F5-9CCD-5D10-A43AF8A19D72}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 14:51:33');
INSERT INTO `il_user_log` VALUES ('{60C1E5F9-13BD-F5B4-76E3-6DDB2742A2B4}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 09:36:38');
INSERT INTO `il_user_log` VALUES ('{61EDCC68-B013-C007-F904-ABD743E46C94}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-09 10:18:59');
INSERT INTO `il_user_log` VALUES ('{6248CB90-76A3-AC42-61AB-06180A62DD50}', 'admin', 'index', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:49:43');
INSERT INTO `il_user_log` VALUES ('{624908C3-27B1-CF38-63D1-247BC9AA78F5}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:49');
INSERT INTO `il_user_log` VALUES ('{65209362-2C11-EF9C-B704-16F2B883F7DE}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 10:03:15');
INSERT INTO `il_user_log` VALUES ('{684F649D-EB18-B71E-1045-8B14180DBD23}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-11 15:16:15');
INSERT INTO `il_user_log` VALUES ('{7793D900-78B8-B5AA-929F-E531A8E63D77}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:19');
INSERT INTO `il_user_log` VALUES ('{79939A64-6F48-F9A7-042F-5B511E18FD5E}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:25');
INSERT INTO `il_user_log` VALUES ('{79A43012-ED2C-3638-69BF-4C1147337F68}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:27');
INSERT INTO `il_user_log` VALUES ('{9698EE8E-A813-A3D7-767E-A7931FC174A3}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 20:29:00');
INSERT INTO `il_user_log` VALUES ('{98A39B8B-96A4-37FA-FFC7-003DA55F6C9C}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-11 10:23:41');
INSERT INTO `il_user_log` VALUES ('{A9E09693-D09E-D18C-0AB1-44CFD5DA8DB9}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:45');
INSERT INTO `il_user_log` VALUES ('{AB49D286-8CAD-0FB5-15DA-38451F203068}', 'admin', 'index', 'index', '成功', '', '', '', '0.0.0.0', '2017-08-09 15:26:42');
INSERT INTO `il_user_log` VALUES ('{AEB782B2-87D2-3CAB-BBA5-90E5A1C2635C}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 10:58:13');
INSERT INTO `il_user_log` VALUES ('{B09BEF3B-3E64-9FB3-345A-775BD0FCA463}', 'admin', 'building', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:49:40');
INSERT INTO `il_user_log` VALUES ('{B361EA90-A624-CB0A-63F1-3B1582E23BE1}', 'system', 'role', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:48:04');
INSERT INTO `il_user_log` VALUES ('{B5A6BC33-E581-C9E2-ABB2-F86195C0367A}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 15:15:25');
INSERT INTO `il_user_log` VALUES ('{BCDBB8A6-2E22-CF56-93C8-D10494F62F6B}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:22');
INSERT INTO `il_user_log` VALUES ('{BD412E4A-4EAE-AE3A-A3AE-8FF45153337D}', 'admin', 'group', 'index', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:44:09');
INSERT INTO `il_user_log` VALUES ('{BDF3F3E3-90A3-F55E-13DE-043F4D97F799}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:43');
INSERT INTO `il_user_log` VALUES ('{C51621EE-5701-97FF-7F40-ED7534293E89}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:09');
INSERT INTO `il_user_log` VALUES ('{D01F538F-70F1-D9AD-9537-E89582D6509B}', 'admin', 'index', 'index', '成功', '', '', '', '10.0.2.111', '2017-08-11 15:19:45');
INSERT INTO `il_user_log` VALUES ('{D4146564-0101-E05D-D6A2-9EDFA3469E6C}', 'system', 'login', 'in', '成功', '', '', '', '0.0.0.0', '2017-08-10 09:18:02');
INSERT INTO `il_user_log` VALUES ('{D7A34345-BC5C-5ED7-2577-9700BAD2CE58}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:47');
INSERT INTO `il_user_log` VALUES ('{D8C3C1F9-9A98-AA2A-E725-09A0452B99BF}', 'system', 'login', 'out', '成功', '', '', '', '0.0.0.0', '2017-08-11 10:03:58');
INSERT INTO `il_user_log` VALUES ('{DDE4CEFF-50FB-7ABE-AD5F-BC8FB78F55DB}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:03');
INSERT INTO `il_user_log` VALUES ('{E0B26335-BE48-C2AB-523F-89AEEFE2E6F0}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:33');
INSERT INTO `il_user_log` VALUES ('{E2F9F5DB-3D01-4D4A-E0A1-97726EC6199D}', 'system', 'login', 'in', '成功', '', '', '', '10.0.2.111', '2017-08-11 10:03:41');
INSERT INTO `il_user_log` VALUES ('{E93AE5D2-2BB0-CC7D-1481-E1FCA0A3E14B}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:35');
INSERT INTO `il_user_log` VALUES ('{EA0BDC0D-2E04-FE28-C774-505D9CACFF2A}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:51');
INSERT INTO `il_user_log` VALUES ('{F4FEA8C6-5751-AF5E-0FF4-0E76B0C27FEF}', 'system', 'login', 'in', '成功', '', '', '', '0.0.0.0', '2017-08-11 09:16:49');
INSERT INTO `il_user_log` VALUES ('{FD5D7DEE-D04D-6191-567A-D97D26DC1501}', 'system', 'node', 'save', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-08-11 17:47:14');

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
