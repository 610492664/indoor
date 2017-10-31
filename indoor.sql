/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : indoor

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-31 15:11:14
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
INSERT INTO `il_building` VALUES ('{BFF5481F-A3DF-F185-927A-83FF572351DB}', '建筑四', '60', '199.00', 'fasdf', '福华三路100号', '福田中队负责', '1');
INSERT INTO `il_building` VALUES ('{6642EB69-0EC0-25FF-29A7-C2842E5AB4A7}', '建筑二', '30', '327.00', 'fdsafd', '北四道1号', '', '1');
INSERT INTO `il_building` VALUES ('{AF5DA1D5-D8C6-C0E5-23FD-42EBEB43490D}', '贝特尔大厦2', '12', '40.00', '2132344', '1232324', '231', '1');
INSERT INTO `il_building` VALUES ('{64411154-7767-B932-9575-F70E2D681B17}', '建筑三', '6', '299.00', 'fdsdf', '福华三路103号', '', '1');
INSERT INTO `il_building` VALUES ('{70AE99C2-5044-DAC8-A94C-89B6CAF7D1A1}', '建筑五', '28', '101.50', 'fddf', '中山四路18号', '', '1');

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
INSERT INTO `il_floor` VALUES ('{4DCEC62F-F315-2360-E3FC-21A711B28948}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '3', '4.00', 'dsaf', 'fdsaf', '没有备注');
INSERT INTO `il_floor` VALUES ('{5D8C0F12-EF38-9599-9844-42EA6FA27A9D}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '1', '5.00', 'ffd', 'dfdf', '首层');
INSERT INTO `il_floor` VALUES ('{03D0A25D-B8B6-C391-46D1-04F554F2A256}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '2', '3.00', 'fdsdfd', 'dfsdf', '第二层');
INSERT INTO `il_floor` VALUES ('{E004FD81-CBB1-084E-668C-215E847A0ED9}', '{372B348C-B934-08C4-47B4-F7C47F68F36F}', '12', '3.00', '324', '32423', '2342');
INSERT INTO `il_floor` VALUES ('{C7F4B791-9E65-FA8F-B7C4-7D9BB74819FB}', '{64411154-7767-B932-9575-F70E2D681B17}', '1', '3.50', 'ddff', 'ddfff', '首层');
INSERT INTO `il_floor` VALUES ('{D9C17F1F-40D2-74F7-330A-2C8C730BB8B3}', '{6642EB69-0EC0-25FF-29A7-C2842E5AB4A7}', '1', '4.00', 'dfdf', 'fdfd', '');
INSERT INTO `il_floor` VALUES ('{7B94FC9D-65BD-7243-3E7A-8F2DFCB42684}', '{6642EB69-0EC0-25FF-29A7-C2842E5AB4A7}', '2', '3.50', 'fdfsad', 'fdsfd', '');
INSERT INTO `il_floor` VALUES ('{BFBFC8FD-6FB3-F0ED-4F4A-C08EE8CF6598}', '{6642EB69-0EC0-25FF-29A7-C2842E5AB4A7}', '3', '3.50', 'dfsd', 'dfsdf', '');
INSERT INTO `il_floor` VALUES ('{50E459F7-24AF-CACA-3F36-1DD2C2BAB604}', '{AF5DA1D5-D8C6-C0E5-23FD-42EBEB43490D}', '1', '4.00', 'dfsdf', 'fdsfd', '');
INSERT INTO `il_floor` VALUES ('{2874616E-D4C4-A94F-2593-1BF7A1A6D592}', '{AF5DA1D5-D8C6-C0E5-23FD-42EBEB43490D}', '2', '3.30', 'fdfsd', 'dsfd', '');
INSERT INTO `il_floor` VALUES ('{582FDB1A-926F-8907-06F6-C895537F863F}', '{AF5DA1D5-D8C6-C0E5-23FD-42EBEB43490D}', '3', '3.30', 'dfsdf', 'fdsfd', '');
INSERT INTO `il_floor` VALUES ('{66936363-A22E-33BA-FDE5-14A541A9E96F}', '{64411154-7767-B932-9575-F70E2D681B17}', '2', '3.50', 'dfsdf', 'fdfsd', '');
INSERT INTO `il_floor` VALUES ('{1A6AE7FB-1454-4F7D-2D0A-763C611C128B}', '{70AE99C2-5044-DAC8-A94C-89B6CAF7D1A1}', '1', '4.20', '5d5fsdf', 'fdfds', '');
INSERT INTO `il_floor` VALUES ('{318E6C8A-3F06-B79A-A0F7-CF694A658ED7}', '{70AE99C2-5044-DAC8-A94C-89B6CAF7D1A1}', '2', '3.80', 'dfsdf', 'fdsfd', '');

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
INSERT INTO `il_group` VALUES ('{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '第4组', '{0A9ECA32-F234-A673-4837-B2388C12C317}', '1', '0');
INSERT INTO `il_group` VALUES ('{7F24EB5F-8BF5-0B50-3B14-17654B7593AD}', '第一组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{20B3A08F-6389-6B52-6B40-45DDE2AEE00B}', '第六组', '{6F5AE69C-A5A9-9ABD-A614-1ACF04285F17}', '1', '0');
INSERT INTO `il_group` VALUES ('{8799CCD2-3CBC-72C8-86E8-9CE5A86AA264}', '第一组', '', '2', '0');
INSERT INTO `il_group` VALUES ('{7AC502AF-77D0-DB1C-4C1F-938096485164}', '第5组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{24788D5B-9702-E015-10DA-3B4D8C8E40B6}', '第1组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{5A9DA281-C29F-DAE2-5AF1-8094747F77DC}', '第2组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{5A043DE3-8A38-9BA7-F1B1-1F983810014A}', '第6组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{CDFC4BD5-423E-FE75-691A-A8830EC13558}', '第111组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{21376E84-3001-6E02-F828-C6696ABAA34D}', '第123组', '', '1', '0');
INSERT INTO `il_group` VALUES ('{3B4B7807-7FED-5028-97A9-56411CDA1E25}', '第二组', '', '2', '0');

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
INSERT INTO `il_incident` VALUES ('{48460920-1AA0-BF9A-34DB-2358A2E7A4E4}', '事件一', '0', '1', '突发火灾有空445分隔符规范规', '1502012693', '1502012780', '1');
INSERT INTO `il_incident` VALUES ('{9F1F1169-6D44-48A7-1BA4-3F539EEE8AC6}', '事件二', '1', '0', '仓库起火', '1506009600', '1506096000', '1');
INSERT INTO `il_incident` VALUES ('{AE9795EF-34C2-434C-3D84-37629B0785B0}', '事件三', '1', '0', '爆炸', '1505145600', '1505232000', '1');

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
INSERT INTO `il_inc_bui` VALUES ('{45614C04-ED5F-C84B-DFAA-845B65FE1194}', '{48460920-1AA0-BF9A-34DB-2358A2E7A4E4}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}');
INSERT INTO `il_inc_bui` VALUES ('{83EB81C6-22DE-022C-3B10-6D203B65FB4A}', '{D8997D8B-131C-FCDD-3486-9506E139490F}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}');
INSERT INTO `il_inc_bui` VALUES ('{DD74F538-64FF-45A5-F797-C495A6E057D8}', '{9F1F1169-6D44-48A7-1BA4-3F539EEE8AC6}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}');
INSERT INTO `il_inc_bui` VALUES ('{734511C9-7E07-CEDF-B3B1-BCBDDA424625}', '{AE9795EF-34C2-434C-3D84-37629B0785B0}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}');

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
INSERT INTO `il_local_equipment` VALUES ('{EDB3F169-BC5B-DE15-F20E-1A68AF657B8E}', '终端3', '-28800', '1', '0');
INSERT INTO `il_local_equipment` VALUES ('{48A8F67F-6274-001F-3451-73C848F5D1C3}', '终端8', '1935244800', '1', '0');
INSERT INTO `il_local_equipment` VALUES ('{CB98BEEB-7D18-58F9-E138-43FFD0B04CF1}', '终端4', '639244800', '1', '0');
INSERT INTO `il_local_equipment` VALUES ('{4D393CCE-B218-9D5A-9040-06DA4E70B701}', '终端5', '1328198400', '1', '0');

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
INSERT INTO `il_location_mark` VALUES ('{C7448A9E-A9CD-01D5-87FF-4FFC5DB9ECCC}', '信标一', '0', '1', 'fdsaf6565', '0');
INSERT INTO `il_location_mark` VALUES ('{50E15174-63B4-3C66-6F5C-EE3B298233E7}', '信标二', '1', '1', '6556dd', '0');
INSERT INTO `il_location_mark` VALUES ('{C21FDB37-3370-3C4F-3367-02AF8AB39472}', '信标3', '0', '1', '56545', '0');
INSERT INTO `il_location_mark` VALUES ('{9E948530-C3B4-0671-3AA2-0CE1414F9086}', '信标4', '1', '1', '1454', '0');

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
INSERT INTO `il_locator` VALUES ('{A73E1147-BC5F-C6AB-55D2-266642AA1C4E}', '套件九', '545345', '1329148800', '1', '1');
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
INSERT INTO `il_locator` VALUES ('{A7AB8462-B497-6CBE-A870-01C9F8470B5A}', 'L015', 'test15', '1462636800', '2', '1');

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
INSERT INTO `il_organization` VALUES ('2', '1', '-1', '佛山市消防总队', '佛山总队', '科技园大道1号路2号', '0');
INSERT INTO `il_organization` VALUES ('3', '1', '-1', '深圳市消防总队', '深圳总队', '福田区长安路13号', '0');
INSERT INTO `il_organization` VALUES ('4', '3', '-1-3', '南山区消防大队', '南山大队', '南海大道25号', '0');
INSERT INTO `il_organization` VALUES ('5', '1', '-1', '广州市消防总队', '广州总队', '越秀区中山三路103号', '0');

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
INSERT INTO `il_outfire_facility` VALUES ('{D2A08936-515C-A10F-CD52-8A9164C70FCD}', '44545', '灭火器', '1', '贝塔尔大厦', '3', '45545', '2015', null, '0');
INSERT INTO `il_outfire_facility` VALUES ('{E8ABFE9E-0B42-80AF-DA33-9B9DA2DF16BA}', 'a011', '消防栓', '2', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '{5D8C0F12-EF38-9599-9844-42EA6FA27A9D}', '121514', '20102400', null, '0');

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
INSERT INTO `il_person` VALUES ('{B4A661EB-B3F5-C40F-B741-9053CC5D2B28}', '人员发', '0', '-28800', '20170623\\b7b27fab7c77201189a9abd805731472.jpg', '0', '654655', '1', '{20B3A08F-6389-6B52-6B40-45DDE2AEE00B}', '1', '1', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{DB7A3C0D-1676-9CA2-D84B-1EC62B1FB9C9}', '万文', '0', '610556400', '', '0', '54544554', '1', '', '1', '1', '1462464000', '', '0');
INSERT INTO `il_person` VALUES ('{0A9ECA32-F234-A673-4837-B2388C12C317}', '王柳', '0', '1420041600', '', '0', '54546565', '1', '{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '1', '1', '1430755200', '{A24AAF1B-AD2D-03D7-B454-274B1FA99A38}', '0');
INSERT INTO `il_person` VALUES ('{EF15F03D-74AC-E0BF-6A6A-F852A1325B89}', '张三', '0', '610383600', '', '0', '5254554', '1', '', '1', '1', '1494000000', '', '0');
INSERT INTO `il_person` VALUES ('{0F6AB859-DA46-C1A3-489A-A1B2BABDFBED}', '王文', '1', '1777996800', '20170822\\94b215ecc14d17eaafd711e95009affc.png', '0', '4656566', '1', '', '1', '1', '-28800', '', '0');
INSERT INTO `il_person` VALUES ('{1E5CD075-E639-6AB3-A300-D24A29F3F417}', '张三', '0', '2029939200', '20170822\\a9a42de9bcd5efb3e24ee7ffbb58611b.png', '0', '3424245', '1', '', '1', '1', '1503417600', '{A73E1147-BC5F-C6AB-55D2-266642AA1C4E}', '0');
INSERT INTO `il_person` VALUES ('{9423A99D-6B55-4621-E98C-A2685F45DE89}', '份饭', '0', '644857200', '20170901\\e2888c11e7576ea425e52a44bc197a42.jpg', '0', '556', '1', '', '1', '2', '1493654400', '', '0');
INSERT INTO `il_person` VALUES ('{1AF6CEA3-3698-1C63-6E4B-F8FF8E9C5EA4}', '人以上', '0', '1399305600', '20170824\\c4ca9c1d09c930c5ceb8f746a96476dc.jpg', '0', '4444546', '1', '', '1', '1', '1433692800', '', '0');
INSERT INTO `il_person` VALUES ('{06A909A0-9D82-39A2-5098-360C875618C6}', '万文', '0', '641833200', '20170817\\42a758c0fa5401d7efa330f13e2386e3.jpg', '0', '5454454', '1', '{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '1', '1', '1297612800', '', '0');
INSERT INTO `il_person` VALUES ('{8A923002-E56E-8A6B-A79C-21140380FB58}', '柳林', '0', '515689200', '', '1', '5465444654', '3', '', '0', '0', '1210003200', '', '0');
INSERT INTO `il_person` VALUES ('{28C84CA1-668A-DEEB-F533-859BD3A5F35F}', '于建红', '0', '610383600', '', '0', '545644', '2', '', '1', '1', '1433520000', '{A7AB8462-B497-6CBE-A870-01C9F8470B5A}', '0');

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
INSERT INTO `il_rol_nod` VALUES ('{0CD71E6E-3A60-424F-5DC8-8410F8171A07}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'system/role');
INSERT INTO `il_rol_nod` VALUES ('{11880422-B2E4-23B3-EE20-238319996139}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'system/userlog/index');
INSERT INTO `il_rol_nod` VALUES ('{12A984A5-FDCB-5AC3-3F08-19729B7DEB80}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/floor/index');
INSERT INTO `il_rol_nod` VALUES ('{13FE8398-71B7-211D-3DBC-4D0562119F6D}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building');
INSERT INTO `il_rol_nod` VALUES ('{19D75EFA-B7E8-3D45-A169-D14A7D59DCA7}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/group');
INSERT INTO `il_rol_nod` VALUES ('{1D21D566-7E08-C42D-F02A-CFC6E56998A9}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization');
INSERT INTO `il_rol_nod` VALUES ('{1D40931B-0099-9628-3B13-0E08ECCAB49E}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/building');
INSERT INTO `il_rol_nod` VALUES ('{2001BED4-A638-6CDB-F562-D77E739F93DA}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/incident/index');
INSERT INTO `il_rol_nod` VALUES ('{20777197-10E6-E965-2C11-821D439787E8}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/groupperson/index');
INSERT INTO `il_rol_nod` VALUES ('{213203E7-3A94-95F6-85FC-B3A75D4F5EE1}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/del');
INSERT INTO `il_rol_nod` VALUES ('{2133584F-54C2-7618-71FF-18803F8DA39F}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'system/userlog/delall');
INSERT INTO `il_rol_nod` VALUES ('{252DF271-6379-1410-B127-72AF745526C9}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark');
INSERT INTO `il_rol_nod` VALUES ('{2634475D-DEB7-6A38-262A-C78F24789788}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/locationmark/mod');
INSERT INTO `il_rol_nod` VALUES ('{27BA32B7-EB5D-B079-F953-38971B242BD8}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'system/userlog');
INSERT INTO `il_rol_nod` VALUES ('{28EBF431-5765-CECD-B52A-91CB2B9B9FF6}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building/index');
INSERT INTO `il_rol_nod` VALUES ('{315B7E9F-897D-5889-0B01-86CFC8FA85EA}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/floor');
INSERT INTO `il_rol_nod` VALUES ('{366F2BF9-2E66-25FC-2A64-1EBEB2F4419F}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group');
INSERT INTO `il_rol_nod` VALUES ('{36AD4A4F-6FD6-90FC-3686-4AD719F40CC3}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/person/index');
INSERT INTO `il_rol_nod` VALUES ('{36F73CC6-42A9-5278-7BE0-905A8032665F}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/group/index');
INSERT INTO `il_rol_nod` VALUES ('{36FCEBD3-087C-898F-8D6A-EE15B770D289}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/localequipment');
INSERT INTO `il_rol_nod` VALUES ('{3B4DC88B-57C6-7F1A-FE0B-7CC803B4B696}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident/index');
INSERT INTO `il_rol_nod` VALUES ('{3E9A5587-250D-8711-3EF1-331D54B9C14E}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/groupperson');
INSERT INTO `il_rol_nod` VALUES ('{42344385-2AAC-1A29-D7C4-6FEEB291AEB4}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/outfirefacility/index');
INSERT INTO `il_rol_nod` VALUES ('{4291DCBB-BD01-947C-B3BE-8B4AF70AB42E}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/locator/index');
INSERT INTO `il_rol_nod` VALUES ('{44EC7FBB-4151-FC2B-F51C-D8DFCCC3995C}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment');
INSERT INTO `il_rol_nod` VALUES ('{457265AE-DCF1-B810-3238-895535E9DE8E}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/floor/del');
INSERT INTO `il_rol_nod` VALUES ('{46E4C8D8-038B-CF8C-9909-5E046BBE5942}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/organization/mod');
INSERT INTO `il_rol_nod` VALUES ('{4D0524B0-BF0F-0698-E5C6-ABBC77F3895C}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/groupperson/add');
INSERT INTO `il_rol_nod` VALUES ('{4FDB64C6-B7CC-32F7-A8C0-AD655B9619EE}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/organization/index');
INSERT INTO `il_rol_nod` VALUES ('{50D159AA-C758-83AB-5110-CC9493A23935}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin');
INSERT INTO `il_rol_nod` VALUES ('{5329B9BE-F8F7-8410-8448-EDFFFF1547E4}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/groupperson');
INSERT INTO `il_rol_nod` VALUES ('{59BD49B2-A884-15BA-4909-486FA7F20C17}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/locationmark');
INSERT INTO `il_rol_nod` VALUES ('{5B5402CF-8E7B-4A59-B4ED-F0996C7EF197}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'system/role/index');
INSERT INTO `il_rol_nod` VALUES ('{5EFDA002-98D8-5C34-00C7-AD14D02E9E7A}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/localequipment/index');
INSERT INTO `il_rol_nod` VALUES ('{5F39976F-3069-33F7-CAD4-3A46B09BF242}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/floor');
INSERT INTO `il_rol_nod` VALUES ('{65A7F16D-F0A3-AFAC-A7A6-F1442B046258}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator/index');
INSERT INTO `il_rol_nod` VALUES ('{6DE5BFC2-931B-6CF5-9686-B404927833DE}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/add');
INSERT INTO `il_rol_nod` VALUES ('{7373CB6C-F66F-391B-B150-6FA0CE20829D}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/person');
INSERT INTO `il_rol_nod` VALUES ('{73BCBEB3-FC2D-BF2F-02C7-0D538F89FBD5}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person');
INSERT INTO `il_rol_nod` VALUES ('{7893A74C-E08D-E678-64F8-FB2CD483BDB1}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/organization');
INSERT INTO `il_rol_nod` VALUES ('{7F2045A8-6ACD-158E-ACAE-2C57B3742FE7}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/building');
INSERT INTO `il_rol_nod` VALUES ('{84C6078F-3D01-9F87-0E62-9CA9DCB2989B}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin');
INSERT INTO `il_rol_nod` VALUES ('{8661009C-A03A-36B9-20A5-A9D607AF33B1}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility');
INSERT INTO `il_rol_nod` VALUES ('{8896AA02-EDBD-3861-926C-A1DFF6E8BFC4}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/building/add');
INSERT INTO `il_rol_nod` VALUES ('{89ADBA8B-A8FA-164E-09A3-0263985EAB8F}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/incident');
INSERT INTO `il_rol_nod` VALUES ('{9020214D-0BAE-398B-A044-61DE63DE2014}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/mod');
INSERT INTO `il_rol_nod` VALUES ('{908B2AD6-2348-C09A-4B7A-7086CB6DAEF6}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/localequipment/mod');
INSERT INTO `il_rol_nod` VALUES ('{94C2A00B-65B1-B945-A7C9-D77B2DE4ED14}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'system/user');
INSERT INTO `il_rol_nod` VALUES ('{957BF28E-8B3D-4BA0-E7FA-6DD585A95EDD}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/organization/index');
INSERT INTO `il_rol_nod` VALUES ('{98126DC5-60D4-FBAF-7F86-320CAA5FF802}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'system/userlog');
INSERT INTO `il_rol_nod` VALUES ('{9812B92C-074C-2F75-1E38-5B5D95036BDF}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/incident');
INSERT INTO `il_rol_nod` VALUES ('{A16A8586-6004-094F-E5FE-5D7EFD8566BC}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'system');
INSERT INTO `il_rol_nod` VALUES ('{A2738C6C-C4D3-D8CD-F8F2-71F57C5B81FE}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/building');
INSERT INTO `il_rol_nod` VALUES ('{A93B4ACE-5862-FD45-08FC-9619F63BEE8B}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/group/index');
INSERT INTO `il_rol_nod` VALUES ('{A99005F3-E2BC-11C1-ABC8-2EFAD019C021}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin');
INSERT INTO `il_rol_nod` VALUES ('{AA5EBBEE-E1D9-6EAE-7EF0-26339FAA6790}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/floor');
INSERT INTO `il_rol_nod` VALUES ('{AC4844E6-08D2-2522-76B2-F7FE23779E55}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin');
INSERT INTO `il_rol_nod` VALUES ('{AE5214CA-4681-6C71-2457-566C94984615}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person/detail');
INSERT INTO `il_rol_nod` VALUES ('{AF490BCD-9BE9-1046-3038-1677038EB4CD}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'system/user');
INSERT INTO `il_rol_nod` VALUES ('{AFD3C530-D48B-B470-9A14-6D84A055F211}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/locator');
INSERT INTO `il_rol_nod` VALUES ('{B103C43B-6AA7-8AA8-7D63-99202AE60628}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/groupperson/index');
INSERT INTO `il_rol_nod` VALUES ('{B435B823-3C47-81A6-752E-E69176B6AA38}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/outfirefacility/index');
INSERT INTO `il_rol_nod` VALUES ('{BDDC4A30-A864-C932-537B-68ABDC8CCC06}', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', 'admin/building/index');
INSERT INTO `il_rol_nod` VALUES ('{BF2828A8-6186-9DBA-F88D-CB6A4BD92EC3}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/groupperson');
INSERT INTO `il_rol_nod` VALUES ('{C0D4C1BB-9F11-5387-851A-D7B4191541F0}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locationmark/index');
INSERT INTO `il_rol_nod` VALUES ('{C1B4B3F3-48B5-E12B-EA17-5B48E46D944A}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'system/user/index');
INSERT INTO `il_rol_nod` VALUES ('{C62DB202-786B-10D8-42D5-319B73BE06E4}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'system');
INSERT INTO `il_rol_nod` VALUES ('{CCB0235B-C7AD-EB34-7773-70B196D75A38}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/outfirefacility');
INSERT INTO `il_rol_nod` VALUES ('{D198F853-EA20-1CEF-E4D2-F422BF511F4D}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/locator');
INSERT INTO `il_rol_nod` VALUES ('{D4B778DB-6351-ED36-C182-3925F681892B}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'system/user/add');
INSERT INTO `il_rol_nod` VALUES ('{D7A1688D-B60E-559B-25B1-2924D30932C1}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/localequipment/index');
INSERT INTO `il_rol_nod` VALUES ('{DF1A276B-35B8-64A5-1727-A93E7643373C}', '{1D2850BD-E43F-BED2-F995-37C23EE8E49A}', 'admin/person/index');
INSERT INTO `il_rol_nod` VALUES ('{E6AC87AA-35C5-6A55-007D-92345B882E48}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/person/mod');
INSERT INTO `il_rol_nod` VALUES ('{E77ED697-627A-305E-7CD1-E35B430615F5}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/building/index');
INSERT INTO `il_rol_nod` VALUES ('{EAAF2C0E-BA61-DE8A-AB58-DBC0A2CCF10C}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/group/add');
INSERT INTO `il_rol_nod` VALUES ('{ED42B543-F4C2-44CE-C166-F0FD184C34EC}', '{D9DC8E1E-81E3-8349-1FC1-F248E7DFE69B}', 'admin/group');
INSERT INTO `il_rol_nod` VALUES ('{F21FCBAB-9B25-2526-F92F-24409CD5B776}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/locationmark/index');
INSERT INTO `il_rol_nod` VALUES ('{F36A0CBC-CE74-D3B9-F71D-375CD171EF28}', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', 'admin/organization/self');

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
INSERT INTO `il_user` VALUES ('{1865CF44-B3A8-BB22-4E8B-4C98A2445F8C}', 'yonghu5', 'e10adc3949ba59abbe56e057f20f883e', '6464565@qq.com', '', '', '0', '0', '0.0.0.0', '1', '0', '{193C91B4-9085-4A32-B62E-26C6A14AFBA7}', '', '1503371737');
INSERT INTO `il_user` VALUES ('{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '13888888888', '第二个用户', '28', '1506076562', '0.0.0.0', '1', '0', '{F8450F09-9220-8002-287D-6ED9A97F62A1}', '', '1499341299');
INSERT INTO `il_user` VALUES ('{34BBF398-677A-1E92-1757-870A92817DA6}', 'suser03', 'e10adc3949ba59abbe56e057f20f883e', '4645454@qq.com', '13888888888', '', '0', '0', '0.0.0.0', '5', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1506068662');
INSERT INTO `il_user` VALUES ('{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', 'e10adc3949ba59abbe56e057f20f883e', '4441544@qq.com', '13888888888', '', '3', '1506076678', '0.0.0.0', '2', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1503385264');
INSERT INTO `il_user` VALUES ('{58B08885-1D93-997F-0D7E-8C7903E30D83}', 'nsdd', 'e10adc3949ba59abbe56e057f20f883e', '56444564@qq.com', '13888888888', '', '0', '0', '0.0.0.0', '4', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1504519298');
INSERT INTO `il_user` VALUES ('{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@tomee.cn', '13888888827', '主要的管理员1', '127', '1509422364', '0.0.0.0', '1', '0', '{C407F15A-F477-8AF4-B830-19FEF9B95F54}', '', '1501144826');
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
INSERT INTO `il_user_log` VALUES ('{0030EA84-6318-44E2-A64A-A074238FE733}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:09:04');
INSERT INTO `il_user_log` VALUES ('{0086DFA9-6645-1C02-9AC0-45538F05AF33}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:19');
INSERT INTO `il_user_log` VALUES ('{008A3D7F-8CF8-B2ED-A7C2-F2DB1417B5C4}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 18:52:57');
INSERT INTO `il_user_log` VALUES ('{00D61B6D-92F3-C5ED-CD9A-ADF0FD5B2381}', '系统管理', '角色管理', '权限明细', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:15:29');
INSERT INTO `il_user_log` VALUES ('{011FDD6E-431A-B0FD-B962-53089671D2BB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:04:01');
INSERT INTO `il_user_log` VALUES ('{01322939-7E2F-3390-BF1B-E2D1F4C20D5F}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:46:05');
INSERT INTO `il_user_log` VALUES ('{01356326-0D19-9C87-7E06-90347BAA82E4}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 14:51:12');
INSERT INTO `il_user_log` VALUES ('{01535692-BD8F-7ED4-5C4B-E1B5BED79CAC}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:09:53');
INSERT INTO `il_user_log` VALUES ('{017A92CA-25E7-68CE-EBCA-EF2E187CCC14}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:10:57');
INSERT INTO `il_user_log` VALUES ('{01CB92DE-0A38-9A08-3264-7CA635F3F7F7}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:47:57');
INSERT INTO `il_user_log` VALUES ('{01E7B760-F667-4A2E-F280-DB49C7C153F0}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:03:01');
INSERT INTO `il_user_log` VALUES ('{0208DA29-7FC3-62CB-C9EC-606389CEE161}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:25');
INSERT INTO `il_user_log` VALUES ('{02235EBE-4354-5D0D-D46C-57B408B93507}', '业务管理', '单位管理', '本单位信息', '失败', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:37:20');
INSERT INTO `il_user_log` VALUES ('{0250EB56-E575-45A4-4F4F-0E227833AD5E}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:12');
INSERT INTO `il_user_log` VALUES ('{0265D7C8-807C-5B5B-89B8-A606EADAAC33}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:14:58');
INSERT INTO `il_user_log` VALUES ('{0270EC7E-57F7-488F-4394-EEC11F745BB5}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-06 19:26:42');
INSERT INTO `il_user_log` VALUES ('{0297A2B4-990D-A5B3-B5CA-26C5768DF252}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:22');
INSERT INTO `il_user_log` VALUES ('{02CA1D80-8FEE-176B-31D0-E1AB6A77CE99}', '系统管理', '角色管理', '权限明细查看', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:54:43');
INSERT INTO `il_user_log` VALUES ('{03098604-0AE5-BE6D-B2BA-C7E782C1F862}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-08 17:02:17');
INSERT INTO `il_user_log` VALUES ('{030DD137-2E7B-C7C1-84D8-FC87150DA3AC}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:40');
INSERT INTO `il_user_log` VALUES ('{030FA83B-483F-A8D8-AE64-F2F35E5A8CB9}', '业务管理', '人员管理', '修改人员信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:20');
INSERT INTO `il_user_log` VALUES ('{03167CB3-F17D-A24F-3644-0953B7995A82}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:47:52');
INSERT INTO `il_user_log` VALUES ('{034F6392-D27B-EF87-C1B9-716207D49EAD}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:39:33');
INSERT INTO `il_user_log` VALUES ('{036B2DAC-DB38-0BAF-7E06-6F51F8F5F29C}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-09 09:27:50');
INSERT INTO `il_user_log` VALUES ('{0379F380-A76D-91B4-44B3-2E18E2B3AC64}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 17:59:50');
INSERT INTO `il_user_log` VALUES ('{03A1C7C0-86C2-A19F-66BB-DB69BC247E0A}', '业务管理', '信标管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:54');
INSERT INTO `il_user_log` VALUES ('{041F7243-2B35-C460-CE80-D44799C7E2FC}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-11 11:02:47');
INSERT INTO `il_user_log` VALUES ('{047CFB20-6015-46C7-4A63-E49032373F24}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '10.0.2.111', '2017-09-21 19:40:58');
INSERT INTO `il_user_log` VALUES ('{04831AE0-B684-D814-E8B8-6855E268FFE5}', '系统管理', '用户日志', '日志列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:26:04');
INSERT INTO `il_user_log` VALUES ('{051350DA-0B31-AAD1-B802-7DF8D1B0D287}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:32');
INSERT INTO `il_user_log` VALUES ('{0555F2E8-072D-19E5-6E74-6396EC57B561}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:45:15');
INSERT INTO `il_user_log` VALUES ('{05560783-8A0B-7C8D-218B-0558F621E6BE}', '业务管理', '信标管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:21:01');
INSERT INTO `il_user_log` VALUES ('{055B1703-4A57-BEC7-B23E-61854B7E8D5A}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:14');
INSERT INTO `il_user_log` VALUES ('{05E6C77D-A3C5-C84F-F1A0-48ACC26439EE}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:43:59');
INSERT INTO `il_user_log` VALUES ('{05FE8141-BE7A-137A-163D-A7D1750995D5}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:23');
INSERT INTO `il_user_log` VALUES ('{0656B5A9-45C8-3CA8-1CA8-5DE1A74A2E33}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:55:47');
INSERT INTO `il_user_log` VALUES ('{06B5FF9E-ED87-9DDD-89AF-463A99983ECD}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:13:47');
INSERT INTO `il_user_log` VALUES ('{06C4E819-E3D1-F6D0-5004-B57C0993F752}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:10:52');
INSERT INTO `il_user_log` VALUES ('{06CA5176-0DB2-7A89-7E0C-9D315ADD5EE5}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 18:00:07');
INSERT INTO `il_user_log` VALUES ('{06D91EF5-94E8-DF37-F3A6-D5718745E975}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:51');
INSERT INTO `il_user_log` VALUES ('{072E258D-3267-88D6-D55F-E087BE8572CD}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:24');
INSERT INTO `il_user_log` VALUES ('{076F298B-D450-57C4-B12D-708EE7C8DE74}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:03');
INSERT INTO `il_user_log` VALUES ('{07AD45AE-B3A4-6B3C-26C0-A69BF19117DF}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 18:39:28');
INSERT INTO `il_user_log` VALUES ('{07B924FB-4BC9-51DB-03D2-09BFED0E3752}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:38:27');
INSERT INTO `il_user_log` VALUES ('{07D140C0-065D-9971-B204-74BE58EECA4B}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:40:19');
INSERT INTO `il_user_log` VALUES ('{0810BC89-50B3-4C15-D6CF-134138E9B1FB}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:05:28');
INSERT INTO `il_user_log` VALUES ('{082405D9-56F9-5460-63DD-D2B6C4864F4A}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:51:51');
INSERT INTO `il_user_log` VALUES ('{084272AF-ADB8-E19C-FE92-502AF9FF636E}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:32:46');
INSERT INTO `il_user_log` VALUES ('{08781221-DB2C-CD92-9F07-C38128FD0B0E}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:45:45');
INSERT INTO `il_user_log` VALUES ('{087ACF63-59A2-CB63-763E-C6C0DE81ADA8}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:20');
INSERT INTO `il_user_log` VALUES ('{089A1F41-7CDF-72A5-46D1-2E820D51E5A5}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:55');
INSERT INTO `il_user_log` VALUES ('{089DBFEC-D822-1790-2B32-0321DB9EC4A6}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 17:14:28');
INSERT INTO `il_user_log` VALUES ('{08A17B20-34C5-5CAE-795C-07E0661B3E00}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:33:02');
INSERT INTO `il_user_log` VALUES ('{08AA6C18-F4AE-D1C3-79F6-2D86A92723B1}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:10:11');
INSERT INTO `il_user_log` VALUES ('{091708BB-7A02-82F8-93A5-529DCD87A308}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:06:18');
INSERT INTO `il_user_log` VALUES ('{092349E9-EB36-30B4-13E4-E823BC27159C}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:10:42');
INSERT INTO `il_user_log` VALUES ('{09338A50-3126-6F56-C9FA-CF52C497B15C}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 19:43:39');
INSERT INTO `il_user_log` VALUES ('{0976DB6E-22F7-309B-DA1C-501F44933FD6}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:11');
INSERT INTO `il_user_log` VALUES ('{098192D3-152F-BA36-849F-9FF5E71EBA15}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:08:20');
INSERT INTO `il_user_log` VALUES ('{09949CD2-6ED4-C301-BC5F-BC5A276F1EBD}', '业务管理', '组管理', '删除组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:43:51');
INSERT INTO `il_user_log` VALUES ('{09B7FDA5-7C5B-FE92-A858-E701B5FF2E33}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:20:43');
INSERT INTO `il_user_log` VALUES ('{09D287E8-B631-C988-8D9B-487EBE5F302D}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:26');
INSERT INTO `il_user_log` VALUES ('{0A5841A2-8D52-7B1C-275D-C113538D0B52}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:55:52');
INSERT INTO `il_user_log` VALUES ('{0A68A79A-6ADF-217B-DB67-86B6E9FD11A5}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:44:49');
INSERT INTO `il_user_log` VALUES ('{0A710A40-514E-CB73-18D0-E8B1F7C54207}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 17:59:49');
INSERT INTO `il_user_log` VALUES ('{0A82F8B1-72F4-707D-CAD2-BECE4B9937C7}', '业务管理', '人员管理', '人员详情', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:04:07');
INSERT INTO `il_user_log` VALUES ('{0AF6D859-A395-0F57-62C2-5A79FAC649F8}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:08:59');
INSERT INTO `il_user_log` VALUES ('{0B25EEAE-FF25-02F9-723B-0B3CBF8EF251}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:38:48');
INSERT INTO `il_user_log` VALUES ('{0B52CAEE-D7AE-90E6-C906-ED69E6566E13}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:31:04');
INSERT INTO `il_user_log` VALUES ('{0BA44871-732B-9F68-0B23-34410D89A026}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:36:36');
INSERT INTO `il_user_log` VALUES ('{0BC4F516-B0AC-1D46-B323-9598E737B4CF}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:52:14');
INSERT INTO `il_user_log` VALUES ('{0BFCB3A6-7B70-09F1-B567-AC4721388062}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:05:08');
INSERT INTO `il_user_log` VALUES ('{0C467433-6B16-7772-8540-A1A43243EFC3}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:31:40');
INSERT INTO `il_user_log` VALUES ('{0C6F86FF-3CCA-D989-000E-DC67DADED024}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:01');
INSERT INTO `il_user_log` VALUES ('{0C705464-DEA4-0761-9F81-D9CF08D57BFB}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:34:18');
INSERT INTO `il_user_log` VALUES ('{0CC015AF-1020-F1F7-8FA3-75E9BAF953AB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:10:20');
INSERT INTO `il_user_log` VALUES ('{0D184551-1E03-9669-1C32-94C119E6123A}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:09:13');
INSERT INTO `il_user_log` VALUES ('{0D292E7D-DF4F-F5D1-3DF6-103782195625}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:10:36');
INSERT INTO `il_user_log` VALUES ('{0D31DA7F-5CFC-CBDF-1AB6-BBB638808D4E}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:40:17');
INSERT INTO `il_user_log` VALUES ('{0D344272-1E95-2F3A-2F21-216E74E28F6C}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:10:54');
INSERT INTO `il_user_log` VALUES ('{0D5BC821-61E9-20A8-2C38-A27BB234B453}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:50:40');
INSERT INTO `il_user_log` VALUES ('{0D8B21C3-42CF-D82D-4457-B314CAA9B019}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:48:56');
INSERT INTO `il_user_log` VALUES ('{0D8E417B-E936-F245-B359-8298DA1545F9}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:35:56');
INSERT INTO `il_user_log` VALUES ('{0DE83C80-B7C7-F308-A88F-79D5B38556B3}', '业务管理', '消防设备管理', '修改消防设备', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:47:18');
INSERT INTO `il_user_log` VALUES ('{0DEAAE13-EE02-BBC8-90B7-685CD91888A5}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 11:47:08');
INSERT INTO `il_user_log` VALUES ('{0E038829-28F6-D03F-1D50-71CB79939C06}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:22');
INSERT INTO `il_user_log` VALUES ('{0ED9CBB2-9DBB-07C8-1779-4D3E2D2D6800}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:06:55');
INSERT INTO `il_user_log` VALUES ('{0EEDA095-A051-26FB-ADD3-A18685406F95}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:55:31');
INSERT INTO `il_user_log` VALUES ('{0EFD43B2-1CBC-0C30-AD93-458B35F1B366}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:06:38');
INSERT INTO `il_user_log` VALUES ('{0F3EFB1D-597B-25DF-0356-A86F9C2F6763}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:48');
INSERT INTO `il_user_log` VALUES ('{0F5316C3-42FF-0B34-9CF8-3407F2C54786}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:54:56');
INSERT INTO `il_user_log` VALUES ('{0F5888B2-E36C-D4A5-6656-1DC7D3BE7432}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:29');
INSERT INTO `il_user_log` VALUES ('{0F6D56DA-ABC1-E384-68BF-EE02E03AAB21}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:29');
INSERT INTO `il_user_log` VALUES ('{0F795E2C-BB82-A79E-51BD-90B1751C5B2E}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:07:09');
INSERT INTO `il_user_log` VALUES ('{0F7FBBE9-C04E-947F-0B30-963237E6956A}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:13:00');
INSERT INTO `il_user_log` VALUES ('{0F898BFB-DB97-A92B-D10A-F1219105B5FC}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:40:58');
INSERT INTO `il_user_log` VALUES ('{0FA23F34-EFEA-7AB4-BAA4-001C9DA0FA9A}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:47:15');
INSERT INTO `il_user_log` VALUES ('{0FB0A067-9D5F-808B-54ED-3BEDBFF0600C}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:03:55');
INSERT INTO `il_user_log` VALUES ('{0FB20A32-B617-A007-E936-8A19814B9266}', '系统管理', '用户日志', '查看日志', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:07:00');
INSERT INTO `il_user_log` VALUES ('{0FB65284-BF79-832D-368C-49C737D17248}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:08:27');
INSERT INTO `il_user_log` VALUES ('{0FC054EE-9A06-7C64-1502-197D53679885}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:49');
INSERT INTO `il_user_log` VALUES ('{0FC2E3E5-C7F4-7988-EC40-DB2715465721}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:02:34');
INSERT INTO `il_user_log` VALUES ('{0FDFE4FE-8270-6D47-CCFD-A4C22A72DF7E}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:42:02');
INSERT INTO `il_user_log` VALUES ('{0FEBC050-4324-B173-BABE-9415B3001417}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 11:47:19');
INSERT INTO `il_user_log` VALUES ('{1011E914-6004-09FC-7761-4BE9E2B74BB9}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:52:13');
INSERT INTO `il_user_log` VALUES ('{101B7F66-D252-98B1-C7EB-511692EDD58B}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:02:27');
INSERT INTO `il_user_log` VALUES ('{1021FE8A-BAA2-A607-1501-27D4A0EF8247}', '业务管理', '人员管理', '人员详情', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:04:05');
INSERT INTO `il_user_log` VALUES ('{1058CF13-86D3-EAD6-C404-69CC71125EC8}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:47');
INSERT INTO `il_user_log` VALUES ('{105CA814-4085-FF87-D539-A38BAD615763}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:22');
INSERT INTO `il_user_log` VALUES ('{109F73C4-174C-A710-EBB7-ECA57708FA9A}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:37:04');
INSERT INTO `il_user_log` VALUES ('{10AA3A5D-0325-F17E-B3AB-482E1EBD99C9}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:40:15');
INSERT INTO `il_user_log` VALUES ('{10C5997B-42A5-2A36-E60C-4AF8C4BC6AF7}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:41:31');
INSERT INTO `il_user_log` VALUES ('{10E247AF-594B-CEAC-F1BC-2103BE88479A}', '系统管理', '角色管理', '角色授权', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:05:22');
INSERT INTO `il_user_log` VALUES ('{10F41C90-7DC9-14ED-F55E-41FCCA4E9475}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 20:09:27');
INSERT INTO `il_user_log` VALUES ('{10FB94D3-6DD5-EF7D-E203-DC12B52DCD73}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:46');
INSERT INTO `il_user_log` VALUES ('{110ECCBF-DCD5-F73C-C25B-D582950AF175}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 10:10:20');
INSERT INTO `il_user_log` VALUES ('{11271840-CDED-172F-2F77-40C3DC0FD991}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:07:13');
INSERT INTO `il_user_log` VALUES ('{112D17E3-0781-4686-0FFB-8DDF018EBA28}', '业务管理', '组成员管理', '成员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:49:22');
INSERT INTO `il_user_log` VALUES ('{113A654E-1C37-D0D5-4086-EB6997FB1AF9}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:20');
INSERT INTO `il_user_log` VALUES ('{113B9988-D9D6-BA30-37C4-47457141F3A0}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:43');
INSERT INTO `il_user_log` VALUES ('{1166F777-FE8D-F95E-B6E8-D604252CD785}', '业务管理', '首页', '主页', '成功', '', '', '', '0.0.0.0', '2017-09-22 09:14:21');
INSERT INTO `il_user_log` VALUES ('{116B9CF7-5826-A0A3-9750-609636671E32}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:07');
INSERT INTO `il_user_log` VALUES ('{11784F32-DBFD-63A8-6F5C-B93C42B725FB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:16');
INSERT INTO `il_user_log` VALUES ('{1198E51A-841F-306F-9828-4A60A66FFC2A}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:30');
INSERT INTO `il_user_log` VALUES ('{11B6B040-DB95-BABD-487B-4DE8D34B4126}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:20:53');
INSERT INTO `il_user_log` VALUES ('{11C57329-DD40-66AE-6483-147C28D6CACB}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:33:12');
INSERT INTO `il_user_log` VALUES ('{122FB919-6188-EAD0-1600-15F96A19A320}', '业务管理', '单位管理', '修改子单位', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:30');
INSERT INTO `il_user_log` VALUES ('{1266960A-EA08-D3DD-0DF3-80A711CE25A3}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:22:02');
INSERT INTO `il_user_log` VALUES ('{12AC7B71-BA38-9694-D912-5186122C8216}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:53');
INSERT INTO `il_user_log` VALUES ('{12B0D819-65BF-9B5F-2F6D-FFDECFBC6E6F}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:29:36');
INSERT INTO `il_user_log` VALUES ('{1343C25D-5544-2C74-ED3A-F598B2031284}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:07:43');
INSERT INTO `il_user_log` VALUES ('{13661719-E8AA-578E-C9FE-AA0B23AC950A}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:56:19');
INSERT INTO `il_user_log` VALUES ('{13A58D59-DC4C-60A5-3BEC-82406D1DDD27}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:39');
INSERT INTO `il_user_log` VALUES ('{13F088F0-F5EB-B477-5D8C-E335DD7B6F1A}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:16:55');
INSERT INTO `il_user_log` VALUES ('{14113282-A958-02A0-A99B-81CBF4F60DB0}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:58:46');
INSERT INTO `il_user_log` VALUES ('{144DA479-DC6F-AFDF-2545-0F904B5D81E6}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:13:03');
INSERT INTO `il_user_log` VALUES ('{14C83849-772D-AF71-08C8-1F6CB6193BBA}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:58:03');
INSERT INTO `il_user_log` VALUES ('{15291165-5EE7-99C8-F7C1-B33EEEFCB075}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:58');
INSERT INTO `il_user_log` VALUES ('{152E8D17-CA1C-9F54-AD38-B5F5AB9E980C}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:53:54');
INSERT INTO `il_user_log` VALUES ('{1532E7D0-277D-BAFA-01CC-69065E823CC2}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:10');
INSERT INTO `il_user_log` VALUES ('{153C0F0E-BCCC-EE58-3E37-790A5A8293D2}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:24');
INSERT INTO `il_user_log` VALUES ('{155F5F84-1CF6-BF03-0914-B6621DCB4163}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-11 11:02:58');
INSERT INTO `il_user_log` VALUES ('{15620A37-23A5-287A-9D99-A0C43E71B331}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:50:23');
INSERT INTO `il_user_log` VALUES ('{15782276-A038-0847-15D5-313B331BBC1B}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 20:09:36');
INSERT INTO `il_user_log` VALUES ('{157B22FF-E23A-B7FE-C73D-F1FAFE054F46}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:40:31');
INSERT INTO `il_user_log` VALUES ('{15E14409-4CA8-248A-6EA4-45BEFA32F13B}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 10:03:20');
INSERT INTO `il_user_log` VALUES ('{15EBD571-0225-2D44-37F4-ED798E0F6916}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:54:48');
INSERT INTO `il_user_log` VALUES ('{161C9014-4DFB-58E2-717C-CB5AE41F6E39}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:00');
INSERT INTO `il_user_log` VALUES ('{164BD846-2596-B8C4-0C81-A76241B148EF}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:30');
INSERT INTO `il_user_log` VALUES ('{16606B36-8E71-ABF8-9CC9-D0274E313BA2}', '系统管理', '角色管理', '权限明细', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:36:04');
INSERT INTO `il_user_log` VALUES ('{168638F9-664C-681D-512F-11965E2E9816}', '业务管理', '单位管理', '子单位列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:46:19');
INSERT INTO `il_user_log` VALUES ('{168758E0-4AB9-5514-6791-E6F7662DB7A8}', '系统管理', '用户管理', '修改密码', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:03');
INSERT INTO `il_user_log` VALUES ('{16AC0BEF-7762-C5EF-51C7-8A77072E38E8}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:03');
INSERT INTO `il_user_log` VALUES ('{16E8A21C-B9DF-A912-32DD-12CAF0488492}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:29');
INSERT INTO `il_user_log` VALUES ('{1707821A-FC1D-06ED-5A4D-D080D3BDA7EC}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:49:48');
INSERT INTO `il_user_log` VALUES ('{17079790-55D4-E9B0-5E68-C201A30F86F0}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 14:47:04');
INSERT INTO `il_user_log` VALUES ('{1731DF9B-3AF2-F7FA-292D-EA2FDD25BEFC}', '业务管理', '单位管理', '子单位列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:31:19');
INSERT INTO `il_user_log` VALUES ('{1738BA47-6F87-9695-6C7B-27AF0DD6DBAF}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:56:17');
INSERT INTO `il_user_log` VALUES ('{1740D87A-1246-786B-B40F-D93AC219D2AA}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:01:17');
INSERT INTO `il_user_log` VALUES ('{1774B6AF-FDC6-D705-9898-C8C03E71529A}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:32:50');
INSERT INTO `il_user_log` VALUES ('{1781700D-13E7-71FE-903A-8747D1F70B19}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:09:59');
INSERT INTO `il_user_log` VALUES ('{17C92A9B-9B5A-BD8E-B25B-E818FA6850D3}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 20:03:27');
INSERT INTO `il_user_log` VALUES ('{17E8BD92-8E21-9563-1C8B-08F05B0B4EAC}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:00:56');
INSERT INTO `il_user_log` VALUES ('{17EA6B56-B434-E384-908C-CD14A8098F88}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:54:20');
INSERT INTO `il_user_log` VALUES ('{17FC3AEE-5276-3388-F51F-C21D1ABA4E61}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:16');
INSERT INTO `il_user_log` VALUES ('{18053753-EC7E-E35E-E056-78C72861FC1C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:02');
INSERT INTO `il_user_log` VALUES ('{186005D5-C2C9-E129-33C7-4103B232DB5F}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:20');
INSERT INTO `il_user_log` VALUES ('{188A344C-ED26-80DD-A4FD-8BB31B281294}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:10:01');
INSERT INTO `il_user_log` VALUES ('{19044803-D3D9-1B9D-4916-EF3B5D5569D5}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:22:31');
INSERT INTO `il_user_log` VALUES ('{191071BD-206B-889E-70B1-36D0C3A40CDF}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:49');
INSERT INTO `il_user_log` VALUES ('{192F795F-7F89-5453-1448-D96DFB9EEECB}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:40:35');
INSERT INTO `il_user_log` VALUES ('{1937822E-432C-9827-4DA6-8A540248025E}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:40:19');
INSERT INTO `il_user_log` VALUES ('{194D0D5A-3F5F-37AE-6AFD-BD934C392703}', '系统管理', '用户日志', '查看日志', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 20:09:47');
INSERT INTO `il_user_log` VALUES ('{19857182-FEBE-E028-47DE-BAA5C9F2CB6A}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:39:15');
INSERT INTO `il_user_log` VALUES ('{19E6D95F-E862-C081-FBA8-3546B93BEBA3}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 09:14:58');
INSERT INTO `il_user_log` VALUES ('{1A0872C4-A22B-CA94-6A33-BA71F346BF0F}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:14');
INSERT INTO `il_user_log` VALUES ('{1A1D5A4B-9BCA-A54F-6D76-64A876A127E0}', '业务管理', '组成员管理', '成员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:48:17');
INSERT INTO `il_user_log` VALUES ('{1A2EAEA8-8A8C-9C28-B396-28F6D9CE480B}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:11:04');
INSERT INTO `il_user_log` VALUES ('{1A3D882B-13AC-4B5B-0AF8-188D1D0CAAE2}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:57:41');
INSERT INTO `il_user_log` VALUES ('{1A71DEC2-A1BF-E87A-8F63-22ECF5394AEA}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:03:51');
INSERT INTO `il_user_log` VALUES ('{1A7CC6CF-0703-724F-C603-18F0DADF62BA}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 18:53:25');
INSERT INTO `il_user_log` VALUES ('{1A7E3F55-4B98-4391-9240-995DDC9AAC07}', '系统管理', '角色管理', '权限明细', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 11:48:40');
INSERT INTO `il_user_log` VALUES ('{1AAF3F0C-EEE3-3C05-871B-8E67640E51AF}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 18:52:59');
INSERT INTO `il_user_log` VALUES ('{1AAFB5A7-496E-178F-DA0E-A4C21B05E125}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:56:22');
INSERT INTO `il_user_log` VALUES ('{1AB55709-47D7-B768-45CC-52732EBC3490}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:31');
INSERT INTO `il_user_log` VALUES ('{1ACBC68E-338C-20CE-6DCE-9FEC924DC7F7}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:55');
INSERT INTO `il_user_log` VALUES ('{1AEA4F23-C763-6321-9BF9-E8953798D22E}', '业务管理', '组成员管理', '成员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:14:20');
INSERT INTO `il_user_log` VALUES ('{1B097E23-F972-5CEE-4E70-00F40D4014EE}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:56:10');
INSERT INTO `il_user_log` VALUES ('{1B18DD0E-3DED-E09F-DA29-9D5558B86AEF}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:21:01');
INSERT INTO `il_user_log` VALUES ('{1B2282B2-9C13-0C29-BD4F-9FADFBE61B27}', '业务管理', '单位管理', '子单位列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:45:48');
INSERT INTO `il_user_log` VALUES ('{1B2922DA-51C7-0D26-5D80-2118E4FD04A8}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:09:39');
INSERT INTO `il_user_log` VALUES ('{1B452966-B213-89BF-C7D5-C6B26042517D}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:25:12');
INSERT INTO `il_user_log` VALUES ('{1B590942-0671-AAB3-8413-DF8A5B47C01D}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:09:25');
INSERT INTO `il_user_log` VALUES ('{1B93D266-A324-7B10-80B6-42BA44A65817}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:21:52');
INSERT INTO `il_user_log` VALUES ('{1B9EF167-D1AD-6EE3-5F8F-FC7F11CAEFC6}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:10:37');
INSERT INTO `il_user_log` VALUES ('{1BC3A714-A48D-0D1F-847F-55D012A56999}', '业务管理', '人员管理', '人员列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-06 16:57:25');
INSERT INTO `il_user_log` VALUES ('{1BDE0AE1-FEAF-E3C9-96B8-2119720A8785}', '业务管理', '楼层管理', '楼层列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:27:37');
INSERT INTO `il_user_log` VALUES ('{1C0EE0E1-8B72-09D5-1CF5-A3F278FAD2AA}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:49:59');
INSERT INTO `il_user_log` VALUES ('{1C22F91E-8075-ACF1-6BC8-B869EB31D38B}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:30');
INSERT INTO `il_user_log` VALUES ('{1C41F8B4-3D1B-8852-B259-A8E95B4F0A10}', '业务管理', '单位管理', '本单位信息', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:09');
INSERT INTO `il_user_log` VALUES ('{1C4B4E7F-6B3E-1EDB-9DF2-D0B1B05859FE}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:08:25');
INSERT INTO `il_user_log` VALUES ('{1C4E7DD6-AF9E-5003-C4D5-32538EBC28CD}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:45:46');
INSERT INTO `il_user_log` VALUES ('{1C683C66-476B-94AA-761A-6FD8F5EC7938}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:11:17');
INSERT INTO `il_user_log` VALUES ('{1CB391BB-5156-782A-31BA-EFD2C1FD1000}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:45:16');
INSERT INTO `il_user_log` VALUES ('{1CB931A4-77A5-5B40-2A21-A8C7B6759200}', '业务管理', '组管理', '添加组', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:27');
INSERT INTO `il_user_log` VALUES ('{1CD5B7A4-BF8A-4461-BB78-149459A442BB}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:44:21');
INSERT INTO `il_user_log` VALUES ('{1CE36E00-BDD3-F9D2-8E1B-5C6A6BDE8BF2}', '业务管理', '定位套件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:21:04');
INSERT INTO `il_user_log` VALUES ('{1D47A7C3-DDC7-3C26-48A4-0658038B82EB}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:59:14');
INSERT INTO `il_user_log` VALUES ('{1D5E7375-2C26-AE82-B129-B36F9C71B1FB}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:55:32');
INSERT INTO `il_user_log` VALUES ('{1D7759AB-4BC0-3315-68C7-C624DC5DA008}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:56:04');
INSERT INTO `il_user_log` VALUES ('{1D8F4C20-6DD3-866E-7DF5-894DB2E0EE91}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:11:24');
INSERT INTO `il_user_log` VALUES ('{1DA48187-0191-91AE-CA79-04314FC9C756}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:25');
INSERT INTO `il_user_log` VALUES ('{1DCA27ED-A633-A47F-CFFD-37811ACBE6F7}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:24:20');
INSERT INTO `il_user_log` VALUES ('{1DE3444F-497A-7B6C-548A-BEE338FD3E9B}', '业务管理', '人员管理', '修改人员信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:03:48');
INSERT INTO `il_user_log` VALUES ('{1DE37887-C1EC-E52C-B3D9-83EBE544B936}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:51:46');
INSERT INTO `il_user_log` VALUES ('{1DF3AED6-693A-C7BB-C819-86B6DC0698DC}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:52:38');
INSERT INTO `il_user_log` VALUES ('{1E420C49-5243-945A-FBA3-10629F95F2BF}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:15:21');
INSERT INTO `il_user_log` VALUES ('{1E5DD4A8-9CAD-827C-710C-D6FC3B2E4749}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:44:44');
INSERT INTO `il_user_log` VALUES ('{1E6A740A-114B-17BA-8B87-C110D47A04CA}', '系统管理', '角色管理', '权限明细', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:38:59');
INSERT INTO `il_user_log` VALUES ('{1E798579-2A98-E76C-5BB6-27CD5417DF92}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:50:46');
INSERT INTO `il_user_log` VALUES ('{1E9B8073-7206-1CD9-EC03-CBEF2DC2DF37}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:36');
INSERT INTO `il_user_log` VALUES ('{1EA9FE48-02DC-F302-5732-8259BE8E1B2B}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:10:12');
INSERT INTO `il_user_log` VALUES ('{1EBFDA08-8E3B-6A82-2829-A0E57404BD80}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:37:36');
INSERT INTO `il_user_log` VALUES ('{1EE766B5-1937-EFB2-2034-AFAA7AC68482}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-06 16:57:21');
INSERT INTO `il_user_log` VALUES ('{1EF3E90E-C302-F4DE-3209-FB770596BE53}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:28');
INSERT INTO `il_user_log` VALUES ('{1EF53303-9CFF-CABA-5E77-20C95F2C2C21}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '10.0.2.111', '2017-09-21 17:54:36');
INSERT INTO `il_user_log` VALUES ('{1EF69DEB-9B5E-2910-9B7A-5B88540A776B}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:53:18');
INSERT INTO `il_user_log` VALUES ('{1F127B52-9035-609F-C9A4-D10C2F0D6691}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:24');
INSERT INTO `il_user_log` VALUES ('{1F39746F-7C00-7F1B-0ECE-B78FFC9C88E5}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:58:09');
INSERT INTO `il_user_log` VALUES ('{1F466C3F-D421-CD0F-DAAB-DB4AADEC5B02}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:52:27');
INSERT INTO `il_user_log` VALUES ('{1F5ECBF9-1209-45F6-92E8-F983D58CCDC7}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:08:44');
INSERT INTO `il_user_log` VALUES ('{1F8256E8-3182-B1C1-7D44-A13615B4D1DB}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:21:05');
INSERT INTO `il_user_log` VALUES ('{1F8B93D5-21DE-C004-16ED-044126E2F154}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:58:15');
INSERT INTO `il_user_log` VALUES ('{1F9734CF-5DEA-749A-40B5-1DA4950278F8}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:00:48');
INSERT INTO `il_user_log` VALUES ('{1FB3B0C7-FF5C-A27E-0060-55B054F1515C}', '系统管理', '角色管理', '权限明细查看', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:53:01');
INSERT INTO `il_user_log` VALUES ('{1FB51BFA-7EBF-C6F8-0B41-A62A9F8F912A}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:10:08');
INSERT INTO `il_user_log` VALUES ('{1FB587F3-7ED9-F485-6C00-49A94D10AEC5}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:02:04');
INSERT INTO `il_user_log` VALUES ('{1FE73A7B-BE34-D0F5-A7B0-F9F56A685DCD}', '系统管理', '角色管理', '权限明细查看', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:52:29');
INSERT INTO `il_user_log` VALUES ('{1FFD8B4B-56AE-C239-38D3-44B0E890287E}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:28:49');
INSERT INTO `il_user_log` VALUES ('{20084482-D42D-70C2-D275-987251252970}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:58:36');
INSERT INTO `il_user_log` VALUES ('{20273E3C-C676-DF17-E1BE-6E0E0E0444CC}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:48:52');
INSERT INTO `il_user_log` VALUES ('{203B0EFF-4673-B727-86A5-89825A3F29A2}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:52:36');
INSERT INTO `il_user_log` VALUES ('{2053E50C-58FE-0259-3ADF-90A11724537C}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:43');
INSERT INTO `il_user_log` VALUES ('{205A9095-E779-C6D8-ABCD-4C822B4537D4}', '系统管理', '用户管理', '修改用户信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:15:22');
INSERT INTO `il_user_log` VALUES ('{207194E9-FB28-3BBB-77FC-1C3FEE28DD02}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:41:21');
INSERT INTO `il_user_log` VALUES ('{207771C9-7B5B-6E3C-867D-D4E9947C6B52}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:39:06');
INSERT INTO `il_user_log` VALUES ('{2093DA79-E9EC-A8E4-EBB2-228B661B95A4}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:09:57');
INSERT INTO `il_user_log` VALUES ('{20950CF9-3961-5BA2-019C-B3B7832CA40C}', '业务管理', '组管理', '删除组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:43:43');
INSERT INTO `il_user_log` VALUES ('{20A19835-435F-4208-2320-7BB7DC3519A5}', '系统管理', '用户管理', '修改密码', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 10:55:11');
INSERT INTO `il_user_log` VALUES ('{20A8C70B-8473-E0FD-251B-A2EBEE89CEC0}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:00:54');
INSERT INTO `il_user_log` VALUES ('{20EED85C-A3DB-DE20-8E4E-3CFA5CCDC097}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:23');
INSERT INTO `il_user_log` VALUES ('{20F63B4D-9399-A54B-8F32-EBF5F8E92247}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:12');
INSERT INTO `il_user_log` VALUES ('{20F8FF6E-3C56-841C-3E38-5D87CF6654B4}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:15:02');
INSERT INTO `il_user_log` VALUES ('{211644C0-FEAA-CE69-B072-DF204B5EBDC2}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:03:49');
INSERT INTO `il_user_log` VALUES ('{212FAA2B-4216-3E40-AD65-BDEF81616E07}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:10:18');
INSERT INTO `il_user_log` VALUES ('{214742A7-73AF-07E0-75F9-E4B95D04517D}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:49');
INSERT INTO `il_user_log` VALUES ('{21613964-F14F-EFA3-494D-D28A47A136F3}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:53:41');
INSERT INTO `il_user_log` VALUES ('{216F8DB9-91D6-5A4E-61BA-091BC3D90E15}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:35');
INSERT INTO `il_user_log` VALUES ('{21811B5C-E21B-EFB1-F8DB-79D4482E8565}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 18:36:17');
INSERT INTO `il_user_log` VALUES ('{21AE4327-BB9E-DBF8-0FB8-8E8D4C9FFD1F}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:54');
INSERT INTO `il_user_log` VALUES ('{21B8B3C0-1CF4-DF06-B3A0-51967D923C93}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:21:53');
INSERT INTO `il_user_log` VALUES ('{21DEC30B-828A-152E-40EB-AF6F82E8B33D}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:47:45');
INSERT INTO `il_user_log` VALUES ('{21E3E31B-BEF7-6E3A-70DB-FA85BE9354A0}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:22:20');
INSERT INTO `il_user_log` VALUES ('{21FC935E-022F-E978-32A3-BEDC18FF3450}', '业务管理', '组管理', '修改组', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:22');
INSERT INTO `il_user_log` VALUES ('{2246CFE9-363E-DB80-727C-D6D55CE6D219}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:06:40');
INSERT INTO `il_user_log` VALUES ('{225FB5BC-E31A-A16F-0DD5-274AEB51FE77}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:24:06');
INSERT INTO `il_user_log` VALUES ('{227F4C6C-6EEC-E15B-F893-1E43A45CF097}', '业务管理', '组管理', '删除组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:43:38');
INSERT INTO `il_user_log` VALUES ('{2285A76F-5F4B-2602-68BF-42C751A76C98}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:02:31');
INSERT INTO `il_user_log` VALUES ('{22CBFFF0-C923-6BF1-2912-D702AB1A080F}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:19');
INSERT INTO `il_user_log` VALUES ('{22EE3CD2-C11C-8265-CED1-5292A4BEF97E}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:44');
INSERT INTO `il_user_log` VALUES ('{2350D5D7-478A-9A81-1CDD-A59C6EB01526}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:05');
INSERT INTO `il_user_log` VALUES ('{2385FED6-60B1-D805-863C-55CA16E569B8}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:51');
INSERT INTO `il_user_log` VALUES ('{2395D274-F024-C9B8-BE3B-A8F0E372C6E8}', '业务管理', '组管理', '组列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:15:37');
INSERT INTO `il_user_log` VALUES ('{23A138B7-10EE-B9DA-E3BE-16E2CAE5F177}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:24:07');
INSERT INTO `il_user_log` VALUES ('{23B3DCB3-F0D8-A5BD-2216-F6D07D69561C}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 10:56:17');
INSERT INTO `il_user_log` VALUES ('{23C0FE63-B439-F41A-1248-712D2D0A90B8}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:49:53');
INSERT INTO `il_user_log` VALUES ('{23C4A057-A37E-6C50-27C1-F446091FF98A}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:53:58');
INSERT INTO `il_user_log` VALUES ('{23C629EE-8A32-9AE6-D94F-C4068BEEBA16}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:37');
INSERT INTO `il_user_log` VALUES ('{23D1E65F-A8A0-5AA8-E945-4D56D31599A8}', '业务管理', '楼层管理', '添加楼层', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:41:22');
INSERT INTO `il_user_log` VALUES ('{23DDA6A8-D78B-C691-5E22-C51873BFA6F9}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:43:19');
INSERT INTO `il_user_log` VALUES ('{2403943A-C65B-B206-AD22-D55DDA0C1919}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:07');
INSERT INTO `il_user_log` VALUES ('{246E7CA3-7E38-8970-8521-F35DD22B8B1C}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:19:03');
INSERT INTO `il_user_log` VALUES ('{2473E38E-4250-A4EC-BD06-53432C7426E4}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:10');
INSERT INTO `il_user_log` VALUES ('{24955524-959F-CD91-4D6C-C8D8197889DC}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:58');
INSERT INTO `il_user_log` VALUES ('{24CB613A-918B-D2FB-F737-F0D957B1E031}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:32');
INSERT INTO `il_user_log` VALUES ('{24DD965C-800E-8F29-2F26-9CEB2BE87E86}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:07:57');
INSERT INTO `il_user_log` VALUES ('{251BF01F-84CB-E18C-5A4B-EBACEDFAE4AC}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 18:32:21');
INSERT INTO `il_user_log` VALUES ('{253D5F31-A288-3F86-93B2-EA522C1E353E}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-06 19:26:38');
INSERT INTO `il_user_log` VALUES ('{2544C405-5EDC-FD75-EB41-F8570E452C21}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:32:23');
INSERT INTO `il_user_log` VALUES ('{254A6760-DA41-D800-BCBB-83EAB9271E6B}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:05:07');
INSERT INTO `il_user_log` VALUES ('{25881BF2-E5DA-7EBB-9313-A244AE527F40}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:35:06');
INSERT INTO `il_user_log` VALUES ('{25B1E555-BCA0-C256-2A37-34C8B631B37E}', '系统管理', '角色管理', '权限明细', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:53:53');
INSERT INTO `il_user_log` VALUES ('{25D7FB23-894E-6356-84BA-67718EE96338}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:32:42');
INSERT INTO `il_user_log` VALUES ('{25E834CD-B822-0908-E244-7423BB63443F}', '业务管理', '单位管理', '子单位列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:51:10');
INSERT INTO `il_user_log` VALUES ('{2638CDCA-2957-8843-268D-26039006AB66}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:19');
INSERT INTO `il_user_log` VALUES ('{2642A462-E804-5978-8C29-522B1DC70CA7}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:49:46');
INSERT INTO `il_user_log` VALUES ('{2669778D-9003-96B2-4CEB-E7CD1AB42588}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:18:09');
INSERT INTO `il_user_log` VALUES ('{2676553B-48D4-8E26-725E-CB26FE2F9A8E}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:33:52');
INSERT INTO `il_user_log` VALUES ('{2679A3E6-95F0-5948-68FE-DD73C215106C}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:08:03');
INSERT INTO `il_user_log` VALUES ('{2690668B-F399-D8AB-5209-1990B6A1EAB5}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:03:53');
INSERT INTO `il_user_log` VALUES ('{26AFFB67-831B-1A77-8034-4E60E00072FF}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:20:58');
INSERT INTO `il_user_log` VALUES ('{26B4DDC5-DD27-AC60-386B-A114D177B812}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:59:15');
INSERT INTO `il_user_log` VALUES ('{26E12FB2-3754-C7CD-4849-92A92860C13B}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:11:15');
INSERT INTO `il_user_log` VALUES ('{26F336B9-976B-D1B3-0CED-AA2D292A5998}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:08');
INSERT INTO `il_user_log` VALUES ('{27128234-C5F4-5635-9C05-88D9E2364A96}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:00:51');
INSERT INTO `il_user_log` VALUES ('{272E0285-F0D0-0BF6-D065-6D512CAFA9C5}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:31');
INSERT INTO `il_user_log` VALUES ('{27376689-B89A-4245-520F-416DAEC66B92}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:21:39');
INSERT INTO `il_user_log` VALUES ('{274AFDD6-1D84-9B6B-C3CC-8B8BB2C14676}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 11:48:34');
INSERT INTO `il_user_log` VALUES ('{277535FA-BE5A-FA05-5769-B6C86368F834}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:10');
INSERT INTO `il_user_log` VALUES ('{278EA837-82D3-BFF7-D87C-030E1CD21C5C}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:58:36');
INSERT INTO `il_user_log` VALUES ('{280ABE81-0E56-039B-9AB9-24F922503E95}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:56:11');
INSERT INTO `il_user_log` VALUES ('{281D5D85-8CD1-03BE-BE10-56D607AD7273}', '业务管理', '人员管理', '人员详情', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:12:37');
INSERT INTO `il_user_log` VALUES ('{28425AC4-88A0-69C1-F705-E95B487273CF}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:06:44');
INSERT INTO `il_user_log` VALUES ('{28A9DA3F-E7B1-B293-8F4F-2E32C79D7D7B}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:36');
INSERT INTO `il_user_log` VALUES ('{28AA1493-9AB9-3C53-4E17-2F56B189B753}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:53:45');
INSERT INTO `il_user_log` VALUES ('{28D0719C-2124-4951-865D-5FA65C982C5E}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:09');
INSERT INTO `il_user_log` VALUES ('{28D35459-7849-FE74-1081-4729A794530E}', '系统管理', '角色管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-22 18:38:04');
INSERT INTO `il_user_log` VALUES ('{28E8F79A-6A19-4671-3CEF-A1D3DF825EDF}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:42:07');
INSERT INTO `il_user_log` VALUES ('{29054D08-6498-1DD9-72AE-A9EF928584BD}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:46:19');
INSERT INTO `il_user_log` VALUES ('{291132A7-05B2-6FB7-DB36-37406F2C5D62}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:32');
INSERT INTO `il_user_log` VALUES ('{2920EA60-C58B-9E97-3F4F-A8EDB9135F28}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:01:52');
INSERT INTO `il_user_log` VALUES ('{293E9BD3-247B-C6D2-3E03-13029FFE17FC}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:33:20');
INSERT INTO `il_user_log` VALUES ('{299E3F95-ED9E-F828-4D69-6A28114E663B}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:39:01');
INSERT INTO `il_user_log` VALUES ('{29CFE61F-05DA-3688-D0AA-115D45C118B3}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:04');
INSERT INTO `il_user_log` VALUES ('{29D2059C-9081-17DE-98C9-962E44B3CA13}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:01');
INSERT INTO `il_user_log` VALUES ('{29D903BC-DE1B-4CAA-22DF-0FD14ADA60B5}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:35:12');
INSERT INTO `il_user_log` VALUES ('{29FC4202-059A-02F1-920C-BE2129714E72}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:07');
INSERT INTO `il_user_log` VALUES ('{2A7ADAAF-78A7-ACAC-9C46-45174E53DCAA}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:38:56');
INSERT INTO `il_user_log` VALUES ('{2AA03123-6496-4B74-9849-237E34F8CC34}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:00:47');
INSERT INTO `il_user_log` VALUES ('{2AA18153-69F7-0E34-3607-84648DECF94F}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:38:40');
INSERT INTO `il_user_log` VALUES ('{2AB9EA5C-F2C5-2BF7-B620-45CF3F59EEFB}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:45');
INSERT INTO `il_user_log` VALUES ('{2AC2D6B5-A226-2B75-C2D9-8EED7323E564}', '业务管理', '人员管理', '人员详情', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:12:44');
INSERT INTO `il_user_log` VALUES ('{2AD46337-B516-CC52-7A6B-B0008A4C3BAF}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 18:32:21');
INSERT INTO `il_user_log` VALUES ('{2AE21BB4-48F9-4106-63D6-BC6B1BC79065}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:10:55');
INSERT INTO `il_user_log` VALUES ('{2B0C4E6D-FD49-2CD9-CCB9-E833DC7030A0}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 19:43:52');
INSERT INTO `il_user_log` VALUES ('{2B3CB4F2-CC78-573C-ECFF-CA3EFD234EC4}', '业务管理', '楼层管理', '添加楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:42:34');
INSERT INTO `il_user_log` VALUES ('{2B703379-36A0-F859-E3DC-A0C826764304}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 12:16:54');
INSERT INTO `il_user_log` VALUES ('{2B90EF97-C424-0539-7558-1A90BF967595}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 18:21:19');
INSERT INTO `il_user_log` VALUES ('{2BFDE997-A8F8-4723-75E3-0BE621501261}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:51');
INSERT INTO `il_user_log` VALUES ('{2C037060-38B6-F609-6B69-F662A499F7E5}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:27:11');
INSERT INTO `il_user_log` VALUES ('{2C2C6BE3-49FE-832C-5C1F-5C68FAFBA2FA}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:18');
INSERT INTO `il_user_log` VALUES ('{2C71F2C9-856B-F0EA-3318-E3D76639C43E}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:25');
INSERT INTO `il_user_log` VALUES ('{2C995EA3-B27A-4119-C870-464612D916A7}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:52:17');
INSERT INTO `il_user_log` VALUES ('{2CA10DCD-A03A-73E3-3A8F-BE709E97B9E5}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:48:57');
INSERT INTO `il_user_log` VALUES ('{2CE471A8-ADAE-4249-FC31-C4FE634CC5BB}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:09:55');
INSERT INTO `il_user_log` VALUES ('{2D13511B-7254-2B52-EC51-C40226759829}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:41:34');
INSERT INTO `il_user_log` VALUES ('{2D1A0232-14F5-E1B7-E9EB-D3670CA01F65}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:38');
INSERT INTO `il_user_log` VALUES ('{2D2AB445-8A38-2503-3823-8E1CA3021D13}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:23');
INSERT INTO `il_user_log` VALUES ('{2D44C5F7-721E-1184-3671-F0058AF891F4}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:41');
INSERT INTO `il_user_log` VALUES ('{2D7B2796-8E0E-494C-B0F1-4728A344E83A}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:39:00');
INSERT INTO `il_user_log` VALUES ('{2DA56BC4-8ED1-72FC-CC1B-C7BFE3FD560C}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:10');
INSERT INTO `il_user_log` VALUES ('{2DB32FDD-56A6-1386-D642-759D872C8DFE}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:43:10');
INSERT INTO `il_user_log` VALUES ('{2E15A190-1C25-2AB5-B2BA-6A5633D65ABA}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:55:52');
INSERT INTO `il_user_log` VALUES ('{2E1BF876-AF32-79A5-90ED-DE4D8907764F}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:57:01');
INSERT INTO `il_user_log` VALUES ('{2E49A078-AB19-F162-E1AE-55563B507AC2}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:25');
INSERT INTO `il_user_log` VALUES ('{2E78660D-87E3-8ACD-B830-91CD2CD7FC96}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:24:13');
INSERT INTO `il_user_log` VALUES ('{2EABEA6A-9E3D-B5D3-07F8-BD96B2967FD2}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 14:45:07');
INSERT INTO `il_user_log` VALUES ('{2EB51D98-D759-46AB-A5B4-301B83CAF8C3}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:40');
INSERT INTO `il_user_log` VALUES ('{2ECBB9EB-DA06-2B91-8010-4F376B2049BC}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:21:08');
INSERT INTO `il_user_log` VALUES ('{2ED1EB1B-7380-0F14-CB71-0BBB96B3E637}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:32:07');
INSERT INTO `il_user_log` VALUES ('{2EF286D7-8199-B0F3-8185-E9566DCF6326}', '业务管理', '人员管理', '人员详情', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:12:39');
INSERT INTO `il_user_log` VALUES ('{2F2E3C87-9266-695C-4FB6-EBACC404EBED}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:03');
INSERT INTO `il_user_log` VALUES ('{2F352809-02AA-A9B9-9A31-61C600FE3F91}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:47:17');
INSERT INTO `il_user_log` VALUES ('{2F360BB5-6A07-D4A7-2721-961422F23929}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:09:24');
INSERT INTO `il_user_log` VALUES ('{2F67AA07-CCA0-86DC-9FD3-FA4C26467793}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:54');
INSERT INTO `il_user_log` VALUES ('{2F6A797E-5C5A-FF48-300A-48E24E61ED47}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:37');
INSERT INTO `il_user_log` VALUES ('{2F6E840D-2092-6665-B95A-A56F16F20147}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:58:21');
INSERT INTO `il_user_log` VALUES ('{2F8BCF32-E6BA-34D0-F49D-1AD104DD5AAD}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:53');
INSERT INTO `il_user_log` VALUES ('{2F8CE71C-C44B-9F12-07D8-BF36628B7609}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 20:09:40');
INSERT INTO `il_user_log` VALUES ('{2F900D44-E135-144E-226F-2CB458AC88FA}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:26');
INSERT INTO `il_user_log` VALUES ('{2F9926D9-A96D-9912-CFAE-C8F7B6558B4B}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:39:06');
INSERT INTO `il_user_log` VALUES ('{2F9E4052-78DE-A4F2-1A84-7849F0A36F61}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:31:07');
INSERT INTO `il_user_log` VALUES ('{2FDD30EE-D0EB-7023-D288-CFF7BD2646D3}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:03');
INSERT INTO `il_user_log` VALUES ('{2FFE06DA-583E-F491-09E9-CD360A0FD170}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:52:20');
INSERT INTO `il_user_log` VALUES ('{30190C02-2494-DB50-501B-D0896179B015}', '业务管理', '单位管理', '子单位列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:34');
INSERT INTO `il_user_log` VALUES ('{305C8BE9-369D-DDBB-CAB0-F5C9A3742659}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:13');
INSERT INTO `il_user_log` VALUES ('{30966D52-F771-82CC-E7ED-358BA3CC53B9}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 10:58:49');
INSERT INTO `il_user_log` VALUES ('{30DCE065-15B7-7559-A436-58D45FFF678C}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:51:27');
INSERT INTO `il_user_log` VALUES ('{30DDB357-64D7-7BB3-1250-37C1FD791D38}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:53:58');
INSERT INTO `il_user_log` VALUES ('{30DFB2AA-8AF7-5D70-67F3-6008E42B1C79}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:39:12');
INSERT INTO `il_user_log` VALUES ('{316CAC00-35B3-3A26-7DA9-839D49C589C9}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:17:43');
INSERT INTO `il_user_log` VALUES ('{31719CDA-F3D3-F9C8-D81F-0E851F011B18}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:54:54');
INSERT INTO `il_user_log` VALUES ('{318C8AD5-9C55-9FFE-5647-986FCF91C459}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 17:00:21');
INSERT INTO `il_user_log` VALUES ('{319F2C53-F4C7-2B17-E188-2A462038A6DF}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:16');
INSERT INTO `il_user_log` VALUES ('{31A76E8D-FD75-1208-15B5-0265BD6D2AB6}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:53:53');
INSERT INTO `il_user_log` VALUES ('{31B75168-1D58-5C9D-7237-1AB0B320DE6E}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:05:24');
INSERT INTO `il_user_log` VALUES ('{31E76B06-15F7-AA9E-DC7F-DAB389FC96D2}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:55:06');
INSERT INTO `il_user_log` VALUES ('{32061649-8DA3-448A-B4B5-D4203FC72397}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:24');
INSERT INTO `il_user_log` VALUES ('{32155E6B-B3BA-255B-0BD7-148D0C2FDDC0}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:23:04');
INSERT INTO `il_user_log` VALUES ('{32224235-D299-6619-6350-C1861819B7A9}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:05:28');
INSERT INTO `il_user_log` VALUES ('{323EB9C6-E730-C5E1-A87E-07DEA7755AF6}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:48:22');
INSERT INTO `il_user_log` VALUES ('{326FED13-6B09-6427-8DCB-E76AD9260737}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:56:29');
INSERT INTO `il_user_log` VALUES ('{32766C9A-E218-94B8-DE94-E2A11A4C493F}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:52:38');
INSERT INTO `il_user_log` VALUES ('{329830EE-ECE0-F3F4-86C2-11F9C76B75E6}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:27:03');
INSERT INTO `il_user_log` VALUES ('{33013474-0BD0-A45E-C66D-E5489CBB54D6}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:53:27');
INSERT INTO `il_user_log` VALUES ('{331063A5-F065-C79A-DFBC-66E67EF4A5C5}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:38:36');
INSERT INTO `il_user_log` VALUES ('{333D38E4-DF40-6D24-8193-7DA49E1E8E16}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:52:36');
INSERT INTO `il_user_log` VALUES ('{3344B8B5-6ADF-68CF-D768-799B2656C362}', '业务管理', '单位管理', '子单位列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:39:46');
INSERT INTO `il_user_log` VALUES ('{33908B99-F4DA-5A4B-9634-0FDDAB8736B4}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:56');
INSERT INTO `il_user_log` VALUES ('{33AE00B4-1F6E-3982-71FC-BC135B54775B}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:03:21');
INSERT INTO `il_user_log` VALUES ('{33EC71BB-8287-81BD-527D-D5A68859CB7D}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:10:10');
INSERT INTO `il_user_log` VALUES ('{33EE96D8-FB3F-19A2-50A4-123B01E3EA76}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:44');
INSERT INTO `il_user_log` VALUES ('{33FAC7B4-5EED-C749-E0AB-AAFFE6E72CDF}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:58');
INSERT INTO `il_user_log` VALUES ('{343B2348-CE0F-9375-74F1-C2C74DB2CE8F}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:06:32');
INSERT INTO `il_user_log` VALUES ('{3442540F-CC55-F2F0-11B0-7C8C3DBE9F86}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:17:08');
INSERT INTO `il_user_log` VALUES ('{34537539-B46E-3562-758D-5823A1829241}', '业务管理', '组管理', '删除组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:43:57');
INSERT INTO `il_user_log` VALUES ('{3455F2E0-139B-061E-1610-3B34D3796865}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:20:46');
INSERT INTO `il_user_log` VALUES ('{34614653-E69E-C745-4775-21CF74ED50BD}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:06:14');
INSERT INTO `il_user_log` VALUES ('{34663CFF-3026-A888-0EA2-87C3706C4E87}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:18:15');
INSERT INTO `il_user_log` VALUES ('{347F6651-7BF8-3BE9-F106-F7667D2CABAB}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:08:22');
INSERT INTO `il_user_log` VALUES ('{34C784C8-94FC-84C0-F7D7-1220D0A7ACB8}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:06:35');
INSERT INTO `il_user_log` VALUES ('{34E19320-FD18-21DA-FEC7-CA579D9152F4}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:10:45');
INSERT INTO `il_user_log` VALUES ('{34F20B6D-C927-89B0-6A6E-F87D2DEDCDC0}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:33');
INSERT INTO `il_user_log` VALUES ('{3507E8E2-DAA1-69E7-495E-14B6E3102155}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:18');
INSERT INTO `il_user_log` VALUES ('{350BBB85-C434-0EC7-CC8E-3509796CABED}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:06:14');
INSERT INTO `il_user_log` VALUES ('{3584CDC1-B85C-2B7B-8BE9-E977C926F0DD}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:42:14');
INSERT INTO `il_user_log` VALUES ('{35E451FC-355A-2BE1-A524-F18C162F071D}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 09:54:43');
INSERT INTO `il_user_log` VALUES ('{35E4FC2B-00BF-1EA6-76FF-FD222A63D74A}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:49');
INSERT INTO `il_user_log` VALUES ('{35E73AE3-E002-C6EB-C8A5-3F07F5948F2D}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:47:34');
INSERT INTO `il_user_log` VALUES ('{36182DFB-31F5-39AF-59C9-9717C33DD44D}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:51');
INSERT INTO `il_user_log` VALUES ('{3627724E-C18B-E639-84FD-757DB49F6EF0}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:30');
INSERT INTO `il_user_log` VALUES ('{367461BE-B10C-FB01-D6A8-872A0F21E469}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:08:04');
INSERT INTO `il_user_log` VALUES ('{3685A7AA-2597-1915-FB2C-CB6D295AEA32}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:38:02');
INSERT INTO `il_user_log` VALUES ('{369F9851-93D5-5545-118F-DF5939D1C515}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:18:58');
INSERT INTO `il_user_log` VALUES ('{36A7489D-91AC-B3D1-8DF9-1D6B5D83678F}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:08:46');
INSERT INTO `il_user_log` VALUES ('{36A7EAC9-F03D-F2FB-E5C2-91DC01E7CA3F}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:23:06');
INSERT INTO `il_user_log` VALUES ('{36D1E01C-4757-4A06-B2E0-DB6BCB0C84E9}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:34:09');
INSERT INTO `il_user_log` VALUES ('{37296F41-CB07-0D0F-8299-BB1B02E92757}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:44');
INSERT INTO `il_user_log` VALUES ('{3756FB71-C531-5076-89D3-FAA8CDFB48AE}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 18:53:24');
INSERT INTO `il_user_log` VALUES ('{379FA66A-C8B4-E042-75D2-AE33F82F5BAA}', '系统管理', '用户管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:28:33');
INSERT INTO `il_user_log` VALUES ('{37A1A7F5-756A-4340-4B21-31C8BC01C700}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:55:55');
INSERT INTO `il_user_log` VALUES ('{37CD82E0-A1AC-75B7-0DD6-008662260611}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:20:45');
INSERT INTO `il_user_log` VALUES ('{37DFE745-08B5-36FD-8C37-88AAB7F411FE}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:54:59');
INSERT INTO `il_user_log` VALUES ('{37EFDF3A-B4EC-C25D-A9B4-E5309F96EBEB}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:09:51');
INSERT INTO `il_user_log` VALUES ('{381A0992-30B5-7171-1B14-D6E7FAC9F5D8}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:58');
INSERT INTO `il_user_log` VALUES ('{384827F6-0520-D291-6F43-E30BCC053FB4}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:36');
INSERT INTO `il_user_log` VALUES ('{385AA556-C266-4D41-1EC6-3A99B4BB1012}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:10:25');
INSERT INTO `il_user_log` VALUES ('{3869D29E-6FD1-8E79-2F92-B1C9AF35E1E9}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-16 16:40:50');
INSERT INTO `il_user_log` VALUES ('{38833F3A-76A2-3E54-2296-383E59BAEC63}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:58:13');
INSERT INTO `il_user_log` VALUES ('{38A05F38-3514-F31D-E5A0-BB5ECF10EF1C}', '业务管理', '现场终端管理', '设置', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:36');
INSERT INTO `il_user_log` VALUES ('{38B345B8-EFEA-1145-74D7-D391E1810CC1}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:39:41');
INSERT INTO `il_user_log` VALUES ('{38B3A20D-D579-3AE6-A0F7-2D3D46D7E8F5}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:35:07');
INSERT INTO `il_user_log` VALUES ('{3907F97E-E1F1-287E-6613-9E86EBF7142B}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:17');
INSERT INTO `il_user_log` VALUES ('{3980CE94-DB7D-8522-0A54-6BD6034797BB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:50:42');
INSERT INTO `il_user_log` VALUES ('{3992D794-DA9D-C198-0BBD-8B34DBD81221}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd02', '3', '0.0.0.0', '2017-09-04 18:44:32');
INSERT INTO `il_user_log` VALUES ('{399DDBFD-9811-3304-9DC9-1D24A84227E8}', '系统管理', '用户日志', '查看日志', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-22 18:38:08');
INSERT INTO `il_user_log` VALUES ('{39CB9E2D-FA5D-5095-334F-5D93E76D8818}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:44:44');
INSERT INTO `il_user_log` VALUES ('{39D93D94-CE53-C929-4F60-A72F8DF1BB03}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:30');
INSERT INTO `il_user_log` VALUES ('{3A3A2A3B-A55C-32C8-36BD-897B10223D84}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:32');
INSERT INTO `il_user_log` VALUES ('{3A3A3BB1-37A6-6AB5-BE65-95EAD681282E}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-16 19:36:23');
INSERT INTO `il_user_log` VALUES ('{3A3F7C90-434A-1C8D-87B3-2D564C442A39}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd02', '3', '0.0.0.0', '2017-09-04 18:39:38');
INSERT INTO `il_user_log` VALUES ('{3A406FF4-C0A3-7ECD-54F8-988811A79B1E}', '业务管理', '单位管理', '重置管理员密码', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:21:14');
INSERT INTO `il_user_log` VALUES ('{3A7E610E-9A62-19B1-3D36-AFD3C6B1B3AC}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:29');
INSERT INTO `il_user_log` VALUES ('{3A819E58-B371-65DE-9510-9E9EAA9484FA}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:52:33');
INSERT INTO `il_user_log` VALUES ('{3A9B54E5-BD52-0230-BC5F-D439107E7A7A}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:57:31');
INSERT INTO `il_user_log` VALUES ('{3AA0B2D7-826F-E04F-63D4-1B7F14DD2FC3}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:08:52');
INSERT INTO `il_user_log` VALUES ('{3ABD8818-2701-8C0A-1AAA-C1B27FD2D99E}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:26');
INSERT INTO `il_user_log` VALUES ('{3B2B2CFC-0146-A803-911E-5FB7DC87BA41}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:55');
INSERT INTO `il_user_log` VALUES ('{3B7719DE-36E4-B444-0014-F08CFFD53AD2}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:32');
INSERT INTO `il_user_log` VALUES ('{3BB1121E-1E75-FC69-07B4-1F514B759FDB}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 11:13:24');
INSERT INTO `il_user_log` VALUES ('{3BD143EA-1004-18F0-9AAE-7E083289F522}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:45');
INSERT INTO `il_user_log` VALUES ('{3BD8B5AE-E7BB-958B-263F-E2273E0FB65C}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:42:36');
INSERT INTO `il_user_log` VALUES ('{3BE4C9FA-282D-B686-B855-58F11B6568A6}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:04:20');
INSERT INTO `il_user_log` VALUES ('{3BE98B02-23ED-9AB7-062E-0D69223EE0F0}', '业务管理', '楼层管理', '修改楼层', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:57');
INSERT INTO `il_user_log` VALUES ('{3C07ECBD-7CD3-0AD1-6674-4123AB237E6D}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:31');
INSERT INTO `il_user_log` VALUES ('{3C29EB5C-8443-3F56-1B13-2B8B72C28659}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:10:43');
INSERT INTO `il_user_log` VALUES ('{3C340AA2-E0D1-9278-2EAD-90DE349DCD0F}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:41');
INSERT INTO `il_user_log` VALUES ('{3C5C5A1A-E51E-53E8-1634-D69C418E093D}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:53:48');
INSERT INTO `il_user_log` VALUES ('{3C688B42-D5BD-071B-0B16-F62761CABEC1}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:43:29');
INSERT INTO `il_user_log` VALUES ('{3C7B2AF9-2970-3619-B1AD-7395634332F6}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:28');
INSERT INTO `il_user_log` VALUES ('{3C7E92B2-81ED-0F78-8DF6-815182A05EF9}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:17');
INSERT INTO `il_user_log` VALUES ('{3C87730A-43AA-7D37-1CD4-34AA35FD914B}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:37:30');
INSERT INTO `il_user_log` VALUES ('{3C9FD46F-39C6-5316-D2B4-43CED9B425CD}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:40:14');
INSERT INTO `il_user_log` VALUES ('{3CA082E0-A038-04D8-AC05-E82E328654A0}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:08:28');
INSERT INTO `il_user_log` VALUES ('{3CC6B64E-7338-A185-56CA-6E20BCFB33D7}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:21:12');
INSERT INTO `il_user_log` VALUES ('{3CDDC18E-E1D3-962A-DB66-4DCF835E9BE5}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:40');
INSERT INTO `il_user_log` VALUES ('{3CE09FD4-3311-8043-56A5-9453494E0FB3}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:42:47');
INSERT INTO `il_user_log` VALUES ('{3CF0DC0D-AEAC-9E04-F11F-3C91B6F1FCF5}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:11:58');
INSERT INTO `il_user_log` VALUES ('{3CF39985-B6E4-9F9E-BDEC-2E3E6398B711}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 11:47:00');
INSERT INTO `il_user_log` VALUES ('{3CFD7E19-21A3-6553-08E9-3708457ECF55}', '业务管理', '组管理', '删除组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:09:34');
INSERT INTO `il_user_log` VALUES ('{3D3D5993-E0FD-DD09-2CF8-E82741A00399}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:07:26');
INSERT INTO `il_user_log` VALUES ('{3D457816-5975-3309-012D-CF6D1DEBCFB6}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:04');
INSERT INTO `il_user_log` VALUES ('{3D6ACF73-C8EE-B39B-0FFA-20184B969BAA}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:49');
INSERT INTO `il_user_log` VALUES ('{3D773DFF-C9E0-4EBB-5E67-EF437D44282E}', '业务管理', '单位管理', '重置管理员密码', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 13:59:09');
INSERT INTO `il_user_log` VALUES ('{3DA07F50-4C64-37AF-F35F-AEB2E27B445E}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:54:50');
INSERT INTO `il_user_log` VALUES ('{3DBB63C5-4BAF-91C3-95ED-6EAD502A1AEC}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-11 11:03:04');
INSERT INTO `il_user_log` VALUES ('{3DCA7122-ACAA-B50F-0751-67D2138E2BC2}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:39:49');
INSERT INTO `il_user_log` VALUES ('{3DFA363D-7E35-B2C2-DF15-CF3F3216C727}', '业务管理', '单位管理', '子单位列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:01:54');
INSERT INTO `il_user_log` VALUES ('{3E1FFDCD-BAC3-FF97-5B50-67869063866F}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:07:50');
INSERT INTO `il_user_log` VALUES ('{3E772F1F-0D35-4454-0105-328A510CBE7B}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:40:20');
INSERT INTO `il_user_log` VALUES ('{3EA68B5F-2D53-9F02-F7E5-09DE45565845}', '业务管理', '组管理', '添加组', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:34');
INSERT INTO `il_user_log` VALUES ('{3EAE0278-3316-56CC-AB98-3E6C3D5178F7}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:24:46');
INSERT INTO `il_user_log` VALUES ('{3EE7F9FB-AB73-5D92-50A3-F6921BE5D3E0}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:17');
INSERT INTO `il_user_log` VALUES ('{3F00AEBA-F67C-B670-0301-63E62A933D60}', '业务管理', '事件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:28:19');
INSERT INTO `il_user_log` VALUES ('{3F1DF656-01CB-19C3-9735-4FDE0B3E2939}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:01:04');
INSERT INTO `il_user_log` VALUES ('{3F7DF4AA-764D-A52F-14DE-E1DB1E858327}', '业务管理', '楼层管理', '添加楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:42:05');
INSERT INTO `il_user_log` VALUES ('{3F93B867-3234-D59A-E259-A909F6829FE7}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:18:48');
INSERT INTO `il_user_log` VALUES ('{3F9CC102-0200-A3EC-7FF3-C6C9A2D0B0ED}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:08:09');
INSERT INTO `il_user_log` VALUES ('{3FA9D1BA-BB53-168D-7AD0-0417C47EB9A7}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-19 12:35:56');
INSERT INTO `il_user_log` VALUES ('{3FC2C650-1F33-734D-356A-E79473DDCE07}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:20:42');
INSERT INTO `il_user_log` VALUES ('{3FD40DA9-2361-67A2-1CC6-F2E649023DBF}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:30');
INSERT INTO `il_user_log` VALUES ('{3FDE0B6A-0098-5835-7E38-9E19D5BF2F5B}', '业务管理', '楼层管理', '楼层列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:37');
INSERT INTO `il_user_log` VALUES ('{3FFA089C-58AD-18B3-9961-8218627BE73B}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:31');
INSERT INTO `il_user_log` VALUES ('{4020B585-A8C3-9E48-BCE6-AC0872A64532}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:07:08');
INSERT INTO `il_user_log` VALUES ('{40212BE7-8B6F-FA6F-5488-6EE2EF3BAF20}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:15');
INSERT INTO `il_user_log` VALUES ('{404C7D9A-1DDD-01B2-3E6D-C43089500D9C}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 17:26:08');
INSERT INTO `il_user_log` VALUES ('{40A3B60B-64D1-F7C8-877D-07FEFD7E65BE}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:40:08');
INSERT INTO `il_user_log` VALUES ('{40ED4A3F-7D9B-5085-77F5-B273E9883152}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:44');
INSERT INTO `il_user_log` VALUES ('{40FBC603-2ED1-2FE5-D4A8-BA85439F8243}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:50:29');
INSERT INTO `il_user_log` VALUES ('{4108A768-0017-55E7-D298-8E648EDB6268}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:40');
INSERT INTO `il_user_log` VALUES ('{410F08D5-875C-A8F6-4760-B319E7C739EA}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-11 11:02:53');
INSERT INTO `il_user_log` VALUES ('{4158D363-65FD-48A2-E881-4C5943974561}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:12:15');
INSERT INTO `il_user_log` VALUES ('{4176F42D-B448-E3EC-4E38-FD2CB537B6F8}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:31');
INSERT INTO `il_user_log` VALUES ('{418E9508-F940-B4D5-F310-ACF0DD32A515}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:55:46');
INSERT INTO `il_user_log` VALUES ('{41DD3D85-2ABF-330A-9083-BBD30FB2D8C6}', '业务管理', '组管理', '添加组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:16:09');
INSERT INTO `il_user_log` VALUES ('{41E6F214-159B-9CE2-2182-9A3028DC709B}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:33');
INSERT INTO `il_user_log` VALUES ('{41F3502C-2269-B069-F3F0-BD573E793E52}', '业务管理', '单位管理', '本单位信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:23:54');
INSERT INTO `il_user_log` VALUES ('{42BC5E7A-96AA-B421-377C-39EF78EE47CC}', '系统管理', '用户日志', '日志列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:26:37');
INSERT INTO `il_user_log` VALUES ('{42D4DEE3-387D-9E15-1181-479FDB348B0B}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:53:08');
INSERT INTO `il_user_log` VALUES ('{43519ADC-1FEB-D440-3B72-10A00E09F998}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:14:42');
INSERT INTO `il_user_log` VALUES ('{43A005A6-E258-A606-8AB9-6706E48521CE}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:28');
INSERT INTO `il_user_log` VALUES ('{43A2C14E-9480-4F6E-03FD-2924A8CF87F4}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:20');
INSERT INTO `il_user_log` VALUES ('{43A9CA1B-981F-2593-1BE8-8ACF81A7BB17}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:44:54');
INSERT INTO `il_user_log` VALUES ('{43B90B65-CC2A-8150-4825-A453A7B5905D}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:29');
INSERT INTO `il_user_log` VALUES ('{43FDEA54-F403-C72B-B07C-632CDFE759F4}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:26:33');
INSERT INTO `il_user_log` VALUES ('{4408EC70-637B-5CBE-1796-E1AA13167E28}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 12:16:42');
INSERT INTO `il_user_log` VALUES ('{44260164-EEE2-488D-7A61-C891E7070779}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:48:22');
INSERT INTO `il_user_log` VALUES ('{442BA034-B571-1989-1F64-0546FA2BEF40}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:30');
INSERT INTO `il_user_log` VALUES ('{446F27E6-2690-E3A9-BFDC-659EF227C9B8}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:18:12');
INSERT INTO `il_user_log` VALUES ('{448506AE-D4CD-6B38-5E28-CCDAEA5C5C9A}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:39:17');
INSERT INTO `il_user_log` VALUES ('{44A27700-17A7-DD47-581C-9D2F39712BED}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:06');
INSERT INTO `il_user_log` VALUES ('{44AAC2FC-EF05-4164-3853-5DE31CA1DF40}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:09:55');
INSERT INTO `il_user_log` VALUES ('{44BF1C08-1380-BE10-0665-43BCE552FFD2}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 11:47:23');
INSERT INTO `il_user_log` VALUES ('{452F5038-F37F-4BB4-7140-FDFBD9711B97}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:48:11');
INSERT INTO `il_user_log` VALUES ('{45967C3A-4816-174F-2383-A17EAA81D19C}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:52:57');
INSERT INTO `il_user_log` VALUES ('{45BC8E4B-435C-8D71-114B-4A3583F79D9E}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:41');
INSERT INTO `il_user_log` VALUES ('{45C7340A-747F-C9AE-9EF8-2B3C465CB65A}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:15:41');
INSERT INTO `il_user_log` VALUES ('{45E48CD2-B942-71D0-C7FA-721726DE5BBA}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:17:10');
INSERT INTO `il_user_log` VALUES ('{45EB101C-02C5-2AD7-7A5B-F15C23194830}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:51:41');
INSERT INTO `il_user_log` VALUES ('{45F69E2C-0F1C-0395-1DA0-B9C0789EBE42}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:37:10');
INSERT INTO `il_user_log` VALUES ('{463490EB-6261-738E-6C6B-0A5AB5E85D9B}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:48:24');
INSERT INTO `il_user_log` VALUES ('{463EC2D1-EC62-5A79-799E-6A0321D3DC58}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:23');
INSERT INTO `il_user_log` VALUES ('{467428BC-8934-C71F-4833-280CC582D161}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:38');
INSERT INTO `il_user_log` VALUES ('{467C8906-E5E1-6631-7F41-5BECDC3FC4AD}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 11:48:38');
INSERT INTO `il_user_log` VALUES ('{46AA0DE4-F7A8-ABB7-8C08-E3F8275EA3D0}', '业务管理', '人员管理', '人员详情', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:10:26');
INSERT INTO `il_user_log` VALUES ('{46ADE100-2F3B-2586-E5AD-C256ADC2E005}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:40:55');
INSERT INTO `il_user_log` VALUES ('{46C0992B-6414-9F22-199C-35788AB4D6BC}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:50:32');
INSERT INTO `il_user_log` VALUES ('{46D504E1-48F1-C0CE-54B5-20907483243A}', '业务管理', '现场终端管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:52');
INSERT INTO `il_user_log` VALUES ('{4743D639-1D8C-3E20-8961-AD7E448D8269}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:40:26');
INSERT INTO `il_user_log` VALUES ('{476A8A84-F44B-0D80-BD0F-CFA5ADA65F36}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 12:25:48');
INSERT INTO `il_user_log` VALUES ('{47CE9E38-20B6-33F5-6674-77EEE0423545}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 17:59:47');
INSERT INTO `il_user_log` VALUES ('{47D7DF34-9EEA-0360-4E65-43A7FB5C1FFB}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:49');
INSERT INTO `il_user_log` VALUES ('{47FEE2F6-99C2-C7ED-9CC5-EF3B6B9AE245}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:39:13');
INSERT INTO `il_user_log` VALUES ('{4816A22C-C919-8E9E-DD0F-758DAB3F9C03}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 11:47:12');
INSERT INTO `il_user_log` VALUES ('{4842D576-C103-0B49-CE1A-90F6836EBFD6}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:43:42');
INSERT INTO `il_user_log` VALUES ('{484B29BC-F735-A536-2996-07C0836D3FA3}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:50:34');
INSERT INTO `il_user_log` VALUES ('{48625E36-4BAD-575C-F505-C2063FF295A1}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 18:32:17');
INSERT INTO `il_user_log` VALUES ('{48668B4F-0FEA-BBD1-066B-5A57A7C39653}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:14:08');
INSERT INTO `il_user_log` VALUES ('{4890660B-5ECA-3809-DA31-2F9557FF6D92}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:38');
INSERT INTO `il_user_log` VALUES ('{48AC09F7-3F5F-84CC-72E9-84D258A5F545}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:55:51');
INSERT INTO `il_user_log` VALUES ('{48BA3948-41D5-346F-520E-6F2A5CC854D6}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:41');
INSERT INTO `il_user_log` VALUES ('{48DF49A3-9A49-AF36-7F8C-FE7DC3C0306C}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:36:28');
INSERT INTO `il_user_log` VALUES ('{491D1842-4ABE-0C5D-A7A1-651E278FD2B5}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:58:19');
INSERT INTO `il_user_log` VALUES ('{4978DCDB-3C82-C998-5BC1-7918441747E6}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:52');
INSERT INTO `il_user_log` VALUES ('{49869FA3-0831-463D-FBB6-94FB16C476BF}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:34:34');
INSERT INTO `il_user_log` VALUES ('{4997CC70-CB20-EE2E-B3AB-69A439224782}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:31');
INSERT INTO `il_user_log` VALUES ('{4998B11E-AE38-C061-34A4-E427762022B4}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:45');
INSERT INTO `il_user_log` VALUES ('{49A93EAF-5934-64B4-52F2-881EC0170070}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:19');
INSERT INTO `il_user_log` VALUES ('{49B7B6BA-C23D-523F-70CE-86C18F86462C}', '业务管理', '现场终端管理', '修改', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:01:02');
INSERT INTO `il_user_log` VALUES ('{49FBF0CB-D486-48FB-317C-33620DF2A26E}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:13:34');
INSERT INTO `il_user_log` VALUES ('{4A7A7A0C-40B4-8A6B-D061-B9558CB7BA8B}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:52:37');
INSERT INTO `il_user_log` VALUES ('{4A96A748-A3DA-8A9E-1361-FCF48461627E}', '系统管理', '角色管理', '权限明细查看', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:53:44');
INSERT INTO `il_user_log` VALUES ('{4A978C23-97CC-3FE4-0E40-F6E770A68EE0}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:30');
INSERT INTO `il_user_log` VALUES ('{4AB93992-5EDA-2C1A-A295-629B9669ED2C}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:06:22');
INSERT INTO `il_user_log` VALUES ('{4ABBACFB-1646-D408-D69D-DEA494E502C7}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:13');
INSERT INTO `il_user_log` VALUES ('{4AD50565-BAA8-3D4A-C904-DBFD7DDF54F6}', '业务管理', '单位管理', '本单位信息', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:32');
INSERT INTO `il_user_log` VALUES ('{4AF61C26-C0F7-4F03-830F-B97FA97DB944}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:28');
INSERT INTO `il_user_log` VALUES ('{4B1708C7-EDD2-9B81-C6EE-9F540C49776D}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:06:34');
INSERT INTO `il_user_log` VALUES ('{4B3E765D-266D-694E-8001-0759C9CD9994}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:39:04');
INSERT INTO `il_user_log` VALUES ('{4B5B8A94-8750-760D-FA2F-8102FAD556FE}', '业务管理', '组管理', '添加组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:09:02');
INSERT INTO `il_user_log` VALUES ('{4B8191B6-F03E-E0AF-9B91-C400BB8107A0}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:45:50');
INSERT INTO `il_user_log` VALUES ('{4BC1BE43-6704-2D69-C571-C9529F1CEA66}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:10');
INSERT INTO `il_user_log` VALUES ('{4BDC982F-1BD2-2175-3FDC-FD076CF71548}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:09:23');
INSERT INTO `il_user_log` VALUES ('{4BF7727E-4EB9-C497-9624-CC4E674AF45B}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:36:39');
INSERT INTO `il_user_log` VALUES ('{4BFB4B98-277E-A365-4C65-009071AF2207}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:41');
INSERT INTO `il_user_log` VALUES ('{4BFB89A4-B7EE-4D13-77C2-702B2B13D6A0}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:42:10');
INSERT INTO `il_user_log` VALUES ('{4C04ED3B-AF8A-824D-578E-CDACCBCA6043}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:04:07');
INSERT INTO `il_user_log` VALUES ('{4C24B7AE-4253-E603-8B12-B8FC0E30B180}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:53');
INSERT INTO `il_user_log` VALUES ('{4C3FA459-29F1-51C0-E5AA-D95F2220E3CA}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:37:06');
INSERT INTO `il_user_log` VALUES ('{4C5816C8-880F-2352-71C0-096C446178DE}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:42:49');
INSERT INTO `il_user_log` VALUES ('{4CA32988-12C6-D3EB-CA3C-C156EA04DAD0}', '业务管理', '事件管理', '修改', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:42:21');
INSERT INTO `il_user_log` VALUES ('{4CCFEC5C-F599-FA66-FB4A-7969F6983581}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:15');
INSERT INTO `il_user_log` VALUES ('{4CFD9B64-91A0-DEDA-BD7E-A4C764998846}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:39');
INSERT INTO `il_user_log` VALUES ('{4D008389-87E6-ACCB-FF55-04DDC3CB37C7}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:12:29');
INSERT INTO `il_user_log` VALUES ('{4D40C8A3-293C-9951-B97F-B8AC12C3C9A1}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:44:00');
INSERT INTO `il_user_log` VALUES ('{4D539C82-9702-96DA-95C2-64963FC2BD10}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:19:21');
INSERT INTO `il_user_log` VALUES ('{4D597CEA-42D8-B1EE-5496-1F998FA6726D}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:08:09');
INSERT INTO `il_user_log` VALUES ('{4D9A3A4F-EDF0-35F6-DE8C-E29E44F5338C}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:09:47');
INSERT INTO `il_user_log` VALUES ('{4DD27DDB-A544-B29E-1594-CBEE5F1FEA5D}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:52:27');
INSERT INTO `il_user_log` VALUES ('{4DD32C84-AF9B-4E24-1C7B-FD53DA79A860}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:06:54');
INSERT INTO `il_user_log` VALUES ('{4DDBA2E5-AF37-3387-4E8B-3345FA5775B8}', '业务管理', '建筑管理', '修改建筑', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:39');
INSERT INTO `il_user_log` VALUES ('{4DE31B8D-2DBD-D376-4934-6344D1D1395D}', '业务管理', '组成员管理', '成员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:48:22');
INSERT INTO `il_user_log` VALUES ('{4DEFB0B4-1098-AA70-2110-96CEBC1686E9}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:52:31');
INSERT INTO `il_user_log` VALUES ('{4E18B87D-86C4-8DC1-E8F4-45DFE9DD1545}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:43');
INSERT INTO `il_user_log` VALUES ('{4E4720B6-8138-7C59-9606-A18A9C05F1B1}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:11');
INSERT INTO `il_user_log` VALUES ('{4E8B9A41-EC35-C6EE-37F0-2876E8CCB3C8}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:04:25');
INSERT INTO `il_user_log` VALUES ('{4EA4D558-238D-B661-DB6B-1D25A9C193DA}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:52:47');
INSERT INTO `il_user_log` VALUES ('{4EE605CB-6F5F-2214-0627-512CCE7528D5}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:38');
INSERT INTO `il_user_log` VALUES ('{4EF51BC5-2008-5EDD-E53E-D2B1B4CE4462}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:25');
INSERT INTO `il_user_log` VALUES ('{4F2842C4-E283-2AF0-2FEB-552B3DA11B0B}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:24:41');
INSERT INTO `il_user_log` VALUES ('{4F591AD5-0B23-1146-C21B-4AB8F069082C}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:13');
INSERT INTO `il_user_log` VALUES ('{4F898028-1D23-1D49-8C13-F89C9D2303ED}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:35');
INSERT INTO `il_user_log` VALUES ('{4FC785FF-CC62-23D0-5B03-E8C99E9B5101}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:20:37');
INSERT INTO `il_user_log` VALUES ('{4FDFBC5C-BADC-6B11-8B09-BC9373095A53}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:06:16');
INSERT INTO `il_user_log` VALUES ('{4FEAD4A0-C53B-25DF-E31E-9F58B718AECD}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:42');
INSERT INTO `il_user_log` VALUES ('{4FFFBB76-931D-A51A-4A5E-0E137D5A6382}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:53:50');
INSERT INTO `il_user_log` VALUES ('{504112B0-F33C-437F-179D-F41A6B41BD03}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:38:30');
INSERT INTO `il_user_log` VALUES ('{50A72D74-7470-86F0-7B1D-8045D5D6D0DB}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:03:29');
INSERT INTO `il_user_log` VALUES ('{50D09B30-E851-F318-058C-18B9A9657F2D}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:35');
INSERT INTO `il_user_log` VALUES ('{50F8C149-A448-2F89-F3DE-0B5B0244BFFA}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:05:15');
INSERT INTO `il_user_log` VALUES ('{511D05BA-D94F-BCE1-852F-1AA9A47A32EF}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 11:13:20');
INSERT INTO `il_user_log` VALUES ('{5121B08C-D074-5076-4C1D-B84A3C178261}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 12:00:13');
INSERT INTO `il_user_log` VALUES ('{5146FCD4-0FED-9B8B-0511-CED68F50ABC3}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:41');
INSERT INTO `il_user_log` VALUES ('{516B1231-2035-E6B1-AF5A-69A26B541E3F}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:41');
INSERT INTO `il_user_log` VALUES ('{51C8F600-84EC-2255-EEA0-C1BC6C1B3CED}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 19:28:56');
INSERT INTO `il_user_log` VALUES ('{51D45692-F5E3-3066-6F03-41AED46A4190}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:46:16');
INSERT INTO `il_user_log` VALUES ('{51F73C04-40FE-7B0F-2746-A1643C10684C}', '业务管理', '建筑管理', '建筑列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:36');
INSERT INTO `il_user_log` VALUES ('{5202CA63-2BE2-8800-4C87-26A2D6720ED3}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-16 16:40:25');
INSERT INTO `il_user_log` VALUES ('{52607474-063D-36D8-7452-AFDA07A129D9}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:40');
INSERT INTO `il_user_log` VALUES ('{5275CFB9-FBD3-BC29-007F-2D707DEA1675}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:38:09');
INSERT INTO `il_user_log` VALUES ('{527A9C91-6F41-E43E-7BBE-B877B94623C2}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:26:57');
INSERT INTO `il_user_log` VALUES ('{52867634-0A62-FA67-733F-CD192D87EC58}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:58');
INSERT INTO `il_user_log` VALUES ('{52AA19A4-3866-A8B9-F212-C2F3320FAE34}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:24:47');
INSERT INTO `il_user_log` VALUES ('{52B1E358-2E1B-36FB-3620-4E496667261D}', '业务管理', '组成员管理', '成员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:49:15');
INSERT INTO `il_user_log` VALUES ('{52E178CB-6D7C-BE0B-147F-6B336F3C55D2}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:25');
INSERT INTO `il_user_log` VALUES ('{52E40D91-A28C-5C0F-A267-7798F41A2532}', '业务管理', '现场终端管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:26');
INSERT INTO `il_user_log` VALUES ('{53135691-FC46-7FF0-EAB7-CCBEA9450130}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:48:55');
INSERT INTO `il_user_log` VALUES ('{5330A134-E0AB-6CA5-2760-3787E31B605B}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 18:39:25');
INSERT INTO `il_user_log` VALUES ('{533BC042-32A9-2311-BF78-260CF25F98BE}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:08:58');
INSERT INTO `il_user_log` VALUES ('{534DEE86-9598-6F94-5525-B484A3D8D383}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:55:39');
INSERT INTO `il_user_log` VALUES ('{53860DF6-6346-BEE7-9024-579A8A69D5A0}', '业务管理', '单位管理', '子单位列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:23:56');
INSERT INTO `il_user_log` VALUES ('{538BC10A-D3C2-9AED-EE23-2036A54EDE57}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:03:03');
INSERT INTO `il_user_log` VALUES ('{539C8472-F115-F04A-3F5B-1FB48CD55DCA}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:43:52');
INSERT INTO `il_user_log` VALUES ('{53A2A993-770A-3727-2A1A-39754BC2925F}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:05:09');
INSERT INTO `il_user_log` VALUES ('{53AFFD4E-A983-624E-4814-44191E4C326B}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 20:21:36');
INSERT INTO `il_user_log` VALUES ('{53BCCE3B-AA1D-6F56-61AC-BDC8CCA6B7FC}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:47:35');
INSERT INTO `il_user_log` VALUES ('{53C954B7-DD8C-7EB9-11D8-01EEA190D095}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:55:47');
INSERT INTO `il_user_log` VALUES ('{53D2063D-A103-04E1-DA8A-477FA4628D8D}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:04:24');
INSERT INTO `il_user_log` VALUES ('{53D44C0A-3EF4-EC65-1FF7-91AE5FB5292B}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:25:09');
INSERT INTO `il_user_log` VALUES ('{53DAA38A-F211-0209-5985-A5654A3391AF}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 19:28:00');
INSERT INTO `il_user_log` VALUES ('{53E945E9-1F5C-D51A-BE7E-F082A083B566}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 18:21:20');
INSERT INTO `il_user_log` VALUES ('{53FA115D-462C-8C63-DCB0-040E368CA619}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:13');
INSERT INTO `il_user_log` VALUES ('{5407F027-0B9F-5F51-5134-0A05DF3192FC}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:55');
INSERT INTO `il_user_log` VALUES ('{545A1E16-9D5C-D52F-F33A-329A4212361F}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:37:14');
INSERT INTO `il_user_log` VALUES ('{54EA5D3B-E8A8-E4D8-52FE-48E1E0F264AB}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:25:07');
INSERT INTO `il_user_log` VALUES ('{552359E0-438F-8FA0-4448-A8FBE9D7CB76}', '业务管理', '建筑管理', '删除建筑', '失败', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:52:11');
INSERT INTO `il_user_log` VALUES ('{55275087-044D-1AEA-F8C9-EB5193CFFA8F}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:02');
INSERT INTO `il_user_log` VALUES ('{555452EC-7477-2E97-2A6E-224FB24A73EC}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:08:40');
INSERT INTO `il_user_log` VALUES ('{556786DB-F6C8-334E-DE2F-068BABFF8AB7}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:28');
INSERT INTO `il_user_log` VALUES ('{559B9517-DE55-D589-4307-41ECD1C8ADB7}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:24');
INSERT INTO `il_user_log` VALUES ('{55BF2460-E933-074F-0344-CC695445CF68}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:11:29');
INSERT INTO `il_user_log` VALUES ('{55F491DE-F4FD-5D69-AAF1-63833C55503F}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:19');
INSERT INTO `il_user_log` VALUES ('{5625EC25-2D64-9E91-E68B-F32BAC71255B}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:11:18');
INSERT INTO `il_user_log` VALUES ('{5677445A-D4DB-F316-3803-41618CEAF814}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:18');
INSERT INTO `il_user_log` VALUES ('{56B75E70-0C62-9F2E-2BFC-7A84030A689F}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:45:20');
INSERT INTO `il_user_log` VALUES ('{56C2134B-FE49-6560-0196-FD25EF534F05}', '业务管理', '组成员管理', '成员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:39:51');
INSERT INTO `il_user_log` VALUES ('{56E147AD-2C25-4A88-CF5C-6FF78F49B60C}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:53:47');
INSERT INTO `il_user_log` VALUES ('{56FF40BC-D237-2A33-E439-247B1FEF42BB}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:17');
INSERT INTO `il_user_log` VALUES ('{5710ECA6-2FB4-90FC-6FC0-109597837896}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 18:32:06');
INSERT INTO `il_user_log` VALUES ('{57131159-62B0-A6F0-36DF-5111710B018F}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:53:36');
INSERT INTO `il_user_log` VALUES ('{572FC329-158E-3E40-DF4E-F63F6FE53CAD}', '业务管理', '单位管理', '修改子单位', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:02');
INSERT INTO `il_user_log` VALUES ('{5783D21C-A22F-99F2-65DD-ACDD979D7D25}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 18:53:00');
INSERT INTO `il_user_log` VALUES ('{57B6D494-68C6-B5DA-8386-33B8EC152C96}', '业务管理', '定位套件管理', '删除', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:47');
INSERT INTO `il_user_log` VALUES ('{57C14851-DD02-8372-3C8B-ED454C2B7313}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:00:46');
INSERT INTO `il_user_log` VALUES ('{57DC0AFE-D848-C224-3884-1C94642014D9}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:25');
INSERT INTO `il_user_log` VALUES ('{57E04834-0E4D-10D3-AD5D-A86900F18E2E}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:06:47');
INSERT INTO `il_user_log` VALUES ('{57F108D9-19D4-9680-1A9A-F5BDF6878F6E}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:04');
INSERT INTO `il_user_log` VALUES ('{57F9AD64-2181-45F2-49BD-DA647A580E1D}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:36');
INSERT INTO `il_user_log` VALUES ('{5815EC50-C5A7-BFB6-B53E-2154E256B45C}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:30');
INSERT INTO `il_user_log` VALUES ('{5862221A-E3D6-1951-ACF9-2169CFAB2B16}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:09:44');
INSERT INTO `il_user_log` VALUES ('{58E2FC2B-25A1-4C0A-7176-4FC1A6F1B32D}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:09:36');
INSERT INTO `il_user_log` VALUES ('{593A0597-7D49-E08F-75F0-0BFFEEEB1146}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:23:14');
INSERT INTO `il_user_log` VALUES ('{5979C047-82D6-FA15-37C5-353BAECC3E32}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:53');
INSERT INTO `il_user_log` VALUES ('{59DF55F3-43A2-E8D3-36DE-4343C7679899}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:57:28');
INSERT INTO `il_user_log` VALUES ('{5A016525-790C-0F48-F81C-716817EB3E6D}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:06:07');
INSERT INTO `il_user_log` VALUES ('{5A0DB2F4-B097-C4CE-DCD9-662DD6C8948D}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:13');
INSERT INTO `il_user_log` VALUES ('{5A75E737-332A-BADF-3416-E45F2904D317}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:39:57');
INSERT INTO `il_user_log` VALUES ('{5A76624D-2D73-80FF-5F4B-43EF6A1C6B27}', '业务管理', '单位管理', '重置管理员密码', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:21:09');
INSERT INTO `il_user_log` VALUES ('{5A85BE5F-99F0-32F9-3D74-09F9F5238434}', '业务管理', '定位套件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:53');
INSERT INTO `il_user_log` VALUES ('{5AA92CEA-C8B7-9DFA-4ED1-882F589CB187}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:04:19');
INSERT INTO `il_user_log` VALUES ('{5AC9579F-8E1C-A8D3-67EB-67F76A725114}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:03:59');
INSERT INTO `il_user_log` VALUES ('{5AF0058E-FC7F-E539-CCA0-636787751B40}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:46:23');
INSERT INTO `il_user_log` VALUES ('{5B0CA713-AF37-CFE8-2FA0-50D6470094D1}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:46:18');
INSERT INTO `il_user_log` VALUES ('{5B10B113-960E-D438-98B1-E2AB5666BF10}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:22');
INSERT INTO `il_user_log` VALUES ('{5B5EB79E-0C94-3CD5-1A88-22A47D61C7AF}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:24:05');
INSERT INTO `il_user_log` VALUES ('{5BACEF95-AD6B-DD73-76A0-50697A1697C0}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:33');
INSERT INTO `il_user_log` VALUES ('{5BE74B9F-CD4C-7A17-6C2A-11CFBFCA5324}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:20');
INSERT INTO `il_user_log` VALUES ('{5BEB7291-61EC-EB01-B212-550B1BF3FA06}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 18:35:00');
INSERT INTO `il_user_log` VALUES ('{5C0846DF-521D-3E56-E9E0-3D8906F84B73}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:44');
INSERT INTO `il_user_log` VALUES ('{5C0A1374-31DE-1A56-0728-7C96A1515F46}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 13:57:48');
INSERT INTO `il_user_log` VALUES ('{5C111014-1889-0709-A1E7-CE7F0C5B169F}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:05:23');
INSERT INTO `il_user_log` VALUES ('{5C53F9D9-C9CC-EE5F-00D3-74F66C7C9D84}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:31');
INSERT INTO `il_user_log` VALUES ('{5C89C810-088E-CAE1-281B-C6CDA7D7A70B}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:10');
INSERT INTO `il_user_log` VALUES ('{5CA5234B-9A13-C10D-CF16-E600C3F62905}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:10:15');
INSERT INTO `il_user_log` VALUES ('{5D099ADC-6145-123F-3420-DBFED5B6E7B1}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:15:49');
INSERT INTO `il_user_log` VALUES ('{5D4EA341-592C-C25D-FAE1-6286308CA817}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:39');
INSERT INTO `il_user_log` VALUES ('{5D5AE130-AE62-2D97-6EE5-DA249A9D7CA1}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:00');
INSERT INTO `il_user_log` VALUES ('{5D79D75C-06AE-C525-E972-F34654AE7137}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:57:26');
INSERT INTO `il_user_log` VALUES ('{5D82E0D8-329A-B08B-20CA-0322F0C2FF52}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:33');
INSERT INTO `il_user_log` VALUES ('{5D834162-71D0-F823-8365-5BE9A6632C4F}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:21:27');
INSERT INTO `il_user_log` VALUES ('{5DC78A3C-B56A-00C7-D1AE-EFDACB33C010}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:32');
INSERT INTO `il_user_log` VALUES ('{5DF96D5F-AE5C-D8BF-BDB6-115B1D384D2C}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:37:34');
INSERT INTO `il_user_log` VALUES ('{5DF9DE3B-59CC-4453-12B7-974B1821347F}', '业务管理', '楼层管理', '添加楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:41:27');
INSERT INTO `il_user_log` VALUES ('{5DFD7650-F428-4D6F-185D-BAD5B064C7F3}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-11 11:03:05');
INSERT INTO `il_user_log` VALUES ('{5E057DAC-5A9C-B02A-499D-009FB763394A}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:08:00');
INSERT INTO `il_user_log` VALUES ('{5E0DB4BB-F7A4-313F-8CD5-22EE7C4C8B00}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:22:39');
INSERT INTO `il_user_log` VALUES ('{5E237A4A-66B3-909F-5E7F-2D45F5B7E936}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:56:49');
INSERT INTO `il_user_log` VALUES ('{5E4A6AA1-567D-34AB-5591-544774A91246}', '业务管理', '单位管理', '重置管理员密码', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 13:59:03');
INSERT INTO `il_user_log` VALUES ('{5E745ECC-B0E2-6CBE-0F0B-FE73B5945048}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 20:03:18');
INSERT INTO `il_user_log` VALUES ('{5E801988-BB92-2041-A275-E87C588B5F46}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:08:01');
INSERT INTO `il_user_log` VALUES ('{5EAFC05C-9828-BCF0-4CB7-7D724E95FF51}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:56:02');
INSERT INTO `il_user_log` VALUES ('{5EDBB3ED-56A2-C0E9-22DC-F3E06598BF9D}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:52');
INSERT INTO `il_user_log` VALUES ('{5EFB05D0-B36A-CC42-CE7E-F9859E2A2321}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:06:23');
INSERT INTO `il_user_log` VALUES ('{5F60DA18-A8D8-E9F2-41DD-459F8930AE57}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:51');
INSERT INTO `il_user_log` VALUES ('{5F701F0C-FBA6-FE1C-07E7-B851523D92B4}', '系统管理', '角色管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:28:35');
INSERT INTO `il_user_log` VALUES ('{5F80DEC6-3133-658E-C41C-F591AE9DB346}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:20:33');
INSERT INTO `il_user_log` VALUES ('{5FA0C7A3-F44A-871C-A1DF-BF070EAF5BD2}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:03:58');
INSERT INTO `il_user_log` VALUES ('{5FA90479-5987-30A4-71B5-E31F6BFC4103}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:49:31');
INSERT INTO `il_user_log` VALUES ('{604340D9-E5F1-167E-DF8C-1924BAF744DE}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:53');
INSERT INTO `il_user_log` VALUES ('{604D5918-2991-2557-1FCD-64685F018FD7}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:33');
INSERT INTO `il_user_log` VALUES ('{60AD7064-E591-700F-559E-1C4A293A0E92}', '业务管理', '人员管理', '修改人员信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:43:59');
INSERT INTO `il_user_log` VALUES ('{60B5B686-6E71-4AC9-2650-555DF3D0F099}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:43:31');
INSERT INTO `il_user_log` VALUES ('{60BA4A29-F96A-FF71-4E82-01706EBAF833}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:58:48');
INSERT INTO `il_user_log` VALUES ('{60BF46D0-C49B-F815-F59F-D74730038651}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:48:52');
INSERT INTO `il_user_log` VALUES ('{60E7A0D5-5F49-5DAC-1115-F9373B0A195D}', '系统管理', '节点管理', '节点列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:33:22');
INSERT INTO `il_user_log` VALUES ('{61042083-E9A9-1223-DEE3-074BED59A26D}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:37:32');
INSERT INTO `il_user_log` VALUES ('{61306F2F-A495-7E52-AA68-1D9391D8955E}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 15:08:29');
INSERT INTO `il_user_log` VALUES ('{6156E6B3-0F11-421A-C6B9-17EEB1658852}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:17:03');
INSERT INTO `il_user_log` VALUES ('{61628310-4C83-0218-F983-E55F07BC90B4}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:44');
INSERT INTO `il_user_log` VALUES ('{6183DC0F-9D65-90F0-53F2-2A2039B0D2A3}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:39');
INSERT INTO `il_user_log` VALUES ('{618C9151-8375-4669-71A1-362B4814EC92}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 18:32:22');
INSERT INTO `il_user_log` VALUES ('{61A1BCBF-D70D-0463-CF8A-ED93D307692A}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:02:33');
INSERT INTO `il_user_log` VALUES ('{61A1E8FA-6C0A-CD4B-D38B-C09E59A64963}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:42');
INSERT INTO `il_user_log` VALUES ('{61A2CBAA-F610-8040-6B3F-9C617CFCF1F7}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:06:26');
INSERT INTO `il_user_log` VALUES ('{61BD20F7-8A13-B612-8B1D-2DD4ED2AD242}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 10:52:41');
INSERT INTO `il_user_log` VALUES ('{61C6E37F-5BCC-9AE3-9D4C-C098BE77EBAC}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:16:11');
INSERT INTO `il_user_log` VALUES ('{61CF4514-D49B-A777-BFCD-4BD559187F1B}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:31');
INSERT INTO `il_user_log` VALUES ('{61F4C83F-EE9A-4FB9-55E4-E204F28D9492}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:08:52');
INSERT INTO `il_user_log` VALUES ('{61FAD538-D82A-44E8-278A-B33992CF7E50}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:31');
INSERT INTO `il_user_log` VALUES ('{6220AFD5-61C4-7105-4657-A0E3986D738A}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:00:50');
INSERT INTO `il_user_log` VALUES ('{622309EE-6454-B348-8B3C-B0A0B65C7FD3}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 17:20:36');
INSERT INTO `il_user_log` VALUES ('{6234D0A6-BFCF-3173-19B5-85BFF87992F0}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 14:45:02');
INSERT INTO `il_user_log` VALUES ('{6246FFC0-66AE-C3AB-4720-50635B9D1C37}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 11:46:57');
INSERT INTO `il_user_log` VALUES ('{62499A8A-823A-EF99-8A9C-DC802664FBE8}', '业务管理', '组管理', '删除组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:43:47');
INSERT INTO `il_user_log` VALUES ('{6269BD37-BA76-1F9F-54A8-2E254FB19EB0}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:46');
INSERT INTO `il_user_log` VALUES ('{628650D2-CF29-82AA-7E51-A0588FF8AE7F}', '业务管理', '组成员管理', '成员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:48:04');
INSERT INTO `il_user_log` VALUES ('{62CD8727-6400-ADDA-789A-2ABA5E7EE040}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:17:03');
INSERT INTO `il_user_log` VALUES ('{630E9C60-3EA0-B935-ACF2-670C80685C19}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:21');
INSERT INTO `il_user_log` VALUES ('{631F6DFC-A9E0-D36F-1DE5-3E604FCABDC0}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-09 09:27:57');
INSERT INTO `il_user_log` VALUES ('{63283D8D-1077-9842-6D8E-1F5247EA9772}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:07:33');
INSERT INTO `il_user_log` VALUES ('{633AD946-ECE4-2EE1-6646-065C33E40110}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:48');
INSERT INTO `il_user_log` VALUES ('{633F3134-1873-E2BF-E32C-EB2ABABEEDD5}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 17:59:44');
INSERT INTO `il_user_log` VALUES ('{6345E04B-381B-DE35-6EA3-CEB93939F3A1}', '业务管理', '人员管理', '修改人员信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:07');
INSERT INTO `il_user_log` VALUES ('{63571824-C082-5FBC-90BC-B3628D8053B5}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:32');
INSERT INTO `il_user_log` VALUES ('{63791C1B-B773-C994-40B6-E8BB4E080AD0}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 14:51:08');
INSERT INTO `il_user_log` VALUES ('{638FC8AB-1195-EA25-4AD1-32D9907109C3}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:44');
INSERT INTO `il_user_log` VALUES ('{63BA36B3-F5A3-7932-F130-005AFC0BCEA9}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:06:41');
INSERT INTO `il_user_log` VALUES ('{64057BF6-E92E-AF94-36FD-941F07473535}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:14:51');
INSERT INTO `il_user_log` VALUES ('{64149EB6-EE64-6FBC-7981-BEF658C2A4A5}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:26');
INSERT INTO `il_user_log` VALUES ('{648AFEC1-A336-F7D2-ED50-CCF80CBBF1CC}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:55:23');
INSERT INTO `il_user_log` VALUES ('{64903FBC-21F4-7C3E-2E55-A46287D8EB74}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:26:34');
INSERT INTO `il_user_log` VALUES ('{649D82FC-4B5F-C305-AB01-4FE579E70946}', '系统管理', '节点管理', '节点列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:31:11');
INSERT INTO `il_user_log` VALUES ('{64C049B4-64A9-A89F-46F3-A3F60C1245D7}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:34');
INSERT INTO `il_user_log` VALUES ('{64D54B68-084A-9114-AC5A-6E478AB9FF95}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:20:03');
INSERT INTO `il_user_log` VALUES ('{64FE87D8-0F15-1E64-BD10-02AD903B756D}', '业务管理', '楼层管理', '楼层列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:03:02');
INSERT INTO `il_user_log` VALUES ('{64FEE518-93BE-E176-F357-6B0306B8ED73}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:56:28');
INSERT INTO `il_user_log` VALUES ('{6527A544-95BC-F6CE-9CB9-04FC38CEADCC}', '业务管理', '单位管理', '本单位信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:31:17');
INSERT INTO `il_user_log` VALUES ('{656B6631-5792-1EAC-E1F1-B6D14F71BFED}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:50');
INSERT INTO `il_user_log` VALUES ('{65700E65-F82A-F668-C19E-083EE4558FC5}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:02:32');
INSERT INTO `il_user_log` VALUES ('{65AF12C3-0887-1948-705D-340E9463E3C5}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:23:37');
INSERT INTO `il_user_log` VALUES ('{65E3720E-B643-FE9D-C331-D34B5752EB30}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:06:22');
INSERT INTO `il_user_log` VALUES ('{65E5D34C-735F-C66F-859C-66D9F2066E41}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:36:35');
INSERT INTO `il_user_log` VALUES ('{6611CCF5-0A11-B6F7-F67C-85303C310D11}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:40:25');
INSERT INTO `il_user_log` VALUES ('{663098B6-E106-EE7C-2C13-C0B1975C1624}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:20');
INSERT INTO `il_user_log` VALUES ('{663A9AA2-A239-CC95-8179-2311977860FB}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:26:01');
INSERT INTO `il_user_log` VALUES ('{663E3E95-0812-0BAE-83ED-81EE520BE254}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:36:19');
INSERT INTO `il_user_log` VALUES ('{6657D26E-8628-8F70-FA94-5510972FF365}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:22');
INSERT INTO `il_user_log` VALUES ('{665E72A6-26C0-48CA-F7EE-E7195BDB3C42}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:32');
INSERT INTO `il_user_log` VALUES ('{668E0E8A-4EE3-9D5D-8A8B-B765B7F6C4F7}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:40:30');
INSERT INTO `il_user_log` VALUES ('{66A527A9-66C5-79B9-60DE-E0090890E1C5}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:10:13');
INSERT INTO `il_user_log` VALUES ('{66AAF9A5-F313-E7D6-8857-2DD9FB9352A2}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:57:00');
INSERT INTO `il_user_log` VALUES ('{66AD5BA0-BF0E-9310-E0B3-F09B2A2746D3}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:38:44');
INSERT INTO `il_user_log` VALUES ('{66EF347C-2077-DB75-C04A-CC97488B2F58}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:28');
INSERT INTO `il_user_log` VALUES ('{6729BDAF-2F71-6A04-C0B1-9CE45B1F81F7}', '业务管理', '单位管理', '添加子单位', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:01:38');
INSERT INTO `il_user_log` VALUES ('{674C87DC-6023-1D6F-3663-3581DB8323FB}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:46:08');
INSERT INTO `il_user_log` VALUES ('{674FBDF2-90B1-24A9-54BF-A21188AD485D}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:50:27');
INSERT INTO `il_user_log` VALUES ('{6767A719-B4BE-ED6D-3490-DC978DDF35E2}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:09:05');
INSERT INTO `il_user_log` VALUES ('{6782AF85-31DB-5F93-3C3E-174DB065E8B3}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:14:45');
INSERT INTO `il_user_log` VALUES ('{680C2312-B964-F4B9-D27A-97A58042CD18}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:08:31');
INSERT INTO `il_user_log` VALUES ('{682CE150-DEA9-F7B8-D512-E3BC1B6F96A1}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:20:41');
INSERT INTO `il_user_log` VALUES ('{68357CA4-0F25-1F30-FA0C-96E96789E752}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:53');
INSERT INTO `il_user_log` VALUES ('{685D0023-49C5-DA46-078C-D0AB8F0FB76A}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:19');
INSERT INTO `il_user_log` VALUES ('{6866F398-260F-21D8-89EE-079396F4E0D4}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:11:23');
INSERT INTO `il_user_log` VALUES ('{68967021-5CBF-7D09-153D-8B3BFB171B4C}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:54:56');
INSERT INTO `il_user_log` VALUES ('{68AB1738-43B2-AA66-B3B9-66DD62591006}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:11:26');
INSERT INTO `il_user_log` VALUES ('{68B96EAF-D009-FDD1-D49F-E5F5A8F80488}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 18:36:22');
INSERT INTO `il_user_log` VALUES ('{68D58E87-A99F-A1D6-9C5E-F8D7DEF5D6A9}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:55:49');
INSERT INTO `il_user_log` VALUES ('{690040B4-D464-5651-A176-30CDD3386A81}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:15');
INSERT INTO `il_user_log` VALUES ('{69144362-2F5B-5B18-EDD3-480E4ADF2AA9}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 18:53:25');
INSERT INTO `il_user_log` VALUES ('{691E87CE-37CD-938D-BFC2-467C58A7A688}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:37:33');
INSERT INTO `il_user_log` VALUES ('{696AB4A3-0E05-E823-7BED-1416A575B280}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 17:21:57');
INSERT INTO `il_user_log` VALUES ('{698AA349-9E2A-B9FE-34A5-1A075CA434A5}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:02:24');
INSERT INTO `il_user_log` VALUES ('{69927FD7-43CD-2DEF-BD6B-45B3BF386CCD}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:34');
INSERT INTO `il_user_log` VALUES ('{69D9146C-E4EB-710B-5126-8EFB6603DB06}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:52:31');
INSERT INTO `il_user_log` VALUES ('{69E1A404-A297-B849-1AA8-707C27CA97D9}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 20:09:24');
INSERT INTO `il_user_log` VALUES ('{69F7128B-D2E2-0A5B-8ED2-442DD6EFFF8C}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:13:58');
INSERT INTO `il_user_log` VALUES ('{6A00A6B0-814B-8AA9-2440-790388CFF447}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:01:53');
INSERT INTO `il_user_log` VALUES ('{6A11CFA1-9EB3-D61F-8955-E3B83F75CE30}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:34:24');
INSERT INTO `il_user_log` VALUES ('{6A11F2D8-DCA9-67EA-A5FE-BFAEBC790DC2}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:55:35');
INSERT INTO `il_user_log` VALUES ('{6A1733BB-68BC-FAB2-3A2E-FE8AB2C4CD5F}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:33:00');
INSERT INTO `il_user_log` VALUES ('{6A18F81A-4F6F-828C-4370-5C71F14F6E8E}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:42:03');
INSERT INTO `il_user_log` VALUES ('{6A3A4B42-A8D6-DE30-3A2A-B235D9382DE1}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:10:29');
INSERT INTO `il_user_log` VALUES ('{6A8C0AEA-EEEB-060B-FAE0-215CBF45F6F6}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:07:58');
INSERT INTO `il_user_log` VALUES ('{6A9B4196-1EA0-B863-4BF1-DB8F099780D9}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:56:13');
INSERT INTO `il_user_log` VALUES ('{6AB764F0-2658-2863-7DF8-25E907C23B46}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:33:09');
INSERT INTO `il_user_log` VALUES ('{6AC30FFE-5BD5-656A-E2BD-9C217B3081D7}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd02', '3', '0.0.0.0', '2017-09-04 18:44:39');
INSERT INTO `il_user_log` VALUES ('{6AC508D5-6B41-D23F-51DE-6E9994437EF6}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:04:32');
INSERT INTO `il_user_log` VALUES ('{6AC552DC-058D-06DD-4CE0-F5E803F89391}', '业务管理', '单位管理', '添加子单位', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:24:23');
INSERT INTO `il_user_log` VALUES ('{6AC6D1AF-084A-7C42-4102-51CCFFFC0008}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:45:16');
INSERT INTO `il_user_log` VALUES ('{6B0AC091-7033-8AD7-5434-C46E0BD23A39}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:50:36');
INSERT INTO `il_user_log` VALUES ('{6BB84B30-8860-29BC-151E-FC952546D664}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:00');
INSERT INTO `il_user_log` VALUES ('{6BB87F84-F13F-30F7-B992-F5FC09CA9E89}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:17');
INSERT INTO `il_user_log` VALUES ('{6BC6FB14-D906-9055-544F-EF46B44ADCCD}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 14:46:47');
INSERT INTO `il_user_log` VALUES ('{6BCD432E-F864-3039-FB82-3C513499E31A}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:30');
INSERT INTO `il_user_log` VALUES ('{6BD841FD-CC96-FA69-DA3F-A67D12F403F3}', '业务管理', '楼层管理', '添加楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:42:50');
INSERT INTO `il_user_log` VALUES ('{6BF6CD4A-EE2E-1288-5165-967123001AFD}', '系统管理', '角色管理', '权限明细', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:40:23');
INSERT INTO `il_user_log` VALUES ('{6C2AD716-0735-C772-E4B8-F68DE061436E}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:14:55');
INSERT INTO `il_user_log` VALUES ('{6C55762C-5535-D6EB-AB1F-065D5575FB07}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:25:15');
INSERT INTO `il_user_log` VALUES ('{6C5D4363-DD2A-CFE2-4100-82A7AFEDE7F1}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:41');
INSERT INTO `il_user_log` VALUES ('{6C64AA8C-89A8-DE6F-3250-4FB0E278EE36}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:06:53');
INSERT INTO `il_user_log` VALUES ('{6C6D013B-C21B-6C96-FC8C-048224A69B01}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:41');
INSERT INTO `il_user_log` VALUES ('{6C9390A7-134D-CB99-6581-D444349A920C}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:48:06');
INSERT INTO `il_user_log` VALUES ('{6CB7B5C8-30DD-D232-2783-2AD835130FEA}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:20:01');
INSERT INTO `il_user_log` VALUES ('{6CBDBE46-C1E6-1145-BA77-17224E315383}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:03:38');
INSERT INTO `il_user_log` VALUES ('{6CCDD0D6-8C0F-1C3B-F050-B46F2CBF0E8C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 18:53:04');
INSERT INTO `il_user_log` VALUES ('{6CED8BEE-EA55-42EC-6C96-A9E2046A080C}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:54:58');
INSERT INTO `il_user_log` VALUES ('{6D1D3C35-367E-4044-5AA0-CAC349DCA9FD}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:38:55');
INSERT INTO `il_user_log` VALUES ('{6D389B31-4667-3FB1-3098-F92AD5ADFE23}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:10:29');
INSERT INTO `il_user_log` VALUES ('{6D5F4851-C1FA-B245-D9D7-81A5100851BA}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:38:51');
INSERT INTO `il_user_log` VALUES ('{6D7A9AA0-1940-01F0-7CF5-37D39D9BA72B}', '业务管理', '组管理', '删除组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:43:49');
INSERT INTO `il_user_log` VALUES ('{6DB42DBF-8E61-DFAB-8749-FA5BCB5EA1E8}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:13:36');
INSERT INTO `il_user_log` VALUES ('{6DBDC04C-5873-C080-2998-6418AA8E5280}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:48:29');
INSERT INTO `il_user_log` VALUES ('{6E03BFF0-4FC9-3D42-A162-DEE0848EB83A}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:23');
INSERT INTO `il_user_log` VALUES ('{6E0E2D80-9C8A-7708-C2EC-7E330291EA8A}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:06:44');
INSERT INTO `il_user_log` VALUES ('{6E1F9F27-DD23-3EF5-9BEE-9EF5B557D794}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 11:47:09');
INSERT INTO `il_user_log` VALUES ('{6E22976E-543B-63AB-429A-B68C57CE3F45}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:49:43');
INSERT INTO `il_user_log` VALUES ('{6E33F3C9-2FE3-E297-9D31-CE988B8123A7}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:18:57');
INSERT INTO `il_user_log` VALUES ('{6E7000B5-A090-8B65-347B-30927163CEE8}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:19:08');
INSERT INTO `il_user_log` VALUES ('{6E9D88CA-86D4-E25C-BE4A-EDF18FF64DF0}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:39:07');
INSERT INTO `il_user_log` VALUES ('{6EB13A7E-5A93-E883-6FE0-F8CF3F87C0BA}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:14');
INSERT INTO `il_user_log` VALUES ('{6EE69865-18D6-808E-F1D0-057761E0B494}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:43');
INSERT INTO `il_user_log` VALUES ('{6F075512-80CC-2D59-6CB0-3D9C24AB345F}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:04:04');
INSERT INTO `il_user_log` VALUES ('{6F3EF0AB-9047-5C34-7015-11D020EFC810}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:10:14');
INSERT INTO `il_user_log` VALUES ('{6F4EB291-C115-6B30-D76F-F024CFB09A03}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:28');
INSERT INTO `il_user_log` VALUES ('{6F6FF40E-5EB2-A36F-68C7-9725CB9148E1}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:53:40');
INSERT INTO `il_user_log` VALUES ('{6F7156B6-DA1A-B4E9-0B7A-610F72C08B7E}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:30:22');
INSERT INTO `il_user_log` VALUES ('{6F8B72DB-67F3-6B18-DD6E-C39917384D22}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:12:55');
INSERT INTO `il_user_log` VALUES ('{6FDE4C56-6C6C-9101-0F0E-C22E92187C62}', '业务管理', '事件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:45:55');
INSERT INTO `il_user_log` VALUES ('{70326BBA-8157-2019-987C-600DE84D3E98}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:34');
INSERT INTO `il_user_log` VALUES ('{7041807C-9371-7DD1-5385-FCC363D0F93C}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:22:43');
INSERT INTO `il_user_log` VALUES ('{706C34CC-B133-037F-4E48-398F9AF7F8A8}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:22:39');
INSERT INTO `il_user_log` VALUES ('{707AF956-5469-39EF-1F63-EE92AD32F3A5}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:09');
INSERT INTO `il_user_log` VALUES ('{707EAC73-AD73-81CB-0086-438DF8284FF4}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:04:22');
INSERT INTO `il_user_log` VALUES ('{70905CD3-23BF-E5CB-DA3A-07724F77C96F}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:27');
INSERT INTO `il_user_log` VALUES ('{70EB9201-44C5-9C61-95FC-65C9911AB526}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:03:04');
INSERT INTO `il_user_log` VALUES ('{70FFC481-7429-7D17-AA25-3A013837CA57}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:48:00');
INSERT INTO `il_user_log` VALUES ('{710A1527-B315-DB64-CB13-0A68F8191C62}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:40:20');
INSERT INTO `il_user_log` VALUES ('{710D985E-3716-63DA-4FD7-DDBCFC07EB29}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:11:30');
INSERT INTO `il_user_log` VALUES ('{71131A75-2F2B-A524-6022-59F394755178}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:42:12');
INSERT INTO `il_user_log` VALUES ('{717981F3-7359-22F8-21BA-D868FF39AF87}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:42:19');
INSERT INTO `il_user_log` VALUES ('{7192D786-FEDB-E435-1836-D7035B2661C6}', '业务管理', '人员管理', '修改人员信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:03:36');
INSERT INTO `il_user_log` VALUES ('{71CB7894-2FF8-0FCA-CCD4-95AEDE93788F}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 18:02:28');
INSERT INTO `il_user_log` VALUES ('{71D8ABAC-31C8-6833-4F49-EA4BDE653997}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:31:13');
INSERT INTO `il_user_log` VALUES ('{722684BA-4101-E0C6-C1BE-3C18DD71DAB4}', '系统管理', '节点管理', '节点列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:58:35');
INSERT INTO `il_user_log` VALUES ('{726AE7AD-F51E-3E66-F0E6-499BC163C5F2}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:36:50');
INSERT INTO `il_user_log` VALUES ('{72720B10-0208-B8A9-8FD6-6DA7294C404E}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:46');
INSERT INTO `il_user_log` VALUES ('{72793189-5945-0680-E396-FE8B2C26C672}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:37:11');
INSERT INTO `il_user_log` VALUES ('{72B74C69-5B24-60B0-A12A-2B4C39C7318F}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:09');
INSERT INTO `il_user_log` VALUES ('{72F11437-62CF-6087-6ADC-20E32D1DC311}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:24');
INSERT INTO `il_user_log` VALUES ('{730662EC-A036-FA83-406D-3B6FBE79B4BC}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:29');
INSERT INTO `il_user_log` VALUES ('{7314A6BC-E9D0-77D6-966A-75673F6D5525}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 10:09:27');
INSERT INTO `il_user_log` VALUES ('{732F7572-6995-A081-9A7C-C295D5559311}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:42');
INSERT INTO `il_user_log` VALUES ('{73CB6D56-F3D9-3BFE-8402-86ECE404DAF7}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:32:07');
INSERT INTO `il_user_log` VALUES ('{73D117CA-315A-849A-9E4A-629F05751020}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:31');
INSERT INTO `il_user_log` VALUES ('{73DA987E-628F-CAD8-44B6-36D6CD52B148}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:08:30');
INSERT INTO `il_user_log` VALUES ('{73E259DA-CC58-82E0-4B0B-D01131C20AD0}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:14:57');
INSERT INTO `il_user_log` VALUES ('{73F4C242-41C7-2470-470B-9C45E0873AAC}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:43');
INSERT INTO `il_user_log` VALUES ('{73F80D4C-E01B-056D-6F90-04BC564CF9C8}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:38');
INSERT INTO `il_user_log` VALUES ('{7422FD9B-5E7E-250A-2A8A-97AE087E6CC1}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:51:23');
INSERT INTO `il_user_log` VALUES ('{743A67B9-8756-5F69-54CA-F1732B7669FE}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:49:39');
INSERT INTO `il_user_log` VALUES ('{74B0C003-BC4A-0B9F-5924-7AED730495CC}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:40:26');
INSERT INTO `il_user_log` VALUES ('{74C44FF3-52BD-95E7-BB39-4936154921CC}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 19:27:58');
INSERT INTO `il_user_log` VALUES ('{74D0504E-5152-8516-E6AC-71B8CD03DEE4}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:22');
INSERT INTO `il_user_log` VALUES ('{74D8F3CC-F3A1-7CA6-4021-2EF83527050B}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:19:58');
INSERT INTO `il_user_log` VALUES ('{74DF980B-9374-4EE8-7CB5-D261C050F7A7}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:29');
INSERT INTO `il_user_log` VALUES ('{74EC282F-CA6E-C97C-2A4E-48820F3BC1F3}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:04:11');
INSERT INTO `il_user_log` VALUES ('{75116476-4A66-4CAB-DDFE-5604DB687167}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:34');
INSERT INTO `il_user_log` VALUES ('{753A7754-F9BC-3CBF-F617-925050565C10}', '业务管理', '消防设备管理', '修改消防设备', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:47:32');
INSERT INTO `il_user_log` VALUES ('{753BF98E-1406-3731-875A-B4107B1FD963}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:03');
INSERT INTO `il_user_log` VALUES ('{758DD5A9-E6CE-77DF-6610-71155C436041}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:00:37');
INSERT INTO `il_user_log` VALUES ('{7591727D-B817-D687-C7A9-41D84B841BF9}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:26:46');
INSERT INTO `il_user_log` VALUES ('{75935860-C6FB-E907-3D30-19C03D129505}', '系统管理', '角色管理', '权限明细', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:38:42');
INSERT INTO `il_user_log` VALUES ('{75B2EC62-A46D-323F-7E57-E6A02A67F03A}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:44:46');
INSERT INTO `il_user_log` VALUES ('{75E13BF3-15E5-DC7E-E806-CF21384604DA}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:42:23');
INSERT INTO `il_user_log` VALUES ('{75EA9444-78D7-CF0C-ABAD-967C3DE42870}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:04:10');
INSERT INTO `il_user_log` VALUES ('{75F7D6DE-9C9F-8F30-5063-2AF92EAFD9D5}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:02:36');
INSERT INTO `il_user_log` VALUES ('{76135B1D-E25B-CA76-BDC5-F658F1CA43F8}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:22:00');
INSERT INTO `il_user_log` VALUES ('{76295A3A-4D49-AC6D-F1AC-9763C5710F8D}', '业务管理', '人员管理', '人员详情', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:10:21');
INSERT INTO `il_user_log` VALUES ('{76461928-AF4D-3C2D-2ECC-2384E8542730}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 18:37:21');
INSERT INTO `il_user_log` VALUES ('{7661A67D-D6C5-B5EC-2024-61F551AD4FD0}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:08');
INSERT INTO `il_user_log` VALUES ('{76A6CC01-1407-D060-A969-B46BC6139D2B}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:14:37');
INSERT INTO `il_user_log` VALUES ('{76AE81FB-D7AF-CDC5-394E-73582C313FD8}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:10:32');
INSERT INTO `il_user_log` VALUES ('{76B3798F-E1BE-B5F1-9E63-863B76635E10}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:24');
INSERT INTO `il_user_log` VALUES ('{76C1BF54-0E13-8A3A-D408-0AE0B2DAFC58}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:49');
INSERT INTO `il_user_log` VALUES ('{7702B1D8-D437-7D93-B597-ADAA3861DD65}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:04:53');
INSERT INTO `il_user_log` VALUES ('{7705C2DE-347F-88FB-AB0B-EF132C95EE69}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:10:55');
INSERT INTO `il_user_log` VALUES ('{7709BADA-A784-183F-2131-D9D12F4BE99B}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-11 11:02:56');
INSERT INTO `il_user_log` VALUES ('{7787BE47-AAA4-6BE5-80F8-C4D679E11F58}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:36:27');
INSERT INTO `il_user_log` VALUES ('{77C2545C-1BF8-F52B-2526-7C036A32754B}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:30');
INSERT INTO `il_user_log` VALUES ('{77C2F6C1-C000-B9FA-5D98-9312E5D84637}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:52:06');
INSERT INTO `il_user_log` VALUES ('{77C80532-3713-BCA6-EE2C-27DFEF456A6B}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:36');
INSERT INTO `il_user_log` VALUES ('{77D5872D-8E87-7FB2-C14C-D56CF02E2D16}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:44:28');
INSERT INTO `il_user_log` VALUES ('{77ED8A27-0915-9E06-61B6-A5D9AA0D4949}', '系统管理', '用户管理', '修改密码', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:51');
INSERT INTO `il_user_log` VALUES ('{7832345F-F82D-366F-B297-93D2B07A3CD9}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:44');
INSERT INTO `il_user_log` VALUES ('{78446C4F-4859-22A1-60B5-6D5B77943C66}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 18:36:21');
INSERT INTO `il_user_log` VALUES ('{78543610-5298-D5B4-0205-38D405DC8E99}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 11:47:24');
INSERT INTO `il_user_log` VALUES ('{785A3673-510E-4749-C6FF-8CFB04DD7AB6}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:14');
INSERT INTO `il_user_log` VALUES ('{79023E4C-0823-C747-D9FE-44A9A4DBF638}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:44:36');
INSERT INTO `il_user_log` VALUES ('{793A4D19-C7D6-BD9E-0F99-04D4737FD8A3}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:25:18');
INSERT INTO `il_user_log` VALUES ('{793A9CB3-2211-8C45-A920-A4CEB1F9774A}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:33');
INSERT INTO `il_user_log` VALUES ('{7966B185-DE92-5BB0-0ED0-2FDB2E6A47EC}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:35:39');
INSERT INTO `il_user_log` VALUES ('{796C4A57-7C17-0B6C-3794-75104DC33A74}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:37:51');
INSERT INTO `il_user_log` VALUES ('{79A6F5A4-9E0A-4CC4-27A2-3A79B24EC6D4}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 13:57:45');
INSERT INTO `il_user_log` VALUES ('{79A93F20-8A49-1D82-19B3-7C2022D85531}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:38');
INSERT INTO `il_user_log` VALUES ('{79B70A31-5E5F-1B6B-D0BD-86A26D11476E}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 18:32:16');
INSERT INTO `il_user_log` VALUES ('{79C014F7-DBC4-63B4-CEEC-5BF48C7F7D19}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:15');
INSERT INTO `il_user_log` VALUES ('{7A155A3A-6DA7-9A7F-156A-2C386C2A0FD4}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:15:10');
INSERT INTO `il_user_log` VALUES ('{7A163AE3-8771-72A1-3948-6CCA2300337C}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 12:00:15');
INSERT INTO `il_user_log` VALUES ('{7A323D98-66B3-CB85-1E6E-481CCCD0476C}', '业务管理', '单位管理', '子单位列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:02:01');
INSERT INTO `il_user_log` VALUES ('{7A363E79-A47F-907A-5B58-6CC4F3854B15}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:38:25');
INSERT INTO `il_user_log` VALUES ('{7A4075F2-BA2E-F54F-B275-7B2E620610C6}', '业务管理', '组管理', '删除组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:00');
INSERT INTO `il_user_log` VALUES ('{7A855CE6-06EC-7F33-7557-83F7D0CC5D24}', '业务管理', '事件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:52:46');
INSERT INTO `il_user_log` VALUES ('{7A909426-80F4-B0DF-6410-F8724FD50167}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:16:20');
INSERT INTO `il_user_log` VALUES ('{7A95E6AB-FFB9-9EF4-E3AC-8DDEBBE656FE}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 17:20:34');
INSERT INTO `il_user_log` VALUES ('{7AFD27A2-A25D-8A39-225E-5DBFAD5A570F}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:48:58');
INSERT INTO `il_user_log` VALUES ('{7B610E2B-8854-D958-2DC2-A26122CAC424}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:23:45');
INSERT INTO `il_user_log` VALUES ('{7B72CEAE-EFE9-5B2C-310D-9A97A3700E5A}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:20:48');
INSERT INTO `il_user_log` VALUES ('{7BB99F73-F0EE-FDFC-1732-E169289647B1}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:21:41');
INSERT INTO `il_user_log` VALUES ('{7BEE2AFA-0835-D804-2C43-4A15A46D72BA}', '系统管理', '节点管理', '节点列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:28:37');
INSERT INTO `il_user_log` VALUES ('{7C159838-14D7-ED65-2969-F9C0925391CC}', '业务管理', '信标管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:49');
INSERT INTO `il_user_log` VALUES ('{7C252A43-790F-6DB9-0769-815ABAB16455}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:05:20');
INSERT INTO `il_user_log` VALUES ('{7C44A265-3D0B-AA88-9FF0-6B251EE27C19}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:06:53');
INSERT INTO `il_user_log` VALUES ('{7C5C98F4-B794-7580-462F-8AE50303BA16}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:39:11');
INSERT INTO `il_user_log` VALUES ('{7CBF5EB0-A32B-029D-CEE9-A97BE881F035}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:06:19');
INSERT INTO `il_user_log` VALUES ('{7CD5C881-43B0-4FDC-0B8F-FD9FAFEFCB9B}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:32:22');
INSERT INTO `il_user_log` VALUES ('{7DCFF476-17CE-E4F7-47D9-EB02DF0A1769}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:44');
INSERT INTO `il_user_log` VALUES ('{7DF86069-3890-637D-A3D3-253800A553C6}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:43:18');
INSERT INTO `il_user_log` VALUES ('{7E279051-4741-21CE-A106-ABC8DE694C39}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:08:37');
INSERT INTO `il_user_log` VALUES ('{7E363AE0-0EC2-5437-49D4-160855FEA542}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 15:03:52');
INSERT INTO `il_user_log` VALUES ('{7E476E00-43E2-78F4-CBDA-6C111D93B937}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 09:54:56');
INSERT INTO `il_user_log` VALUES ('{7E68AFC1-0E2E-1BA1-9B32-A86736C6B59B}', '系统管理', '角色管理', '权限明细', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:21:01');
INSERT INTO `il_user_log` VALUES ('{7EB5E4F8-51BB-073C-501C-FE54C61CD530}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:18:37');
INSERT INTO `il_user_log` VALUES ('{7EC343EF-F834-236D-7758-B4EAD70A30CC}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:49:51');
INSERT INTO `il_user_log` VALUES ('{7ED69D25-45F9-159B-16EB-8575661F6592}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:54:03');
INSERT INTO `il_user_log` VALUES ('{7EEB8F4F-E335-817B-47ED-64F912A17AB5}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:03:38');
INSERT INTO `il_user_log` VALUES ('{7F14179F-9409-6D79-C739-C89669AB04F9}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:09:32');
INSERT INTO `il_user_log` VALUES ('{7F149DE1-CB55-30B4-F503-E3E28368A620}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 12:00:11');
INSERT INTO `il_user_log` VALUES ('{7F4ACFD9-3A5F-3A3A-E03C-691A124FCA07}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:45:56');
INSERT INTO `il_user_log` VALUES ('{7F4C0280-83FD-3557-C645-9504E06559F5}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:06:21');
INSERT INTO `il_user_log` VALUES ('{7F807DF4-1448-BEC9-0916-9605F582C115}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:06:24');
INSERT INTO `il_user_log` VALUES ('{7FAFBD86-BDC6-C213-0BB1-97FAE891ED57}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 18:32:20');
INSERT INTO `il_user_log` VALUES ('{7FC291BD-3181-B1E1-3C29-A8C54C126F8D}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:47:43');
INSERT INTO `il_user_log` VALUES ('{7FED3866-96E3-513D-0232-B940984D3E7B}', '业务管理', '定位套件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:26:52');
INSERT INTO `il_user_log` VALUES ('{80229421-29C9-F1DB-90DF-FA3A93E77A6E}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:10:14');
INSERT INTO `il_user_log` VALUES ('{8058F6B8-7073-3EB2-1E43-9DA98C7DF014}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:52:25');
INSERT INTO `il_user_log` VALUES ('{80C7A4FD-6EED-0163-CCF1-A1F38F2B4EF2}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 11:13:28');
INSERT INTO `il_user_log` VALUES ('{80D5223E-F691-E822-F1BD-B3C4DA5EB96E}', '业务管理', '现场终端管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:55');
INSERT INTO `il_user_log` VALUES ('{81006E0E-3995-F379-557F-8FE49862C639}', '业务管理', '单位管理', '子单位列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:28');
INSERT INTO `il_user_log` VALUES ('{81210144-C211-AB15-7F78-1F5826355170}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:04:13');
INSERT INTO `il_user_log` VALUES ('{819BEC33-6028-9AAE-0CE0-DAEFC9F7DCC7}', '业务管理', '信标管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:03:12');
INSERT INTO `il_user_log` VALUES ('{81BC2448-A3D3-930B-ABEB-5F50C16A97AF}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:11:05');
INSERT INTO `il_user_log` VALUES ('{81DBF1DA-0DC7-7D95-5CA5-D1AB1DD407F0}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:36:59');
INSERT INTO `il_user_log` VALUES ('{823D325F-7721-95AB-EB0F-683F92613C2D}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:34');
INSERT INTO `il_user_log` VALUES ('{82542793-F7D8-609F-8498-C5A8B1122BC0}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 10:10:47');
INSERT INTO `il_user_log` VALUES ('{82734200-C4D9-0767-FB6D-2EAE752CAE64}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:52:41');
INSERT INTO `il_user_log` VALUES ('{8276EFE4-DE90-152D-5E26-F948B56522FE}', '业务管理', '楼层管理', '楼层列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:27:37');
INSERT INTO `il_user_log` VALUES ('{8294ED0D-EAA6-451E-2626-761D32F883BB}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:25');
INSERT INTO `il_user_log` VALUES ('{829CF89B-8B55-EB7F-9A46-E89EAA20AD1F}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:24:24');
INSERT INTO `il_user_log` VALUES ('{82A2D0BA-87AA-23CF-1C6D-1C56BF2986AE}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 10:55:47');
INSERT INTO `il_user_log` VALUES ('{82E01EAC-5FDE-0A0C-EF1A-C3847384C3C6}', '业务管理', '定位套件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:27:05');
INSERT INTO `il_user_log` VALUES ('{82E0E608-0F1E-0745-CEF3-7176A9B7702B}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:11:21');
INSERT INTO `il_user_log` VALUES ('{82E1242C-B252-AC66-6FD0-4A4DF4A0B636}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:38:05');
INSERT INTO `il_user_log` VALUES ('{830A0484-5D66-8858-BC92-799C1B83308B}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 18:52:54');
INSERT INTO `il_user_log` VALUES ('{83367C4F-4EDD-1998-0FBB-425AF0BCAE06}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:34');
INSERT INTO `il_user_log` VALUES ('{8350285C-49F8-EFBB-B904-0FF140F57209}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:49');
INSERT INTO `il_user_log` VALUES ('{8354007D-8011-5CF3-20F2-D408B4B1AF62}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 18:02:27');
INSERT INTO `il_user_log` VALUES ('{83B822D2-B6A8-CD21-269F-766627F91C0A}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:28');
INSERT INTO `il_user_log` VALUES ('{83C5CCA3-9F05-00F0-0808-CA6FDC3A9453}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:55:05');
INSERT INTO `il_user_log` VALUES ('{83C7DD98-5D2D-AB1D-6688-C45A71CFF6F7}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:36');
INSERT INTO `il_user_log` VALUES ('{841578CE-B8EE-F735-3471-8B5037221222}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:06:44');
INSERT INTO `il_user_log` VALUES ('{844DBBC6-FEFB-3090-9677-884654778389}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:00');
INSERT INTO `il_user_log` VALUES ('{8456D974-D2ED-7475-3A4B-637BE5107D50}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 09:54:54');
INSERT INTO `il_user_log` VALUES ('{84894689-D547-BE93-B1E9-B576C3FA7CCB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:03:40');
INSERT INTO `il_user_log` VALUES ('{848A1501-E1D1-D2A4-D95B-F849116C66A0}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:52:09');
INSERT INTO `il_user_log` VALUES ('{848C8DCA-C36A-80A9-0DEE-27C3B04840DA}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:59');
INSERT INTO `il_user_log` VALUES ('{84A55517-0C7E-041E-26CC-3FF14914258D}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:11');
INSERT INTO `il_user_log` VALUES ('{84D40FF2-F685-B769-CFF4-DFEB3B0EDFEA}', '系统管理', '用户日志', '清空', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-06 19:26:25');
INSERT INTO `il_user_log` VALUES ('{850F7022-D43E-31B3-F5BA-FF780234AE7A}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:46');
INSERT INTO `il_user_log` VALUES ('{8523545F-36AF-574F-87F2-E4DF2D461355}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:47:42');
INSERT INTO `il_user_log` VALUES ('{85864C26-6163-4916-C74C-9CCDFC0F2514}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:48:24');
INSERT INTO `il_user_log` VALUES ('{85A2022F-E890-E16B-C622-BB6628C2B422}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:05:22');
INSERT INTO `il_user_log` VALUES ('{86629227-9F10-CB79-D73D-5CD3F128FAD9}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 18:39:27');
INSERT INTO `il_user_log` VALUES ('{86A92A10-8A23-67B0-9BC8-18D2039BC985}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:54');
INSERT INTO `il_user_log` VALUES ('{86AD3CCF-35C2-49A7-5A74-ABDC544FFC3F}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:13');
INSERT INTO `il_user_log` VALUES ('{8738417D-FEB2-15C3-11FC-B1185D6A818E}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:11:19');
INSERT INTO `il_user_log` VALUES ('{8745C984-2EE5-B491-74B4-BC09B08ED0D1}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:54:01');
INSERT INTO `il_user_log` VALUES ('{8798B3A7-C456-07AF-E072-4E192FAFAF1C}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:37:04');
INSERT INTO `il_user_log` VALUES ('{87B7DE0B-5C41-63A6-6BCE-A378DA3C7A3E}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:05:04');
INSERT INTO `il_user_log` VALUES ('{87D2A1FD-345A-E099-3A97-2F3271B228BD}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 11:47:02');
INSERT INTO `il_user_log` VALUES ('{87E80DA5-E236-E51D-3848-9329AC4787E7}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:21:24');
INSERT INTO `il_user_log` VALUES ('{882D1237-CD9F-44EC-C354-DC818A18D4C1}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:50');
INSERT INTO `il_user_log` VALUES ('{884B0615-2CB5-9679-1EFF-D5764A6BA36F}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:17:42');
INSERT INTO `il_user_log` VALUES ('{889D72F6-2050-5372-27E0-76FFC1F608C6}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:27');
INSERT INTO `il_user_log` VALUES ('{889DCD7F-6F2E-8E7D-57E5-96BD7B6DA582}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:37:09');
INSERT INTO `il_user_log` VALUES ('{88D0FD30-6521-E939-B004-EBB855E9D87B}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:10');
INSERT INTO `il_user_log` VALUES ('{88D7662E-07EB-292C-A329-F50B5FA37A8F}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:52:08');
INSERT INTO `il_user_log` VALUES ('{88F6BDA3-AF2F-7FBF-E8AB-2FE0775388E9}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:51:16');
INSERT INTO `il_user_log` VALUES ('{8914107F-CA07-6429-E6AA-E5EBEECC162F}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:09:14');
INSERT INTO `il_user_log` VALUES ('{894C5BF4-8DCF-3570-FD0D-3B5C40C438AD}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:50:35');
INSERT INTO `il_user_log` VALUES ('{8951BF2C-18C8-BF1F-EDA9-58F621A4E881}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 11:50:38');
INSERT INTO `il_user_log` VALUES ('{899B4C60-22CD-BA86-95FE-6F28C72322AC}', '业务管理', '组管理', '组列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:52');
INSERT INTO `il_user_log` VALUES ('{89CFE426-1A80-E002-B102-F8F36726F241}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:26:34');
INSERT INTO `il_user_log` VALUES ('{89EA0833-C2CB-C9D1-7A54-1EF6B07FEFA6}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:02:17');
INSERT INTO `il_user_log` VALUES ('{89EB3F0D-F93B-956A-3FAC-9C6C0A352E84}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:51:05');
INSERT INTO `il_user_log` VALUES ('{89F5E147-AACB-E98E-F3D4-3BC8FA782BA4}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:16');
INSERT INTO `il_user_log` VALUES ('{8A00CC36-F8F0-01E8-5B53-1035F62A7354}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:06');
INSERT INTO `il_user_log` VALUES ('{8A3213F3-54DE-9873-447D-DF49F5D82CF7}', '业务管理', '单位管理', '修改子单位', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:44');
INSERT INTO `il_user_log` VALUES ('{8A6FF714-9327-D6EC-6073-A0A37B78E033}', '业务管理', '单位管理', '修改子单位', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:48');
INSERT INTO `il_user_log` VALUES ('{8B3671CB-BAEF-84D3-740B-E255B932F78D}', '系统管理', '角色管理', '权限明细查看', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:52:34');
INSERT INTO `il_user_log` VALUES ('{8B7899E7-686D-8EBA-61F3-6CAA856D0A1B}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:11:03');
INSERT INTO `il_user_log` VALUES ('{8B9CDB1F-0258-FA93-4F97-0CC2294DD7A4}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:29');
INSERT INTO `il_user_log` VALUES ('{8BC217DB-DC59-B75F-8F7C-E93BD776CB3E}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:10:09');
INSERT INTO `il_user_log` VALUES ('{8BC99A5D-B9E2-69B1-610D-D3CEB82C53C8}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:35');
INSERT INTO `il_user_log` VALUES ('{8BCEBAEC-BA12-C680-6A89-36F75B1A31D9}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:15:27');
INSERT INTO `il_user_log` VALUES ('{8C04C042-5643-64B4-696E-D5DB3FFA91A5}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:52:50');
INSERT INTO `il_user_log` VALUES ('{8C53792A-7BE6-93DD-BF05-1983029F345C}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:33:44');
INSERT INTO `il_user_log` VALUES ('{8C8C7700-2CC6-8A75-CB54-426DD59DF848}', '系统管理', '角色管理', '角色授权', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:21:09');
INSERT INTO `il_user_log` VALUES ('{8C8DD4B9-D683-83E5-0606-EAAB7FF488EC}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:26');
INSERT INTO `il_user_log` VALUES ('{8C97E516-9035-5480-E15C-A912E46B3E2C}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:53:37');
INSERT INTO `il_user_log` VALUES ('{8CC1C6EA-AAB9-DCA4-4833-014214E82B5E}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:22');
INSERT INTO `il_user_log` VALUES ('{8CE11AA7-9E59-5417-B38A-8ED8BF0BC3A2}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:43');
INSERT INTO `il_user_log` VALUES ('{8CE76C36-847F-9E9B-1691-66172B5E1168}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:39');
INSERT INTO `il_user_log` VALUES ('{8CEC021F-23FA-EE2D-CFBC-0F0F44317570}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:44:38');
INSERT INTO `il_user_log` VALUES ('{8CEF9BD4-5850-29FC-03D5-CE1CE1D81F5A}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:22:05');
INSERT INTO `il_user_log` VALUES ('{8D44DE06-9324-7AC4-1A10-1A681267F49D}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:19:15');
INSERT INTO `il_user_log` VALUES ('{8D65BEC2-2AB5-2F8C-D023-94B34B64F9DE}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 10:55:14');
INSERT INTO `il_user_log` VALUES ('{8D7F42DF-1E46-E8DC-966D-1E66175FF983}', '业务管理', '消防设备管理', '修改消防设备', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:04:52');
INSERT INTO `il_user_log` VALUES ('{8D9697B4-65CB-C85B-D79D-3B8650515E69}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:42:02');
INSERT INTO `il_user_log` VALUES ('{8DAB818B-B2A5-DF9B-AE8D-801464416666}', '业务管理', '定位套件管理', '删除', '失败', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 09:55:17');
INSERT INTO `il_user_log` VALUES ('{8DBD6589-CB50-3DB8-62D5-18E5330A3893}', '业务管理', '事件管理', '添加', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 10:03:19');
INSERT INTO `il_user_log` VALUES ('{8DBDFACF-62E0-FA54-7EBD-A54A6C80606A}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:00:30');
INSERT INTO `il_user_log` VALUES ('{8DC5991B-C668-2331-2C2B-7B73EA1B546B}', '业务管理', '定位套件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:21:02');
INSERT INTO `il_user_log` VALUES ('{8DEFA511-A80A-B1E0-906F-6E28A13929CE}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:14:43');
INSERT INTO `il_user_log` VALUES ('{8DF8BB24-2BC0-15F5-ABB5-0A897517C2A7}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:57');
INSERT INTO `il_user_log` VALUES ('{8E240702-C9BC-2927-60A7-C2CA00781DF4}', '业务管理', '组成员管理', '成员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:48:32');
INSERT INTO `il_user_log` VALUES ('{8E4BFB6C-6178-FD58-7678-EB3D2972F506}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:36:28');
INSERT INTO `il_user_log` VALUES ('{8E56F283-773D-5923-C337-7884CCFAFCAA}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 15:03:50');
INSERT INTO `il_user_log` VALUES ('{8E746FD8-7497-FE03-9F5A-AB7FE423DE20}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:09:43');
INSERT INTO `il_user_log` VALUES ('{8EA7E0BD-22F6-813C-E001-91841D618964}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:58');
INSERT INTO `il_user_log` VALUES ('{8EBD34B0-25F2-2BD5-A4F5-B54230B15343}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:28');
INSERT INTO `il_user_log` VALUES ('{8F0F2B21-4130-445F-BCAD-D4FC0D9F5A26}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:32');
INSERT INTO `il_user_log` VALUES ('{8F14B884-0348-6B31-1418-84A0446D7F93}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:21');
INSERT INTO `il_user_log` VALUES ('{8F37D79B-EBAD-6EDB-1131-E2E8C3848AEB}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:42:38');
INSERT INTO `il_user_log` VALUES ('{8F55E413-9C81-F0F6-7010-3C811930CE46}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:56');
INSERT INTO `il_user_log` VALUES ('{8F7144A1-D915-8BCB-5531-DBAE2BF3D442}', '业务管理', '现场终端管理', '修改', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:00:54');
INSERT INTO `il_user_log` VALUES ('{8FAEF3B8-9984-1D07-F69B-E07FEBB958A2}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:52:12');
INSERT INTO `il_user_log` VALUES ('{8FB5094A-0C36-04E1-75CB-EFF623FDF7E9}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 12:16:48');
INSERT INTO `il_user_log` VALUES ('{8FB80062-7E50-CB09-5069-559DE10348AF}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 11:47:05');
INSERT INTO `il_user_log` VALUES ('{8FE21C73-932C-2D90-946C-F35AFB8AA3BA}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:07:47');
INSERT INTO `il_user_log` VALUES ('{8FEAE278-905A-08C7-726A-C8E1F0371CBD}', '业务管理', '组成员管理', '成员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:39:57');
INSERT INTO `il_user_log` VALUES ('{8FF31AEA-B427-654E-3EC8-45F5C392620B}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 14:47:21');
INSERT INTO `il_user_log` VALUES ('{901DBBB6-E75A-4FE1-E5E1-BBF99DD6FF7C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:21:03');
INSERT INTO `il_user_log` VALUES ('{903B34CC-B08F-60D9-1F60-9D0FD4782D5E}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-12 11:53:54');
INSERT INTO `il_user_log` VALUES ('{9057E9A1-77BC-5086-378D-F2F9A6D75383}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:22:07');
INSERT INTO `il_user_log` VALUES ('{9097550E-33F1-7784-F024-AEBC3462325C}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:15');
INSERT INTO `il_user_log` VALUES ('{90ADAFA2-B151-440A-766F-61942A7F77D1}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:00');
INSERT INTO `il_user_log` VALUES ('{911252BD-D03C-72BA-48B3-2D14EC280727}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:31');
INSERT INTO `il_user_log` VALUES ('{91160292-89F7-8D10-0C97-E3D49D9C8A13}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:41:01');
INSERT INTO `il_user_log` VALUES ('{915782D1-37EA-37D2-F25C-2A79658BD12D}', '业务管理', '单位管理', '本单位信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:46:18');
INSERT INTO `il_user_log` VALUES ('{91CAC2B9-3864-282F-D704-D440AA5E964C}', '业务管理', '定位套件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:47');
INSERT INTO `il_user_log` VALUES ('{91CED16A-9BAB-7365-C10E-EC2C3B628BD3}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:56');
INSERT INTO `il_user_log` VALUES ('{91E9D7C9-89E0-31DE-4D9C-27383382921D}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:42:06');
INSERT INTO `il_user_log` VALUES ('{9218EF94-AC03-F61C-4104-EC386CB0A330}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:35');
INSERT INTO `il_user_log` VALUES ('{921CE14A-B597-829A-D1B3-3F5DEF1B888C}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 18:02:19');
INSERT INTO `il_user_log` VALUES ('{921D8804-F178-3B71-7344-898EC3FAD00E}', '业务管理', '组成员管理', '成员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:39');
INSERT INTO `il_user_log` VALUES ('{921FD347-4891-BB40-A8CE-9C6A4C15439D}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:28');
INSERT INTO `il_user_log` VALUES ('{9228A886-2EE3-F5D4-34A8-FB7622A30D89}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:58:12');
INSERT INTO `il_user_log` VALUES ('{92A100E3-756C-18AA-E19C-4A707CFBDA7F}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:25:21');
INSERT INTO `il_user_log` VALUES ('{92A430ED-3E14-FCFE-BDAA-957DDBC63C3A}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:40:12');
INSERT INTO `il_user_log` VALUES ('{9312D99C-5462-4685-F76E-92AB3338D56A}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:59');
INSERT INTO `il_user_log` VALUES ('{93489A53-FC18-1CC6-53F6-285329EF1A3D}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:08:31');
INSERT INTO `il_user_log` VALUES ('{93A3DC09-C8C9-9C7D-92B8-2A4763031138}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:02:29');
INSERT INTO `il_user_log` VALUES ('{93EB1C86-C8A5-C084-24E6-AF8D562621C9}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:27');
INSERT INTO `il_user_log` VALUES ('{9408D43A-DD04-C7F4-510D-7C45460B9761}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:04:05');
INSERT INTO `il_user_log` VALUES ('{9411E4AD-E1CD-87BA-09DE-A5C315917355}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:40:52');
INSERT INTO `il_user_log` VALUES ('{94302021-270D-BEF0-DC90-2979B51999DF}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:29');
INSERT INTO `il_user_log` VALUES ('{9466CB3F-8A96-266F-28DE-9A0634354F6E}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:45');
INSERT INTO `il_user_log` VALUES ('{9498C31A-0906-FAD3-265A-FBDDD7AFFAE4}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:10:11');
INSERT INTO `il_user_log` VALUES ('{94B84869-4F06-6826-E885-610A5799C8BF}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:47');
INSERT INTO `il_user_log` VALUES ('{94C3E460-E6C6-6D4D-E875-8970F999F822}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:36');
INSERT INTO `il_user_log` VALUES ('{94ECB1B1-0D97-FD05-02D7-A282CA936B1F}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:38:55');
INSERT INTO `il_user_log` VALUES ('{94EE6ED9-58A8-8466-0912-DD1C7DE89B74}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:54:00');
INSERT INTO `il_user_log` VALUES ('{95109E93-5EF4-67B9-D963-79BC68431137}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 18:36:29');
INSERT INTO `il_user_log` VALUES ('{9519DFCE-5E97-8784-597B-C6A384A2564D}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:35:15');
INSERT INTO `il_user_log` VALUES ('{952AC395-10F4-4012-9BF4-1FDF691D3A67}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:07:56');
INSERT INTO `il_user_log` VALUES ('{9532019C-F104-0BF6-EF45-E4C7594B2336}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:51:29');
INSERT INTO `il_user_log` VALUES ('{9577C420-29F3-97C6-9073-AD1823BD71DE}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 19:43:50');
INSERT INTO `il_user_log` VALUES ('{9581723E-A166-5FFA-A7A7-98A09AB1C527}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:40:52');
INSERT INTO `il_user_log` VALUES ('{95BEACBD-2704-EEAB-A223-F8F6B6D16312}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:09');
INSERT INTO `il_user_log` VALUES ('{95DB4221-BE5E-4777-D6B0-8DA095190B52}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:25');
INSERT INTO `il_user_log` VALUES ('{95DF8D73-7ADA-22C7-EE33-07B197F09FA6}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:38:58');
INSERT INTO `il_user_log` VALUES ('{9627AD7F-1FBE-69E7-D022-BF3E6DCFF1FC}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:21:26');
INSERT INTO `il_user_log` VALUES ('{963393FB-F7B9-6F8F-194F-955C95F42B61}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:42:11');
INSERT INTO `il_user_log` VALUES ('{9653D5A2-736D-C84F-AAEE-CC4073E1F781}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:34');
INSERT INTO `il_user_log` VALUES ('{965F2C5C-81D7-DFD1-9D33-AE374533EBE9}', '系统管理', '节点管理', '保存', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:30:45');
INSERT INTO `il_user_log` VALUES ('{9667C900-8192-3E34-DD01-1D34E631769B}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:47:09');
INSERT INTO `il_user_log` VALUES ('{96B37FAA-A494-2B7F-D6DF-C4580BE8620A}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:46');
INSERT INTO `il_user_log` VALUES ('{96B68289-9C77-E62E-84CA-B8FE59C05C0C}', '业务管理', '楼层管理', '楼层列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:03:03');
INSERT INTO `il_user_log` VALUES ('{96CDB4F9-E506-B308-D4D0-295B938E026B}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:58:23');
INSERT INTO `il_user_log` VALUES ('{96E63437-1515-8FA9-F152-8573C62F1509}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:24:22');
INSERT INTO `il_user_log` VALUES ('{96EE7A51-577F-9065-DC84-513DDCE48138}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 14:51:08');
INSERT INTO `il_user_log` VALUES ('{9706034E-054B-966F-E092-E7B55A1E17BE}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:08:56');
INSERT INTO `il_user_log` VALUES ('{971173F1-CF48-ADEC-87DF-F0BD5F30B5DF}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 11:13:23');
INSERT INTO `il_user_log` VALUES ('{9738DC39-583B-0F34-8DFB-DBCBAD8D2591}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:31:20');
INSERT INTO `il_user_log` VALUES ('{974DD446-7EFC-65C5-39E4-754B9C7602C0}', '业务管理', '楼层管理', '添加楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:41:08');
INSERT INTO `il_user_log` VALUES ('{9758E4C3-1036-2A77-3A09-F3929D9F1AE1}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:21');
INSERT INTO `il_user_log` VALUES ('{9765D47C-7DED-C71E-ABDC-3FDC98A2E96C}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:37:30');
INSERT INTO `il_user_log` VALUES ('{976C0CF5-F5F4-162C-F37B-B1FD6449734A}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:12');
INSERT INTO `il_user_log` VALUES ('{977AB956-E2A3-2270-0EF3-9B78AC2A886B}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:56');
INSERT INTO `il_user_log` VALUES ('{978666F0-2E9F-D0D2-A69E-806A05AD0948}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:35:15');
INSERT INTO `il_user_log` VALUES ('{97CC314E-A023-B08B-6019-D595A657D30D}', '系统管理', '角色管理', '权限明细', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:33:27');
INSERT INTO `il_user_log` VALUES ('{97FF3573-C9C2-9AF9-4A62-A7C93F2B29C2}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:33');
INSERT INTO `il_user_log` VALUES ('{9853A3FE-F294-6044-3B0C-516EBF5854E6}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:37:08');
INSERT INTO `il_user_log` VALUES ('{9879100F-D48F-0622-2226-E8118DC92569}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:37:24');
INSERT INTO `il_user_log` VALUES ('{9893E8DB-E8A2-FCA1-43EC-57F529CF9DCC}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:15');
INSERT INTO `il_user_log` VALUES ('{98F61DEC-15F2-3432-6942-E2119F8B7389}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:09:57');
INSERT INTO `il_user_log` VALUES ('{990A9C42-6E74-3FEB-5F52-299574979C3B}', '业务管理', '现场终端管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:27:19');
INSERT INTO `il_user_log` VALUES ('{9920B5B6-6872-B8BD-8117-8B88C304BE9E}', '业务管理', '现场终端管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:56');
INSERT INTO `il_user_log` VALUES ('{994FB7B6-9011-E7B4-5FBF-6972620C60ED}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:58:10');
INSERT INTO `il_user_log` VALUES ('{9968C3A5-472E-02E0-B30C-1AF888BE8F9D}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:09:44');
INSERT INTO `il_user_log` VALUES ('{997789BC-95EB-4D68-9DCF-9D7FA0083BDD}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:35:23');
INSERT INTO `il_user_log` VALUES ('{9982D11C-A141-43E9-5F96-C044348E59B5}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:09:31');
INSERT INTO `il_user_log` VALUES ('{998756FE-F961-77EC-3419-AC3BBF6F19EB}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:59');
INSERT INTO `il_user_log` VALUES ('{999DFC85-E734-E3F0-41DE-25CAC9D422AC}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:19:41');
INSERT INTO `il_user_log` VALUES ('{99C0BF70-C991-1927-4C31-679558039101}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:25:15');
INSERT INTO `il_user_log` VALUES ('{99CAFD9F-47B5-04A6-C2FA-D28C6CC46108}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:52:31');
INSERT INTO `il_user_log` VALUES ('{9A379217-D40C-FF53-FEC0-EEA1F6206CE7}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:47:32');
INSERT INTO `il_user_log` VALUES ('{9A42FA4B-7516-9DB1-6F45-040EDD76747F}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:35');
INSERT INTO `il_user_log` VALUES ('{9AB6AB7D-EAE8-DF62-46E8-B49815E5C5C6}', '业务管理', '单位管理', '本单位信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:35');
INSERT INTO `il_user_log` VALUES ('{9ADA18D4-1920-B1A7-D594-B6268F7A1B31}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:09:19');
INSERT INTO `il_user_log` VALUES ('{9AE31F4C-F987-B845-6F00-FB5C072F2AF7}', '系统管理', '节点管理', '节点列表', '失败', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:37:01');
INSERT INTO `il_user_log` VALUES ('{9B180048-D08F-09C9-BC50-D0C6C3A3B38C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:18');
INSERT INTO `il_user_log` VALUES ('{9B3CCB4D-C9B4-0C78-DCFE-1D863CE1EB66}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:07:41');
INSERT INTO `il_user_log` VALUES ('{9B81373B-9BF8-CFD3-CABD-BD491BAAF063}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 12:00:17');
INSERT INTO `il_user_log` VALUES ('{9BB6DE42-F9B8-F8A7-1406-22C3BA1DCA82}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:35:05');
INSERT INTO `il_user_log` VALUES ('{9C10BC44-3CF5-8B0B-BCC2-A3CBEFAD1209}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:23');
INSERT INTO `il_user_log` VALUES ('{9C70F1EE-E7B4-9D46-CD0E-735223B66A97}', '系统管理', '用户管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-22 18:38:10');
INSERT INTO `il_user_log` VALUES ('{9C75DC8E-A873-EFE5-505C-12A68B1E0824}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:56:11');
INSERT INTO `il_user_log` VALUES ('{9CA47D02-8139-313B-DC70-043CAD76AF73}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 17:20:37');
INSERT INTO `il_user_log` VALUES ('{9CB659F9-598A-215F-1894-E2099A0F7855}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:23');
INSERT INTO `il_user_log` VALUES ('{9CCB1772-44C5-798D-A3C2-3B2B8691BBE3}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 12:00:16');
INSERT INTO `il_user_log` VALUES ('{9CD75F4B-4A1A-2EA2-5F9A-D627D67AC79F}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:39:18');
INSERT INTO `il_user_log` VALUES ('{9CE984F2-3941-747B-A4A1-E489530DDD5A}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:21');
INSERT INTO `il_user_log` VALUES ('{9CF15163-BF9E-3264-C23C-F163AD29C025}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:53:42');
INSERT INTO `il_user_log` VALUES ('{9D27DD7D-7A61-406B-D537-4525F994096D}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:46:15');
INSERT INTO `il_user_log` VALUES ('{9D65D809-6DB2-B8BF-5406-E74DE6AF01CD}', '系统管理', '节点管理', '节点列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:30:21');
INSERT INTO `il_user_log` VALUES ('{9D73B426-A599-872D-E512-1FC983D39AFF}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:03');
INSERT INTO `il_user_log` VALUES ('{9D872549-C0A3-8F30-847F-C8B54AB5F41E}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:43');
INSERT INTO `il_user_log` VALUES ('{9D9DD04F-8B40-3D37-46B3-6915F2FB36B5}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:02:27');
INSERT INTO `il_user_log` VALUES ('{9DA4CEA4-1CBF-117C-FAC7-36A98D5A2986}', '业务管理', '组管理', '添加组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:09:43');
INSERT INTO `il_user_log` VALUES ('{9DA8818E-FEA8-07FD-1064-B40F0652ABAE}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:09:46');
INSERT INTO `il_user_log` VALUES ('{9DA96BB6-967F-932E-FB11-8D8B33A01E74}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:32:57');
INSERT INTO `il_user_log` VALUES ('{9DB842D5-1643-E0EA-BCB0-181E0C4ED240}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:48:03');
INSERT INTO `il_user_log` VALUES ('{9DCCAA74-FC12-D87D-8FEC-00803EAC2B1E}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:26:58');
INSERT INTO `il_user_log` VALUES ('{9DEA93B9-A203-5D22-9999-C19047907B83}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:45');
INSERT INTO `il_user_log` VALUES ('{9E66A30A-4559-0AE2-B977-87DA61472A6D}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:38');
INSERT INTO `il_user_log` VALUES ('{9E67003A-7813-AC78-B889-E266929ACA4C}', '业务管理', '楼层管理', '楼层列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:37');
INSERT INTO `il_user_log` VALUES ('{9E86A324-CC91-23FC-07EE-CE6ADD5E3985}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:26');
INSERT INTO `il_user_log` VALUES ('{9E9C9456-5829-1C22-71F6-5026E7305F38}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:02:31');
INSERT INTO `il_user_log` VALUES ('{9EC3D8F3-C106-45AD-6888-7118403AC790}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:45');
INSERT INTO `il_user_log` VALUES ('{9ED24729-2D32-9812-7F76-95DA4EE95815}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:14:45');
INSERT INTO `il_user_log` VALUES ('{9EE03F85-8677-BF32-2682-66E9714529C9}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:10:30');
INSERT INTO `il_user_log` VALUES ('{9F2B9B9D-1252-F2E6-CD8F-EAE1D36EF797}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:18:54');
INSERT INTO `il_user_log` VALUES ('{9F355902-DE11-9759-72E9-F39B8B16E54C}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 10:10:14');
INSERT INTO `il_user_log` VALUES ('{9F375499-FA3C-4BF3-131E-6541A22E46E1}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:20');
INSERT INTO `il_user_log` VALUES ('{9F60846D-C521-9A8D-7484-E25081D11325}', '业务管理', '楼层管理', '添加楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:41:38');
INSERT INTO `il_user_log` VALUES ('{9F899CE2-86B8-5FB6-02F4-422C267EBF78}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:55:44');
INSERT INTO `il_user_log` VALUES ('{9FAB4C27-7289-AE80-54CD-D9F64F2532D6}', '业务管理', '人员管理', '修改人员信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:10:33');
INSERT INTO `il_user_log` VALUES ('{9FBB1C13-3F0E-0B45-C6F0-D80D5E2700E8}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:55');
INSERT INTO `il_user_log` VALUES ('{9FF8E612-D305-C599-FF75-1105CCE3EF88}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:28:44');
INSERT INTO `il_user_log` VALUES ('{A003A7D8-BA3B-AED0-97B0-5E813F65B764}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:06:50');
INSERT INTO `il_user_log` VALUES ('{A0067843-FC86-796E-B5CF-DC8D903D2D86}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:35');
INSERT INTO `il_user_log` VALUES ('{A011FB0E-13F1-ED19-2946-65DF28A4FADB}', '系统管理', '角色管理', '权限明细', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:46:13');
INSERT INTO `il_user_log` VALUES ('{A042BAFC-80F4-67B7-E61E-4481C3EC5C89}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:39:55');
INSERT INTO `il_user_log` VALUES ('{A0AC4346-86B1-B181-8CB3-603A61AB73F9}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:40:35');
INSERT INTO `il_user_log` VALUES ('{A0E1A6D2-CB40-15F4-FF15-1E784E23EF08}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 14:51:09');
INSERT INTO `il_user_log` VALUES ('{A0F2E9B5-A0DB-6877-39BA-8E1AC621C0DC}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:09:33');
INSERT INTO `il_user_log` VALUES ('{A1271313-3043-D3DF-D008-82C80F07C032}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:56:01');
INSERT INTO `il_user_log` VALUES ('{A135360F-E0C9-5623-8400-ACA44C1052D4}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:47');
INSERT INTO `il_user_log` VALUES ('{A15858A7-322A-9F15-48E3-1BA76F18D050}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:42:03');
INSERT INTO `il_user_log` VALUES ('{A159DCFD-470B-1F36-26B9-7879D635A8B6}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:06:52');
INSERT INTO `il_user_log` VALUES ('{A167BDED-6209-AB0B-EB65-29F1245E0991}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:24');
INSERT INTO `il_user_log` VALUES ('{A1884434-A737-27FE-2763-DF7E4A0E2F6F}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 15:03:49');
INSERT INTO `il_user_log` VALUES ('{A192653D-CBF3-72A8-5B6D-85D723D7A02D}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:34:23');
INSERT INTO `il_user_log` VALUES ('{A192CDA6-E7B3-E716-698F-DBF7BB636CE6}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:48:23');
INSERT INTO `il_user_log` VALUES ('{A19A63C6-DB8C-A36C-A551-EB47ACF1E7A0}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:09:38');
INSERT INTO `il_user_log` VALUES ('{A1AA6ECC-C511-BBB3-564B-057116D7638F}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:01');
INSERT INTO `il_user_log` VALUES ('{A1B94F04-7221-998C-0D52-777AD0972CAA}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:25');
INSERT INTO `il_user_log` VALUES ('{A1D32C8B-935C-BC00-4E50-955F7B639359}', '业务管理', '单位管理', '子单位列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 09:54:50');
INSERT INTO `il_user_log` VALUES ('{A2096996-F9F7-53F9-1C57-159196BB2173}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:20:55');
INSERT INTO `il_user_log` VALUES ('{A2264F10-84EF-7281-09DD-A5E894484AFF}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:32');
INSERT INTO `il_user_log` VALUES ('{A25C56FC-CFE9-854D-1FD5-8602695F99C6}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:14:57');
INSERT INTO `il_user_log` VALUES ('{A2718C07-9AA1-7A85-2CD7-22CC1424A2E6}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:08');
INSERT INTO `il_user_log` VALUES ('{A289E807-75DD-57B3-614B-CB36E2D709D3}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:31');
INSERT INTO `il_user_log` VALUES ('{A292E5E2-745B-A321-09C2-3BBECC031FAD}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:08:36');
INSERT INTO `il_user_log` VALUES ('{A2C45244-24EA-645C-28F8-C63191841B8A}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:56:17');
INSERT INTO `il_user_log` VALUES ('{A2DCD1D1-7D41-0E48-8FB6-4BE1A9D18A25}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:12:30');
INSERT INTO `il_user_log` VALUES ('{A2E0E353-2C16-0796-789F-E7BE91978B1F}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:27');
INSERT INTO `il_user_log` VALUES ('{A2F725C3-36B0-29AA-026C-1EC426504BEA}', '系统管理', '角色管理', '权限明细', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:41:11');
INSERT INTO `il_user_log` VALUES ('{A301EFA6-7D28-D76E-3741-7966B8D51C3A}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:33:25');
INSERT INTO `il_user_log` VALUES ('{A3069DE0-ED08-5831-C170-EE01836F6D80}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:35:06');
INSERT INTO `il_user_log` VALUES ('{A3263551-F87F-84C9-89C4-E1122C0B1559}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:03:17');
INSERT INTO `il_user_log` VALUES ('{A32BA6ED-80B3-F629-1A7C-C24E26706AB3}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:36:52');
INSERT INTO `il_user_log` VALUES ('{A336AE8B-D137-818C-3E48-E86CC3D2D60D}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:10:12');
INSERT INTO `il_user_log` VALUES ('{A33F250E-51EC-F649-4E88-1754ADF24E53}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:56');
INSERT INTO `il_user_log` VALUES ('{A37B3E80-06DF-B7B6-D4D0-09897A75363E}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '10.0.2.111', '2017-09-21 19:40:41');
INSERT INTO `il_user_log` VALUES ('{A39582CA-CFA4-1842-3791-E842E3314B0C}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:08:35');
INSERT INTO `il_user_log` VALUES ('{A39BF133-5FC6-B480-2C28-7393DEF6FE07}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:40');
INSERT INTO `il_user_log` VALUES ('{A39F9895-F074-E325-A2C2-BD25DBB3A356}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:35');
INSERT INTO `il_user_log` VALUES ('{A3F63AA1-9711-502B-16FA-61ADEAA0EEDE}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:39');
INSERT INTO `il_user_log` VALUES ('{A40107ED-30F6-CB25-636C-8FA408946224}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:42:07');
INSERT INTO `il_user_log` VALUES ('{A40704AB-8367-5CE9-33D9-F18305973A62}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:49');
INSERT INTO `il_user_log` VALUES ('{A4212AAB-BE77-EBA1-9E07-702BA47B8018}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:48');
INSERT INTO `il_user_log` VALUES ('{A449D55D-2E72-ECD3-C026-DECCC5F2E31C}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 10:55:48');
INSERT INTO `il_user_log` VALUES ('{A4666C32-E114-C5AD-BBF2-3E1B70CA2CAE}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:48:50');
INSERT INTO `il_user_log` VALUES ('{A4AAAF88-C7D0-76EA-B46D-636A7D6D3254}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 10:59:12');
INSERT INTO `il_user_log` VALUES ('{A4CEFEE3-D62A-8E91-7A2D-73917122B801}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:32:45');
INSERT INTO `il_user_log` VALUES ('{A4D22A3D-2561-EB11-5DCE-2EB923D3AA88}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:55:32');
INSERT INTO `il_user_log` VALUES ('{A502D786-DE0E-9D09-B693-0DFE65F5E63D}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:48:19');
INSERT INTO `il_user_log` VALUES ('{A50D2122-5AF4-6F15-2DE2-0D5A22C69952}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:56:02');
INSERT INTO `il_user_log` VALUES ('{A529ABCC-412B-38E5-DD1F-64307A3A62A0}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:08:14');
INSERT INTO `il_user_log` VALUES ('{A5636F44-06E7-0739-CC97-98E2BBF07654}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:42:04');
INSERT INTO `il_user_log` VALUES ('{A56C087A-572F-56B5-7899-02B6CD2E602C}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:21');
INSERT INTO `il_user_log` VALUES ('{A58A9F80-4826-9FC5-EC61-D0F48D6D6EF8}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 18:48:34');
INSERT INTO `il_user_log` VALUES ('{A592F27D-E78F-FEAD-2B1D-C05E526542CD}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:06');
INSERT INTO `il_user_log` VALUES ('{A5D0DC0F-1A0F-6401-CD29-ED6E83F1A562}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:35:50');
INSERT INTO `il_user_log` VALUES ('{A5E54E9B-8F6C-9072-71FB-9CFDA2D00517}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:20:42');
INSERT INTO `il_user_log` VALUES ('{A5FBB910-73F9-BD7D-0E58-9C704F8B2CC4}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:25:09');
INSERT INTO `il_user_log` VALUES ('{A60524C7-8074-DAAD-FC49-02F3FD1DEA85}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:30');
INSERT INTO `il_user_log` VALUES ('{A6443705-FA07-AD87-05B9-8F3B47E23487}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:00:46');
INSERT INTO `il_user_log` VALUES ('{A6500DEB-6219-AAAE-0F4B-75A01AF780E3}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:40:31');
INSERT INTO `il_user_log` VALUES ('{A67C7C37-20B6-450F-FEB4-404714AF04C4}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:48');
INSERT INTO `il_user_log` VALUES ('{A6D4D369-8786-893B-5B85-BFF02D072677}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:08:02');
INSERT INTO `il_user_log` VALUES ('{A6F1EFCA-A237-10E4-7D2D-E5CDF2BE4FFB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:51');
INSERT INTO `il_user_log` VALUES ('{A78919E9-3239-DE7A-8B83-B13B701CFA90}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:54:58');
INSERT INTO `il_user_log` VALUES ('{A78981E2-1062-DEA8-A3EF-CDC3179BE0BB}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:03:54');
INSERT INTO `il_user_log` VALUES ('{A7998C67-B673-094D-D10B-0D7E23A198F8}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-16 16:40:52');
INSERT INTO `il_user_log` VALUES ('{A79BAF05-CD53-E092-D732-100EA335EFDB}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:42:05');
INSERT INTO `il_user_log` VALUES ('{A7A91729-93AC-DBBC-CA5B-470234085182}', '业务管理', '单位管理', '子单位列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:02:28');
INSERT INTO `il_user_log` VALUES ('{A7DB3443-A9AD-6051-BCF2-670075091986}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:54:00');
INSERT INTO `il_user_log` VALUES ('{A81219A6-3EF6-D4AD-CFA4-C7B9E9F65FE1}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:21:06');
INSERT INTO `il_user_log` VALUES ('{A851223B-AA93-9A28-5487-8CFBA444CC3F}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 20:09:43');
INSERT INTO `il_user_log` VALUES ('{A8A2FD0D-49E1-9224-FF96-85D09DAA9F5E}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:32');
INSERT INTO `il_user_log` VALUES ('{A8EAFE3D-CC90-CC8B-1985-ADE7C3AC56B3}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:40:50');
INSERT INTO `il_user_log` VALUES ('{A8F3BE38-6856-850E-81BF-4C1021BC598A}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:47:12');
INSERT INTO `il_user_log` VALUES ('{A936B570-AE25-65D5-E31A-70FD5A6AA1B7}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:00:05');
INSERT INTO `il_user_log` VALUES ('{A94C3821-FA38-5E08-4ABC-703FE6540478}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:09:10');
INSERT INTO `il_user_log` VALUES ('{A94EA1C1-8A2E-A705-A56F-421D3C12146D}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:44');
INSERT INTO `il_user_log` VALUES ('{A957F4FA-86EF-2C42-96B3-23A9EFA192E8}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:10:00');
INSERT INTO `il_user_log` VALUES ('{A96A8A30-A734-7725-8802-EC2F56A0A515}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-19 12:46:29');
INSERT INTO `il_user_log` VALUES ('{A9936EE9-1D7E-5023-9A24-D4BC5372561B}', '系统管理', '角色管理', '权限明细', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:22:41');
INSERT INTO `il_user_log` VALUES ('{A9B36371-6FA6-8C9E-D3A1-06D380887BF7}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:40');
INSERT INTO `il_user_log` VALUES ('{A9B4AD95-5991-B8A4-1937-5AD5199CDE69}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 12:16:39');
INSERT INTO `il_user_log` VALUES ('{A9C08FF7-28E0-8634-650D-3594DF9FA2E7}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 18:34:48');
INSERT INTO `il_user_log` VALUES ('{A9DB00D1-2D47-1570-FCCE-9B2BE4FC807F}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:40:24');
INSERT INTO `il_user_log` VALUES ('{A9EB5B83-3231-203C-53B6-795960F31828}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:38');
INSERT INTO `il_user_log` VALUES ('{A9EF133E-E3E1-3313-B790-99715642E2BA}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:54:45');
INSERT INTO `il_user_log` VALUES ('{AA5E848D-5E6B-CD35-EA66-F5A7F13E1E7C}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 11:13:20');
INSERT INTO `il_user_log` VALUES ('{AA8F04A2-7338-4466-589C-4F0805902130}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:58:07');
INSERT INTO `il_user_log` VALUES ('{AAA743F5-88CF-30EA-D5DE-BEE987E81A90}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:20:04');
INSERT INTO `il_user_log` VALUES ('{AAE4BD7B-6DE2-6709-0866-D354A5A062F7}', '业务管理', '首页', '主面板', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:28:55');
INSERT INTO `il_user_log` VALUES ('{AB4CBB62-635A-A24D-95CC-A5C2AD961059}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:34:01');
INSERT INTO `il_user_log` VALUES ('{AB649422-A5D5-5E40-AE6E-071537F273D2}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:27');
INSERT INTO `il_user_log` VALUES ('{AB7DBBC6-A07B-A0D9-401E-EC0B5A461953}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 18:53:19');
INSERT INTO `il_user_log` VALUES ('{ABCAE05B-481F-A7A8-44E1-02AD1F28C844}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 11:13:21');
INSERT INTO `il_user_log` VALUES ('{ABDF27A7-90F2-E0B6-BE9E-A9DE796CDBC0}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:32');
INSERT INTO `il_user_log` VALUES ('{AC08F907-B3AB-61BF-74C0-67CAD9078BDF}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 18:36:28');
INSERT INTO `il_user_log` VALUES ('{AC124963-EAEB-D67F-193C-C94F968941B4}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:43:57');
INSERT INTO `il_user_log` VALUES ('{AC44405A-DF06-406D-9782-DDE765DEE595}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:42');
INSERT INTO `il_user_log` VALUES ('{AC6CAE06-9E03-91B9-6432-111A8C053027}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 14:51:11');
INSERT INTO `il_user_log` VALUES ('{AC7E532E-EE36-BE3F-6A29-7A5C8B492F4C}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 11:13:11');
INSERT INTO `il_user_log` VALUES ('{AC880CE6-0DD3-5329-8EC1-C80689060A08}', '系统管理', '节点管理', '保存', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:30:35');
INSERT INTO `il_user_log` VALUES ('{AC8936E8-63FA-F114-0298-00407697B4AA}', '业务管理', '单位管理', '本单位信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 09:54:47');
INSERT INTO `il_user_log` VALUES ('{ACBE14DD-291D-2F17-D570-81C00DA60B42}', '业务管理', '人员管理', '修改人员信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:26');
INSERT INTO `il_user_log` VALUES ('{ACBF2E15-4311-3348-4DA5-F81610E2BB2D}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:46');
INSERT INTO `il_user_log` VALUES ('{ACF5B207-FC7E-818A-DDD3-E68449B67006}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:45:41');
INSERT INTO `il_user_log` VALUES ('{ACFDEAD5-C9D4-5802-6999-164741E84FA5}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:41:09');
INSERT INTO `il_user_log` VALUES ('{ACFF21DB-3DEF-63F9-C373-16584839DE6C}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:42:22');
INSERT INTO `il_user_log` VALUES ('{AD027AB5-A729-C6B6-7819-F9FF89F834DB}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:07:53');
INSERT INTO `il_user_log` VALUES ('{AD40D38A-9059-6A8A-20AC-FDB1D2643A82}', '业务管理', '单位管理', '修改子单位', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:02:00');
INSERT INTO `il_user_log` VALUES ('{AD57EFE6-01D9-5FD7-621E-B10D5F6D8173}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:51:56');
INSERT INTO `il_user_log` VALUES ('{AD75688B-F751-565A-5CB9-7D731A55E570}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:22');
INSERT INTO `il_user_log` VALUES ('{AD9D163A-0C96-1C0C-AF4C-27167D5D2562}', '系统管理', '用户管理', '修改密码', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:42:05');
INSERT INTO `il_user_log` VALUES ('{ADAE6A52-2C8C-61B8-1A36-BC69EFBF3E8A}', '业务管理', '单位管理', '修改子单位', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:41');
INSERT INTO `il_user_log` VALUES ('{ADBB9C01-8322-B133-79BD-85C115C93A4F}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:21');
INSERT INTO `il_user_log` VALUES ('{ADBCC34C-0EC0-6C92-EBEE-C69D947D0172}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 18:36:19');
INSERT INTO `il_user_log` VALUES ('{ADCF7AA6-425F-83C3-E5CA-B47628447370}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:43:04');
INSERT INTO `il_user_log` VALUES ('{ADDF480D-55F6-D526-D5D7-454F5772EC55}', '系统管理', '用户管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:28:39');
INSERT INTO `il_user_log` VALUES ('{AE007AC5-4180-37C3-AD22-AD3F3C5B5471}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:15:26');
INSERT INTO `il_user_log` VALUES ('{AE040E86-AA26-D1F5-C00A-3095F077F477}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 15:11:33');
INSERT INTO `il_user_log` VALUES ('{AE0A6D45-01BC-46A1-81F7-BB6E4BD66D99}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:47');
INSERT INTO `il_user_log` VALUES ('{AE1DD263-7E6F-1410-0D16-4305E0B209E7}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:47:25');
INSERT INTO `il_user_log` VALUES ('{AE3F30DC-C84D-5C17-B7A1-2DB2AB0B5D3C}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:46');
INSERT INTO `il_user_log` VALUES ('{AE5C8ED3-71DC-A7A2-976D-1D4851E63BDB}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:48:45');
INSERT INTO `il_user_log` VALUES ('{AE675F0A-D256-1C6D-782E-7CDC2A6F9442}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:47');
INSERT INTO `il_user_log` VALUES ('{AE8653EF-FE24-2F08-C801-F5F601960C7C}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:28');
INSERT INTO `il_user_log` VALUES ('{AE8D5F64-E2F8-7F78-ADF0-4D929DD66146}', '系统管理', '角色管理', '角色授权', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:46:31');
INSERT INTO `il_user_log` VALUES ('{AEB0823B-B80A-AAD2-7F2C-9DD7B71F12CC}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 14:43:57');
INSERT INTO `il_user_log` VALUES ('{AEB4A42F-1355-36C8-3316-A33FFF218C89}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:23:03');
INSERT INTO `il_user_log` VALUES ('{AED27B36-9BB4-9933-B988-A03C58F02706}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:32:26');
INSERT INTO `il_user_log` VALUES ('{AF67D6A0-1C5D-72BA-07CD-C4BB8E0538BB}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:34:18');
INSERT INTO `il_user_log` VALUES ('{AF8CCA72-E43C-0772-1D37-2C5A1D3CDFBE}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:48:10');
INSERT INTO `il_user_log` VALUES ('{AFF021CC-A985-F4E5-4A26-32875337F266}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:26');
INSERT INTO `il_user_log` VALUES ('{AFF63C01-3870-D423-26F0-907839080BA8}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:02');
INSERT INTO `il_user_log` VALUES ('{B00F003B-4B28-294A-1D50-B264E22B56E4}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:22:59');
INSERT INTO `il_user_log` VALUES ('{B0147F0E-A64B-65CA-7162-FEA367A6CC7C}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:35');
INSERT INTO `il_user_log` VALUES ('{B0B94F8F-7458-9E69-A75F-6DECB5C372D8}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:41:00');
INSERT INTO `il_user_log` VALUES ('{B113E584-2D3D-E98E-C8A3-28128FDA9302}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:31');
INSERT INTO `il_user_log` VALUES ('{B123D826-D08D-765E-489F-FD7FB5F1463E}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:35');
INSERT INTO `il_user_log` VALUES ('{B12DC642-3820-66B0-A595-1C8721934B9B}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:40:02');
INSERT INTO `il_user_log` VALUES ('{B12FB55C-F49C-B8DD-290C-FDB644375840}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:36:36');
INSERT INTO `il_user_log` VALUES ('{B132AF9B-C7D8-1453-066F-DBA3B03112BE}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:05:00');
INSERT INTO `il_user_log` VALUES ('{B151EEEF-B855-3083-27D7-E36B12C1CBE7}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:54:40');
INSERT INTO `il_user_log` VALUES ('{B1823483-9221-BA13-529B-3D06990ED4CC}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:06:24');
INSERT INTO `il_user_log` VALUES ('{B187713F-CDA1-DD5C-248A-7EC997AD0220}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:00:08');
INSERT INTO `il_user_log` VALUES ('{B190A1A7-4AB9-5EA8-4EF2-D644A35A44B3}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 18:48:30');
INSERT INTO `il_user_log` VALUES ('{B1D33405-5AC3-09A9-C1D4-E0FBDC88472D}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 18:00:12');
INSERT INTO `il_user_log` VALUES ('{B1D5DD8A-015E-70D5-20D5-4C4E77F90155}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:25:29');
INSERT INTO `il_user_log` VALUES ('{B1DF05A5-3C26-5CE7-405B-C20679279916}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:21');
INSERT INTO `il_user_log` VALUES ('{B1E583AF-BBDB-022E-8142-E6B59E1A067D}', '业务管理', '楼层管理', '添加楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:42:18');
INSERT INTO `il_user_log` VALUES ('{B22BA85D-828F-557D-71CD-6F64E9C6681C}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:32:15');
INSERT INTO `il_user_log` VALUES ('{B23EDB95-72DF-903D-84C5-4BB56AE52E18}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:47:28');
INSERT INTO `il_user_log` VALUES ('{B25A7EBB-B808-235E-4B41-8E2B03A4C102}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:39');
INSERT INTO `il_user_log` VALUES ('{B266F08B-16DB-6C0D-6559-760DD9000F04}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:15');
INSERT INTO `il_user_log` VALUES ('{B29AEA82-E89F-4F78-A29F-FD4FEC89FBC0}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:05:01');
INSERT INTO `il_user_log` VALUES ('{B2DEC648-661F-16F6-92E7-E17EF2245061}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:27');
INSERT INTO `il_user_log` VALUES ('{B2E71CCC-9D1B-7C8E-62C7-1328F9F461E1}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:40:27');
INSERT INTO `il_user_log` VALUES ('{B2FDE0E9-CEE3-137E-7516-9310BA3C3CD8}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:11:30');
INSERT INTO `il_user_log` VALUES ('{B32B7436-887A-C7B9-8275-CE702E196294}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:32:20');
INSERT INTO `il_user_log` VALUES ('{B33CD99A-424B-A109-07EA-F76E099E34DB}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:20');
INSERT INTO `il_user_log` VALUES ('{B355ECD5-1378-4C0C-B868-B68EE78A5F9A}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:53:34');
INSERT INTO `il_user_log` VALUES ('{B377DAD8-5F00-4FC5-6526-5CD833E9A43F}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:48');
INSERT INTO `il_user_log` VALUES ('{B37DFE7A-5B61-5424-F9A7-A8915E71E962}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:32:08');
INSERT INTO `il_user_log` VALUES ('{B39F6761-94F0-B23D-3B77-18FA11B250B4}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:23');
INSERT INTO `il_user_log` VALUES ('{B3B6633D-D8C1-5129-09EF-3524EF129563}', '业务管理', '单位管理', '本单位信息', '失败', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:20:34');
INSERT INTO `il_user_log` VALUES ('{B3C77CF6-01B4-E283-5779-2CB5021DACA1}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:09:09');
INSERT INTO `il_user_log` VALUES ('{B403BD15-7635-0F29-26F2-6EF6662A9B65}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 20:09:30');
INSERT INTO `il_user_log` VALUES ('{B4101087-7DAC-F30C-9065-1E280E4EDBC3}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:50');
INSERT INTO `il_user_log` VALUES ('{B4136084-1301-4D9F-EB3A-B3C8EAE12EFC}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:54');
INSERT INTO `il_user_log` VALUES ('{B4148A33-EAA2-0D07-53F6-04DB1801AD0B}', '系统管理', '用户日志', '日志列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:15:53');
INSERT INTO `il_user_log` VALUES ('{B427287B-15FC-6B20-DA3D-6E23E08D39C9}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:04:17');
INSERT INTO `il_user_log` VALUES ('{B442E817-1E59-AD3C-0FFE-0F20928BA204}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:08');
INSERT INTO `il_user_log` VALUES ('{B4434459-6F60-67E5-40DB-19991BC97624}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:08:26');
INSERT INTO `il_user_log` VALUES ('{B489AE7F-8AED-CA02-709D-8DCDE359E7C0}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:22');
INSERT INTO `il_user_log` VALUES ('{B496938B-5C26-412E-FE4E-40F84373A8A3}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:41:38');
INSERT INTO `il_user_log` VALUES ('{B4CF4E26-75E2-C3E9-2B80-2A39F576C923}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:10:17');
INSERT INTO `il_user_log` VALUES ('{B518C413-16C8-B06B-B6E8-D7721F5D3DD1}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:55:59');
INSERT INTO `il_user_log` VALUES ('{B51F19C4-0BC6-D83F-8EEC-7A5780485564}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:37:09');
INSERT INTO `il_user_log` VALUES ('{B5257CFB-687C-F5CE-AA85-2B84E002B1F4}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:02:39');
INSERT INTO `il_user_log` VALUES ('{B5283392-D97C-701F-F24D-C16431B45AAE}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:09:54');
INSERT INTO `il_user_log` VALUES ('{B5408757-1C04-5B5B-0582-481F59A7EA80}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:05:18');
INSERT INTO `il_user_log` VALUES ('{B54D4A59-C9B3-D3DD-750D-40D35ED58331}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:20:49');
INSERT INTO `il_user_log` VALUES ('{B55CCB33-A45E-A528-6860-5E45FA24C5E3}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:22:50');
INSERT INTO `il_user_log` VALUES ('{B5E4DE00-67FE-5A07-D447-8E90997E1BFA}', '业务管理', '定位套件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:20:58');
INSERT INTO `il_user_log` VALUES ('{B6050BC8-3841-93C7-8106-3C3C70FA7F83}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:00:52');
INSERT INTO `il_user_log` VALUES ('{B6155CF9-14C4-F638-1D47-C8FEB61F04D2}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-12 11:53:52');
INSERT INTO `il_user_log` VALUES ('{B649DB8D-6998-7370-0AA0-DFEC8FD93CC2}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:51:47');
INSERT INTO `il_user_log` VALUES ('{B64B2CF2-8688-070C-2DA1-064669784895}', '业务管理', '组管理', '添加组', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:18:50');
INSERT INTO `il_user_log` VALUES ('{B6928ED8-2B3C-69AF-A61A-A3C12E25FA05}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:19');
INSERT INTO `il_user_log` VALUES ('{B6C96690-3DC7-2FE8-643F-61A6FC95F40C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-11 11:02:55');
INSERT INTO `il_user_log` VALUES ('{B6EF6746-2065-FA0D-F0F5-DF5F128587D8}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:06:34');
INSERT INTO `il_user_log` VALUES ('{B76808EC-FDE5-197B-CA75-69A267974561}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:29');
INSERT INTO `il_user_log` VALUES ('{B77286C5-4592-4612-AF3D-85C24B7E577F}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:08:59');
INSERT INTO `il_user_log` VALUES ('{B783117D-8A8A-A0C6-B379-EAAB1D7F748C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 18:53:02');
INSERT INTO `il_user_log` VALUES ('{B79F2AC0-6B69-7E79-AD5F-B79CEF3ED01B}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:00:41');
INSERT INTO `il_user_log` VALUES ('{B7B90378-4157-FCA4-54A4-310CB9165C55}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:28');
INSERT INTO `il_user_log` VALUES ('{B7D02046-C472-C2AB-57C7-B14B6BC6C0F1}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:39:05');
INSERT INTO `il_user_log` VALUES ('{B7EC3303-A17B-177D-5203-F048B4A38B63}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:39:23');
INSERT INTO `il_user_log` VALUES ('{B7F7A354-E2A1-9689-3099-814B9742722F}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:46');
INSERT INTO `il_user_log` VALUES ('{B8475307-5E91-CA8D-A8A2-8D3D946122A8}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 09:14:59');
INSERT INTO `il_user_log` VALUES ('{B8584373-6250-F9DB-BE57-DCDE1EBFD123}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-09 09:27:54');
INSERT INTO `il_user_log` VALUES ('{B871D600-6074-A995-F199-55EA8ACDC50B}', '业务管理', '组管理', '删除组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:43:28');
INSERT INTO `il_user_log` VALUES ('{B8735D9D-8F42-D2C0-2108-01F055047708}', '业务管理', '首页', '主页', '成功', '', '', '', '10.0.2.111', '2017-09-21 17:53:14');
INSERT INTO `il_user_log` VALUES ('{B8742801-A9C4-66BD-6D4D-8C378120111E}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:58:09');
INSERT INTO `il_user_log` VALUES ('{B8A92F70-EB2C-D808-372D-E02D586AD9B4}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:44:10');
INSERT INTO `il_user_log` VALUES ('{B8E18EBA-839C-496A-6534-9B6E490F1755}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:10:34');
INSERT INTO `il_user_log` VALUES ('{B8EDE887-E462-AFD3-55D7-348528BB70F1}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:05');
INSERT INTO `il_user_log` VALUES ('{B8EF81B0-75BF-CECD-F1B7-186B3E92C019}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:39:46');
INSERT INTO `il_user_log` VALUES ('{B8F5A226-BE22-D4EE-8BC2-5BD7ADCDC839}', '业务管理', '人员管理', '添加人员', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:20:54');
INSERT INTO `il_user_log` VALUES ('{B9159E04-53FD-2A6B-328D-80C3456604BA}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:42');
INSERT INTO `il_user_log` VALUES ('{B915E31C-C894-B2BA-F4C8-A15F43274DB7}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:08:01');
INSERT INTO `il_user_log` VALUES ('{B91EF647-6DD2-3590-16A3-242930147122}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:54:49');
INSERT INTO `il_user_log` VALUES ('{B92CC9EB-6EA6-C860-D662-FDC83F1FD235}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:44:06');
INSERT INTO `il_user_log` VALUES ('{B9352A71-FE49-81FF-E9BE-A3F8F6B5236C}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:55:50');
INSERT INTO `il_user_log` VALUES ('{B943ED13-76FC-E0F8-7588-729397122A4B}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:41:16');
INSERT INTO `il_user_log` VALUES ('{B96BBAF1-1DC8-D6DB-81F5-F9E382E05B8A}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:37:05');
INSERT INTO `il_user_log` VALUES ('{B99E1A62-D653-CB91-429D-3492A8A98719}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:32:21');
INSERT INTO `il_user_log` VALUES ('{B9B43099-D159-18F0-11B3-00F4B82FE79B}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:43');
INSERT INTO `il_user_log` VALUES ('{BA1691BB-C8E4-DD18-0AF0-D739D184C62E}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:06:13');
INSERT INTO `il_user_log` VALUES ('{BA2C9231-756E-08EC-69DB-40EF9F10A2C8}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:57:07');
INSERT INTO `il_user_log` VALUES ('{BA48A299-74BF-799A-8B56-58B03D0C068E}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:43:37');
INSERT INTO `il_user_log` VALUES ('{BA4FF765-CF36-BC0A-B230-9EDF69A3E282}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:51');
INSERT INTO `il_user_log` VALUES ('{BA65DCC7-43DA-B03C-1775-6E6ABDF86FFA}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:05:52');
INSERT INTO `il_user_log` VALUES ('{BABDCB8A-B507-602B-A2BA-02BF03EC589D}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:44:34');
INSERT INTO `il_user_log` VALUES ('{BAC9DB93-C059-486E-B237-10DF3AF7957C}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:30');
INSERT INTO `il_user_log` VALUES ('{BAEE1C3D-4FF1-0885-A415-9210CB18DB4F}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:55:01');
INSERT INTO `il_user_log` VALUES ('{BAF8C58C-FD7F-66DD-65C5-969DF6C6EC9A}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 18:39:33');
INSERT INTO `il_user_log` VALUES ('{BAFBDDA3-1F0B-B89C-8724-5D193A229222}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:07:15');
INSERT INTO `il_user_log` VALUES ('{BB0496D6-9B3C-EC50-4BDD-E0FC2BF7B64B}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:05:38');
INSERT INTO `il_user_log` VALUES ('{BB2F8647-1444-9091-EB25-E6891653580F}', '业务管理', '人员管理', '人员详情', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:12:47');
INSERT INTO `il_user_log` VALUES ('{BB3CBAE1-A52F-E7B4-27B6-2B81A42B52A2}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:06:55');
INSERT INTO `il_user_log` VALUES ('{BB83CEE3-573D-C46D-5719-B3F74EA224CB}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:44:15');
INSERT INTO `il_user_log` VALUES ('{BBA99B42-4626-B915-24D7-F900ACDF3B03}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:51:06');
INSERT INTO `il_user_log` VALUES ('{BBF824DF-CC91-5B34-8590-499B9762C50A}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 11:50:45');
INSERT INTO `il_user_log` VALUES ('{BC29B046-A29B-4EB7-4FCF-0DB20DC9CB39}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:44');
INSERT INTO `il_user_log` VALUES ('{BC36C79B-2747-CC9A-0888-F30105F7D60A}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:55:44');
INSERT INTO `il_user_log` VALUES ('{BC5857BF-85C2-A169-E25F-676272FDC472}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:56:33');
INSERT INTO `il_user_log` VALUES ('{BC661A6F-4BA6-02E8-2C2E-0B4A5E34D72D}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 20:21:37');
INSERT INTO `il_user_log` VALUES ('{BCEDA83F-6D36-94C6-0B9F-EB73BDD0F73B}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:06');
INSERT INTO `il_user_log` VALUES ('{BCEE3C06-7336-E75F-6204-2635E8797B69}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:27:09');
INSERT INTO `il_user_log` VALUES ('{BCF72FAA-A113-23E6-39AD-21AAA68B032C}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:32:03');
INSERT INTO `il_user_log` VALUES ('{BCFAB5A4-A56D-113A-F699-6953E178BA92}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:58');
INSERT INTO `il_user_log` VALUES ('{BCFBF9BE-7B67-FCFC-3F12-6656A128104D}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:10');
INSERT INTO `il_user_log` VALUES ('{BD40C407-9EA8-8A64-8979-BAF534C354E8}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:52');
INSERT INTO `il_user_log` VALUES ('{BD512904-93B2-00CF-7D92-6EDF151274DD}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 14:51:14');
INSERT INTO `il_user_log` VALUES ('{BD794630-4866-C80A-8F67-D0F5D0CEDCEF}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:48');
INSERT INTO `il_user_log` VALUES ('{BD8CB26C-7314-80E0-B1AA-DFF32AADC4A0}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:11:27');
INSERT INTO `il_user_log` VALUES ('{BDB4D229-8083-EE71-ABD3-06D2047F0D4F}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:10:00');
INSERT INTO `il_user_log` VALUES ('{BDBAC53E-EBA8-1F8B-B678-C0ECB1F2CF99}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:17');
INSERT INTO `il_user_log` VALUES ('{BDD03296-2907-D99E-F485-60F4A55C9192}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:35');
INSERT INTO `il_user_log` VALUES ('{BDDEF3E7-5AC2-BD1A-6D23-86D2C22C90F9}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 14:45:56');
INSERT INTO `il_user_log` VALUES ('{BDFFF653-E3D0-9747-54A8-4BF2A8783F98}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:37:08');
INSERT INTO `il_user_log` VALUES ('{BE02DA0C-130A-3BC4-0331-FFED729709F0}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:39:31');
INSERT INTO `il_user_log` VALUES ('{BE097E0D-7EE1-67B1-2396-3DC77C429A3C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:00:48');
INSERT INTO `il_user_log` VALUES ('{BE0CD790-14E4-0D13-9C4A-5FF47E7BC544}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:48');
INSERT INTO `il_user_log` VALUES ('{BE4DC040-BD95-EB47-A25B-3C5C5FA1B44E}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:58:11');
INSERT INTO `il_user_log` VALUES ('{BE6D9007-6D21-F6B6-F934-7E2606B95E5E}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:20:56');
INSERT INTO `il_user_log` VALUES ('{BEACAF84-6C5C-2942-3B3E-53F467F04007}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:35');
INSERT INTO `il_user_log` VALUES ('{BEDFA678-E0EB-0F43-F234-0073AEF6470B}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:18:08');
INSERT INTO `il_user_log` VALUES ('{BEF150D4-55B9-DD03-BB5F-1C8B0305245D}', '业务管理', '定位套件管理', '删除', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:52');
INSERT INTO `il_user_log` VALUES ('{BF1627E7-1B79-844E-A8A9-A6EED0B70BFA}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:29:11');
INSERT INTO `il_user_log` VALUES ('{BF1A7A96-5B40-6BDF-1037-CB5CCAF998B1}', '业务管理', '楼层管理', '添加楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:43:09');
INSERT INTO `il_user_log` VALUES ('{BF1B6838-A262-4547-8FF4-5E1A28632CC6}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:39:36');
INSERT INTO `il_user_log` VALUES ('{BF25D3A6-471C-BB0C-2105-CDFE4B62CA1C}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:55:17');
INSERT INTO `il_user_log` VALUES ('{BF522850-714A-A006-EE13-25BB6A2DEB22}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:01');
INSERT INTO `il_user_log` VALUES ('{C00A3D40-FD7D-166E-6F1B-C6F1DAF695E5}', '业务管理', '定位套件管理', '删除', '失败', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 09:55:25');
INSERT INTO `il_user_log` VALUES ('{C02EC1BD-9282-8E5C-73D6-274F60203537}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 18:00:14');
INSERT INTO `il_user_log` VALUES ('{C05ECE0C-850F-699C-4048-457C5007F84B}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:17');
INSERT INTO `il_user_log` VALUES ('{C05F10A6-9F5F-EC15-9BFE-08AE71271559}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:08:36');
INSERT INTO `il_user_log` VALUES ('{C07CFD4F-8394-2E8C-1642-518237C3653F}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:05:11');
INSERT INTO `il_user_log` VALUES ('{C0887D32-B5C2-7C69-030C-9003ECC43E51}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:49');
INSERT INTO `il_user_log` VALUES ('{C0B32F67-8E4B-8A47-BE0F-15B30416F4FB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:57:45');
INSERT INTO `il_user_log` VALUES ('{C0BFA3E2-6729-30B9-774D-6E928299BA94}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:46:03');
INSERT INTO `il_user_log` VALUES ('{C0F6F903-5AB7-63F4-D138-FBB70B79DB9F}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:06:19');
INSERT INTO `il_user_log` VALUES ('{C10F5F11-786D-9102-B2D8-761A299D11DA}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 10:10:18');
INSERT INTO `il_user_log` VALUES ('{C11CC555-FBAA-77EC-4669-3D186B85B35E}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:20:45');
INSERT INTO `il_user_log` VALUES ('{C1254B4A-EBFC-EE7C-7FB3-720919FCA799}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:12:13');
INSERT INTO `il_user_log` VALUES ('{C14A4196-89F6-2CFE-B4FB-F94DF4FDA1A1}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:55:29');
INSERT INTO `il_user_log` VALUES ('{C18299B1-0059-ED6A-93B6-EB22570CF5C3}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:27');
INSERT INTO `il_user_log` VALUES ('{C19F30C3-1D67-5BB8-C2EA-53B043325D96}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 12:00:16');
INSERT INTO `il_user_log` VALUES ('{C1E5E276-95DE-1D31-628F-846E524CCFF2}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 20:09:18');
INSERT INTO `il_user_log` VALUES ('{C1E7CC5C-6BD1-A155-B2BE-E3C9DD0A448C}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:51:34');
INSERT INTO `il_user_log` VALUES ('{C1F84590-AF95-3C5B-D584-8A1D1604C53B}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:06:16');
INSERT INTO `il_user_log` VALUES ('{C216009D-66BD-F9FC-670A-A050D3C45C05}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '10.0.2.111', '2017-09-21 17:54:36');
INSERT INTO `il_user_log` VALUES ('{C219D33B-66E0-3C19-AEBF-506BEFC3559D}', '业务管理', '现场终端管理', '设置', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-15 12:13:34');
INSERT INTO `il_user_log` VALUES ('{C21C361D-51CF-48B3-C905-C97ACEE412F1}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:48');
INSERT INTO `il_user_log` VALUES ('{C25ED08E-5885-C2EC-868B-8479C1F3EB3C}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:11:28');
INSERT INTO `il_user_log` VALUES ('{C26777B0-D2D4-6F65-427E-DA09CB63F0A3}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:11');
INSERT INTO `il_user_log` VALUES ('{C2709FD6-EBE9-6CB7-D158-0D943EFB3CF7}', '业务管理', '人员管理', '人员详情', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:12:53');
INSERT INTO `il_user_log` VALUES ('{C291F258-E965-75A9-C6F0-3C0FF8F38C53}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:53:47');
INSERT INTO `il_user_log` VALUES ('{C2923471-5A54-EFD8-A6B5-41CBA55A544A}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:46');
INSERT INTO `il_user_log` VALUES ('{C294D119-60BA-ED73-E866-94111DFB3C19}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:07:30');
INSERT INTO `il_user_log` VALUES ('{C2D0500E-0AFD-872B-3C9F-5B0E9CABE363}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:21');
INSERT INTO `il_user_log` VALUES ('{C2D28913-234A-A736-961C-8B371D29CC88}', '业务管理', '信标管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:27:15');
INSERT INTO `il_user_log` VALUES ('{C2E1CBD8-9802-728C-5112-6ED9D19CDACB}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:56:15');
INSERT INTO `il_user_log` VALUES ('{C2F09293-BAA9-A118-3113-254D589C7475}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:34');
INSERT INTO `il_user_log` VALUES ('{C30062D5-D708-70E8-BEDF-805153894230}', '系统管理', '用户管理', '修改密码', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:04:46');
INSERT INTO `il_user_log` VALUES ('{C30992D3-10E2-A274-4295-A3DE7D0DD5A6}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:40');
INSERT INTO `il_user_log` VALUES ('{C30C4B2D-0959-4922-B07E-F9CD977A2F6C}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:28');
INSERT INTO `il_user_log` VALUES ('{C3A2C44E-B649-5EA8-A005-92F4B3218C50}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:32:23');
INSERT INTO `il_user_log` VALUES ('{C3B657E9-A1D1-854C-DDC4-94CBCA1D6549}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 12:16:46');
INSERT INTO `il_user_log` VALUES ('{C3D3853B-FF77-D6FD-551E-3DAABF9F54AF}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:37:54');
INSERT INTO `il_user_log` VALUES ('{C405015A-C594-D710-62DA-9A6E13561DCC}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 18:53:16');
INSERT INTO `il_user_log` VALUES ('{C418F7B3-E29A-155D-690E-2A876C62A403}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:51:39');
INSERT INTO `il_user_log` VALUES ('{C4AE1E10-BF51-7997-3E17-26A02FF79501}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:53');
INSERT INTO `il_user_log` VALUES ('{C4B86A28-CD3A-557A-5A73-D1A69B344EA1}', '业务管理', '楼层管理', '楼层列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:59');
INSERT INTO `il_user_log` VALUES ('{C4DB1823-EDDB-BA89-69BF-E9F9F24D000C}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:52:20');
INSERT INTO `il_user_log` VALUES ('{C4DF3B56-5554-B464-BC97-513284087783}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:38:57');
INSERT INTO `il_user_log` VALUES ('{C4FC6E75-70BD-C958-DDF6-340CCD21260E}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:48:54');
INSERT INTO `il_user_log` VALUES ('{C5349A96-8D85-48D4-EB3D-4C7FF9FA10A9}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:32:04');
INSERT INTO `il_user_log` VALUES ('{C5353FA2-6BBA-1179-7B38-7A16F038C23F}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:57:43');
INSERT INTO `il_user_log` VALUES ('{C588FB34-FBC4-304A-AAF4-9CF90A50E6C1}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:51:25');
INSERT INTO `il_user_log` VALUES ('{C58EE91E-6002-E6CA-5FA0-92FB4372CF5B}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:40:57');
INSERT INTO `il_user_log` VALUES ('{C5B252D9-0CAD-98B9-1433-EB84A1AF61AA}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 15:11:36');
INSERT INTO `il_user_log` VALUES ('{C5BA7CEC-4B63-C867-66C4-2D25FB2D141B}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:21');
INSERT INTO `il_user_log` VALUES ('{C5C5BFCF-2A5E-7A17-42EA-7716B300AA62}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:10');
INSERT INTO `il_user_log` VALUES ('{C5C74352-661C-40A5-20B2-7A7A6D47ABAB}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:29');
INSERT INTO `il_user_log` VALUES ('{C5CEEBF0-0243-CB5E-E788-02ED38A79E15}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:41:28');
INSERT INTO `il_user_log` VALUES ('{C5F46CB4-C511-D1E8-FB05-30A05B971CA3}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:54:56');
INSERT INTO `il_user_log` VALUES ('{C662B662-525F-0C91-78B2-E3379835ECA2}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 18:00:11');
INSERT INTO `il_user_log` VALUES ('{C665D907-F00B-D26A-EF9D-6DB85C8F5B03}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 18:32:18');
INSERT INTO `il_user_log` VALUES ('{C66DD9AC-CC74-E0F5-6CF1-88E027BD2517}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:43:34');
INSERT INTO `il_user_log` VALUES ('{C6DFFC93-AEB1-8763-D032-5AF67CDCCC71}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:10:29');
INSERT INTO `il_user_log` VALUES ('{C700016F-D08D-3495-C319-2658A9FA07D2}', '业务管理', '单位管理', '本单位信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:45:46');
INSERT INTO `il_user_log` VALUES ('{C7171D3B-5BD7-6528-ED0E-5E478B73DFA2}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:50');
INSERT INTO `il_user_log` VALUES ('{C74250E8-43D4-D98D-39B2-BF1A69352F04}', '系统管理', '角色管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-22 18:38:11');
INSERT INTO `il_user_log` VALUES ('{C745B6CE-843B-8C06-01C4-558469E6E18C}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 18:32:04');
INSERT INTO `il_user_log` VALUES ('{C76E9E7A-52FA-950B-CB0D-9DD075ACA96E}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:09:57');
INSERT INTO `il_user_log` VALUES ('{C77C7F19-CEB2-C603-86DE-C2ED091E8FA8}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:03:45');
INSERT INTO `il_user_log` VALUES ('{C78AB018-1DA6-7585-878D-E7AFC65C03F7}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:41:23');
INSERT INTO `il_user_log` VALUES ('{C7DAF182-79E1-2AB2-F367-346861389A39}', '系统管理', '节点管理', '节点列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:22:51');
INSERT INTO `il_user_log` VALUES ('{C7F3815F-D0BE-172C-0F71-56FDD8D604C7}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:40');
INSERT INTO `il_user_log` VALUES ('{C7FE381C-294B-5683-BB71-CB3100D27FD5}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:40');
INSERT INTO `il_user_log` VALUES ('{C81A3FAB-48FF-98C4-35C4-378BF860A231}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 18:53:06');
INSERT INTO `il_user_log` VALUES ('{C8731062-2FED-75D5-4F8F-5927897DC04B}', '业务管理', '定位套件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:03:06');
INSERT INTO `il_user_log` VALUES ('{C87CDE27-F274-DACF-CCF3-CF0BA2F9D12F}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:25');
INSERT INTO `il_user_log` VALUES ('{C8A626F6-3083-FAA0-EC89-EEC091A61511}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:35:37');
INSERT INTO `il_user_log` VALUES ('{C8CA2B84-695E-8965-98BF-DD5A8AEED0D5}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:21');
INSERT INTO `il_user_log` VALUES ('{C8D308E2-1020-118C-A22A-0CDABA0B7732}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:42');
INSERT INTO `il_user_log` VALUES ('{C9006EB4-D610-0A78-AB85-1E1CC4C1514C}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 17:52:56');
INSERT INTO `il_user_log` VALUES ('{C9011201-1248-D02F-396F-F67F3AEA7CCC}', '业务管理', '现场终端管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:29');
INSERT INTO `il_user_log` VALUES ('{C9136DDE-1B2D-1DDD-8119-744E457FBDDE}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:04:19');
INSERT INTO `il_user_log` VALUES ('{C9438A22-53B6-402B-796D-324B0D38DEFE}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:10:49');
INSERT INTO `il_user_log` VALUES ('{C9646645-F964-86E6-F07F-47D6C151EFB3}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:29');
INSERT INTO `il_user_log` VALUES ('{C96AD8E9-A9A3-6B45-A67D-A82AEDAD09CB}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:26');
INSERT INTO `il_user_log` VALUES ('{C96D731E-A019-A455-CE6E-837BDF41BC9D}', '系统管理', '角色管理', '权限明细', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:05:18');
INSERT INTO `il_user_log` VALUES ('{C96DC492-917D-5CBE-D5C3-C4BDB20B1E89}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:16');
INSERT INTO `il_user_log` VALUES ('{C9855B00-A675-491E-E13D-C91795D53DDC}', '业务管理', '人员管理', '人员列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-06 16:58:24');
INSERT INTO `il_user_log` VALUES ('{C99B073B-D965-8596-49FB-995A5B214F87}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:58:46');
INSERT INTO `il_user_log` VALUES ('{CA37264B-4B00-E6C4-F718-FAB818E98515}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:40:40');
INSERT INTO `il_user_log` VALUES ('{CA6E5835-ADB1-428B-8C28-6FF2509822F9}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:56:00');
INSERT INTO `il_user_log` VALUES ('{CA7DF0C5-C6B4-CD9C-9AD1-1C4B9DFEAE46}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:21:29');
INSERT INTO `il_user_log` VALUES ('{CA99CE3B-EB39-789D-2CEB-3682D850C3C4}', '系统管理', '角色管理', '权限明细', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:50:49');
INSERT INTO `il_user_log` VALUES ('{CAC7C96F-5598-8277-04A1-671587C95B1E}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:03:54');
INSERT INTO `il_user_log` VALUES ('{CAD123F0-F4E7-B2FF-8A85-9D3FEE6A17EC}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:07');
INSERT INTO `il_user_log` VALUES ('{CB01BB60-6BF7-F22C-1FEB-41DBE552383C}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:48:46');
INSERT INTO `il_user_log` VALUES ('{CB06798B-CE98-867E-BD1A-AB80C75115EB}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:43:31');
INSERT INTO `il_user_log` VALUES ('{CB4541F4-8FA9-E4B7-55D4-3E50478D5DFD}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:48:01');
INSERT INTO `il_user_log` VALUES ('{CB4D10B0-1618-1810-3A8D-2EAD8B22189C}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:40:32');
INSERT INTO `il_user_log` VALUES ('{CB51F088-C6CB-DE89-EA81-0F713563BD0F}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:27:49');
INSERT INTO `il_user_log` VALUES ('{CB6F53C3-BE6A-CF28-836B-0E0FBEE3B6AE}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:32');
INSERT INTO `il_user_log` VALUES ('{CBBE034A-ED0D-7F5D-4F7B-5FCB24B2B15F}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:56:18');
INSERT INTO `il_user_log` VALUES ('{CBCC9FAD-C891-944B-C6FC-4C4D571C958B}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:08:29');
INSERT INTO `il_user_log` VALUES ('{CBF7EAA8-51F7-DBD3-86D2-4D6D9077C9AF}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 14:51:55');
INSERT INTO `il_user_log` VALUES ('{CC10C566-C590-C0AF-E021-7CF77A7BBEF4}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 20:09:44');
INSERT INTO `il_user_log` VALUES ('{CC1F5CE5-B71D-647B-82F0-6EDBAF09E682}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:48:19');
INSERT INTO `il_user_log` VALUES ('{CC5B14E0-7B50-E0EA-5F52-E76DE0FDB71C}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:47:17');
INSERT INTO `il_user_log` VALUES ('{CC94C496-383A-4950-2E86-C3CF3B6D4AC0}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:33');
INSERT INTO `il_user_log` VALUES ('{CCBAF28F-ACD0-0FAC-ED6A-9F360AAEA616}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:12:16');
INSERT INTO `il_user_log` VALUES ('{CCC94DE7-BA1E-4F29-E0A2-30498F38B76F}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:32');
INSERT INTO `il_user_log` VALUES ('{CCE1956A-0505-F416-C7CB-500ECB704FF6}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:47:06');
INSERT INTO `il_user_log` VALUES ('{CD37111E-B33C-A9C9-0869-880EDA34F857}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:37');
INSERT INTO `il_user_log` VALUES ('{CD5228CD-757D-F390-5FF7-75BB6713B5A3}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:45');
INSERT INTO `il_user_log` VALUES ('{CD71F3D8-0E5C-809C-79CA-FB66526819CE}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:34');
INSERT INTO `il_user_log` VALUES ('{CD728A92-1D9D-79EA-2A96-4D625D26BCC8}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:05');
INSERT INTO `il_user_log` VALUES ('{CD79C15D-C239-EC49-5F13-2B68CCFA0E3A}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:36:07');
INSERT INTO `il_user_log` VALUES ('{CD888ED6-086B-66CE-83B2-8B8FC9B27EFC}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:56');
INSERT INTO `il_user_log` VALUES ('{CDA2C623-6270-46EE-4255-4BA2F5B89786}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:10:48');
INSERT INTO `il_user_log` VALUES ('{CDCE94AC-ECC1-A28C-10DA-787198DA6530}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:30');
INSERT INTO `il_user_log` VALUES ('{CE4BC4CC-F433-0789-5482-F4F8D3D1D6E6}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:08:31');
INSERT INTO `il_user_log` VALUES ('{CE50F220-DBA2-AE38-41A3-0B90A38D17B3}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:21:05');
INSERT INTO `il_user_log` VALUES ('{CE81D711-6600-1E8F-A18F-473E10D16B91}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:30:18');
INSERT INTO `il_user_log` VALUES ('{CE863AF5-91AE-B1C5-E499-030EC8C5393C}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:10:14');
INSERT INTO `il_user_log` VALUES ('{CEA12988-4BE4-26A0-A409-C1A6AEB1F644}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:52:18');
INSERT INTO `il_user_log` VALUES ('{CEA18495-7DFF-5140-F0B3-520C7B955984}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:53');
INSERT INTO `il_user_log` VALUES ('{CEB921D0-1177-EC6D-619D-FD71F873DEAE}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-12 11:53:51');
INSERT INTO `il_user_log` VALUES ('{CEC04FA2-C972-A089-6AF4-79D04C5F3814}', '系统管理', '用户日志', '日志列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-06 19:26:29');
INSERT INTO `il_user_log` VALUES ('{CEC2B332-FFF2-2F21-1D35-8C7A05CBED53}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:33');
INSERT INTO `il_user_log` VALUES ('{CED31357-61CE-9DE8-35F8-87951C32398B}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:56:01');
INSERT INTO `il_user_log` VALUES ('{CEE854E1-F0A2-12F4-BE00-610763B79169}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:13:50');
INSERT INTO `il_user_log` VALUES ('{CF0EB799-7ACC-16CF-05D4-312783FC1026}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:58:59');
INSERT INTO `il_user_log` VALUES ('{CF5F8677-4501-5554-9511-39D2C0B47952}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 14:51:15');
INSERT INTO `il_user_log` VALUES ('{CF99C28D-0C9B-BCAD-7AA7-6A390750973D}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:38:38');
INSERT INTO `il_user_log` VALUES ('{CFA99ECF-2802-F12B-FA35-46116D57134A}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:16');
INSERT INTO `il_user_log` VALUES ('{CFD03FD8-E499-F5FF-6947-0B9FB1E5EDD6}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:19:45');
INSERT INTO `il_user_log` VALUES ('{CFF4D025-6F0D-A325-2499-82C2012E69FD}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:48:29');
INSERT INTO `il_user_log` VALUES ('{D0089D63-A7AD-0F69-027E-93F6C9312266}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:46');
INSERT INTO `il_user_log` VALUES ('{D015B144-D563-FD27-B67D-74AC5EA48B1B}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:56:21');
INSERT INTO `il_user_log` VALUES ('{D0186776-14AF-E809-357F-3EA771BC06C0}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:07:33');
INSERT INTO `il_user_log` VALUES ('{D026E2B9-F0B2-E537-8334-2F8D3763D872}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:02:35');
INSERT INTO `il_user_log` VALUES ('{D064487C-966B-4DE2-4D50-9EA3E2FC7261}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:29:32');
INSERT INTO `il_user_log` VALUES ('{D067644C-73A6-DC1C-BC90-445E88D3A6F9}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:16');
INSERT INTO `il_user_log` VALUES ('{D0744FA7-9B57-FEBE-04E2-87AC9E9420C5}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:09:34');
INSERT INTO `il_user_log` VALUES ('{D085F5E0-789F-2C41-234D-3238068B5ED5}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:47:38');
INSERT INTO `il_user_log` VALUES ('{D0EB3488-AF54-56A5-EDB9-4FF5D79400DD}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:48');
INSERT INTO `il_user_log` VALUES ('{D1407CC0-F06A-EB9C-7ACE-CB951E6569B4}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:38:39');
INSERT INTO `il_user_log` VALUES ('{D147B1CB-75AE-4474-0950-5209ABB34DB0}', '业务管理', '人员管理', '删除人员', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:06:09');
INSERT INTO `il_user_log` VALUES ('{D158609C-D532-276C-460C-E4B2F12125E0}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:23');
INSERT INTO `il_user_log` VALUES ('{D18D41E1-01FE-4688-0E03-06F1DDD8D551}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:36:59');
INSERT INTO `il_user_log` VALUES ('{D1D1EAA4-7C84-8C00-1D5F-F734F9A7FB1B}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:10:04');
INSERT INTO `il_user_log` VALUES ('{D1D5F48F-7D6C-9465-7DDF-A5050D1DA013}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:13:00');
INSERT INTO `il_user_log` VALUES ('{D225C37B-4E9D-6ADF-2A34-B8B53EED91C0}', '业务管理', '组管理', '删除组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:43:33');
INSERT INTO `il_user_log` VALUES ('{D2456BFA-E879-23F6-F606-42591CADC572}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:41:43');
INSERT INTO `il_user_log` VALUES ('{D24E52BF-96AD-882E-D635-2C9C3E981A6C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 11:47:07');
INSERT INTO `il_user_log` VALUES ('{D24FD757-C5EB-AE9D-4816-26E2AC2D7E83}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:05:55');
INSERT INTO `il_user_log` VALUES ('{D25927D0-59F4-1674-DA7E-A6858A672E85}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:55:01');
INSERT INTO `il_user_log` VALUES ('{D282F1AE-5ED9-7AFB-13CD-872EAFA084E0}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:06:14');
INSERT INTO `il_user_log` VALUES ('{D320F22C-C312-A8BD-E487-F1E16133A512}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:05:01');
INSERT INTO `il_user_log` VALUES ('{D35A6D06-DFBD-DE96-C9F0-EF5A2AD00B0A}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:58:47');
INSERT INTO `il_user_log` VALUES ('{D361B5FE-C2E9-A317-30C1-E9D69ACE3CFC}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:13:52');
INSERT INTO `il_user_log` VALUES ('{D3963343-CBFA-C2D6-22C5-EF068CC28B80}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:57');
INSERT INTO `il_user_log` VALUES ('{D3F8B483-7E72-6968-A981-FC08C4D95455}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:00:59');
INSERT INTO `il_user_log` VALUES ('{D3FFA180-2C0B-24BB-C811-1B540D2E0E73}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 20:03:16');
INSERT INTO `il_user_log` VALUES ('{D402BC2C-F4B2-F5BC-2B3B-2FD20E7E6F92}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:14:43');
INSERT INTO `il_user_log` VALUES ('{D402C85F-F9F2-8BE7-EF1E-3C0BEECB11F9}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:09:04');
INSERT INTO `il_user_log` VALUES ('{D4175C8D-0118-DAFA-0613-5FC6EE5ED262}', '业务管理', '人员管理', '人员详情', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:12:42');
INSERT INTO `il_user_log` VALUES ('{D41A6FD6-4F4C-8681-9379-63225F7CBF82}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:25:21');
INSERT INTO `il_user_log` VALUES ('{D41E8772-C3CC-175C-7E07-0046144AAE62}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:31');
INSERT INTO `il_user_log` VALUES ('{D4872613-C3BB-0BF3-228A-FE79F574A5F1}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:38');
INSERT INTO `il_user_log` VALUES ('{D48DD519-3A32-74BC-6D8F-F3A546AAC746}', '业务管理', '楼层管理', '楼层列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:58');
INSERT INTO `il_user_log` VALUES ('{D4AD0698-4E02-8AC9-7325-3C35C590A633}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:02:15');
INSERT INTO `il_user_log` VALUES ('{D4B0ABCD-7110-21C3-7A63-4547ADAA2E64}', '系统管理', '用户日志', '查看日志', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-22 18:38:13');
INSERT INTO `il_user_log` VALUES ('{D4E4D867-2BE5-EE88-7A85-B95C7AC6133D}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:21');
INSERT INTO `il_user_log` VALUES ('{D4F0180C-D118-0A34-06A6-110B3A2B77A1}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:33');
INSERT INTO `il_user_log` VALUES ('{D50A343E-0DAF-5548-2BDF-C738FAD08176}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:38:45');
INSERT INTO `il_user_log` VALUES ('{D50C8C98-3DEA-D56B-E1F1-5FACB0824B7A}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:53:07');
INSERT INTO `il_user_log` VALUES ('{D5455DCC-46B7-F2AF-54BC-FEABEA0310FD}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:42:52');
INSERT INTO `il_user_log` VALUES ('{D56A1E39-863C-5E4A-F3CE-A395726DAD22}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:54:54');
INSERT INTO `il_user_log` VALUES ('{D5705690-335D-3C3A-AE60-0DE9ABC2BDDE}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:31:10');
INSERT INTO `il_user_log` VALUES ('{D58BA86D-6CD9-A908-BED4-3163ADAE959A}', '业务管理', '现场终端管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:03:09');
INSERT INTO `il_user_log` VALUES ('{D5A3DFD9-566B-8AD7-F782-8FFB959F9869}', '系统管理', '角色管理', '角色授权', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:15:43');
INSERT INTO `il_user_log` VALUES ('{D5B3F831-28FB-9CD1-C796-21E173DEE224}', '业务管理', '人员管理', '添加人员', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:05:54');
INSERT INTO `il_user_log` VALUES ('{D5BE1AFB-4257-0B61-A054-9A13149783FF}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:37');
INSERT INTO `il_user_log` VALUES ('{D5C1246C-72D3-C35D-01FD-2EFBCF61B356}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:34');
INSERT INTO `il_user_log` VALUES ('{D5FCDBB4-20FA-C86F-954B-A0EC901A580F}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 20:21:32');
INSERT INTO `il_user_log` VALUES ('{D6109C5B-95B2-4BA2-39AA-1C835098E90F}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 11:59:42');
INSERT INTO `il_user_log` VALUES ('{D63362A7-58F2-39AE-4116-01B137723924}', '业务管理', '组成员管理', '成员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:15:53');
INSERT INTO `il_user_log` VALUES ('{D6580BE6-13F9-8F86-F062-C3079D44DD9D}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:05:14');
INSERT INTO `il_user_log` VALUES ('{D681A1E3-6622-D369-56E7-3B2423E2FA04}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:08:46');
INSERT INTO `il_user_log` VALUES ('{D69CF9F2-4089-FCE3-77C6-DF8720AAFEB3}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:55:04');
INSERT INTO `il_user_log` VALUES ('{D6CCE304-10C0-5E32-53EA-F8220E16D53D}', '系统管理', '用户日志', '日志列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:28:50');
INSERT INTO `il_user_log` VALUES ('{D70EDF7D-82B5-7FB1-CFAD-EFDB853AD33C}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 18:02:30');
INSERT INTO `il_user_log` VALUES ('{D712C1FE-AB6C-B5D3-B5CA-847913B30C2B}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:52');
INSERT INTO `il_user_log` VALUES ('{D7340219-7F57-3C5A-C35E-EE393EFA2976}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:48');
INSERT INTO `il_user_log` VALUES ('{D744C644-27A3-4A83-691A-54E875018C98}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:19:10');
INSERT INTO `il_user_log` VALUES ('{D751A9A8-C1CB-5A76-09C8-B7D5A78CFD27}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:40');
INSERT INTO `il_user_log` VALUES ('{D7527257-A004-D483-7E02-27755D79ACD5}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:09:37');
INSERT INTO `il_user_log` VALUES ('{D7AF8798-7EA0-61DF-F920-9829834120CE}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:49:27');
INSERT INTO `il_user_log` VALUES ('{D7BE607A-109A-9874-9288-1190D6427931}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:12:16');
INSERT INTO `il_user_log` VALUES ('{D82735A2-C381-0C44-2D82-A83A70176B16}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:20:58');
INSERT INTO `il_user_log` VALUES ('{D88E0A35-F873-6582-EE62-256FF4BE65FF}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 15:11:35');
INSERT INTO `il_user_log` VALUES ('{D8CC16C4-C8E8-C639-566D-778FA5B5B8F2}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:07');
INSERT INTO `il_user_log` VALUES ('{D8D702AB-FF03-80AF-B4FF-44F709FB1382}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:41:09');
INSERT INTO `il_user_log` VALUES ('{D8E0A6A7-98BE-3538-556A-6E77A5AE2C2E}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:44:45');
INSERT INTO `il_user_log` VALUES ('{D8E43FD9-1BAF-F782-D028-E22B1521DB6A}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 18:36:18');
INSERT INTO `il_user_log` VALUES ('{D90C8B0D-A5A3-488C-3255-79483914B2CF}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:21:19');
INSERT INTO `il_user_log` VALUES ('{D9100B15-4DF6-498A-FAC2-218F75A9BBAC}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:04:31');
INSERT INTO `il_user_log` VALUES ('{D9692F05-8313-85CA-E980-13F2C152E662}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:09:08');
INSERT INTO `il_user_log` VALUES ('{D9A2FF6C-A25C-3F5E-BCA4-1301C768DA8C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:11:23');
INSERT INTO `il_user_log` VALUES ('{D9A839A7-1FF3-7846-FE51-7F5873266841}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:22');
INSERT INTO `il_user_log` VALUES ('{D9B17802-15B0-3F97-C666-F974E4CB9982}', '业务管理', '组管理', '组列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:23');
INSERT INTO `il_user_log` VALUES ('{D9D20DCA-559F-EB6C-499A-CE8B7BF88116}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:40:28');
INSERT INTO `il_user_log` VALUES ('{D9D477B7-1F18-488D-830E-1AE95356DE62}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:14:39');
INSERT INTO `il_user_log` VALUES ('{D9F6C78F-47A8-0E95-E016-230E5A8A38C8}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:58:14');
INSERT INTO `il_user_log` VALUES ('{DA08D298-51FC-EB08-014E-86CE3FDEBEA2}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:43:52');
INSERT INTO `il_user_log` VALUES ('{DA10916D-A5F4-773E-5D5B-45B51A2D92C8}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-12 10:52:39');
INSERT INTO `il_user_log` VALUES ('{DA3FA59D-B390-3722-2C06-E21CDAA61769}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 18:48:59');
INSERT INTO `il_user_log` VALUES ('{DA429516-FF58-A72D-7023-B4CA9D458313}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:40:20');
INSERT INTO `il_user_log` VALUES ('{DA45CFE4-6D27-63E4-9587-FB4E40B37BE0}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:15');
INSERT INTO `il_user_log` VALUES ('{DA49640B-D1CE-0809-60CE-E520979455CC}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:12:33');
INSERT INTO `il_user_log` VALUES ('{DA6ED265-FF86-CBA2-D2C6-5746BD2D23D8}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:21');
INSERT INTO `il_user_log` VALUES ('{DA6F86A0-8392-F52F-42A1-CF0EBE13B6FF}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-11 11:03:06');
INSERT INTO `il_user_log` VALUES ('{DA74AB49-B3F6-83B3-C4F9-5B3F30C828E6}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:41:44');
INSERT INTO `il_user_log` VALUES ('{DAB55609-FB0B-756E-CF9E-70EB9FA97E62}', '业务管理', '单位管理', '子单位列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:37');
INSERT INTO `il_user_log` VALUES ('{DAB65353-1AC0-8D37-F084-1B07EBEFE607}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:32:32');
INSERT INTO `il_user_log` VALUES ('{DAD5D8FC-0B04-F9C1-F693-5D5841402234}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:12');
INSERT INTO `il_user_log` VALUES ('{DB1C9F0B-E38E-38BC-31BE-123906D0DE78}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:59');
INSERT INTO `il_user_log` VALUES ('{DB457D4D-B20F-9C7D-A6D5-8F35551844CF}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '10.0.2.111', '2017-09-21 19:40:36');
INSERT INTO `il_user_log` VALUES ('{DB7D80D2-3733-102C-DD73-09339743588E}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:09:57');
INSERT INTO `il_user_log` VALUES ('{DBF7FC22-D745-F22E-7679-374D399F4AA0}', '系统管理', '用户管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:04:05');
INSERT INTO `il_user_log` VALUES ('{DC08D1E4-2DEE-0FB0-F997-3BA15F0944C5}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 12:00:14');
INSERT INTO `il_user_log` VALUES ('{DC1E007E-1BA9-3750-4278-977B990A39D0}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:15:07');
INSERT INTO `il_user_log` VALUES ('{DC3BF346-621F-A4E0-27C2-30BD75BB79AC}', '业务管理', '人员管理', '修改人员信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:43:51');
INSERT INTO `il_user_log` VALUES ('{DC789C00-CE35-3C9B-083B-6B677043007A}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:11:54');
INSERT INTO `il_user_log` VALUES ('{DC7C27BC-338E-DD73-05D6-60A9C4F47617}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:53:28');
INSERT INTO `il_user_log` VALUES ('{DCAB75B8-CEC7-EDF0-459E-4DA9CB7FD55D}', '业务管理', '首页', '主面板', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:04');
INSERT INTO `il_user_log` VALUES ('{DCBD7426-AAB5-22C8-21D5-0F9FC2CA77FA}', '业务管理', '单位管理', '本单位信息', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:02:27');
INSERT INTO `il_user_log` VALUES ('{DCDA1EB5-957E-E292-7E03-BC32FBDD2097}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:14');
INSERT INTO `il_user_log` VALUES ('{DCFB73C4-0AE0-091C-871E-5348C4030BF2}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:56:13');
INSERT INTO `il_user_log` VALUES ('{DCFDC4EE-9CE6-2EB7-AE22-AC85F96B9B78}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:36:39');
INSERT INTO `il_user_log` VALUES ('{DD094CF6-1E70-8EFF-21AA-70E231E49754}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:38');
INSERT INTO `il_user_log` VALUES ('{DD217CFD-726C-8AD0-6A5B-DEE06E255D98}', '业务管理', '人员管理', '人员详情', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:10:23');
INSERT INTO `il_user_log` VALUES ('{DD32B446-5CAC-281C-20B1-A7457A1D0BA4}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-11 11:02:49');
INSERT INTO `il_user_log` VALUES ('{DD3F684C-597C-7972-F037-72E0A37CD0AD}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:45:49');
INSERT INTO `il_user_log` VALUES ('{DD48431C-205E-C891-9FAD-593BC1BD9948}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:39:02');
INSERT INTO `il_user_log` VALUES ('{DD725C57-2F03-E115-F483-C0AFC26C27B9}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:35:29');
INSERT INTO `il_user_log` VALUES ('{DD75B755-3C64-BECA-83D4-DED7C0392EF4}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:04:24');
INSERT INTO `il_user_log` VALUES ('{DD847474-02E5-AB91-7B6C-C65F996EB033}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:34');
INSERT INTO `il_user_log` VALUES ('{DD96D4D1-9DA4-8DF5-04BB-A374076DAEBB}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:05:00');
INSERT INTO `il_user_log` VALUES ('{DDC382A9-93F9-FEA3-44A5-F332C5A8BBFA}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:36:17');
INSERT INTO `il_user_log` VALUES ('{DDCF9685-EA71-A678-4519-3A90B2646CF1}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:38');
INSERT INTO `il_user_log` VALUES ('{DDE3553B-3BAD-0858-0B50-D4DAC3706F7D}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:39');
INSERT INTO `il_user_log` VALUES ('{DE0A208B-F3DF-5169-2FF5-7BE54115466A}', '系统管理', '节点管理', '保存', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 14:52:00');
INSERT INTO `il_user_log` VALUES ('{DE3D3654-B834-6C99-63FA-6F79E4DCF6D3}', '系统管理', '用户管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-22 18:38:06');
INSERT INTO `il_user_log` VALUES ('{DE7EEEE5-84D6-DA16-F219-F516333AEC2C}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:15:39');
INSERT INTO `il_user_log` VALUES ('{DED55F07-CA24-A7C0-7DBC-CFEC637C8404}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:56:39');
INSERT INTO `il_user_log` VALUES ('{DEDC6FB5-DDF7-789E-1400-892729352704}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:18:50');
INSERT INTO `il_user_log` VALUES ('{DF370F26-9669-49C1-C362-E1A0916CB05F}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:07:05');
INSERT INTO `il_user_log` VALUES ('{DF53B31C-CA34-CD7E-06F8-C5A8CEA3726F}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:41:56');
INSERT INTO `il_user_log` VALUES ('{DF60FBB5-F992-CBB7-0A4C-3402A477F0B8}', '业务管理', '组管理', '添加组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 19:28:54');
INSERT INTO `il_user_log` VALUES ('{DF65D017-A086-C932-C580-7849FE2E10F8}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:27');
INSERT INTO `il_user_log` VALUES ('{DF7ADEAB-73A2-FB15-7B5C-DD710E0ECD08}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:34');
INSERT INTO `il_user_log` VALUES ('{DF833E70-6188-7197-55B6-3D99DC24E522}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:43:06');
INSERT INTO `il_user_log` VALUES ('{DFC0D542-376B-7B0D-BE01-8D31E55BC8E9}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 10:03:26');
INSERT INTO `il_user_log` VALUES ('{DFCC999B-F2EC-11DA-11EA-D32A3BB0DA1F}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 09:55:00');
INSERT INTO `il_user_log` VALUES ('{E0167DAB-8D82-9262-2F13-1B4D5A3FE693}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:54:57');
INSERT INTO `il_user_log` VALUES ('{E03917A4-3DFE-7AF6-8265-06C448A9D016}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-28 11:47:21');
INSERT INTO `il_user_log` VALUES ('{E03F5DF2-54F2-B91D-5CE2-84AC09AEED04}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd02', '3', '0.0.0.0', '2017-09-04 18:39:39');
INSERT INTO `il_user_log` VALUES ('{E0773E92-1096-DC14-2B5D-12C5F04E08E0}', '系统管理', '节点管理', '保存', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:58:54');
INSERT INTO `il_user_log` VALUES ('{E08D8BE4-55EE-4B17-9444-0856EF4F46F2}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:41');
INSERT INTO `il_user_log` VALUES ('{E0B0828D-029C-5C98-C886-6492C363ABDB}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:51:36');
INSERT INTO `il_user_log` VALUES ('{E0B3D8AE-C415-59B3-EFC6-B56E8A5938CB}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:49');
INSERT INTO `il_user_log` VALUES ('{E0BF1478-3A19-C1D1-0461-775ABD46ECE6}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:52:00');
INSERT INTO `il_user_log` VALUES ('{E1032CDF-5A2A-7597-9C29-E85D8B479144}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:15:34');
INSERT INTO `il_user_log` VALUES ('{E105135E-3492-6137-F169-B2D6ECB81F86}', '系统管理', '节点管理', '保存', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:30:52');
INSERT INTO `il_user_log` VALUES ('{E14AAC41-A714-4383-28DC-CA2C4E188975}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:47:21');
INSERT INTO `il_user_log` VALUES ('{E1A5DD17-0475-9B17-5A4B-7B13C546F741}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:27:09');
INSERT INTO `il_user_log` VALUES ('{E1A823E9-A04A-4134-1A95-F5828D49ACA8}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:49:36');
INSERT INTO `il_user_log` VALUES ('{E1B0494B-68A5-4082-53EF-EDBF35DAF635}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:04:29');
INSERT INTO `il_user_log` VALUES ('{E1B80895-0658-A428-4210-735C69FF4129}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:00');
INSERT INTO `il_user_log` VALUES ('{E1FC9574-665C-26A6-1D3D-3587ACE973DA}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:57:25');
INSERT INTO `il_user_log` VALUES ('{E200A94A-4F8A-E02C-D7B6-EC6C6E16CE0F}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:31');
INSERT INTO `il_user_log` VALUES ('{E20C95DD-A369-C95D-8DEF-C475B238B642}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:40:19');
INSERT INTO `il_user_log` VALUES ('{E242EE00-0F3F-AD36-4CD1-608ADBD860AD}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:28:40');
INSERT INTO `il_user_log` VALUES ('{E2D5175E-F7A1-F971-6146-C5F8D0CA6320}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:14:42');
INSERT INTO `il_user_log` VALUES ('{E2DF339A-83D4-FE08-CC33-F988B8978141}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:27:06');
INSERT INTO `il_user_log` VALUES ('{E2E8F62C-C3A1-6B2A-699B-619E6946FC3D}', '业务管理', '单位管理', '修改子单位', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:46');
INSERT INTO `il_user_log` VALUES ('{E30A2FFC-E94A-CEF8-6E7B-F7886928A866}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:21:27');
INSERT INTO `il_user_log` VALUES ('{E32313D1-1B78-5B42-74A4-26506619CE09}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:09:40');
INSERT INTO `il_user_log` VALUES ('{E32F3456-9DA2-4F72-6A34-98F54D316FD5}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:05:08');
INSERT INTO `il_user_log` VALUES ('{E3549648-471B-B744-BE55-7EF1E35592AA}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:54:42');
INSERT INTO `il_user_log` VALUES ('{E38A3C83-3954-8625-285E-B8353FFFE819}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:40:30');
INSERT INTO `il_user_log` VALUES ('{E3C6BCCA-BAFC-7377-A04B-67864EA30EDA}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:25');
INSERT INTO `il_user_log` VALUES ('{E4096298-7990-3A46-F9BB-92A3CFA77DF8}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:22');
INSERT INTO `il_user_log` VALUES ('{E40C0AC2-9C7A-B40C-C3FD-D40C16D5DBDF}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:07:55');
INSERT INTO `il_user_log` VALUES ('{E463664D-556C-F03F-C43F-E8B7666ED729}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:10:17');
INSERT INTO `il_user_log` VALUES ('{E4651FEB-2711-EB26-A8D2-CB419E671DE0}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:01:39');
INSERT INTO `il_user_log` VALUES ('{E46D356E-DFC9-03C8-5F3A-E9AE6504A72D}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:58');
INSERT INTO `il_user_log` VALUES ('{E4896901-563F-53A3-6411-E23398FC5D28}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-19 12:26:13');
INSERT INTO `il_user_log` VALUES ('{E4A744E6-3C1F-B6C8-0A63-7783A6DE22B5}', '业务管理', '组管理', '添加组', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 20:09:17');
INSERT INTO `il_user_log` VALUES ('{E4D4507C-BE90-1F8D-8A2A-97D33EC016D3}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:37:48');
INSERT INTO `il_user_log` VALUES ('{E5147CD9-01DE-73BA-09BB-67A1ACA42DFE}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:36:56');
INSERT INTO `il_user_log` VALUES ('{E516BD0B-0D09-CC13-CBFA-34E1B065B721}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:53:50');
INSERT INTO `il_user_log` VALUES ('{E5264598-DF2B-342C-F4E4-D88E89516258}', '业务管理', '信标管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:55');
INSERT INTO `il_user_log` VALUES ('{E56A62BA-AA35-DBF7-7DAA-C925806D7E50}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 14:47:43');
INSERT INTO `il_user_log` VALUES ('{E56FD582-84BF-54B6-A25F-94E98156F51E}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:53:19');
INSERT INTO `il_user_log` VALUES ('{E5E6DB04-F0C3-A4B3-8F96-D385360C888C}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:51:57');
INSERT INTO `il_user_log` VALUES ('{E6038235-6014-90B6-B000-F7A771D6493B}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:51:50');
INSERT INTO `il_user_log` VALUES ('{E606FA37-3ED5-B90F-4757-4DCBA7EAEE8A}', '业务管理', '人员管理', '人员详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:09:49');
INSERT INTO `il_user_log` VALUES ('{E60ABE79-6808-7CD2-C003-F6EE63B5054E}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 19:54:22');
INSERT INTO `il_user_log` VALUES ('{E62A115F-F648-177E-60F2-9F5C1F7C959E}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:36:29');
INSERT INTO `il_user_log` VALUES ('{E6303B85-F1C0-586C-3A3C-FF7FE741E05A}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:35:26');
INSERT INTO `il_user_log` VALUES ('{E634848D-2E2C-8701-CA27-840B62A56F0E}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:17:51');
INSERT INTO `il_user_log` VALUES ('{E64AAF1D-CA9D-FC20-98CE-0380E1B414E6}', '业务管理', '现场终端管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:22');
INSERT INTO `il_user_log` VALUES ('{E6657D0A-1883-3C07-8C77-8C03985092D4}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:40:13');
INSERT INTO `il_user_log` VALUES ('{E6937C19-CD1C-3CE4-44BF-A6421A08409D}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 20:09:35');
INSERT INTO `il_user_log` VALUES ('{E6B9FF16-297D-57E2-5E00-B0204E7AB48A}', '系统管理', '角色管理', '权限明细', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 14:45:13');
INSERT INTO `il_user_log` VALUES ('{E6D16C5A-D2A4-4329-7210-8FB01603318E}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:13:51');
INSERT INTO `il_user_log` VALUES ('{E6D817FF-6AEB-8EA2-FFD9-6FE555B1C1A2}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:04:56');
INSERT INTO `il_user_log` VALUES ('{E6F0C31F-3EB5-EA76-B646-F5FC52616EF5}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:20:57');
INSERT INTO `il_user_log` VALUES ('{E71530AB-791B-E8ED-D0B9-52001BAF9034}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:32:05');
INSERT INTO `il_user_log` VALUES ('{E7281B1C-6B19-898F-BD0E-7FFA4E521872}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:05:21');
INSERT INTO `il_user_log` VALUES ('{E73551D2-4569-5C3F-67F1-6C805B4992BD}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:40:54');
INSERT INTO `il_user_log` VALUES ('{E751BA85-8C0E-F41B-9535-FEF39656C7E4}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:45');
INSERT INTO `il_user_log` VALUES ('{E765CD5D-9495-63C3-E519-7EF80B23D9DC}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:18:54');
INSERT INTO `il_user_log` VALUES ('{E78F5F74-DB41-F8EF-D35B-C304EC74804A}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:20:50');
INSERT INTO `il_user_log` VALUES ('{E7CD5CA7-7E79-F06D-5189-5914F58D1B67}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:55:54');
INSERT INTO `il_user_log` VALUES ('{E8031F02-0A65-2D42-0854-726ED1668AE0}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:35:29');
INSERT INTO `il_user_log` VALUES ('{E812BC66-B44C-713E-624E-D5AA5D6CD203}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:41:39');
INSERT INTO `il_user_log` VALUES ('{E825CED3-28E1-E577-2A69-57B81AD0827F}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:09');
INSERT INTO `il_user_log` VALUES ('{E83318E4-BB62-6C54-97D0-847C1EFFCF3E}', '系统管理', '节点管理', '节点列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:50:43');
INSERT INTO `il_user_log` VALUES ('{E852FC2B-139F-A7CD-5854-9C6571F951ED}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:29');
INSERT INTO `il_user_log` VALUES ('{E85879E0-81D9-36F5-2E15-1CD521502A99}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:49:14');
INSERT INTO `il_user_log` VALUES ('{E8694142-5279-0D38-45E8-D6D80A8E8F5E}', '业务管理', '楼层管理', '添加楼层', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:41:54');
INSERT INTO `il_user_log` VALUES ('{E892BB1E-2DCE-EE9F-676F-0AD715810740}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:18:14');
INSERT INTO `il_user_log` VALUES ('{E8B2E134-CB80-A32F-CA19-B1C2AE15640E}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:01');
INSERT INTO `il_user_log` VALUES ('{E902DF45-5D84-7FB7-4F50-190CE3FDF277}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:12');
INSERT INTO `il_user_log` VALUES ('{E952E904-FA2B-B59B-8245-CC3224424EA3}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:33:11');
INSERT INTO `il_user_log` VALUES ('{E999BEC5-B2AA-AB9B-704F-55D4634E9615}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:31');
INSERT INTO `il_user_log` VALUES ('{E9A178FB-5449-0A58-E4AA-B9C3F5B1B5D7}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:44');
INSERT INTO `il_user_log` VALUES ('{E9C82EDE-48ED-2B01-C0AD-31ED8CC53403}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:26:51');
INSERT INTO `il_user_log` VALUES ('{E9D4C9BF-B285-08B2-7B9E-97A70210A5EA}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 15:07:38');
INSERT INTO `il_user_log` VALUES ('{E9E700DE-B55F-BA47-E0CD-F078F8E60213}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:41:43');
INSERT INTO `il_user_log` VALUES ('{EA3E47CD-B1EE-2434-5F9C-F16A9056F084}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:42:15');
INSERT INTO `il_user_log` VALUES ('{EA458CB3-B0EC-6666-88DB-E68423256364}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:44:53');
INSERT INTO `il_user_log` VALUES ('{EA580EE0-059F-31EE-CB0F-413DF7245E45}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:10:10');
INSERT INTO `il_user_log` VALUES ('{EA98C178-7B6B-C468-BA37-A1C93E62830A}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:09:47');
INSERT INTO `il_user_log` VALUES ('{EAA9B30B-7CC3-90EE-5EBB-21E4A7F037A4}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:27:33');
INSERT INTO `il_user_log` VALUES ('{EABB42D1-90D8-8E86-C12A-A5CB48CA15EF}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:50');
INSERT INTO `il_user_log` VALUES ('{EAD32D91-92B0-86EA-F14D-5A1789B4B113}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 18:02:04');
INSERT INTO `il_user_log` VALUES ('{EADB5009-CF2A-CF32-7C22-220B75B4A643}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:52:45');
INSERT INTO `il_user_log` VALUES ('{EB3E283E-B785-822C-FFB6-16B9CE87BE0A}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:58:42');
INSERT INTO `il_user_log` VALUES ('{EB4C648C-8817-F271-94D4-ACE6935ADD09}', '业务管理', '定位套件管理', '删除', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-18 21:20:42');
INSERT INTO `il_user_log` VALUES ('{EB87B5F7-8D3A-4E4D-3239-05E6BA31914F}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:46:33');
INSERT INTO `il_user_log` VALUES ('{EB9076AF-898D-111C-D1DC-18072C690423}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:13');
INSERT INTO `il_user_log` VALUES ('{EBCCD230-5043-2C5B-968E-80BBEE9989E8}', '业务管理', '定位套件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:26:34');
INSERT INTO `il_user_log` VALUES ('{EBDD921F-FBB6-31E8-32D4-7CD7339FE588}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:21:58');
INSERT INTO `il_user_log` VALUES ('{EBE77712-E649-DBB1-DB2F-FC443FB618F3}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:40');
INSERT INTO `il_user_log` VALUES ('{EBEBD15B-82B8-7EA7-BD38-5FECFA87FC05}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:55');
INSERT INTO `il_user_log` VALUES ('{EBFD4A8C-7720-C6C7-440A-87F553153631}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 19:27:37');
INSERT INTO `il_user_log` VALUES ('{EC33C4E1-F57F-42A2-01F2-935DF4E0E68C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:00:51');
INSERT INTO `il_user_log` VALUES ('{EC98DDE0-6E16-8326-9B66-CEC1D93D7543}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:37:04');
INSERT INTO `il_user_log` VALUES ('{ECB06C9E-451E-21EA-6739-A34EE7D4600D}', '业务管理', '建筑管理', '建筑列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:27:35');
INSERT INTO `il_user_log` VALUES ('{ECBA5369-8F91-2124-8F07-5D93164164D6}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-08 17:02:02');
INSERT INTO `il_user_log` VALUES ('{ECFC89B2-2633-44E4-B853-F04847C1BA80}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 16:19:13');
INSERT INTO `il_user_log` VALUES ('{ED0776EC-10BE-3B73-9823-E7F7CE2AE558}', '业务管理', '单位管理', '子单位列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:07');
INSERT INTO `il_user_log` VALUES ('{ED446F6A-C683-EABE-BB72-91AB9B0F03E9}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:42:29');
INSERT INTO `il_user_log` VALUES ('{ED4D995C-1247-3393-195E-07932C9BC7A6}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:08:23');
INSERT INTO `il_user_log` VALUES ('{ED5352C4-CCC7-CE6E-5B3A-ECC2333182DA}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:52:48');
INSERT INTO `il_user_log` VALUES ('{ED53F3E8-EB58-B076-2C5E-A535E494EF82}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:47:17');
INSERT INTO `il_user_log` VALUES ('{ED598A2E-6DEC-9E22-4FBA-63963F1BD2B0}', '业务管理', '单位管理', '子单位列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:47:45');
INSERT INTO `il_user_log` VALUES ('{ED67DC31-3601-EF8E-BA02-47A8EE99579F}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 19:28:07');
INSERT INTO `il_user_log` VALUES ('{EDACF817-3D1E-B1F9-F809-F4B9E2422087}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 17:26:11');
INSERT INTO `il_user_log` VALUES ('{EDB3C8B7-A7E0-72E4-B78E-9B639A9D6257}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:44:49');
INSERT INTO `il_user_log` VALUES ('{EDBDEDCC-40D6-FEBC-C725-4E6FF58AC17F}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:52:32');
INSERT INTO `il_user_log` VALUES ('{EDDB0F8C-E3DF-290F-E545-748C2A6A04FB}', '业务管理', '组成员管理', '成员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:17:05');
INSERT INTO `il_user_log` VALUES ('{EDEF5580-407C-4A83-9BBC-128FEE56A94C}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:30');
INSERT INTO `il_user_log` VALUES ('{EE5A1807-F02A-90B7-B6AA-CD18D4B8279E}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 19:27:35');
INSERT INTO `il_user_log` VALUES ('{EE7B4158-70CA-2A5D-8DAE-01CBB0E2F41B}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 19:43:59');
INSERT INTO `il_user_log` VALUES ('{EE85D031-5AEA-C5AD-621A-1A8D5E0E4D77}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:04:23');
INSERT INTO `il_user_log` VALUES ('{EE8859EC-BFBA-571C-1AA7-4B2D96C949E8}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:39:17');
INSERT INTO `il_user_log` VALUES ('{EE8BF462-A049-263A-29DD-D7C61D3DDBAE}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:57');
INSERT INTO `il_user_log` VALUES ('{EEA1D15C-F150-C8BB-ADBE-A1F34A96E74F}', '业务管理', '信标管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-25 19:27:47');
INSERT INTO `il_user_log` VALUES ('{EF7BFF23-A3BC-FF4E-F224-E93B803646BF}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:36:14');
INSERT INTO `il_user_log` VALUES ('{EF7CBB87-CA6A-F11F-53F8-09CFA6E22424}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 17:45:22');
INSERT INTO `il_user_log` VALUES ('{EF9BAF0B-AB8C-2AD8-796D-01863E68DE6E}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:46:22');
INSERT INTO `il_user_log` VALUES ('{EFAD9C0D-802E-1F80-A712-6F77901A048E}', '业务管理', '现场终端管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:30');
INSERT INTO `il_user_log` VALUES ('{EFCF6EDD-785F-01C8-35CD-B6680E237F4A}', '业务管理', '事件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:37:03');
INSERT INTO `il_user_log` VALUES ('{EFE5205F-FD51-5A2D-6B12-C37B7B3B508C}', '系统管理', '用户管理', '修改用户信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:41:25');
INSERT INTO `il_user_log` VALUES ('{EFF4C0E4-DF88-FC89-DFE7-75627D804295}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:42:06');
INSERT INTO `il_user_log` VALUES ('{F05DC94B-C8CA-73E8-6546-DDF43E97766C}', '系统管理', '用户管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:02:37');
INSERT INTO `il_user_log` VALUES ('{F06281A7-F794-9E75-24DC-2B3610477D03}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:51:45');
INSERT INTO `il_user_log` VALUES ('{F0ACEB77-B641-2906-1662-68CC9CFE6CFF}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:00:49');
INSERT INTO `il_user_log` VALUES ('{F0CB65D4-93B2-1586-6F99-95855EB2EBE9}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:45:07');
INSERT INTO `il_user_log` VALUES ('{F102D986-C62A-87C6-832A-E055F2FD4E6A}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:07:53');
INSERT INTO `il_user_log` VALUES ('{F14EFA2B-93C3-230A-E3B5-A7E4C0A85E7C}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:39:42');
INSERT INTO `il_user_log` VALUES ('{F15E519C-B007-EAD5-2039-FFA0388BD7C0}', '业务管理', '单位管理', '本单位信息', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:06');
INSERT INTO `il_user_log` VALUES ('{F1707056-B9C6-54D4-2E8A-C702BF097047}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:54:46');
INSERT INTO `il_user_log` VALUES ('{F1891DDC-5936-D2CD-61F1-EE64C03697E5}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:59');
INSERT INTO `il_user_log` VALUES ('{F1C6BD0F-70FA-C374-07ED-A0BC91220F19}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:30');
INSERT INTO `il_user_log` VALUES ('{F1D0AD88-D702-915A-1852-ED35D7AD5EA8}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:33:54');
INSERT INTO `il_user_log` VALUES ('{F1DF6369-CA69-87EC-22DC-4E2071DC4020}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:44:14');
INSERT INTO `il_user_log` VALUES ('{F1EE9FEE-4111-B96C-53A6-AFB60A878DB1}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:30:19');
INSERT INTO `il_user_log` VALUES ('{F1F10D89-1BBA-532D-C5FF-DE70D1114BD3}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:15:17');
INSERT INTO `il_user_log` VALUES ('{F24262FD-87F0-CC67-B605-51BE125F870A}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:55');
INSERT INTO `il_user_log` VALUES ('{F24ED97A-0267-B598-F248-E18CA5466BC3}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-22 17:14:29');
INSERT INTO `il_user_log` VALUES ('{F26A1DE0-52B1-7EBA-E295-C7EF065FB408}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'suser02', '3', '0.0.0.0', '2017-09-04 18:08:03');
INSERT INTO `il_user_log` VALUES ('{F272E67D-9C2D-A424-4F23-6E125BF8B12F}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 15:08:42');
INSERT INTO `il_user_log` VALUES ('{F2752110-BAF2-BF90-3C16-56E5F336B494}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:40');
INSERT INTO `il_user_log` VALUES ('{F29B0653-27F5-D0E8-A0A8-50F03A879AA7}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:35:13');
INSERT INTO `il_user_log` VALUES ('{F2BAF9CA-1D28-146C-EF95-5D3B46239B3E}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:09:28');
INSERT INTO `il_user_log` VALUES ('{F2C29C8B-639E-835D-A7A5-E6A25B593355}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:20:19');
INSERT INTO `il_user_log` VALUES ('{F2DEF81C-0127-3B04-8E37-53B9C2D38A56}', '业务管理', '单位管理', '子单位列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 14:38:05');
INSERT INTO `il_user_log` VALUES ('{F2F451BF-C627-C37E-E91E-673B478E8D64}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:35');
INSERT INTO `il_user_log` VALUES ('{F2FC4E89-3BB7-5134-3FB3-45338F755AEE}', '系统管理', '用户管理', '修改用户信息', '失败', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:49:05');
INSERT INTO `il_user_log` VALUES ('{F31C9DBA-1661-6142-046D-597B6711B698}', '业务管理', '信标管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:00:44');
INSERT INTO `il_user_log` VALUES ('{F31DF1B4-F632-ED08-855D-7D848853D68A}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:10:31');
INSERT INTO `il_user_log` VALUES ('{F31F9743-BA82-E4FF-6935-54C4F79B0B89}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '10.0.2.111', '2017-09-21 19:41:02');
INSERT INTO `il_user_log` VALUES ('{F36B3746-87FB-D516-FE32-349CE08F6FAB}', '业务管理', '单位管理', '子单位列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-04 20:06:48');
INSERT INTO `il_user_log` VALUES ('{F3840134-EF94-1B81-4413-2A7126A8EEAD}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:39:14');
INSERT INTO `il_user_log` VALUES ('{F3B34A99-8B98-FAFD-8B4D-681CA08D1098}', '系统管理', '节点管理', '节点列表', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:06:15');
INSERT INTO `il_user_log` VALUES ('{F3B7AAE8-D472-442E-F3B9-2D582D550E06}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:59');
INSERT INTO `il_user_log` VALUES ('{F3B7AF97-E7D7-51F9-D375-2696898679C2}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-11 11:03:02');
INSERT INTO `il_user_log` VALUES ('{F3C7367B-F2A7-3A31-261F-2AABA2CC2795}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:44:44');
INSERT INTO `il_user_log` VALUES ('{F409CA4D-DA25-7AFF-FB5C-084FA69AF875}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:14:51');
INSERT INTO `il_user_log` VALUES ('{F4244F8C-FF93-0522-7999-29413389B9A8}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:59:18');
INSERT INTO `il_user_log` VALUES ('{F43596EC-2009-0203-3655-E551B77EA3BA}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:55:02');
INSERT INTO `il_user_log` VALUES ('{F44407AE-B715-F7F0-1E46-7880C7E44147}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:37');
INSERT INTO `il_user_log` VALUES ('{F46977A0-7ACE-7EFB-B410-5FE3C631EB54}', '系统管理', '节点管理', '节点列表', '失败', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 17:06:25');
INSERT INTO `il_user_log` VALUES ('{F4898D72-892F-8274-0343-E643636F6256}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:09:03');
INSERT INTO `il_user_log` VALUES ('{F490A530-BE7E-A400-78EE-C7FDFBDB0F89}', '业务管理', '单位管理', '本单位信息', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:02:26');
INSERT INTO `il_user_log` VALUES ('{F4ACF358-2A7A-FA1C-3478-5F8CBE663327}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:12:35');
INSERT INTO `il_user_log` VALUES ('{F500773F-A26B-17C3-6B17-1F087C2E73C7}', '业务管理', '现场终端管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:51:21');
INSERT INTO `il_user_log` VALUES ('{F50B2C4C-1E50-5CCC-976F-2797B9AB359B}', '系统管理', '用户管理', '禁用', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:04:32');
INSERT INTO `il_user_log` VALUES ('{F58CD86B-69FE-4829-7773-297C49B1E320}', '业务管理', '单位管理', '本单位信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:34');
INSERT INTO `il_user_log` VALUES ('{F5A55F96-C952-399F-3642-548382A6C5B7}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:25:14');
INSERT INTO `il_user_log` VALUES ('{F5C0E71C-51E0-08B3-4650-1550E62AD39D}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 11:04:31');
INSERT INTO `il_user_log` VALUES ('{F6028E97-9F3C-4E13-0CF2-31F2BD46C761}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:33:51');
INSERT INTO `il_user_log` VALUES ('{F6166598-3D32-A46C-7243-2D2F59793DED}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:45:53');
INSERT INTO `il_user_log` VALUES ('{F61A6D61-6BC0-0A6C-D5AF-FC8159306DEA}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:30');
INSERT INTO `il_user_log` VALUES ('{F61EED0B-ACF2-6D57-2E72-CF33ACC67268}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:01:57');
INSERT INTO `il_user_log` VALUES ('{F61FD024-0B1A-150D-1F4B-6AE448FF5033}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 19:49:53');
INSERT INTO `il_user_log` VALUES ('{F62BF5CB-0109-159A-EBAF-C8ED66D81232}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 18:50:38');
INSERT INTO `il_user_log` VALUES ('{F6498C32-74C4-6D7D-328D-BC25BF43E824}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:40:51');
INSERT INTO `il_user_log` VALUES ('{F676A675-22D7-4546-1157-36BDBDEACF95}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-11 11:02:52');
INSERT INTO `il_user_log` VALUES ('{F68922F9-E508-1E16-8D17-EE3111FE2AA2}', '系统管理', '角色管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:46:10');
INSERT INTO `il_user_log` VALUES ('{F6ABBD97-99A2-49A3-157C-5EB0905F8A07}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 19:52:47');
INSERT INTO `il_user_log` VALUES ('{F6CDAD75-177C-F942-0D53-22AB252EAAF9}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 20:20:24');
INSERT INTO `il_user_log` VALUES ('{F7269CF9-983A-87F7-8CBF-A463059F5CBF}', '业务管理', '定位套件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-08 17:02:08');
INSERT INTO `il_user_log` VALUES ('{F7462A1C-2241-0775-DCD7-D20696C520C8}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:47:30');
INSERT INTO `il_user_log` VALUES ('{F77C9417-8572-12B8-9551-64BCAB8912F6}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:33:28');
INSERT INTO `il_user_log` VALUES ('{F7AF2DE7-09F3-A406-E57B-3C42AAE20FD5}', '系统管理', '角色管理', '角色授权', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:33:43');
INSERT INTO `il_user_log` VALUES ('{F7D58253-05E1-8EBE-5589-1087502E78EA}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:21:07');
INSERT INTO `il_user_log` VALUES ('{F7DF1284-389C-A9DD-B677-FF324BDBF89E}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 16:20:48');
INSERT INTO `il_user_log` VALUES ('{F7EB5DBC-59C9-9AC5-CE85-E0100F5FE3FC}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 17:56:16');
INSERT INTO `il_user_log` VALUES ('{F7FB9DD5-B0EA-5D4F-EA27-322A8961A6C9}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:04:16');
INSERT INTO `il_user_log` VALUES ('{F8010146-757F-1488-FB25-A770F0EFCC92}', '系统管理', '角色管理', '权限明细', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 09:47:38');
INSERT INTO `il_user_log` VALUES ('{F8039E1C-7172-F44D-7414-32E2F2DF597B}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 19:48:07');
INSERT INTO `il_user_log` VALUES ('{F840590F-D388-6CA2-2953-54C8A94AB335}', '业务管理', '首页', '主面板', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:22:34');
INSERT INTO `il_user_log` VALUES ('{F85B234A-0F92-69A0-0C67-DBCD8BE49434}', '业务管理', '单位管理', '本单位信息', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-09 09:27:46');
INSERT INTO `il_user_log` VALUES ('{F8662965-ED15-34A4-5243-C5664D84DC24}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 12:00:18');
INSERT INTO `il_user_log` VALUES ('{F87B899F-746D-C51E-E5F5-FF9A55D7111B}', '业务管理', '人员管理', '添加人员', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-06 16:58:22');
INSERT INTO `il_user_log` VALUES ('{F883D2F8-BC46-934C-1335-3CBF574B4B51}', '业务管理', '建筑管理', '建筑列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:54:09');
INSERT INTO `il_user_log` VALUES ('{F8982BC3-A473-CD16-A8CA-E2AD90383219}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-31 12:00:10');
INSERT INTO `il_user_log` VALUES ('{F8BDE284-7E32-5F4F-98EF-7FA549A11647}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:34');
INSERT INTO `il_user_log` VALUES ('{F8C5DB6E-A166-F11D-8CE0-A6EE33644DD5}', '业务管理', '人员管理', '人员列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:52:52');
INSERT INTO `il_user_log` VALUES ('{F8DAA016-4068-45F1-2F46-09E6AB58640E}', '业务管理', '组管理', '组列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-16 16:40:48');
INSERT INTO `il_user_log` VALUES ('{F8DCB89B-4B57-4247-3E9E-A997BD58263D}', '业务管理', '事件管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:28:16');
INSERT INTO `il_user_log` VALUES ('{F8E13F1A-3DAB-5BFD-62BB-249A51DDC18C}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 11:14:53');
INSERT INTO `il_user_log` VALUES ('{F8F58CD1-4D82-94DF-A222-06B3EFC3FDC0}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 15:32:10');
INSERT INTO `il_user_log` VALUES ('{F93AAE4A-C193-549D-F6F2-362F7703AFC3}', '业务管理', '首页', '主页', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-22 15:08:28');
INSERT INTO `il_user_log` VALUES ('{F99C1D70-1565-F709-D6F4-8004BEA6A6E6}', '业务管理', '信标管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:21:03');
INSERT INTO `il_user_log` VALUES ('{F9A184E5-8BB7-37F8-E31C-A3CFC24C4DFF}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-20 20:10:09');
INSERT INTO `il_user_log` VALUES ('{F9E9E48A-FA4C-0092-78CA-4AA133E6534C}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-19 19:05:25');
INSERT INTO `il_user_log` VALUES ('{F9F0D068-D04B-3F0C-0A4F-88A7FB1F1631}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 19:37:48');
INSERT INTO `il_user_log` VALUES ('{F9FFFDC0-C4FB-48FC-8A61-3A8FE5E016F7}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:02:00');
INSERT INTO `il_user_log` VALUES ('{FA14DCAA-9588-8E6C-FC0D-EF57D5AD1E5D}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 11:11:28');
INSERT INTO `il_user_log` VALUES ('{FAD68170-686D-25D3-E9CC-D8E4EE7F6E41}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 18:00:13');
INSERT INTO `il_user_log` VALUES ('{FAF1626E-AFF7-DF9D-4DBE-0A558CB95B5D}', '业务管理', '首页', '主页', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 17:26:02');
INSERT INTO `il_user_log` VALUES ('{FB6C3C12-4DC4-83B1-634D-3303362941AB}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-18 19:06:08');
INSERT INTO `il_user_log` VALUES ('{FBFE0871-D2E0-B9E2-21D6-E650E39D11D8}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 21:07:59');
INSERT INTO `il_user_log` VALUES ('{FC33F068-B1EB-0BBA-42F2-F6F292926C4E}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-30 09:43:15');
INSERT INTO `il_user_log` VALUES ('{FC3455BA-9D69-5FC8-B060-740377369068}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:03:37');
INSERT INTO `il_user_log` VALUES ('{FC34C633-B3E6-F754-5B33-2476ED2055A9}', '业务管理', '楼层管理', '楼层列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-13 14:53:56');
INSERT INTO `il_user_log` VALUES ('{FC451755-7F51-2D0A-5131-662BECDFED82}', '业务管理', '楼层管理', '楼层列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:12:15');
INSERT INTO `il_user_log` VALUES ('{FC518AF5-C493-5CE2-0563-49FF3D9006DF}', '业务管理', '消防设备管理', '消防设备列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:36:38');
INSERT INTO `il_user_log` VALUES ('{FC68384C-6B3B-1AE5-9EFC-2D48D88C4E58}', '业务管理', '人员管理', '人员列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-10-30 16:55:34');
INSERT INTO `il_user_log` VALUES ('{FC713380-98DA-31A3-83E7-B137A5D56B9F}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 20:03:52');
INSERT INTO `il_user_log` VALUES ('{FC82FE4A-A794-CFBE-FC8C-5F7F2CF6E77D}', '系统管理', '角色管理', '权限明细', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 10:44:51');
INSERT INTO `il_user_log` VALUES ('{FC87A181-BFDD-C205-96D9-8F205A730D70}', '业务管理', '事件管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-07 16:41:41');
INSERT INTO `il_user_log` VALUES ('{FC9E5C61-932C-E277-B81C-D1EE1AF26855}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:04:23');
INSERT INTO `il_user_log` VALUES ('{FCACF8FE-88AE-9AE7-FE6E-AB06D7ECB888}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 20:03:58');
INSERT INTO `il_user_log` VALUES ('{FCB0C19F-0E28-0D37-8522-B35F6A676A8A}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:57:48');
INSERT INTO `il_user_log` VALUES ('{FCB5346A-8541-839F-E497-C069AEF91CC3}', '系统管理', '用户管理', '列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-22 18:38:03');
INSERT INTO `il_user_log` VALUES ('{FCB6B83D-5A57-769B-0B26-16DD5A78F116}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:53:38');
INSERT INTO `il_user_log` VALUES ('{FD14BA91-D411-FE2C-E3BF-2D02391B265C}', '业务管理', '定位套件管理', '列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:54:33');
INSERT INTO `il_user_log` VALUES ('{FD251335-0A2D-B786-D874-497267B1FD1A}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:39:30');
INSERT INTO `il_user_log` VALUES ('{FD66EEF3-5D51-B3FC-73A5-B6164D7462C5}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 16:29:01');
INSERT INTO `il_user_log` VALUES ('{FD6BA1FE-2265-F799-09CF-FAAC992BA174}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd0', '3', '0.0.0.0', '2017-09-04 18:45:14');
INSERT INTO `il_user_log` VALUES ('{FD851449-DD25-9990-9E3E-08088B7FAA79}', '系统管理', '角色管理', '角色授权', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 17:12:11');
INSERT INTO `il_user_log` VALUES ('{FD97EBA9-6C7D-2448-2058-7D7C8754BF56}', '业务管理', '人员管理', '人员列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:24:59');
INSERT INTO `il_user_log` VALUES ('{FDAEF877-5431-D895-7AC4-25AAB32210BF}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 18:36:41');
INSERT INTO `il_user_log` VALUES ('{FDB03B8D-EE2B-C090-FF42-7337D7CD4F8A}', '业务管理', '人员管理', '修改人员信息', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:27:02');
INSERT INTO `il_user_log` VALUES ('{FE117AA0-4DF9-67EA-B0A7-1C31B74CC394}', '业务管理', '首页', '主面板', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-21 12:16:36');
INSERT INTO `il_user_log` VALUES ('{FE264B30-385A-2CC6-C861-5A537B665EA5}', '系统管理', '用户管理', '修改用户信息', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd00', '3', '0.0.0.0', '2017-09-04 19:43:37');
INSERT INTO `il_user_log` VALUES ('{FE3C666B-D19E-112F-242E-8F9B496A9E04}', '业务管理', '建筑管理', '建筑列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 10:34:38');
INSERT INTO `il_user_log` VALUES ('{FE5C3B64-6846-CECA-2B25-36DBE1A95403}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:50');
INSERT INTO `il_user_log` VALUES ('{FE5DC3E2-9D50-7E49-8E54-FD4D4EF5DECD}', '系统管理', '角色管理', '列表', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0.0.0.0', '2017-09-04 17:34:44');
INSERT INTO `il_user_log` VALUES ('{FE91E1C8-0BF5-A750-FEDF-F4FB3E603EDD}', '业务管理', '首页', '主面板', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd01', '3', '0.0.0.0', '2017-09-04 19:28:19');
INSERT INTO `il_user_log` VALUES ('{FE99E469-369B-669A-9C08-52E96F42A4AF}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:59:51');
INSERT INTO `il_user_log` VALUES ('{FF036B56-5FD0-FF16-1D9F-E6601C478DFC}', '业务管理', '定位套件管理', '列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 14:52:16');
INSERT INTO `il_user_log` VALUES ('{FF550952-063D-97FC-B1AA-16EAB0B0F9AC}', '业务管理', '人员管理', '人员列表', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 15:57:40');
INSERT INTO `il_user_log` VALUES ('{FF7C432D-B9CC-AE79-2283-FD8B6FE77F53}', '业务管理', '事件管理', '查看详情', '成功', '{6EAADA7E-AAB5-D9F5-11D8-E915D232A81F}', 'admin', '1', '0.0.0.0', '2017-09-20 14:10:31');
INSERT INTO `il_user_log` VALUES ('{FF967D04-676B-1FB4-004A-AB26F2C690DA}', '业务管理', '组管理', '组列表', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 19:17:05');
INSERT INTO `il_user_log` VALUES ('{FF9C0D2B-9AF8-4556-8809-4AFA980FDE74}', '业务管理', '组管理', '组列表', '成功', '{CFA1A5E2-291A-3201-8200-B71F02702371}', 'szzd', '3', '0.0.0.0', '2017-09-06 16:57:24');
INSERT INTO `il_user_log` VALUES ('{FFF74834-79C8-58DD-40A6-5C166B23D9B9}', '业务管理', '定位套件管理', '添加', '成功', '{4EA3D7E9-CD96-F1C0-4662-523AEA42BF1A}', 'suser01', '2', '0.0.0.0', '2017-09-20 15:26:33');
INSERT INTO `il_user_log` VALUES ('{FFFE0E76-089F-BB58-35F8-A3EB3ADBD5CB}', '业务管理', '信标管理', '修改', '成功', '{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '1', '0.0.0.0', '2017-09-21 16:00:43');

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
INSERT INTO `st_systemlog` VALUES ('675a39f5-eda4-4fa7-8ddd-37881e68c954', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('aef55c1c-fdc2-4ab3-877e-12a774f6ab8a', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('2d1981f7-9fe0-4e6b-9d84-10e5aa060b18', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test6\n', null);
INSERT INTO `st_systemlog` VALUES ('7360d3aa-adbc-4b14-a6b1-57d78ceb7880', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('ae09fea6-3093-4559-9abc-d8f4ca2c6615', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('3f01f5ee-eeef-4da1-a803-e086b5c131bd', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test6\n', null);
INSERT INTO `st_systemlog` VALUES ('b1dc883c-c580-4f03-bc62-05c6a0fa2ea3', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('9bf64037-7880-4606-ba00-c9cce6c3436a', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('7a88cd00-3314-4a69-bdc2-5e149f10fad7', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test6\n', null);
INSERT INTO `st_systemlog` VALUES ('680805c6-5c92-4027-b69a-37bf6d41a3c9', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('661c3d58-a543-4305-99e3-be505299aa8c', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('746403c8-c9c2-4a2e-bfe2-e95e21c3c871', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test6\n', null);
INSERT INTO `st_systemlog` VALUES ('dcef1de1-7693-4789-9bad-852e15b281e2', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('2f72042d-673d-441e-944e-fa79d942d5a6', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('46edd52f-a578-415c-bc20-ddf478979eb0', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test6\n', null);
INSERT INTO `st_systemlog` VALUES ('bec9164c-eb9b-4442-8283-b028cf1fbacb', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('3806863f-6d1c-41c7-859c-52a65d3c3035', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('e6984e89-bd76-495c-939d-fe1f7a014dbc', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test6\n', null);
INSERT INTO `st_systemlog` VALUES ('0b133e3d-7aa5-467a-b985-97a8ff45d9d1', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('558e3d36-a3b8-4260-82a6-c735878e015e', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('d948bd17-5bd8-4b71-8963-39c0eefe312d', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test8\n', null);
INSERT INTO `st_systemlog` VALUES ('6bdffc15-8fbb-43db-8294-0752d8b6928e', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('b4892a57-9c79-4e1f-8b5b-c3b635e244a2', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('1019c0df-90cc-4356-ba68-afa734065f16', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test8\n', null);
INSERT INTO `st_systemlog` VALUES ('0ad0f65a-229f-4f77-ad1f-817f078810c7', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('dd017666-50bf-45c8-8e98-83d39e8b2284', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('41922f08-5736-4f7d-a2d7-26297ed13680', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test8\n', null);
INSERT INTO `st_systemlog` VALUES ('add70e2f-fa11-46fb-9e8b-7752658db03f', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('dc225575-0b5c-4420-9396-fca791e76581', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('c85ad877-1eab-407c-ab2a-8f433eba7fb1', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test8\n', null);
INSERT INTO `st_systemlog` VALUES ('99ab4f87-a3eb-4cd4-93f8-ea45bdede80a', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('a9677fc7-3005-4471-ab28-74d6b1322c25', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('a4d1d723-ee00-4892-9742-787af6a2d591', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test8\n', null);
INSERT INTO `st_systemlog` VALUES ('6aba9bc7-6adc-41c1-bffb-e8dfad6f30ed', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('a68ddc60-bc74-4646-90de-9be7c67e74e4', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('dbf72865-09e2-411d-a0fc-296358813a9e', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test8\n', null);
INSERT INTO `st_systemlog` VALUES ('2bd8c66c-0d60-4e2e-b9fd-e888c6d1ac69', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('28b25ed6-7e53-411c-b40d-7d35b3b3520a', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
INSERT INTO `st_systemlog` VALUES ('6b6215a8-bfe7-44ce-aafb-d450752660a8', 'ERROR', '执行SQL语句出错,错误信息为:Unknown column \'mac\' in \'where clause\'!\n类型:Text\n查询语句为:select name from il_person where loc_id = \r\n                                                        (select loc_id from il_locator where mac=@mac)\n参数:@mac=test8\n', null);
INSERT INTO `st_systemlog` VALUES ('4dc9a53c-f454-4aa0-a8b0-7399f1273807', 'INFO', '进入发信标给Inav', null);
INSERT INTO `st_systemlog` VALUES ('1e68cd9f-8cf6-4d44-995d-d425a2865172', 'inaventer', '{\"type\":\"bsPosition\",\"group\":\"test2\",\"bsType\":2,\"bsRange\":0,\"bsTValue\":-72,\"bsPosInfo\":[]}', null);
