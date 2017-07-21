/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : indoor

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-07-21 20:38:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for il_auth
-- ----------------------------
DROP TABLE IF EXISTS `il_auth`;
CREATE TABLE `il_auth` (
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径',
  KEY `index_system_auth_auth` (`auth`) USING BTREE,
  KEY `index_system_auth_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与节点关系表';

-- ----------------------------
-- Records of il_auth
-- ----------------------------

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
  `nod_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `node` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '节点代码',
  `title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '节点标题',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是启启动RBAC权限控制',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`nod_id`),
  KEY `index_system_node_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统节点表';

-- ----------------------------
-- Records of il_node
-- ----------------------------
INSERT INTO `il_node` VALUES ('{069750FA-00DE-974E-28EC-5F830989373D}', 'admin/outfirefacility/mod', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{07EC6521-7795-2D51-D723-4B45D0F82A24}', 'system/user/detail', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{0A344D3A-A25C-CA65-B515-57AA2CF43AC9}', 'admin/localequipment/index', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{0CFE1625-4CE9-2D90-DF06-B1BF36F58917}', 'admin/organization/mod', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{105034DA-1502-84A7-5C94-72303F9D4567}', 'admin/building/getlist', '', '1', '1', '1500545125');
INSERT INTO `il_node` VALUES ('{14D3E502-076D-71E3-608A-62CA16B49674}', 'system/auth/del', '', '0', '0', '1500621378');
INSERT INTO `il_node` VALUES ('{15A8A091-9186-735C-3543-9C7223F74CE8}', 'admin/outfirefacility/getlist', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{16C05FE7-DD22-FD47-EAE5-C294E8AF3276}', 'admin/floor/insert', '', '0', '0', '1500545125');
INSERT INTO `il_node` VALUES ('{18AD87C1-62AA-5481-F947-8ABF833541DB}', 'system/auth/index', '', '0', '0', '1500621378');
INSERT INTO `il_node` VALUES ('{192E5201-1943-3628-78D3-4D56B0ED9A19}', 'admin/localequipment/add', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{1B96176E-0C93-1722-FE9D-91CA5E28A076}', 'admin/locationmark', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{1BD32738-E348-235A-3CF9-FD6AB79DA656}', 'admin/outfirefacility/index', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{1DB2768B-50DE-3DFA-2595-04AF338FB5CD}', 'system/user/update', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{1F242FAB-59F1-FB44-8418-19E0722BEFFE}', 'admin/organization', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{20A64667-E633-6C32-1A5F-5646982E5DAE}', 'admin/outfirefacility/floors', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{20BFB21F-FC7D-24B6-7654-46A266CA0AC8}', 'admin/outfirefacility/add', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{20FBDCFA-9504-8BEA-0CA7-E3668F0D1968}', 'admin/group/add', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{228CEA15-9132-5F5A-34F0-110BA767C961}', 'system/node/del', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{2719A079-ECD6-B488-7E35-E53D5B92BC64}', 'admin/localequipment/del', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{2E7B50C4-CFCE-9FDD-643D-2FFB15E8A41A}', 'admin/incident/getlist', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{2F0A569F-6F83-D5B9-5DC3-909E919A1457}', 'admin/group/update', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{307B7BBB-381E-EF32-2BC3-D7BB17E8CE33}', 'system/node/insert', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{30D08DB5-4BD2-54F6-F208-EA712E95612C}', 'admin/locationmark/del', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{31FE8699-D314-BB41-2E87-D078C529E389}', 'admin/locationmark/index', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{3438F0B7-38D2-4FBD-2622-27F8A6B4764E}', 'system/user/getlist', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{3449627E-388B-58A8-AF11-7F1409BCF489}', 'system/node/add', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{348995A7-2E4E-0686-3F2D-CD0F05847F8A}', 'admin/organization/self', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{3489C2B6-C82A-AE41-088C-F96481F59DCD}', 'admin/building/del', '删除', '1', '1', '1500545125');
INSERT INTO `il_node` VALUES ('{37AC3EC3-90BE-80B7-21AE-4EAC94ADB40A}', 'admin/floor/mod', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{3849C726-C7C2-3BB3-CE21-7AF784512582}', 'system/role/mod', '', '0', '0', '1500634163');
INSERT INTO `il_node` VALUES ('{3CC6FBFE-A2F5-00CC-5DDB-0B7EF04B3C14}', 'admin/person/mod', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{3D966044-A08E-3D82-3E58-CBF01E9DFA83}', 'system/auth/resume', '', '0', '0', '1500621378');
INSERT INTO `il_node` VALUES ('{3EE7AAB8-E2D8-2DD2-DB12-BECD313B7515}', 'admin/index/dashboard', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{41AE922E-5F56-0CA2-F78F-F10C7BDBF194}', 'admin/localequipment/update', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{43E32328-5F3C-851B-1A4D-CA815268135A}', 'system/user/add', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{4473A728-2DB3-D5C1-D4A0-75A262EA3D0C}', 'system/node', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{45A233E3-BF34-8B20-20C8-55D7F4C95423}', 'admin/floor/detail', '', '0', '0', '1500545125');
INSERT INTO `il_node` VALUES ('{483CFB58-484F-0870-5E5A-359035842B8E}', 'admin/organization/detail', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{4A09394F-4D08-FCA4-A554-552397A3CBE6}', 'admin/locationmark/update', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{4AB81CB6-7D33-D5B7-E188-FDE19E2A45ED}', 'admin/locationmark/getlist', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{4AC04826-992F-1C13-C3FF-5D357CED8AFE}', 'system/auth', '', '0', '0', '1500621378');
INSERT INTO `il_node` VALUES ('{4C972FE3-00F3-5290-D512-90DA86F2A586}', 'system/auth/forbid', '', '0', '0', '1500621378');
INSERT INTO `il_node` VALUES ('{4E08AD30-99E9-7F87-CC50-899118E5B9E2}', 'admin/outfirefacility/update', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{4F12910A-4898-B79B-5024-5EB0FCE6ED82}', 'system/node/getlist', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{4F8EB16F-EB7D-B20C-89B8-E351552E5975}', 'admin/incident/del', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{53712F40-62A0-5E4D-D63B-DEAD7524D6D9}', 'system/user/del', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{5517D859-34E4-61A1-53C3-9366BA152AEB}', 'admin/group/detail', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{567DC21B-03AB-00B1-EF16-57B420A6BD4A}', 'system/auth/apply', '', '0', '0', '1500621378');
INSERT INTO `il_node` VALUES ('{568CD437-79EA-DA24-8A3B-BEC39E1AAC44}', 'system/node/detail', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{5E67BC6F-EBA4-23BE-A164-3A46DD51F719}', 'admin/locator/update', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{613973BC-2215-1CA4-72A7-ADD77175DF75}', 'admin/locator/index', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{633E7FD0-8C04-D667-AD13-6901DE47C089}', 'admin/building/mod', '', '0', '0', '1500545125');
INSERT INTO `il_node` VALUES ('{69424538-84EA-98EB-AAEA-4C13D5E7AADF}', 'admin/locationmark/insert', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{6AF7B38A-E91C-880B-A9CD-F913BA767474}', 'system/user/mod', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{6BDC3943-DE94-523B-8564-594A742BA816}', 'admin/incident', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{6D20453B-100A-2134-4767-3A3258860FD4}', 'admin/group/insert', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{6DD1AB9D-D910-86FA-9E62-CEAF8E5DC83C}', 'admin/group/mod', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{6F0B8882-84F5-531E-8C1D-AD9774847C98}', 'admin/person/getlist', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{6FA024BD-D010-30A5-BE3F-257CE90BECE4}', 'admin/organization/insert', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{70229BDE-B43E-02FB-25AC-8BAE48B0D6A3}', 'admin/organization/index', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{70E53D5C-121B-5C78-7D81-4219DF004EEC}', 'admin/incident/update', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{73868870-30D9-1442-7FE6-328D265F59EE}', 'system/role', '', '0', '0', '1500634163');
INSERT INTO `il_node` VALUES ('{75F46013-7AE5-7B2E-36AD-3924D8C42A9F}', 'system/user', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{789576BE-764F-BE83-20E7-69D63F008BD7}', 'system/user/insert', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{7A29EA58-7610-CDC7-E05C-09D44ECE09D6}', 'admin/incident/detail', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{7A8D3AC4-4513-3077-3441-4EDF9A31A85C}', 'admin/floor', '', '0', '0', '1500545125');
INSERT INTO `il_node` VALUES ('{7B39D973-4144-EEB9-7481-C79E35A81BEF}', 'admin/building', '建筑管理', '0', '0', '1500545125');
INSERT INTO `il_node` VALUES ('{7B6FCA5C-F368-1873-D921-8786EAE9C880}', 'admin/locationmark/detail', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{7F867BDC-75DE-C450-EB8E-B81B974A477E}', 'admin/person/update', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{802BAFA0-3F73-C05B-B90A-FFB93F8D657C}', 'admin/locator/del', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{81789423-F7AA-891F-C87D-74795489518C}', 'admin/outfirefacility/del', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{83543603-22CF-4269-9D30-328BA790CE2D}', 'admin/locator/insert', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{83A3D3A7-C682-4B28-976D-D47614980A94}', 'admin/index/index', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{83AB79C8-E535-D9D8-89FF-5852F59ECDD4}', 'admin/person/del', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{855935AE-E06E-6DF3-6261-74B1D7DE7D86}', 'admin/building/detail', '明细', '1', '1', '1500545125');
INSERT INTO `il_node` VALUES ('{875C6C77-52A2-D824-C65E-AEBE16C62759}', 'admin/incident/insert', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{87BF7598-3E10-1A28-133F-E081A8366255}', 'admin/outfirefacility/detail', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{87CA3C6F-1F7D-EA8F-7AC6-D5018044E3F5}', 'system/role/del', '', '0', '0', '1500634163');
INSERT INTO `il_node` VALUES ('{87DADAE4-F563-2D38-07DB-243A4F9CE30F}', 'system/node/mod', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{89BEDFE6-6A10-9969-616B-1100CB26418E}', 'admin/outfirefacility/insert', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{8A0A8860-FAB5-E94F-F75F-B2AF1CDCE039}', 'admin', '系统管理', '0', '0', '1500545125');
INSERT INTO `il_node` VALUES ('{8B99942E-01D0-0B7B-45F6-E4D07351B5AA}', 'admin/incident/index', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{8C9B9428-6626-0092-A0FB-28F2A090F3DE}', 'admin/organization/del', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{8CFF5078-85C9-C22F-B09B-B8C72A822407}', 'admin/floor/getlist', '', '0', '0', '1500545125');
INSERT INTO `il_node` VALUES ('{8E2FFD69-139F-4483-1E17-19B4474FCD16}', 'system/role/resume', '', '0', '0', '1500634163');
INSERT INTO `il_node` VALUES ('{8EDDD6B2-FE2B-EA3A-DBAE-D3C806F3D933}', 'system/role/apply', '', '0', '0', '1500634163');
INSERT INTO `il_node` VALUES ('{8F26BBDE-CCC4-A46F-718A-3324BB027107}', 'admin/localequipment/insert', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{9063514E-6F83-32BB-6783-D1E76800FF07}', 'admin/person/index', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{93E32FED-61D6-8FA2-D510-E6944B2DE775}', 'admin/incident/mod', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{963E5E37-DE17-260F-3D92-7268B771A220}', 'system/auth/getlist', '', '0', '0', '1500621378');
INSERT INTO `il_node` VALUES ('{9712272A-9B18-FD56-2F20-823B37ABA224}', 'admin/person/detail', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{9B0037DF-497D-FE53-7BEB-836437B25F8C}', 'admin/group', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{9DA7260B-F441-A0A6-B70E-9907C4026E46}', 'admin/floor/index', '', '0', '0', '1500545125');
INSERT INTO `il_node` VALUES ('{9FD4D52E-C005-54E4-75B9-029F06CD719F}', 'admin/building/add', '新增', '1', '1', '1500545125');
INSERT INTO `il_node` VALUES ('{A1FDBDEA-7A37-0611-97CF-965BDCE3C8BF}', 'admin/person', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{A42B65DF-B334-C772-1F74-EF7370C0EDEE}', 'system', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{A513517E-1CB2-87BA-094A-C8DD45D130F1}', 'admin/localequipment/getlist', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{A7B1C429-7B75-AFD4-55EC-A966F1C9354C}', 'admin/building/insert', '', '1', '1', '1500545125');
INSERT INTO `il_node` VALUES ('{A7CBCB7B-11DB-2230-3786-66B58920354A}', 'system/user/index', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{A9ED82EB-CA1D-02D4-5CEE-2C6199CEBAA8}', 'system/node/update', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{AEB3C5AF-0F39-006B-AC07-B6477D02CF12}', 'admin/locator/mod', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{AF65032C-20DB-919D-7BF5-277FE4E7F51E}', 'admin/outfirefacility', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{B0BF1130-B5F4-870F-8DD9-2DAE587B76BB}', 'system/role/forbid', '', '0', '0', '1500634163');
INSERT INTO `il_node` VALUES ('{B1E0C4AE-F408-756D-EBF8-5D52F0B737DF}', 'admin/locationmark/mod', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{BE0F3E1E-1D40-7A21-93C2-B65DAFA7F9C4}', 'admin/locator/add', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{C0ADCD6E-0107-1979-9744-E44FE7B00080}', 'admin/floor/add', '', '0', '0', '1500545125');
INSERT INTO `il_node` VALUES ('{C1B78E29-F089-FE85-0848-B247DEF56C1F}', 'admin/locationmark/add', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{C279DF8C-27C5-CB96-3C88-931CC8843AFE}', 'admin/organization/getlist', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{C3D19D6E-631E-187B-884A-02A7B80489A9}', 'admin/organization/add', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{CAF205C1-5572-EAF4-4ECE-D32A07FCCE6F}', 'system/auth/add', '', '0', '0', '1500621378');
INSERT INTO `il_node` VALUES ('{CE831928-46F4-6C5A-31E9-C8A6EE9223AE}', 'admin/person/add', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{CF0972E5-E91E-994F-72CC-821494C5C593}', 'system/auth/edit', '', '0', '0', '1500621378');
INSERT INTO `il_node` VALUES ('{D34090CC-0181-648B-0951-31D0727460B3}', 'admin/index', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{D38AA4B1-414F-1608-9027-450686D896FA}', 'admin/locator', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{D3F90B77-A12A-D251-B49D-9AA6713B5310}', 'admin/group/del', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{D5C5E09E-89AC-2F78-50C5-BBDF57007F2B}', 'system/node/save', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{D7F9BF26-1750-8DC8-FFB0-B0EF2A2186CE}', 'admin/person/insert', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{DA1D8058-2C84-B6C3-B6AA-410F06E033D3}', 'admin/floor/del', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{DA27C065-26E2-8CD9-928D-5D580A23243A}', 'admin/localequipment/mod', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{DBF14C71-7269-2EB8-7759-B9054A646380}', 'admin/building/index', '列表', '0', '1', '1500545125');
INSERT INTO `il_node` VALUES ('{DE726BF1-C5D0-7098-3EB9-A4B0E9A89C1A}', 'admin/building/update', '', '0', '0', '1500545125');
INSERT INTO `il_node` VALUES ('{E65B86E8-B310-3DBD-0EF3-955CE29C6EA9}', 'admin/incident/add', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{E69EA7FC-1DAC-8285-1F93-B61ADCBDD980}', 'system/node/index', '', '0', '0', '1500545127');
INSERT INTO `il_node` VALUES ('{E91EAA21-CBAF-9C8F-2E7E-BE8D1948947C}', 'admin/localequipment', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{EBAB2C84-6445-3CCB-6A84-45FC291DBCD1}', 'admin/group/getlist', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{F162591F-BBB6-4F6E-272C-6A7E63E14DCC}', 'admin/localequipment/detail', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{F416871F-06AB-886B-75E1-3066C2EC4208}', 'admin/organization/update', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{FB83E12E-975B-60B9-F53F-D39DBB1117B9}', 'admin/group/index', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{FD1469CF-4374-D768-B268-DC51EA16564F}', 'system/role/add', '', '0', '0', '1500634163');
INSERT INTO `il_node` VALUES ('{FD4A57BE-08F0-5287-8F5B-B5EE57AF32BA}', 'system/role/index', '', '0', '0', '1500634163');
INSERT INTO `il_node` VALUES ('{FDF67F88-42D4-F060-135E-E80BCF173191}', 'admin/locator/getlist', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{FF53C5B7-F123-50BD-6C2E-23214A4E361A}', 'admin/floor/update', '', '0', '0', '1500545126');
INSERT INTO `il_node` VALUES ('{FFC3F41F-7567-FD68-0DE4-7E37491FD214}', 'admin/locator/detail', '', '0', '0', '1500545126');

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
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` char(38) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '创建人',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`rol_id`),
  UNIQUE KEY `index_system_auth_title` (`name`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统权限表';

-- ----------------------------
-- Records of il_role
-- ----------------------------
INSERT INTO `il_role` VALUES ('{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', '普通管理员', '普通管理员', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1', '{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', '1500637333');

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
  `authorize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create_by` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`use_id`),
  UNIQUE KEY `index_system_user_username` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统用户表';

-- ----------------------------
-- Records of il_user
-- ----------------------------
INSERT INTO `il_user` VALUES ('{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '123456', '123456@qq.com', '13888888888', '第二个用户', '0', '0', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '', '', '1499341299');
INSERT INTO `il_user` VALUES ('{BCC57F86-B8F5-15A5-0244-FB0B22F4B05C}', 'yonghu2', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '13888888888', '第二个用户', '36', '1500601326', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '', '', '1499838728');

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
