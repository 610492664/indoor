/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : indoor

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-07-28 20:49:26
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
INSERT INTO `il_building` VALUES ('{BFF5481F-A3DF-F185-927A-83FF572351DB}', '建筑以', '60', '300', 'fasdf', '福华三路100号', '福田中队负责', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');
INSERT INTO `il_building` VALUES ('{6642EB69-0EC0-25FF-29A7-C2842E5AB4A7}', '建筑二', '100', '32767', 'fdsafd', '北四道1号', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');

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
INSERT INTO `il_floor` VALUES ('{FF45E1EB-0721-7D71-9608-BC212359908D}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '2', '4554', 'dsfad', 'dasfd', '备注2层');

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
INSERT INTO `il_group` VALUES ('{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '第四组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{6C2532B0-84AF-31B8-5ADD-0A3E9883AE9A}', '第三组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{7F24EB5F-8BF5-0B50-3B14-17654B7593AD}', '第一组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');

-- ----------------------------
-- Table structure for il_incident
-- ----------------------------
DROP TABLE IF EXISTS `il_incident`;
CREATE TABLE `il_incident` (
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件名称',
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
INSERT INTO `il_incident` VALUES ('{48460920-1AA0-BF9A-34DB-2358A2E7A4E4}', '事件一', '1', '突发火灾', '1462594528', '1462612528', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');

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
INSERT INTO `il_location_mark` VALUES ('{50E15174-63B4-3C66-6F5C-EE3B298233E7}', '信标二', '2', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '6556+56sdf', '0');

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
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`node`),
  KEY `index_system_node_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统节点表';

-- ----------------------------
-- Records of il_node
-- ----------------------------
INSERT INTO `il_node` VALUES ('admin', '', '', '0', '0', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building', 'admin', '', '0', '0', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/add', 'admin/building', '添加', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/del', 'admin/building', '修改', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/detail', 'admin/building', '详情', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/index', 'admin/building', '', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/insert', 'admin/building', '', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/mod', 'admin/building', '', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/update', 'admin/building', '', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor', 'admin', '', '0', '0', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/add', 'admin/floor', '', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/del', 'admin/floor', '', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/detail', 'admin/floor', '', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/index', 'admin/floor', '', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/insert', 'admin/floor', '', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/mod', 'admin/floor', '', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/update', 'admin/floor', '', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/group', 'admin', '', '0', '0', '1500902362');
INSERT INTO `il_node` VALUES ('admin/group/add', 'admin/group', '', '1', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/group/del', 'admin/group', '', '1', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/group/detail', 'admin/group', '', '1', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/group/index', 'admin/group', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/group/insert', 'admin/group', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/group/mod', 'admin/group', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/group/update', 'admin/group', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/incident', 'admin', '', '0', '0', '1500902362');
INSERT INTO `il_node` VALUES ('admin/incident/add', 'admin/incident', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/incident/del', 'admin/incident', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/incident/detail', 'admin/incident', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/incident/index', 'admin/incident', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/incident/insert', 'admin/incident', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/incident/mod', 'admin/incident', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/incident/update', 'admin/incident', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/index', 'admin', '', '0', '0', '1500902362');
INSERT INTO `il_node` VALUES ('admin/index/dashboard', 'admin/index', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/index/index', 'admin/index', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/localequipment', 'admin', '', '0', '0', '1500902362');
INSERT INTO `il_node` VALUES ('admin/localequipment/add', 'admin/localequipment', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/localequipment/del', 'admin/localequipment', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/localequipment/detail', 'admin/localequipment', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/localequipment/index', 'admin/localequipment', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/localequipment/insert', 'admin/localequipment', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/localequipment/mod', 'admin/localequipment', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/localequipment/update', 'admin/localequipment', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locationmark', 'admin', '', '0', '0', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locationmark/add', 'admin/locationmark', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locationmark/del', 'admin/locationmark', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locationmark/detail', 'admin/locationmark', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locationmark/index', 'admin/locationmark', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locationmark/insert', 'admin/locationmark', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locationmark/mod', 'admin/locationmark', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locationmark/update', 'admin/locationmark', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locator', 'admin', '', '0', '0', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locator/add', 'admin/locator', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locator/del', 'admin/locator', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locator/detail', 'admin/locator', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locator/index', 'admin/locator', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locator/insert', 'admin/locator', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locator/mod', 'admin/locator', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/locator/update', 'admin/locator', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/organization', 'admin', '', '0', '0', '1500902362');
INSERT INTO `il_node` VALUES ('admin/organization/add', 'admin/organization', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/organization/del', 'admin/organization', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/organization/detail', 'admin/organization', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/organization/index', 'admin/organization', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/organization/insert', 'admin/organization', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/organization/mod', 'admin/organization', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/organization/self', 'admin/organization', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/organization/update', 'admin/organization', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/outfirefacility', 'admin', '', '0', '0', '1500902362');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/add', 'admin/outfirefacility', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/del', 'admin/outfirefacility', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/detail', 'admin/outfirefacility', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/floors', 'admin/outfirefacility', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/index', 'admin/outfirefacility', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/insert', 'admin/outfirefacility', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/mod', 'admin/outfirefacility', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/update', 'admin/outfirefacility', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/person', 'admin', '', '0', '0', '1500902362');
INSERT INTO `il_node` VALUES ('admin/person/add', 'admin/person', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/person/del', 'admin/person', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/person/detail', 'admin/person', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/person/index', 'admin/person', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/person/insert', 'admin/person', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/person/mod', 'admin/person', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('admin/person/update', 'admin/person', '', '0', '1', '1500902362');
INSERT INTO `il_node` VALUES ('system', '', '', '0', '0', '1500902362');
INSERT INTO `il_node` VALUES ('system/node', 'system', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/node/index', 'system/node', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/node/save', 'system/node', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/role', 'system', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/role/add', 'system/role', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/role/authsave', 'system/role', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/role/authshow', 'system/role', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/role/del', 'system/role', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/role/forbid', 'system/role', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/role/index', 'system/role', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/role/mod', 'system/role', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/role/resume', 'system/role', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/user', 'system', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/user/add', 'system/user', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/user/del', 'system/user', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/user/detail', 'system/user', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/user/index', 'system/user', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/user/insert', 'system/user', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/user/mod', 'system/user', '', '0', '1', '1500902363');
INSERT INTO `il_node` VALUES ('system/user/update', 'system/user', '', '0', '1', '1500902363');

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
INSERT INTO `il_organization` VALUES ('{C584937A-6D3B-B762-1029-095D68D54663}', '子单位一', '一', '科技园高新北四道23号', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_organization` VALUES ('{3591E0DD-5013-8640-0BFF-4E48FA697596}', '子单位一', '三', '科技园高新北四道23号', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_organization` VALUES ('{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '淘米科技有限公司', '淘米科技', '高新北四道贝特尔大厦', null, '0');

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
INSERT INTO `il_person` VALUES ('{5B5E18E7-22E5-8C2F-3E50-2B0803EF85FE}', '人员三', '0', '65548800', '20170613\\eae2b17ecf8e93a1999bf', '1', '444444444', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '3', '1433779200', '{96C78A19-C82A-6A0A-0B2D-6A86CC031088}', '0');
INSERT INTO `il_person` VALUES ('{25EF63DD-7B3B-3770-16C2-2A6E65BEE290}', '王五', '1', '1396627200', '20170613\\eae2b17ecf8e93a1999bf', '1', '6546545454', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '1258732800', '{A73E1147-BC5F-C6AB-55D2-266642AA1C4E}', '0');
INSERT INTO `il_person` VALUES ('{485A04A4-90BC-C425-E350-F7654B6B6FC9}', '李三', '0', '618591600', '20170613\\eae2b17ecf8e93a1999bf', '1', '456446', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '1260633600', '{40F07D59-23A7-1CB7-E4F3-512239754508}', '0');
INSERT INTO `il_person` VALUES ('{F6863A60-4D79-4934-95AB-648D504E004B}', '人员w', '1', '-460022400', '20170623\\990c0207bff34c60304697247a7263d7.jpg', '0', '65556665', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '1430668800', '{9548413F-9E38-FEC4-1636-58BEAD37A2EF}', '0');
INSERT INTO `il_person` VALUES ('{A893365B-305A-CEDB-7688-9720B5330015}', '人员刘', '0', '-28800', '20170622\\37016c6b2c532214f53637a021c7584e.jpg', '0', '95456554', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '3', '-28800', '{A24AAF1B-AD2D-03D7-B454-274B1FA99A38}', '0');
INSERT INTO `il_person` VALUES ('{B4A661EB-B3F5-C40F-B741-9053CC5D2B28}', '人员发', '0', '-28800', '20170623\\b7b27fab7c77201189a9abd805731472.jpg', '0', '654655', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{E7381CC9-D5A7-9C3E-4F9E-85BA77127E5C}', '人员李', '0', '-28800', '20170613\\eae2b17ecf8e93a1999bf', '0', '5655656+565', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{6F5AE69C-A5A9-9ABD-A614-1ACF04285F17}', '李三', '0', '1399305600', '', '0', '545645', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1439049600', '', '0');
INSERT INTO `il_person` VALUES ('{84BF8A96-4BEA-1515-0973-D725E224F656}', '测试11', '0', '736099200', '', '0', '6534656', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1367596800', '', '0');
INSERT INTO `il_person` VALUES ('{8406C428-7CCB-FD68-284E-01C7E0FA3D0B}', '张三', '0', '1433433600', '', '0', '878778', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '0', '{16CCCA18-3A73-3E5A-BB60-FA8FF6DC876D}', '0');
INSERT INTO `il_person` VALUES ('{E72D8891-8B90-CA1E-A324-D022D2CB6102}', '王宇', '0', '-28800', '', '0', '965454544', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{0A9ECA32-F234-A673-4837-B2388C12C317}', '王柳', '0', '1420041600', '', '0', '54546565', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1430755200', '', '0');
INSERT INTO `il_person` VALUES ('{58E2B509-502D-E77D-3902-A3A6F11ED240}', '王文', '0', '-28800', '', '0', '546+65+65', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{0F6AB859-DA46-C1A3-489A-A1B2BABDFBED}', '王文', '0', '1777996800', '', '0', '+656566', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{F1962712-E9E6-4400-3922-4200E91F8739}', '人员发', '0', '-28800', '', '0', '654655', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{A35BF193-C318-C9B9-6B07-CB08CF2E4A75}', '人员发', '0', '-28800', '', '0', '654655', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{E6A73A0D-E492-21DB-D71E-2ED1058D7C9D}', '人员发', '0', '-28800', '', '0', '654655', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{3FE5F5D6-F9D9-F9F2-18B6-53BCCCACCA1A}', '人员刘', '0', '-28800', '', '0', '95456554', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '3', '-28800', '', '0');

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
INSERT INTO `il_role` VALUES ('{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', '普通用户', '拥有查看权限', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', '1501058199');
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
INSERT INTO `il_rol_nod` VALUES ('{00D7C68C-3576-A58F-3295-44CE69EFBCE9}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization/self');
INSERT INTO `il_rol_nod` VALUES ('{01EE75AB-0899-366B-9FC2-D50C7005BFDC}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark/del');
INSERT INTO `il_rol_nod` VALUES ('{042BCF29-1F85-843A-617F-75AE8CB954B0}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group/update');
INSERT INTO `il_rol_nod` VALUES ('{062458C1-2AA8-A021-9850-A5F8D47EF2B0}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building/del');
INSERT INTO `il_rol_nod` VALUES ('{067CBA78-F092-CDFE-3887-37CEE1F73CF4}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/floor/index');
INSERT INTO `il_rol_nod` VALUES ('{0AB856B6-7B17-FCB1-727D-FE792BD7A27E}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility/del');
INSERT INTO `il_rol_nod` VALUES ('{0B3DB349-66E8-A310-DC37-FEFBA9599CCF}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark/update');
INSERT INTO `il_rol_nod` VALUES ('{0BD6293F-1FD1-BA58-3308-E705066D49B4}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator/mod');
INSERT INTO `il_rol_nod` VALUES ('{0CFC4ECE-F999-60FB-0D4E-8FB3FE092CC0}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building/getlist');
INSERT INTO `il_rol_nod` VALUES ('{0D87FC55-D0A2-7DDE-40CC-21BEF92D66FF}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building/index');
INSERT INTO `il_rol_nod` VALUES ('{0DC1BF54-B69F-2AC0-E00B-F91FDC80E9F0}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment');
INSERT INTO `il_rol_nod` VALUES ('{0E8942F9-5E9E-BA33-1488-7C01F067FF04}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment/insert');
INSERT INTO `il_rol_nod` VALUES ('{0E9460CE-0562-E76D-154E-30236E319113}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person/update');
INSERT INTO `il_rol_nod` VALUES ('{1887F415-4C51-BB4D-21F7-1EBE640CE166}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/floor/update');
INSERT INTO `il_rol_nod` VALUES ('{1891E07E-F471-6BFF-138B-69D0CF938EAF}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator/insert');
INSERT INTO `il_rol_nod` VALUES ('{206CD88F-21F9-100F-A826-F8658003C639}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/floor/add');
INSERT INTO `il_rol_nod` VALUES ('{20C2240F-7A49-D69E-F84C-BB5497FFC8AB}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator/index');
INSERT INTO `il_rol_nod` VALUES ('{2DDC8326-5E88-BFCB-8294-32D13FD3AACE}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization/mod');
INSERT INTO `il_rol_nod` VALUES ('{2FC63382-E945-B930-4B89-6D4D90668D71}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group/getlist');
INSERT INTO `il_rol_nod` VALUES ('{30C147E9-CEAE-B7E8-0130-A62A816E49E1}', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', 'admin/building');
INSERT INTO `il_rol_nod` VALUES ('{30DB7FFD-3D87-B9E8-CBA3-0ED572298CFF}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person/del');
INSERT INTO `il_rol_nod` VALUES ('{3605EF81-3A4B-B0EB-5A0D-58B957C0F1F7}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group/insert');
INSERT INTO `il_rol_nod` VALUES ('{375669F0-F652-1E50-1DF9-7DA0D59D217A}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/floor/insert');
INSERT INTO `il_rol_nod` VALUES ('{3767F5BF-9867-3A41-DE4A-9B3F98038FFB}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person/mod');
INSERT INTO `il_rol_nod` VALUES ('{382EF484-B8A8-30AD-98DD-D82F4101B163}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark/detail');
INSERT INTO `il_rol_nod` VALUES ('{39B2388C-EB60-C496-20E7-B868B29E74FC}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident/detail');
INSERT INTO `il_rol_nod` VALUES ('{3AA517A3-4D47-A785-A578-9339E746A1C3}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/floor');
INSERT INTO `il_rol_nod` VALUES ('{3CA4E8C9-FC2E-455C-9EC5-5A3BC4C94DFD}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person/getlist');
INSERT INTO `il_rol_nod` VALUES ('{3EB89CA2-D4D1-7DFB-F9AD-8EFF53F85905}', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', 'admin/building/del');
INSERT INTO `il_rol_nod` VALUES ('{46691D1F-8FC6-4986-31FC-E5B333402E44}', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', 'admin/building/mod');
INSERT INTO `il_rol_nod` VALUES ('{46FCAB82-95F7-D5BF-8163-5F0B3DF1A4D1}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/index');
INSERT INTO `il_rol_nod` VALUES ('{4B500A21-90CA-345C-5143-B8A45D5536B1}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/index/dashboard');
INSERT INTO `il_rol_nod` VALUES ('{4D6A48C7-74AE-6837-18E0-42F5600F9F5B}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization/insert');
INSERT INTO `il_rol_nod` VALUES ('{5057DEEE-0919-92EC-2325-B405CF1FABD0}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator/detail');
INSERT INTO `il_rol_nod` VALUES ('{51E9C0EB-FAA1-F2C9-9C04-EE0B490FFBEC}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person/add');
INSERT INTO `il_rol_nod` VALUES ('{55B0F009-073C-B331-1457-862B122ACDE3}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark/insert');
INSERT INTO `il_rol_nod` VALUES ('{562BD2C5-9650-FB09-2B52-A169C71EA432}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility');
INSERT INTO `il_rol_nod` VALUES ('{586BAD92-1675-79B7-46BD-E2E9D0407E98}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility/getlist');
INSERT INTO `il_rol_nod` VALUES ('{593AD237-14FD-3EE5-A03B-01E3424AF948}', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', 'admin/building/add');
INSERT INTO `il_rol_nod` VALUES ('{599777E9-FC39-138A-5AC4-53ADDD54E74B}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility/update');
INSERT INTO `il_rol_nod` VALUES ('{59DE312A-1ECD-E97E-8D98-6BB1FEC2A506}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident/index');
INSERT INTO `il_rol_nod` VALUES ('{5B96663F-3A8F-DAE9-FF17-95A1FB02547C}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident/mod');
INSERT INTO `il_rol_nod` VALUES ('{5F58855F-BA4F-B42C-68B1-7F3D513FC4A9}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person/insert');
INSERT INTO `il_rol_nod` VALUES ('{5FDBB915-2778-FADF-A0A3-3F7F671E1C45}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment/getlist');
INSERT INTO `il_rol_nod` VALUES ('{63ACEFFC-A933-5BC4-FF9D-854199CA7237}', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', 'admin/building/detail');
INSERT INTO `il_rol_nod` VALUES ('{63CA572C-EE75-8F39-8A19-8C8A591D8866}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization/update');
INSERT INTO `il_rol_nod` VALUES ('{63F8B1D2-7CF2-0C32-6320-EC76DC51DF3D}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility/index');
INSERT INTO `il_rol_nod` VALUES ('{64A2A502-55BC-D540-AF40-A0B015227751}', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', 'admin');
INSERT INTO `il_rol_nod` VALUES ('{6F1BADAC-31FB-4480-3167-5F8CEBDC6E29}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization/detail');
INSERT INTO `il_rol_nod` VALUES ('{72410D9C-23D7-7EB3-8D9E-A0C47E0F4E64}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization');
INSERT INTO `il_rol_nod` VALUES ('{728AC20C-3BB7-CA36-D998-A2CA87516286}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization/del');
INSERT INTO `il_rol_nod` VALUES ('{757C7527-C04C-C06D-834D-3E02A5DBEA58}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group/detail');
INSERT INTO `il_rol_nod` VALUES ('{7802E0DD-1259-0743-BC79-4793B0C6B902}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident/getlist');
INSERT INTO `il_rol_nod` VALUES ('{863D6563-07DB-7258-2847-694DDA1BD538}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization/index');
INSERT INTO `il_rol_nod` VALUES ('{8C4351E1-E13E-2B5F-A8FC-227025D77738}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group/add');
INSERT INTO `il_rol_nod` VALUES ('{9107E529-1B96-3F6B-1C60-9610413AC192}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark/index');
INSERT INTO `il_rol_nod` VALUES ('{9118750E-0D98-04D4-BA39-DA8648606BC2}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building');
INSERT INTO `il_rol_nod` VALUES ('{911CF0A2-1FC6-FCA9-F0F7-15E585A29521}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator/update');
INSERT INTO `il_rol_nod` VALUES ('{924188ED-CCF3-72A1-51C1-1AF7903185DE}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building/add');
INSERT INTO `il_rol_nod` VALUES ('{92C76163-6CC0-54F6-198D-08FA9E4EEACB}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark/add');
INSERT INTO `il_rol_nod` VALUES ('{93B49475-16A2-7F16-9FB6-810B4A9B0EF8}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group');
INSERT INTO `il_rol_nod` VALUES ('{9651CD90-047B-B047-ED7B-F36E8265378F}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment/update');
INSERT INTO `il_rol_nod` VALUES ('{9B0547AD-F0CB-EB7E-0CBD-5BF85EFC2BC8}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group/del');
INSERT INTO `il_rol_nod` VALUES ('{9B2C68DB-CAB1-3687-1FCA-FB505F35D0FF}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility/floors');
INSERT INTO `il_rol_nod` VALUES ('{9C42FDE6-74F2-120E-7113-CFF1993946F5}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/floor/getlist');
INSERT INTO `il_rol_nod` VALUES ('{9DF8C6AF-3551-0DE4-25F5-1373E05917A9}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark/getlist');
INSERT INTO `il_rol_nod` VALUES ('{9ECF54D3-B185-649E-626C-3329EF431A82}', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', 'admin/building/index');
INSERT INTO `il_rol_nod` VALUES ('{A0D8B093-616A-F26F-55A3-5A9BC8BC3DC7}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility/insert');
INSERT INTO `il_rol_nod` VALUES ('{A18CE6B1-DE1E-6EB2-B06C-6E128C211865}', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', 'admin/building/insert');
INSERT INTO `il_rol_nod` VALUES ('{A7F3A20C-121B-6A1F-1230-6966BD98BB72}', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', 'admin/building/getlist');
INSERT INTO `il_rol_nod` VALUES ('{A83942D5-6F44-B4DC-8FE1-AE12EF6895A4}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/floor/del');
INSERT INTO `il_rol_nod` VALUES ('{A9F823D4-757F-2081-AA9D-908183C5D879}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building/mod');
INSERT INTO `il_rol_nod` VALUES ('{AB24BCDE-2BAE-E019-29A4-701CFB9A53B2}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator/add');
INSERT INTO `il_rol_nod` VALUES ('{AC24010C-512E-43AA-3F1E-7D967301B3F7}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident/add');
INSERT INTO `il_rol_nod` VALUES ('{AD52285E-2739-4D8C-D8D2-58EAC1E569E4}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident/del');
INSERT INTO `il_rol_nod` VALUES ('{AF5BE99B-D3BA-17B7-346F-89ACB1A5F6D2}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group/index');
INSERT INTO `il_rol_nod` VALUES ('{B62DED55-D63D-92FD-066D-664951BD16FE}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility/mod');
INSERT INTO `il_rol_nod` VALUES ('{B68A1A80-3232-5816-6CEF-989A2B2D9BB1}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person');
INSERT INTO `il_rol_nod` VALUES ('{B99F4576-D9F4-4247-3E12-5CCFF967B6BF}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization/add');
INSERT INTO `il_rol_nod` VALUES ('{BB448AD8-E807-9129-02AD-9F325F165B31}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator');
INSERT INTO `il_rol_nod` VALUES ('{BEAFFCC2-9C01-4CE0-D0D3-1974505218A5}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/index/index');
INSERT INTO `il_rol_nod` VALUES ('{BF519895-275F-C899-AB17-274322A087FF}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment/add');
INSERT INTO `il_rol_nod` VALUES ('{C0A5CFA4-41E6-9E1C-94AA-A82D12196A83}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark/mod');
INSERT INTO `il_rol_nod` VALUES ('{C243566D-AD70-14C3-43B8-553CB8F6AE67}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building/insert');
INSERT INTO `il_rol_nod` VALUES ('{C4C31765-014C-ABA0-6EC3-8D9A2DBFFDFA}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment/index');
INSERT INTO `il_rol_nod` VALUES ('{C746ABF3-4C23-3178-CF1F-EE8FF460BF95}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/floor/mod');
INSERT INTO `il_rol_nod` VALUES ('{CB89D3B3-7C1F-B8B3-2C67-9244991D5AF3}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident/update');
INSERT INTO `il_rol_nod` VALUES ('{CDBA82D4-68BC-3802-B52A-5263922110F1}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment/detail');
INSERT INTO `il_rol_nod` VALUES ('{CEB6B195-AA1D-01A4-8146-DEB05AC3CD74}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator/getlist');
INSERT INTO `il_rol_nod` VALUES ('{CF9D4B84-7953-EF0B-823B-4407D76DC325}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility/detail');
INSERT INTO `il_rol_nod` VALUES ('{D2CE1335-BA28-D24A-5AAC-DBA251CD36C2}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident/insert');
INSERT INTO `il_rol_nod` VALUES ('{D4ED60FA-DB40-86C2-C67E-7A02B97ED3B9}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator/del');
INSERT INTO `il_rol_nod` VALUES ('{D4EED91A-9436-39AD-3877-A66C249BC99A}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident');
INSERT INTO `il_rol_nod` VALUES ('{DAAC1748-568A-6E87-75A8-6B162ACCCBBC}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark');
INSERT INTO `il_rol_nod` VALUES ('{DBF97F17-D473-6DF2-6A47-0277C5869C7A}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin');
INSERT INTO `il_rol_nod` VALUES ('{DDBE1043-D8EF-292F-39E7-0A2280E61B81}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/floor/detail');
INSERT INTO `il_rol_nod` VALUES ('{E08D6971-E6B5-09DB-EB07-A1F28EE43121}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization/getlist');
INSERT INTO `il_rol_nod` VALUES ('{E2D73CCE-F0CE-47C8-3489-7DA2DF823CA7}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building/update');
INSERT INTO `il_rol_nod` VALUES ('{E94E524E-C0E1-3CF1-9E54-0B7A0537AC3D}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building/detail');
INSERT INTO `il_rol_nod` VALUES ('{EB6CBB9F-322D-1330-C436-FC72629E302C}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment/mod');
INSERT INTO `il_rol_nod` VALUES ('{EE6B0BD7-2F3B-8D9C-5488-BDE726169C18}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group/mod');
INSERT INTO `il_rol_nod` VALUES ('{F230178F-1636-E3C0-EFA9-87F32DCF45CC}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person/detail');
INSERT INTO `il_rol_nod` VALUES ('{F9DE1FE0-608F-1A9A-9E48-C053F6D1FA07}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person/index');
INSERT INTO `il_rol_nod` VALUES ('{FD5AFD51-55D3-9704-C2F8-DC6E6B17A8A0}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility/add');
INSERT INTO `il_rol_nod` VALUES ('{FF4C10E9-1BFF-965F-6336-E8168F91ABA1}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment/del');

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
INSERT INTO `il_user` VALUES ('{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '123456', '123456@qq.com', '13888888888', '第二个用户', '0', '0', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', '', '1499341299');
INSERT INTO `il_user` VALUES ('{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@tomee.cn', '13888888888', '超级管理员', '1', '1501205060', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '', '', '1501144826');
INSERT INTO `il_user` VALUES ('{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', 'yonghu2', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '13888888888', '第二个用户', '50', '1501226744', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', '', '1499838728');

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('148', 'site_name', 'Think.Admin Demo');
INSERT INTO `system_config` VALUES ('149', 'site_copy', '广州楚才信息科技有限公司 © 2014~2017');
INSERT INTO `system_config` VALUES ('164', 'storage_type', 'local');
INSERT INTO `system_config` VALUES ('165', 'storage_qiniu_is_https', '1');
INSERT INTO `system_config` VALUES ('166', 'storage_qiniu_bucket', 'static');
INSERT INTO `system_config` VALUES ('167', 'storage_qiniu_domain', 'static.ctolog.com');
INSERT INTO `system_config` VALUES ('168', 'storage_qiniu_access_key', '');
INSERT INTO `system_config` VALUES ('169', 'storage_qiniu_secret_key', '');
INSERT INTO `system_config` VALUES ('170', 'storage_qiniu_region', '华东');
INSERT INTO `system_config` VALUES ('173', 'app_name', 'Think.Admin');
INSERT INTO `system_config` VALUES ('174', 'app_version', '1.00 dev');
INSERT INTO `system_config` VALUES ('176', 'browser_icon', 'https://think.ctolog.com/static/upload/f47b8fe06e38ae99/08e8398da45583b9.png');
INSERT INTO `system_config` VALUES ('184', 'wechat_appid', '');
INSERT INTO `system_config` VALUES ('185', 'wechat_appsecret', '');
INSERT INTO `system_config` VALUES ('186', 'wechat_token', '');
INSERT INTO `system_config` VALUES ('187', 'wechat_encodingaeskey', '');
INSERT INTO `system_config` VALUES ('188', 'wechat_mch_id', '');
INSERT INTO `system_config` VALUES ('189', 'wechat_partnerkey', '');
INSERT INTO `system_config` VALUES ('194', 'wechat_cert_key', '');
INSERT INTO `system_config` VALUES ('196', 'wechat_cert_cert', '');
INSERT INTO `system_config` VALUES ('197', 'tongji_baidu_key', 'aa2f9869e9b578122e4692de2bd9f80f');
INSERT INTO `system_config` VALUES ('198', 'tongji_cnzz_key', '1261854404');
INSERT INTO `system_config` VALUES ('199', 'storage_oss_bucket', '');
INSERT INTO `system_config` VALUES ('200', 'storage_oss_keyid', '');
INSERT INTO `system_config` VALUES ('201', 'storage_oss_secret', '');
INSERT INTO `system_config` VALUES ('202', 'storage_oss_domain', '');
INSERT INTO `system_config` VALUES ('203', 'storage_oss_is_https', '1');

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5173 DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('5131', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-16 11:58:06');
INSERT INTO `system_log` VALUES ('5132', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-17 12:39:43');
INSERT INTO `system_log` VALUES ('5133', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-19 10:03:34');
INSERT INTO `system_log` VALUES ('5134', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-20 11:32:14');
INSERT INTO `system_log` VALUES ('5135', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-21 09:39:13');
INSERT INTO `system_log` VALUES ('5136', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-23 09:40:16');
INSERT INTO `system_log` VALUES ('5137', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-28 18:35:26');
INSERT INTO `system_log` VALUES ('5138', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-29 20:26:10');
INSERT INTO `system_log` VALUES ('5139', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-30 15:09:01');
INSERT INTO `system_log` VALUES ('5140', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-03 10:17:25');
INSERT INTO `system_log` VALUES ('5141', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-03 11:41:28');
INSERT INTO `system_log` VALUES ('5142', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-03 11:52:50');
INSERT INTO `system_log` VALUES ('5143', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-03 14:09:21');
INSERT INTO `system_log` VALUES ('5144', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-03 17:10:06');
INSERT INTO `system_log` VALUES ('5145', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-03 17:10:16');
INSERT INTO `system_log` VALUES ('5146', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-03 17:36:49');
INSERT INTO `system_log` VALUES ('5147', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-03 18:56:11');
INSERT INTO `system_log` VALUES ('5148', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-04 20:26:43');
INSERT INTO `system_log` VALUES ('5149', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 09:33:30');
INSERT INTO `system_log` VALUES ('5150', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 10:46:32');
INSERT INTO `system_log` VALUES ('5151', '0.0.0.0', 'admin/login/out', '', '系统管理', '用户退出系统成功', '2017-07-06 10:46:33');
INSERT INTO `system_log` VALUES ('5152', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:01:06');
INSERT INTO `system_log` VALUES ('5153', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:09:54');
INSERT INTO `system_log` VALUES ('5154', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:10:00');
INSERT INTO `system_log` VALUES ('5155', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:10:39');
INSERT INTO `system_log` VALUES ('5156', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:10:46');
INSERT INTO `system_log` VALUES ('5157', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:10:54');
INSERT INTO `system_log` VALUES ('5158', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:11:00');
INSERT INTO `system_log` VALUES ('5159', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:12:00');
INSERT INTO `system_log` VALUES ('5160', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:15:22');
INSERT INTO `system_log` VALUES ('5161', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:16:41');
INSERT INTO `system_log` VALUES ('5162', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:16:52');
INSERT INTO `system_log` VALUES ('5163', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:17:18');
INSERT INTO `system_log` VALUES ('5164', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:17:26');
INSERT INTO `system_log` VALUES ('5165', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:18:12');
INSERT INTO `system_log` VALUES ('5166', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:18:22');
INSERT INTO `system_log` VALUES ('5167', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:20:29');
INSERT INTO `system_log` VALUES ('5168', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:20:37');
INSERT INTO `system_log` VALUES ('5169', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:20:58');
INSERT INTO `system_log` VALUES ('5170', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:21:33');
INSERT INTO `system_log` VALUES ('5171', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:28:30');
INSERT INTO `system_log` VALUES ('5172', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:28:59');

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
