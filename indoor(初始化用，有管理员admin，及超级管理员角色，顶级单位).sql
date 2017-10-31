/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : indoor_test

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-31 15:20:21
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
  `coordinate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '建筑底面坐标',
  `address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '建筑地址',
  `comment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `org_id` mediumint(9) NOT NULL COMMENT '主管单位',
  PRIMARY KEY (`bui_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_building
-- ----------------------------

-- ----------------------------
-- Table structure for il_floor
-- ----------------------------
DROP TABLE IF EXISTS `il_floor`;
CREATE TABLE `il_floor` (
  `flo_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属建筑id',
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

-- ----------------------------
-- Table structure for il_group
-- ----------------------------
DROP TABLE IF EXISTS `il_group`;
CREATE TABLE `il_group` (
  `gro_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '组名',
  `per_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '组长',
  `org_id` mediumint(9) NOT NULL COMMENT '所属单位',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常1弃用',
  PRIMARY KEY (`gro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_group
-- ----------------------------

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

-- ----------------------------
-- Table structure for il_inc_bui
-- ----------------------------
DROP TABLE IF EXISTS `il_inc_bui`;
CREATE TABLE `il_inc_bui` (
  `ibui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件建筑关联表id',
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属事件id',
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事发建筑id',
  PRIMARY KEY (`ibui_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_inc_bui
-- ----------------------------

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
  `org_id` mediumint(9) NOT NULL COMMENT '所属单位',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常可用，1正常停用，2故障停用，3报废，4遗失',
  PRIMARY KEY (`lequ_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_local_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for il_location_mark
-- ----------------------------
DROP TABLE IF EXISTS `il_location_mark`;
CREATE TABLE `il_location_mark` (
  `lmar_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '定位信标id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信标名',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '信标类型0一般，1紧急',
  `org_id` mediumint(9) NOT NULL COMMENT '所属单位',
  `mac` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '信标mac地址',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常，1故障，2报废，3遗失',
  PRIMARY KEY (`lmar_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_location_mark
-- ----------------------------

-- ----------------------------
-- Table structure for il_locator
-- ----------------------------
DROP TABLE IF EXISTS `il_locator`;
CREATE TABLE `il_locator` (
  `loc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '定位模块编号',
  `mac` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '物理标识码',
  `buy_time` int(11) NOT NULL DEFAULT '0' COMMENT '购入时间',
  `org_id` mediumint(9) NOT NULL COMMENT '所属单位id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未使用，1已占用，2正常停用，3故障停用，4遗失，5报废',
  PRIMARY KEY (`loc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_locator
-- ----------------------------

-- ----------------------------
-- Table structure for il_node
-- ----------------------------
DROP TABLE IF EXISTS `il_node`;
CREATE TABLE `il_node` (
  `node` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '节点代码',
  `pnode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父节点',
  `title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '节点标题',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是否加入权限控制',
  `is_log` tinyint(1) unsigned DEFAULT '1' COMMENT '是否加入日志记录',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`node`),
  KEY `index_system_node_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统节点表';

-- ----------------------------
-- Records of il_node
-- ----------------------------
INSERT INTO `il_node` VALUES ('admin', '', '业务管理', '0', '0', '0', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building', 'admin', '建筑管理', '0', '0', '0', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/add', 'admin/building', '添加建筑', '0', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/del', 'admin/building', '删除建筑', '0', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/index', 'admin/building', '建筑列表', '0', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/building/mod', 'admin/building', '修改建筑', '0', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor', 'admin', '楼层管理', '0', '0', '0', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/add', 'admin/floor', '添加楼层', '0', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/del', 'admin/floor', '删除楼层', '0', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/index', 'admin/floor', '楼层列表', '0', '1', '1', '1500902361');
INSERT INTO `il_node` VALUES ('admin/floor/mod', 'admin/floor', '修改楼层', '0', '1', '1', '1500902361');
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
INSERT INTO `il_node` VALUES ('admin/incident/detail', 'admin/incident', '查看详情', '0', '1', '1', '1503903041');
INSERT INTO `il_node` VALUES ('admin/incident/index', 'admin/incident', '列表', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/incident/mod', 'admin/incident', '修改', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment', 'admin', '现场终端管理', '0', '0', '0', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment/add', 'admin/localequipment', '添加', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment/del', 'admin/localequipment', '删除', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/localequipment/index', 'admin/localequipment', '列表', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment/mod', 'admin/localequipment', '修改', '0', '1', '1', '1502421923');
INSERT INTO `il_node` VALUES ('admin/localequipment/set', 'admin/localequipment', '设置', '0', '1', '1', '1505284975');
INSERT INTO `il_node` VALUES ('admin/locationmark', 'admin', '信标管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/add', 'admin/locationmark', '添加', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/del', 'admin/locationmark', '删除', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/index', 'admin/locationmark', '列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/mod', 'admin/locationmark', '修改', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locationmark/set', 'admin/locationmark', '设置', '0', '1', '1', '1505284975');
INSERT INTO `il_node` VALUES ('admin/locator', 'admin', '定位套件管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/add', 'admin/locator', '添加', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/del', 'admin/locator', '删除', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/index', 'admin/locator', '列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/mod', 'admin/locator', '修改', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/locator/set', 'admin/locator', '设置', '0', '1', '1', '1505284975');
INSERT INTO `il_node` VALUES ('admin/organization', 'admin', '单位管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/add', 'admin/organization', '添加子单位', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/del', 'admin/organization', '删除子单位', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/index', 'admin/organization', '子单位列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/mod', 'admin/organization', '修改子单位', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/organization/resetpass', 'admin/organization', '重置管理员密码', '0', '1', '1', '1504084355');
INSERT INTO `il_node` VALUES ('admin/organization/self', 'admin/organization', '本单位信息', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility', 'admin', '消防设备管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/add', 'admin/outfirefacility', '添加消防设备', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/del', 'admin/outfirefacility', '删除消防设备', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/index', 'admin/outfirefacility', '消防设备列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/mod', 'admin/outfirefacility', '修改消防设备', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/outfirefacility/set', 'admin/outfirefacility', '设置', '0', '1', '1', '1505892517');
INSERT INTO `il_node` VALUES ('admin/person', 'admin', '人员管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/add', 'admin/person', '添加人员', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/del', 'admin/person', '删除人员', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/detail', 'admin/person', '人员详情', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/index', 'admin/person', '人员列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('admin/person/mod', 'admin/person', '修改人员信息', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system', '', '系统管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/role', 'system', '角色管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/add', 'system/role', '添加', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/authsave', 'system/role', '角色授权', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/authshow', 'system/role', '权限明细查看', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/del', 'system/role', '删除', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/forbid', 'system/role', '禁用', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/index', 'system/role', '列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/role/mod', 'system/role', '修改', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user', 'system', '用户管理', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/add', 'system/user', '添加', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/del', 'system/user', '删除', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/forbid', 'system/user', '修改状态', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/index', 'system/user', '列表', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/mod', 'system/user', '修改', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/user/resetpass', 'system/user', '重置密码', '0', '1', '1', '1504084355');
INSERT INTO `il_node` VALUES ('system/user/selfinfo', 'system/user', '修改用户信息', '0', '1', '1', '1503304049');
INSERT INTO `il_node` VALUES ('system/user/selfpass', 'system/user', '修改密码', '0', '1', '1', '1503304049');
INSERT INTO `il_node` VALUES ('system/userlog', 'system', '用户日志', '0', '0', '0', '1502421924');
INSERT INTO `il_node` VALUES ('system/userlog/del', 'system/userlog', '删除日志', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/userlog/delall', 'system/userlog', '清空日志', '0', '1', '1', '1502421924');
INSERT INTO `il_node` VALUES ('system/userlog/index', 'system/userlog', '查看日志', '0', '1', '1', '1502421924');

-- ----------------------------
-- Table structure for il_organization
-- ----------------------------
DROP TABLE IF EXISTS `il_organization`;
CREATE TABLE `il_organization` (
  `org_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `p_org_id` mediumint(9) unsigned DEFAULT NULL COMMENT '父级单位id',
  `chain` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父级单位链',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '单位全称',
  `abbr` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '单位简称',
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '单位地址',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常，1撤销',
  PRIMARY KEY (`org_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_organization
-- ----------------------------
INSERT INTO `il_organization` VALUES ('1', '0', '', '深圳市淘米科技有限公司', 'tomee', '深圳市高新北四道贝特尔大厦三楼', '0');

-- ----------------------------
-- Table structure for il_outfire_facility
-- ----------------------------
DROP TABLE IF EXISTS `il_outfire_facility`;
CREATE TABLE `il_outfire_facility` (
  `ofac_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '建筑固定的消防设施id',
  `number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '设备编号',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消防设施名称',
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型，0灭火器，1消防栓 等',
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
  `loc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '绑定定位模块id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0在岗，1离职',
  PRIMARY KEY (`per_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_person
-- ----------------------------

-- ----------------------------
-- Table structure for il_role
-- ----------------------------
DROP TABLE IF EXISTS `il_role`;
CREATE TABLE `il_role` (
  `rol_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
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
INSERT INTO `il_role` VALUES ('{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '系统超级管理员', '拥有所有权限', '0', '0', '0', '', '1501036927');

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

-- ----------------------------
-- Table structure for il_tag
-- ----------------------------
DROP TABLE IF EXISTS `il_tag`;
CREATE TABLE `il_tag` (
  `tag_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '救援过程添加的标记',
  `type` tinyint(1) NOT NULL COMMENT '类型，0火源，1求救人员，2消防工具 3逃生通道等',
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
  `login_num` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '累计登录次数',
  `login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
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
INSERT INTO `il_user` VALUES ('{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@tomee.cn', '13888888827', '主要的管理员1', '1', '1509422364', '0.0.0.0', '1', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1501144826');

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

-- ----------------------------
-- Table structure for st_systemlog
-- ----------------------------
DROP TABLE IF EXISTS `st_systemlog`;
CREATE TABLE `st_systemlog` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logtype` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logdata` longtext COLLATE utf8mb4_unicode_ci,
  `logtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of st_systemlog
-- ----------------------------
