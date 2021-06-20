/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : xinyangxiya

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-06-04 21:14:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category` (
  `id` varchar(36) NOT NULL,
  `pid` varchar(36) DEFAULT NULL COMMENT '父级节点',
  `name` varchar(100) DEFAULT NULL COMMENT '类型名称',
  `code` varchar(100) DEFAULT NULL COMMENT '类型编码',
  `cg_cs_code` varchar(32) DEFAULT NULL COMMENT '名称编码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `has_child` varchar(3) DEFAULT NULL COMMENT '是否有子节点',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_code` (`code`) USING BTREE,
  UNIQUE KEY `cg_cs_code` (`cg_cs_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_category
-- ----------------------------
INSERT INTO `sys_category` VALUES ('1400787401063866369', '0', '采购线', 'A01', 'cg', 'admin', '2021-06-04 20:11:56', 'admin', '2021-06-04 20:14:31', 'A05', '1');
INSERT INTO `sys_category` VALUES ('1400788050866413570', '1400787401063866369', '食品处', 'A01A01', '1', 'admin', '2021-06-04 20:14:31', 'admin', '2021-06-04 20:25:09', 'A05', '1');
INSERT INTO `sys_category` VALUES ('1400788163026296834', '1400787401063866369', '生鲜处', 'A01A02', '2', 'admin', '2021-06-04 20:14:58', 'admin', '2021-06-04 20:25:40', 'A05', '1');
INSERT INTO `sys_category` VALUES ('1400788220077219841', '1400787401063866369', '家居处', 'A01A03', '3', 'admin', '2021-06-04 20:15:12', 'admin', '2021-06-04 20:27:04', 'A05', '1');
INSERT INTO `sys_category` VALUES ('1400788268114583553', '1400787401063866369', '针纺处', 'A01A04', '4', 'admin', '2021-06-04 20:15:23', 'admin', '2021-06-04 20:28:19', 'A05', '1');
INSERT INTO `sys_category` VALUES ('1400788317787725826', '1400787401063866369', '家电处', 'A01A05', '5', 'admin', '2021-06-04 20:15:35', 'admin', '2021-06-04 20:28:28', 'A05', '1');
INSERT INTO `sys_category` VALUES ('1400790726719119361', '1400788050866413570', '饮料课', 'A01A01A01', '10', 'admin', '2021-06-04 20:25:09', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400790764832759810', '1400788050866413570', '休闲课', 'A01A01A02', '11', 'admin', '2021-06-04 20:25:18', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400790807195230210', '1400788050866413570', '干副课', 'A01A01A03', '12', 'admin', '2021-06-04 20:25:29', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400790856247615490', '1400788163026296834', '菜课', 'A01A02A01', '20', 'admin', '2021-06-04 20:25:40', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400790898408759298', '1400788163026296834', '水果课', 'A01A02A02', '21', 'admin', '2021-06-04 20:25:50', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400790939403886594', '1400788163026296834', '冷藏课', 'A01A02A03', '22', 'admin', '2021-06-04 20:26:00', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400790977907597314', '1400788163026296834', '冷冻课', 'A01A02A04', '23', 'admin', '2021-06-04 20:26:09', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791014427402241', '1400788163026296834', '熟食课', 'A01A02A05', '24', 'admin', '2021-06-04 20:26:18', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791051538604034', '1400788163026296834', '鱼课', 'A01A02A06', '25', 'admin', '2021-06-04 20:26:27', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791088234569730', '1400788163026296834', '肉课', 'A01A02A07', '26', 'admin', '2021-06-04 20:26:36', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791130353770498', '1400788163026296834', '面包课', 'A01A02A08', '27', 'admin', '2021-06-04 20:26:46', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791164398936066', '1400788163026296834', '加工菜课', 'A01A02A09', '28', 'admin', '2021-06-04 20:26:54', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791209173131266', '1400788220077219841', '家居用品课', 'A01A03A01', '30', 'admin', '2021-06-04 20:27:04', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791245432889345', '1400788220077219841', '厨房用品课', 'A01A03A02', '31', 'admin', '2021-06-04 20:27:13', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791280962838529', '1400788220077219841', '清洁用品课', 'A01A03A03', '32', 'admin', '2021-06-04 20:27:21', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791319101644801', '1400788220077219841', '个人护理课', 'A01A03A04', '33', 'admin', '2021-06-04 20:27:31', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791357118816257', '1400788220077219841', '休闲百货课', 'A01A03A05', '34', 'admin', '2021-06-04 20:27:40', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791397564489730', '1400788220077219841', '文化体育课', 'A01A03A06', '35', 'admin', '2021-06-04 20:27:49', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791481735782402', '1400788220077219841', '娱乐课', 'A01A03A07', '36', 'admin', '2021-06-04 20:28:09', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791521501978626', '1400788268114583553', '针纺课', 'A01A04A01', '40', 'admin', '2021-06-04 20:28:19', null, null, 'A05', null);
INSERT INTO `sys_category` VALUES ('1400791559644979201', '1400788317787725826', '家电课', 'A01A05A01', '50', 'admin', '2021-06-04 20:28:28', null, null, 'A05', null);
