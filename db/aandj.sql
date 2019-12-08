/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : aandj

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-12-08 11:54:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `addressbook`
-- ----------------------------
DROP TABLE IF EXISTS `addressbook`;
CREATE TABLE `addressbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_type_id` int(11) DEFAULT NULL,
  `party_type_id` int(11) DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `is_primary` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addressbook
-- ----------------------------
INSERT INTO `addressbook` VALUES ('1', null, '2', '1', '444', 'เพชรเกษม', null, null, '58', '73110', null, null, '1559538254', '1559538254', '1', null);

-- ----------------------------
-- Table structure for `amphur`
-- ----------------------------
DROP TABLE IF EXISTS `amphur`;
CREATE TABLE `amphur` (
  `AMPHUR_ID` int(5) NOT NULL AUTO_INCREMENT,
  `AMPHUR_CODE` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `AMPHUR_NAME` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `POSTCODE` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `GEO_ID` int(5) NOT NULL DEFAULT '0',
  `PROVINCE_ID` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`AMPHUR_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=999 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of amphur
-- ----------------------------
INSERT INTO `amphur` VALUES ('1', '1001', 'เขตพระนคร   ', '10200', '2', '1');
INSERT INTO `amphur` VALUES ('2', '1002', 'เขตดุสิต   ', '10300', '2', '1');
INSERT INTO `amphur` VALUES ('3', '1003', 'เขตหนองจอก   ', '10530', '2', '1');
INSERT INTO `amphur` VALUES ('4', '1004', 'เขตบางรัก   ', '10500', '2', '1');
INSERT INTO `amphur` VALUES ('5', '1005', 'เขตบางเขน   ', '10220', '2', '1');
INSERT INTO `amphur` VALUES ('6', '1006', 'เขตบางกะปิ   ', '10240', '2', '1');
INSERT INTO `amphur` VALUES ('7', '1007', 'เขตปทุมวัน   ', '10330', '2', '1');
INSERT INTO `amphur` VALUES ('8', '1008', 'เขตป้อมปราบศัตรูพ่าย   ', '10100', '2', '1');
INSERT INTO `amphur` VALUES ('9', '1009', 'เขตพระโขนง   ', '10260', '2', '1');
INSERT INTO `amphur` VALUES ('10', '1010', 'เขตมีนบุรี   ', '10510', '2', '1');
INSERT INTO `amphur` VALUES ('11', '1011', 'เขตลาดกระบัง   ', '10520', '2', '1');
INSERT INTO `amphur` VALUES ('12', '1012', 'เขตยานนาวา   ', '10120', '2', '1');
INSERT INTO `amphur` VALUES ('13', '1013', 'เขตสัมพันธวงศ์   ', '10100', '2', '1');
INSERT INTO `amphur` VALUES ('14', '1014', 'เขตพญาไท   ', '10400', '2', '1');
INSERT INTO `amphur` VALUES ('15', '1015', 'เขตธนบุรี   ', '10600', '2', '1');
INSERT INTO `amphur` VALUES ('16', '1016', 'เขตบางกอกใหญ่   ', '10600', '2', '1');
INSERT INTO `amphur` VALUES ('17', '1017', 'เขตห้วยขวาง   ', '10310', '2', '1');
INSERT INTO `amphur` VALUES ('18', '1018', 'เขตคลองสาน   ', '10600', '2', '1');
INSERT INTO `amphur` VALUES ('19', '1019', 'เขตตลิ่งชัน   ', '10170', '2', '1');
INSERT INTO `amphur` VALUES ('20', '1020', 'เขตบางกอกน้อย   ', '10700', '2', '1');
INSERT INTO `amphur` VALUES ('21', '1021', 'เขตบางขุนเทียน   ', '10150', '2', '1');
INSERT INTO `amphur` VALUES ('22', '1022', 'เขตภาษีเจริญ   ', '10160', '2', '1');
INSERT INTO `amphur` VALUES ('23', '1023', 'เขตหนองแขม   ', '10160', '2', '1');
INSERT INTO `amphur` VALUES ('24', '1024', 'เขตราษฎร์บูรณะ   ', '10140', '2', '1');
INSERT INTO `amphur` VALUES ('25', '1025', 'เขตบางพลัด   ', '10700', '2', '1');
INSERT INTO `amphur` VALUES ('26', '1026', 'เขตดินแดง   ', '10400', '2', '1');
INSERT INTO `amphur` VALUES ('27', '1027', 'เขตบึงกุ่ม   ', '10240', '2', '1');
INSERT INTO `amphur` VALUES ('28', '1028', 'เขตสาทร   ', '10120', '2', '1');
INSERT INTO `amphur` VALUES ('29', '1029', 'เขตบางซื่อ   ', '10800', '2', '1');
INSERT INTO `amphur` VALUES ('30', '1030', 'เขตจตุจักร   ', '10900', '2', '1');
INSERT INTO `amphur` VALUES ('31', '1031', 'เขตบางคอแหลม   ', '10120', '2', '1');
INSERT INTO `amphur` VALUES ('32', '1032', 'เขตประเวศ   ', '10250', '2', '1');
INSERT INTO `amphur` VALUES ('33', '1033', 'เขตคลองเตย   ', '10110', '2', '1');
INSERT INTO `amphur` VALUES ('34', '1034', 'เขตสวนหลวง   ', '10250', '2', '1');
INSERT INTO `amphur` VALUES ('35', '1035', 'เขตจอมทอง   ', '10150', '2', '1');
INSERT INTO `amphur` VALUES ('36', '1036', 'เขตดอนเมือง   ', '10210', '2', '1');
INSERT INTO `amphur` VALUES ('37', '1037', 'เขตราชเทวี   ', '10400', '2', '1');
INSERT INTO `amphur` VALUES ('38', '1038', 'เขตลาดพร้าว   ', '10230', '2', '1');
INSERT INTO `amphur` VALUES ('39', '1039', 'เขตวัฒนา   ', '10110', '2', '1');
INSERT INTO `amphur` VALUES ('40', '1040', 'เขตบางแค   ', '10160', '2', '1');
INSERT INTO `amphur` VALUES ('41', '1041', 'เขตหลักสี่   ', '10210', '2', '1');
INSERT INTO `amphur` VALUES ('42', '1042', 'เขตสายไหม   ', '10220', '2', '1');
INSERT INTO `amphur` VALUES ('43', '1043', 'เขตคันนายาว   ', '10230', '2', '1');
INSERT INTO `amphur` VALUES ('44', '1044', 'เขตสะพานสูง   ', '10240', '2', '1');
INSERT INTO `amphur` VALUES ('45', '1045', 'เขตวังทองหลาง   ', '10310', '2', '1');
INSERT INTO `amphur` VALUES ('46', '1046', 'เขตคลองสามวา   ', '10510', '2', '1');
INSERT INTO `amphur` VALUES ('47', '1047', 'เขตบางนา   ', '10260', '2', '1');
INSERT INTO `amphur` VALUES ('48', '1048', 'เขตทวีวัฒนา   ', '10170', '2', '1');
INSERT INTO `amphur` VALUES ('49', '1049', 'เขตทุ่งครุ   ', '10140', '2', '1');
INSERT INTO `amphur` VALUES ('50', '1050', 'เขตบางบอน   ', '10150', '2', '1');
INSERT INTO `amphur` VALUES ('52', '1101', 'เมืองสมุทรปราการ   ', '10270', '2', '2');
INSERT INTO `amphur` VALUES ('53', '1102', 'บางบ่อ   ', '10560', '2', '2');
INSERT INTO `amphur` VALUES ('54', '1103', 'บางพลี   ', '10540', '2', '2');
INSERT INTO `amphur` VALUES ('55', '1104', 'พระประแดง   ', '10130', '2', '2');
INSERT INTO `amphur` VALUES ('56', '1105', 'พระสมุทรเจดีย์   ', '10290', '2', '2');
INSERT INTO `amphur` VALUES ('57', '1106', 'บางเสาธง   ', '10540', '2', '2');
INSERT INTO `amphur` VALUES ('58', '1201', 'เมืองนนทบุรี   ', '11000', '2', '3');
INSERT INTO `amphur` VALUES ('59', '1202', 'บางกรวย   ', '11130', '2', '3');
INSERT INTO `amphur` VALUES ('60', '1203', 'บางใหญ่   ', '11140', '2', '3');
INSERT INTO `amphur` VALUES ('61', '1204', 'บางบัวทอง   ', '11110', '2', '3');
INSERT INTO `amphur` VALUES ('62', '1205', 'ไทรน้อย   ', '11150', '2', '3');
INSERT INTO `amphur` VALUES ('63', '1206', 'ปากเกร็ด   ', '11120', '2', '3');
INSERT INTO `amphur` VALUES ('66', '1301', 'เมืองปทุมธานี   ', '12000', '2', '4');
INSERT INTO `amphur` VALUES ('67', '1302', 'คลองหลวง   ', '12120', '2', '4');
INSERT INTO `amphur` VALUES ('68', '1303', 'ธัญบุรี   ', '12110', '2', '4');
INSERT INTO `amphur` VALUES ('69', '1304', 'หนองเสือ   ', '12170', '2', '4');
INSERT INTO `amphur` VALUES ('70', '1305', 'ลาดหลุมแก้ว   ', '12140', '2', '4');
INSERT INTO `amphur` VALUES ('71', '1306', 'ลำลูกกา   ', '12150', '2', '4');
INSERT INTO `amphur` VALUES ('72', '1307', 'สามโคก   ', '12160', '2', '4');
INSERT INTO `amphur` VALUES ('74', '1401', 'พระนครศรีอยุธยา   ', '13000', '2', '5');
INSERT INTO `amphur` VALUES ('75', '1402', 'ท่าเรือ   ', '13130', '2', '5');
INSERT INTO `amphur` VALUES ('76', '1403', 'นครหลวง   ', '13260', '2', '5');
INSERT INTO `amphur` VALUES ('77', '1404', 'บางไทร   ', '13190', '2', '5');
INSERT INTO `amphur` VALUES ('78', '1405', 'บางบาล   ', '13250', '2', '5');
INSERT INTO `amphur` VALUES ('79', '1406', 'บางปะอิน   ', '13160', '2', '5');
INSERT INTO `amphur` VALUES ('80', '1407', 'บางปะหัน   ', '13220', '2', '5');
INSERT INTO `amphur` VALUES ('81', '1408', 'ผักไห่   ', '13120', '2', '5');
INSERT INTO `amphur` VALUES ('82', '1409', 'ภาชี   ', '13140', '2', '5');
INSERT INTO `amphur` VALUES ('83', '1410', 'ลาดบัวหลวง   ', '13230', '2', '5');
INSERT INTO `amphur` VALUES ('84', '1411', 'วังน้อย   ', '13170', '2', '5');
INSERT INTO `amphur` VALUES ('85', '1412', 'เสนา   ', '13110', '2', '5');
INSERT INTO `amphur` VALUES ('86', '1413', 'บางซ้าย   ', '13270', '2', '5');
INSERT INTO `amphur` VALUES ('87', '1414', 'อุทัย   ', '13210', '2', '5');
INSERT INTO `amphur` VALUES ('88', '1415', 'มหาราช   ', '13150', '2', '5');
INSERT INTO `amphur` VALUES ('89', '1416', 'บ้านแพรก   ', '13240', '2', '5');
INSERT INTO `amphur` VALUES ('90', '1501', 'เมืองอ่างทอง   ', '14000', '2', '6');
INSERT INTO `amphur` VALUES ('91', '1502', 'ไชโย   ', '14140', '2', '6');
INSERT INTO `amphur` VALUES ('92', '1503', 'ป่าโมก   ', '14130', '2', '6');
INSERT INTO `amphur` VALUES ('93', '1504', 'โพธิ์ทอง   ', '14120', '2', '6');
INSERT INTO `amphur` VALUES ('94', '1505', 'แสวงหา   ', '14150', '2', '6');
INSERT INTO `amphur` VALUES ('95', '1506', 'วิเศษชัยชาญ   ', '14110', '2', '6');
INSERT INTO `amphur` VALUES ('96', '1507', 'สามโก้   ', '14160', '2', '6');
INSERT INTO `amphur` VALUES ('97', '1601', 'เมืองลพบุรี   ', '15000', '2', '7');
INSERT INTO `amphur` VALUES ('98', '1602', 'พัฒนานิคม   ', '15140', '2', '7');
INSERT INTO `amphur` VALUES ('99', '1603', 'โคกสำโรง   ', '15120', '2', '7');
INSERT INTO `amphur` VALUES ('100', '1604', 'ชัยบาดาล   ', '15130', '2', '7');
INSERT INTO `amphur` VALUES ('101', '1605', 'ท่าวุ้ง   ', '15150', '2', '7');
INSERT INTO `amphur` VALUES ('102', '1606', 'บ้านหมี่   ', '15110', '2', '7');
INSERT INTO `amphur` VALUES ('103', '1607', 'ท่าหลวง   ', '15230', '2', '7');
INSERT INTO `amphur` VALUES ('104', '1608', 'สระโบสถ์   ', '15240', '2', '7');
INSERT INTO `amphur` VALUES ('105', '1609', 'โคกเจริญ   ', '15250', '2', '7');
INSERT INTO `amphur` VALUES ('106', '1610', 'ลำสนธิ   ', '15190', '2', '7');
INSERT INTO `amphur` VALUES ('107', '1611', 'หนองม่วง   ', '15170', '2', '7');
INSERT INTO `amphur` VALUES ('109', '1701', 'เมืองสิงห์บุรี   ', '16000', '2', '8');
INSERT INTO `amphur` VALUES ('110', '1702', 'บางระจัน   ', '16130', '2', '8');
INSERT INTO `amphur` VALUES ('111', '1703', 'ค่ายบางระจัน   ', '16150', '2', '8');
INSERT INTO `amphur` VALUES ('112', '1704', 'พรหมบุรี   ', '16120', '2', '8');
INSERT INTO `amphur` VALUES ('113', '1705', 'ท่าช้าง   ', '16140', '2', '8');
INSERT INTO `amphur` VALUES ('114', '1706', 'อินทร์บุรี   ', '16110', '2', '8');
INSERT INTO `amphur` VALUES ('115', '1801', 'เมืองชัยนาท   ', '17000', '2', '9');
INSERT INTO `amphur` VALUES ('116', '1802', 'มโนรมย์   ', '17110', '2', '9');
INSERT INTO `amphur` VALUES ('117', '1803', 'วัดสิงห์   ', '17120', '2', '9');
INSERT INTO `amphur` VALUES ('118', '1804', 'สรรพยา   ', '17150', '2', '9');
INSERT INTO `amphur` VALUES ('119', '1805', 'สรรคบุรี   ', '17140', '2', '9');
INSERT INTO `amphur` VALUES ('120', '1806', 'หันคา   ', '17130', '2', '9');
INSERT INTO `amphur` VALUES ('121', '1807', 'หนองมะโมง   ', '17120', '2', '9');
INSERT INTO `amphur` VALUES ('122', '1808', 'เนินขาม   ', '17130', '2', '9');
INSERT INTO `amphur` VALUES ('123', '1901', 'เมืองสระบุรี   ', '18000', '2', '10');
INSERT INTO `amphur` VALUES ('124', '1902', 'แก่งคอย   ', '18110', '2', '10');
INSERT INTO `amphur` VALUES ('125', '1903', 'หนองแค   ', '18140', '2', '10');
INSERT INTO `amphur` VALUES ('126', '1904', 'วิหารแดง   ', '18150', '2', '10');
INSERT INTO `amphur` VALUES ('127', '1905', 'หนองแซง   ', '18170', '2', '10');
INSERT INTO `amphur` VALUES ('128', '1906', 'บ้านหมอ   ', '18130', '2', '10');
INSERT INTO `amphur` VALUES ('129', '1907', 'ดอนพุด   ', '18210', '2', '10');
INSERT INTO `amphur` VALUES ('130', '1908', 'หนองโดน   ', '18190', '2', '10');
INSERT INTO `amphur` VALUES ('131', '1909', 'พระพุทธบาท   ', '18120', '2', '10');
INSERT INTO `amphur` VALUES ('132', '1910', 'เสาไห้   ', '18160', '2', '10');
INSERT INTO `amphur` VALUES ('133', '1911', 'มวกเหล็ก   ', '18180', '2', '10');
INSERT INTO `amphur` VALUES ('134', '1912', 'วังม่วง   ', '18220', '2', '10');
INSERT INTO `amphur` VALUES ('135', '1913', 'เฉลิมพระเกียรติ(10-กทม.)', '00000', '2', '10');
INSERT INTO `amphur` VALUES ('136', '2001', 'เมืองชลบุรี   ', '20000', '5', '11');
INSERT INTO `amphur` VALUES ('137', '2002', 'บ้านบึง   ', '20170', '5', '11');
INSERT INTO `amphur` VALUES ('138', '2003', 'หนองใหญ่   ', '20190', '5', '11');
INSERT INTO `amphur` VALUES ('139', '2004', 'บางละมุง   ', '20150', '5', '11');
INSERT INTO `amphur` VALUES ('140', '2005', 'พานทอง   ', '20160', '5', '11');
INSERT INTO `amphur` VALUES ('141', '2006', 'พนัสนิคม   ', '20140', '5', '11');
INSERT INTO `amphur` VALUES ('142', '2007', 'ศรีราชา   ', '20110', '5', '11');
INSERT INTO `amphur` VALUES ('143', '2008', 'เกาะสีชัง   ', '20120', '5', '11');
INSERT INTO `amphur` VALUES ('144', '2009', 'สัตหีบ   ', '20180', '5', '11');
INSERT INTO `amphur` VALUES ('145', '2010', 'บ่อทอง   ', '20270', '5', '11');
INSERT INTO `amphur` VALUES ('146', '2011', 'เกาะจันทร์   ', '20240', '5', '11');
INSERT INTO `amphur` VALUES ('147', '2051', 'สัตหีบ (สาขาตำบลบางเสร่)*   ', '20250', '5', '11');
INSERT INTO `amphur` VALUES ('148', '2072', 'ท้องถิ่นเทศบาลเมืองหนองปรือ*   ', '00000', '5', '11');
INSERT INTO `amphur` VALUES ('149', '2093', 'เทศบาลตำบลแหลมฉบัง*   ', '00000', '5', '11');
INSERT INTO `amphur` VALUES ('150', '2099', 'เทศบาลเมืองชลบุรี*   ', '00000', '5', '11');
INSERT INTO `amphur` VALUES ('151', '2101', 'เมืองระยอง   ', '21000', '5', '12');
INSERT INTO `amphur` VALUES ('152', '2102', 'บ้านฉาง   ', '21130', '5', '12');
INSERT INTO `amphur` VALUES ('153', '2103', 'แกลง   ', '21110', '5', '12');
INSERT INTO `amphur` VALUES ('154', '2104', 'วังจันทร์   ', '21210', '5', '12');
INSERT INTO `amphur` VALUES ('155', '2105', 'บ้านค่าย   ', '21120', '5', '12');
INSERT INTO `amphur` VALUES ('156', '2106', 'ปลวกแดง   ', '21140', '5', '12');
INSERT INTO `amphur` VALUES ('157', '2107', 'เขาชะเมา   ', '21110', '5', '12');
INSERT INTO `amphur` VALUES ('158', '2108', 'นิคมพัฒนา   ', '21180', '5', '12');
INSERT INTO `amphur` VALUES ('159', '2151', 'สาขาตำบลมาบข่า*   ', '00000', '5', '12');
INSERT INTO `amphur` VALUES ('160', '2201', 'เมืองจันทบุรี   ', '22000', '5', '13');
INSERT INTO `amphur` VALUES ('161', '2202', 'ขลุง   ', '22110', '5', '13');
INSERT INTO `amphur` VALUES ('162', '2203', 'ท่าใหม่   ', '22120', '5', '13');
INSERT INTO `amphur` VALUES ('163', '2204', 'โป่งน้ำร้อน   ', '22140', '5', '13');
INSERT INTO `amphur` VALUES ('164', '2205', 'มะขาม   ', '22150', '5', '13');
INSERT INTO `amphur` VALUES ('165', '2206', 'แหลมสิงห์   ', '22130', '5', '13');
INSERT INTO `amphur` VALUES ('166', '2207', 'สอยดาว   ', '22180', '5', '13');
INSERT INTO `amphur` VALUES ('167', '2208', 'แก่งหางแมว   ', '22160', '5', '13');
INSERT INTO `amphur` VALUES ('168', '2209', 'นายายอาม   ', '22160', '5', '13');
INSERT INTO `amphur` VALUES ('169', '2210', 'เขาคิชฌกูฏ   ', '22210', '5', '13');
INSERT INTO `amphur` VALUES ('170', '2281', '*กิ่ง อ.กำพุธ  จ.จันทบุรี   ', '00000', '5', '13');
INSERT INTO `amphur` VALUES ('171', '2301', 'เมืองตราด   ', '23000', '5', '14');
INSERT INTO `amphur` VALUES ('172', '2302', 'คลองใหญ่   ', '23110', '5', '14');
INSERT INTO `amphur` VALUES ('173', '2303', 'เขาสมิง   ', '23130', '5', '14');
INSERT INTO `amphur` VALUES ('174', '2304', 'บ่อไร่   ', '23140', '5', '14');
INSERT INTO `amphur` VALUES ('175', '2305', 'แหลมงอบ   ', '23120', '5', '14');
INSERT INTO `amphur` VALUES ('176', '2306', 'เกาะกูด   ', '23000', '5', '14');
INSERT INTO `amphur` VALUES ('177', '2307', 'เกาะช้าง   ', '23170', '5', '14');
INSERT INTO `amphur` VALUES ('178', '2401', 'เมืองฉะเชิงเทรา   ', '24000', '5', '15');
INSERT INTO `amphur` VALUES ('179', '2402', 'บางคล้า   ', '24110', '5', '15');
INSERT INTO `amphur` VALUES ('180', '2403', 'บางน้ำเปรี้ยว   ', '24150', '5', '15');
INSERT INTO `amphur` VALUES ('181', '2404', 'บางปะกง   ', '24130', '5', '15');
INSERT INTO `amphur` VALUES ('182', '2405', 'บ้านโพธิ์   ', '24140', '5', '15');
INSERT INTO `amphur` VALUES ('183', '2406', 'พนมสารคาม   ', '24120', '5', '15');
INSERT INTO `amphur` VALUES ('184', '2407', 'ราชสาส์น   ', '24120', '5', '15');
INSERT INTO `amphur` VALUES ('185', '2408', 'สนามชัยเขต   ', '24160', '5', '15');
INSERT INTO `amphur` VALUES ('186', '2409', 'แปลงยาว   ', '24190', '5', '15');
INSERT INTO `amphur` VALUES ('187', '2410', 'ท่าตะเกียบ   ', '24160', '5', '15');
INSERT INTO `amphur` VALUES ('188', '2411', 'คลองเขื่อน   ', '24000', '5', '15');
INSERT INTO `amphur` VALUES ('189', '2501', 'เมืองปราจีนบุรี   ', '25000', '5', '16');
INSERT INTO `amphur` VALUES ('190', '2502', 'กบินทร์บุรี   ', '25110', '5', '16');
INSERT INTO `amphur` VALUES ('191', '2503', 'นาดี   ', '25220', '5', '16');
INSERT INTO `amphur` VALUES ('192', '2504', '*สระแก้ว   ', '00000', '5', '16');
INSERT INTO `amphur` VALUES ('193', '2505', '*วังน้ำเย็น   ', '00000', '5', '16');
INSERT INTO `amphur` VALUES ('194', '2506', 'บ้านสร้าง   ', '25150', '5', '16');
INSERT INTO `amphur` VALUES ('195', '2507', 'ประจันตคาม   ', '25130', '5', '16');
INSERT INTO `amphur` VALUES ('196', '2508', 'ศรีมหาโพธิ   ', '25140', '5', '16');
INSERT INTO `amphur` VALUES ('197', '2509', 'ศรีมโหสถ   ', '25190', '5', '16');
INSERT INTO `amphur` VALUES ('198', '2510', '*อรัญประเทศ   ', '00000', '5', '16');
INSERT INTO `amphur` VALUES ('199', '2511', '*ตาพระยา   ', '00000', '5', '16');
INSERT INTO `amphur` VALUES ('200', '2512', '*วัฒนานคร   ', '00000', '5', '16');
INSERT INTO `amphur` VALUES ('201', '2513', '*คลองหาด   ', '00000', '5', '16');
INSERT INTO `amphur` VALUES ('202', '2601', 'เมืองนครนายก   ', '26000', '2', '17');
INSERT INTO `amphur` VALUES ('203', '2602', 'ปากพลี   ', '26130', '2', '17');
INSERT INTO `amphur` VALUES ('204', '2603', 'บ้านนา   ', '26110', '2', '17');
INSERT INTO `amphur` VALUES ('205', '2604', 'องครักษ์   ', '26120', '2', '17');
INSERT INTO `amphur` VALUES ('206', '2701', 'เมืองสระแก้ว   ', '27000', '5', '18');
INSERT INTO `amphur` VALUES ('207', '2702', 'คลองหาด   ', '27260', '5', '18');
INSERT INTO `amphur` VALUES ('208', '2703', 'ตาพระยา   ', '27180', '5', '18');
INSERT INTO `amphur` VALUES ('209', '2704', 'วังน้ำเย็น   ', '27210', '5', '18');
INSERT INTO `amphur` VALUES ('210', '2705', 'วัฒนานคร   ', '27160', '5', '18');
INSERT INTO `amphur` VALUES ('211', '2706', 'อรัญประเทศ   ', '27120', '5', '18');
INSERT INTO `amphur` VALUES ('212', '2707', 'เขาฉกรรจ์   ', '27000', '5', '18');
INSERT INTO `amphur` VALUES ('213', '2708', 'โคกสูง   ', '27120', '5', '18');
INSERT INTO `amphur` VALUES ('214', '2709', 'วังสมบูรณ์   ', '27250', '5', '18');
INSERT INTO `amphur` VALUES ('215', '3001', 'เมืองนครราชสีมา   ', '30000', '3', '19');
INSERT INTO `amphur` VALUES ('216', '3002', 'ครบุรี   ', '30250', '3', '19');
INSERT INTO `amphur` VALUES ('217', '3003', 'เสิงสาง   ', '30330', '3', '19');
INSERT INTO `amphur` VALUES ('218', '3004', 'คง   ', '30260', '3', '19');
INSERT INTO `amphur` VALUES ('219', '3005', 'บ้านเหลื่อม   ', '30350', '3', '19');
INSERT INTO `amphur` VALUES ('220', '3006', 'จักราช   ', '30230', '3', '19');
INSERT INTO `amphur` VALUES ('221', '3007', 'โชคชัย   ', '30190', '3', '19');
INSERT INTO `amphur` VALUES ('222', '3008', 'ด่านขุนทด   ', '30210', '3', '19');
INSERT INTO `amphur` VALUES ('223', '3009', 'โนนไทย   ', '30220', '3', '19');
INSERT INTO `amphur` VALUES ('224', '3010', 'โนนสูง   ', '30160', '3', '19');
INSERT INTO `amphur` VALUES ('225', '3011', 'ขามสะแกแสง   ', '30290', '3', '19');
INSERT INTO `amphur` VALUES ('226', '3012', 'บัวใหญ่   ', '30120', '3', '19');
INSERT INTO `amphur` VALUES ('227', '3013', 'ประทาย   ', '30180', '3', '19');
INSERT INTO `amphur` VALUES ('228', '3014', 'ปักธงชัย   ', '30150', '3', '19');
INSERT INTO `amphur` VALUES ('229', '3015', 'พิมาย   ', '30110', '3', '19');
INSERT INTO `amphur` VALUES ('230', '3016', 'ห้วยแถลง   ', '30240', '3', '19');
INSERT INTO `amphur` VALUES ('231', '3017', 'ชุมพวง   ', '30270', '3', '19');
INSERT INTO `amphur` VALUES ('232', '3018', 'สูงเนิน   ', '30170', '3', '19');
INSERT INTO `amphur` VALUES ('233', '3019', 'ขามทะเลสอ   ', '30280', '3', '19');
INSERT INTO `amphur` VALUES ('234', '3020', 'สีคิ้ว   ', '30140', '3', '19');
INSERT INTO `amphur` VALUES ('235', '3021', 'ปากช่อง   ', '30130', '3', '19');
INSERT INTO `amphur` VALUES ('236', '3022', 'หนองบุญมาก   ', '30410', '3', '19');
INSERT INTO `amphur` VALUES ('237', '3023', 'แก้งสนามนาง   ', '30440', '3', '19');
INSERT INTO `amphur` VALUES ('238', '3024', 'โนนแดง   ', '30360', '3', '19');
INSERT INTO `amphur` VALUES ('239', '3025', 'วังน้ำเขียว   ', '30370', '3', '19');
INSERT INTO `amphur` VALUES ('240', '3026', 'เทพารักษ์   ', '30210', '3', '19');
INSERT INTO `amphur` VALUES ('241', '3027', 'เมืองยาง   ', '30270', '3', '19');
INSERT INTO `amphur` VALUES ('242', '3028', 'พระทองคำ   ', '30220', '3', '19');
INSERT INTO `amphur` VALUES ('243', '3029', 'ลำทะเมนชัย   ', '30270', '3', '19');
INSERT INTO `amphur` VALUES ('244', '3030', 'บัวลาย   ', '30120', '3', '19');
INSERT INTO `amphur` VALUES ('245', '3031', 'สีดา   ', '30430', '3', '19');
INSERT INTO `amphur` VALUES ('246', '3032', 'เฉลิมพระเกียรติ(สระบุรี)', '18000', '3', '19');
INSERT INTO `amphur` VALUES ('247', '3049', 'ท้องถิ่นเทศบาลตำบลโพธิ์กลาง*   ', '00000', '3', '19');
INSERT INTO `amphur` VALUES ('248', '3051', 'สาขาตำบลมะค่า-พลสงคราม*   ', '00000', '3', '19');
INSERT INTO `amphur` VALUES ('249', '3081', '*โนนลาว   ', '00000', '3', '19');
INSERT INTO `amphur` VALUES ('250', '3101', 'เมืองบุรีรัมย์   ', '31000', '3', '20');
INSERT INTO `amphur` VALUES ('251', '3102', 'คูเมือง   ', '31190', '3', '20');
INSERT INTO `amphur` VALUES ('252', '3103', 'กระสัง', '31160', '3', '20');
INSERT INTO `amphur` VALUES ('253', '3104', 'นางรอง   ', '31110', '3', '20');
INSERT INTO `amphur` VALUES ('254', '3105', 'หนองกี่   ', '31210', '3', '20');
INSERT INTO `amphur` VALUES ('255', '3106', 'ละหานทราย   ', '31170', '3', '20');
INSERT INTO `amphur` VALUES ('256', '3107', 'ประโคนชัย   ', '31140', '3', '20');
INSERT INTO `amphur` VALUES ('257', '3108', 'บ้านกรวด   ', '31180', '3', '20');
INSERT INTO `amphur` VALUES ('258', '3109', 'พุทไธสง   ', '31120', '3', '20');
INSERT INTO `amphur` VALUES ('259', '3110', 'ลำปลายมาศ   ', '31130', '3', '20');
INSERT INTO `amphur` VALUES ('260', '3111', 'สตึก   ', '31150', '3', '20');
INSERT INTO `amphur` VALUES ('261', '3112', 'ปะคำ   ', '31220', '3', '20');
INSERT INTO `amphur` VALUES ('262', '3113', 'นาโพธิ์   ', '31230', '3', '20');
INSERT INTO `amphur` VALUES ('263', '3114', 'หนองหงส์   ', '31240', '3', '20');
INSERT INTO `amphur` VALUES ('264', '3115', 'พลับพลาชัย   ', '31250', '3', '20');
INSERT INTO `amphur` VALUES ('265', '3116', 'ห้วยราช   ', '31000', '3', '20');
INSERT INTO `amphur` VALUES ('266', '3117', 'โนนสุวรรณ   ', '31110', '3', '20');
INSERT INTO `amphur` VALUES ('267', '3118', 'ชำนิ   ', '31110', '3', '20');
INSERT INTO `amphur` VALUES ('268', '3119', 'บ้านใหม่ไชยพจน์   ', '31120', '3', '20');
INSERT INTO `amphur` VALUES ('269', '3120', 'โนนดินแดง   ', '31260', '3', '20');
INSERT INTO `amphur` VALUES ('270', '3121', 'บ้านด่าน   ', '31000', '3', '20');
INSERT INTO `amphur` VALUES ('271', '3122', 'แคนดง   ', '31150', '3', '20');
INSERT INTO `amphur` VALUES ('272', '3123', 'เฉลิมพระเกียรติ(20-ชลบุรี)', '00000', '3', '20');
INSERT INTO `amphur` VALUES ('273', '3201', 'เมืองสุรินทร์   ', '32000', '3', '21');
INSERT INTO `amphur` VALUES ('274', '3202', 'ชุมพลบุรี   ', '32190', '3', '21');
INSERT INTO `amphur` VALUES ('275', '3203', 'ท่าตูม   ', '32120', '3', '21');
INSERT INTO `amphur` VALUES ('276', '3204', 'จอมพระ   ', '32180', '3', '21');
INSERT INTO `amphur` VALUES ('277', '3205', 'ปราสาท   ', '32140', '3', '21');
INSERT INTO `amphur` VALUES ('278', '3206', 'กาบเชิง   ', '32210', '3', '21');
INSERT INTO `amphur` VALUES ('279', '3207', 'รัตนบุรี   ', '32130', '3', '21');
INSERT INTO `amphur` VALUES ('280', '3208', 'สนม   ', '32160', '3', '21');
INSERT INTO `amphur` VALUES ('281', '3209', 'ศีขรภูมิ   ', '32110', '3', '21');
INSERT INTO `amphur` VALUES ('282', '3210', 'สังขะ   ', '32150', '3', '21');
INSERT INTO `amphur` VALUES ('283', '3211', 'ลำดวน   ', '32220', '3', '21');
INSERT INTO `amphur` VALUES ('284', '3212', 'สำโรงทาบ   ', '32170', '3', '21');
INSERT INTO `amphur` VALUES ('285', '3213', 'บัวเชด   ', '32230', '3', '21');
INSERT INTO `amphur` VALUES ('286', '3214', 'พนมดงรัก   ', '32140', '3', '21');
INSERT INTO `amphur` VALUES ('287', '3215', 'ศรีณรงค์   ', '32150', '3', '21');
INSERT INTO `amphur` VALUES ('288', '3216', 'เขวาสินรินทร์   ', '32000', '3', '21');
INSERT INTO `amphur` VALUES ('289', '3217', 'โนนนารายณ์   ', '32130', '3', '21');
INSERT INTO `amphur` VALUES ('290', '3301', 'เมืองศรีสะเกษ   ', '33000', '3', '22');
INSERT INTO `amphur` VALUES ('291', '3302', 'ยางชุมน้อย   ', '33190', '3', '22');
INSERT INTO `amphur` VALUES ('292', '3303', 'กันทรารมย์   ', '33130', '3', '22');
INSERT INTO `amphur` VALUES ('293', '3304', 'กันทรลักษ์   ', '33110', '3', '22');
INSERT INTO `amphur` VALUES ('294', '3305', 'ขุขันธ์   ', '33140', '3', '22');
INSERT INTO `amphur` VALUES ('295', '3306', 'ไพรบึง   ', '33180', '3', '22');
INSERT INTO `amphur` VALUES ('296', '3307', 'ปรางค์กู่   ', '33170', '3', '22');
INSERT INTO `amphur` VALUES ('297', '3308', 'ขุนหาญ   ', '33150', '3', '22');
INSERT INTO `amphur` VALUES ('298', '3309', 'ราษีไศล   ', '33160', '3', '22');
INSERT INTO `amphur` VALUES ('299', '3310', 'อุทุมพรพิสัย   ', '33120', '3', '22');
INSERT INTO `amphur` VALUES ('300', '3311', 'บึงบูรพ์   ', '33220', '3', '22');
INSERT INTO `amphur` VALUES ('301', '3312', 'ห้วยทับทัน   ', '33210', '3', '22');
INSERT INTO `amphur` VALUES ('302', '3313', 'โนนคูณ   ', '33250', '3', '22');
INSERT INTO `amphur` VALUES ('303', '3314', 'ศรีรัตนะ   ', '33240', '3', '22');
INSERT INTO `amphur` VALUES ('304', '3315', 'น้ำเกลี้ยง   ', '33130', '3', '22');
INSERT INTO `amphur` VALUES ('305', '3316', 'วังหิน   ', '33270', '3', '22');
INSERT INTO `amphur` VALUES ('306', '3317', 'ภูสิงห์   ', '33140', '3', '22');
INSERT INTO `amphur` VALUES ('307', '3318', 'เมืองจันทร์   ', '33120', '3', '22');
INSERT INTO `amphur` VALUES ('308', '3319', 'เบญจลักษ์   ', '33110', '3', '22');
INSERT INTO `amphur` VALUES ('309', '3320', 'พยุห์   ', '33230', '3', '22');
INSERT INTO `amphur` VALUES ('310', '3321', 'โพธิ์ศรีสุวรรณ   ', '33120', '3', '22');
INSERT INTO `amphur` VALUES ('311', '3322', 'ศิลาลาด   ', '33160', '3', '22');
INSERT INTO `amphur` VALUES ('312', '3401', 'เมืองอุบลราชธานี   ', '34000', '3', '23');
INSERT INTO `amphur` VALUES ('313', '3402', 'ศรีเมืองใหม่   ', '34250', '3', '23');
INSERT INTO `amphur` VALUES ('314', '3403', 'โขงเจียม   ', '34220', '3', '23');
INSERT INTO `amphur` VALUES ('315', '3404', 'เขื่องใน   ', '34150', '3', '23');
INSERT INTO `amphur` VALUES ('316', '3405', 'เขมราฐ   ', '34170', '3', '23');
INSERT INTO `amphur` VALUES ('317', '3406', '*ชานุมาน   ', '00000', '3', '23');
INSERT INTO `amphur` VALUES ('318', '3407', 'เดชอุดม   ', '34160', '3', '23');
INSERT INTO `amphur` VALUES ('319', '3408', 'นาจะหลวย   ', '34280', '3', '23');
INSERT INTO `amphur` VALUES ('320', '3409', 'น้ำยืน   ', '34260', '3', '23');
INSERT INTO `amphur` VALUES ('321', '3410', 'บุณฑริก   ', '34230', '3', '23');
INSERT INTO `amphur` VALUES ('322', '3411', 'ตระการพืชผล   ', '34130', '3', '23');
INSERT INTO `amphur` VALUES ('323', '3412', 'กุดข้าวปุ้น   ', '34270', '3', '23');
INSERT INTO `amphur` VALUES ('324', '3413', '*พนา   ', '00000', '3', '23');
INSERT INTO `amphur` VALUES ('325', '3414', 'ม่วงสามสิบ   ', '34140', '3', '23');
INSERT INTO `amphur` VALUES ('326', '3415', 'วารินชำราบ   ', '34190', '3', '23');
INSERT INTO `amphur` VALUES ('327', '3416', '*อำนาจเจริญ   ', '00000', '3', '23');
INSERT INTO `amphur` VALUES ('328', '3417', '*เสนางคนิคม   ', '00000', '3', '23');
INSERT INTO `amphur` VALUES ('329', '3418', '*หัวตะพาน   ', '00000', '3', '23');
INSERT INTO `amphur` VALUES ('330', '3419', 'พิบูลมังสาหาร   ', '34110', '3', '23');
INSERT INTO `amphur` VALUES ('331', '3420', 'ตาลสุม   ', '34330', '3', '23');
INSERT INTO `amphur` VALUES ('332', '3421', 'โพธิ์ไทร   ', '34340', '3', '23');
INSERT INTO `amphur` VALUES ('333', '3422', 'สำโรง   ', '34360', '3', '23');
INSERT INTO `amphur` VALUES ('334', '3423', '*กิ่งอำเภอลืออำนาจ   ', '00000', '3', '23');
INSERT INTO `amphur` VALUES ('335', '3424', 'ดอนมดแดง   ', '34000', '3', '23');
INSERT INTO `amphur` VALUES ('336', '3425', 'สิรินธร   ', '34350', '3', '23');
INSERT INTO `amphur` VALUES ('337', '3426', 'ทุ่งศรีอุดม   ', '34160', '3', '23');
INSERT INTO `amphur` VALUES ('338', '3427', '*ปทุมราชวงศา   ', '00000', '3', '23');
INSERT INTO `amphur` VALUES ('339', '3428', '*กิ่งอำเภอศรีหลักชัย   ', '00000', '3', '23');
INSERT INTO `amphur` VALUES ('340', '3429', 'นาเยีย   ', '34160', '3', '23');
INSERT INTO `amphur` VALUES ('341', '3430', 'นาตาล   ', '34170', '3', '23');
INSERT INTO `amphur` VALUES ('342', '3431', 'เหล่าเสือโก้ก   ', '34000', '3', '23');
INSERT INTO `amphur` VALUES ('343', '3432', 'สว่างวีระวงศ์   ', '34190', '3', '23');
INSERT INTO `amphur` VALUES ('344', '3433', 'น้ำขุ่น   ', '34260', '3', '23');
INSERT INTO `amphur` VALUES ('345', '3481', '*อ.สุวรรณวารี  จ.อุบลราชธานี   ', '00000', '3', '23');
INSERT INTO `amphur` VALUES ('346', '3501', 'เมืองยโสธร   ', '35000', '3', '24');
INSERT INTO `amphur` VALUES ('347', '3502', 'ทรายมูล   ', '35170', '3', '24');
INSERT INTO `amphur` VALUES ('348', '3503', 'กุดชุม   ', '35140', '3', '24');
INSERT INTO `amphur` VALUES ('349', '3504', 'คำเขื่อนแก้ว   ', '35110', '3', '24');
INSERT INTO `amphur` VALUES ('350', '3505', 'ป่าติ้ว   ', '35150', '3', '24');
INSERT INTO `amphur` VALUES ('351', '3506', 'มหาชนะชัย   ', '35130', '3', '24');
INSERT INTO `amphur` VALUES ('352', '3507', 'ค้อวัง   ', '35160', '3', '24');
INSERT INTO `amphur` VALUES ('353', '3508', 'เลิงนกทา   ', '35120', '3', '24');
INSERT INTO `amphur` VALUES ('354', '3509', 'ไทยเจริญ   ', '35120', '3', '24');
INSERT INTO `amphur` VALUES ('355', '3601', 'เมืองชัยภูมิ   ', '36000', '3', '25');
INSERT INTO `amphur` VALUES ('356', '3602', 'บ้านเขว้า   ', '36170', '3', '25');
INSERT INTO `amphur` VALUES ('357', '3603', 'คอนสวรรค์   ', '36140', '3', '25');
INSERT INTO `amphur` VALUES ('358', '3604', 'เกษตรสมบูรณ์   ', '36120', '3', '25');
INSERT INTO `amphur` VALUES ('359', '3605', 'หนองบัวแดง   ', '36210', '3', '25');
INSERT INTO `amphur` VALUES ('360', '3606', 'จัตุรัส   ', '36130', '3', '25');
INSERT INTO `amphur` VALUES ('361', '3607', 'บำเหน็จณรงค์   ', '36160', '3', '25');
INSERT INTO `amphur` VALUES ('362', '3608', 'หนองบัวระเหว   ', '36250', '3', '25');
INSERT INTO `amphur` VALUES ('363', '3609', 'เทพสถิต   ', '36230', '3', '25');
INSERT INTO `amphur` VALUES ('364', '3610', 'ภูเขียว   ', '36110', '3', '25');
INSERT INTO `amphur` VALUES ('365', '3611', 'บ้านแท่น   ', '36190', '3', '25');
INSERT INTO `amphur` VALUES ('366', '3612', 'แก้งคร้อ   ', '36150', '3', '25');
INSERT INTO `amphur` VALUES ('367', '3613', 'คอนสาร   ', '36180', '3', '25');
INSERT INTO `amphur` VALUES ('368', '3614', 'ภักดีชุมพล   ', '36260', '3', '25');
INSERT INTO `amphur` VALUES ('369', '3615', 'เนินสง่า   ', '36130', '3', '25');
INSERT INTO `amphur` VALUES ('370', '3616', 'ซับใหญ่   ', '36130', '3', '25');
INSERT INTO `amphur` VALUES ('371', '3651', 'เมืองชัยภูมิ (สาขาตำบลโนนสำราญ)*   ', '00000', '3', '25');
INSERT INTO `amphur` VALUES ('372', '3652', 'สาขาตำบลบ้านหว่าเฒ่า*   ', '00000', '3', '25');
INSERT INTO `amphur` VALUES ('373', '3653', 'หนองบัวแดง (สาขาตำบลวังชมภู)*   ', '00000', '3', '25');
INSERT INTO `amphur` VALUES ('374', '3654', 'กิ่งอำเภอซับใหญ่ (สาขาตำบลซับใหญ่)*   ', '00000', '3', '25');
INSERT INTO `amphur` VALUES ('375', '3655', 'สาขาตำบลโคกเพชร*   ', '00000', '3', '25');
INSERT INTO `amphur` VALUES ('376', '3656', 'เทพสถิต (สาขาตำบลนายางกลัก)*   ', '00000', '3', '25');
INSERT INTO `amphur` VALUES ('377', '3657', 'บ้านแท่น (สาขาตำบลบ้านเต่า)*   ', '00000', '3', '25');
INSERT INTO `amphur` VALUES ('378', '3658', 'แก้งคร้อ (สาขาตำบลท่ามะไฟหวาน)*   ', '00000', '3', '25');
INSERT INTO `amphur` VALUES ('379', '3659', 'คอนสาร (สาขาตำบลโนนคูณ)*   ', '00000', '3', '25');
INSERT INTO `amphur` VALUES ('380', '3701', 'เมืองอำนาจเจริญ   ', '37000', '3', '26');
INSERT INTO `amphur` VALUES ('381', '3702', 'ชานุมาน   ', '37210', '3', '26');
INSERT INTO `amphur` VALUES ('382', '3703', 'ปทุมราชวงศา   ', '37110', '3', '26');
INSERT INTO `amphur` VALUES ('383', '3704', 'พนา   ', '37180', '3', '26');
INSERT INTO `amphur` VALUES ('384', '3705', 'เสนางคนิคม   ', '37290', '3', '26');
INSERT INTO `amphur` VALUES ('385', '3706', 'หัวตะพาน   ', '37240', '3', '26');
INSERT INTO `amphur` VALUES ('386', '3707', 'ลืออำนาจ   ', '37000', '3', '26');
INSERT INTO `amphur` VALUES ('387', '3901', 'เมืองหนองบัวลำภู   ', '39000', '3', '27');
INSERT INTO `amphur` VALUES ('388', '3902', 'นากลาง   ', '39170', '3', '27');
INSERT INTO `amphur` VALUES ('389', '3903', 'โนนสัง   ', '39140', '3', '27');
INSERT INTO `amphur` VALUES ('390', '3904', 'ศรีบุญเรือง   ', '39180', '3', '27');
INSERT INTO `amphur` VALUES ('391', '3905', 'สุวรรณคูหา   ', '39270', '3', '27');
INSERT INTO `amphur` VALUES ('392', '3906', 'นาวัง   ', '39170', '3', '27');
INSERT INTO `amphur` VALUES ('393', '4001', 'เมืองขอนแก่น   ', '40000', '3', '28');
INSERT INTO `amphur` VALUES ('394', '4002', 'บ้านฝาง   ', '40270', '3', '28');
INSERT INTO `amphur` VALUES ('395', '4003', 'พระยืน   ', '40320', '3', '28');
INSERT INTO `amphur` VALUES ('396', '4004', 'หนองเรือ   ', '40210', '3', '28');
INSERT INTO `amphur` VALUES ('397', '4005', 'ชุมแพ   ', '40130', '3', '28');
INSERT INTO `amphur` VALUES ('398', '4006', 'สีชมพู   ', '40220', '3', '28');
INSERT INTO `amphur` VALUES ('399', '4007', 'น้ำพอง   ', '40140', '3', '28');
INSERT INTO `amphur` VALUES ('400', '4008', 'อุบลรัตน์   ', '40250', '3', '28');
INSERT INTO `amphur` VALUES ('401', '4009', 'กระนวน   ', '40170', '3', '28');
INSERT INTO `amphur` VALUES ('402', '4010', 'บ้านไผ่   ', '40110', '3', '28');
INSERT INTO `amphur` VALUES ('403', '4011', 'เปือยน้อย   ', '40340', '3', '28');
INSERT INTO `amphur` VALUES ('404', '4012', 'พล   ', '40120', '3', '28');
INSERT INTO `amphur` VALUES ('405', '4013', 'แวงใหญ่   ', '40330', '3', '28');
INSERT INTO `amphur` VALUES ('406', '4014', 'แวงน้อย   ', '40230', '3', '28');
INSERT INTO `amphur` VALUES ('407', '4015', 'หนองสองห้อง   ', '40190', '3', '28');
INSERT INTO `amphur` VALUES ('408', '4016', 'ภูเวียง   ', '40150', '3', '28');
INSERT INTO `amphur` VALUES ('409', '4017', 'มัญจาคีรี   ', '40160', '3', '28');
INSERT INTO `amphur` VALUES ('410', '4018', 'ชนบท   ', '40180', '3', '28');
INSERT INTO `amphur` VALUES ('411', '4019', 'เขาสวนกวาง   ', '40280', '3', '28');
INSERT INTO `amphur` VALUES ('412', '4020', 'ภูผาม่าน   ', '40350', '3', '28');
INSERT INTO `amphur` VALUES ('413', '4021', 'ซำสูง   ', '40170', '3', '28');
INSERT INTO `amphur` VALUES ('414', '4022', 'โคกโพธิ์ไชย   ', '40160', '3', '28');
INSERT INTO `amphur` VALUES ('415', '4023', 'หนองนาคำ   ', '40150', '3', '28');
INSERT INTO `amphur` VALUES ('416', '4024', 'บ้านแฮด   ', '40110', '3', '28');
INSERT INTO `amphur` VALUES ('417', '4025', 'โนนศิลา   ', '00000', '3', '28');
INSERT INTO `amphur` VALUES ('418', '4029', 'เวียงเก่า   ', '40150', '3', '28');
INSERT INTO `amphur` VALUES ('419', '4068', 'ท้องถิ่นเทศบาลตำบลบ้านเป็ด*   ', '00000', '3', '28');
INSERT INTO `amphur` VALUES ('420', '4098', 'เทศบาลตำบลเมืองพล*   ', '00000', '3', '28');
INSERT INTO `amphur` VALUES ('421', '4101', 'เมืองอุดรธานี   ', '41000', '3', '29');
INSERT INTO `amphur` VALUES ('422', '4102', 'กุดจับ   ', '41250', '3', '29');
INSERT INTO `amphur` VALUES ('423', '4103', 'หนองวัวซอ   ', '41220', '3', '29');
INSERT INTO `amphur` VALUES ('424', '4104', 'กุมภวาปี   ', '41110', '3', '29');
INSERT INTO `amphur` VALUES ('425', '4105', 'โนนสะอาด   ', '41240', '3', '29');
INSERT INTO `amphur` VALUES ('426', '4106', 'หนองหาน   ', '41130', '3', '29');
INSERT INTO `amphur` VALUES ('427', '4107', 'ทุ่งฝน   ', '41310', '3', '29');
INSERT INTO `amphur` VALUES ('428', '4108', 'ไชยวาน   ', '41290', '3', '29');
INSERT INTO `amphur` VALUES ('429', '4109', 'ศรีธาตุ   ', '41230', '3', '29');
INSERT INTO `amphur` VALUES ('430', '4110', 'วังสามหมอ   ', '41280', '3', '29');
INSERT INTO `amphur` VALUES ('431', '4111', 'บ้านดุง   ', '41190', '3', '29');
INSERT INTO `amphur` VALUES ('432', '4112', '*หนองบัวลำภู   ', '00000', '3', '29');
INSERT INTO `amphur` VALUES ('433', '4113', '*ศรีบุญเรือง   ', '00000', '3', '29');
INSERT INTO `amphur` VALUES ('434', '4114', '*นากลาง   ', '00000', '3', '29');
INSERT INTO `amphur` VALUES ('435', '4115', '*สุวรรณคูหา   ', '00000', '3', '29');
INSERT INTO `amphur` VALUES ('436', '4116', '*โนนสัง   ', '00000', '3', '29');
INSERT INTO `amphur` VALUES ('437', '4117', 'บ้านผือ   ', '41160', '3', '29');
INSERT INTO `amphur` VALUES ('438', '4118', 'น้ำโสม   ', '41210', '3', '29');
INSERT INTO `amphur` VALUES ('439', '4119', 'เพ็ญ   ', '41150', '3', '29');
INSERT INTO `amphur` VALUES ('440', '4120', 'สร้างคอม   ', '41260', '3', '29');
INSERT INTO `amphur` VALUES ('441', '4121', 'หนองแสง   ', '41340', '3', '29');
INSERT INTO `amphur` VALUES ('442', '4122', 'นายูง   ', '41380', '3', '29');
INSERT INTO `amphur` VALUES ('443', '4123', 'พิบูลย์รักษ์   ', '41130', '3', '29');
INSERT INTO `amphur` VALUES ('444', '4124', 'กู่แก้ว   ', '41130', '3', '29');
INSERT INTO `amphur` VALUES ('445', '4125', 'ประจักษ์ศิลปาคม   ', '41110', '3', '29');
INSERT INTO `amphur` VALUES ('446', '4201', 'เมืองเลย   ', '42000', '3', '30');
INSERT INTO `amphur` VALUES ('447', '4202', 'นาด้วง   ', '42210', '3', '30');
INSERT INTO `amphur` VALUES ('448', '4203', 'เชียงคาน   ', '42110', '3', '30');
INSERT INTO `amphur` VALUES ('449', '4204', 'ปากชม   ', '42150', '3', '30');
INSERT INTO `amphur` VALUES ('450', '4205', 'ด่านซ้าย   ', '42120', '3', '30');
INSERT INTO `amphur` VALUES ('451', '4206', 'นาแห้ว   ', '42170', '3', '30');
INSERT INTO `amphur` VALUES ('452', '4207', 'ภูเรือ   ', '42160', '3', '30');
INSERT INTO `amphur` VALUES ('453', '4208', 'ท่าลี่   ', '42140', '3', '30');
INSERT INTO `amphur` VALUES ('454', '4209', 'วังสะพุง   ', '42130', '3', '30');
INSERT INTO `amphur` VALUES ('455', '4210', 'ภูกระดึง   ', '42180', '3', '30');
INSERT INTO `amphur` VALUES ('456', '4211', 'ภูหลวง   ', '42230', '3', '30');
INSERT INTO `amphur` VALUES ('457', '4212', 'ผาขาว   ', '42240', '3', '30');
INSERT INTO `amphur` VALUES ('458', '4213', 'เอราวัณ   ', '42220', '3', '30');
INSERT INTO `amphur` VALUES ('459', '4214', 'หนองหิน   ', '42190', '3', '30');
INSERT INTO `amphur` VALUES ('460', '4301', 'เมืองหนองคาย   ', '43000', '3', '31');
INSERT INTO `amphur` VALUES ('461', '4302', 'ท่าบ่อ   ', '43110', '3', '31');
INSERT INTO `amphur` VALUES ('462', '4303', 'เมืองบึงกาฬ   ', '38000', '3', '97');
INSERT INTO `amphur` VALUES ('463', '4304', 'พรเจริญ   ', '38180', '3', '97');
INSERT INTO `amphur` VALUES ('464', '4305', 'โพนพิสัย   ', '43120', '3', '31');
INSERT INTO `amphur` VALUES ('465', '4306', 'โซ่พิสัย   ', '38170', '3', '97');
INSERT INTO `amphur` VALUES ('466', '4307', 'ศรีเชียงใหม่   ', '43130', '3', '31');
INSERT INTO `amphur` VALUES ('467', '4308', 'สังคม   ', '43160', '3', '31');
INSERT INTO `amphur` VALUES ('468', '4309', 'เซกา   ', '38150', '3', '97');
INSERT INTO `amphur` VALUES ('469', '4310', 'ปากคาด   ', '38190', '3', '97');
INSERT INTO `amphur` VALUES ('470', '4311', 'บึงโขงหลง   ', '38220', '3', '97');
INSERT INTO `amphur` VALUES ('471', '4312', 'ศรีวิไล   ', '38210', '3', '97');
INSERT INTO `amphur` VALUES ('472', '4313', 'บุ่งคล้า   ', '38000', '3', '97');
INSERT INTO `amphur` VALUES ('473', '4314', 'สระใคร   ', '43100', '3', '31');
INSERT INTO `amphur` VALUES ('474', '4315', 'เฝ้าไร่   ', '43120', '3', '31');
INSERT INTO `amphur` VALUES ('475', '4316', 'รัตนวาปี   ', '43120', '3', '31');
INSERT INTO `amphur` VALUES ('476', '4317', 'โพธิ์ตาก   ', '43130', '3', '31');
INSERT INTO `amphur` VALUES ('477', '4401', 'เมืองมหาสารคาม   ', '44000', '3', '32');
INSERT INTO `amphur` VALUES ('478', '4402', 'แกดำ   ', '44190', '3', '32');
INSERT INTO `amphur` VALUES ('479', '4403', 'โกสุมพิสัย   ', '44140', '3', '32');
INSERT INTO `amphur` VALUES ('480', '4404', 'กันทรวิชัย   ', '44150', '3', '32');
INSERT INTO `amphur` VALUES ('481', '4405', 'เชียงยืน   ', '44160', '3', '32');
INSERT INTO `amphur` VALUES ('482', '4406', 'บรบือ   ', '44130', '3', '32');
INSERT INTO `amphur` VALUES ('483', '4407', 'นาเชือก   ', '44170', '3', '32');
INSERT INTO `amphur` VALUES ('484', '4408', 'พยัคฆภูมิพิสัย   ', '44110', '3', '32');
INSERT INTO `amphur` VALUES ('485', '4409', 'วาปีปทุม   ', '44120', '3', '32');
INSERT INTO `amphur` VALUES ('486', '4410', 'นาดูน   ', '44180', '3', '32');
INSERT INTO `amphur` VALUES ('487', '4411', 'ยางสีสุราช   ', '44210', '3', '32');
INSERT INTO `amphur` VALUES ('488', '4412', 'กุดรัง   ', '44130', '3', '32');
INSERT INTO `amphur` VALUES ('489', '4413', 'ชื่นชม   ', '44160', '3', '32');
INSERT INTO `amphur` VALUES ('490', '4481', '*หลุบ   ', '00000', '3', '32');
INSERT INTO `amphur` VALUES ('491', '4501', 'เมืองร้อยเอ็ด   ', '45000', '3', '33');
INSERT INTO `amphur` VALUES ('492', '4502', 'เกษตรวิสัย   ', '45150', '3', '33');
INSERT INTO `amphur` VALUES ('493', '4503', 'ปทุมรัตต์   ', '45190', '3', '33');
INSERT INTO `amphur` VALUES ('494', '4504', 'จตุรพักตรพิมาน   ', '45180', '3', '33');
INSERT INTO `amphur` VALUES ('495', '4505', 'ธวัชบุรี   ', '45170', '3', '33');
INSERT INTO `amphur` VALUES ('496', '4506', 'พนมไพร   ', '45140', '3', '33');
INSERT INTO `amphur` VALUES ('497', '4507', 'โพนทอง   ', '45110', '3', '33');
INSERT INTO `amphur` VALUES ('498', '4508', 'โพธิ์ชัย   ', '45230', '3', '33');
INSERT INTO `amphur` VALUES ('499', '4509', 'หนองพอก   ', '45210', '3', '33');
INSERT INTO `amphur` VALUES ('500', '4510', 'เสลภูมิ   ', '45120', '3', '33');
INSERT INTO `amphur` VALUES ('501', '4511', 'สุวรรณภูมิ   ', '45130', '3', '33');
INSERT INTO `amphur` VALUES ('502', '4512', 'เมืองสรวง   ', '45220', '3', '33');
INSERT INTO `amphur` VALUES ('503', '4513', 'โพนทราย   ', '45240', '3', '33');
INSERT INTO `amphur` VALUES ('504', '4514', 'อาจสามารถ   ', '45160', '3', '33');
INSERT INTO `amphur` VALUES ('505', '4515', 'เมยวดี   ', '45250', '3', '33');
INSERT INTO `amphur` VALUES ('506', '4516', 'ศรีสมเด็จ   ', '45260', '3', '33');
INSERT INTO `amphur` VALUES ('507', '4517', 'จังหาร   ', '45270', '3', '33');
INSERT INTO `amphur` VALUES ('508', '4518', 'เชียงขวัญ   ', '45000', '3', '33');
INSERT INTO `amphur` VALUES ('509', '4519', 'หนองฮี   ', '45140', '3', '33');
INSERT INTO `amphur` VALUES ('510', '4520', 'ทุ่งเขาหลวง   ', '45170', '3', '33');
INSERT INTO `amphur` VALUES ('511', '4601', 'เมืองกาฬสินธุ์   ', '46000', '3', '34');
INSERT INTO `amphur` VALUES ('512', '4602', 'นามน   ', '46230', '3', '34');
INSERT INTO `amphur` VALUES ('513', '4603', 'กมลาไสย   ', '46130', '3', '34');
INSERT INTO `amphur` VALUES ('514', '4604', 'ร่องคำ   ', '46210', '3', '34');
INSERT INTO `amphur` VALUES ('515', '4605', 'กุฉินารายณ์   ', '46110', '3', '34');
INSERT INTO `amphur` VALUES ('516', '4606', 'เขาวง   ', '46160', '3', '34');
INSERT INTO `amphur` VALUES ('517', '4607', 'ยางตลาด   ', '46120', '3', '34');
INSERT INTO `amphur` VALUES ('518', '4608', 'ห้วยเม็ก   ', '46170', '3', '34');
INSERT INTO `amphur` VALUES ('519', '4609', 'สหัสขันธ์   ', '46140', '3', '34');
INSERT INTO `amphur` VALUES ('520', '4610', 'คำม่วง   ', '46180', '3', '34');
INSERT INTO `amphur` VALUES ('521', '4611', 'ท่าคันโท   ', '46190', '3', '34');
INSERT INTO `amphur` VALUES ('522', '4612', 'หนองกุงศรี   ', '46220', '3', '34');
INSERT INTO `amphur` VALUES ('523', '4613', 'สมเด็จ   ', '46150', '3', '34');
INSERT INTO `amphur` VALUES ('524', '4614', 'ห้วยผึ้ง   ', '46240', '3', '34');
INSERT INTO `amphur` VALUES ('525', '4615', 'สามชัย   ', '46180', '3', '34');
INSERT INTO `amphur` VALUES ('526', '4616', 'นาคู   ', '46160', '3', '34');
INSERT INTO `amphur` VALUES ('527', '4617', 'ดอนจาน   ', '46000', '3', '34');
INSERT INTO `amphur` VALUES ('528', '4618', 'ฆ้องชัย   ', '46130', '3', '34');
INSERT INTO `amphur` VALUES ('529', '4701', 'เมืองสกลนคร   ', '47000', '3', '35');
INSERT INTO `amphur` VALUES ('530', '4702', 'กุสุมาลย์   ', '47210', '3', '35');
INSERT INTO `amphur` VALUES ('531', '4703', 'กุดบาก   ', '47180', '3', '35');
INSERT INTO `amphur` VALUES ('532', '4704', 'พรรณานิคม   ', '47130', '3', '35');
INSERT INTO `amphur` VALUES ('533', '4705', 'พังโคน   ', '47160', '3', '35');
INSERT INTO `amphur` VALUES ('534', '4706', 'วาริชภูมิ   ', '47150', '3', '35');
INSERT INTO `amphur` VALUES ('535', '4707', 'นิคมน้ำอูน   ', '47270', '3', '35');
INSERT INTO `amphur` VALUES ('536', '4708', 'วานรนิวาส   ', '47120', '3', '35');
INSERT INTO `amphur` VALUES ('537', '4709', 'คำตากล้า   ', '47250', '3', '35');
INSERT INTO `amphur` VALUES ('538', '4710', 'บ้านม่วง   ', '47140', '3', '35');
INSERT INTO `amphur` VALUES ('539', '4711', 'อากาศอำนวย   ', '47170', '3', '35');
INSERT INTO `amphur` VALUES ('540', '4712', 'สว่างแดนดิน   ', '47110', '3', '35');
INSERT INTO `amphur` VALUES ('541', '4713', 'ส่องดาว   ', '47190', '3', '35');
INSERT INTO `amphur` VALUES ('542', '4714', 'เต่างอย   ', '47260', '3', '35');
INSERT INTO `amphur` VALUES ('543', '4715', 'โคกศรีสุพรรณ   ', '47280', '3', '35');
INSERT INTO `amphur` VALUES ('544', '4716', 'เจริญศิลป์   ', '47290', '3', '35');
INSERT INTO `amphur` VALUES ('545', '4717', 'โพนนาแก้ว   ', '47230', '3', '35');
INSERT INTO `amphur` VALUES ('546', '4718', 'ภูพาน   ', '47180', '3', '35');
INSERT INTO `amphur` VALUES ('547', '4751', 'วานรนิวาส (สาขาตำบลกุดเรือคำ)*   ', '00000', '3', '35');
INSERT INTO `amphur` VALUES ('548', '4781', '*อ.บ้านหัน  จ.สกลนคร   ', '00000', '3', '35');
INSERT INTO `amphur` VALUES ('549', '4801', 'เมืองนครพนม   ', '48000', '3', '36');
INSERT INTO `amphur` VALUES ('550', '4802', 'ปลาปาก   ', '48160', '3', '36');
INSERT INTO `amphur` VALUES ('551', '4803', 'ท่าอุเทน   ', '48120', '3', '36');
INSERT INTO `amphur` VALUES ('552', '4804', 'บ้านแพง   ', '48140', '3', '36');
INSERT INTO `amphur` VALUES ('553', '4805', 'ธาตุพนม   ', '48110', '3', '36');
INSERT INTO `amphur` VALUES ('554', '4806', 'เรณูนคร   ', '48170', '3', '36');
INSERT INTO `amphur` VALUES ('555', '4807', 'นาแก   ', '48130', '3', '36');
INSERT INTO `amphur` VALUES ('556', '4808', 'ศรีสงคราม   ', '48150', '3', '36');
INSERT INTO `amphur` VALUES ('557', '4809', 'นาหว้า   ', '48180', '3', '36');
INSERT INTO `amphur` VALUES ('558', '4810', 'โพนสวรรค์   ', '48190', '3', '36');
INSERT INTO `amphur` VALUES ('559', '4811', 'นาทม   ', '48140', '3', '36');
INSERT INTO `amphur` VALUES ('560', '4812', 'วังยาง   ', '48130', '3', '36');
INSERT INTO `amphur` VALUES ('561', '4901', 'เมืองมุกดาหาร   ', '49000', '3', '37');
INSERT INTO `amphur` VALUES ('562', '4902', 'นิคมคำสร้อย   ', '49130', '3', '37');
INSERT INTO `amphur` VALUES ('563', '4903', 'ดอนตาล   ', '49120', '3', '37');
INSERT INTO `amphur` VALUES ('564', '4904', 'ดงหลวง   ', '49140', '3', '37');
INSERT INTO `amphur` VALUES ('565', '4905', 'คำชะอี   ', '49110', '3', '37');
INSERT INTO `amphur` VALUES ('566', '4906', 'หว้านใหญ่   ', '49150', '3', '37');
INSERT INTO `amphur` VALUES ('567', '4907', 'หนองสูง   ', '49160', '3', '37');
INSERT INTO `amphur` VALUES ('568', '5001', 'เมืองเชียงใหม่   ', '50000', '1', '38');
INSERT INTO `amphur` VALUES ('569', '5002', 'จอมทอง   ', '50160', '1', '38');
INSERT INTO `amphur` VALUES ('570', '5003', 'แม่แจ่ม   ', '50270', '1', '38');
INSERT INTO `amphur` VALUES ('571', '5004', 'เชียงดาว   ', '50170', '1', '38');
INSERT INTO `amphur` VALUES ('572', '5005', 'ดอยสะเก็ด   ', '50220', '1', '38');
INSERT INTO `amphur` VALUES ('573', '5006', 'แม่แตง   ', '50150', '1', '38');
INSERT INTO `amphur` VALUES ('574', '5007', 'แม่ริม   ', '50180', '1', '38');
INSERT INTO `amphur` VALUES ('575', '5008', 'สะเมิง   ', '50250', '1', '38');
INSERT INTO `amphur` VALUES ('576', '5009', 'ฝาง   ', '50110', '1', '38');
INSERT INTO `amphur` VALUES ('577', '5010', 'แม่อาย   ', '50280', '1', '38');
INSERT INTO `amphur` VALUES ('578', '5011', 'พร้าว   ', '50190', '1', '38');
INSERT INTO `amphur` VALUES ('579', '5012', 'สันป่าตอง   ', '50120', '1', '38');
INSERT INTO `amphur` VALUES ('580', '5013', 'สันกำแพง   ', '50130', '1', '38');
INSERT INTO `amphur` VALUES ('581', '5014', 'สันทราย   ', '50210', '1', '38');
INSERT INTO `amphur` VALUES ('582', '5015', 'หางดง   ', '50230', '1', '38');
INSERT INTO `amphur` VALUES ('583', '5016', 'ฮอด   ', '50240', '1', '38');
INSERT INTO `amphur` VALUES ('584', '5017', 'ดอยเต่า   ', '50260', '1', '38');
INSERT INTO `amphur` VALUES ('585', '5018', 'อมก๋อย   ', '50310', '1', '38');
INSERT INTO `amphur` VALUES ('586', '5019', 'สารภี   ', '50140', '1', '38');
INSERT INTO `amphur` VALUES ('587', '5020', 'เวียงแหง   ', '50350', '1', '38');
INSERT INTO `amphur` VALUES ('588', '5021', 'ไชยปราการ   ', '50320', '1', '38');
INSERT INTO `amphur` VALUES ('589', '5022', 'แม่วาง   ', '50360', '1', '38');
INSERT INTO `amphur` VALUES ('590', '5023', 'แม่ออน   ', '50130', '1', '38');
INSERT INTO `amphur` VALUES ('591', '5024', 'ดอยหล่อ   ', '50160', '1', '38');
INSERT INTO `amphur` VALUES ('592', '5051', 'เทศบาลนครเชียงใหม่ (สาขาแขวงกาลวิละ*   ', '00000', '1', '38');
INSERT INTO `amphur` VALUES ('593', '5052', 'เทศบาลนครเชียงใหม่ (สาขาแขวงศรีวิชั*   ', '00000', '1', '38');
INSERT INTO `amphur` VALUES ('594', '5053', 'เทศบาลนครเชียงใหม่ (สาขาเม็งราย*   ', '00000', '1', '38');
INSERT INTO `amphur` VALUES ('595', '5101', 'เมืองลำพูน   ', '51000', '1', '39');
INSERT INTO `amphur` VALUES ('596', '5102', 'แม่ทา   ', '51140', '1', '39');
INSERT INTO `amphur` VALUES ('597', '5103', 'บ้านโฮ่ง   ', '51130', '1', '39');
INSERT INTO `amphur` VALUES ('598', '5104', 'ลี้   ', '51110', '1', '39');
INSERT INTO `amphur` VALUES ('599', '5105', 'ทุ่งหัวช้าง   ', '51160', '1', '39');
INSERT INTO `amphur` VALUES ('600', '5106', 'ป่าซาง   ', '51120', '1', '39');
INSERT INTO `amphur` VALUES ('601', '5107', 'บ้านธิ   ', '51180', '1', '39');
INSERT INTO `amphur` VALUES ('602', '5108', 'เวียงหนองล่อง   ', '51120', '1', '39');
INSERT INTO `amphur` VALUES ('603', '5201', 'เมืองลำปาง   ', '52000', '1', '40');
INSERT INTO `amphur` VALUES ('604', '5202', 'แม่เมาะ   ', '52220', '1', '40');
INSERT INTO `amphur` VALUES ('605', '5203', 'เกาะคา   ', '52130', '1', '40');
INSERT INTO `amphur` VALUES ('606', '5204', 'เสริมงาม   ', '52210', '1', '40');
INSERT INTO `amphur` VALUES ('607', '5205', 'งาว   ', '52110', '1', '40');
INSERT INTO `amphur` VALUES ('608', '5206', 'แจ้ห่ม   ', '52120', '1', '40');
INSERT INTO `amphur` VALUES ('609', '5207', 'วังเหนือ   ', '52140', '1', '40');
INSERT INTO `amphur` VALUES ('610', '5208', 'เถิน   ', '52160', '1', '40');
INSERT INTO `amphur` VALUES ('611', '5209', 'แม่พริก   ', '52180', '1', '40');
INSERT INTO `amphur` VALUES ('612', '5210', 'แม่ทะ   ', '52150', '1', '40');
INSERT INTO `amphur` VALUES ('613', '5211', 'สบปราบ   ', '52170', '1', '40');
INSERT INTO `amphur` VALUES ('614', '5212', 'ห้างฉัตร   ', '52190', '1', '40');
INSERT INTO `amphur` VALUES ('615', '5213', 'เมืองปาน   ', '52240', '1', '40');
INSERT INTO `amphur` VALUES ('616', '5301', 'เมืองอุตรดิตถ์   ', '53000', '1', '41');
INSERT INTO `amphur` VALUES ('617', '5302', 'ตรอน   ', '53140', '1', '41');
INSERT INTO `amphur` VALUES ('618', '5303', 'ท่าปลา   ', '53150', '1', '41');
INSERT INTO `amphur` VALUES ('619', '5304', 'น้ำปาด   ', '53110', '1', '41');
INSERT INTO `amphur` VALUES ('620', '5305', 'ฟากท่า   ', '53160', '1', '41');
INSERT INTO `amphur` VALUES ('621', '5306', 'บ้านโคก   ', '53180', '1', '41');
INSERT INTO `amphur` VALUES ('622', '5307', 'พิชัย   ', '53120', '1', '41');
INSERT INTO `amphur` VALUES ('623', '5308', 'ลับแล   ', '53130', '1', '41');
INSERT INTO `amphur` VALUES ('624', '5309', 'ทองแสนขัน   ', '53230', '1', '41');
INSERT INTO `amphur` VALUES ('625', '5401', 'เมืองแพร่   ', '54000', '1', '42');
INSERT INTO `amphur` VALUES ('626', '5402', 'ร้องกวาง   ', '54140', '1', '42');
INSERT INTO `amphur` VALUES ('627', '5403', 'ลอง   ', '54150', '1', '42');
INSERT INTO `amphur` VALUES ('628', '5404', 'สูงเม่น   ', '54130', '1', '42');
INSERT INTO `amphur` VALUES ('629', '5405', 'เด่นชัย   ', '54110', '1', '42');
INSERT INTO `amphur` VALUES ('630', '5406', 'สอง   ', '54120', '1', '42');
INSERT INTO `amphur` VALUES ('631', '5407', 'วังชิ้น   ', '54160', '1', '42');
INSERT INTO `amphur` VALUES ('632', '5408', 'หนองม่วงไข่   ', '54170', '1', '42');
INSERT INTO `amphur` VALUES ('633', '5501', 'เมืองน่าน   ', '55000', '1', '43');
INSERT INTO `amphur` VALUES ('634', '5502', 'แม่จริม   ', '55170', '1', '43');
INSERT INTO `amphur` VALUES ('635', '5503', 'บ้านหลวง   ', '55190', '1', '43');
INSERT INTO `amphur` VALUES ('636', '5504', 'นาน้อย   ', '55150', '1', '43');
INSERT INTO `amphur` VALUES ('637', '5505', 'ปัว   ', '55120', '1', '43');
INSERT INTO `amphur` VALUES ('638', '5506', 'ท่าวังผา   ', '55140', '1', '43');
INSERT INTO `amphur` VALUES ('639', '5507', 'เวียงสา   ', '55110', '1', '43');
INSERT INTO `amphur` VALUES ('640', '5508', 'ทุ่งช้าง   ', '55130', '1', '43');
INSERT INTO `amphur` VALUES ('641', '5509', 'เชียงกลาง   ', '55160', '1', '43');
INSERT INTO `amphur` VALUES ('642', '5510', 'นาหมื่น   ', '55180', '1', '43');
INSERT INTO `amphur` VALUES ('643', '5511', 'สันติสุข   ', '55210', '1', '43');
INSERT INTO `amphur` VALUES ('644', '5512', 'บ่อเกลือ   ', '55220', '1', '43');
INSERT INTO `amphur` VALUES ('645', '5513', 'สองแคว   ', '55160', '1', '43');
INSERT INTO `amphur` VALUES ('646', '5514', 'ภูเพียง   ', '55000', '1', '43');
INSERT INTO `amphur` VALUES ('647', '5515', 'เฉลิมพระเกียรติ(43-หนองคาย)', '00000', '1', '43');
INSERT INTO `amphur` VALUES ('648', '5601', 'เมืองพะเยา   ', '56000', '1', '44');
INSERT INTO `amphur` VALUES ('649', '5602', 'จุน   ', '56150', '1', '44');
INSERT INTO `amphur` VALUES ('650', '5603', 'เชียงคำ   ', '56110', '1', '44');
INSERT INTO `amphur` VALUES ('651', '5604', 'เชียงม่วน   ', '56160', '1', '44');
INSERT INTO `amphur` VALUES ('652', '5605', 'ดอกคำใต้   ', '56120', '1', '44');
INSERT INTO `amphur` VALUES ('653', '5606', 'ปง   ', '56140', '1', '44');
INSERT INTO `amphur` VALUES ('654', '5607', 'แม่ใจ   ', '56130', '1', '44');
INSERT INTO `amphur` VALUES ('655', '5608', 'ภูซาง   ', '56110', '1', '44');
INSERT INTO `amphur` VALUES ('656', '5609', 'ภูกามยาว   ', '56000', '1', '44');
INSERT INTO `amphur` VALUES ('657', '5701', 'เมืองเชียงราย   ', '57000', '1', '45');
INSERT INTO `amphur` VALUES ('658', '5702', 'เวียงชัย   ', '57210', '1', '45');
INSERT INTO `amphur` VALUES ('659', '5703', 'เชียงของ   ', '57140', '1', '45');
INSERT INTO `amphur` VALUES ('660', '5704', 'เทิง   ', '57160', '1', '45');
INSERT INTO `amphur` VALUES ('661', '5705', 'พาน   ', '57120', '1', '45');
INSERT INTO `amphur` VALUES ('662', '5706', 'ป่าแดด   ', '57190', '1', '45');
INSERT INTO `amphur` VALUES ('663', '5707', 'แม่จัน   ', '57110', '1', '45');
INSERT INTO `amphur` VALUES ('664', '5708', 'เชียงแสน   ', '57150', '1', '45');
INSERT INTO `amphur` VALUES ('665', '5709', 'แม่สาย   ', '57130', '1', '45');
INSERT INTO `amphur` VALUES ('666', '5710', 'แม่สรวย   ', '57180', '1', '45');
INSERT INTO `amphur` VALUES ('667', '5711', 'เวียงป่าเป้า   ', '57170', '1', '45');
INSERT INTO `amphur` VALUES ('668', '5712', 'พญาเม็งราย   ', '57290', '1', '45');
INSERT INTO `amphur` VALUES ('669', '5713', 'เวียงแก่น   ', '57310', '1', '45');
INSERT INTO `amphur` VALUES ('670', '5714', 'ขุนตาล   ', '57340', '1', '45');
INSERT INTO `amphur` VALUES ('671', '5715', 'แม่ฟ้าหลวง   ', '57240', '1', '45');
INSERT INTO `amphur` VALUES ('672', '5716', 'แม่ลาว   ', '57250', '1', '45');
INSERT INTO `amphur` VALUES ('673', '5717', 'เวียงเชียงรุ้ง   ', '57210', '1', '45');
INSERT INTO `amphur` VALUES ('674', '5718', 'ดอยหลวง   ', '57110', '1', '45');
INSERT INTO `amphur` VALUES ('675', '5801', 'เมืองแม่ฮ่องสอน   ', '58000', '1', '46');
INSERT INTO `amphur` VALUES ('676', '5802', 'ขุนยวม   ', '58140', '1', '46');
INSERT INTO `amphur` VALUES ('677', '5803', 'ปาย   ', '58130', '1', '46');
INSERT INTO `amphur` VALUES ('678', '5804', 'แม่สะเรียง   ', '58110', '1', '46');
INSERT INTO `amphur` VALUES ('679', '5805', 'แม่ลาน้อย   ', '58120', '1', '46');
INSERT INTO `amphur` VALUES ('680', '5806', 'สบเมย   ', '58110', '1', '46');
INSERT INTO `amphur` VALUES ('681', '5807', 'ปางมะผ้า   ', '58150', '1', '46');
INSERT INTO `amphur` VALUES ('682', '5881', '*อ.ม่วยต่อ  จ.แม่ฮ่องสอน   ', '00000', '1', '46');
INSERT INTO `amphur` VALUES ('683', '6001', 'เมืองนครสวรรค์   ', '60000', '2', '47');
INSERT INTO `amphur` VALUES ('684', '6002', 'โกรกพระ   ', '60170', '2', '47');
INSERT INTO `amphur` VALUES ('685', '6003', 'ชุมแสง   ', '60120', '2', '47');
INSERT INTO `amphur` VALUES ('686', '6004', 'หนองบัว   ', '60110', '2', '47');
INSERT INTO `amphur` VALUES ('687', '6005', 'บรรพตพิสัย   ', '60180', '2', '47');
INSERT INTO `amphur` VALUES ('688', '6006', 'เก้าเลี้ยว   ', '60230', '2', '47');
INSERT INTO `amphur` VALUES ('689', '6007', 'ตาคลี   ', '60140', '2', '47');
INSERT INTO `amphur` VALUES ('690', '6008', 'ท่าตะโก   ', '60160', '2', '47');
INSERT INTO `amphur` VALUES ('691', '6009', 'ไพศาลี   ', '60220', '2', '47');
INSERT INTO `amphur` VALUES ('692', '6010', 'พยุหะคีรี   ', '60130', '2', '47');
INSERT INTO `amphur` VALUES ('693', '6011', 'ลาดยาว   ', '60150', '2', '47');
INSERT INTO `amphur` VALUES ('694', '6012', 'ตากฟ้า   ', '60190', '2', '47');
INSERT INTO `amphur` VALUES ('695', '6013', 'แม่วงก์   ', '60150', '2', '47');
INSERT INTO `amphur` VALUES ('696', '6014', 'แม่เปิน   ', '60150', '2', '47');
INSERT INTO `amphur` VALUES ('697', '6015', 'ชุมตาบง   ', '60150', '2', '47');
INSERT INTO `amphur` VALUES ('698', '6051', 'สาขาตำบลห้วยน้ำหอม*   ', '00000', '2', '47');
INSERT INTO `amphur` VALUES ('699', '6052', 'กิ่งอำเภอชุมตาบง (สาขาตำบลชุมตาบง)*   ', '00000', '2', '47');
INSERT INTO `amphur` VALUES ('700', '6053', 'แม่วงก์ (สาขาตำบลแม่เล่ย์)*   ', '00000', '2', '47');
INSERT INTO `amphur` VALUES ('701', '6101', 'เมืองอุทัยธานี   ', '61000', '2', '48');
INSERT INTO `amphur` VALUES ('702', '6102', 'ทัพทัน   ', '61120', '2', '48');
INSERT INTO `amphur` VALUES ('703', '6103', 'สว่างอารมณ์   ', '61150', '2', '48');
INSERT INTO `amphur` VALUES ('704', '6104', 'หนองฉาง   ', '61110', '2', '48');
INSERT INTO `amphur` VALUES ('705', '6105', 'หนองขาหย่าง   ', '61130', '2', '48');
INSERT INTO `amphur` VALUES ('706', '6106', 'บ้านไร่   ', '61140', '2', '48');
INSERT INTO `amphur` VALUES ('707', '6107', 'ลานสัก   ', '61160', '2', '48');
INSERT INTO `amphur` VALUES ('708', '6108', 'ห้วยคต   ', '61170', '2', '48');
INSERT INTO `amphur` VALUES ('709', '6201', 'เมืองกำแพงเพชร   ', '62000', '2', '49');
INSERT INTO `amphur` VALUES ('710', '6202', 'ไทรงาม   ', '62150', '2', '49');
INSERT INTO `amphur` VALUES ('711', '6203', 'คลองลาน   ', '62180', '2', '49');
INSERT INTO `amphur` VALUES ('712', '6204', 'ขาณุวรลักษบุรี   ', '62130', '2', '49');
INSERT INTO `amphur` VALUES ('713', '6205', 'คลองขลุง   ', '62120', '2', '49');
INSERT INTO `amphur` VALUES ('714', '6206', 'พรานกระต่าย   ', '62110', '2', '49');
INSERT INTO `amphur` VALUES ('715', '6207', 'ลานกระบือ   ', '62170', '2', '49');
INSERT INTO `amphur` VALUES ('716', '6208', 'ทรายทองวัฒนา   ', '62190', '2', '49');
INSERT INTO `amphur` VALUES ('717', '6209', 'ปางศิลาทอง   ', '62120', '2', '49');
INSERT INTO `amphur` VALUES ('718', '6210', 'บึงสามัคคี   ', '62210', '2', '49');
INSERT INTO `amphur` VALUES ('719', '6211', 'โกสัมพีนคร   ', '62000', '2', '49');
INSERT INTO `amphur` VALUES ('720', '6301', 'เมืองตาก   ', '63000', '4', '50');
INSERT INTO `amphur` VALUES ('721', '6302', 'บ้านตาก   ', '63120', '4', '50');
INSERT INTO `amphur` VALUES ('722', '6303', 'สามเงา   ', '63130', '4', '50');
INSERT INTO `amphur` VALUES ('723', '6304', 'แม่ระมาด   ', '63140', '4', '50');
INSERT INTO `amphur` VALUES ('724', '6305', 'ท่าสองยาง   ', '63150', '4', '50');
INSERT INTO `amphur` VALUES ('725', '6306', 'แม่สอด   ', '63110', '4', '50');
INSERT INTO `amphur` VALUES ('726', '6307', 'พบพระ   ', '63160', '4', '50');
INSERT INTO `amphur` VALUES ('727', '6308', 'อุ้มผาง   ', '63170', '4', '50');
INSERT INTO `amphur` VALUES ('728', '6309', 'วังเจ้า   ', '63000', '4', '50');
INSERT INTO `amphur` VALUES ('729', '6381', '*กิ่ง อ.ท่าปุย  จ.ตาก   ', '00000', '4', '50');
INSERT INTO `amphur` VALUES ('730', '6401', 'เมืองสุโขทัย   ', '64000', '2', '51');
INSERT INTO `amphur` VALUES ('731', '6402', 'บ้านด่านลานหอย   ', '64140', '2', '51');
INSERT INTO `amphur` VALUES ('732', '6403', 'คีรีมาศ   ', '64160', '2', '51');
INSERT INTO `amphur` VALUES ('733', '6404', 'กงไกรลาศ   ', '64170', '2', '51');
INSERT INTO `amphur` VALUES ('734', '6405', 'ศรีสัชนาลัย   ', '64130', '2', '51');
INSERT INTO `amphur` VALUES ('735', '6406', 'ศรีสำโรง   ', '64120', '2', '51');
INSERT INTO `amphur` VALUES ('736', '6407', 'สวรรคโลก   ', '64110', '2', '51');
INSERT INTO `amphur` VALUES ('737', '6408', 'ศรีนคร   ', '64180', '2', '51');
INSERT INTO `amphur` VALUES ('738', '6409', 'ทุ่งเสลี่ยม   ', '64150', '2', '51');
INSERT INTO `amphur` VALUES ('739', '6501', 'เมืองพิษณุโลก   ', '65000', '2', '52');
INSERT INTO `amphur` VALUES ('740', '6502', 'นครไทย   ', '65120', '2', '52');
INSERT INTO `amphur` VALUES ('741', '6503', 'ชาติตระการ   ', '65170', '2', '52');
INSERT INTO `amphur` VALUES ('742', '6504', 'บางระกำ   ', '65140', '2', '52');
INSERT INTO `amphur` VALUES ('743', '6505', 'บางกระทุ่ม   ', '65110', '2', '52');
INSERT INTO `amphur` VALUES ('744', '6506', 'พรหมพิราม   ', '65150', '2', '52');
INSERT INTO `amphur` VALUES ('745', '6507', 'วัดโบสถ์   ', '65160', '2', '52');
INSERT INTO `amphur` VALUES ('746', '6508', 'วังทอง   ', '65130', '2', '52');
INSERT INTO `amphur` VALUES ('747', '6509', 'เนินมะปราง   ', '65190', '2', '52');
INSERT INTO `amphur` VALUES ('748', '6601', 'เมืองพิจิตร   ', '66000', '2', '53');
INSERT INTO `amphur` VALUES ('749', '6602', 'วังทรายพูน   ', '66180', '2', '53');
INSERT INTO `amphur` VALUES ('750', '6603', 'โพธิ์ประทับช้าง   ', '66190', '2', '53');
INSERT INTO `amphur` VALUES ('751', '6604', 'ตะพานหิน   ', '66110', '2', '53');
INSERT INTO `amphur` VALUES ('752', '6605', 'บางมูลนาก   ', '66120', '2', '53');
INSERT INTO `amphur` VALUES ('753', '6606', 'โพทะเล   ', '66130', '2', '53');
INSERT INTO `amphur` VALUES ('754', '6607', 'สามง่าม   ', '66140', '2', '53');
INSERT INTO `amphur` VALUES ('755', '6608', 'ทับคล้อ   ', '66150', '2', '53');
INSERT INTO `amphur` VALUES ('756', '6609', 'สากเหล็ก   ', '66160', '2', '53');
INSERT INTO `amphur` VALUES ('757', '6610', 'บึงนาราง   ', '66130', '2', '53');
INSERT INTO `amphur` VALUES ('758', '6611', 'ดงเจริญ   ', '66210', '2', '53');
INSERT INTO `amphur` VALUES ('759', '6612', 'วชิรบารมี   ', '66140', '2', '53');
INSERT INTO `amphur` VALUES ('760', '6701', 'เมืองเพชรบูรณ์   ', '67000', '2', '54');
INSERT INTO `amphur` VALUES ('761', '6702', 'ชนแดน   ', '67150', '2', '54');
INSERT INTO `amphur` VALUES ('762', '6703', 'หล่มสัก   ', '67110', '2', '54');
INSERT INTO `amphur` VALUES ('763', '6704', 'หล่มเก่า   ', '67120', '2', '54');
INSERT INTO `amphur` VALUES ('764', '6705', 'วิเชียรบุรี   ', '67130', '2', '54');
INSERT INTO `amphur` VALUES ('765', '6706', 'ศรีเทพ   ', '67170', '2', '54');
INSERT INTO `amphur` VALUES ('766', '6707', 'หนองไผ่   ', '67140', '2', '54');
INSERT INTO `amphur` VALUES ('767', '6708', 'บึงสามพัน   ', '67160', '2', '54');
INSERT INTO `amphur` VALUES ('768', '6709', 'น้ำหนาว   ', '67260', '2', '54');
INSERT INTO `amphur` VALUES ('769', '6710', 'วังโป่ง   ', '67240', '2', '54');
INSERT INTO `amphur` VALUES ('770', '6711', 'เขาค้อ   ', '67270', '2', '54');
INSERT INTO `amphur` VALUES ('771', '7001', 'เมืองราชบุรี   ', '70000', '4', '55');
INSERT INTO `amphur` VALUES ('772', '7002', 'จอมบึง   ', '70150', '4', '55');
INSERT INTO `amphur` VALUES ('773', '7003', 'สวนผึ้ง   ', '70180', '4', '55');
INSERT INTO `amphur` VALUES ('774', '7004', 'ดำเนินสะดวก   ', '70130', '4', '55');
INSERT INTO `amphur` VALUES ('775', '7005', 'บ้านโป่ง   ', '70110', '4', '55');
INSERT INTO `amphur` VALUES ('776', '7006', 'บางแพ   ', '70160', '4', '55');
INSERT INTO `amphur` VALUES ('777', '7007', 'โพธาราม   ', '70120', '4', '55');
INSERT INTO `amphur` VALUES ('778', '7008', 'ปากท่อ   ', '70140', '4', '55');
INSERT INTO `amphur` VALUES ('779', '7009', 'วัดเพลง   ', '70170', '4', '55');
INSERT INTO `amphur` VALUES ('780', '7010', 'บ้านคา   ', '70180', '4', '55');
INSERT INTO `amphur` VALUES ('781', '7074', 'ท้องถิ่นเทศบาลตำบลบ้านฆ้อง   ', '00000', '4', '55');
INSERT INTO `amphur` VALUES ('782', '7101', 'เมืองกาญจนบุรี   ', '71000', '4', '56');
INSERT INTO `amphur` VALUES ('783', '7102', 'ไทรโยค   ', '71150', '4', '56');
INSERT INTO `amphur` VALUES ('784', '7103', 'บ่อพลอย   ', '71160', '4', '56');
INSERT INTO `amphur` VALUES ('785', '7104', 'ศรีสวัสดิ์   ', '71250', '4', '56');
INSERT INTO `amphur` VALUES ('786', '7105', 'ท่ามะกา   ', '71120', '4', '56');
INSERT INTO `amphur` VALUES ('787', '7106', 'ท่าม่วง   ', '71110', '4', '56');
INSERT INTO `amphur` VALUES ('788', '7107', 'ทองผาภูมิ   ', '71180', '4', '56');
INSERT INTO `amphur` VALUES ('789', '7108', 'สังขละบุรี   ', '71240', '4', '56');
INSERT INTO `amphur` VALUES ('790', '7109', 'พนมทวน   ', '71140', '4', '56');
INSERT INTO `amphur` VALUES ('791', '7110', 'เลาขวัญ   ', '71210', '4', '56');
INSERT INTO `amphur` VALUES ('792', '7111', 'ด่านมะขามเตี้ย   ', '71260', '4', '56');
INSERT INTO `amphur` VALUES ('793', '7112', 'หนองปรือ   ', '71220', '4', '56');
INSERT INTO `amphur` VALUES ('794', '7113', 'ห้วยกระเจา   ', '71170', '4', '56');
INSERT INTO `amphur` VALUES ('795', '7151', 'สาขาตำบลท่ากระดาน*   ', '00000', '4', '56');
INSERT INTO `amphur` VALUES ('796', '7181', '*บ้านทวน  จ.กาญจนบุรี   ', '00000', '4', '56');
INSERT INTO `amphur` VALUES ('797', '7201', 'เมืองสุพรรณบุรี   ', '72000', '2', '57');
INSERT INTO `amphur` VALUES ('798', '7202', 'เดิมบางนางบวช   ', '72120', '2', '57');
INSERT INTO `amphur` VALUES ('799', '7203', 'ด่านช้าง   ', '72180', '2', '57');
INSERT INTO `amphur` VALUES ('800', '7204', 'บางปลาม้า   ', '72150', '2', '57');
INSERT INTO `amphur` VALUES ('801', '7205', 'ศรีประจันต์   ', '72140', '2', '57');
INSERT INTO `amphur` VALUES ('802', '7206', 'ดอนเจดีย์   ', '72170', '2', '57');
INSERT INTO `amphur` VALUES ('803', '7207', 'สองพี่น้อง   ', '72110', '2', '57');
INSERT INTO `amphur` VALUES ('804', '7208', 'สามชุก   ', '72130', '2', '57');
INSERT INTO `amphur` VALUES ('805', '7209', 'อู่ทอง   ', '72160', '2', '57');
INSERT INTO `amphur` VALUES ('806', '7210', 'หนองหญ้าไซ   ', '72240', '2', '57');
INSERT INTO `amphur` VALUES ('807', '7301', 'เมืองนครปฐม   ', '73000', '2', '58');
INSERT INTO `amphur` VALUES ('808', '7302', 'กำแพงแสน   ', '73140', '2', '58');
INSERT INTO `amphur` VALUES ('809', '7303', 'นครชัยศรี   ', '73120', '2', '58');
INSERT INTO `amphur` VALUES ('810', '7304', 'ดอนตูม   ', '73150', '2', '58');
INSERT INTO `amphur` VALUES ('811', '7305', 'บางเลน   ', '73130', '2', '58');
INSERT INTO `amphur` VALUES ('812', '7306', 'สามพราน   ', '73110', '2', '58');
INSERT INTO `amphur` VALUES ('813', '7307', 'พุทธมณฑล   ', '73170', '2', '58');
INSERT INTO `amphur` VALUES ('814', '7401', 'เมืองสมุทรสาคร   ', '74000', '2', '59');
INSERT INTO `amphur` VALUES ('815', '7402', 'กระทุ่มแบน   ', '74110', '2', '59');
INSERT INTO `amphur` VALUES ('816', '7403', 'บ้านแพ้ว   ', '74120', '2', '59');
INSERT INTO `amphur` VALUES ('817', '7501', 'เมืองสมุทรสงคราม   ', '75000', '2', '60');
INSERT INTO `amphur` VALUES ('818', '7502', 'บางคนที   ', '75120', '2', '60');
INSERT INTO `amphur` VALUES ('819', '7503', 'อัมพวา   ', '75110', '2', '60');
INSERT INTO `amphur` VALUES ('820', '7601', 'เมืองเพชรบุรี   ', '76000', '4', '61');
INSERT INTO `amphur` VALUES ('821', '7602', 'เขาย้อย   ', '76140', '4', '61');
INSERT INTO `amphur` VALUES ('822', '7603', 'หนองหญ้าปล้อง   ', '76160', '4', '61');
INSERT INTO `amphur` VALUES ('823', '7604', 'ชะอำ   ', '76120', '4', '61');
INSERT INTO `amphur` VALUES ('824', '7605', 'ท่ายาง   ', '76130', '4', '61');
INSERT INTO `amphur` VALUES ('825', '7606', 'บ้านลาด   ', '76150', '4', '61');
INSERT INTO `amphur` VALUES ('826', '7607', 'บ้านแหลม   ', '76110', '4', '61');
INSERT INTO `amphur` VALUES ('827', '7608', 'แก่งกระจาน   ', '76170', '4', '61');
INSERT INTO `amphur` VALUES ('828', '7701', 'เมืองประจวบคีรีขันธ์   ', '77000', '4', '62');
INSERT INTO `amphur` VALUES ('829', '7702', 'กุยบุรี   ', '77150', '4', '62');
INSERT INTO `amphur` VALUES ('830', '7703', 'ทับสะแก   ', '77130', '4', '62');
INSERT INTO `amphur` VALUES ('831', '7704', 'บางสะพาน   ', '77140', '4', '62');
INSERT INTO `amphur` VALUES ('832', '7705', 'บางสะพานน้อย   ', '77170', '4', '62');
INSERT INTO `amphur` VALUES ('833', '7706', 'ปราณบุรี   ', '77120', '4', '62');
INSERT INTO `amphur` VALUES ('834', '7707', 'หัวหิน   ', '77110', '4', '62');
INSERT INTO `amphur` VALUES ('835', '7708', 'สามร้อยยอด   ', '77180', '4', '62');
INSERT INTO `amphur` VALUES ('836', '8001', 'เมืองนครศรีธรรมราช   ', '80000', '6', '63');
INSERT INTO `amphur` VALUES ('837', '8002', 'พรหมคีรี   ', '80320', '6', '63');
INSERT INTO `amphur` VALUES ('838', '8003', 'ลานสกา   ', '80230', '6', '63');
INSERT INTO `amphur` VALUES ('839', '8004', 'ฉวาง   ', '80150', '6', '63');
INSERT INTO `amphur` VALUES ('840', '8005', 'พิปูน   ', '80270', '6', '63');
INSERT INTO `amphur` VALUES ('841', '8006', 'เชียรใหญ่   ', '80190', '6', '63');
INSERT INTO `amphur` VALUES ('842', '8007', 'ชะอวด   ', '80180', '6', '63');
INSERT INTO `amphur` VALUES ('843', '8008', 'ท่าศาลา   ', '80160', '6', '63');
INSERT INTO `amphur` VALUES ('844', '8009', 'ทุ่งสง   ', '80110', '6', '63');
INSERT INTO `amphur` VALUES ('845', '8010', 'นาบอน   ', '80220', '6', '63');
INSERT INTO `amphur` VALUES ('846', '8011', 'ทุ่งใหญ่   ', '80240', '6', '63');
INSERT INTO `amphur` VALUES ('847', '8012', 'ปากพนัง   ', '80140', '6', '63');
INSERT INTO `amphur` VALUES ('848', '8013', 'ร่อนพิบูลย์   ', '80130', '6', '63');
INSERT INTO `amphur` VALUES ('849', '8014', 'สิชล   ', '80120', '6', '63');
INSERT INTO `amphur` VALUES ('850', '8015', 'ขนอม   ', '80210', '6', '63');
INSERT INTO `amphur` VALUES ('851', '8016', 'หัวไทร   ', '80170', '6', '63');
INSERT INTO `amphur` VALUES ('852', '8017', 'บางขัน   ', '80360', '6', '63');
INSERT INTO `amphur` VALUES ('853', '8018', 'ถ้ำพรรณรา   ', '80260', '6', '63');
INSERT INTO `amphur` VALUES ('854', '8019', 'จุฬาภรณ์   ', '80130', '6', '63');
INSERT INTO `amphur` VALUES ('855', '8020', 'พระพรหม   ', '80000', '6', '63');
INSERT INTO `amphur` VALUES ('856', '8021', 'นบพิตำ   ', '80160', '6', '63');
INSERT INTO `amphur` VALUES ('857', '8022', 'ช้างกลาง   ', '80250', '6', '63');
INSERT INTO `amphur` VALUES ('858', '8023', 'เฉลิมพระเกียรติ(63-ตาก)', '00000', '6', '63');
INSERT INTO `amphur` VALUES ('859', '8051', 'เชียรใหญ่ (สาขาตำบลเสือหึง)*   ', '00000', '6', '63');
INSERT INTO `amphur` VALUES ('860', '8052', 'สาขาตำบลสวนหลวง**   ', '00000', '6', '63');
INSERT INTO `amphur` VALUES ('861', '8053', 'ร่อนพิบูลย์ (สาขาตำบลหินตก)*   ', '00000', '6', '63');
INSERT INTO `amphur` VALUES ('862', '8054', 'หัวไทร (สาขาตำบลควนชะลิก)*   ', '00000', '6', '63');
INSERT INTO `amphur` VALUES ('863', '8055', 'ทุ่งสง (สาขาตำบลกะปาง)*   ', '00000', '6', '63');
INSERT INTO `amphur` VALUES ('864', '8101', 'เมืองกระบี่   ', '81000', '6', '64');
INSERT INTO `amphur` VALUES ('865', '8102', 'เขาพนม   ', '81140', '6', '64');
INSERT INTO `amphur` VALUES ('866', '8103', 'เกาะลันตา   ', '81150', '6', '64');
INSERT INTO `amphur` VALUES ('867', '8104', 'คลองท่อม   ', '81120', '6', '64');
INSERT INTO `amphur` VALUES ('868', '8105', 'อ่าวลึก   ', '81110', '6', '64');
INSERT INTO `amphur` VALUES ('869', '8106', 'ปลายพระยา   ', '81160', '6', '64');
INSERT INTO `amphur` VALUES ('870', '8107', 'ลำทับ   ', '81120', '6', '64');
INSERT INTO `amphur` VALUES ('871', '8108', 'เหนือคลอง   ', '81130', '6', '64');
INSERT INTO `amphur` VALUES ('872', '8201', 'เมืองพังงา   ', '82000', '6', '65');
INSERT INTO `amphur` VALUES ('873', '8202', 'เกาะยาว   ', '82160', '6', '65');
INSERT INTO `amphur` VALUES ('874', '8203', 'กะปง   ', '82170', '6', '65');
INSERT INTO `amphur` VALUES ('875', '8204', 'ตะกั่วทุ่ง   ', '82130', '6', '65');
INSERT INTO `amphur` VALUES ('876', '8205', 'ตะกั่วป่า   ', '82110', '6', '65');
INSERT INTO `amphur` VALUES ('877', '8206', 'คุระบุรี   ', '82150', '6', '65');
INSERT INTO `amphur` VALUES ('878', '8207', 'ทับปุด   ', '82180', '6', '65');
INSERT INTO `amphur` VALUES ('879', '8208', 'ท้ายเหมือง   ', '82120', '6', '65');
INSERT INTO `amphur` VALUES ('880', '8301', 'เมืองภูเก็ต   ', '83000', '6', '66');
INSERT INTO `amphur` VALUES ('881', '8302', 'กะทู้   ', '83120', '6', '66');
INSERT INTO `amphur` VALUES ('882', '8303', 'ถลาง   ', '83110', '6', '66');
INSERT INTO `amphur` VALUES ('883', '8381', '*ทุ่งคา   ', '00000', '6', '66');
INSERT INTO `amphur` VALUES ('884', '8401', 'เมืองสุราษฎร์ธานี   ', '84000', '6', '67');
INSERT INTO `amphur` VALUES ('885', '8402', 'กาญจนดิษฐ์   ', '84160', '6', '67');
INSERT INTO `amphur` VALUES ('886', '8403', 'ดอนสัก   ', '84220', '6', '67');
INSERT INTO `amphur` VALUES ('887', '8404', 'เกาะสมุย   ', '84140', '6', '67');
INSERT INTO `amphur` VALUES ('888', '8405', 'เกาะพะงัน   ', '84280', '6', '67');
INSERT INTO `amphur` VALUES ('889', '8406', 'ไชยา   ', '84110', '6', '67');
INSERT INTO `amphur` VALUES ('890', '8407', 'ท่าชนะ   ', '84170', '6', '67');
INSERT INTO `amphur` VALUES ('891', '8408', 'คีรีรัฐนิคม   ', '84180', '6', '67');
INSERT INTO `amphur` VALUES ('892', '8409', 'บ้านตาขุน   ', '84230', '6', '67');
INSERT INTO `amphur` VALUES ('893', '8410', 'พนม   ', '84250', '6', '67');
INSERT INTO `amphur` VALUES ('894', '8411', 'ท่าฉาง   ', '84150', '6', '67');
INSERT INTO `amphur` VALUES ('895', '8412', 'บ้านนาสาร   ', '84120', '6', '67');
INSERT INTO `amphur` VALUES ('896', '8413', 'บ้านนาเดิม   ', '84240', '6', '67');
INSERT INTO `amphur` VALUES ('897', '8414', 'เคียนซา   ', '84260', '6', '67');
INSERT INTO `amphur` VALUES ('898', '8415', 'เวียงสระ   ', '84190', '6', '67');
INSERT INTO `amphur` VALUES ('899', '8416', 'พระแสง   ', '84210', '6', '67');
INSERT INTO `amphur` VALUES ('900', '8417', 'พุนพิน   ', '84130', '6', '67');
INSERT INTO `amphur` VALUES ('901', '8418', 'ชัยบุรี   ', '84350', '6', '67');
INSERT INTO `amphur` VALUES ('902', '8419', 'วิภาวดี   ', '84180', '6', '67');
INSERT INTO `amphur` VALUES ('903', '8451', 'เกาะพงัน (สาขาตำบลเกาะเต่า)*   ', '00000', '6', '67');
INSERT INTO `amphur` VALUES ('904', '8481', '*อ.บ้านดอน  จ.สุราษฎร์ธานี   ', '00000', '6', '67');
INSERT INTO `amphur` VALUES ('905', '8501', 'เมืองระนอง   ', '85000', '6', '68');
INSERT INTO `amphur` VALUES ('906', '8502', 'ละอุ่น   ', '85130', '6', '68');
INSERT INTO `amphur` VALUES ('907', '8503', 'กะเปอร์   ', '85120', '6', '68');
INSERT INTO `amphur` VALUES ('908', '8504', 'กระบุรี   ', '85110', '6', '68');
INSERT INTO `amphur` VALUES ('909', '8505', 'สุขสำราญ   ', '85120', '6', '68');
INSERT INTO `amphur` VALUES ('910', '8601', 'เมืองชุมพร   ', '86000', '6', '69');
INSERT INTO `amphur` VALUES ('911', '8602', 'ท่าแซะ   ', '86140', '6', '69');
INSERT INTO `amphur` VALUES ('912', '8603', 'ปะทิว   ', '86160', '6', '69');
INSERT INTO `amphur` VALUES ('913', '8604', 'หลังสวน   ', '86110', '6', '69');
INSERT INTO `amphur` VALUES ('914', '8605', 'ละแม   ', '86170', '6', '69');
INSERT INTO `amphur` VALUES ('915', '8606', 'พะโต๊ะ   ', '86180', '6', '69');
INSERT INTO `amphur` VALUES ('916', '8607', 'สวี   ', '86130', '6', '69');
INSERT INTO `amphur` VALUES ('917', '8608', 'ทุ่งตะโก   ', '86220', '6', '69');
INSERT INTO `amphur` VALUES ('918', '9001', 'เมืองสงขลา   ', '90000', '6', '70');
INSERT INTO `amphur` VALUES ('919', '9002', 'สทิงพระ   ', '90190', '6', '70');
INSERT INTO `amphur` VALUES ('920', '9003', 'จะนะ   ', '90130', '6', '70');
INSERT INTO `amphur` VALUES ('921', '9004', 'นาทวี   ', '90160', '6', '70');
INSERT INTO `amphur` VALUES ('922', '9005', 'เทพา   ', '90150', '6', '70');
INSERT INTO `amphur` VALUES ('923', '9006', 'สะบ้าย้อย   ', '90210', '6', '70');
INSERT INTO `amphur` VALUES ('924', '9007', 'ระโนด   ', '90140', '6', '70');
INSERT INTO `amphur` VALUES ('925', '9008', 'กระแสสินธุ์   ', '90270', '6', '70');
INSERT INTO `amphur` VALUES ('926', '9009', 'รัตภูมิ   ', '90180', '6', '70');
INSERT INTO `amphur` VALUES ('927', '9010', 'สะเดา   ', '90120', '6', '70');
INSERT INTO `amphur` VALUES ('928', '9011', 'หาดใหญ่   ', '90110', '6', '70');
INSERT INTO `amphur` VALUES ('929', '9012', 'นาหม่อม   ', '90310', '6', '70');
INSERT INTO `amphur` VALUES ('930', '9013', 'ควนเนียง   ', '90220', '6', '70');
INSERT INTO `amphur` VALUES ('931', '9014', 'บางกล่ำ   ', '90110', '6', '70');
INSERT INTO `amphur` VALUES ('932', '9015', 'สิงหนคร   ', '90280', '6', '70');
INSERT INTO `amphur` VALUES ('933', '9016', 'คลองหอยโข่ง   ', '90230', '6', '70');
INSERT INTO `amphur` VALUES ('934', '9077', 'ท้องถิ่นเทศบาลตำบลสำนักขาม   ', '00000', '6', '70');
INSERT INTO `amphur` VALUES ('935', '9096', 'เทศบาลตำบลบ้านพรุ*   ', '00000', '6', '70');
INSERT INTO `amphur` VALUES ('936', '9101', 'เมืองสตูล   ', '91000', '6', '71');
INSERT INTO `amphur` VALUES ('937', '9102', 'ควนโดน   ', '91160', '6', '71');
INSERT INTO `amphur` VALUES ('938', '9103', 'ควนกาหลง   ', '91130', '6', '71');
INSERT INTO `amphur` VALUES ('939', '9104', 'ท่าแพ   ', '91150', '6', '71');
INSERT INTO `amphur` VALUES ('940', '9105', 'ละงู   ', '91110', '6', '71');
INSERT INTO `amphur` VALUES ('941', '9106', 'ทุ่งหว้า   ', '91120', '6', '71');
INSERT INTO `amphur` VALUES ('942', '9107', 'มะนัง   ', '91130', '6', '71');
INSERT INTO `amphur` VALUES ('943', '9201', 'เมืองตรัง   ', '92000', '6', '72');
INSERT INTO `amphur` VALUES ('944', '9202', 'กันตัง   ', '92110', '6', '72');
INSERT INTO `amphur` VALUES ('945', '9203', 'ย่านตาขาว   ', '92140', '6', '72');
INSERT INTO `amphur` VALUES ('946', '9204', 'ปะเหลียน   ', '92120', '6', '72');
INSERT INTO `amphur` VALUES ('947', '9205', 'สิเกา   ', '92150', '6', '72');
INSERT INTO `amphur` VALUES ('948', '9206', 'ห้วยยอด   ', '92130', '6', '72');
INSERT INTO `amphur` VALUES ('949', '9207', 'วังวิเศษ   ', '92220', '6', '72');
INSERT INTO `amphur` VALUES ('950', '9208', 'นาโยง   ', '92170', '6', '72');
INSERT INTO `amphur` VALUES ('951', '9209', 'รัษฎา   ', '92160', '6', '72');
INSERT INTO `amphur` VALUES ('952', '9210', 'หาดสำราญ   ', '92120', '6', '72');
INSERT INTO `amphur` VALUES ('953', '9251', 'อำเภอเมืองตรัง(สาขาคลองเต็ง)**   ', '00000', '6', '72');
INSERT INTO `amphur` VALUES ('954', '9301', 'เมืองพัทลุง   ', '93000', '6', '73');
INSERT INTO `amphur` VALUES ('955', '9302', 'กงหรา   ', '93180', '6', '73');
INSERT INTO `amphur` VALUES ('956', '9303', 'เขาชัยสน   ', '93130', '6', '73');
INSERT INTO `amphur` VALUES ('957', '9304', 'ตะโหมด   ', '93160', '6', '73');
INSERT INTO `amphur` VALUES ('958', '9305', 'ควนขนุน   ', '93110', '6', '73');
INSERT INTO `amphur` VALUES ('959', '9306', 'ปากพะยูน   ', '93120', '6', '73');
INSERT INTO `amphur` VALUES ('960', '9307', 'ศรีบรรพต   ', '93190', '6', '73');
INSERT INTO `amphur` VALUES ('961', '9308', 'ป่าบอน   ', '93170', '6', '73');
INSERT INTO `amphur` VALUES ('962', '9309', 'บางแก้ว   ', '93140', '6', '73');
INSERT INTO `amphur` VALUES ('963', '9310', 'ป่าพะยอม   ', '93110', '6', '73');
INSERT INTO `amphur` VALUES ('964', '9311', 'ศรีนครินทร์   ', '93000', '6', '73');
INSERT INTO `amphur` VALUES ('965', '9401', 'เมืองปัตตานี   ', '94000', '6', '74');
INSERT INTO `amphur` VALUES ('966', '9402', 'โคกโพธิ์   ', '94120', '6', '74');
INSERT INTO `amphur` VALUES ('967', '9403', 'หนองจิก   ', '94170', '6', '74');
INSERT INTO `amphur` VALUES ('968', '9404', 'ปะนาเระ   ', '94130', '6', '74');
INSERT INTO `amphur` VALUES ('969', '9405', 'มายอ   ', '94140', '6', '74');
INSERT INTO `amphur` VALUES ('970', '9406', 'ทุ่งยางแดง   ', '94140', '6', '74');
INSERT INTO `amphur` VALUES ('971', '9407', 'สายบุรี   ', '94110', '6', '74');
INSERT INTO `amphur` VALUES ('972', '9408', 'ไม้แก่น   ', '94220', '6', '74');
INSERT INTO `amphur` VALUES ('973', '9409', 'ยะหริ่ง   ', '94150', '6', '74');
INSERT INTO `amphur` VALUES ('974', '9410', 'ยะรัง   ', '94160', '6', '74');
INSERT INTO `amphur` VALUES ('975', '9411', 'กะพ้อ   ', '94230', '6', '74');
INSERT INTO `amphur` VALUES ('976', '9412', 'แม่ลาน   ', '94180', '6', '74');
INSERT INTO `amphur` VALUES ('977', '9501', 'เมืองยะลา   ', '95000', '6', '75');
INSERT INTO `amphur` VALUES ('978', '9502', 'เบตง   ', '95110', '6', '75');
INSERT INTO `amphur` VALUES ('979', '9503', 'บันนังสตา   ', '95130', '6', '75');
INSERT INTO `amphur` VALUES ('980', '9504', 'ธารโต   ', '95150', '6', '75');
INSERT INTO `amphur` VALUES ('981', '9505', 'ยะหา   ', '95120', '6', '75');
INSERT INTO `amphur` VALUES ('982', '9506', 'รามัน   ', '95140', '6', '75');
INSERT INTO `amphur` VALUES ('983', '9507', 'กาบัง   ', '95120', '6', '75');
INSERT INTO `amphur` VALUES ('984', '9508', 'กรงปินัง   ', '95000', '6', '75');
INSERT INTO `amphur` VALUES ('985', '9601', 'เมืองนราธิวาส   ', '96000', '6', '76');
INSERT INTO `amphur` VALUES ('986', '9602', 'ตากใบ   ', '96110', '6', '76');
INSERT INTO `amphur` VALUES ('987', '9603', 'บาเจาะ   ', '96170', '6', '76');
INSERT INTO `amphur` VALUES ('988', '9604', 'ยี่งอ   ', '96180', '6', '76');
INSERT INTO `amphur` VALUES ('989', '9605', 'ระแงะ   ', '96130', '6', '76');
INSERT INTO `amphur` VALUES ('990', '9606', 'รือเสาะ   ', '96150', '6', '76');
INSERT INTO `amphur` VALUES ('991', '9607', 'ศรีสาคร   ', '96210', '6', '76');
INSERT INTO `amphur` VALUES ('992', '9608', 'แว้ง   ', '96160', '6', '76');
INSERT INTO `amphur` VALUES ('993', '9609', 'สุคิริน   ', '96190', '6', '76');
INSERT INTO `amphur` VALUES ('994', '9610', 'สุไหงโก-ลก   ', '96120', '6', '76');
INSERT INTO `amphur` VALUES ('995', '9611', 'สุไหงปาดี   ', '96140', '6', '76');
INSERT INTO `amphur` VALUES ('996', '9612', 'จะแนะ   ', '96220', '6', '76');
INSERT INTO `amphur` VALUES ('997', '9613', 'เจาะไอร้อง   ', '96130', '6', '76');
INSERT INTO `amphur` VALUES ('998', '9681', '*อ.บางนรา  จ.นราธิวาส   ', '00000', '6', '76');

-- ----------------------------
-- Table structure for `auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `idx-auth_assignment-user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('System Administrator', '1', '1559538225');
INSERT INTO `auth_assignment` VALUES ('System User', '1', '1559538225');

-- ----------------------------
-- Table structure for `auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('employee/create', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('employee/delete', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('employee/index', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('employee/update', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('employee/view', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('employeemodule', '2', 'สิทธิ์ใช้งานโมดูล employee', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('invoice/bill', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('invoice/create', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('invoice/delete', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('invoice/index', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('invoice/update', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('invoice/view', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('invoicemodule', '2', 'สิทธิ์ใช้งานโมดูล invoice', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('Manage employee', '1', 'Manage invoice', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('Manage invoice', '1', 'Manage invoice', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('Manage message', '1', 'Manage message', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('Manage Plant', '1', 'Manage plant', null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('Manage prodissue', '1', 'Manage product issue', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('Manage prodrec', '1', 'Manage product received', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('Manage product', '1', 'Manage Product', null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('Manage productionrec', '1', 'Manage production received', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('Manage purchplan', '1', 'Manage purchase plan', null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('Manage warehouse', '1', 'Manage message', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('Manage workschedule', '1', 'Manage work schedule', null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('message/create', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('message/delete', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('message/index', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('message/update', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('message/view', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('messagemodule', '2', 'สิทธิ์ใช้งานโมดูล message', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('plant/create', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('plant/delete', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('plant/index', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('plant/showcity', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('plant/showdistrict', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('plant/showzipcode', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('plant/update', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('plant/view', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('plantmodule', '2', 'สิทธิ์ใช้งานโมดูล Plant', null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('prodissue/cancel', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('prodissue/create', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('prodissue/delete', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('prodissue/getzoneinfo', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('prodissue/index', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('prodissue/showemp', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('prodissue/update', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('prodissue/view', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('prodissuemodule', '2', 'สิทธิ์ใช้งานโมดูล prodissue', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('prodrec/bill', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('prodrec/cancelqc', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('prodrec/create', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('prodrec/createinv', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('prodrec/delete', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('prodrec/index', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('prodrec/update', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('prodrec/view', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('prodrecmodule', '2', 'สิทธิ์ใช้งานโมดูล prodrec', null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('product/create', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('product/delete', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('product/index', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('product/update', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('product/view', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('productionrec/create', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('productionrec/delete', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('productionrec/findemp', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('productionrec/finditem', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('productionrec/findzonedate', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('productionrec/index', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('productionrec/print', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('productionrec/update', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('productionrec/view', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('productionrecmodule', '2', 'สิทธิ์ใช้งานโมดูล productionrec', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('productmodule', '2', 'สิทธิ์ใช้งานโมดูล product', null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplan/calendaritem', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplan/checkoldplan', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplan/copyplan', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplan/create', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplan/delete', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplan/findevent', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplan/index', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplan/showcalendar', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplan/testsave', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplan/update', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplan/updateplan', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplan/view', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('purchplanmodule', '2', 'สิทธิ์ใช้งานโมดูล purchplan', null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('System Administrator', '1', 'ผู้ดูแลระบบ', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('System User', '1', 'ผู้ใช้งานทั่วไป', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('warehouse/create', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('warehouse/delete', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('warehouse/index', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('warehouse/update', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('warehouse/view', '2', null, null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('warehousemodule', '2', 'สิทธิ์ใช้งานโมดูล warehouse', null, null, '1559538225', '1559538225');
INSERT INTO `auth_item` VALUES ('workschedule/create', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('workschedule/delete', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('workschedule/index', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('workschedule/update', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('workschedule/view', '2', null, null, null, '1559538224', '1559538224');
INSERT INTO `auth_item` VALUES ('workschedulemodule', '2', 'สิทธิ์ใช้งานโมดูล workschedule', null, null, '1559538224', '1559538224');

-- ----------------------------
-- Table structure for `auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('employeemodule', 'employee/create');
INSERT INTO `auth_item_child` VALUES ('employeemodule', 'employee/delete');
INSERT INTO `auth_item_child` VALUES ('employeemodule', 'employee/index');
INSERT INTO `auth_item_child` VALUES ('employeemodule', 'employee/update');
INSERT INTO `auth_item_child` VALUES ('employeemodule', 'employee/view');
INSERT INTO `auth_item_child` VALUES ('invoicemodule', 'invoice/bill');
INSERT INTO `auth_item_child` VALUES ('invoicemodule', 'invoice/create');
INSERT INTO `auth_item_child` VALUES ('invoicemodule', 'invoice/delete');
INSERT INTO `auth_item_child` VALUES ('invoicemodule', 'invoice/index');
INSERT INTO `auth_item_child` VALUES ('invoicemodule', 'invoice/update');
INSERT INTO `auth_item_child` VALUES ('invoicemodule', 'invoice/view');
INSERT INTO `auth_item_child` VALUES ('Manage employee', 'employeemodule');
INSERT INTO `auth_item_child` VALUES ('Manage invoice', 'invoicemodule');
INSERT INTO `auth_item_child` VALUES ('Manage message', 'messagemodule');
INSERT INTO `auth_item_child` VALUES ('Manage Plant', 'plantmodule');
INSERT INTO `auth_item_child` VALUES ('Manage prodissue', 'prodissuemodule');
INSERT INTO `auth_item_child` VALUES ('Manage prodrec', 'prodrecmodule');
INSERT INTO `auth_item_child` VALUES ('Manage product', 'productmodule');
INSERT INTO `auth_item_child` VALUES ('Manage productionrec', 'productionrecmodule');
INSERT INTO `auth_item_child` VALUES ('Manage purchplan', 'purchplanmodule');
INSERT INTO `auth_item_child` VALUES ('Manage warehouse', 'warehousemodule');
INSERT INTO `auth_item_child` VALUES ('Manage workschedule', 'workschedulemodule');
INSERT INTO `auth_item_child` VALUES ('messagemodule', 'message/create');
INSERT INTO `auth_item_child` VALUES ('messagemodule', 'message/delete');
INSERT INTO `auth_item_child` VALUES ('messagemodule', 'message/index');
INSERT INTO `auth_item_child` VALUES ('messagemodule', 'message/update');
INSERT INTO `auth_item_child` VALUES ('messagemodule', 'message/view');
INSERT INTO `auth_item_child` VALUES ('plantmodule', 'plant/create');
INSERT INTO `auth_item_child` VALUES ('plantmodule', 'plant/delete');
INSERT INTO `auth_item_child` VALUES ('plantmodule', 'plant/index');
INSERT INTO `auth_item_child` VALUES ('plantmodule', 'plant/showcity');
INSERT INTO `auth_item_child` VALUES ('plantmodule', 'plant/showdistrict');
INSERT INTO `auth_item_child` VALUES ('plantmodule', 'plant/showzipcode');
INSERT INTO `auth_item_child` VALUES ('plantmodule', 'plant/update');
INSERT INTO `auth_item_child` VALUES ('plantmodule', 'plant/view');
INSERT INTO `auth_item_child` VALUES ('prodissuemodule', 'prodissue/cancel');
INSERT INTO `auth_item_child` VALUES ('prodissuemodule', 'prodissue/create');
INSERT INTO `auth_item_child` VALUES ('prodissuemodule', 'prodissue/delete');
INSERT INTO `auth_item_child` VALUES ('prodissuemodule', 'prodissue/getzoneinfo');
INSERT INTO `auth_item_child` VALUES ('prodissuemodule', 'prodissue/index');
INSERT INTO `auth_item_child` VALUES ('prodissuemodule', 'prodissue/showemp');
INSERT INTO `auth_item_child` VALUES ('prodissuemodule', 'prodissue/update');
INSERT INTO `auth_item_child` VALUES ('prodissuemodule', 'prodissue/view');
INSERT INTO `auth_item_child` VALUES ('prodrecmodule', 'prodrec/bill');
INSERT INTO `auth_item_child` VALUES ('prodrecmodule', 'prodrec/cancelqc');
INSERT INTO `auth_item_child` VALUES ('prodrecmodule', 'prodrec/create');
INSERT INTO `auth_item_child` VALUES ('prodrecmodule', 'prodrec/createinv');
INSERT INTO `auth_item_child` VALUES ('prodrecmodule', 'prodrec/delete');
INSERT INTO `auth_item_child` VALUES ('prodrecmodule', 'prodrec/index');
INSERT INTO `auth_item_child` VALUES ('prodrecmodule', 'prodrec/update');
INSERT INTO `auth_item_child` VALUES ('prodrecmodule', 'prodrec/view');
INSERT INTO `auth_item_child` VALUES ('productionrecmodule', 'productionrec/create');
INSERT INTO `auth_item_child` VALUES ('productionrecmodule', 'productionrec/delete');
INSERT INTO `auth_item_child` VALUES ('productionrecmodule', 'productionrec/findemp');
INSERT INTO `auth_item_child` VALUES ('productionrecmodule', 'productionrec/finditem');
INSERT INTO `auth_item_child` VALUES ('productionrecmodule', 'productionrec/findzonedate');
INSERT INTO `auth_item_child` VALUES ('productionrecmodule', 'productionrec/index');
INSERT INTO `auth_item_child` VALUES ('productionrecmodule', 'productionrec/print');
INSERT INTO `auth_item_child` VALUES ('productionrecmodule', 'productionrec/update');
INSERT INTO `auth_item_child` VALUES ('productionrecmodule', 'productionrec/view');
INSERT INTO `auth_item_child` VALUES ('productmodule', 'product/create');
INSERT INTO `auth_item_child` VALUES ('productmodule', 'product/delete');
INSERT INTO `auth_item_child` VALUES ('productmodule', 'product/index');
INSERT INTO `auth_item_child` VALUES ('productmodule', 'product/update');
INSERT INTO `auth_item_child` VALUES ('productmodule', 'product/view');
INSERT INTO `auth_item_child` VALUES ('purchplanmodule', 'purchplan/calendaritem');
INSERT INTO `auth_item_child` VALUES ('purchplanmodule', 'purchplan/checkoldplan');
INSERT INTO `auth_item_child` VALUES ('purchplanmodule', 'purchplan/copyplan');
INSERT INTO `auth_item_child` VALUES ('purchplanmodule', 'purchplan/create');
INSERT INTO `auth_item_child` VALUES ('purchplanmodule', 'purchplan/delete');
INSERT INTO `auth_item_child` VALUES ('purchplanmodule', 'purchplan/findevent');
INSERT INTO `auth_item_child` VALUES ('purchplanmodule', 'purchplan/index');
INSERT INTO `auth_item_child` VALUES ('purchplanmodule', 'purchplan/showcalendar');
INSERT INTO `auth_item_child` VALUES ('purchplanmodule', 'purchplan/testsave');
INSERT INTO `auth_item_child` VALUES ('purchplanmodule', 'purchplan/update');
INSERT INTO `auth_item_child` VALUES ('purchplanmodule', 'purchplan/updateplan');
INSERT INTO `auth_item_child` VALUES ('purchplanmodule', 'purchplan/view');
INSERT INTO `auth_item_child` VALUES ('System Administrator', 'Manage employee');
INSERT INTO `auth_item_child` VALUES ('System Administrator', 'Manage invoice');
INSERT INTO `auth_item_child` VALUES ('System Administrator', 'Manage message');
INSERT INTO `auth_item_child` VALUES ('System Administrator', 'Manage Plant');
INSERT INTO `auth_item_child` VALUES ('System Administrator', 'Manage prodissue');
INSERT INTO `auth_item_child` VALUES ('System Administrator', 'Manage prodrec');
INSERT INTO `auth_item_child` VALUES ('System Administrator', 'Manage product');
INSERT INTO `auth_item_child` VALUES ('System Administrator', 'Manage productionrec');
INSERT INTO `auth_item_child` VALUES ('System Administrator', 'Manage purchplan');
INSERT INTO `auth_item_child` VALUES ('System Administrator', 'Manage warehouse');
INSERT INTO `auth_item_child` VALUES ('System Administrator', 'Manage workschedule');
INSERT INTO `auth_item_child` VALUES ('System User', 'Manage prodrec');
INSERT INTO `auth_item_child` VALUES ('System User', 'Manage product');
INSERT INTO `auth_item_child` VALUES ('System User', 'Manage productionrec');
INSERT INTO `auth_item_child` VALUES ('warehousemodule', 'warehouse/create');
INSERT INTO `auth_item_child` VALUES ('warehousemodule', 'warehouse/delete');
INSERT INTO `auth_item_child` VALUES ('warehousemodule', 'warehouse/index');
INSERT INTO `auth_item_child` VALUES ('warehousemodule', 'warehouse/update');
INSERT INTO `auth_item_child` VALUES ('warehousemodule', 'warehouse/view');
INSERT INTO `auth_item_child` VALUES ('workschedulemodule', 'workschedule/create');
INSERT INTO `auth_item_child` VALUES ('workschedulemodule', 'workschedule/delete');
INSERT INTO `auth_item_child` VALUES ('workschedulemodule', 'workschedule/index');
INSERT INTO `auth_item_child` VALUES ('workschedulemodule', 'workschedule/update');
INSERT INTO `auth_item_child` VALUES ('workschedulemodule', 'workschedule/view');

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------
INSERT INTO `auth_rule` VALUES ('canDelete', 0x4F3A32383A22636F6D6D6F6E5C726261635C44656C6574655265636F726452756C65223A333A7B733A343A226E616D65223B733A393A2263616E44656C657465223B733A393A22637265617465644174223B693A313535393533383232343B733A393A22757064617465644174223B693A313535393533383232343B7D, '1559538224', '1559538224');

-- ----------------------------
-- Table structure for `bank`
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bank
-- ----------------------------

-- ----------------------------
-- Table structure for `bank_account`
-- ----------------------------
DROP TABLE IF EXISTS `bank_account`;
CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `party_id` int(11) DEFAULT NULL,
  `party_type_id` int(11) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `is_primary` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bank_account
-- ----------------------------

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plant_id` int(11) DEFAULT NULL,
  `is_currency_rate` int(11) DEFAULT NULL,
  `is_auto_backup` int(11) DEFAULT NULL,
  `is_negative_stock` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for `currency`
-- ----------------------------
DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of currency
-- ----------------------------

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `payment_term` int(11) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `delivery_type` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `customer_group`;
CREATE TABLE `customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_group
-- ----------------------------

-- ----------------------------
-- Table structure for `cut_table`
-- ----------------------------
DROP TABLE IF EXISTS `cut_table`;
CREATE TABLE `cut_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cut_no` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cut_table
-- ----------------------------
INSERT INTO `cut_table` VALUES ('6', '1', '1', '1559658847', '1559658847', '1', null);

-- ----------------------------
-- Table structure for `cut_table_line`
-- ----------------------------
DROP TABLE IF EXISTS `cut_table_line`;
CREATE TABLE `cut_table_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cut_id` int(11) DEFAULT NULL,
  `orcard_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `cut_team` int(11) DEFAULT NULL,
  `cut_date` date DEFAULT NULL,
  `cut_next_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cut_table_line
-- ----------------------------
INSERT INTO `cut_table_line` VALUES ('36', '6', '1', '1', '1', '2019-07-15', '2019-08-09', null, '1562475947', '1562475947', '1', null);
INSERT INTO `cut_table_line` VALUES ('37', '6', '2', '1', '1', '2019-07-11', '2019-07-07', null, '1562475947', '1562475947', '1', null);
INSERT INTO `cut_table_line` VALUES ('38', '6', '3', '1', '2', '2019-07-08', '2019-08-02', null, '1562475947', '1562475947', '1', null);

-- ----------------------------
-- Table structure for `delivery_type`
-- ----------------------------
DROP TABLE IF EXISTS `delivery_type`;
CREATE TABLE `delivery_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `delivery_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delivery_type
-- ----------------------------

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', null, 'ผลิต', 'ผลิต', '1', '1559534803', '1559534803', '1', null);

-- ----------------------------
-- Table structure for `district`
-- ----------------------------
DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `DISTRICT_ID` int(5) NOT NULL AUTO_INCREMENT,
  `DISTRICT_CODE` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `DISTRICT_NAME` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `AMPHUR_ID` int(5) NOT NULL DEFAULT '0',
  `PROVINCE_ID` int(5) NOT NULL DEFAULT '0',
  `GEO_ID` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DISTRICT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8861 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of district
-- ----------------------------
INSERT INTO `district` VALUES ('1', '100101', 'พระบรมมหาราชวัง', '1', '1', '2');
INSERT INTO `district` VALUES ('2', '100102', 'วังบูรพาภิรมย์   ', '1', '1', '2');
INSERT INTO `district` VALUES ('3', '100103', 'วัดราชบพิธ   ', '1', '1', '2');
INSERT INTO `district` VALUES ('4', '100104', 'สำราญราษฎร์   ', '1', '1', '2');
INSERT INTO `district` VALUES ('5', '100105', 'ศาลเจ้าพ่อเสือ   ', '1', '1', '2');
INSERT INTO `district` VALUES ('6', '100106', 'เสาชิงช้า   ', '1', '1', '2');
INSERT INTO `district` VALUES ('7', '100107', 'บวรนิเวศ   ', '1', '1', '2');
INSERT INTO `district` VALUES ('8', '100108', 'ตลาดยอด   ', '1', '1', '2');
INSERT INTO `district` VALUES ('9', '100109', 'ชนะสงคราม   ', '1', '1', '2');
INSERT INTO `district` VALUES ('10', '100110', 'บ้านพานถม   ', '1', '1', '2');
INSERT INTO `district` VALUES ('11', '100111', 'บางขุนพรหม   ', '1', '1', '2');
INSERT INTO `district` VALUES ('12', '100112', 'วัดสามพระยา   ', '1', '1', '2');
INSERT INTO `district` VALUES ('13', '100201', 'ดุสิต   ', '2', '1', '2');
INSERT INTO `district` VALUES ('14', '100202', 'วชิรพยาบาล   ', '2', '1', '2');
INSERT INTO `district` VALUES ('15', '100203', 'สวนจิตรลดา   ', '2', '1', '2');
INSERT INTO `district` VALUES ('16', '100204', 'สี่แยกมหานาค   ', '2', '1', '2');
INSERT INTO `district` VALUES ('17', '100205', '*บางซื่อ   ', '2', '1', '2');
INSERT INTO `district` VALUES ('18', '100206', 'ถนนนครไชยศรี   ', '2', '1', '2');
INSERT INTO `district` VALUES ('19', '100299', '*สามเสนใน   ', '2', '1', '2');
INSERT INTO `district` VALUES ('20', '100301', 'กระทุ่มราย   ', '3', '1', '2');
INSERT INTO `district` VALUES ('21', '100302', 'หนองจอก   ', '3', '1', '2');
INSERT INTO `district` VALUES ('22', '100303', 'คลองสิบ   ', '3', '1', '2');
INSERT INTO `district` VALUES ('23', '100304', 'คลองสิบสอง   ', '3', '1', '2');
INSERT INTO `district` VALUES ('24', '100305', 'โคกแฝด   ', '3', '1', '2');
INSERT INTO `district` VALUES ('25', '100306', 'คู้ฝั่งเหนือ   ', '3', '1', '2');
INSERT INTO `district` VALUES ('26', '100307', 'ลำผักชี   ', '3', '1', '2');
INSERT INTO `district` VALUES ('27', '100308', 'ลำต้อยติ่ง   ', '3', '1', '2');
INSERT INTO `district` VALUES ('28', '100401', 'มหาพฤฒาราม   ', '4', '1', '2');
INSERT INTO `district` VALUES ('29', '100402', 'สีลม   ', '4', '1', '2');
INSERT INTO `district` VALUES ('30', '100403', 'สุริยวงศ์   ', '4', '1', '2');
INSERT INTO `district` VALUES ('31', '100404', 'บางรัก   ', '4', '1', '2');
INSERT INTO `district` VALUES ('32', '100405', 'สี่พระยา   ', '4', '1', '2');
INSERT INTO `district` VALUES ('33', '100501', '*ลาดยาว   ', '5', '1', '2');
INSERT INTO `district` VALUES ('34', '100502', 'อนุสาวรีย์   ', '5', '1', '2');
INSERT INTO `district` VALUES ('35', '100503', 'คลองถนน*   ', '5', '1', '2');
INSERT INTO `district` VALUES ('36', '100504', '*ตลาดบางเขน   ', '5', '1', '2');
INSERT INTO `district` VALUES ('37', '100505', '*สีกัน   ', '5', '1', '2');
INSERT INTO `district` VALUES ('38', '100506', 'สายไหม*   ', '5', '1', '2');
INSERT INTO `district` VALUES ('39', '100507', '*ทุ่งสองห้อง   ', '5', '1', '2');
INSERT INTO `district` VALUES ('40', '100508', 'ท่าแร้ง   ', '5', '1', '2');
INSERT INTO `district` VALUES ('41', '100509', 'ออเงิน*   ', '5', '1', '2');
INSERT INTO `district` VALUES ('42', '100599', '*บางเขน   ', '5', '1', '2');
INSERT INTO `district` VALUES ('43', '100601', 'คลองจั่น   ', '6', '1', '2');
INSERT INTO `district` VALUES ('44', '100602', 'วังทองหลาง*   ', '6', '1', '2');
INSERT INTO `district` VALUES ('45', '100603', '*ลาดพร้าว   ', '6', '1', '2');
INSERT INTO `district` VALUES ('46', '100604', '*คลองกุ่ม   ', '6', '1', '2');
INSERT INTO `district` VALUES ('47', '100605', '*สะพานสูง   ', '6', '1', '2');
INSERT INTO `district` VALUES ('48', '100606', '*คันนายาว   ', '6', '1', '2');
INSERT INTO `district` VALUES ('49', '100607', '*จรเข้บัว   ', '6', '1', '2');
INSERT INTO `district` VALUES ('50', '100608', 'หัวหมาก   ', '6', '1', '2');
INSERT INTO `district` VALUES ('51', '100701', 'รองเมือง   ', '7', '1', '2');
INSERT INTO `district` VALUES ('52', '100702', 'วังใหม่   ', '7', '1', '2');
INSERT INTO `district` VALUES ('53', '100703', 'ปทุมวัน   ', '7', '1', '2');
INSERT INTO `district` VALUES ('54', '100704', 'ลุมพินี   ', '7', '1', '2');
INSERT INTO `district` VALUES ('55', '100801', 'ป้อมปราบ   ', '8', '1', '2');
INSERT INTO `district` VALUES ('56', '100802', 'วัดเทพศิรินทร์   ', '8', '1', '2');
INSERT INTO `district` VALUES ('57', '100803', 'คลองมหานาค   ', '8', '1', '2');
INSERT INTO `district` VALUES ('58', '100804', 'บ้านบาตร   ', '8', '1', '2');
INSERT INTO `district` VALUES ('59', '100805', 'วัดโสมนัส   ', '8', '1', '2');
INSERT INTO `district` VALUES ('60', '100899', '*นางเลิ้ง   ', '8', '1', '2');
INSERT INTO `district` VALUES ('61', '100901', '*คลองเตย   ', '9', '1', '2');
INSERT INTO `district` VALUES ('62', '100902', '*คลองตัน   ', '9', '1', '2');
INSERT INTO `district` VALUES ('63', '100903', '*พระโขนง   ', '9', '1', '2');
INSERT INTO `district` VALUES ('64', '100904', 'บางนา*   ', '9', '1', '2');
INSERT INTO `district` VALUES ('65', '100905', 'บางจาก   ', '9', '1', '2');
INSERT INTO `district` VALUES ('66', '100906', '*สวนหลวง   ', '9', '1', '2');
INSERT INTO `district` VALUES ('67', '100907', '*หนองบอน   ', '9', '1', '2');
INSERT INTO `district` VALUES ('68', '100908', '*ประเวศ   ', '9', '1', '2');
INSERT INTO `district` VALUES ('69', '100909', '*ดอกไม้   ', '9', '1', '2');
INSERT INTO `district` VALUES ('70', '100997', '*พระโขนง   ', '9', '1', '2');
INSERT INTO `district` VALUES ('71', '100998', '*คลองตัน   ', '9', '1', '2');
INSERT INTO `district` VALUES ('72', '100999', '*คลองเตย   ', '9', '1', '2');
INSERT INTO `district` VALUES ('73', '101001', 'มีนบุรี   ', '10', '1', '2');
INSERT INTO `district` VALUES ('74', '101002', 'แสนแสบ   ', '10', '1', '2');
INSERT INTO `district` VALUES ('75', '101003', 'บางชัน*   ', '10', '1', '2');
INSERT INTO `district` VALUES ('76', '101004', 'ทรายกองดิน*   ', '10', '1', '2');
INSERT INTO `district` VALUES ('77', '101005', 'ทรายกองดินใต้*   ', '10', '1', '2');
INSERT INTO `district` VALUES ('78', '101006', 'สามวาตะวันออก*   ', '10', '1', '2');
INSERT INTO `district` VALUES ('79', '101007', 'สามวาตะวันตก*   ', '10', '1', '2');
INSERT INTO `district` VALUES ('80', '101101', 'ลาดกระบัง   ', '11', '1', '2');
INSERT INTO `district` VALUES ('81', '101102', 'คลองสองต้นนุ่น   ', '11', '1', '2');
INSERT INTO `district` VALUES ('82', '101103', 'คลองสามประเวศ   ', '11', '1', '2');
INSERT INTO `district` VALUES ('83', '101104', 'ลำปลาทิว   ', '11', '1', '2');
INSERT INTO `district` VALUES ('84', '101105', 'ทับยาว   ', '11', '1', '2');
INSERT INTO `district` VALUES ('85', '101106', 'ขุมทอง   ', '11', '1', '2');
INSERT INTO `district` VALUES ('86', '101201', '*ทุ่งวัดดอน   ', '12', '1', '2');
INSERT INTO `district` VALUES ('87', '101202', '*ยานนาวา   ', '12', '1', '2');
INSERT INTO `district` VALUES ('88', '101203', 'ช่องนนทรี   ', '12', '1', '2');
INSERT INTO `district` VALUES ('89', '101204', 'บางโพงพาง   ', '12', '1', '2');
INSERT INTO `district` VALUES ('90', '101205', '*วัดพระยาไกร   ', '12', '1', '2');
INSERT INTO `district` VALUES ('91', '101206', '*บางโคล่   ', '12', '1', '2');
INSERT INTO `district` VALUES ('92', '101207', '*บางคอแหลม   ', '12', '1', '2');
INSERT INTO `district` VALUES ('93', '101208', '*ทุ่งมหาเมฆ   ', '12', '1', '2');
INSERT INTO `district` VALUES ('94', '101298', '*บางโคล่   ', '12', '1', '2');
INSERT INTO `district` VALUES ('95', '101299', '*บางคอแหลม   ', '12', '1', '2');
INSERT INTO `district` VALUES ('96', '101301', 'จักรวรรดิ   ', '13', '1', '2');
INSERT INTO `district` VALUES ('97', '101302', 'สัมพันธวงศ์   ', '13', '1', '2');
INSERT INTO `district` VALUES ('98', '101303', 'ตลาดน้อย   ', '13', '1', '2');
INSERT INTO `district` VALUES ('99', '101401', 'สามเสนใน   ', '14', '1', '2');
INSERT INTO `district` VALUES ('100', '101402', '*ถนนเพชรบุรี   ', '14', '1', '2');
INSERT INTO `district` VALUES ('101', '101403', '*ทุ่งพญาไท   ', '14', '1', '2');
INSERT INTO `district` VALUES ('102', '101404', '*มักกะสัน   ', '14', '1', '2');
INSERT INTO `district` VALUES ('103', '101405', '*ถนนพญาไท   ', '14', '1', '2');
INSERT INTO `district` VALUES ('104', '101499', '*ทุ่งพญาไท   ', '14', '1', '2');
INSERT INTO `district` VALUES ('105', '101501', 'วัดกัลยาณ์   ', '15', '1', '2');
INSERT INTO `district` VALUES ('106', '101502', 'หิรัญรูจี   ', '15', '1', '2');
INSERT INTO `district` VALUES ('107', '101503', 'บางยี่เรือ   ', '15', '1', '2');
INSERT INTO `district` VALUES ('108', '101504', 'บุคคโล   ', '15', '1', '2');
INSERT INTO `district` VALUES ('109', '101505', 'ตลาดพลู   ', '15', '1', '2');
INSERT INTO `district` VALUES ('110', '101506', 'ดาวคะนอง   ', '15', '1', '2');
INSERT INTO `district` VALUES ('111', '101507', 'สำเหร่   ', '15', '1', '2');
INSERT INTO `district` VALUES ('112', '101599', '*คลองสาน   ', '15', '1', '2');
INSERT INTO `district` VALUES ('113', '101601', 'วัดอรุณ   ', '16', '1', '2');
INSERT INTO `district` VALUES ('114', '101602', 'วัดท่าพระ   ', '16', '1', '2');
INSERT INTO `district` VALUES ('115', '101701', 'ห้วยขวาง   ', '17', '1', '2');
INSERT INTO `district` VALUES ('116', '101702', 'บางกะปิ   ', '17', '1', '2');
INSERT INTO `district` VALUES ('117', '101703', '*ดินแดง   ', '17', '1', '2');
INSERT INTO `district` VALUES ('118', '101704', 'สามเสนนอก   ', '17', '1', '2');
INSERT INTO `district` VALUES ('119', '101801', 'สมเด็จเจ้าพระยา   ', '18', '1', '2');
INSERT INTO `district` VALUES ('120', '101802', 'คลองสาน   ', '18', '1', '2');
INSERT INTO `district` VALUES ('121', '101803', 'บางลำภูล่าง   ', '18', '1', '2');
INSERT INTO `district` VALUES ('122', '101804', 'คลองต้นไทร   ', '18', '1', '2');
INSERT INTO `district` VALUES ('123', '101901', 'คลองชักพระ   ', '19', '1', '2');
INSERT INTO `district` VALUES ('124', '101902', 'ตลิ่งชัน   ', '19', '1', '2');
INSERT INTO `district` VALUES ('125', '101903', 'ฉิมพลี   ', '19', '1', '2');
INSERT INTO `district` VALUES ('126', '101904', 'บางพรม   ', '19', '1', '2');
INSERT INTO `district` VALUES ('127', '101905', 'บางระมาด   ', '19', '1', '2');
INSERT INTO `district` VALUES ('128', '101906', 'ทวีวัฒนา*   ', '19', '1', '2');
INSERT INTO `district` VALUES ('129', '101907', 'บางเชือกหนัง   ', '19', '1', '2');
INSERT INTO `district` VALUES ('130', '101908', 'ศาลาธรรมสพน์*   ', '19', '1', '2');
INSERT INTO `district` VALUES ('131', '102001', '*บางพลัด   ', '20', '1', '2');
INSERT INTO `district` VALUES ('132', '102002', '*บางบำหรุ   ', '20', '1', '2');
INSERT INTO `district` VALUES ('133', '102003', '*บางอ้อ   ', '20', '1', '2');
INSERT INTO `district` VALUES ('134', '102004', 'ศิริราช   ', '20', '1', '2');
INSERT INTO `district` VALUES ('135', '102005', 'บ้านช่างหล่อ   ', '20', '1', '2');
INSERT INTO `district` VALUES ('136', '102006', 'บางขุนนนท์   ', '20', '1', '2');
INSERT INTO `district` VALUES ('137', '102007', 'บางขุนศรี   ', '20', '1', '2');
INSERT INTO `district` VALUES ('138', '102008', '*บางยี่ขัน   ', '20', '1', '2');
INSERT INTO `district` VALUES ('139', '102009', 'อรุณอมรินทร์   ', '20', '1', '2');
INSERT INTO `district` VALUES ('140', '102097', '*บางยี่ขัน   ', '20', '1', '2');
INSERT INTO `district` VALUES ('141', '102098', '*บางบำหรุ   ', '20', '1', '2');
INSERT INTO `district` VALUES ('142', '102099', '*บางอ้อ   ', '20', '1', '2');
INSERT INTO `district` VALUES ('143', '102101', '*บางค้อ   ', '21', '1', '2');
INSERT INTO `district` VALUES ('144', '102102', '*จอมทอง   ', '21', '1', '2');
INSERT INTO `district` VALUES ('145', '102103', '*บางขุนเทียน   ', '21', '1', '2');
INSERT INTO `district` VALUES ('146', '102104', 'บางบอน*   ', '21', '1', '2');
INSERT INTO `district` VALUES ('147', '102105', 'ท่าข้าม   ', '21', '1', '2');
INSERT INTO `district` VALUES ('148', '102106', '*บางมด   ', '21', '1', '2');
INSERT INTO `district` VALUES ('149', '102107', 'แสมดำ   ', '21', '1', '2');
INSERT INTO `district` VALUES ('150', '102201', 'บางหว้า   ', '22', '1', '2');
INSERT INTO `district` VALUES ('151', '102202', 'บางด้วน   ', '22', '1', '2');
INSERT INTO `district` VALUES ('152', '102203', 'บางแค   ', '22', '1', '2');
INSERT INTO `district` VALUES ('153', '102204', 'บางแคเหนือ   ', '22', '1', '2');
INSERT INTO `district` VALUES ('154', '102205', 'บางไผ่   ', '22', '1', '2');
INSERT INTO `district` VALUES ('155', '102206', 'บางจาก   ', '22', '1', '2');
INSERT INTO `district` VALUES ('156', '102207', 'บางแวก   ', '22', '1', '2');
INSERT INTO `district` VALUES ('157', '102208', 'คลองขวาง   ', '22', '1', '2');
INSERT INTO `district` VALUES ('158', '102209', 'ปากคลองภาษีเจริญ   ', '22', '1', '2');
INSERT INTO `district` VALUES ('159', '102210', 'คูหาสวรรค์   ', '22', '1', '2');
INSERT INTO `district` VALUES ('160', '102301', 'หลักสอง*   ', '23', '1', '2');
INSERT INTO `district` VALUES ('161', '102302', 'หนองแขม   ', '23', '1', '2');
INSERT INTO `district` VALUES ('162', '102303', 'หนองค้างพลู   ', '23', '1', '2');
INSERT INTO `district` VALUES ('163', '102401', 'ราษฎร์บูรณะ   ', '24', '1', '2');
INSERT INTO `district` VALUES ('164', '102402', 'บางปะกอก   ', '24', '1', '2');
INSERT INTO `district` VALUES ('165', '102403', 'บางมด*   ', '24', '1', '2');
INSERT INTO `district` VALUES ('166', '102404', 'ทุ่งครุ*   ', '24', '1', '2');
INSERT INTO `district` VALUES ('167', '102501', 'บางพลัด   ', '25', '1', '2');
INSERT INTO `district` VALUES ('168', '102502', 'บางอ้อ   ', '25', '1', '2');
INSERT INTO `district` VALUES ('169', '102503', 'บางบำหรุ   ', '25', '1', '2');
INSERT INTO `district` VALUES ('170', '102504', 'บางยี่ขัน   ', '25', '1', '2');
INSERT INTO `district` VALUES ('171', '102601', 'ดินแดง   ', '26', '1', '2');
INSERT INTO `district` VALUES ('172', '102701', 'คลองกุ่ม   ', '27', '1', '2');
INSERT INTO `district` VALUES ('173', '102702', 'สะพานสูง   ', '27', '1', '2');
INSERT INTO `district` VALUES ('174', '102703', 'คันนายาว   ', '27', '1', '2');
INSERT INTO `district` VALUES ('175', '102801', 'ทุ่งวัดดอน   ', '28', '1', '2');
INSERT INTO `district` VALUES ('176', '102802', 'ยานนาวา   ', '28', '1', '2');
INSERT INTO `district` VALUES ('177', '102803', 'ทุ่งมหาเมฆ   ', '28', '1', '2');
INSERT INTO `district` VALUES ('178', '102901', 'บางซื่อ   ', '29', '1', '2');
INSERT INTO `district` VALUES ('179', '103001', 'ลาดยาว   ', '30', '1', '2');
INSERT INTO `district` VALUES ('180', '103002', 'เสนานิคม   ', '30', '1', '2');
INSERT INTO `district` VALUES ('181', '103003', 'จันทรเกษม   ', '30', '1', '2');
INSERT INTO `district` VALUES ('182', '103004', 'จอมพล   ', '30', '1', '2');
INSERT INTO `district` VALUES ('183', '103005', 'จตุจักร   ', '30', '1', '2');
INSERT INTO `district` VALUES ('184', '103101', 'บางคอแหลม   ', '31', '1', '2');
INSERT INTO `district` VALUES ('185', '103102', 'วัดพระยาไกร   ', '31', '1', '2');
INSERT INTO `district` VALUES ('186', '103103', 'บางโคล่   ', '31', '1', '2');
INSERT INTO `district` VALUES ('187', '103201', 'ประเวศ   ', '32', '1', '2');
INSERT INTO `district` VALUES ('188', '103202', 'หนองบอน   ', '32', '1', '2');
INSERT INTO `district` VALUES ('189', '103203', 'ดอกไม้   ', '32', '1', '2');
INSERT INTO `district` VALUES ('190', '103204', 'สวนหลวง   ', '32', '1', '2');
INSERT INTO `district` VALUES ('191', '103301', 'คลองเตย   ', '33', '1', '2');
INSERT INTO `district` VALUES ('192', '103302', 'คลองตัน   ', '33', '1', '2');
INSERT INTO `district` VALUES ('193', '103303', 'พระโขนง   ', '33', '1', '2');
INSERT INTO `district` VALUES ('194', '103304', 'คลองเตยเหนือ   ', '33', '1', '2');
INSERT INTO `district` VALUES ('195', '103305', 'คลองตันเหนือ   ', '33', '1', '2');
INSERT INTO `district` VALUES ('196', '103306', 'พระโขนงเหนือ   ', '33', '1', '2');
INSERT INTO `district` VALUES ('197', '103401', 'สวนหลวง   ', '34', '1', '2');
INSERT INTO `district` VALUES ('198', '103501', 'บางขุนเทียน   ', '35', '1', '2');
INSERT INTO `district` VALUES ('199', '103502', 'บางค้อ   ', '35', '1', '2');
INSERT INTO `district` VALUES ('200', '103503', 'บางมด   ', '35', '1', '2');
INSERT INTO `district` VALUES ('201', '103504', 'จอมทอง   ', '35', '1', '2');
INSERT INTO `district` VALUES ('202', '103601', 'ตลาดบางเขน*   ', '36', '1', '2');
INSERT INTO `district` VALUES ('203', '103602', 'สีกัน   ', '36', '1', '2');
INSERT INTO `district` VALUES ('204', '103603', 'ทุ่งสองห้อง*   ', '36', '1', '2');
INSERT INTO `district` VALUES ('205', '103701', 'ทุ่งพญาไท   ', '37', '1', '2');
INSERT INTO `district` VALUES ('206', '103702', 'ถนนพญาไท   ', '37', '1', '2');
INSERT INTO `district` VALUES ('207', '103703', 'ถนนเพชรบุรี   ', '37', '1', '2');
INSERT INTO `district` VALUES ('208', '103704', 'มักกะสัน   ', '37', '1', '2');
INSERT INTO `district` VALUES ('209', '103801', 'ลาดพร้าว   ', '38', '1', '2');
INSERT INTO `district` VALUES ('210', '103802', 'จรเข้บัว   ', '38', '1', '2');
INSERT INTO `district` VALUES ('211', '103901', 'คลองเตยเหนือ   ', '39', '1', '2');
INSERT INTO `district` VALUES ('212', '103902', 'คลองตันเหนือ   ', '39', '1', '2');
INSERT INTO `district` VALUES ('213', '103903', 'พระโขนงเหนือ   ', '39', '1', '2');
INSERT INTO `district` VALUES ('214', '104001', 'บางแค   ', '40', '1', '2');
INSERT INTO `district` VALUES ('215', '104002', 'บางแคเหนือ   ', '40', '1', '2');
INSERT INTO `district` VALUES ('216', '104003', 'บางไผ่   ', '40', '1', '2');
INSERT INTO `district` VALUES ('217', '104004', 'หลักสอง   ', '40', '1', '2');
INSERT INTO `district` VALUES ('218', '104101', 'ทุ่งสองห้อง   ', '41', '1', '2');
INSERT INTO `district` VALUES ('219', '104102', 'ตลาดบางเขน   ', '41', '1', '2');
INSERT INTO `district` VALUES ('220', '104201', 'สายไหม   ', '42', '1', '2');
INSERT INTO `district` VALUES ('221', '104202', 'ออเงิน   ', '42', '1', '2');
INSERT INTO `district` VALUES ('222', '104203', 'คลองถนน   ', '42', '1', '2');
INSERT INTO `district` VALUES ('223', '104301', 'คันนายาว   ', '43', '1', '2');
INSERT INTO `district` VALUES ('224', '104401', 'สะพานสูง   ', '44', '1', '2');
INSERT INTO `district` VALUES ('225', '104501', 'วังทองหลาง   ', '45', '1', '2');
INSERT INTO `district` VALUES ('226', '104601', 'สามวาตะวันตก   ', '46', '1', '2');
INSERT INTO `district` VALUES ('227', '104602', 'สามวาตะวันออก   ', '46', '1', '2');
INSERT INTO `district` VALUES ('228', '104603', 'บางชัน   ', '46', '1', '2');
INSERT INTO `district` VALUES ('229', '104604', 'ทรายกองดิน   ', '46', '1', '2');
INSERT INTO `district` VALUES ('230', '104605', 'ทรายกองดินใต้   ', '46', '1', '2');
INSERT INTO `district` VALUES ('231', '104701', 'บางนา   ', '47', '1', '2');
INSERT INTO `district` VALUES ('232', '104801', 'ทวีวัฒนา   ', '48', '1', '2');
INSERT INTO `district` VALUES ('233', '104802', 'ศาลาธรรมสพน์   ', '48', '1', '2');
INSERT INTO `district` VALUES ('234', '104901', 'บางมด   ', '49', '1', '2');
INSERT INTO `district` VALUES ('235', '104902', 'ทุ่งครุ   ', '49', '1', '2');
INSERT INTO `district` VALUES ('236', '105001', 'บางบอน   ', '50', '1', '2');
INSERT INTO `district` VALUES ('237', '110101', 'ปากน้ำ   ', '52', '2', '2');
INSERT INTO `district` VALUES ('238', '110102', 'สำโรงเหนือ   ', '52', '2', '2');
INSERT INTO `district` VALUES ('239', '110103', 'บางเมือง   ', '52', '2', '2');
INSERT INTO `district` VALUES ('240', '110104', 'ท้ายบ้าน   ', '52', '2', '2');
INSERT INTO `district` VALUES ('241', '110105', '*นาเกลือ   ', '52', '2', '2');
INSERT INTO `district` VALUES ('242', '110106', '*แหลมฟ้าผ่า   ', '52', '2', '2');
INSERT INTO `district` VALUES ('243', '110107', '*ในคลองบางปลากด   ', '52', '2', '2');
INSERT INTO `district` VALUES ('244', '110108', 'บางปูใหม่   ', '52', '2', '2');
INSERT INTO `district` VALUES ('245', '110109', '*ปากคลองบางปลากด   ', '52', '2', '2');
INSERT INTO `district` VALUES ('246', '110110', 'แพรกษา   ', '52', '2', '2');
INSERT INTO `district` VALUES ('247', '110111', 'บางโปรง   ', '52', '2', '2');
INSERT INTO `district` VALUES ('248', '110112', 'บางปู   ', '52', '2', '2');
INSERT INTO `district` VALUES ('249', '110113', 'บางด้วน   ', '52', '2', '2');
INSERT INTO `district` VALUES ('250', '110114', 'บางเมืองใหม่   ', '52', '2', '2');
INSERT INTO `district` VALUES ('251', '110115', 'เทพารักษ์   ', '52', '2', '2');
INSERT INTO `district` VALUES ('252', '110116', 'ท้ายบ้านใหม่   ', '52', '2', '2');
INSERT INTO `district` VALUES ('253', '110117', 'แพรกษาใหม่   ', '52', '2', '2');
INSERT INTO `district` VALUES ('254', '110194', '*บางปูเก่า   ', '52', '2', '2');
INSERT INTO `district` VALUES ('255', '110195', '*ในคลองบางปลากด   ', '52', '2', '2');
INSERT INTO `district` VALUES ('256', '110196', '*ปากคลองบางปลากด   ', '52', '2', '2');
INSERT INTO `district` VALUES ('257', '110197', '*แหลมฟ้าผ่า   ', '52', '2', '2');
INSERT INTO `district` VALUES ('258', '110198', '*บ้านคลองสวน   ', '52', '2', '2');
INSERT INTO `district` VALUES ('259', '110199', '*นาเกลือ   ', '52', '2', '2');
INSERT INTO `district` VALUES ('260', '110201', 'บางบ่อ   ', '53', '2', '2');
INSERT INTO `district` VALUES ('261', '110202', 'บ้านระกาศ   ', '53', '2', '2');
INSERT INTO `district` VALUES ('262', '110203', 'บางพลีน้อย   ', '53', '2', '2');
INSERT INTO `district` VALUES ('263', '110204', 'บางเพรียง   ', '53', '2', '2');
INSERT INTO `district` VALUES ('264', '110205', 'คลองด่าน   ', '53', '2', '2');
INSERT INTO `district` VALUES ('265', '110206', 'คลองสวน   ', '53', '2', '2');
INSERT INTO `district` VALUES ('266', '110207', 'เปร็ง   ', '53', '2', '2');
INSERT INTO `district` VALUES ('267', '110208', 'คลองนิยมยาตรา   ', '53', '2', '2');
INSERT INTO `district` VALUES ('268', '110209', 'คลองนิยม*   ', '53', '2', '2');
INSERT INTO `district` VALUES ('269', '110301', 'บางพลีใหญ่   ', '54', '2', '2');
INSERT INTO `district` VALUES ('270', '110302', 'บางแก้ว   ', '54', '2', '2');
INSERT INTO `district` VALUES ('271', '110303', 'บางปลา   ', '54', '2', '2');
INSERT INTO `district` VALUES ('272', '110304', 'บางโฉลง   ', '54', '2', '2');
INSERT INTO `district` VALUES ('273', '110305', '*บางเสาธง   ', '54', '2', '2');
INSERT INTO `district` VALUES ('274', '110306', '*ศรีษะจรเข้ใหญ่   ', '54', '2', '2');
INSERT INTO `district` VALUES ('275', '110307', '*ศรีษะจรเข้น้อย   ', '54', '2', '2');
INSERT INTO `district` VALUES ('276', '110308', 'ราชาเทวะ   ', '54', '2', '2');
INSERT INTO `district` VALUES ('277', '110309', 'หนองปรือ   ', '54', '2', '2');
INSERT INTO `district` VALUES ('278', '110401', 'ตลาด   ', '55', '2', '2');
INSERT INTO `district` VALUES ('279', '110402', 'บางพึ่ง   ', '55', '2', '2');
INSERT INTO `district` VALUES ('280', '110403', 'บางจาก   ', '55', '2', '2');
INSERT INTO `district` VALUES ('281', '110404', 'บางครุ   ', '55', '2', '2');
INSERT INTO `district` VALUES ('282', '110405', 'บางหญ้าแพรก   ', '55', '2', '2');
INSERT INTO `district` VALUES ('283', '110406', 'บางหัวเสือ   ', '55', '2', '2');
INSERT INTO `district` VALUES ('284', '110407', 'สำโรงใต้   ', '55', '2', '2');
INSERT INTO `district` VALUES ('285', '110408', 'บางยอ   ', '55', '2', '2');
INSERT INTO `district` VALUES ('286', '110409', 'บางกะเจ้า   ', '55', '2', '2');
INSERT INTO `district` VALUES ('287', '110410', 'บางน้ำผึ้ง   ', '55', '2', '2');
INSERT INTO `district` VALUES ('288', '110411', 'บางกระสอบ   ', '55', '2', '2');
INSERT INTO `district` VALUES ('289', '110412', 'บางกอบัว   ', '55', '2', '2');
INSERT INTO `district` VALUES ('290', '110413', 'ทรงคนอง   ', '55', '2', '2');
INSERT INTO `district` VALUES ('291', '110414', 'สำโรง   ', '55', '2', '2');
INSERT INTO `district` VALUES ('292', '110415', 'สำโรงกลาง   ', '55', '2', '2');
INSERT INTO `district` VALUES ('293', '110501', 'นาเกลือ   ', '56', '2', '2');
INSERT INTO `district` VALUES ('294', '110502', 'บ้านคลองสวน   ', '56', '2', '2');
INSERT INTO `district` VALUES ('295', '110503', 'แหลมฟ้าผ่า   ', '56', '2', '2');
INSERT INTO `district` VALUES ('296', '110504', 'ปากคลองบางปลากด   ', '56', '2', '2');
INSERT INTO `district` VALUES ('297', '110505', 'ในคลองบางปลากด   ', '56', '2', '2');
INSERT INTO `district` VALUES ('298', '110601', 'บางเสาธง   ', '57', '2', '2');
INSERT INTO `district` VALUES ('299', '110602', 'ศีรษะจรเข้น้อย   ', '57', '2', '2');
INSERT INTO `district` VALUES ('300', '110603', 'ศีรษะจรเข้ใหญ่   ', '57', '2', '2');
INSERT INTO `district` VALUES ('301', '120101', 'สวนใหญ่   ', '58', '3', '2');
INSERT INTO `district` VALUES ('302', '120102', 'ตลาดขวัญ   ', '58', '3', '2');
INSERT INTO `district` VALUES ('303', '120103', 'บางเขน   ', '58', '3', '2');
INSERT INTO `district` VALUES ('304', '120104', 'บางกระสอ   ', '58', '3', '2');
INSERT INTO `district` VALUES ('305', '120105', 'ท่าทราย   ', '58', '3', '2');
INSERT INTO `district` VALUES ('306', '120106', 'บางไผ่   ', '58', '3', '2');
INSERT INTO `district` VALUES ('307', '120107', 'บางศรีเมือง   ', '58', '3', '2');
INSERT INTO `district` VALUES ('308', '120108', 'บางกร่าง   ', '58', '3', '2');
INSERT INTO `district` VALUES ('309', '120109', 'ไทรม้า   ', '58', '3', '2');
INSERT INTO `district` VALUES ('310', '120110', 'บางรักน้อย   ', '58', '3', '2');
INSERT INTO `district` VALUES ('311', '120201', 'วัดชลอ   ', '59', '3', '2');
INSERT INTO `district` VALUES ('312', '120202', 'บางกรวย   ', '59', '3', '2');
INSERT INTO `district` VALUES ('313', '120203', 'บางสีทอง   ', '59', '3', '2');
INSERT INTO `district` VALUES ('314', '120204', 'บางขนุน   ', '59', '3', '2');
INSERT INTO `district` VALUES ('315', '120205', 'บางขุนกอง   ', '59', '3', '2');
INSERT INTO `district` VALUES ('316', '120206', 'บางคูเวียง   ', '59', '3', '2');
INSERT INTO `district` VALUES ('317', '120207', 'มหาสวัสดิ์   ', '59', '3', '2');
INSERT INTO `district` VALUES ('318', '120208', 'ปลายบาง   ', '59', '3', '2');
INSERT INTO `district` VALUES ('319', '120209', 'ศาลากลาง   ', '59', '3', '2');
INSERT INTO `district` VALUES ('320', '120301', 'บางม่วง   ', '60', '3', '2');
INSERT INTO `district` VALUES ('321', '120302', 'บางแม่นาง   ', '60', '3', '2');
INSERT INTO `district` VALUES ('322', '120303', 'บางเลน   ', '60', '3', '2');
INSERT INTO `district` VALUES ('323', '120304', 'เสาธงหิน   ', '60', '3', '2');
INSERT INTO `district` VALUES ('324', '120305', 'บางใหญ่   ', '60', '3', '2');
INSERT INTO `district` VALUES ('325', '120306', 'บ้านใหม่   ', '60', '3', '2');
INSERT INTO `district` VALUES ('326', '120401', 'โสนลอย   ', '61', '3', '2');
INSERT INTO `district` VALUES ('327', '120402', 'บางบัวทอง   ', '61', '3', '2');
INSERT INTO `district` VALUES ('328', '120403', 'บางรักใหญ่   ', '61', '3', '2');
INSERT INTO `district` VALUES ('329', '120404', 'บางคูรัด   ', '61', '3', '2');
INSERT INTO `district` VALUES ('330', '120405', 'ละหาร   ', '61', '3', '2');
INSERT INTO `district` VALUES ('331', '120406', 'ลำโพ   ', '61', '3', '2');
INSERT INTO `district` VALUES ('332', '120407', 'พิมลราช   ', '61', '3', '2');
INSERT INTO `district` VALUES ('333', '120408', 'บางรักพัฒนา   ', '61', '3', '2');
INSERT INTO `district` VALUES ('334', '120501', 'ไทรน้อย   ', '62', '3', '2');
INSERT INTO `district` VALUES ('335', '120502', 'ราษฎร์นิยม   ', '62', '3', '2');
INSERT INTO `district` VALUES ('336', '120503', 'หนองเพรางาย   ', '62', '3', '2');
INSERT INTO `district` VALUES ('337', '120504', 'ไทรใหญ่   ', '62', '3', '2');
INSERT INTO `district` VALUES ('338', '120505', 'ขุนศรี   ', '62', '3', '2');
INSERT INTO `district` VALUES ('339', '120506', 'คลองขวาง   ', '62', '3', '2');
INSERT INTO `district` VALUES ('340', '120507', 'ทวีวัฒนา   ', '62', '3', '2');
INSERT INTO `district` VALUES ('341', '120601', 'ปากเกร็ด   ', '63', '3', '2');
INSERT INTO `district` VALUES ('342', '120602', 'บางตลาด   ', '63', '3', '2');
INSERT INTO `district` VALUES ('343', '120603', 'บ้านใหม่   ', '63', '3', '2');
INSERT INTO `district` VALUES ('344', '120604', 'บางพูด   ', '63', '3', '2');
INSERT INTO `district` VALUES ('345', '120605', 'บางตะไนย์   ', '63', '3', '2');
INSERT INTO `district` VALUES ('346', '120606', 'คลองพระอุดม   ', '63', '3', '2');
INSERT INTO `district` VALUES ('347', '120607', 'ท่าอิฐ   ', '63', '3', '2');
INSERT INTO `district` VALUES ('348', '120608', 'เกาะเกร็ด   ', '63', '3', '2');
INSERT INTO `district` VALUES ('349', '120609', 'อ้อมเกร็ด   ', '63', '3', '2');
INSERT INTO `district` VALUES ('350', '120610', 'คลองข่อย   ', '63', '3', '2');
INSERT INTO `district` VALUES ('351', '120611', 'บางพลับ   ', '63', '3', '2');
INSERT INTO `district` VALUES ('352', '120612', 'คลองเกลือ   ', '63', '3', '2');
INSERT INTO `district` VALUES ('353', '130101', 'บางปรอก   ', '66', '4', '2');
INSERT INTO `district` VALUES ('354', '130102', 'บ้านใหม่   ', '66', '4', '2');
INSERT INTO `district` VALUES ('355', '130103', 'บ้านกลาง   ', '66', '4', '2');
INSERT INTO `district` VALUES ('356', '130104', 'บ้านฉาง   ', '66', '4', '2');
INSERT INTO `district` VALUES ('357', '130105', 'บ้านกระแชง   ', '66', '4', '2');
INSERT INTO `district` VALUES ('358', '130106', 'บางขะแยง   ', '66', '4', '2');
INSERT INTO `district` VALUES ('359', '130107', 'บางคูวัด   ', '66', '4', '2');
INSERT INTO `district` VALUES ('360', '130108', 'บางหลวง   ', '66', '4', '2');
INSERT INTO `district` VALUES ('361', '130109', 'บางเดื่อ   ', '66', '4', '2');
INSERT INTO `district` VALUES ('362', '130110', 'บางพูด   ', '66', '4', '2');
INSERT INTO `district` VALUES ('363', '130111', 'บางพูน   ', '66', '4', '2');
INSERT INTO `district` VALUES ('364', '130112', 'บางกะดี   ', '66', '4', '2');
INSERT INTO `district` VALUES ('365', '130113', 'สวนพริกไทย   ', '66', '4', '2');
INSERT INTO `district` VALUES ('366', '130114', 'หลักหก   ', '66', '4', '2');
INSERT INTO `district` VALUES ('367', '130201', 'คลองหนึ่ง   ', '67', '4', '2');
INSERT INTO `district` VALUES ('368', '130202', 'คลองสอง   ', '67', '4', '2');
INSERT INTO `district` VALUES ('369', '130203', 'คลองสาม   ', '67', '4', '2');
INSERT INTO `district` VALUES ('370', '130204', 'คลองสี่   ', '67', '4', '2');
INSERT INTO `district` VALUES ('371', '130205', 'คลองห้า   ', '67', '4', '2');
INSERT INTO `district` VALUES ('372', '130206', 'คลองหก   ', '67', '4', '2');
INSERT INTO `district` VALUES ('373', '130207', 'คลองเจ็ด   ', '67', '4', '2');
INSERT INTO `district` VALUES ('374', '130301', 'ประชาธิปัตย์   ', '68', '4', '2');
INSERT INTO `district` VALUES ('375', '130302', 'บึงยี่โถ   ', '68', '4', '2');
INSERT INTO `district` VALUES ('376', '130303', 'รังสิต   ', '68', '4', '2');
INSERT INTO `district` VALUES ('377', '130304', 'ลำผักกูด   ', '68', '4', '2');
INSERT INTO `district` VALUES ('378', '130305', 'บึงสนั่น   ', '68', '4', '2');
INSERT INTO `district` VALUES ('379', '130306', 'บึงน้ำรักษ์   ', '68', '4', '2');
INSERT INTO `district` VALUES ('380', '130401', 'บึงบา   ', '69', '4', '2');
INSERT INTO `district` VALUES ('381', '130402', 'บึงบอน   ', '69', '4', '2');
INSERT INTO `district` VALUES ('382', '130403', 'บึงกาสาม   ', '69', '4', '2');
INSERT INTO `district` VALUES ('383', '130404', 'บึงชำอ้อ   ', '69', '4', '2');
INSERT INTO `district` VALUES ('384', '130405', 'หนองสามวัง   ', '69', '4', '2');
INSERT INTO `district` VALUES ('385', '130406', 'ศาลาครุ   ', '69', '4', '2');
INSERT INTO `district` VALUES ('386', '130407', 'นพรัตน์   ', '69', '4', '2');
INSERT INTO `district` VALUES ('387', '130501', 'ระแหง   ', '70', '4', '2');
INSERT INTO `district` VALUES ('388', '130502', 'ลาดหลุมแก้ว   ', '70', '4', '2');
INSERT INTO `district` VALUES ('389', '130503', 'คูบางหลวง   ', '70', '4', '2');
INSERT INTO `district` VALUES ('390', '130504', 'คูขวาง   ', '70', '4', '2');
INSERT INTO `district` VALUES ('391', '130505', 'คลองพระอุดม   ', '70', '4', '2');
INSERT INTO `district` VALUES ('392', '130506', 'บ่อเงิน   ', '70', '4', '2');
INSERT INTO `district` VALUES ('393', '130507', 'หน้าไม้   ', '70', '4', '2');
INSERT INTO `district` VALUES ('394', '130601', 'คูคต   ', '71', '4', '2');
INSERT INTO `district` VALUES ('395', '130602', 'ลาดสวาย   ', '71', '4', '2');
INSERT INTO `district` VALUES ('396', '130603', 'บึงคำพร้อย   ', '71', '4', '2');
INSERT INTO `district` VALUES ('397', '130604', 'ลำลูกกา   ', '71', '4', '2');
INSERT INTO `district` VALUES ('398', '130605', 'บึงทองหลาง   ', '71', '4', '2');
INSERT INTO `district` VALUES ('399', '130606', 'ลำไทร   ', '71', '4', '2');
INSERT INTO `district` VALUES ('400', '130607', 'บึงคอไห   ', '71', '4', '2');
INSERT INTO `district` VALUES ('401', '130608', 'พืชอุดม   ', '71', '4', '2');
INSERT INTO `district` VALUES ('402', '130701', 'บางเตย   ', '72', '4', '2');
INSERT INTO `district` VALUES ('403', '130702', 'คลองควาย   ', '72', '4', '2');
INSERT INTO `district` VALUES ('404', '130703', 'สามโคก   ', '72', '4', '2');
INSERT INTO `district` VALUES ('405', '130704', 'กระแชง   ', '72', '4', '2');
INSERT INTO `district` VALUES ('406', '130705', 'บางโพธิ์เหนือ   ', '72', '4', '2');
INSERT INTO `district` VALUES ('407', '130706', 'เชียงรากใหญ่   ', '72', '4', '2');
INSERT INTO `district` VALUES ('408', '130707', 'บ้านปทุม   ', '72', '4', '2');
INSERT INTO `district` VALUES ('409', '130708', 'บ้านงิ้ว   ', '72', '4', '2');
INSERT INTO `district` VALUES ('410', '130709', 'เชียงรากน้อย   ', '72', '4', '2');
INSERT INTO `district` VALUES ('411', '130710', 'บางกระบือ   ', '72', '4', '2');
INSERT INTO `district` VALUES ('412', '130711', 'ท้ายเกาะ   ', '72', '4', '2');
INSERT INTO `district` VALUES ('413', '140101', 'ประตูชัย   ', '74', '5', '2');
INSERT INTO `district` VALUES ('414', '140102', 'กะมัง   ', '74', '5', '2');
INSERT INTO `district` VALUES ('415', '140103', 'หอรัตนไชย   ', '74', '5', '2');
INSERT INTO `district` VALUES ('416', '140104', 'หัวรอ   ', '74', '5', '2');
INSERT INTO `district` VALUES ('417', '140105', 'ท่าวาสุกรี   ', '74', '5', '2');
INSERT INTO `district` VALUES ('418', '140106', 'ไผ่ลิง   ', '74', '5', '2');
INSERT INTO `district` VALUES ('419', '140107', 'ปากกราน   ', '74', '5', '2');
INSERT INTO `district` VALUES ('420', '140108', 'ภูเขาทอง   ', '74', '5', '2');
INSERT INTO `district` VALUES ('421', '140109', 'สำเภาล่ม   ', '74', '5', '2');
INSERT INTO `district` VALUES ('422', '140110', 'สวนพริก   ', '74', '5', '2');
INSERT INTO `district` VALUES ('423', '140111', 'คลองตะเคียน   ', '74', '5', '2');
INSERT INTO `district` VALUES ('424', '140112', 'วัดตูม   ', '74', '5', '2');
INSERT INTO `district` VALUES ('425', '140113', 'หันตรา   ', '74', '5', '2');
INSERT INTO `district` VALUES ('426', '140114', 'ลุมพลี   ', '74', '5', '2');
INSERT INTO `district` VALUES ('427', '140115', 'บ้านใหม่   ', '74', '5', '2');
INSERT INTO `district` VALUES ('428', '140116', 'บ้านเกาะ   ', '74', '5', '2');
INSERT INTO `district` VALUES ('429', '140117', 'คลองสวนพลู   ', '74', '5', '2');
INSERT INTO `district` VALUES ('430', '140118', 'คลองสระบัว   ', '74', '5', '2');
INSERT INTO `district` VALUES ('431', '140119', 'เกาะเรียน   ', '74', '5', '2');
INSERT INTO `district` VALUES ('432', '140120', 'บ้านป้อม   ', '74', '5', '2');
INSERT INTO `district` VALUES ('433', '140121', 'บ้านรุน   ', '74', '5', '2');
INSERT INTO `district` VALUES ('434', '140199', '*จำปา   ', '74', '5', '2');
INSERT INTO `district` VALUES ('435', '140201', 'ท่าเรือ   ', '75', '5', '2');
INSERT INTO `district` VALUES ('436', '140202', 'จำปา   ', '75', '5', '2');
INSERT INTO `district` VALUES ('437', '140203', 'ท่าหลวง   ', '75', '5', '2');
INSERT INTO `district` VALUES ('438', '140204', 'บ้านร่อม   ', '75', '5', '2');
INSERT INTO `district` VALUES ('439', '140205', 'ศาลาลอย   ', '75', '5', '2');
INSERT INTO `district` VALUES ('440', '140206', 'วังแดง   ', '75', '5', '2');
INSERT INTO `district` VALUES ('441', '140207', 'โพธิ์เอน   ', '75', '5', '2');
INSERT INTO `district` VALUES ('442', '140208', 'ปากท่า   ', '75', '5', '2');
INSERT INTO `district` VALUES ('443', '140209', 'หนองขนาก   ', '75', '5', '2');
INSERT INTO `district` VALUES ('444', '140210', 'ท่าเจ้าสนุก   ', '75', '5', '2');
INSERT INTO `district` VALUES ('445', '140301', 'นครหลวง   ', '76', '5', '2');
INSERT INTO `district` VALUES ('446', '140302', 'ท่าช้าง   ', '76', '5', '2');
INSERT INTO `district` VALUES ('447', '140303', 'บ่อโพง   ', '76', '5', '2');
INSERT INTO `district` VALUES ('448', '140304', 'บ้านชุ้ง   ', '76', '5', '2');
INSERT INTO `district` VALUES ('449', '140305', 'ปากจั่น   ', '76', '5', '2');
INSERT INTO `district` VALUES ('450', '140306', 'บางระกำ   ', '76', '5', '2');
INSERT INTO `district` VALUES ('451', '140307', 'บางพระครู   ', '76', '5', '2');
INSERT INTO `district` VALUES ('452', '140308', 'แม่ลา   ', '76', '5', '2');
INSERT INTO `district` VALUES ('453', '140309', 'หนองปลิง   ', '76', '5', '2');
INSERT INTO `district` VALUES ('454', '140310', 'คลองสะแก   ', '76', '5', '2');
INSERT INTO `district` VALUES ('455', '140311', 'สามไถ   ', '76', '5', '2');
INSERT INTO `district` VALUES ('456', '140312', 'พระนอน   ', '76', '5', '2');
INSERT INTO `district` VALUES ('457', '140401', 'บางไทร   ', '77', '5', '2');
INSERT INTO `district` VALUES ('458', '140402', 'บางพลี   ', '77', '5', '2');
INSERT INTO `district` VALUES ('459', '140403', 'สนามชัย   ', '77', '5', '2');
INSERT INTO `district` VALUES ('460', '140404', 'บ้านแป้ง   ', '77', '5', '2');
INSERT INTO `district` VALUES ('461', '140405', 'หน้าไม้   ', '77', '5', '2');
INSERT INTO `district` VALUES ('462', '140406', 'บางยี่โท   ', '77', '5', '2');
INSERT INTO `district` VALUES ('463', '140407', 'แคออก   ', '77', '5', '2');
INSERT INTO `district` VALUES ('464', '140408', 'แคตก   ', '77', '5', '2');
INSERT INTO `district` VALUES ('465', '140409', 'ช่างเหล็ก   ', '77', '5', '2');
INSERT INTO `district` VALUES ('466', '140410', 'กระแชง   ', '77', '5', '2');
INSERT INTO `district` VALUES ('467', '140411', 'บ้านกลึง   ', '77', '5', '2');
INSERT INTO `district` VALUES ('468', '140412', 'ช้างน้อย   ', '77', '5', '2');
INSERT INTO `district` VALUES ('469', '140413', 'ห่อหมก   ', '77', '5', '2');
INSERT INTO `district` VALUES ('470', '140414', 'ไผ่พระ   ', '77', '5', '2');
INSERT INTO `district` VALUES ('471', '140415', 'กกแก้วบูรพา   ', '77', '5', '2');
INSERT INTO `district` VALUES ('472', '140416', 'ไม้ตรา   ', '77', '5', '2');
INSERT INTO `district` VALUES ('473', '140417', 'บ้านม้า   ', '77', '5', '2');
INSERT INTO `district` VALUES ('474', '140418', 'บ้านเกาะ   ', '77', '5', '2');
INSERT INTO `district` VALUES ('475', '140419', 'ราชคราม   ', '77', '5', '2');
INSERT INTO `district` VALUES ('476', '140420', 'ช้างใหญ่   ', '77', '5', '2');
INSERT INTO `district` VALUES ('477', '140421', 'โพแตง   ', '77', '5', '2');
INSERT INTO `district` VALUES ('478', '140422', 'เชียงรากน้อย   ', '77', '5', '2');
INSERT INTO `district` VALUES ('479', '140423', 'โคกช้าง   ', '77', '5', '2');
INSERT INTO `district` VALUES ('480', '140501', 'บางบาล   ', '78', '5', '2');
INSERT INTO `district` VALUES ('481', '140502', 'วัดยม   ', '78', '5', '2');
INSERT INTO `district` VALUES ('482', '140503', 'ไทรน้อย   ', '78', '5', '2');
INSERT INTO `district` VALUES ('483', '140504', 'สะพานไทย   ', '78', '5', '2');
INSERT INTO `district` VALUES ('484', '140505', 'มหาพราหมณ์   ', '78', '5', '2');
INSERT INTO `district` VALUES ('485', '140506', 'กบเจา   ', '78', '5', '2');
INSERT INTO `district` VALUES ('486', '140507', 'บ้านคลัง   ', '78', '5', '2');
INSERT INTO `district` VALUES ('487', '140508', 'พระขาว   ', '78', '5', '2');
INSERT INTO `district` VALUES ('488', '140509', 'น้ำเต้า   ', '78', '5', '2');
INSERT INTO `district` VALUES ('489', '140510', 'ทางช้าง   ', '78', '5', '2');
INSERT INTO `district` VALUES ('490', '140511', 'วัดตะกู   ', '78', '5', '2');
INSERT INTO `district` VALUES ('491', '140512', 'บางหลวง   ', '78', '5', '2');
INSERT INTO `district` VALUES ('492', '140513', 'บางหลวงโดด   ', '78', '5', '2');
INSERT INTO `district` VALUES ('493', '140514', 'บางหัก   ', '78', '5', '2');
INSERT INTO `district` VALUES ('494', '140515', 'บางชะนี   ', '78', '5', '2');
INSERT INTO `district` VALUES ('495', '140516', 'บ้านกุ่ม   ', '78', '5', '2');
INSERT INTO `district` VALUES ('496', '140601', 'บ้านเลน   ', '79', '5', '2');
INSERT INTO `district` VALUES ('497', '140602', 'เชียงรากน้อย   ', '79', '5', '2');
INSERT INTO `district` VALUES ('498', '140603', 'บ้านโพ   ', '79', '5', '2');
INSERT INTO `district` VALUES ('499', '140604', 'บ้านกรด   ', '79', '5', '2');
INSERT INTO `district` VALUES ('500', '140605', 'บางกระสั้น   ', '79', '5', '2');
INSERT INTO `district` VALUES ('501', '140606', 'คลองจิก   ', '79', '5', '2');
INSERT INTO `district` VALUES ('502', '140607', 'บ้านหว้า   ', '79', '5', '2');
INSERT INTO `district` VALUES ('503', '140608', 'วัดยม   ', '79', '5', '2');
INSERT INTO `district` VALUES ('504', '140609', 'บางประแดง   ', '79', '5', '2');
INSERT INTO `district` VALUES ('505', '140610', 'สามเรือน   ', '79', '5', '2');
INSERT INTO `district` VALUES ('506', '140611', 'เกาะเกิด   ', '79', '5', '2');
INSERT INTO `district` VALUES ('507', '140612', 'บ้านพลับ   ', '79', '5', '2');
INSERT INTO `district` VALUES ('508', '140613', 'บ้านแป้ง   ', '79', '5', '2');
INSERT INTO `district` VALUES ('509', '140614', 'คุ้งลาน   ', '79', '5', '2');
INSERT INTO `district` VALUES ('510', '140615', 'ตลิ่งชัน   ', '79', '5', '2');
INSERT INTO `district` VALUES ('511', '140616', 'บ้านสร้าง   ', '79', '5', '2');
INSERT INTO `district` VALUES ('512', '140617', 'ตลาดเกรียบ   ', '79', '5', '2');
INSERT INTO `district` VALUES ('513', '140618', 'ขนอนหลวง   ', '79', '5', '2');
INSERT INTO `district` VALUES ('514', '140701', 'บางปะหัน   ', '80', '5', '2');
INSERT INTO `district` VALUES ('515', '140702', 'ขยาย   ', '80', '5', '2');
INSERT INTO `district` VALUES ('516', '140703', 'บางเดื่อ   ', '80', '5', '2');
INSERT INTO `district` VALUES ('517', '140704', 'เสาธง   ', '80', '5', '2');
INSERT INTO `district` VALUES ('518', '140705', 'ทางกลาง   ', '80', '5', '2');
INSERT INTO `district` VALUES ('519', '140706', 'บางเพลิง   ', '80', '5', '2');
INSERT INTO `district` VALUES ('520', '140707', 'หันสัง   ', '80', '5', '2');
INSERT INTO `district` VALUES ('521', '140708', 'บางนางร้า   ', '80', '5', '2');
INSERT INTO `district` VALUES ('522', '140709', 'ตานิม   ', '80', '5', '2');
INSERT INTO `district` VALUES ('523', '140710', 'ทับน้ำ   ', '80', '5', '2');
INSERT INTO `district` VALUES ('524', '140711', 'บ้านม้า   ', '80', '5', '2');
INSERT INTO `district` VALUES ('525', '140712', 'ขวัญเมือง   ', '80', '5', '2');
INSERT INTO `district` VALUES ('526', '140713', 'บ้านลี่   ', '80', '5', '2');
INSERT INTO `district` VALUES ('527', '140714', 'โพธิ์สามต้น   ', '80', '5', '2');
INSERT INTO `district` VALUES ('528', '140715', 'พุทเลา   ', '80', '5', '2');
INSERT INTO `district` VALUES ('529', '140716', 'ตาลเอน   ', '80', '5', '2');
INSERT INTO `district` VALUES ('530', '140717', 'บ้านขล้อ   ', '80', '5', '2');
INSERT INTO `district` VALUES ('531', '140801', 'ผักไห่   ', '81', '5', '2');
INSERT INTO `district` VALUES ('532', '140802', 'อมฤต   ', '81', '5', '2');
INSERT INTO `district` VALUES ('533', '140803', 'บ้านแค   ', '81', '5', '2');
INSERT INTO `district` VALUES ('534', '140804', 'ลาดน้ำเค็ม   ', '81', '5', '2');
INSERT INTO `district` VALUES ('535', '140805', 'ตาลาน   ', '81', '5', '2');
INSERT INTO `district` VALUES ('536', '140806', 'ท่าดินแดง   ', '81', '5', '2');
INSERT INTO `district` VALUES ('537', '140807', 'ดอนลาน   ', '81', '5', '2');
INSERT INTO `district` VALUES ('538', '140808', 'นาคู   ', '81', '5', '2');
INSERT INTO `district` VALUES ('539', '140809', 'กุฎี   ', '81', '5', '2');
INSERT INTO `district` VALUES ('540', '140810', 'ลำตะเคียน   ', '81', '5', '2');
INSERT INTO `district` VALUES ('541', '140811', 'โคกช้าง   ', '81', '5', '2');
INSERT INTO `district` VALUES ('542', '140812', 'จักราช   ', '81', '5', '2');
INSERT INTO `district` VALUES ('543', '140813', 'หนองน้ำใหญ่   ', '81', '5', '2');
INSERT INTO `district` VALUES ('544', '140814', 'ลาดชิด   ', '81', '5', '2');
INSERT INTO `district` VALUES ('545', '140815', 'หน้าโคก   ', '81', '5', '2');
INSERT INTO `district` VALUES ('546', '140816', 'บ้านใหญ่   ', '81', '5', '2');
INSERT INTO `district` VALUES ('547', '140901', 'ภาชี   ', '82', '5', '2');
INSERT INTO `district` VALUES ('548', '140902', 'โคกม่วง   ', '82', '5', '2');
INSERT INTO `district` VALUES ('549', '140903', 'ระโสม   ', '82', '5', '2');
INSERT INTO `district` VALUES ('550', '140904', 'หนองน้ำใส   ', '82', '5', '2');
INSERT INTO `district` VALUES ('551', '140905', 'ดอนหญ้านาง   ', '82', '5', '2');
INSERT INTO `district` VALUES ('552', '140906', 'ไผ่ล้อม   ', '82', '5', '2');
INSERT INTO `district` VALUES ('553', '140907', 'กระจิว   ', '82', '5', '2');
INSERT INTO `district` VALUES ('554', '140908', 'พระแก้ว   ', '82', '5', '2');
INSERT INTO `district` VALUES ('555', '141001', 'ลาดบัวหลวง   ', '83', '5', '2');
INSERT INTO `district` VALUES ('556', '141002', 'หลักชัย   ', '83', '5', '2');
INSERT INTO `district` VALUES ('557', '141003', 'สามเมือง   ', '83', '5', '2');
INSERT INTO `district` VALUES ('558', '141004', 'พระยาบันลือ   ', '83', '5', '2');
INSERT INTO `district` VALUES ('559', '141005', 'สิงหนาท   ', '83', '5', '2');
INSERT INTO `district` VALUES ('560', '141006', 'คู้สลอด   ', '83', '5', '2');
INSERT INTO `district` VALUES ('561', '141007', 'คลองพระยาบันลือ   ', '83', '5', '2');
INSERT INTO `district` VALUES ('562', '141101', 'ลำตาเสา   ', '84', '5', '2');
INSERT INTO `district` VALUES ('563', '141102', 'บ่อตาโล่   ', '84', '5', '2');
INSERT INTO `district` VALUES ('564', '141103', 'วังน้อย   ', '84', '5', '2');
INSERT INTO `district` VALUES ('565', '141104', 'ลำไทร   ', '84', '5', '2');
INSERT INTO `district` VALUES ('566', '141105', 'สนับทึบ   ', '84', '5', '2');
INSERT INTO `district` VALUES ('567', '141106', 'พยอม   ', '84', '5', '2');
INSERT INTO `district` VALUES ('568', '141107', 'หันตะเภา   ', '84', '5', '2');
INSERT INTO `district` VALUES ('569', '141108', 'วังจุฬา   ', '84', '5', '2');
INSERT INTO `district` VALUES ('570', '141109', 'ข้าวงาม   ', '84', '5', '2');
INSERT INTO `district` VALUES ('571', '141110', 'ชะแมบ   ', '84', '5', '2');
INSERT INTO `district` VALUES ('572', '141201', 'เสนา   ', '85', '5', '2');
INSERT INTO `district` VALUES ('573', '141202', 'บ้านแพน   ', '85', '5', '2');
INSERT INTO `district` VALUES ('574', '141203', 'เจ้าเจ็ด   ', '85', '5', '2');
INSERT INTO `district` VALUES ('575', '141204', 'สามกอ   ', '85', '5', '2');
INSERT INTO `district` VALUES ('576', '141205', 'บางนมโค   ', '85', '5', '2');
INSERT INTO `district` VALUES ('577', '141206', 'หัวเวียง   ', '85', '5', '2');
INSERT INTO `district` VALUES ('578', '141207', 'มารวิชัย   ', '85', '5', '2');
INSERT INTO `district` VALUES ('579', '141208', 'บ้านโพธิ์   ', '85', '5', '2');
INSERT INTO `district` VALUES ('580', '141209', 'รางจรเข้   ', '85', '5', '2');
INSERT INTO `district` VALUES ('581', '141210', 'บ้านกระทุ่ม   ', '85', '5', '2');
INSERT INTO `district` VALUES ('582', '141211', 'บ้านแถว   ', '85', '5', '2');
INSERT INTO `district` VALUES ('583', '141212', 'ชายนา   ', '85', '5', '2');
INSERT INTO `district` VALUES ('584', '141213', 'สามตุ่ม   ', '85', '5', '2');
INSERT INTO `district` VALUES ('585', '141214', 'ลาดงา   ', '85', '5', '2');
INSERT INTO `district` VALUES ('586', '141215', 'ดอนทอง   ', '85', '5', '2');
INSERT INTO `district` VALUES ('587', '141216', 'บ้านหลวง   ', '85', '5', '2');
INSERT INTO `district` VALUES ('588', '141217', 'เจ้าเสด็จ   ', '85', '5', '2');
INSERT INTO `district` VALUES ('589', '141301', 'บางซ้าย   ', '86', '5', '2');
INSERT INTO `district` VALUES ('590', '141302', 'แก้วฟ้า   ', '86', '5', '2');
INSERT INTO `district` VALUES ('591', '141303', 'เต่าเล่า   ', '86', '5', '2');
INSERT INTO `district` VALUES ('592', '141304', 'ปลายกลัด   ', '86', '5', '2');
INSERT INTO `district` VALUES ('593', '141305', 'เทพมงคล   ', '86', '5', '2');
INSERT INTO `district` VALUES ('594', '141306', 'วังพัฒนา   ', '86', '5', '2');
INSERT INTO `district` VALUES ('595', '141401', 'คานหาม   ', '87', '5', '2');
INSERT INTO `district` VALUES ('596', '141402', 'บ้านช้าง   ', '87', '5', '2');
INSERT INTO `district` VALUES ('597', '141403', 'สามบัณฑิต   ', '87', '5', '2');
INSERT INTO `district` VALUES ('598', '141404', 'บ้านหีบ   ', '87', '5', '2');
INSERT INTO `district` VALUES ('599', '141405', 'หนองไม้ซุง   ', '87', '5', '2');
INSERT INTO `district` VALUES ('600', '141406', 'อุทัย   ', '87', '5', '2');
INSERT INTO `district` VALUES ('601', '141407', 'เสนา   ', '87', '5', '2');
INSERT INTO `district` VALUES ('602', '141408', 'หนองน้ำส้ม   ', '87', '5', '2');
INSERT INTO `district` VALUES ('603', '141409', 'โพสาวหาญ   ', '87', '5', '2');
INSERT INTO `district` VALUES ('604', '141410', 'ธนู   ', '87', '5', '2');
INSERT INTO `district` VALUES ('605', '141411', 'ข้าวเม่า   ', '87', '5', '2');
INSERT INTO `district` VALUES ('606', '141501', 'หัวไผ่   ', '88', '5', '2');
INSERT INTO `district` VALUES ('607', '141502', 'กะทุ่ม   ', '88', '5', '2');
INSERT INTO `district` VALUES ('608', '141503', 'มหาราช   ', '88', '5', '2');
INSERT INTO `district` VALUES ('609', '141504', 'น้ำเต้า   ', '88', '5', '2');
INSERT INTO `district` VALUES ('610', '141505', 'บางนา   ', '88', '5', '2');
INSERT INTO `district` VALUES ('611', '141506', 'โรงช้าง   ', '88', '5', '2');
INSERT INTO `district` VALUES ('612', '141507', 'เจ้าปลุก   ', '88', '5', '2');
INSERT INTO `district` VALUES ('613', '141508', 'พิตเพียน   ', '88', '5', '2');
INSERT INTO `district` VALUES ('614', '141509', 'บ้านนา   ', '88', '5', '2');
INSERT INTO `district` VALUES ('615', '141510', 'บ้านขวาง   ', '88', '5', '2');
INSERT INTO `district` VALUES ('616', '141511', 'ท่าตอ   ', '88', '5', '2');
INSERT INTO `district` VALUES ('617', '141512', 'บ้านใหม่   ', '88', '5', '2');
INSERT INTO `district` VALUES ('618', '141601', 'บ้านแพรก   ', '89', '5', '2');
INSERT INTO `district` VALUES ('619', '141602', 'บ้านใหม่   ', '89', '5', '2');
INSERT INTO `district` VALUES ('620', '141603', 'สำพะเนียง   ', '89', '5', '2');
INSERT INTO `district` VALUES ('621', '141604', 'คลองน้อย   ', '89', '5', '2');
INSERT INTO `district` VALUES ('622', '141605', 'สองห้อง   ', '89', '5', '2');
INSERT INTO `district` VALUES ('623', '150101', 'ตลาดหลวง   ', '90', '6', '2');
INSERT INTO `district` VALUES ('624', '150102', 'บางแก้ว   ', '90', '6', '2');
INSERT INTO `district` VALUES ('625', '150103', 'ศาลาแดง   ', '90', '6', '2');
INSERT INTO `district` VALUES ('626', '150104', 'ป่างิ้ว   ', '90', '6', '2');
INSERT INTO `district` VALUES ('627', '150105', 'บ้านแห   ', '90', '6', '2');
INSERT INTO `district` VALUES ('628', '150106', 'ตลาดกรวด   ', '90', '6', '2');
INSERT INTO `district` VALUES ('629', '150107', 'มหาดไทย   ', '90', '6', '2');
INSERT INTO `district` VALUES ('630', '150108', 'บ้านอิฐ   ', '90', '6', '2');
INSERT INTO `district` VALUES ('631', '150109', 'หัวไผ่   ', '90', '6', '2');
INSERT INTO `district` VALUES ('632', '150110', 'จำปาหล่อ   ', '90', '6', '2');
INSERT INTO `district` VALUES ('633', '150111', 'โพสะ   ', '90', '6', '2');
INSERT INTO `district` VALUES ('634', '150112', 'บ้านรี   ', '90', '6', '2');
INSERT INTO `district` VALUES ('635', '150113', 'คลองวัว   ', '90', '6', '2');
INSERT INTO `district` VALUES ('636', '150114', 'ย่านซื่อ   ', '90', '6', '2');
INSERT INTO `district` VALUES ('637', '150201', 'จรเข้ร้อง   ', '91', '6', '2');
INSERT INTO `district` VALUES ('638', '150202', 'ไชยภูมิ   ', '91', '6', '2');
INSERT INTO `district` VALUES ('639', '150203', 'ชัยฤทธิ์   ', '91', '6', '2');
INSERT INTO `district` VALUES ('640', '150204', 'เทวราช   ', '91', '6', '2');
INSERT INTO `district` VALUES ('641', '150205', 'ราชสถิตย์   ', '91', '6', '2');
INSERT INTO `district` VALUES ('642', '150206', 'ไชโย   ', '91', '6', '2');
INSERT INTO `district` VALUES ('643', '150207', 'หลักฟ้า   ', '91', '6', '2');
INSERT INTO `district` VALUES ('644', '150208', 'ชะไว   ', '91', '6', '2');
INSERT INTO `district` VALUES ('645', '150209', 'ตรีณรงค์   ', '91', '6', '2');
INSERT INTO `district` VALUES ('646', '150301', 'บางปลากด   ', '92', '6', '2');
INSERT INTO `district` VALUES ('647', '150302', 'ป่าโมก   ', '92', '6', '2');
INSERT INTO `district` VALUES ('648', '150303', 'สายทอง   ', '92', '6', '2');
INSERT INTO `district` VALUES ('649', '150304', 'โรงช้าง   ', '92', '6', '2');
INSERT INTO `district` VALUES ('650', '150305', 'บางเสด็จ   ', '92', '6', '2');
INSERT INTO `district` VALUES ('651', '150306', 'นรสิงห์   ', '92', '6', '2');
INSERT INTO `district` VALUES ('652', '150307', 'เอกราช   ', '92', '6', '2');
INSERT INTO `district` VALUES ('653', '150308', 'โผงเผง   ', '92', '6', '2');
INSERT INTO `district` VALUES ('654', '150401', 'อ่างแก้ว   ', '93', '6', '2');
INSERT INTO `district` VALUES ('655', '150402', 'อินทประมูล   ', '93', '6', '2');
INSERT INTO `district` VALUES ('656', '150403', 'บางพลับ   ', '93', '6', '2');
INSERT INTO `district` VALUES ('657', '150404', 'หนองแม่ไก่   ', '93', '6', '2');
INSERT INTO `district` VALUES ('658', '150405', 'รำมะสัก   ', '93', '6', '2');
INSERT INTO `district` VALUES ('659', '150406', 'บางระกำ   ', '93', '6', '2');
INSERT INTO `district` VALUES ('660', '150407', 'โพธิ์รังนก   ', '93', '6', '2');
INSERT INTO `district` VALUES ('661', '150408', 'องครักษ์   ', '93', '6', '2');
INSERT INTO `district` VALUES ('662', '150409', 'โคกพุทรา   ', '93', '6', '2');
INSERT INTO `district` VALUES ('663', '150410', 'ยางช้าย   ', '93', '6', '2');
INSERT INTO `district` VALUES ('664', '150411', 'บ่อแร่   ', '93', '6', '2');
INSERT INTO `district` VALUES ('665', '150412', 'ทางพระ   ', '93', '6', '2');
INSERT INTO `district` VALUES ('666', '150413', 'สามง่าม   ', '93', '6', '2');
INSERT INTO `district` VALUES ('667', '150414', 'บางเจ้าฉ่า   ', '93', '6', '2');
INSERT INTO `district` VALUES ('668', '150415', 'คำหยาด   ', '93', '6', '2');
INSERT INTO `district` VALUES ('669', '150501', 'แสวงหา   ', '94', '6', '2');
INSERT INTO `district` VALUES ('670', '150502', 'ศรีพราน   ', '94', '6', '2');
INSERT INTO `district` VALUES ('671', '150503', 'บ้านพราน   ', '94', '6', '2');
INSERT INTO `district` VALUES ('672', '150504', 'วังน้ำเย็น   ', '94', '6', '2');
INSERT INTO `district` VALUES ('673', '150505', 'สีบัวทอง   ', '94', '6', '2');
INSERT INTO `district` VALUES ('674', '150506', 'ห้วยไผ่   ', '94', '6', '2');
INSERT INTO `district` VALUES ('675', '150507', 'จำลอง   ', '94', '6', '2');
INSERT INTO `district` VALUES ('676', '150601', 'ไผ่จำศิล   ', '95', '6', '2');
INSERT INTO `district` VALUES ('677', '150602', 'ศาลเจ้าโรงทอง   ', '95', '6', '2');
INSERT INTO `district` VALUES ('678', '150603', 'ไผ่ดำพัฒนา   ', '95', '6', '2');
INSERT INTO `district` VALUES ('679', '150604', 'สาวร้องไห้   ', '95', '6', '2');
INSERT INTO `district` VALUES ('680', '150605', 'ท่าช้าง   ', '95', '6', '2');
INSERT INTO `district` VALUES ('681', '150606', 'ยี่ล้น   ', '95', '6', '2');
INSERT INTO `district` VALUES ('682', '150607', 'บางจัก   ', '95', '6', '2');
INSERT INTO `district` VALUES ('683', '150608', 'ห้วยคันแหลน   ', '95', '6', '2');
INSERT INTO `district` VALUES ('684', '150609', 'คลองขนาก   ', '95', '6', '2');
INSERT INTO `district` VALUES ('685', '150610', 'ไผ่วง   ', '95', '6', '2');
INSERT INTO `district` VALUES ('686', '150611', 'สี่ร้อย   ', '95', '6', '2');
INSERT INTO `district` VALUES ('687', '150612', 'ม่วงเตี้ย   ', '95', '6', '2');
INSERT INTO `district` VALUES ('688', '150613', 'หัวตะพาน   ', '95', '6', '2');
INSERT INTO `district` VALUES ('689', '150614', 'หลักแก้ว   ', '95', '6', '2');
INSERT INTO `district` VALUES ('690', '150615', 'ตลาดใหม่   ', '95', '6', '2');
INSERT INTO `district` VALUES ('691', '150701', 'สามโก้   ', '96', '6', '2');
INSERT INTO `district` VALUES ('692', '150702', 'ราษฎรพัฒนา   ', '96', '6', '2');
INSERT INTO `district` VALUES ('693', '150703', 'อบทม   ', '96', '6', '2');
INSERT INTO `district` VALUES ('694', '150704', 'โพธิ์ม่วงพันธ์   ', '96', '6', '2');
INSERT INTO `district` VALUES ('695', '150705', 'มงคลธรรมนิมิต   ', '96', '6', '2');
INSERT INTO `district` VALUES ('696', '160101', 'ทะเลชุบศร   ', '97', '7', '2');
INSERT INTO `district` VALUES ('697', '160102', 'ท่าหิน   ', '97', '7', '2');
INSERT INTO `district` VALUES ('698', '160103', 'กกโก   ', '97', '7', '2');
INSERT INTO `district` VALUES ('699', '160104', 'โก่งธนู   ', '97', '7', '2');
INSERT INTO `district` VALUES ('700', '160105', 'เขาพระงาม   ', '97', '7', '2');
INSERT INTO `district` VALUES ('701', '160106', 'เขาสามยอด   ', '97', '7', '2');
INSERT INTO `district` VALUES ('702', '160107', 'โคกกะเทียม   ', '97', '7', '2');
INSERT INTO `district` VALUES ('703', '160108', 'โคกลำพาน   ', '97', '7', '2');
INSERT INTO `district` VALUES ('704', '160109', 'โคกตูม   ', '97', '7', '2');
INSERT INTO `district` VALUES ('705', '160110', 'งิ้วราย   ', '97', '7', '2');
INSERT INTO `district` VALUES ('706', '160111', 'ดอนโพธิ์   ', '97', '7', '2');
INSERT INTO `district` VALUES ('707', '160112', 'ตะลุง   ', '97', '7', '2');
INSERT INTO `district` VALUES ('708', '160113', '*ทะเลชุบศร   ', '97', '7', '2');
INSERT INTO `district` VALUES ('709', '160114', 'ท่าแค   ', '97', '7', '2');
INSERT INTO `district` VALUES ('710', '160115', 'ท่าศาลา   ', '97', '7', '2');
INSERT INTO `district` VALUES ('711', '160116', 'นิคมสร้างตนเอง   ', '97', '7', '2');
INSERT INTO `district` VALUES ('712', '160117', 'บางขันหมาก   ', '97', '7', '2');
INSERT INTO `district` VALUES ('713', '160118', 'บ้านข่อย   ', '97', '7', '2');
INSERT INTO `district` VALUES ('714', '160119', 'ท้ายตลาด   ', '97', '7', '2');
INSERT INTO `district` VALUES ('715', '160120', 'ป่าตาล   ', '97', '7', '2');
INSERT INTO `district` VALUES ('716', '160121', 'พรหมมาสตร์   ', '97', '7', '2');
INSERT INTO `district` VALUES ('717', '160122', 'โพธิ์เก้าต้น   ', '97', '7', '2');
INSERT INTO `district` VALUES ('718', '160123', 'โพธิ์ตรุ   ', '97', '7', '2');
INSERT INTO `district` VALUES ('719', '160124', 'สี่คลอง   ', '97', '7', '2');
INSERT INTO `district` VALUES ('720', '160125', 'ถนนใหญ่   ', '97', '7', '2');
INSERT INTO `district` VALUES ('721', '160201', 'พัฒนานิคม   ', '98', '7', '2');
INSERT INTO `district` VALUES ('722', '160202', 'ช่องสาริกา   ', '98', '7', '2');
INSERT INTO `district` VALUES ('723', '160203', 'มะนาวหวาน   ', '98', '7', '2');
INSERT INTO `district` VALUES ('724', '160204', 'ดีลัง   ', '98', '7', '2');
INSERT INTO `district` VALUES ('725', '160205', 'โคกสลุง   ', '98', '7', '2');
INSERT INTO `district` VALUES ('726', '160206', 'ชอนน้อย   ', '98', '7', '2');
INSERT INTO `district` VALUES ('727', '160207', 'หนองบัว   ', '98', '7', '2');
INSERT INTO `district` VALUES ('728', '160208', 'ห้วยขุนราม   ', '98', '7', '2');
INSERT INTO `district` VALUES ('729', '160209', 'น้ำสุด   ', '98', '7', '2');
INSERT INTO `district` VALUES ('730', '160301', 'โคกสำโรง   ', '99', '7', '2');
INSERT INTO `district` VALUES ('731', '160302', 'เกาะแก้ว   ', '99', '7', '2');
INSERT INTO `district` VALUES ('732', '160303', 'ถลุงเหล็ก   ', '99', '7', '2');
INSERT INTO `district` VALUES ('733', '160304', 'หลุมข้าว   ', '99', '7', '2');
INSERT INTO `district` VALUES ('734', '160305', 'ห้วยโป่ง   ', '99', '7', '2');
INSERT INTO `district` VALUES ('735', '160306', 'คลองเกตุ   ', '99', '7', '2');
INSERT INTO `district` VALUES ('736', '160307', 'สะแกราบ   ', '99', '7', '2');
INSERT INTO `district` VALUES ('737', '160308', 'เพนียด   ', '99', '7', '2');
INSERT INTO `district` VALUES ('738', '160309', 'วังเพลิง   ', '99', '7', '2');
INSERT INTO `district` VALUES ('739', '160310', 'ดงมะรุม   ', '99', '7', '2');
INSERT INTO `district` VALUES ('740', '160311', '*ชอนสารเดช   ', '99', '7', '2');
INSERT INTO `district` VALUES ('741', '160312', '*หนองม่วง   ', '99', '7', '2');
INSERT INTO `district` VALUES ('742', '160313', '*บ่อทอง   ', '99', '7', '2');
INSERT INTO `district` VALUES ('743', '160314', '*ยางโทน   ', '99', '7', '2');
INSERT INTO `district` VALUES ('744', '160315', '*ชอนสมบูรณ์   ', '99', '7', '2');
INSERT INTO `district` VALUES ('745', '160316', '*โคกเจริญ   ', '99', '7', '2');
INSERT INTO `district` VALUES ('746', '160317', '*ยางราก   ', '99', '7', '2');
INSERT INTO `district` VALUES ('747', '160318', 'วังขอนขว้าง   ', '99', '7', '2');
INSERT INTO `district` VALUES ('748', '160319', '*ดงดินแดง   ', '99', '7', '2');
INSERT INTO `district` VALUES ('749', '160320', 'วังจั่น   ', '99', '7', '2');
INSERT INTO `district` VALUES ('750', '160321', '*หนองมะค่า   ', '99', '7', '2');
INSERT INTO `district` VALUES ('751', '160322', 'หนองแขม   ', '99', '7', '2');
INSERT INTO `district` VALUES ('752', '160323', '*วังทอง   ', '99', '7', '2');
INSERT INTO `district` VALUES ('753', '160389', '*ชอนสารเดช   ', '99', '7', '2');
INSERT INTO `district` VALUES ('754', '160390', '*ยางโทน   ', '99', '7', '2');
INSERT INTO `district` VALUES ('755', '160391', '*ชอนสมบูรณ์   ', '99', '7', '2');
INSERT INTO `district` VALUES ('756', '160392', '*ดงดินแดง   ', '99', '7', '2');
INSERT INTO `district` VALUES ('757', '160393', '*บ่อทอง   ', '99', '7', '2');
INSERT INTO `district` VALUES ('758', '160394', '*หนองม่วง   ', '99', '7', '2');
INSERT INTO `district` VALUES ('759', '160395', '*ยางราก   ', '99', '7', '2');
INSERT INTO `district` VALUES ('760', '160396', '*โคกเจริญ   ', '99', '7', '2');
INSERT INTO `district` VALUES ('761', '160397', '*ทุ่งท่าช้าง   ', '99', '7', '2');
INSERT INTO `district` VALUES ('762', '160398', '*มหาโพธิ์   ', '99', '7', '2');
INSERT INTO `district` VALUES ('763', '160399', '*สระโบสถ์   ', '99', '7', '2');
INSERT INTO `district` VALUES ('764', '160401', 'ลำนารายณ์   ', '100', '7', '2');
INSERT INTO `district` VALUES ('765', '160402', 'ชัยนารายณ์   ', '100', '7', '2');
INSERT INTO `district` VALUES ('766', '160403', 'ศิลาทิพย์   ', '100', '7', '2');
INSERT INTO `district` VALUES ('767', '160404', 'ห้วยหิน   ', '100', '7', '2');
INSERT INTO `district` VALUES ('768', '160405', 'ม่วงค่อม   ', '100', '7', '2');
INSERT INTO `district` VALUES ('769', '160406', 'บัวชุม   ', '100', '7', '2');
INSERT INTO `district` VALUES ('770', '160407', 'ท่าดินดำ   ', '100', '7', '2');
INSERT INTO `district` VALUES ('771', '160408', 'มะกอกหวาน   ', '100', '7', '2');
INSERT INTO `district` VALUES ('772', '160409', 'ซับตะเคียน   ', '100', '7', '2');
INSERT INTO `district` VALUES ('773', '160410', 'นาโสม   ', '100', '7', '2');
INSERT INTO `district` VALUES ('774', '160411', 'หนองยายโต๊ะ   ', '100', '7', '2');
INSERT INTO `district` VALUES ('775', '160412', 'เกาะรัง   ', '100', '7', '2');
INSERT INTO `district` VALUES ('776', '160413', '*หนองรี   ', '100', '7', '2');
INSERT INTO `district` VALUES ('777', '160414', 'ท่ามะนาว   ', '100', '7', '2');
INSERT INTO `district` VALUES ('778', '160415', '*กุดตาเพชร   ', '100', '7', '2');
INSERT INTO `district` VALUES ('779', '160416', '*ลำสนธิ   ', '100', '7', '2');
INSERT INTO `district` VALUES ('780', '160417', 'นิคมลำนารายณ์   ', '100', '7', '2');
INSERT INTO `district` VALUES ('781', '160418', 'ชัยบาดาล   ', '100', '7', '2');
INSERT INTO `district` VALUES ('782', '160419', 'บ้านใหม่สามัคคี   ', '100', '7', '2');
INSERT INTO `district` VALUES ('783', '160420', '*ซับสมบูรณ์   ', '100', '7', '2');
INSERT INTO `district` VALUES ('784', '160421', '*เขารวก   ', '100', '7', '2');
INSERT INTO `district` VALUES ('785', '160422', 'เขาแหลม   ', '100', '7', '2');
INSERT INTO `district` VALUES ('786', '160492', '*เขาฉกรรจ์   ', '100', '7', '2');
INSERT INTO `district` VALUES ('787', '160493', '*กุดตาเพชร   ', '100', '7', '2');
INSERT INTO `district` VALUES ('788', '160494', '*หนองรี   ', '100', '7', '2');
INSERT INTO `district` VALUES ('789', '160495', '*ลำสนธิ   ', '100', '7', '2');
INSERT INTO `district` VALUES ('790', '160496', '*หนองผักแว่น   ', '100', '7', '2');
INSERT INTO `district` VALUES ('791', '160497', '*ซับจำปา   ', '100', '7', '2');
INSERT INTO `district` VALUES ('792', '160498', '*แก่งผักกูด   ', '100', '7', '2');
INSERT INTO `district` VALUES ('793', '160499', '*ท่าหลวง   ', '100', '7', '2');
INSERT INTO `district` VALUES ('794', '160501', 'ท่าวุ้ง   ', '101', '7', '2');
INSERT INTO `district` VALUES ('795', '160502', 'บางคู้   ', '101', '7', '2');
INSERT INTO `district` VALUES ('796', '160503', 'โพตลาดแก้ว   ', '101', '7', '2');
INSERT INTO `district` VALUES ('797', '160504', 'บางลี่   ', '101', '7', '2');
INSERT INTO `district` VALUES ('798', '160505', 'บางงา   ', '101', '7', '2');
INSERT INTO `district` VALUES ('799', '160506', 'โคกสลุด   ', '101', '7', '2');
INSERT INTO `district` VALUES ('800', '160507', 'เขาสมอคอน   ', '101', '7', '2');
INSERT INTO `district` VALUES ('801', '160508', 'หัวสำโรง   ', '101', '7', '2');
INSERT INTO `district` VALUES ('802', '160509', 'ลาดสาลี่   ', '101', '7', '2');
INSERT INTO `district` VALUES ('803', '160510', 'บ้านเบิก   ', '101', '7', '2');
INSERT INTO `district` VALUES ('804', '160511', 'มุจลินท์   ', '101', '7', '2');
INSERT INTO `district` VALUES ('805', '160601', 'ไผ่ใหญ่   ', '102', '7', '2');
INSERT INTO `district` VALUES ('806', '160602', 'บ้านทราย   ', '102', '7', '2');
INSERT INTO `district` VALUES ('807', '160603', 'บ้านกล้วย   ', '102', '7', '2');
INSERT INTO `district` VALUES ('808', '160604', 'ดงพลับ   ', '102', '7', '2');
INSERT INTO `district` VALUES ('809', '160605', 'บ้านชี   ', '102', '7', '2');
INSERT INTO `district` VALUES ('810', '160606', 'พุคา   ', '102', '7', '2');
INSERT INTO `district` VALUES ('811', '160607', 'หินปัก   ', '102', '7', '2');
INSERT INTO `district` VALUES ('812', '160608', 'บางพึ่ง   ', '102', '7', '2');
INSERT INTO `district` VALUES ('813', '160609', 'หนองทรายขาว   ', '102', '7', '2');
INSERT INTO `district` VALUES ('814', '160610', 'บางกะพี้   ', '102', '7', '2');
INSERT INTO `district` VALUES ('815', '160611', 'หนองเต่า   ', '102', '7', '2');
INSERT INTO `district` VALUES ('816', '160612', 'โพนทอง   ', '102', '7', '2');
INSERT INTO `district` VALUES ('817', '160613', 'บางขาม   ', '102', '7', '2');
INSERT INTO `district` VALUES ('818', '160614', 'ดอนดึง   ', '102', '7', '2');
INSERT INTO `district` VALUES ('819', '160615', 'ชอนม่วง   ', '102', '7', '2');
INSERT INTO `district` VALUES ('820', '160616', 'หนองกระเบียน   ', '102', '7', '2');
INSERT INTO `district` VALUES ('821', '160617', 'สายห้วยแก้ว   ', '102', '7', '2');
INSERT INTO `district` VALUES ('822', '160618', 'มหาสอน   ', '102', '7', '2');
INSERT INTO `district` VALUES ('823', '160619', 'บ้านหมี่   ', '102', '7', '2');
INSERT INTO `district` VALUES ('824', '160620', 'เชียงงา   ', '102', '7', '2');
INSERT INTO `district` VALUES ('825', '160621', 'หนองเมือง   ', '102', '7', '2');
INSERT INTO `district` VALUES ('826', '160622', 'สนามแจง   ', '102', '7', '2');
INSERT INTO `district` VALUES ('827', '160701', 'ท่าหลวง   ', '103', '7', '2');
INSERT INTO `district` VALUES ('828', '160702', 'แก่งผักกูด   ', '103', '7', '2');
INSERT INTO `district` VALUES ('829', '160703', 'ซับจำปา   ', '103', '7', '2');
INSERT INTO `district` VALUES ('830', '160704', 'หนองผักแว่น   ', '103', '7', '2');
INSERT INTO `district` VALUES ('831', '160705', 'ทะเลวังวัด   ', '103', '7', '2');
INSERT INTO `district` VALUES ('832', '160706', 'หัวลำ   ', '103', '7', '2');
INSERT INTO `district` VALUES ('833', '160801', 'สระโบสถ์   ', '104', '7', '2');
INSERT INTO `district` VALUES ('834', '160802', 'มหาโพธิ   ', '104', '7', '2');
INSERT INTO `district` VALUES ('835', '160803', 'ทุ่งท่าช้าง   ', '104', '7', '2');
INSERT INTO `district` VALUES ('836', '160804', 'ห้วยใหญ่   ', '104', '7', '2');
INSERT INTO `district` VALUES ('837', '160805', 'นิยมชัย   ', '104', '7', '2');
INSERT INTO `district` VALUES ('838', '160901', 'โคกเจริญ   ', '105', '7', '2');
INSERT INTO `district` VALUES ('839', '160902', 'ยางราก   ', '105', '7', '2');
INSERT INTO `district` VALUES ('840', '160903', 'หนองมะค่า   ', '105', '7', '2');
INSERT INTO `district` VALUES ('841', '160904', 'วังทอง   ', '105', '7', '2');
INSERT INTO `district` VALUES ('842', '160905', 'โคกแสมสาร   ', '105', '7', '2');
INSERT INTO `district` VALUES ('843', '161001', 'ลำสนธิ   ', '106', '7', '2');
INSERT INTO `district` VALUES ('844', '161002', 'ซับสมบูรณ์   ', '106', '7', '2');
INSERT INTO `district` VALUES ('845', '161003', 'หนองรี   ', '106', '7', '2');
INSERT INTO `district` VALUES ('846', '161004', 'กุดตาเพชร   ', '106', '7', '2');
INSERT INTO `district` VALUES ('847', '161005', 'เขารวก   ', '106', '7', '2');
INSERT INTO `district` VALUES ('848', '161006', 'เขาน้อย   ', '106', '7', '2');
INSERT INTO `district` VALUES ('849', '161101', 'หนองม่วง   ', '107', '7', '2');
INSERT INTO `district` VALUES ('850', '161102', 'บ่อทอง   ', '107', '7', '2');
INSERT INTO `district` VALUES ('851', '161103', 'ดงดินแดง   ', '107', '7', '2');
INSERT INTO `district` VALUES ('852', '161104', 'ชอนสมบูรณ์   ', '107', '7', '2');
INSERT INTO `district` VALUES ('853', '161105', 'ยางโทน   ', '107', '7', '2');
INSERT INTO `district` VALUES ('854', '161106', 'ชอนสารเดช   ', '107', '7', '2');
INSERT INTO `district` VALUES ('855', '170101', 'บางพุทรา   ', '109', '8', '2');
INSERT INTO `district` VALUES ('856', '170102', 'บางมัญ   ', '109', '8', '2');
INSERT INTO `district` VALUES ('857', '170103', 'โพกรวม   ', '109', '8', '2');
INSERT INTO `district` VALUES ('858', '170104', 'ม่วงหมู่   ', '109', '8', '2');
INSERT INTO `district` VALUES ('859', '170105', 'หัวไผ่   ', '109', '8', '2');
INSERT INTO `district` VALUES ('860', '170106', 'ต้นโพธิ์   ', '109', '8', '2');
INSERT INTO `district` VALUES ('861', '170107', 'จักรสีห์   ', '109', '8', '2');
INSERT INTO `district` VALUES ('862', '170108', 'บางกระบือ   ', '109', '8', '2');
INSERT INTO `district` VALUES ('863', '170201', 'สิงห์   ', '110', '8', '2');
INSERT INTO `district` VALUES ('864', '170202', 'ไม้ดัด   ', '110', '8', '2');
INSERT INTO `district` VALUES ('865', '170203', 'เชิงกลัด   ', '110', '8', '2');
INSERT INTO `district` VALUES ('866', '170204', 'โพชนไก่   ', '110', '8', '2');
INSERT INTO `district` VALUES ('867', '170205', 'แม่ลา   ', '110', '8', '2');
INSERT INTO `district` VALUES ('868', '170206', 'บ้านจ่า   ', '110', '8', '2');
INSERT INTO `district` VALUES ('869', '170207', 'พักทัน   ', '110', '8', '2');
INSERT INTO `district` VALUES ('870', '170208', 'สระแจง   ', '110', '8', '2');
INSERT INTO `district` VALUES ('871', '170301', 'โพทะเล   ', '111', '8', '2');
INSERT INTO `district` VALUES ('872', '170302', 'บางระจัน   ', '111', '8', '2');
INSERT INTO `district` VALUES ('873', '170303', 'โพสังโฆ   ', '111', '8', '2');
INSERT INTO `district` VALUES ('874', '170304', 'ท่าข้าม   ', '111', '8', '2');
INSERT INTO `district` VALUES ('875', '170305', 'คอทราย   ', '111', '8', '2');
INSERT INTO `district` VALUES ('876', '170306', 'หนองกระทุ่ม   ', '111', '8', '2');
INSERT INTO `district` VALUES ('877', '170401', 'พระงาม   ', '112', '8', '2');
INSERT INTO `district` VALUES ('878', '170402', 'พรหมบุรี   ', '112', '8', '2');
INSERT INTO `district` VALUES ('879', '170403', 'บางน้ำเชี่ยว   ', '112', '8', '2');
INSERT INTO `district` VALUES ('880', '170404', 'บ้านหม้อ   ', '112', '8', '2');
INSERT INTO `district` VALUES ('881', '170405', 'บ้านแป้ง   ', '112', '8', '2');
INSERT INTO `district` VALUES ('882', '170406', 'หัวป่า   ', '112', '8', '2');
INSERT INTO `district` VALUES ('883', '170407', 'โรงช้าง   ', '112', '8', '2');
INSERT INTO `district` VALUES ('884', '170501', 'ถอนสมอ   ', '113', '8', '2');
INSERT INTO `district` VALUES ('885', '170502', 'โพประจักษ์   ', '113', '8', '2');
INSERT INTO `district` VALUES ('886', '170503', 'วิหารขาว   ', '113', '8', '2');
INSERT INTO `district` VALUES ('887', '170504', 'พิกุลทอง   ', '113', '8', '2');
INSERT INTO `district` VALUES ('888', '170601', 'อินทร์บุรี   ', '114', '8', '2');
INSERT INTO `district` VALUES ('889', '170602', 'ประศุก   ', '114', '8', '2');
INSERT INTO `district` VALUES ('890', '170603', 'ทับยา   ', '114', '8', '2');
INSERT INTO `district` VALUES ('891', '170604', 'งิ้วราย   ', '114', '8', '2');
INSERT INTO `district` VALUES ('892', '170605', 'ชีน้ำร้าย   ', '114', '8', '2');
INSERT INTO `district` VALUES ('893', '170606', 'ท่างาม   ', '114', '8', '2');
INSERT INTO `district` VALUES ('894', '170607', 'น้ำตาล   ', '114', '8', '2');
INSERT INTO `district` VALUES ('895', '170608', 'ทองเอน   ', '114', '8', '2');
INSERT INTO `district` VALUES ('896', '170609', 'ห้วยชัน   ', '114', '8', '2');
INSERT INTO `district` VALUES ('897', '170610', 'โพธิ์ชัย   ', '114', '8', '2');
INSERT INTO `district` VALUES ('898', '180101', 'ในเมือง   ', '115', '9', '2');
INSERT INTO `district` VALUES ('899', '180102', 'บ้านกล้วย   ', '115', '9', '2');
INSERT INTO `district` VALUES ('900', '180103', 'ท่าชัย   ', '115', '9', '2');
INSERT INTO `district` VALUES ('901', '180104', 'ชัยนาท   ', '115', '9', '2');
INSERT INTO `district` VALUES ('902', '180105', 'เขาท่าพระ   ', '115', '9', '2');
INSERT INTO `district` VALUES ('903', '180106', 'หาดท่าเสา   ', '115', '9', '2');
INSERT INTO `district` VALUES ('904', '180107', 'ธรรมามูล   ', '115', '9', '2');
INSERT INTO `district` VALUES ('905', '180108', 'เสือโฮก   ', '115', '9', '2');
INSERT INTO `district` VALUES ('906', '180109', 'นางลือ   ', '115', '9', '2');
INSERT INTO `district` VALUES ('907', '180201', 'คุ้งสำเภา   ', '116', '9', '2');
INSERT INTO `district` VALUES ('908', '180202', 'วัดโคก   ', '116', '9', '2');
INSERT INTO `district` VALUES ('909', '180203', 'ศิลาดาน   ', '116', '9', '2');
INSERT INTO `district` VALUES ('910', '180204', 'ท่าฉนวน   ', '116', '9', '2');
INSERT INTO `district` VALUES ('911', '180205', 'หางน้ำสาคร   ', '116', '9', '2');
INSERT INTO `district` VALUES ('912', '180206', 'ไร่พัฒนา   ', '116', '9', '2');
INSERT INTO `district` VALUES ('913', '180207', 'อู่ตะเภา   ', '116', '9', '2');
INSERT INTO `district` VALUES ('914', '180301', 'วัดสิงห์   ', '117', '9', '2');
INSERT INTO `district` VALUES ('915', '180302', 'มะขามเฒ่า   ', '117', '9', '2');
INSERT INTO `district` VALUES ('916', '180303', 'หนองน้อย   ', '117', '9', '2');
INSERT INTO `district` VALUES ('917', '180304', 'หนองบัว   ', '117', '9', '2');
INSERT INTO `district` VALUES ('918', '180305', 'หนองมะโมง*   ', '117', '9', '2');
INSERT INTO `district` VALUES ('919', '180306', 'หนองขุ่น   ', '117', '9', '2');
INSERT INTO `district` VALUES ('920', '180307', 'บ่อแร่   ', '117', '9', '2');
INSERT INTO `district` VALUES ('921', '180308', 'กุดจอก*   ', '117', '9', '2');
INSERT INTO `district` VALUES ('922', '180309', 'วังตะเคียน*   ', '117', '9', '2');
INSERT INTO `district` VALUES ('923', '180310', 'สะพานหิน*   ', '117', '9', '2');
INSERT INTO `district` VALUES ('924', '180311', 'วังหมัน   ', '117', '9', '2');
INSERT INTO `district` VALUES ('925', '180401', 'สรรพยา   ', '118', '9', '2');
INSERT INTO `district` VALUES ('926', '180402', 'ตลุก   ', '118', '9', '2');
INSERT INTO `district` VALUES ('927', '180403', 'เขาแก้ว   ', '118', '9', '2');
INSERT INTO `district` VALUES ('928', '180404', 'โพนางดำตก   ', '118', '9', '2');
INSERT INTO `district` VALUES ('929', '180405', 'โพนางดำออก   ', '118', '9', '2');
INSERT INTO `district` VALUES ('930', '180406', 'บางหลวง   ', '118', '9', '2');
INSERT INTO `district` VALUES ('931', '180407', 'หาดอาษา   ', '118', '9', '2');
INSERT INTO `district` VALUES ('932', '180501', 'แพรกศรีราชา   ', '119', '9', '2');
INSERT INTO `district` VALUES ('933', '180502', 'เที่ยงแท้   ', '119', '9', '2');
INSERT INTO `district` VALUES ('934', '180503', 'ห้วยกรด   ', '119', '9', '2');
INSERT INTO `district` VALUES ('935', '180504', 'โพงาม   ', '119', '9', '2');
INSERT INTO `district` VALUES ('936', '180505', 'บางขุด   ', '119', '9', '2');
INSERT INTO `district` VALUES ('937', '180506', 'ดงคอน   ', '119', '9', '2');
INSERT INTO `district` VALUES ('938', '180507', 'ดอนกำ   ', '119', '9', '2');
INSERT INTO `district` VALUES ('939', '180508', 'ห้วยกรดพัฒนา   ', '119', '9', '2');
INSERT INTO `district` VALUES ('940', '180601', 'หันคา   ', '120', '9', '2');
INSERT INTO `district` VALUES ('941', '180602', 'บ้านเชี่ยน   ', '120', '9', '2');
INSERT INTO `district` VALUES ('942', '180603', 'เนินขาม*   ', '120', '9', '2');
INSERT INTO `district` VALUES ('943', '180604', 'สุขเดือนห้า*   ', '120', '9', '2');
INSERT INTO `district` VALUES ('944', '180605', 'ไพรนกยูง   ', '120', '9', '2');
INSERT INTO `district` VALUES ('945', '180606', 'หนองแซง   ', '120', '9', '2');
INSERT INTO `district` VALUES ('946', '180607', 'ห้วยงู   ', '120', '9', '2');
INSERT INTO `district` VALUES ('947', '180608', 'วังไก่เถื่อน   ', '120', '9', '2');
INSERT INTO `district` VALUES ('948', '180609', 'เด่นใหญ่   ', '120', '9', '2');
INSERT INTO `district` VALUES ('949', '180610', 'กะบกเตี้ย*   ', '120', '9', '2');
INSERT INTO `district` VALUES ('950', '180611', 'สามง่ามท่าโบสถ์   ', '120', '9', '2');
INSERT INTO `district` VALUES ('951', '180701', 'หนองมะโมง   ', '121', '9', '2');
INSERT INTO `district` VALUES ('952', '180702', 'วังตะเคียน   ', '121', '9', '2');
INSERT INTO `district` VALUES ('953', '180703', 'สะพานหิน   ', '121', '9', '2');
INSERT INTO `district` VALUES ('954', '180704', 'กุดจอก   ', '121', '9', '2');
INSERT INTO `district` VALUES ('955', '180801', 'เนินขาม   ', '122', '9', '2');
INSERT INTO `district` VALUES ('956', '180802', 'กะบกเตี้ย   ', '122', '9', '2');
INSERT INTO `district` VALUES ('957', '180803', 'สุขเดือนห้า   ', '122', '9', '2');
INSERT INTO `district` VALUES ('958', '190101', 'ปากเพรียว   ', '123', '10', '2');
INSERT INTO `district` VALUES ('959', '190102', 'หน้าพระลาน*   ', '123', '10', '2');
INSERT INTO `district` VALUES ('960', '190103', 'พุแค*   ', '123', '10', '2');
INSERT INTO `district` VALUES ('961', '190104', 'ห้วยบง*   ', '123', '10', '2');
INSERT INTO `district` VALUES ('962', '190105', 'ดาวเรือง   ', '123', '10', '2');
INSERT INTO `district` VALUES ('963', '190106', 'นาโฉง   ', '123', '10', '2');
INSERT INTO `district` VALUES ('964', '190107', 'โคกสว่าง   ', '123', '10', '2');
INSERT INTO `district` VALUES ('965', '190108', 'หนองโน   ', '123', '10', '2');
INSERT INTO `district` VALUES ('966', '190109', 'หนองยาว   ', '123', '10', '2');
INSERT INTO `district` VALUES ('967', '190110', 'ปากข้าวสาร   ', '123', '10', '2');
INSERT INTO `district` VALUES ('968', '190111', 'หนองปลาไหล   ', '123', '10', '2');
INSERT INTO `district` VALUES ('969', '190112', 'กุดนกเปล้า   ', '123', '10', '2');
INSERT INTO `district` VALUES ('970', '190113', 'ตลิ่งชัน   ', '123', '10', '2');
INSERT INTO `district` VALUES ('971', '190114', 'ตะกุด   ', '123', '10', '2');
INSERT INTO `district` VALUES ('972', '190115', 'บ้านแก้ง*   ', '123', '10', '2');
INSERT INTO `district` VALUES ('973', '190116', 'ผึ้งรวง*   ', '123', '10', '2');
INSERT INTO `district` VALUES ('974', '190117', 'เขาดินพัฒนา*   ', '123', '10', '2');
INSERT INTO `district` VALUES ('975', '190201', 'แก่งคอย   ', '124', '10', '2');
INSERT INTO `district` VALUES ('976', '190202', 'ทับกวาง   ', '124', '10', '2');
INSERT INTO `district` VALUES ('977', '190203', 'ตาลเดี่ยว   ', '124', '10', '2');
INSERT INTO `district` VALUES ('978', '190204', 'ห้วยแห้ง   ', '124', '10', '2');
INSERT INTO `district` VALUES ('979', '190205', 'ท่าคล้อ   ', '124', '10', '2');
INSERT INTO `district` VALUES ('980', '190206', 'หินซ้อน   ', '124', '10', '2');
INSERT INTO `district` VALUES ('981', '190207', 'บ้านธาตุ   ', '124', '10', '2');
INSERT INTO `district` VALUES ('982', '190208', 'บ้านป่า   ', '124', '10', '2');
INSERT INTO `district` VALUES ('983', '190209', 'ท่าตูม   ', '124', '10', '2');
INSERT INTO `district` VALUES ('984', '190210', 'ชะอม   ', '124', '10', '2');
INSERT INTO `district` VALUES ('985', '190211', 'สองคอน   ', '124', '10', '2');
INSERT INTO `district` VALUES ('986', '190212', 'เตาปูน   ', '124', '10', '2');
INSERT INTO `district` VALUES ('987', '190213', 'ชำผักแพว   ', '124', '10', '2');
INSERT INTO `district` VALUES ('988', '190215', 'ท่ามะปราง   ', '124', '10', '2');
INSERT INTO `district` VALUES ('989', '190301', 'หนองแค   ', '125', '10', '2');
INSERT INTO `district` VALUES ('990', '190302', 'กุ่มหัก   ', '125', '10', '2');
INSERT INTO `district` VALUES ('991', '190303', 'คชสิทธิ์   ', '125', '10', '2');
INSERT INTO `district` VALUES ('992', '190304', 'โคกตูม   ', '125', '10', '2');
INSERT INTO `district` VALUES ('993', '190305', 'โคกแย้   ', '125', '10', '2');
INSERT INTO `district` VALUES ('994', '190306', 'บัวลอย   ', '125', '10', '2');
INSERT INTO `district` VALUES ('995', '190307', 'ไผ่ต่ำ   ', '125', '10', '2');
INSERT INTO `district` VALUES ('996', '190308', 'โพนทอง   ', '125', '10', '2');
INSERT INTO `district` VALUES ('997', '190309', 'ห้วยขมิ้น   ', '125', '10', '2');
INSERT INTO `district` VALUES ('998', '190310', 'ห้วยทราย   ', '125', '10', '2');
INSERT INTO `district` VALUES ('999', '190311', 'หนองไข่น้ำ   ', '125', '10', '2');
INSERT INTO `district` VALUES ('1000', '190312', 'หนองแขม   ', '125', '10', '2');
INSERT INTO `district` VALUES ('1001', '190313', 'หนองจิก   ', '125', '10', '2');
INSERT INTO `district` VALUES ('1002', '190314', 'หนองจรเข้   ', '125', '10', '2');
INSERT INTO `district` VALUES ('1003', '190315', 'หนองนาก   ', '125', '10', '2');
INSERT INTO `district` VALUES ('1004', '190316', 'หนองปลาหมอ   ', '125', '10', '2');
INSERT INTO `district` VALUES ('1005', '190317', 'หนองปลิง   ', '125', '10', '2');
INSERT INTO `district` VALUES ('1006', '190318', 'หนองโรง   ', '125', '10', '2');
INSERT INTO `district` VALUES ('1007', '190401', 'หนองหมู   ', '126', '10', '2');
INSERT INTO `district` VALUES ('1008', '190402', 'บ้านลำ   ', '126', '10', '2');
INSERT INTO `district` VALUES ('1009', '190403', 'คลองเรือ   ', '126', '10', '2');
INSERT INTO `district` VALUES ('1010', '190404', 'วิหารแดง   ', '126', '10', '2');
INSERT INTO `district` VALUES ('1011', '190405', 'หนองสรวง   ', '126', '10', '2');
INSERT INTO `district` VALUES ('1012', '190406', 'เจริญธรรม   ', '126', '10', '2');
INSERT INTO `district` VALUES ('1013', '190501', 'หนองแซง   ', '127', '10', '2');
INSERT INTO `district` VALUES ('1014', '190502', 'หนองควายโซ   ', '127', '10', '2');
INSERT INTO `district` VALUES ('1015', '190503', 'หนองหัวโพ   ', '127', '10', '2');
INSERT INTO `district` VALUES ('1016', '190504', 'หนองสีดา   ', '127', '10', '2');
INSERT INTO `district` VALUES ('1017', '190505', 'หนองกบ   ', '127', '10', '2');
INSERT INTO `district` VALUES ('1018', '190506', 'ไก่เส่า   ', '127', '10', '2');
INSERT INTO `district` VALUES ('1019', '190507', 'โคกสะอาด   ', '127', '10', '2');
INSERT INTO `district` VALUES ('1020', '190508', 'ม่วงหวาน   ', '127', '10', '2');
INSERT INTO `district` VALUES ('1021', '190509', 'เขาดิน   ', '127', '10', '2');
INSERT INTO `district` VALUES ('1022', '190601', 'บ้านหมอ   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1023', '190602', 'บางโขมด   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1024', '190603', 'สร่างโศก   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1025', '190604', 'ตลาดน้อย   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1026', '190605', 'หรเทพ   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1027', '190606', 'โคกใหญ่   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1028', '190607', 'ไผ่ขวาง   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1029', '190608', 'บ้านครัว   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1030', '190609', 'หนองบัว   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1031', '190696', '*ดงตะงาว   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1032', '190697', '*บ้านหลวง   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1033', '190698', '*ไผ่หลิ่ว   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1034', '190699', '*ดอนพุด   ', '128', '10', '2');
INSERT INTO `district` VALUES ('1035', '190701', 'ดอนพุด   ', '129', '10', '2');
INSERT INTO `district` VALUES ('1036', '190702', 'ไผ่หลิ่ว   ', '129', '10', '2');
INSERT INTO `district` VALUES ('1037', '190703', 'บ้านหลวง   ', '129', '10', '2');
INSERT INTO `district` VALUES ('1038', '190704', 'ดงตะงาว   ', '129', '10', '2');
INSERT INTO `district` VALUES ('1039', '190801', 'หนองโดน   ', '130', '10', '2');
INSERT INTO `district` VALUES ('1040', '190802', 'บ้านกลับ   ', '130', '10', '2');
INSERT INTO `district` VALUES ('1041', '190803', 'ดอนทอง   ', '130', '10', '2');
INSERT INTO `district` VALUES ('1042', '190804', 'บ้านโปร่ง   ', '130', '10', '2');
INSERT INTO `district` VALUES ('1043', '190901', 'พระพุทธบาท   ', '131', '10', '2');
INSERT INTO `district` VALUES ('1044', '190902', 'ขุนโขลน   ', '131', '10', '2');
INSERT INTO `district` VALUES ('1045', '190903', 'ธารเกษม   ', '131', '10', '2');
INSERT INTO `district` VALUES ('1046', '190904', 'นายาว   ', '131', '10', '2');
INSERT INTO `district` VALUES ('1047', '190905', 'พุคำจาน   ', '131', '10', '2');
INSERT INTO `district` VALUES ('1048', '190906', 'เขาวง   ', '131', '10', '2');
INSERT INTO `district` VALUES ('1049', '190907', 'ห้วยป่าหวาย   ', '131', '10', '2');
INSERT INTO `district` VALUES ('1050', '190908', 'พุกร่าง   ', '131', '10', '2');
INSERT INTO `district` VALUES ('1051', '190909', 'หนองแก   ', '131', '10', '2');
INSERT INTO `district` VALUES ('1052', '191001', 'เสาไห้   ', '132', '10', '2');
INSERT INTO `district` VALUES ('1053', '191002', 'บ้านยาง   ', '132', '10', '2');
INSERT INTO `district` VALUES ('1054', '191003', 'หัวปลวก   ', '132', '10', '2');
INSERT INTO `district` VALUES ('1055', '191004', 'งิ้วงาม   ', '132', '10', '2');
INSERT INTO `district` VALUES ('1056', '191005', 'ศาลารีไทย   ', '132', '10', '2');
INSERT INTO `district` VALUES ('1057', '191006', 'ต้นตาล   ', '132', '10', '2');
INSERT INTO `district` VALUES ('1058', '191007', 'ท่าช้าง   ', '132', '10', '2');
INSERT INTO `district` VALUES ('1059', '191008', 'พระยาทด   ', '132', '10', '2');
INSERT INTO `district` VALUES ('1060', '191009', 'ม่วงงาม   ', '132', '10', '2');
INSERT INTO `district` VALUES ('1061', '191010', 'เริงราง   ', '132', '10', '2');
INSERT INTO `district` VALUES ('1062', '191011', 'เมืองเก่า   ', '132', '10', '2');
INSERT INTO `district` VALUES ('1063', '191012', 'สวนดอกไม้   ', '132', '10', '2');
INSERT INTO `district` VALUES ('1064', '191101', 'มวกเหล็ก   ', '133', '10', '2');
INSERT INTO `district` VALUES ('1065', '191102', 'มิตรภาพ   ', '133', '10', '2');
INSERT INTO `district` VALUES ('1066', '191103', '*แสลงพัน   ', '133', '10', '2');
INSERT INTO `district` VALUES ('1067', '191104', 'หนองย่างเสือ   ', '133', '10', '2');
INSERT INTO `district` VALUES ('1068', '191105', 'ลำสมพุง   ', '133', '10', '2');
INSERT INTO `district` VALUES ('1069', '191106', '*คำพราน   ', '133', '10', '2');
INSERT INTO `district` VALUES ('1070', '191107', 'ลำพญากลาง   ', '133', '10', '2');
INSERT INTO `district` VALUES ('1071', '191108', '*วังม่วง   ', '133', '10', '2');
INSERT INTO `district` VALUES ('1072', '191109', 'ซับสนุ่น   ', '133', '10', '2');
INSERT INTO `district` VALUES ('1073', '191201', 'แสลงพัน   ', '134', '10', '2');
INSERT INTO `district` VALUES ('1074', '191202', 'คำพราน   ', '134', '10', '2');
INSERT INTO `district` VALUES ('1075', '191203', 'วังม่วง   ', '134', '10', '2');
INSERT INTO `district` VALUES ('1076', '191301', 'เขาดินพัฒนา   ', '135', '10', '2');
INSERT INTO `district` VALUES ('1077', '191302', 'บ้านแก้ง   ', '135', '10', '2');
INSERT INTO `district` VALUES ('1078', '191303', 'ผึ้งรวง   ', '135', '10', '2');
INSERT INTO `district` VALUES ('1079', '191304', 'พุแค   ', '135', '10', '2');
INSERT INTO `district` VALUES ('1080', '191305', 'ห้วยบง   ', '135', '10', '2');
INSERT INTO `district` VALUES ('1081', '191306', 'หน้าพระลาน   ', '135', '10', '2');
INSERT INTO `district` VALUES ('1082', '200101', 'บางปลาสร้อย   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1083', '200102', 'มะขามหย่ง   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1084', '200103', 'บ้านโขด   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1085', '200104', 'แสนสุข   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1086', '200105', 'บ้านสวน   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1087', '200106', 'หนองรี   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1088', '200107', 'นาป่า   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1089', '200108', 'หนองข้างคอก   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1090', '200109', 'ดอนหัวฬ่อ   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1091', '200110', 'หนองไม้แดง   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1092', '200111', 'บางทราย   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1093', '200112', 'คลองตำหรุ   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1094', '200113', 'เหมือง   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1095', '200114', 'บ้านปึก   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1096', '200115', 'ห้วยกะปิ   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1097', '200116', 'เสม็ด   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1098', '200117', 'อ่างศิลา   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1099', '200118', 'สำนักบก   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1100', '200199', 'เทศบาลเมืองชลบุรี*   ', '136', '11', '5');
INSERT INTO `district` VALUES ('1101', '200201', 'บ้านบึง   ', '137', '11', '5');
INSERT INTO `district` VALUES ('1102', '200202', 'คลองกิ่ว   ', '137', '11', '5');
INSERT INTO `district` VALUES ('1103', '200203', 'มาบไผ่   ', '137', '11', '5');
INSERT INTO `district` VALUES ('1104', '200204', 'หนองซ้ำซาก   ', '137', '11', '5');
INSERT INTO `district` VALUES ('1105', '200205', 'หนองบอนแดง   ', '137', '11', '5');
INSERT INTO `district` VALUES ('1106', '200206', 'หนองชาก   ', '137', '11', '5');
INSERT INTO `district` VALUES ('1107', '200207', 'หนองอิรุณ   ', '137', '11', '5');
INSERT INTO `district` VALUES ('1108', '200208', 'หนองไผ่แก้ว   ', '137', '11', '5');
INSERT INTO `district` VALUES ('1109', '200297', '*หนองเสือช้าง   ', '137', '11', '5');
INSERT INTO `district` VALUES ('1110', '200298', '*คลองพลู   ', '137', '11', '5');
INSERT INTO `district` VALUES ('1111', '200299', '*หนองใหญ่   ', '137', '11', '5');
INSERT INTO `district` VALUES ('1112', '200301', 'หนองใหญ่   ', '138', '11', '5');
INSERT INTO `district` VALUES ('1113', '200302', 'คลองพลู   ', '138', '11', '5');
INSERT INTO `district` VALUES ('1114', '200303', 'หนองเสือช้าง   ', '138', '11', '5');
INSERT INTO `district` VALUES ('1115', '200304', 'ห้างสูง   ', '138', '11', '5');
INSERT INTO `district` VALUES ('1116', '200305', 'เขาซก   ', '138', '11', '5');
INSERT INTO `district` VALUES ('1117', '200401', 'บางละมุง   ', '139', '11', '5');
INSERT INTO `district` VALUES ('1118', '200402', 'หนองปรือ   ', '139', '11', '5');
INSERT INTO `district` VALUES ('1119', '200403', 'หนองปลาไหล   ', '139', '11', '5');
INSERT INTO `district` VALUES ('1120', '200404', 'โป่ง   ', '139', '11', '5');
INSERT INTO `district` VALUES ('1121', '200405', 'เขาไม้แก้ว   ', '139', '11', '5');
INSERT INTO `district` VALUES ('1122', '200406', 'ห้วยใหญ่   ', '139', '11', '5');
INSERT INTO `district` VALUES ('1123', '200407', 'ตะเคียนเตี้ย   ', '139', '11', '5');
INSERT INTO `district` VALUES ('1124', '200408', 'นาเกลือ   ', '139', '11', '5');
INSERT INTO `district` VALUES ('1125', '200501', 'พานทอง   ', '140', '11', '5');
INSERT INTO `district` VALUES ('1126', '200502', 'หนองตำลึง   ', '140', '11', '5');
INSERT INTO `district` VALUES ('1127', '200503', 'มาบโป่ง   ', '140', '11', '5');
INSERT INTO `district` VALUES ('1128', '200504', 'หนองกะขะ   ', '140', '11', '5');
INSERT INTO `district` VALUES ('1129', '200505', 'หนองหงษ์   ', '140', '11', '5');
INSERT INTO `district` VALUES ('1130', '200506', 'โคกขี้หนอน   ', '140', '11', '5');
INSERT INTO `district` VALUES ('1131', '200507', 'บ้านเก่า   ', '140', '11', '5');
INSERT INTO `district` VALUES ('1132', '200508', 'หน้าประดู่   ', '140', '11', '5');
INSERT INTO `district` VALUES ('1133', '200509', 'บางนาง   ', '140', '11', '5');
INSERT INTO `district` VALUES ('1134', '200510', 'เกาะลอย   ', '140', '11', '5');
INSERT INTO `district` VALUES ('1135', '200511', 'บางหัก   ', '140', '11', '5');
INSERT INTO `district` VALUES ('1136', '200601', 'พนัสนิคม   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1137', '200602', 'หน้าพระธาตุ   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1138', '200603', 'วัดหลวง   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1139', '200604', 'บ้านเซิด   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1140', '200605', 'นาเริก   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1141', '200606', 'หมอนนาง   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1142', '200607', 'สระสี่เหลี่ยม   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1143', '200608', 'วัดโบสถ์   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1144', '200609', 'กุฎโง้ง   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1145', '200610', 'หัวถนน   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1146', '200611', 'ท่าข้าม   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1147', '200612', 'ท่าบุญมี**   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1148', '200613', 'หนองปรือ   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1149', '200614', 'หนองขยาด   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1150', '200615', 'ทุ่งขวาง   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1151', '200616', 'หนองเหียง   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1152', '200617', 'นาวังหิน   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1153', '200618', 'บ้านช้าง   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1154', '200619', 'เกาะจันทร์**   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1155', '200620', 'โคกเพลาะ   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1156', '200621', 'ไร่หลักทอง   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1157', '200622', 'นามะตูม   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1158', '200623', '*บ้านเซิด   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1159', '200696', '*พูนพัฒนาทรัพย์   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1160', '200697', '*บ่อกวางทอง   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1161', '200698', '*วัดสุวรรณ   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1162', '200699', '*บ่อทอง   ', '141', '11', '5');
INSERT INTO `district` VALUES ('1163', '200701', 'ศรีราชา   ', '142', '11', '5');
INSERT INTO `district` VALUES ('1164', '200702', 'สุรศักดิ์   ', '142', '11', '5');
INSERT INTO `district` VALUES ('1165', '200703', 'ทุ่งสุขลา   ', '142', '11', '5');
INSERT INTO `district` VALUES ('1166', '200704', 'บึง   ', '142', '11', '5');
INSERT INTO `district` VALUES ('1167', '200705', 'หนองขาม   ', '142', '11', '5');
INSERT INTO `district` VALUES ('1168', '200706', 'เขาคันทรง   ', '142', '11', '5');
INSERT INTO `district` VALUES ('1169', '200707', 'บางพระ   ', '142', '11', '5');
INSERT INTO `district` VALUES ('1170', '200708', 'บ่อวิน   ', '142', '11', '5');
INSERT INTO `district` VALUES ('1171', '200799', '*ท่าเทววงษ์   ', '142', '11', '5');
INSERT INTO `district` VALUES ('1172', '200801', 'ท่าเทววงษ์   ', '143', '11', '5');
INSERT INTO `district` VALUES ('1173', '200901', 'สัตหีบ   ', '144', '11', '5');
INSERT INTO `district` VALUES ('1174', '200902', 'นาจอมเทียน   ', '144', '11', '5');
INSERT INTO `district` VALUES ('1175', '200903', 'พลูตาหลวง   ', '144', '11', '5');
INSERT INTO `district` VALUES ('1176', '200904', 'บางเสร่   ', '144', '11', '5');
INSERT INTO `district` VALUES ('1177', '200905', 'แสมสาร   ', '144', '11', '5');
INSERT INTO `district` VALUES ('1178', '201001', 'บ่อทอง   ', '145', '11', '5');
INSERT INTO `district` VALUES ('1179', '201002', 'วัดสุวรรณ   ', '145', '11', '5');
INSERT INTO `district` VALUES ('1180', '201003', 'บ่อกวางทอง   ', '145', '11', '5');
INSERT INTO `district` VALUES ('1181', '201004', 'ธาตุทอง   ', '145', '11', '5');
INSERT INTO `district` VALUES ('1182', '201005', 'เกษตรสุวรรณ   ', '145', '11', '5');
INSERT INTO `district` VALUES ('1183', '201006', 'พลวงทอง   ', '145', '11', '5');
INSERT INTO `district` VALUES ('1184', '201101', 'เกาะจันทร์   ', '146', '11', '5');
INSERT INTO `district` VALUES ('1185', '201102', 'ท่าบุญมี   ', '146', '11', '5');
INSERT INTO `district` VALUES ('1186', '207201', 'หนองปรือ*   ', '148', '11', '5');
INSERT INTO `district` VALUES ('1187', '210101', 'ท่าประดู่   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1188', '210102', 'เชิงเนิน   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1189', '210103', 'ตะพง   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1190', '210104', 'ปากน้ำ   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1191', '210105', 'เพ   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1192', '210106', 'แกลง   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1193', '210107', 'บ้านแลง   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1194', '210108', 'นาตาขวัญ   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1195', '210109', 'เนินพระ   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1196', '210110', 'กะเฉด   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1197', '210111', 'ทับมา   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1198', '210112', 'น้ำคอก   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1199', '210113', 'ห้วยโป่ง   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1200', '210114', 'มาบตาพุด   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1201', '210115', 'สำนักทอง   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1202', '210198', '*สำนักท้อน   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1203', '210199', '*พลา   ', '151', '12', '5');
INSERT INTO `district` VALUES ('1204', '210201', 'สำนักท้อน   ', '152', '12', '5');
INSERT INTO `district` VALUES ('1205', '210202', 'พลา   ', '152', '12', '5');
INSERT INTO `district` VALUES ('1206', '210203', 'บ้านฉาง   ', '152', '12', '5');
INSERT INTO `district` VALUES ('1207', '210301', 'ทางเกวียน   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1208', '210302', 'วังหว้า   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1209', '210303', 'ชากโดน   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1210', '210304', 'เนินฆ้อ   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1211', '210305', 'กร่ำ   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1212', '210306', 'ชากพง   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1213', '210307', 'กระแสบน   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1214', '210308', 'บ้านนา   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1215', '210309', 'ทุ่งควายกิน   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1216', '210310', 'กองดิน   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1217', '210311', 'คลองปูน   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1218', '210312', 'พังราด   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1219', '210313', 'ปากน้ำกระแส   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1220', '210314', '*น้ำเป็น   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1221', '210315', '*ชำฆ้อ   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1222', '210316', '*ห้วยทับมอญ   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1223', '210317', 'ห้วยยาง   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1224', '210318', 'สองสลึง   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1225', '210319', '*เขาน้อย   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1226', '210398', '*ชุมแสง   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1227', '210399', '*วังจันทร์   ', '153', '12', '5');
INSERT INTO `district` VALUES ('1228', '210401', 'วังจันทร์   ', '154', '12', '5');
INSERT INTO `district` VALUES ('1229', '210402', 'ชุมแสง   ', '154', '12', '5');
INSERT INTO `district` VALUES ('1230', '210403', 'ป่ายุบใน   ', '154', '12', '5');
INSERT INTO `district` VALUES ('1231', '210404', 'พลงตาเอี่ยม   ', '154', '12', '5');
INSERT INTO `district` VALUES ('1232', '210501', 'บ้านค่าย   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1233', '210502', 'หนองละลอก   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1234', '210503', 'หนองตะพาน   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1235', '210504', 'ตาขัน   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1236', '210505', 'บางบุตร   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1237', '210506', 'หนองบัว   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1238', '210507', 'ชากบก   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1239', '210508', 'มาบข่า*   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1240', '210509', 'พนานิคม*   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1241', '210510', 'นิคมพัฒนา*   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1242', '210511', 'มะขามคู่*   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1243', '210594', '*หนองไร่   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1244', '210595', '*มาบยางพร   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1245', '210596', '*แม่น้ำคู้   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1246', '210597', '*ละหาร   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1247', '210598', '*ตาสิทธิ์   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1248', '210599', '*ปลวกแดง   ', '155', '12', '5');
INSERT INTO `district` VALUES ('1249', '210601', 'ปลวกแดง   ', '156', '12', '5');
INSERT INTO `district` VALUES ('1250', '210602', 'ตาสิทธิ์   ', '156', '12', '5');
INSERT INTO `district` VALUES ('1251', '210603', 'ละหาร   ', '156', '12', '5');
INSERT INTO `district` VALUES ('1252', '210604', 'แม่น้ำคู้   ', '156', '12', '5');
INSERT INTO `district` VALUES ('1253', '210605', 'มาบยางพร   ', '156', '12', '5');
INSERT INTO `district` VALUES ('1254', '210606', 'หนองไร่   ', '156', '12', '5');
INSERT INTO `district` VALUES ('1255', '210701', 'น้ำเป็น   ', '157', '12', '5');
INSERT INTO `district` VALUES ('1256', '210702', 'ห้วยทับมอญ   ', '157', '12', '5');
INSERT INTO `district` VALUES ('1257', '210703', 'ชำฆ้อ   ', '157', '12', '5');
INSERT INTO `district` VALUES ('1258', '210704', 'เขาน้อย   ', '157', '12', '5');
INSERT INTO `district` VALUES ('1259', '210801', 'นิคมพัฒนา   ', '158', '12', '5');
INSERT INTO `district` VALUES ('1260', '210802', 'มาบข่า   ', '158', '12', '5');
INSERT INTO `district` VALUES ('1261', '210803', 'พนานิคม   ', '158', '12', '5');
INSERT INTO `district` VALUES ('1262', '210804', 'มะขามคู่   ', '158', '12', '5');
INSERT INTO `district` VALUES ('1263', '220101', 'ตลาด   ', '160', '13', '5');
INSERT INTO `district` VALUES ('1264', '220102', 'วัดใหม่   ', '160', '13', '5');
INSERT INTO `district` VALUES ('1265', '220103', 'คลองนารายณ์   ', '160', '13', '5');
INSERT INTO `district` VALUES ('1266', '220104', 'เกาะขวาง   ', '160', '13', '5');
INSERT INTO `district` VALUES ('1267', '220105', 'คมบาง   ', '160', '13', '5');
INSERT INTO `district` VALUES ('1268', '220106', 'ท่าช้าง   ', '160', '13', '5');
INSERT INTO `district` VALUES ('1269', '220107', 'จันทนิมิต   ', '160', '13', '5');
INSERT INTO `district` VALUES ('1270', '220108', 'บางกะจะ   ', '160', '13', '5');
INSERT INTO `district` VALUES ('1271', '220109', 'แสลง   ', '160', '13', '5');
INSERT INTO `district` VALUES ('1272', '220110', 'หนองบัว   ', '160', '13', '5');
INSERT INTO `district` VALUES ('1273', '220111', 'พลับพลา   ', '160', '13', '5');
INSERT INTO `district` VALUES ('1274', '220201', 'ขลุง   ', '161', '13', '5');
INSERT INTO `district` VALUES ('1275', '220202', 'บ่อ   ', '161', '13', '5');
INSERT INTO `district` VALUES ('1276', '220203', 'เกวียนหัก   ', '161', '13', '5');
INSERT INTO `district` VALUES ('1277', '220204', 'ตะปอน   ', '161', '13', '5');
INSERT INTO `district` VALUES ('1278', '220205', 'บางชัน   ', '161', '13', '5');
INSERT INTO `district` VALUES ('1279', '220206', 'วันยาว   ', '161', '13', '5');
INSERT INTO `district` VALUES ('1280', '220207', 'ซึ้ง   ', '161', '13', '5');
INSERT INTO `district` VALUES ('1281', '220208', 'มาบไพ   ', '161', '13', '5');
INSERT INTO `district` VALUES ('1282', '220209', 'วังสรรพรส   ', '161', '13', '5');
INSERT INTO `district` VALUES ('1283', '220210', 'ตรอกนอง   ', '161', '13', '5');
INSERT INTO `district` VALUES ('1284', '220211', 'ตกพรม   ', '161', '13', '5');
INSERT INTO `district` VALUES ('1285', '220212', 'บ่อเวฬุ   ', '161', '13', '5');
INSERT INTO `district` VALUES ('1286', '220301', 'ท่าใหม่   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1287', '220302', 'ยายร้า   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1288', '220303', 'สีพยา   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1289', '220304', 'บ่อพุ   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1290', '220305', 'พลอยแหวน   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1291', '220306', 'เขาวัว   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1292', '220307', 'เขาบายศรี   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1293', '220308', 'สองพี่น้อง   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1294', '220309', 'ทุ่งเบญจา   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1295', '220310', '*วังโตนด   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1296', '220311', 'รำพัน   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1297', '220312', 'โขมง   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1298', '220313', 'ตะกาดเง้า   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1299', '220314', 'คลองขุด   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1300', '220315', '*กระแจะ   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1301', '220316', '*สนามไชย   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1302', '220317', '*ช้างข้าม   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1303', '220318', '*นายายอาม   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1304', '220319', '*แก่งหางแมว   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1305', '220320', '*สามพี่น้อง   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1306', '220321', '*เขาวงกต   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1307', '220322', '*พวา   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1308', '220323', '*ขุนซ่อง   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1309', '220324', 'เขาแก้ว   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1310', '220394', '*กระแจะ   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1311', '220395', '*สนามไช   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1312', '220396', '*ช้างข้าม   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1313', '220397', '*วังโตนด   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1314', '220398', '*นายายอาม   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1315', '220399', '*แก่งหางแมว   ', '162', '13', '5');
INSERT INTO `district` VALUES ('1316', '220401', 'ทับไทร   ', '163', '13', '5');
INSERT INTO `district` VALUES ('1317', '220402', 'โป่งน้ำร้อน   ', '163', '13', '5');
INSERT INTO `district` VALUES ('1318', '220403', '*ทรายขาว   ', '163', '13', '5');
INSERT INTO `district` VALUES ('1319', '220404', 'หนองตาคง   ', '163', '13', '5');
INSERT INTO `district` VALUES ('1320', '220405', '*ปะตง   ', '163', '13', '5');
INSERT INTO `district` VALUES ('1321', '220406', '*ทุ่งขนาน   ', '163', '13', '5');
INSERT INTO `district` VALUES ('1322', '220407', '*สะตอน   ', '163', '13', '5');
INSERT INTO `district` VALUES ('1323', '220408', '*ทับช้าง   ', '163', '13', '5');
INSERT INTO `district` VALUES ('1324', '220409', 'เทพนิมิต   ', '163', '13', '5');
INSERT INTO `district` VALUES ('1325', '220410', 'คลองใหญ่   ', '163', '13', '5');
INSERT INTO `district` VALUES ('1326', '220501', 'มะขาม   ', '164', '13', '5');
INSERT INTO `district` VALUES ('1327', '220502', 'ท่าหลวง   ', '164', '13', '5');
INSERT INTO `district` VALUES ('1328', '220503', 'ปัถวี   ', '164', '13', '5');
INSERT INTO `district` VALUES ('1329', '220504', 'วังแซ้ม   ', '164', '13', '5');
INSERT INTO `district` VALUES ('1330', '220505', '*พลวง   ', '164', '13', '5');
INSERT INTO `district` VALUES ('1331', '220506', 'ฉมัน   ', '164', '13', '5');
INSERT INTO `district` VALUES ('1332', '220507', '*ตะเคียนทอง   ', '164', '13', '5');
INSERT INTO `district` VALUES ('1333', '220508', 'อ่างคีรี   ', '164', '13', '5');
INSERT INTO `district` VALUES ('1334', '220509', '*คลองพลู   ', '164', '13', '5');
INSERT INTO `district` VALUES ('1335', '220510', '*ซากไทย   ', '164', '13', '5');
INSERT INTO `district` VALUES ('1336', '220601', 'ปากน้ำแหลมสิงห์   ', '165', '13', '5');
INSERT INTO `district` VALUES ('1337', '220602', 'เกาะเปริด   ', '165', '13', '5');
INSERT INTO `district` VALUES ('1338', '220603', 'หนองชิ่ม   ', '165', '13', '5');
INSERT INTO `district` VALUES ('1339', '220604', 'พลิ้ว   ', '165', '13', '5');
INSERT INTO `district` VALUES ('1340', '220605', 'คลองน้ำเค็ม   ', '165', '13', '5');
INSERT INTO `district` VALUES ('1341', '220606', 'บางสระเก้า   ', '165', '13', '5');
INSERT INTO `district` VALUES ('1342', '220607', 'บางกะไชย   ', '165', '13', '5');
INSERT INTO `district` VALUES ('1343', '220701', 'ปะตง   ', '166', '13', '5');
INSERT INTO `district` VALUES ('1344', '220702', 'ทุ่งขนาน   ', '166', '13', '5');
INSERT INTO `district` VALUES ('1345', '220703', 'ทับช้าง   ', '166', '13', '5');
INSERT INTO `district` VALUES ('1346', '220704', 'ทรายขาว   ', '166', '13', '5');
INSERT INTO `district` VALUES ('1347', '220705', 'สะตอน   ', '166', '13', '5');
INSERT INTO `district` VALUES ('1348', '220801', 'แก่งหางแมว   ', '167', '13', '5');
INSERT INTO `district` VALUES ('1349', '220802', 'ขุนซ่อง   ', '167', '13', '5');
INSERT INTO `district` VALUES ('1350', '220803', 'สามพี่น้อง   ', '167', '13', '5');
INSERT INTO `district` VALUES ('1351', '220804', 'พวา   ', '167', '13', '5');
INSERT INTO `district` VALUES ('1352', '220805', 'เขาวงกต   ', '167', '13', '5');
INSERT INTO `district` VALUES ('1353', '220901', 'นายายอาม   ', '168', '13', '5');
INSERT INTO `district` VALUES ('1354', '220902', 'วังโตนด   ', '168', '13', '5');
INSERT INTO `district` VALUES ('1355', '220903', 'กระแจะ   ', '168', '13', '5');
INSERT INTO `district` VALUES ('1356', '220904', 'สนามไชย   ', '168', '13', '5');
INSERT INTO `district` VALUES ('1357', '220905', 'ช้างข้าม   ', '168', '13', '5');
INSERT INTO `district` VALUES ('1358', '220906', 'วังใหม่   ', '168', '13', '5');
INSERT INTO `district` VALUES ('1359', '221001', 'ชากไทย   ', '169', '13', '5');
INSERT INTO `district` VALUES ('1360', '221002', 'พลวง   ', '169', '13', '5');
INSERT INTO `district` VALUES ('1361', '221003', 'ตะเคียนทอง   ', '169', '13', '5');
INSERT INTO `district` VALUES ('1362', '221004', 'คลองพลู   ', '169', '13', '5');
INSERT INTO `district` VALUES ('1363', '221005', 'จันทเขลม   ', '169', '13', '5');
INSERT INTO `district` VALUES ('1364', '230101', 'บางพระ   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1365', '230102', 'หนองเสม็ด   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1366', '230103', 'หนองโสน   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1367', '230104', 'หนองคันทรง   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1368', '230105', 'ห้วงน้ำขาว   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1369', '230106', 'อ่าวใหญ่   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1370', '230107', 'วังกระแจะ   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1371', '230108', 'ห้วยแร้ง   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1372', '230109', 'เนินทราย   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1373', '230110', 'ท่าพริก   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1374', '230111', 'ท่ากุ่ม   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1375', '230112', 'ตะกาง   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1376', '230113', 'ชำราก   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1377', '230114', 'แหลมกลัด   ', '171', '14', '5');
INSERT INTO `district` VALUES ('1378', '230201', 'คลองใหญ่   ', '172', '14', '5');
INSERT INTO `district` VALUES ('1379', '230202', 'ไม้รูด   ', '172', '14', '5');
INSERT INTO `district` VALUES ('1380', '230203', 'หาดเล็ก   ', '172', '14', '5');
INSERT INTO `district` VALUES ('1381', '230301', 'เขาสมิง   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1382', '230302', 'แสนตุ้ง   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1383', '230303', 'วังตะเคียน   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1384', '230304', 'ท่าโสม   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1385', '230305', 'สะตอ   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1386', '230306', 'ประณีต   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1387', '230307', 'เทพนิมิต   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1388', '230308', 'ทุ่งนนทรี   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1389', '230395', '*บ่อไร่   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1390', '230396', '*ด่านชุมพล   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1391', '230397', '*หนองบอน   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1392', '230398', '*ช้างทูน   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1393', '230399', '*บ่อพลอย   ', '173', '14', '5');
INSERT INTO `district` VALUES ('1394', '230401', 'บ่อพลอย   ', '174', '14', '5');
INSERT INTO `district` VALUES ('1395', '230402', 'ช้างทูน   ', '174', '14', '5');
INSERT INTO `district` VALUES ('1396', '230403', 'ด่านชุมพล   ', '174', '14', '5');
INSERT INTO `district` VALUES ('1397', '230404', 'หนองบอน   ', '174', '14', '5');
INSERT INTO `district` VALUES ('1398', '230405', 'นนทรีย์   ', '174', '14', '5');
INSERT INTO `district` VALUES ('1399', '230501', 'แหลมงอบ   ', '175', '14', '5');
INSERT INTO `district` VALUES ('1400', '230502', 'น้ำเชี่ยว   ', '175', '14', '5');
INSERT INTO `district` VALUES ('1401', '230503', 'บางปิด   ', '175', '14', '5');
INSERT INTO `district` VALUES ('1402', '230504', '*เกาะช้าง   ', '175', '14', '5');
INSERT INTO `district` VALUES ('1403', '230505', '*เกาะหมาก   ', '175', '14', '5');
INSERT INTO `district` VALUES ('1404', '230506', '*เกาะกูด   ', '175', '14', '5');
INSERT INTO `district` VALUES ('1405', '230507', 'คลองใหญ่   ', '175', '14', '5');
INSERT INTO `district` VALUES ('1406', '230508', '*เกาะช้างใต้   ', '175', '14', '5');
INSERT INTO `district` VALUES ('1407', '230601', 'เกาะหมาก   ', '176', '14', '5');
INSERT INTO `district` VALUES ('1408', '230602', 'เกาะกูด   ', '176', '14', '5');
INSERT INTO `district` VALUES ('1409', '230701', 'เกาะช้าง   ', '177', '14', '5');
INSERT INTO `district` VALUES ('1410', '230702', 'เกาะช้างใต้   ', '177', '14', '5');
INSERT INTO `district` VALUES ('1411', '240101', 'หน้าเมือง   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1412', '240102', 'ท่าไข่   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1413', '240103', 'บ้านใหม่   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1414', '240104', 'คลองนา   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1415', '240105', 'บางตีนเป็ด   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1416', '240106', 'บางไผ่   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1417', '240107', 'คลองจุกกระเฌอ   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1418', '240108', 'บางแก้ว   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1419', '240109', 'บางขวัญ   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1420', '240110', 'คลองนครเนื่องเขต   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1421', '240111', 'วังตะเคียน   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1422', '240112', 'โสธร   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1423', '240113', 'บางพระ   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1424', '240114', 'บางกะไห   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1425', '240115', 'หนามแดง   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1426', '240116', 'คลองเปรง   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1427', '240117', 'คลองอุดมชลจร   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1428', '240118', 'คลองหลวงแพ่ง   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1429', '240119', 'บางเตย   ', '178', '15', '5');
INSERT INTO `district` VALUES ('1430', '240201', 'บางคล้า   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1431', '240202', '*ก้อนแก้ว   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1432', '240203', '*คลองเขื่อน   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1433', '240204', 'บางสวน   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1434', '240205', '*บางเล่า   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1435', '240206', '*บางโรง   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1436', '240207', '*บางตลาด   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1437', '240208', 'บางกระเจ็ด   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1438', '240209', 'ปากน้ำ   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1439', '240210', 'ท่าทองหลาง   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1440', '240211', 'สาวชะโงก   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1441', '240212', 'เสม็ดเหนือ   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1442', '240213', 'เสม็ดใต้   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1443', '240214', 'หัวไทร   ', '179', '15', '5');
INSERT INTO `district` VALUES ('1444', '240301', 'บางน้ำเปรี้ยว   ', '180', '15', '5');
INSERT INTO `district` VALUES ('1445', '240302', 'บางขนาก   ', '180', '15', '5');
INSERT INTO `district` VALUES ('1446', '240303', 'สิงโตทอง   ', '180', '15', '5');
INSERT INTO `district` VALUES ('1447', '240304', 'หมอนทอง   ', '180', '15', '5');
INSERT INTO `district` VALUES ('1448', '240305', 'บึงน้ำรักษ์   ', '180', '15', '5');
INSERT INTO `district` VALUES ('1449', '240306', 'ดอนเกาะกา   ', '180', '15', '5');
INSERT INTO `district` VALUES ('1450', '240307', 'โยธะกา   ', '180', '15', '5');
INSERT INTO `district` VALUES ('1451', '240308', 'ดอนฉิมพลี   ', '180', '15', '5');
INSERT INTO `district` VALUES ('1452', '240309', 'ศาลาแดง   ', '180', '15', '5');
INSERT INTO `district` VALUES ('1453', '240310', 'โพรงอากาศ   ', '180', '15', '5');
INSERT INTO `district` VALUES ('1454', '240401', 'บางปะกง   ', '181', '15', '5');
INSERT INTO `district` VALUES ('1455', '240402', 'ท่าสะอ้าน   ', '181', '15', '5');
INSERT INTO `district` VALUES ('1456', '240403', 'บางวัว   ', '181', '15', '5');
INSERT INTO `district` VALUES ('1457', '240404', 'บางสมัคร   ', '181', '15', '5');
INSERT INTO `district` VALUES ('1458', '240405', 'บางผึ้ง   ', '181', '15', '5');
INSERT INTO `district` VALUES ('1459', '240406', 'บางเกลือ   ', '181', '15', '5');
INSERT INTO `district` VALUES ('1460', '240407', 'สองคลอง   ', '181', '15', '5');
INSERT INTO `district` VALUES ('1461', '240408', 'หนองจอก   ', '181', '15', '5');
INSERT INTO `district` VALUES ('1462', '240409', 'พิมพา   ', '181', '15', '5');
INSERT INTO `district` VALUES ('1463', '240410', 'ท่าข้าม   ', '181', '15', '5');
INSERT INTO `district` VALUES ('1464', '240411', 'หอมศีล   ', '181', '15', '5');
INSERT INTO `district` VALUES ('1465', '240412', 'เขาดิน   ', '181', '15', '5');
INSERT INTO `district` VALUES ('1466', '240501', 'บ้านโพธิ์   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1467', '240502', 'เกาะไร่   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1468', '240503', 'คลองขุด   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1469', '240504', 'คลองบ้านโพธิ์   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1470', '240505', 'คลองประเวศ   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1471', '240506', 'ดอนทราย   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1472', '240507', 'เทพราช   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1473', '240508', 'ท่าพลับ   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1474', '240509', 'หนองตีนนก   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1475', '240510', 'หนองบัว   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1476', '240511', 'บางซ่อน   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1477', '240512', 'บางกรูด   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1478', '240513', 'แหลมประดู่   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1479', '240514', 'ลาดขวาง   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1480', '240515', 'สนามจันทร์   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1481', '240516', 'แสนภูดาษ   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1482', '240517', 'สิบเอ็ดศอก   ', '182', '15', '5');
INSERT INTO `district` VALUES ('1483', '240601', 'เกาะขนุน   ', '183', '15', '5');
INSERT INTO `district` VALUES ('1484', '240602', 'บ้านซ่อง   ', '183', '15', '5');
INSERT INTO `district` VALUES ('1485', '240603', 'พนมสารคาม   ', '183', '15', '5');
INSERT INTO `district` VALUES ('1486', '240604', 'เมืองเก่า   ', '183', '15', '5');
INSERT INTO `district` VALUES ('1487', '240605', 'หนองยาว   ', '183', '15', '5');
INSERT INTO `district` VALUES ('1488', '240606', 'ท่าถ่าน   ', '183', '15', '5');
INSERT INTO `district` VALUES ('1489', '240607', 'หนองแหน   ', '183', '15', '5');
INSERT INTO `district` VALUES ('1490', '240608', 'เขาหินซ้อน   ', '183', '15', '5');
INSERT INTO `district` VALUES ('1491', '240701', 'บางคา   ', '184', '15', '5');
INSERT INTO `district` VALUES ('1492', '240702', 'เมืองใหม่   ', '184', '15', '5');
INSERT INTO `district` VALUES ('1493', '240703', 'ดงน้อย   ', '184', '15', '5');
INSERT INTO `district` VALUES ('1494', '240801', 'คู้ยายหมี   ', '185', '15', '5');
INSERT INTO `district` VALUES ('1495', '240802', 'ท่ากระดาน   ', '185', '15', '5');
INSERT INTO `district` VALUES ('1496', '240803', 'ทุ่งพระยา   ', '185', '15', '5');
INSERT INTO `district` VALUES ('1497', '240804', '*ท่าตะเกียบ   ', '185', '15', '5');
INSERT INTO `district` VALUES ('1498', '240805', 'ลาดกระทิง   ', '185', '15', '5');
INSERT INTO `district` VALUES ('1499', '240806', '*คลองตะเกรา   ', '185', '15', '5');
INSERT INTO `district` VALUES ('1500', '240901', 'แปลงยาว   ', '186', '15', '5');
INSERT INTO `district` VALUES ('1501', '240902', 'วังเย็น   ', '186', '15', '5');
INSERT INTO `district` VALUES ('1502', '240903', 'หัวสำโรง   ', '186', '15', '5');
INSERT INTO `district` VALUES ('1503', '240904', 'หนองไม้แก่น   ', '186', '15', '5');
INSERT INTO `district` VALUES ('1504', '241001', 'ท่าตะเกียบ   ', '187', '15', '5');
INSERT INTO `district` VALUES ('1505', '241002', 'คลองตะเกรา   ', '187', '15', '5');
INSERT INTO `district` VALUES ('1506', '241101', 'ก้อนแก้ว   ', '188', '15', '5');
INSERT INTO `district` VALUES ('1507', '241102', 'คลองเขื่อน   ', '188', '15', '5');
INSERT INTO `district` VALUES ('1508', '241103', 'บางเล่า   ', '188', '15', '5');
INSERT INTO `district` VALUES ('1509', '241104', 'บางโรง   ', '188', '15', '5');
INSERT INTO `district` VALUES ('1510', '241105', 'บางตลาด   ', '188', '15', '5');
INSERT INTO `district` VALUES ('1511', '250101', 'หน้าเมือง   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1512', '250102', 'รอบเมือง   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1513', '250103', 'วัดโบสถ์   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1514', '250104', 'บางเดชะ   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1515', '250105', 'ท่างาม   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1516', '250106', 'บางบริบูรณ์   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1517', '250107', 'ดงพระราม   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1518', '250108', 'บ้านพระ   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1519', '250109', 'โคกไม้ลาย   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1520', '250110', 'ไม้เค็ด   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1521', '250111', 'ดงขี้เหล็ก   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1522', '250112', 'เนินหอม   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1523', '250113', 'โนนห้อม   ', '189', '16', '5');
INSERT INTO `district` VALUES ('1524', '250201', 'กบินทร์   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1525', '250202', 'เมืองเก่า   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1526', '250203', 'วังดาล   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1527', '250204', 'นนทรี   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1528', '250205', 'ย่านรี   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1529', '250206', 'วังตะเคียน   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1530', '250207', 'หาดนางแก้ว   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1531', '250208', 'ลาดตะเคียน   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1532', '250209', 'บ้านนา   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1533', '250210', 'บ่อทอง   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1534', '250211', 'หนองกี่   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1535', '250212', 'นาแขม   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1536', '250213', 'เขาไม้แก้ว   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1537', '250214', 'วังท่าช้าง   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1538', '250296', '*สะพานหิน   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1539', '250297', '*นาดี   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1540', '250298', '*ลำพันตา   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1541', '250299', '*ทุ่งโพธิ์   ', '190', '16', '5');
INSERT INTO `district` VALUES ('1542', '250301', 'นาดี   ', '191', '16', '5');
INSERT INTO `district` VALUES ('1543', '250302', 'สำพันตา   ', '191', '16', '5');
INSERT INTO `district` VALUES ('1544', '250303', 'สะพานหิน   ', '191', '16', '5');
INSERT INTO `district` VALUES ('1545', '250304', 'ทุ่งโพธิ์   ', '191', '16', '5');
INSERT INTO `district` VALUES ('1546', '250305', 'แก่งดินสอ   ', '191', '16', '5');
INSERT INTO `district` VALUES ('1547', '250306', 'บุพราหมณ์   ', '191', '16', '5');
INSERT INTO `district` VALUES ('1548', '250401', '*สระแก้ว   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1549', '250402', '*บ้านแก้ง   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1550', '250403', '*ศาลาลำดวน   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1551', '250404', '*โคกปี่ฆ้อง   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1552', '250405', '*ท่าแยก   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1553', '250406', '*ท่าเกษม   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1554', '250407', '*เขาฉกรรจ์   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1555', '250408', '*สระขวัญ   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1556', '250409', '*หนองหว้า   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1557', '250410', '*พระเพลิง   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1558', '250411', '*หนองบอน   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1559', '250412', '*เขาสามสิบ   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1560', '250497', '*ตาหลังใน   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1561', '250498', '*วังสมบูรณ์   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1562', '250499', '*วังน้ำเย็น   ', '192', '16', '5');
INSERT INTO `district` VALUES ('1563', '250501', '*วังน้ำเย็น   ', '193', '16', '5');
INSERT INTO `district` VALUES ('1564', '250502', '*วังสมบูรณ์   ', '193', '16', '5');
INSERT INTO `district` VALUES ('1565', '250503', '*ตาหลังใน   ', '193', '16', '5');
INSERT INTO `district` VALUES ('1566', '250504', '*วังใหม่   ', '193', '16', '5');
INSERT INTO `district` VALUES ('1567', '250505', '*คลองหินปูน   ', '193', '16', '5');
INSERT INTO `district` VALUES ('1568', '250506', '*ทุ่งมหาเจริญ   ', '193', '16', '5');
INSERT INTO `district` VALUES ('1569', '250601', 'บ้านสร้าง   ', '194', '16', '5');
INSERT INTO `district` VALUES ('1570', '250602', 'บางกระเบา   ', '194', '16', '5');
INSERT INTO `district` VALUES ('1571', '250603', 'บางเตย   ', '194', '16', '5');
INSERT INTO `district` VALUES ('1572', '250604', 'บางยาง   ', '194', '16', '5');
INSERT INTO `district` VALUES ('1573', '250605', 'บางแตน   ', '194', '16', '5');
INSERT INTO `district` VALUES ('1574', '250606', 'บางพลวง   ', '194', '16', '5');
INSERT INTO `district` VALUES ('1575', '250607', 'บางปลาร้า   ', '194', '16', '5');
INSERT INTO `district` VALUES ('1576', '250608', 'บางขาม   ', '194', '16', '5');
INSERT INTO `district` VALUES ('1577', '250609', 'กระทุ่มแพ้ว   ', '194', '16', '5');
INSERT INTO `district` VALUES ('1578', '250701', 'ประจันตคาม   ', '195', '16', '5');
INSERT INTO `district` VALUES ('1579', '250702', 'เกาะลอย   ', '195', '16', '5');
INSERT INTO `district` VALUES ('1580', '250703', 'บ้านหอย   ', '195', '16', '5');
INSERT INTO `district` VALUES ('1581', '250704', 'หนองแสง   ', '195', '16', '5');
INSERT INTO `district` VALUES ('1582', '250705', 'ดงบัง   ', '195', '16', '5');
INSERT INTO `district` VALUES ('1583', '250706', 'คำโตนด   ', '195', '16', '5');
INSERT INTO `district` VALUES ('1584', '250707', 'บุฝ้าย   ', '195', '16', '5');
INSERT INTO `district` VALUES ('1585', '250708', 'หนองแก้ว   ', '195', '16', '5');
INSERT INTO `district` VALUES ('1586', '250709', 'โพธิ์งาม   ', '195', '16', '5');
INSERT INTO `district` VALUES ('1587', '250801', 'ศรีมหาโพธิ   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1588', '250802', 'สัมพันธ์   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1589', '250803', 'บ้านทาม   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1590', '250804', 'ท่าตูม   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1591', '250805', 'บางกุ้ง   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1592', '250806', 'ดงกระทงยาม   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1593', '250807', 'หนองโพรง   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1594', '250808', 'หัวหว้า   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1595', '250809', 'หาดยาง   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1596', '250810', 'กรอกสมบูรณ์   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1597', '250896', '*คู้ลำพัน   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1598', '250897', '*โคกปีบ   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1599', '250898', '*โคกไทย   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1600', '250899', '*ไผ่ชะเลือด   ', '196', '16', '5');
INSERT INTO `district` VALUES ('1601', '250901', 'โคกปีบ   ', '197', '16', '5');
INSERT INTO `district` VALUES ('1602', '250902', 'โคกไทย   ', '197', '16', '5');
INSERT INTO `district` VALUES ('1603', '250903', 'คู้ลำพัน   ', '197', '16', '5');
INSERT INTO `district` VALUES ('1604', '250904', 'ไผ่ชะเลือด   ', '197', '16', '5');
INSERT INTO `district` VALUES ('1605', '251001', '*อรัญประเทศ   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1606', '251002', '*เมืองไผ่   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1607', '251003', '*หันทราย   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1608', '251004', '*คลองน้ำใส   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1609', '251005', '*ท่าข้าม   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1610', '251006', '*ป่าไร่   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1611', '251007', '*ทับพริก   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1612', '251008', '*บ้านใหม่หนองไทร   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1613', '251009', '*ผ่านศึก   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1614', '251010', '*หนองสังข์   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1615', '251011', '*คลองทับจันทร์   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1616', '251012', '*ฟากห้วย   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1617', '251013', '*บ้านด่าน   ', '198', '16', '5');
INSERT INTO `district` VALUES ('1618', '251101', '*ตาพระยา   ', '199', '16', '5');
INSERT INTO `district` VALUES ('1619', '251102', '*ทัพเสด็จ   ', '199', '16', '5');
INSERT INTO `district` VALUES ('1620', '251103', '*โคกสูง   ', '199', '16', '5');
INSERT INTO `district` VALUES ('1621', '251104', '*หนองแวง   ', '199', '16', '5');
INSERT INTO `district` VALUES ('1622', '251105', '*หนองม่วง   ', '199', '16', '5');
INSERT INTO `district` VALUES ('1623', '251106', '*ทัพราช   ', '199', '16', '5');
INSERT INTO `district` VALUES ('1624', '251107', '*ทัพไทย   ', '199', '16', '5');
INSERT INTO `district` VALUES ('1625', '251108', '*โนนหมากมุ่น   ', '199', '16', '5');
INSERT INTO `district` VALUES ('1626', '251109', '*โคคลาน   ', '199', '16', '5');
INSERT INTO `district` VALUES ('1627', '251201', '*วัฒนานคร   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1628', '251202', '*ท่าเกวียน   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1629', '251203', '*ซับมะกรูด   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1630', '251204', '*ผักขะ   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1631', '251205', '*โนนหมากเค็ง   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1632', '251206', '*หนองน้ำใส   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1633', '251207', '*ช่องกุ่ม   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1634', '251208', '*หนองแวง   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1635', '251209', '*ไทยอุดม   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1636', '251210', '*ไทรเดี่ยว   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1637', '251211', '*คลองหาด   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1638', '251212', '*แซร์ออ   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1639', '251213', '*หนองหมากฝ้าย   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1640', '251214', '*หนองตะเคียนบอน   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1641', '251215', '*ห้วยโจด   ', '200', '16', '5');
INSERT INTO `district` VALUES ('1642', '251301', '*คลองหาด   ', '201', '16', '5');
INSERT INTO `district` VALUES ('1643', '251302', '*ไทยอุดม   ', '201', '16', '5');
INSERT INTO `district` VALUES ('1644', '251303', '*ซับมะกรูด   ', '201', '16', '5');
INSERT INTO `district` VALUES ('1645', '251304', '*ไทรเดี่ยว   ', '201', '16', '5');
INSERT INTO `district` VALUES ('1646', '251305', '*คลองไก่เถื่อน   ', '201', '16', '5');
INSERT INTO `district` VALUES ('1647', '251306', '*เบญจขร   ', '201', '16', '5');
INSERT INTO `district` VALUES ('1648', '251307', '*ไทรทอง   ', '201', '16', '5');
INSERT INTO `district` VALUES ('1649', '260101', 'นครนายก   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1650', '260102', 'ท่าช้าง   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1651', '260103', 'บ้านใหญ่   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1652', '260104', 'วังกระโจม   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1653', '260105', 'ท่าทราย   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1654', '260106', 'ดอนยอ   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1655', '260107', 'ศรีจุฬา   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1656', '260108', 'ดงละคร   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1657', '260109', 'ศรีนาวา   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1658', '260110', 'สาริกา   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1659', '260111', 'หินตั้ง   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1660', '260112', 'เขาพระ   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1661', '260113', 'พรหมณี   ', '202', '17', '2');
INSERT INTO `district` VALUES ('1662', '260201', 'เกาะหวาย   ', '203', '17', '2');
INSERT INTO `district` VALUES ('1663', '260202', 'เกาะโพธิ์   ', '203', '17', '2');
INSERT INTO `district` VALUES ('1664', '260203', 'ปากพลี   ', '203', '17', '2');
INSERT INTO `district` VALUES ('1665', '260204', 'โคกกรวด   ', '203', '17', '2');
INSERT INTO `district` VALUES ('1666', '260205', 'ท่าเรือ   ', '203', '17', '2');
INSERT INTO `district` VALUES ('1667', '260206', 'หนองแสง   ', '203', '17', '2');
INSERT INTO `district` VALUES ('1668', '260207', 'นาหินลาด   ', '203', '17', '2');
INSERT INTO `district` VALUES ('1669', '260301', 'บ้านนา   ', '204', '17', '2');
INSERT INTO `district` VALUES ('1670', '260302', 'บ้านพร้าว   ', '204', '17', '2');
INSERT INTO `district` VALUES ('1671', '260303', 'บ้านพริก   ', '204', '17', '2');
INSERT INTO `district` VALUES ('1672', '260304', 'อาษา   ', '204', '17', '2');
INSERT INTO `district` VALUES ('1673', '260305', 'ทองหลาง   ', '204', '17', '2');
INSERT INTO `district` VALUES ('1674', '260306', 'บางอ้อ   ', '204', '17', '2');
INSERT INTO `district` VALUES ('1675', '260307', 'พิกุลออก   ', '204', '17', '2');
INSERT INTO `district` VALUES ('1676', '260308', 'ป่าขะ   ', '204', '17', '2');
INSERT INTO `district` VALUES ('1677', '260309', 'เขาเพิ่ม   ', '204', '17', '2');
INSERT INTO `district` VALUES ('1678', '260310', 'ศรีกะอาง   ', '204', '17', '2');
INSERT INTO `district` VALUES ('1679', '260401', 'พระอาจารย์   ', '205', '17', '2');
INSERT INTO `district` VALUES ('1680', '260402', 'บึงศาล   ', '205', '17', '2');
INSERT INTO `district` VALUES ('1681', '260403', 'ศีรษะกระบือ   ', '205', '17', '2');
INSERT INTO `district` VALUES ('1682', '260404', 'โพธิ์แทน   ', '205', '17', '2');
INSERT INTO `district` VALUES ('1683', '260405', 'บางสมบูรณ์   ', '205', '17', '2');
INSERT INTO `district` VALUES ('1684', '260406', 'ทรายมูล   ', '205', '17', '2');
INSERT INTO `district` VALUES ('1685', '260407', 'บางปลากด   ', '205', '17', '2');
INSERT INTO `district` VALUES ('1686', '260408', 'บางลูกเสือ   ', '205', '17', '2');
INSERT INTO `district` VALUES ('1687', '260409', 'องครักษ์   ', '205', '17', '2');
INSERT INTO `district` VALUES ('1688', '260410', 'ชุมพล   ', '205', '17', '2');
INSERT INTO `district` VALUES ('1689', '260411', 'คลองใหญ่   ', '205', '17', '2');
INSERT INTO `district` VALUES ('1690', '270101', 'สระแก้ว   ', '206', '18', '5');
INSERT INTO `district` VALUES ('1691', '270102', 'บ้านแก้ง   ', '206', '18', '5');
INSERT INTO `district` VALUES ('1692', '270103', 'ศาลาลำดวน   ', '206', '18', '5');
INSERT INTO `district` VALUES ('1693', '270104', 'โคกปี่ฆ้อง   ', '206', '18', '5');
INSERT INTO `district` VALUES ('1694', '270105', 'ท่าแยก   ', '206', '18', '5');
INSERT INTO `district` VALUES ('1695', '270106', 'ท่าเกษม   ', '206', '18', '5');
INSERT INTO `district` VALUES ('1696', '270107', '*เขาฉกรรจ์   ', '206', '18', '5');
INSERT INTO `district` VALUES ('1697', '270108', 'สระขวัญ   ', '206', '18', '5');
INSERT INTO `district` VALUES ('1698', '270109', '*หนองหว้า   ', '206', '18', '5');
INSERT INTO `district` VALUES ('1699', '270110', '*พระเพลิง   ', '206', '18', '5');
INSERT INTO `district` VALUES ('1700', '270111', 'หนองบอน   ', '206', '18', '5');
INSERT INTO `district` VALUES ('1701', '270112', '*เขาสามสิบ   ', '206', '18', '5');
INSERT INTO `district` VALUES ('1702', '270201', 'คลองหาด   ', '207', '18', '5');
INSERT INTO `district` VALUES ('1703', '270202', 'ไทยอุดม   ', '207', '18', '5');
INSERT INTO `district` VALUES ('1704', '270203', 'ซับมะกรูด   ', '207', '18', '5');
INSERT INTO `district` VALUES ('1705', '270204', 'ไทรเดี่ยว   ', '207', '18', '5');
INSERT INTO `district` VALUES ('1706', '270205', 'คลองไก่เถื่อน   ', '207', '18', '5');
INSERT INTO `district` VALUES ('1707', '270206', 'เบญจขร   ', '207', '18', '5');
INSERT INTO `district` VALUES ('1708', '270207', 'ไทรทอง   ', '207', '18', '5');
INSERT INTO `district` VALUES ('1709', '270301', 'ตาพระยา   ', '208', '18', '5');
INSERT INTO `district` VALUES ('1710', '270302', 'ทัพเสด็จ   ', '208', '18', '5');
INSERT INTO `district` VALUES ('1711', '270303', 'โคกสูง*   ', '208', '18', '5');
INSERT INTO `district` VALUES ('1712', '270304', 'หนองแวง*   ', '208', '18', '5');
INSERT INTO `district` VALUES ('1713', '270305', 'หนองม่วง*   ', '208', '18', '5');
INSERT INTO `district` VALUES ('1714', '270306', 'ทัพราช   ', '208', '18', '5');
INSERT INTO `district` VALUES ('1715', '270307', 'ทัพไทย   ', '208', '18', '5');
INSERT INTO `district` VALUES ('1716', '270308', 'โนนหมากมุ่น*   ', '208', '18', '5');
INSERT INTO `district` VALUES ('1717', '270309', 'โคคลาน   ', '208', '18', '5');
INSERT INTO `district` VALUES ('1718', '270401', 'วังน้ำเย็น   ', '209', '18', '5');
INSERT INTO `district` VALUES ('1719', '270402', 'วังสมบูรณ์*   ', '209', '18', '5');
INSERT INTO `district` VALUES ('1720', '270403', 'ตาหลังใน   ', '209', '18', '5');
INSERT INTO `district` VALUES ('1721', '270404', 'วังใหม่*   ', '209', '18', '5');
INSERT INTO `district` VALUES ('1722', '270405', 'คลองหินปูน   ', '209', '18', '5');
INSERT INTO `district` VALUES ('1723', '270406', 'ทุ่งมหาเจริญ   ', '209', '18', '5');
INSERT INTO `district` VALUES ('1724', '270407', 'วังทอง*   ', '209', '18', '5');
INSERT INTO `district` VALUES ('1725', '270501', 'วัฒนานคร   ', '210', '18', '5');
INSERT INTO `district` VALUES ('1726', '270502', 'ท่าเกวียน   ', '210', '18', '5');
INSERT INTO `district` VALUES ('1727', '270503', 'ผักขะ   ', '210', '18', '5');
INSERT INTO `district` VALUES ('1728', '270504', 'โนนหมากเค็ง   ', '210', '18', '5');
INSERT INTO `district` VALUES ('1729', '270505', 'หนองน้ำใส   ', '210', '18', '5');
INSERT INTO `district` VALUES ('1730', '270506', 'ช่องกุ่ม   ', '210', '18', '5');
INSERT INTO `district` VALUES ('1731', '270507', 'หนองแวง   ', '210', '18', '5');
INSERT INTO `district` VALUES ('1732', '270508', 'แซร์ออ   ', '210', '18', '5');
INSERT INTO `district` VALUES ('1733', '270509', 'หนองหมากฝ้าย   ', '210', '18', '5');
INSERT INTO `district` VALUES ('1734', '270510', 'หนองตะเคียนบอน   ', '210', '18', '5');
INSERT INTO `district` VALUES ('1735', '270511', 'ห้วยโจด   ', '210', '18', '5');
INSERT INTO `district` VALUES ('1736', '270601', 'อรัญประเทศ   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1737', '270602', 'เมืองไผ่   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1738', '270603', 'หันทราย   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1739', '270604', 'คลองน้ำใส   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1740', '270605', 'ท่าข้าม   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1741', '270606', 'ป่าไร่   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1742', '270607', 'ทับพริก   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1743', '270608', 'บ้านใหม่หนองไทร   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1744', '270609', 'ผ่านศึก   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1745', '270610', 'หนองสังข์   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1746', '270611', 'คลองทับจันทร์   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1747', '270612', 'ฟากห้วย   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1748', '270613', 'บ้านด่าน   ', '211', '18', '5');
INSERT INTO `district` VALUES ('1749', '270701', 'เขาฉกรรจ์   ', '212', '18', '5');
INSERT INTO `district` VALUES ('1750', '270702', 'หนองหว้า   ', '212', '18', '5');
INSERT INTO `district` VALUES ('1751', '270703', 'พระเพลิง   ', '212', '18', '5');
INSERT INTO `district` VALUES ('1752', '270704', 'เขาสามสิบ   ', '212', '18', '5');
INSERT INTO `district` VALUES ('1753', '270801', 'โคกสูง   ', '213', '18', '5');
INSERT INTO `district` VALUES ('1754', '270802', 'หนองม่วง   ', '213', '18', '5');
INSERT INTO `district` VALUES ('1755', '270803', 'หนองแวง   ', '213', '18', '5');
INSERT INTO `district` VALUES ('1756', '270804', 'โนนหมากมุ่น   ', '213', '18', '5');
INSERT INTO `district` VALUES ('1757', '270901', 'วังสมบูรณ์   ', '214', '18', '5');
INSERT INTO `district` VALUES ('1758', '270902', 'วังใหม่   ', '214', '18', '5');
INSERT INTO `district` VALUES ('1759', '270903', 'วังทอง   ', '214', '18', '5');
INSERT INTO `district` VALUES ('1760', '300101', 'ในเมือง   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1761', '300102', 'โพธิ์กลาง   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1762', '300103', 'หนองจะบก   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1763', '300104', 'โคกสูง   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1764', '300105', 'มะเริง   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1765', '300106', 'หนองระเวียง   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1766', '300107', 'ปรุใหญ่   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1767', '300108', 'หมื่นไวย   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1768', '300109', 'พลกรัง   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1769', '300110', 'หนองไผ่ล้อม   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1770', '300111', 'หัวทะเล   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1771', '300112', 'บ้านเกาะ   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1772', '300113', 'บ้านใหม่   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1773', '300114', 'พุดซา   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1774', '300115', 'บ้านโพธิ์   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1775', '300116', 'จอหอ   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1776', '300117', 'โคกกรวด   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1777', '300118', 'ไชยมงคล   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1778', '300119', 'หนองบัวศาลา   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1779', '300120', 'สุรนารี   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1780', '300121', 'สีมุม   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1781', '300122', 'ตลาด   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1782', '300123', 'พะเนา   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1783', '300124', 'หนองกระทุ่ม   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1784', '300125', 'หนองไข่น้ำ   ', '215', '19', '3');
INSERT INTO `district` VALUES ('1785', '300201', 'แชะ   ', '216', '19', '3');
INSERT INTO `district` VALUES ('1786', '300202', 'เฉลียง   ', '216', '19', '3');
INSERT INTO `district` VALUES ('1787', '300203', 'ครบุรี   ', '216', '19', '3');
INSERT INTO `district` VALUES ('1788', '300204', 'โคกกระชาย   ', '216', '19', '3');
INSERT INTO `district` VALUES ('1789', '300205', 'จระเข้หิน   ', '216', '19', '3');
INSERT INTO `district` VALUES ('1790', '300206', 'มาบตะโกเอน   ', '216', '19', '3');
INSERT INTO `district` VALUES ('1791', '300207', 'อรพิมพ์   ', '216', '19', '3');
INSERT INTO `district` VALUES ('1792', '300208', 'บ้านใหม่   ', '216', '19', '3');
INSERT INTO `district` VALUES ('1793', '300209', 'ลำเพียก   ', '216', '19', '3');
INSERT INTO `district` VALUES ('1794', '300210', 'ครบุรีใต้   ', '216', '19', '3');
INSERT INTO `district` VALUES ('1795', '300211', 'ตะแบกบาน   ', '216', '19', '3');
INSERT INTO `district` VALUES ('1796', '300212', 'สระว่านพระยา   ', '216', '19', '3');
INSERT INTO `district` VALUES ('1797', '300301', 'เสิงสาง   ', '217', '19', '3');
INSERT INTO `district` VALUES ('1798', '300302', 'สระตะเคียน   ', '217', '19', '3');
INSERT INTO `district` VALUES ('1799', '300303', 'โนนสมบูรณ์   ', '217', '19', '3');
INSERT INTO `district` VALUES ('1800', '300304', 'กุดโบสถ์   ', '217', '19', '3');
INSERT INTO `district` VALUES ('1801', '300305', 'สุขไพบูลย์   ', '217', '19', '3');
INSERT INTO `district` VALUES ('1802', '300306', 'บ้านราษฎร์   ', '217', '19', '3');
INSERT INTO `district` VALUES ('1803', '300401', 'เมืองคง   ', '218', '19', '3');
INSERT INTO `district` VALUES ('1804', '300402', 'คูขาด   ', '218', '19', '3');
INSERT INTO `district` VALUES ('1805', '300403', 'เทพาลัย   ', '218', '19', '3');
INSERT INTO `district` VALUES ('1806', '300404', 'ตาจั่น   ', '218', '19', '3');
INSERT INTO `district` VALUES ('1807', '300405', 'บ้านปรางค์   ', '218', '19', '3');
INSERT INTO `district` VALUES ('1808', '300406', 'หนองมะนาว   ', '218', '19', '3');
INSERT INTO `district` VALUES ('1809', '300407', 'หนองบัว   ', '218', '19', '3');
INSERT INTO `district` VALUES ('1810', '300408', 'โนนเต็ง   ', '218', '19', '3');
INSERT INTO `district` VALUES ('1811', '300409', 'ดอนใหญ่   ', '218', '19', '3');
INSERT INTO `district` VALUES ('1812', '300410', 'ขามสมบูรณ์   ', '218', '19', '3');
INSERT INTO `district` VALUES ('1813', '300501', 'บ้านเหลื่อม   ', '219', '19', '3');
INSERT INTO `district` VALUES ('1814', '300502', 'วังโพธิ์   ', '219', '19', '3');
INSERT INTO `district` VALUES ('1815', '300503', 'โคกกระเบื้อง   ', '219', '19', '3');
INSERT INTO `district` VALUES ('1816', '300504', 'ช่อระกา   ', '219', '19', '3');
INSERT INTO `district` VALUES ('1817', '300601', 'จักราช   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1818', '300602', 'ท่าช้าง   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1819', '300603', 'ทองหลาง   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1820', '300604', 'สีสุก   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1821', '300605', 'หนองขาม   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1822', '300606', 'หนองงูเหลือม   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1823', '300607', 'หนองพลวง   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1824', '300608', 'หนองยาง   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1825', '300609', 'พระพุทธ   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1826', '300610', 'ศรีละกอ   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1827', '300611', 'คลองเมือง   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1828', '300612', 'ช้างทอง   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1829', '300613', 'หินโคน   ', '220', '19', '3');
INSERT INTO `district` VALUES ('1830', '300701', 'กระโทก   ', '221', '19', '3');
INSERT INTO `district` VALUES ('1831', '300702', 'พลับพลา   ', '221', '19', '3');
INSERT INTO `district` VALUES ('1832', '300703', 'ท่าอ่าง   ', '221', '19', '3');
INSERT INTO `district` VALUES ('1833', '300704', 'ทุ่งอรุณ   ', '221', '19', '3');
INSERT INTO `district` VALUES ('1834', '300705', 'ท่าลาดขาว   ', '221', '19', '3');
INSERT INTO `district` VALUES ('1835', '300706', 'ท่าจะหลุง   ', '221', '19', '3');
INSERT INTO `district` VALUES ('1836', '300707', 'ท่าเยี่ยม   ', '221', '19', '3');
INSERT INTO `district` VALUES ('1837', '300708', 'โชคชัย   ', '221', '19', '3');
INSERT INTO `district` VALUES ('1838', '300709', 'ละลมใหม่พัฒนา   ', '221', '19', '3');
INSERT INTO `district` VALUES ('1839', '300710', 'ด่านเกวียน   ', '221', '19', '3');
INSERT INTO `district` VALUES ('1840', '300801', 'กุดพิมาน   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1841', '300802', 'ด่านขุนทด   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1842', '300803', 'ด่านนอก   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1843', '300804', 'ด่านใน   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1844', '300805', 'ตะเคียน   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1845', '300806', 'บ้านเก่า   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1846', '300807', 'บ้านแปรง   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1847', '300808', 'พันชนะ   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1848', '300809', 'สระจรเข้   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1849', '300810', 'หนองกราด   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1850', '300811', 'หนองบัวตะเกียด   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1851', '300812', 'หนองบัวละคร   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1852', '300813', 'หินดาด   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1853', '300814', '*สำนักตะคร้อ   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1854', '300815', 'ห้วยบง   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1855', '300816', '*หนองแวง   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1856', '300817', 'โนนเมืองพัฒนา   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1857', '300818', 'หนองไทร   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1858', '300819', '*บึงปรือ   ', '222', '19', '3');
INSERT INTO `district` VALUES ('1859', '300901', 'โนนไทย   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1860', '300902', 'ด่านจาก   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1861', '300903', 'กำปัง   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1862', '300904', 'สำโรง   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1863', '300905', 'ค้างพลู   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1864', '300906', 'บ้านวัง   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1865', '300907', 'บัลลังก์   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1866', '300908', 'สายออ   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1867', '300909', 'ถนนโพธิ์   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1868', '300910', 'พังเทียม   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1869', '300911', 'สระพระ   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1870', '300912', 'ทัพรั้ง   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1871', '300913', 'หนองหอย   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1872', '300914', 'มะค่า   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1873', '300915', 'มาบกราด   ', '223', '19', '3');
INSERT INTO `district` VALUES ('1874', '301001', 'โนนสูง   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1875', '301002', 'ใหม่   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1876', '301003', 'โตนด   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1877', '301004', 'บิง   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1878', '301005', 'ดอนชมพู   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1879', '301006', 'ธารปราสาท   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1880', '301007', 'หลุมข้าว   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1881', '301008', 'มะค่า   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1882', '301009', 'พลสงคราม   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1883', '301010', 'จันอัด   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1884', '301011', 'ขามเฒ่า   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1885', '301012', 'ด่านคล้า   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1886', '301013', 'ลำคอหงษ์   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1887', '301014', 'เมืองปราสาท   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1888', '301015', 'ดอนหวาย   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1889', '301016', 'ลำมูล   ', '224', '19', '3');
INSERT INTO `district` VALUES ('1890', '301101', 'ขามสะแกแสง   ', '225', '19', '3');
INSERT INTO `district` VALUES ('1891', '301102', 'โนนเมือง   ', '225', '19', '3');
INSERT INTO `district` VALUES ('1892', '301103', 'เมืองนาท   ', '225', '19', '3');
INSERT INTO `district` VALUES ('1893', '301104', 'ชีวึก   ', '225', '19', '3');
INSERT INTO `district` VALUES ('1894', '301105', 'พะงาด   ', '225', '19', '3');
INSERT INTO `district` VALUES ('1895', '301106', 'หนองหัวฟาน   ', '225', '19', '3');
INSERT INTO `district` VALUES ('1896', '301107', 'เมืองเกษตร   ', '225', '19', '3');
INSERT INTO `district` VALUES ('1897', '301201', 'บัวใหญ่   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1898', '301203', 'ห้วยยาง   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1899', '301204', 'เสมาใหญ่   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1900', '301205', '*บึงพะไล   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1901', '301206', 'ดอนตะหนิน   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1902', '301207', 'หนองบัวสะอาด   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1903', '301208', 'โนนทองหลาง   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1904', '301209', 'หนองหว้า   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1905', '301210', 'บัวลาย   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1906', '301211', 'สีดา   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1907', '301212', 'โพนทอง   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1908', '301213', '*แก้งสนามนาง   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1909', '301214', 'กุดจอก   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1910', '301215', 'ด่านช้าง   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1911', '301216', 'โนนจาน   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1912', '301217', '*สีสุก   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1913', '301218', 'สามเมือง   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1914', '301219', '*โนนสำราญ   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1915', '301220', 'ขุนทอง   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1916', '301221', 'หนองตาดใหญ่   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1917', '301222', 'เมืองพะไล   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1918', '301223', 'โนนประดู่   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1919', '301224', 'หนองแจ้งใหญ่   ', '226', '19', '3');
INSERT INTO `district` VALUES ('1920', '301301', 'ประทาย   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1921', '301302', '*โนนแดง   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1922', '301303', 'กระทุ่มราย   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1923', '301304', 'วังไม้แดง   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1924', '301305', '*วังหิน   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1925', '301306', 'ตลาดไทร   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1926', '301307', 'หนองพลวง   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1927', '301308', 'หนองค่าย   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1928', '301309', 'หันห้วยทราย   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1929', '301310', 'ดอนมัน   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1930', '301311', '*โนนตาเถร   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1931', '301312', '*สำพะเนียง   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1932', '301313', 'นางรำ   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1933', '301314', 'โนนเพ็ด   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1934', '301315', 'ทุ่งสว่าง   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1935', '301316', '*ดอนยาวใหญ่   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1936', '301317', 'โคกกลาง   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1937', '301318', 'เมืองโดน   ', '227', '19', '3');
INSERT INTO `district` VALUES ('1938', '301401', 'เมืองปัก   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1939', '301402', 'ตะคุ   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1940', '301403', 'โคกไทย   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1941', '301404', 'สำโรง   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1942', '301405', 'ตะขบ   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1943', '301406', 'นกออก   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1944', '301407', 'ดอน   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1945', '301408', '*วังน้ำเขียว   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1946', '301409', 'ตูม   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1947', '301410', 'งิ้ว   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1948', '301411', 'สะแกราช   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1949', '301412', 'ลำนางแก้ว   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1950', '301413', '*วังหมี   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1951', '301414', '*ระเริง   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1952', '301415', '*อุดมทรัพย์   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1953', '301416', 'ภูหลวง   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1954', '301417', 'ธงชัยเหนือ   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1955', '301418', 'สุขเกษม   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1956', '301419', 'เกษมทรัพย์   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1957', '301420', 'บ่อปลาทอง   ', '228', '19', '3');
INSERT INTO `district` VALUES ('1958', '301501', 'ในเมือง   ', '229', '19', '3');
INSERT INTO `district` VALUES ('1959', '301502', 'สัมฤทธิ์   ', '229', '19', '3');
INSERT INTO `district` VALUES ('1960', '301503', 'โบสถ์   ', '229', '19', '3');
INSERT INTO `district` VALUES ('1961', '301504', 'กระเบื้องใหญ่   ', '229', '19', '3');
INSERT INTO `district` VALUES ('1962', '301505', 'ท่าหลวง   ', '229', '19', '3');
INSERT INTO `district` VALUES ('1963', '301506', 'รังกาใหญ่   ', '229', '19', '3');
INSERT INTO `district` VALUES ('1964', '301507', 'ชีวาน   ', '229', '19', '3');
INSERT INTO `district` VALUES ('1965', '301508', 'นิคมสร้างตนเอง   ', '229', '19', '3');
INSERT INTO `district` VALUES ('1966', '301509', 'กระชอน   ', '229', '19', '3');
INSERT INTO `district` VALUES ('1967', '301510', 'ดงใหญ่   ', '229', '19', '3');
INSERT INTO `district` VALUES ('1968', '301511', 'ธารละหลอด   ', '229', '19', '3');
INSERT INTO `district` VALUES ('1969', '301512', 'หนองระเวียง   ', '229', '19', '3');
INSERT INTO `district` VALUES ('1970', '301601', 'ห้วยแถลง   ', '230', '19', '3');
INSERT INTO `district` VALUES ('1971', '301602', 'ทับสวาย   ', '230', '19', '3');
INSERT INTO `district` VALUES ('1972', '301603', 'เมืองพลับพลา   ', '230', '19', '3');
INSERT INTO `district` VALUES ('1973', '301604', 'หลุ่งตะเคียน   ', '230', '19', '3');
INSERT INTO `district` VALUES ('1974', '301605', 'หินดาด   ', '230', '19', '3');
INSERT INTO `district` VALUES ('1975', '301606', 'งิ้ว   ', '230', '19', '3');
INSERT INTO `district` VALUES ('1976', '301607', 'กงรถ   ', '230', '19', '3');
INSERT INTO `district` VALUES ('1977', '301608', 'หลุ่งประดู่   ', '230', '19', '3');
INSERT INTO `district` VALUES ('1978', '301609', 'ตะโก   ', '230', '19', '3');
INSERT INTO `district` VALUES ('1979', '301610', 'ห้วยแคน   ', '230', '19', '3');
INSERT INTO `district` VALUES ('1980', '301701', 'ชุมพวง   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1981', '301702', 'ประสุข   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1982', '301703', 'ท่าลาด   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1983', '301704', 'สาหร่าย   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1984', '301705', 'ตลาดไทร   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1985', '301706', 'ช่องแมว   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1986', '301707', 'ขุย   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1987', '301708', '*กระเบื้องนอก   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1988', '301709', '*เมืองยาง   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1989', '301710', 'โนนรัง   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1990', '301711', 'บ้านยาง   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1991', '301712', '*ละหานปลาค้าว   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1992', '301713', '*โนนอุดม   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1993', '301714', 'หนองหลัก   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1994', '301715', 'ไพล   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1995', '301716', 'โนนตูม   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1996', '301717', 'โนนยอ   ', '231', '19', '3');
INSERT INTO `district` VALUES ('1997', '301801', 'สูงเนิน   ', '232', '19', '3');
INSERT INTO `district` VALUES ('1998', '301802', 'เสมา   ', '232', '19', '3');
INSERT INTO `district` VALUES ('1999', '301803', 'โคราช   ', '232', '19', '3');
INSERT INTO `district` VALUES ('2000', '301804', 'บุ่งขี้เหล็ก   ', '232', '19', '3');
INSERT INTO `district` VALUES ('2001', '301805', 'โนนค่า   ', '232', '19', '3');
INSERT INTO `district` VALUES ('2002', '301806', 'โค้งยาง   ', '232', '19', '3');
INSERT INTO `district` VALUES ('2003', '301807', 'มะเกลือเก่า   ', '232', '19', '3');
INSERT INTO `district` VALUES ('2004', '301808', 'มะเกลือใหม่   ', '232', '19', '3');
INSERT INTO `district` VALUES ('2005', '301809', 'นากลาง   ', '232', '19', '3');
INSERT INTO `district` VALUES ('2006', '301810', 'หนองตะไก้   ', '232', '19', '3');
INSERT INTO `district` VALUES ('2007', '301811', 'กุดจิก   ', '232', '19', '3');
INSERT INTO `district` VALUES ('2008', '301901', 'ขามทะเลสอ   ', '233', '19', '3');
INSERT INTO `district` VALUES ('2009', '301902', 'โป่งแดง   ', '233', '19', '3');
INSERT INTO `district` VALUES ('2010', '301903', 'พันดุง   ', '233', '19', '3');
INSERT INTO `district` VALUES ('2011', '301904', 'หนองสรวง   ', '233', '19', '3');
INSERT INTO `district` VALUES ('2012', '301905', 'บึงอ้อ   ', '233', '19', '3');
INSERT INTO `district` VALUES ('2013', '302001', 'สีคิ้ว   ', '234', '19', '3');
INSERT INTO `district` VALUES ('2014', '302002', 'บ้านหัน   ', '234', '19', '3');
INSERT INTO `district` VALUES ('2015', '302003', 'กฤษณา   ', '234', '19', '3');
INSERT INTO `district` VALUES ('2016', '302004', 'ลาดบัวขาว   ', '234', '19', '3');
INSERT INTO `district` VALUES ('2017', '302005', 'หนองหญ้าขาว   ', '234', '19', '3');
INSERT INTO `district` VALUES ('2018', '302006', 'กุดน้อย   ', '234', '19', '3');
INSERT INTO `district` VALUES ('2019', '302007', 'หนองน้ำใส   ', '234', '19', '3');
INSERT INTO `district` VALUES ('2020', '302008', 'วังโรงใหญ่   ', '234', '19', '3');
INSERT INTO `district` VALUES ('2021', '302009', 'มิตรภาพ   ', '234', '19', '3');
INSERT INTO `district` VALUES ('2022', '302010', 'คลองไผ่   ', '234', '19', '3');
INSERT INTO `district` VALUES ('2023', '302011', 'ดอนเมือง   ', '234', '19', '3');
INSERT INTO `district` VALUES ('2024', '302012', 'หนองบัวน้อย   ', '234', '19', '3');
INSERT INTO `district` VALUES ('2025', '302101', 'ปากช่อง   ', '235', '19', '3');
INSERT INTO `district` VALUES ('2026', '302102', 'กลางดง   ', '235', '19', '3');
INSERT INTO `district` VALUES ('2027', '302103', 'จันทึก   ', '235', '19', '3');
INSERT INTO `district` VALUES ('2028', '302104', 'วังกะทะ   ', '235', '19', '3');
INSERT INTO `district` VALUES ('2029', '302105', 'หมูสี   ', '235', '19', '3');
INSERT INTO `district` VALUES ('2030', '302106', 'หนองสาหร่าย   ', '235', '19', '3');
INSERT INTO `district` VALUES ('2031', '302107', 'ขนงพระ   ', '235', '19', '3');
INSERT INTO `district` VALUES ('2032', '302108', 'โป่งตาลอง   ', '235', '19', '3');
INSERT INTO `district` VALUES ('2033', '302109', 'คลองม่วง   ', '235', '19', '3');
INSERT INTO `district` VALUES ('2034', '302110', 'หนองน้ำแดง   ', '235', '19', '3');
INSERT INTO `district` VALUES ('2035', '302111', 'วังไทร   ', '235', '19', '3');
INSERT INTO `district` VALUES ('2036', '302112', 'พญาเย็น   ', '235', '19', '3');
INSERT INTO `district` VALUES ('2037', '302201', 'หนองบุนนาก   ', '236', '19', '3');
INSERT INTO `district` VALUES ('2038', '302202', 'สารภี   ', '236', '19', '3');
INSERT INTO `district` VALUES ('2039', '302203', 'ไทยเจริญ   ', '236', '19', '3');
INSERT INTO `district` VALUES ('2040', '302204', 'หนองหัวแรต   ', '236', '19', '3');
INSERT INTO `district` VALUES ('2041', '302205', 'แหลมทอง   ', '236', '19', '3');
INSERT INTO `district` VALUES ('2042', '302206', 'หนองตะไก้   ', '236', '19', '3');
INSERT INTO `district` VALUES ('2043', '302207', 'ลุงเขว้า   ', '236', '19', '3');
INSERT INTO `district` VALUES ('2044', '302208', 'หนองไม้ไผ่   ', '236', '19', '3');
INSERT INTO `district` VALUES ('2045', '302209', 'บ้านใหม่   ', '236', '19', '3');
INSERT INTO `district` VALUES ('2046', '302301', 'แก้งสนามนาง   ', '237', '19', '3');
INSERT INTO `district` VALUES ('2047', '302302', 'โนนสำราญ   ', '237', '19', '3');
INSERT INTO `district` VALUES ('2048', '302303', 'บึงพะไล   ', '237', '19', '3');
INSERT INTO `district` VALUES ('2049', '302304', 'สีสุก   ', '237', '19', '3');
INSERT INTO `district` VALUES ('2050', '302305', 'บึงสำโรง   ', '237', '19', '3');
INSERT INTO `district` VALUES ('2051', '302401', 'โนนแดง   ', '238', '19', '3');
INSERT INTO `district` VALUES ('2052', '302402', 'โนนตาเถร   ', '238', '19', '3');
INSERT INTO `district` VALUES ('2053', '302403', 'สำพะเนียง   ', '238', '19', '3');
INSERT INTO `district` VALUES ('2054', '302404', 'วังหิน   ', '238', '19', '3');
INSERT INTO `district` VALUES ('2055', '302405', 'ดอนยาวใหญ่   ', '238', '19', '3');
INSERT INTO `district` VALUES ('2056', '302501', 'วังน้ำเขียว   ', '239', '19', '3');
INSERT INTO `district` VALUES ('2057', '302502', 'วังหมี   ', '239', '19', '3');
INSERT INTO `district` VALUES ('2058', '302503', 'ระเริง   ', '239', '19', '3');
INSERT INTO `district` VALUES ('2059', '302504', 'อุดมทรัพย์   ', '239', '19', '3');
INSERT INTO `district` VALUES ('2060', '302505', 'ไทยสามัคคี   ', '239', '19', '3');
INSERT INTO `district` VALUES ('2061', '302601', 'สำนักตะคร้อ   ', '240', '19', '3');
INSERT INTO `district` VALUES ('2062', '302602', 'หนองแวง   ', '240', '19', '3');
INSERT INTO `district` VALUES ('2063', '302603', 'บึงปรือ   ', '240', '19', '3');
INSERT INTO `district` VALUES ('2064', '302604', 'วังยายทอง   ', '240', '19', '3');
INSERT INTO `district` VALUES ('2065', '302701', 'เมืองยาง   ', '241', '19', '3');
INSERT INTO `district` VALUES ('2066', '302702', 'กระเบื้องนอก   ', '241', '19', '3');
INSERT INTO `district` VALUES ('2067', '302703', 'ละหานปลาค้าว   ', '241', '19', '3');
INSERT INTO `district` VALUES ('2068', '302704', 'โนนอุดม   ', '241', '19', '3');
INSERT INTO `district` VALUES ('2069', '302801', 'สระพระ   ', '242', '19', '3');
INSERT INTO `district` VALUES ('2070', '302802', 'มาบกราด   ', '242', '19', '3');
INSERT INTO `district` VALUES ('2071', '302803', 'พังเทียม   ', '242', '19', '3');
INSERT INTO `district` VALUES ('2072', '302804', 'ทัพรั้ง   ', '242', '19', '3');
INSERT INTO `district` VALUES ('2073', '302805', 'หนองหอย   ', '242', '19', '3');
INSERT INTO `district` VALUES ('2074', '302901', 'ขุย   ', '243', '19', '3');
INSERT INTO `district` VALUES ('2075', '302902', 'บ้านยาง   ', '243', '19', '3');
INSERT INTO `district` VALUES ('2076', '302903', 'ช่องแมว   ', '243', '19', '3');
INSERT INTO `district` VALUES ('2077', '302904', 'ไพล   ', '243', '19', '3');
INSERT INTO `district` VALUES ('2078', '303001', 'เมืองพะไล   ', '244', '19', '3');
INSERT INTO `district` VALUES ('2079', '303002', 'โนนจาน   ', '244', '19', '3');
INSERT INTO `district` VALUES ('2080', '303003', 'บัวลาย   ', '244', '19', '3');
INSERT INTO `district` VALUES ('2081', '303004', 'หนองหว้า   ', '244', '19', '3');
INSERT INTO `district` VALUES ('2082', '303101', 'สีดา   ', '245', '19', '3');
INSERT INTO `district` VALUES ('2083', '303102', 'โพนทอง   ', '245', '19', '3');
INSERT INTO `district` VALUES ('2084', '303103', 'โนนประดู่   ', '245', '19', '3');
INSERT INTO `district` VALUES ('2085', '303104', 'สามเมือง   ', '245', '19', '3');
INSERT INTO `district` VALUES ('2086', '303105', 'หนองตาดใหญ่   ', '245', '19', '3');
INSERT INTO `district` VALUES ('2087', '303201', 'ช้างทอง   ', '246', '19', '3');
INSERT INTO `district` VALUES ('2088', '303202', 'ท่าช้าง   ', '246', '19', '3');
INSERT INTO `district` VALUES ('2089', '303203', 'พระพุทธ   ', '246', '19', '3');
INSERT INTO `district` VALUES ('2090', '303204', 'หนองงูเหลือม   ', '246', '19', '3');
INSERT INTO `district` VALUES ('2091', '303205', 'หนองยาง   ', '246', '19', '3');
INSERT INTO `district` VALUES ('2092', '310101', 'ในเมือง   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2093', '310102', 'อิสาณ   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2094', '310103', 'เสม็ด   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2095', '310104', 'บ้านบัว   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2096', '310105', 'สะแกโพรง   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2097', '310106', 'สวายจีก   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2098', '310107', '*ห้วยราช   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2099', '310108', 'บ้านยาง   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2100', '310109', 'บ้านด่าน*   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2101', '310110', '*สามแวง   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2102', '310111', 'ปราสาท*   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2103', '310112', 'พระครู   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2104', '310113', 'ถลุงเหล็ก   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2105', '310114', 'หนองตาด   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2106', '310115', 'โนนขวาง*   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2107', '310116', '*ตาเสา   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2108', '310117', 'ลุมปุ๊ก   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2109', '310118', 'สองห้อง   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2110', '310119', 'บัวทอง   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2111', '310120', 'ชุมเห็ด   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2112', '310121', '*สนวน   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2113', '310122', 'หลักเขต   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2114', '310123', 'วังเหนือ*   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2115', '310124', '*บ้านตะโก   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2116', '310125', 'สะแกซำ   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2117', '310126', 'กลันทา   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2118', '310127', 'กระสัง   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2119', '310128', 'เมืองฝาง   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2120', '310198', '*ปะเคียบ   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2121', '310199', '*ห้วยราช   ', '250', '20', '3');
INSERT INTO `district` VALUES ('2122', '310201', 'คูเมือง   ', '251', '20', '3');
INSERT INTO `district` VALUES ('2123', '310202', 'ปะเคียบ   ', '251', '20', '3');
INSERT INTO `district` VALUES ('2124', '310203', 'บ้านแพ   ', '251', '20', '3');
INSERT INTO `district` VALUES ('2125', '310204', 'พรสำราญ   ', '251', '20', '3');
INSERT INTO `district` VALUES ('2126', '310205', 'หินเหล็กไฟ   ', '251', '20', '3');
INSERT INTO `district` VALUES ('2127', '310206', 'ตูมใหญ่   ', '251', '20', '3');
INSERT INTO `district` VALUES ('2128', '310207', 'หนองขมาร   ', '251', '20', '3');
INSERT INTO `district` VALUES ('2129', '310301', 'กระสัง', '252', '20', '3');
INSERT INTO `district` VALUES ('2130', '310302', 'ลำดวน   ', '252', '20', '3');
INSERT INTO `district` VALUES ('2131', '310303', 'สองชั้น   ', '252', '20', '3');
INSERT INTO `district` VALUES ('2132', '310304', 'สูงเนิน   ', '252', '20', '3');
INSERT INTO `district` VALUES ('2133', '310305', 'หนองเต็ง   ', '252', '20', '3');
INSERT INTO `district` VALUES ('2134', '310306', 'เมืองไผ่   ', '252', '20', '3');
INSERT INTO `district` VALUES ('2135', '310307', 'ชุมแสง   ', '252', '20', '3');
INSERT INTO `district` VALUES ('2136', '310308', 'บ้านปรือ   ', '252', '20', '3');
INSERT INTO `district` VALUES ('2137', '310309', 'ห้วยสำราญ   ', '252', '20', '3');
INSERT INTO `district` VALUES ('2138', '310310', 'กันทรารมย์   ', '252', '20', '3');
INSERT INTO `district` VALUES ('2139', '310311', 'ศรีภูมิ   ', '252', '20', '3');
INSERT INTO `district` VALUES ('2140', '310401', 'นางรอง   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2141', '310402', 'ตาเป๊ก*   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2142', '310403', 'สะเดา   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2143', '310404', '*ชำนิ   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2144', '310405', 'ชุมแสง   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2145', '310406', 'หนองโบสถ์   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2146', '310407', '*หนองปล่อง   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2147', '310408', 'หนองกง   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2148', '310409', '*ทุ่งจังหัน   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2149', '310410', '*เมืองยาง   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2150', '310411', 'เจริญสุข*   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2151', '310412', '*โนนสุวรรณ   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2152', '310413', 'ถนนหัก   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2153', '310414', 'หนองไทร   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2154', '310415', 'ก้านเหลือง   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2155', '310416', 'บ้านสิงห์   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2156', '310417', 'ลำไทรโยง   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2157', '310418', 'ทรัพย์พระยา   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2158', '310419', 'อีสานเขต*   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2159', '310420', '*ดงอีจาน   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2160', '310421', '*โกรกแก้ว   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2161', '310422', '*ช่อผกา   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2162', '310423', '*ละลวด   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2163', '310424', 'หนองยายพิมพ์   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2164', '310425', 'หัวถนน   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2165', '310426', 'ทุ่งแสงทอง   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2166', '310427', 'หนองโสน   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2167', '310494', '*หนองปล่อง   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2168', '310495', '*ชำนิ   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2169', '310496', '*ดอนอะราง   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2170', '310497', '*เมืองไผ่   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2171', '310498', '*เย้ยปราสาท   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2172', '310499', '*หนองกี่   ', '253', '20', '3');
INSERT INTO `district` VALUES ('2173', '310501', 'หนองกี่   ', '254', '20', '3');
INSERT INTO `district` VALUES ('2174', '310502', 'เย้ยปราสาท   ', '254', '20', '3');
INSERT INTO `district` VALUES ('2175', '310503', 'เมืองไผ่   ', '254', '20', '3');
INSERT INTO `district` VALUES ('2176', '310504', 'ดอนอะราง   ', '254', '20', '3');
INSERT INTO `district` VALUES ('2177', '310505', 'โคกสว่าง   ', '254', '20', '3');
INSERT INTO `district` VALUES ('2178', '310506', 'ทุ่งกระตาดพัฒนา   ', '254', '20', '3');
INSERT INTO `district` VALUES ('2179', '310507', 'ทุ่งกระเต็น   ', '254', '20', '3');
INSERT INTO `district` VALUES ('2180', '310508', 'ท่าโพธิ์ชัย   ', '254', '20', '3');
INSERT INTO `district` VALUES ('2181', '310509', 'โคกสูง   ', '254', '20', '3');
INSERT INTO `district` VALUES ('2182', '310510', 'บุกระสัง   ', '254', '20', '3');
INSERT INTO `district` VALUES ('2183', '310601', 'ละหานทราย   ', '255', '20', '3');
INSERT INTO `district` VALUES ('2184', '310602', 'ถาวร*   ', '255', '20', '3');
INSERT INTO `district` VALUES ('2185', '310603', 'ตาจง   ', '255', '20', '3');
INSERT INTO `district` VALUES ('2186', '310604', 'สำโรงใหม่   ', '255', '20', '3');
INSERT INTO `district` VALUES ('2187', '310605', '*โนนดินแดง   ', '255', '20', '3');
INSERT INTO `district` VALUES ('2188', '310606', 'ยายแย้มวัฒนา*   ', '255', '20', '3');
INSERT INTO `district` VALUES ('2189', '310607', 'หนองแวง   ', '255', '20', '3');
INSERT INTO `district` VALUES ('2190', '310608', '*ลำนางรอง   ', '255', '20', '3');
INSERT INTO `district` VALUES ('2191', '310609', '*ส้มป่อย   ', '255', '20', '3');
INSERT INTO `district` VALUES ('2192', '310610', 'หนองตะครอง   ', '255', '20', '3');
INSERT INTO `district` VALUES ('2193', '310611', 'โคกว่าน   ', '255', '20', '3');
INSERT INTO `district` VALUES ('2194', '310699', '*ไทยเจริญ   ', '255', '20', '3');
INSERT INTO `district` VALUES ('2195', '310701', 'ประโคนชัย   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2196', '310702', 'แสลงโทน   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2197', '310703', 'บ้านไทร   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2198', '310704', '*จันดุม   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2199', '310705', 'ละเวี้ย   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2200', '310706', 'จรเข้มาก   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2201', '310707', 'ปังกู   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2202', '310708', 'โคกย่าง   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2203', '310709', '*โคกขมิ้น   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2204', '310710', 'โคกม้า   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2205', '310711', '*ป่าชัน   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2206', '310712', '*สะเดา   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2207', '310713', 'ไพศาล   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2208', '310714', 'ตะโกตาพิ   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2209', '310715', 'เขาคอก   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2210', '310716', 'หนองบอน   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2211', '310717', '*สำโรง   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2212', '310718', 'โคกมะขาม   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2213', '310719', 'โคกตูม   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2214', '310720', 'ประทัดบุ   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2215', '310721', 'สี่เหลี่ยม   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2216', '310797', '*ป่าชัน   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2217', '310798', '*โคกขมิ้น   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2218', '310799', '*จันดุม   ', '256', '20', '3');
INSERT INTO `district` VALUES ('2219', '310801', 'บ้านกรวด   ', '257', '20', '3');
INSERT INTO `district` VALUES ('2220', '310802', 'โนนเจริญ   ', '257', '20', '3');
INSERT INTO `district` VALUES ('2221', '310803', 'หนองไม้งาม   ', '257', '20', '3');
INSERT INTO `district` VALUES ('2222', '310804', 'ปราสาท   ', '257', '20', '3');
INSERT INTO `district` VALUES ('2223', '310805', 'สายตะกู   ', '257', '20', '3');
INSERT INTO `district` VALUES ('2224', '310806', 'หินลาด   ', '257', '20', '3');
INSERT INTO `district` VALUES ('2225', '310807', 'บึงเจริญ   ', '257', '20', '3');
INSERT INTO `district` VALUES ('2226', '310808', 'จันทบเพชร   ', '257', '20', '3');
INSERT INTO `district` VALUES ('2227', '310809', 'เขาดินเหนือ   ', '257', '20', '3');
INSERT INTO `district` VALUES ('2228', '310901', 'พุทไธสง   ', '258', '20', '3');
INSERT INTO `district` VALUES ('2229', '310902', 'มะเฟือง   ', '258', '20', '3');
INSERT INTO `district` VALUES ('2230', '310903', 'บ้านจาน   ', '258', '20', '3');
INSERT INTO `district` VALUES ('2231', '310904', '*หนองแวง   ', '258', '20', '3');
INSERT INTO `district` VALUES ('2232', '310905', '*ทองหลาง   ', '258', '20', '3');
INSERT INTO `district` VALUES ('2233', '310906', 'บ้านเป้า   ', '258', '20', '3');
INSERT INTO `district` VALUES ('2234', '310907', 'บ้านแวง   ', '258', '20', '3');
INSERT INTO `district` VALUES ('2235', '310908', '*บ้านแดงใหญ่   ', '258', '20', '3');
INSERT INTO `district` VALUES ('2236', '310909', 'บ้านยาง   ', '258', '20', '3');
INSERT INTO `district` VALUES ('2237', '310910', 'หายโศก   ', '258', '20', '3');
INSERT INTO `district` VALUES ('2238', '310911', '*กู่สวนแตง   ', '258', '20', '3');
INSERT INTO `district` VALUES ('2239', '310912', '*หนองเยือง   ', '258', '20', '3');
INSERT INTO `district` VALUES ('2240', '311001', 'ลำปลายมาศ   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2241', '311002', 'หนองคู   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2242', '311003', 'แสลงพัน   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2243', '311004', 'ทะเมนชัย   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2244', '311005', 'ตลาดโพธิ์   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2245', '311006', 'หนองกะทิง   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2246', '311007', 'โคกกลาง   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2247', '311008', 'โคกสะอาด   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2248', '311009', 'เมืองแฝก   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2249', '311010', 'บ้านยาง   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2250', '311011', 'ผไทรินทร์   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2251', '311012', 'โคกล่าม   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2252', '311013', 'หินโคน   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2253', '311014', 'หนองบัวโคก   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2254', '311015', 'บุโพธิ์   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2255', '311016', 'หนองโดน   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2256', '311097', '*ไทยสามัคคี   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2257', '311098', '*ห้วยหิน   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2258', '311099', '*สระแก้ว   ', '259', '20', '3');
INSERT INTO `district` VALUES ('2259', '311101', 'สตึก   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2260', '311102', 'นิคม   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2261', '311103', 'ทุ่งวัง   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2262', '311104', 'เมืองแก   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2263', '311105', 'หนองใหญ่   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2264', '311106', 'ร่อนทอง   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2265', '311107', 'แคนดง*   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2266', '311108', 'ดงพลอง*   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2267', '311109', 'ดอนมนต์   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2268', '311110', 'ชุมแสง   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2269', '311111', 'ท่าม่วง   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2270', '311112', 'สะแก   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2271', '311113', 'สระบัว*   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2272', '311114', 'สนามชัย   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2273', '311115', 'กระสัง   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2274', '311116', 'หัวฝาย*   ', '260', '20', '3');
INSERT INTO `district` VALUES ('2275', '311201', 'ปะคำ   ', '261', '20', '3');
INSERT INTO `district` VALUES ('2276', '311202', 'ไทยเจริญ   ', '261', '20', '3');
INSERT INTO `district` VALUES ('2277', '311203', 'หนองบัว   ', '261', '20', '3');
INSERT INTO `district` VALUES ('2278', '311204', 'โคกมะม่วง   ', '261', '20', '3');
INSERT INTO `district` VALUES ('2279', '311205', 'หูทำนบ   ', '261', '20', '3');
INSERT INTO `district` VALUES ('2280', '311301', 'นาโพธิ์   ', '262', '20', '3');
INSERT INTO `district` VALUES ('2281', '311302', 'บ้านคู   ', '262', '20', '3');
INSERT INTO `district` VALUES ('2282', '311303', 'บ้านดู่   ', '262', '20', '3');
INSERT INTO `district` VALUES ('2283', '311304', 'ดอนกอก   ', '262', '20', '3');
INSERT INTO `district` VALUES ('2284', '311305', 'ศรีสว่าง   ', '262', '20', '3');
INSERT INTO `district` VALUES ('2285', '311401', 'สระแก้ว   ', '263', '20', '3');
INSERT INTO `district` VALUES ('2286', '311402', 'ห้วยหิน   ', '263', '20', '3');
INSERT INTO `district` VALUES ('2287', '311403', 'ไทยสามัคคี   ', '263', '20', '3');
INSERT INTO `district` VALUES ('2288', '311404', 'หนองชัยศรี   ', '263', '20', '3');
INSERT INTO `district` VALUES ('2289', '311405', 'เสาเดียว   ', '263', '20', '3');
INSERT INTO `district` VALUES ('2290', '311406', 'เมืองฝ้าย   ', '263', '20', '3');
INSERT INTO `district` VALUES ('2291', '311407', 'สระทอง   ', '263', '20', '3');
INSERT INTO `district` VALUES ('2292', '311501', 'จันดุม   ', '264', '20', '3');
INSERT INTO `district` VALUES ('2293', '311502', 'โคกขมิ้น   ', '264', '20', '3');
INSERT INTO `district` VALUES ('2294', '311503', 'ป่าชัน   ', '264', '20', '3');
INSERT INTO `district` VALUES ('2295', '311504', 'สะเดา   ', '264', '20', '3');
INSERT INTO `district` VALUES ('2296', '311505', 'สำโรง   ', '264', '20', '3');
INSERT INTO `district` VALUES ('2297', '311601', 'ห้วยราช   ', '265', '20', '3');
INSERT INTO `district` VALUES ('2298', '311602', 'สามแวง   ', '265', '20', '3');
INSERT INTO `district` VALUES ('2299', '311603', 'ตาเสา   ', '265', '20', '3');
INSERT INTO `district` VALUES ('2300', '311604', 'บ้านตะโก   ', '265', '20', '3');
INSERT INTO `district` VALUES ('2301', '311605', 'สนวน   ', '265', '20', '3');
INSERT INTO `district` VALUES ('2302', '311606', 'โคกเหล็ก   ', '265', '20', '3');
INSERT INTO `district` VALUES ('2303', '311607', 'เมืองโพธิ์   ', '265', '20', '3');
INSERT INTO `district` VALUES ('2304', '311608', 'ห้วยราชา   ', '265', '20', '3');
INSERT INTO `district` VALUES ('2305', '311701', 'โนนสุวรรณ   ', '266', '20', '3');
INSERT INTO `district` VALUES ('2306', '311702', 'ทุ่งจังหัน   ', '266', '20', '3');
INSERT INTO `district` VALUES ('2307', '311703', 'โกรกแก้ว   ', '266', '20', '3');
INSERT INTO `district` VALUES ('2308', '311704', 'ดงอีจาน   ', '266', '20', '3');
INSERT INTO `district` VALUES ('2309', '311801', 'ชำนิ   ', '267', '20', '3');
INSERT INTO `district` VALUES ('2310', '311802', 'หนองปล่อง   ', '267', '20', '3');
INSERT INTO `district` VALUES ('2311', '311803', 'เมืองยาง   ', '267', '20', '3');
INSERT INTO `district` VALUES ('2312', '311804', 'ช่อผกา   ', '267', '20', '3');
INSERT INTO `district` VALUES ('2313', '311805', 'ละลวด   ', '267', '20', '3');
INSERT INTO `district` VALUES ('2314', '311806', 'โคกสนวน   ', '267', '20', '3');
INSERT INTO `district` VALUES ('2315', '311901', 'หนองแวง   ', '268', '20', '3');
INSERT INTO `district` VALUES ('2316', '311902', 'ทองหลาง   ', '268', '20', '3');
INSERT INTO `district` VALUES ('2317', '311903', 'แดงใหญ่   ', '268', '20', '3');
INSERT INTO `district` VALUES ('2318', '311904', 'กู่สวนแตง   ', '268', '20', '3');
INSERT INTO `district` VALUES ('2319', '311905', 'หนองเยือง   ', '268', '20', '3');
INSERT INTO `district` VALUES ('2320', '312001', 'โนนดินแดง   ', '269', '20', '3');
INSERT INTO `district` VALUES ('2321', '312002', 'ส้มป่อย   ', '269', '20', '3');
INSERT INTO `district` VALUES ('2322', '312003', 'ลำนางรอง   ', '269', '20', '3');
INSERT INTO `district` VALUES ('2323', '312101', 'บ้านด่าน   ', '270', '20', '3');
INSERT INTO `district` VALUES ('2324', '312102', 'ปราสาท   ', '270', '20', '3');
INSERT INTO `district` VALUES ('2325', '312103', 'วังเหนือ   ', '270', '20', '3');
INSERT INTO `district` VALUES ('2326', '312104', 'โนนขวาง   ', '270', '20', '3');
INSERT INTO `district` VALUES ('2327', '312201', 'แคนดง   ', '271', '20', '3');
INSERT INTO `district` VALUES ('2328', '312202', 'ดงพลอง   ', '271', '20', '3');
INSERT INTO `district` VALUES ('2329', '312203', 'สระบัว   ', '271', '20', '3');
INSERT INTO `district` VALUES ('2330', '312204', 'หัวฝาย   ', '271', '20', '3');
INSERT INTO `district` VALUES ('2331', '312301', 'เจริญสุข   ', '272', '20', '3');
INSERT INTO `district` VALUES ('2332', '312302', 'ตาเป๊ก   ', '272', '20', '3');
INSERT INTO `district` VALUES ('2333', '312303', 'อีสานเขต   ', '272', '20', '3');
INSERT INTO `district` VALUES ('2334', '312304', 'ถาวร   ', '272', '20', '3');
INSERT INTO `district` VALUES ('2335', '312305', 'ยายแย้มวัฒนา   ', '272', '20', '3');
INSERT INTO `district` VALUES ('2336', '320101', 'ในเมือง   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2337', '320102', 'ตั้งใจ   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2338', '320103', 'เพี้ยราม   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2339', '320104', 'นาดี   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2340', '320105', 'ท่าสว่าง   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2341', '320106', 'สลักได   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2342', '320107', 'ตาอ็อง   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2343', '320108', 'ตากูก*   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2344', '320109', 'สำโรง   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2345', '320110', 'แกใหญ่   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2346', '320111', 'นอกเมือง   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2347', '320112', 'คอโค   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2348', '320113', 'สวาย   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2349', '320114', 'เฉนียง   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2350', '320115', 'บึง*   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2351', '320116', 'เทนมีย์   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2352', '320117', 'เขวาสินรินทร์*   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2353', '320118', 'นาบัว   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2354', '320119', 'เมืองที   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2355', '320120', 'ราม   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2356', '320121', 'บุฤาษี   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2357', '320122', 'ตระแสง   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2358', '320123', 'บ้านแร่*   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2359', '320124', 'ปราสาททอง*   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2360', '320125', 'แสลงพันธ์   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2361', '320126', 'กาเกาะ   ', '273', '21', '3');
INSERT INTO `district` VALUES ('2362', '320201', 'ชุมพลบุรี   ', '274', '21', '3');
INSERT INTO `district` VALUES ('2363', '320202', 'นาหนองไผ่   ', '274', '21', '3');
INSERT INTO `district` VALUES ('2364', '320203', 'ไพรขลา   ', '274', '21', '3');
INSERT INTO `district` VALUES ('2365', '320204', 'ศรีณรงค์   ', '274', '21', '3');
INSERT INTO `district` VALUES ('2366', '320205', 'ยะวึก   ', '274', '21', '3');
INSERT INTO `district` VALUES ('2367', '320206', 'เมืองบัว   ', '274', '21', '3');
INSERT INTO `district` VALUES ('2368', '320207', 'สระขุด   ', '274', '21', '3');
INSERT INTO `district` VALUES ('2369', '320208', 'กระเบื้อง   ', '274', '21', '3');
INSERT INTO `district` VALUES ('2370', '320209', 'หนองเรือ   ', '274', '21', '3');
INSERT INTO `district` VALUES ('2371', '320301', 'ท่าตูม   ', '275', '21', '3');
INSERT INTO `district` VALUES ('2372', '320302', 'กระโพ   ', '275', '21', '3');
INSERT INTO `district` VALUES ('2373', '320303', 'พรมเทพ   ', '275', '21', '3');
INSERT INTO `district` VALUES ('2374', '320304', 'โพนครก   ', '275', '21', '3');
INSERT INTO `district` VALUES ('2375', '320305', 'เมืองแก   ', '275', '21', '3');
INSERT INTO `district` VALUES ('2376', '320306', 'บะ   ', '275', '21', '3');
INSERT INTO `district` VALUES ('2377', '320307', 'หนองบัว   ', '275', '21', '3');
INSERT INTO `district` VALUES ('2378', '320308', 'บัวโคก   ', '275', '21', '3');
INSERT INTO `district` VALUES ('2379', '320309', 'หนองเมธี   ', '275', '21', '3');
INSERT INTO `district` VALUES ('2380', '320310', 'ทุ่งกุลา   ', '275', '21', '3');
INSERT INTO `district` VALUES ('2381', '320401', 'จอมพระ   ', '276', '21', '3');
INSERT INTO `district` VALUES ('2382', '320402', 'เมืองลีง   ', '276', '21', '3');
INSERT INTO `district` VALUES ('2383', '320403', 'กระหาด   ', '276', '21', '3');
INSERT INTO `district` VALUES ('2384', '320404', 'บุแกรง   ', '276', '21', '3');
INSERT INTO `district` VALUES ('2385', '320405', 'หนองสนิท   ', '276', '21', '3');
INSERT INTO `district` VALUES ('2386', '320406', 'บ้านผือ   ', '276', '21', '3');
INSERT INTO `district` VALUES ('2387', '320407', 'ลุ่มระวี   ', '276', '21', '3');
INSERT INTO `district` VALUES ('2388', '320408', 'ชุมแสง   ', '276', '21', '3');
INSERT INTO `district` VALUES ('2389', '320409', 'เป็นสุข   ', '276', '21', '3');
INSERT INTO `district` VALUES ('2390', '320501', 'กังแอน   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2391', '320502', 'ทมอ   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2392', '320503', 'ไพล   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2393', '320504', 'ปรือ   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2394', '320505', 'ทุ่งมน   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2395', '320506', 'ตาเบา   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2396', '320507', 'หนองใหญ่   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2397', '320508', 'โคกยาง   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2398', '320509', 'โคกสะอาด   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2399', '320510', 'บ้านไทร   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2400', '320511', 'โชคนาสาม   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2401', '320512', 'เชื้อเพลิง   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2402', '320513', 'ปราสาททนง   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2403', '320514', 'ตานี   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2404', '320515', 'บ้านพลวง   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2405', '320516', 'กันตวจระมวล   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2406', '320517', 'สมุด   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2407', '320518', 'ประทัดบุ   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2408', '320595', '*ด่าน   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2409', '320596', '*คูตัน   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2410', '320597', '*โคกกลาง   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2411', '320598', '*บักได   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2412', '320599', '*กาบเชิง   ', '277', '21', '3');
INSERT INTO `district` VALUES ('2413', '320601', 'กาบเชิง   ', '278', '21', '3');
INSERT INTO `district` VALUES ('2414', '320602', '*บักได   ', '278', '21', '3');
INSERT INTO `district` VALUES ('2415', '320603', '*โคกกลาง   ', '278', '21', '3');
INSERT INTO `district` VALUES ('2416', '320604', 'คูตัน   ', '278', '21', '3');
INSERT INTO `district` VALUES ('2417', '320605', 'ด่าน   ', '278', '21', '3');
INSERT INTO `district` VALUES ('2418', '320606', 'แนงมุด   ', '278', '21', '3');
INSERT INTO `district` VALUES ('2419', '320607', 'โคกตะเคียน   ', '278', '21', '3');
INSERT INTO `district` VALUES ('2420', '320608', '*ตาเมียง   ', '278', '21', '3');
INSERT INTO `district` VALUES ('2421', '320609', '*จีกแดก   ', '278', '21', '3');
INSERT INTO `district` VALUES ('2422', '320610', 'ตะเคียน   ', '278', '21', '3');
INSERT INTO `district` VALUES ('2423', '320701', 'รัตนบุรี   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2424', '320702', 'ธาตุ   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2425', '320703', 'แก   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2426', '320704', 'ดอนแรด   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2427', '320705', 'หนองบัวทอง   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2428', '320706', 'หนองบัวบาน   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2429', '320707', 'หนองหลวง*   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2430', '320708', 'หนองเทพ*   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2431', '320709', 'ไผ่   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2432', '320710', 'โนน*   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2433', '320711', 'เบิด   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2434', '320712', 'ระเวียง*   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2435', '320713', 'น้ำเขียว   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2436', '320714', 'กุดขาคีม   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2437', '320715', 'ยางสว่าง   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2438', '320716', 'ทับใหญ่   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2439', '320717', 'คำผง*   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2440', '320795', '*สนม   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2441', '320796', '*หนองระฆัง   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2442', '320797', '*นานวน   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2443', '320798', '*โพนโก   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2444', '320799', '*แคน   ', '279', '21', '3');
INSERT INTO `district` VALUES ('2445', '320801', 'สนม   ', '280', '21', '3');
INSERT INTO `district` VALUES ('2446', '320802', 'โพนโก   ', '280', '21', '3');
INSERT INTO `district` VALUES ('2447', '320803', 'หนองระฆัง   ', '280', '21', '3');
INSERT INTO `district` VALUES ('2448', '320804', 'นานวน   ', '280', '21', '3');
INSERT INTO `district` VALUES ('2449', '320805', 'แคน   ', '280', '21', '3');
INSERT INTO `district` VALUES ('2450', '320806', 'หัวงัว   ', '280', '21', '3');
INSERT INTO `district` VALUES ('2451', '320807', 'หนองอียอ   ', '280', '21', '3');
INSERT INTO `district` VALUES ('2452', '320901', 'ระแงง   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2453', '320902', 'ตรึม   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2454', '320903', 'จารพัต   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2455', '320904', 'ยาง   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2456', '320905', 'แตล   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2457', '320906', 'หนองบัว   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2458', '320907', 'คาละแมะ   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2459', '320908', 'หนองเหล็ก   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2460', '320909', 'หนองขวาว   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2461', '320910', 'ช่างปี่   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2462', '320911', 'กุดหวาย   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2463', '320912', 'ขวาวใหญ่   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2464', '320913', 'นารุ่ง   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2465', '320914', 'ตรมไพร   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2466', '320915', 'ผักไหม   ', '281', '21', '3');
INSERT INTO `district` VALUES ('2467', '321001', 'สังขะ   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2468', '321002', 'ขอนแตก   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2469', '321003', '*ณรงค์   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2470', '321004', '*แจนแวน   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2471', '321005', '*ตรวจ   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2472', '321006', 'ดม   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2473', '321007', 'พระแก้ว   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2474', '321008', 'บ้านจารย์   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2475', '321009', 'กระเทียม   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2476', '321010', 'สะกาด   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2477', '321011', 'ตาตุม   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2478', '321012', 'ทับทัน   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2479', '321013', 'ตาคง   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2480', '321014', '*ศรีสุข   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2481', '321015', 'บ้านชบ   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2482', '321016', '*หนองแวง   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2483', '321017', 'เทพรักษา   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2484', '321093', '*คูตัน   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2485', '321094', '*ด่าน   ', '282', '21', '3');
INSERT INTO `district` VALUES ('2486', '321101', 'ลำดวน   ', '283', '21', '3');
INSERT INTO `district` VALUES ('2487', '321102', 'โชคเหนือ   ', '283', '21', '3');
INSERT INTO `district` VALUES ('2488', '321103', 'อู่โลก   ', '283', '21', '3');
INSERT INTO `district` VALUES ('2489', '321104', 'ตรำดม   ', '283', '21', '3');
INSERT INTO `district` VALUES ('2490', '321105', 'ตระเปียงเตีย   ', '283', '21', '3');
INSERT INTO `district` VALUES ('2491', '321201', 'สำโรงทาบ   ', '284', '21', '3');
INSERT INTO `district` VALUES ('2492', '321202', 'หนองไผ่ล้อม   ', '284', '21', '3');
INSERT INTO `district` VALUES ('2493', '321203', 'กระออม   ', '284', '21', '3');
INSERT INTO `district` VALUES ('2494', '321204', 'หนองฮะ   ', '284', '21', '3');
INSERT INTO `district` VALUES ('2495', '321205', 'ศรีสุข   ', '284', '21', '3');
INSERT INTO `district` VALUES ('2496', '321206', 'เกาะแก้ว   ', '284', '21', '3');
INSERT INTO `district` VALUES ('2497', '321207', 'หมื่นศรี   ', '284', '21', '3');
INSERT INTO `district` VALUES ('2498', '321208', 'เสม็จ   ', '284', '21', '3');
INSERT INTO `district` VALUES ('2499', '321209', 'สะโน   ', '284', '21', '3');
INSERT INTO `district` VALUES ('2500', '321210', 'ประดู่   ', '284', '21', '3');
INSERT INTO `district` VALUES ('2501', '321301', 'บัวเชด   ', '285', '21', '3');
INSERT INTO `district` VALUES ('2502', '321302', 'สะเดา   ', '285', '21', '3');
INSERT INTO `district` VALUES ('2503', '321303', 'จรัส   ', '285', '21', '3');
INSERT INTO `district` VALUES ('2504', '321304', 'ตาวัง   ', '285', '21', '3');
INSERT INTO `district` VALUES ('2505', '321305', 'อาโพน   ', '285', '21', '3');
INSERT INTO `district` VALUES ('2506', '321306', 'สำเภาลูน   ', '285', '21', '3');
INSERT INTO `district` VALUES ('2507', '321401', 'บักได   ', '286', '21', '3');
INSERT INTO `district` VALUES ('2508', '321402', 'โคกกลาง   ', '286', '21', '3');
INSERT INTO `district` VALUES ('2509', '321403', 'จีกแดก   ', '286', '21', '3');
INSERT INTO `district` VALUES ('2510', '321404', 'ตาเมียง   ', '286', '21', '3');
INSERT INTO `district` VALUES ('2511', '321501', 'ณรงค์   ', '287', '21', '3');
INSERT INTO `district` VALUES ('2512', '321502', 'แจนแวน   ', '287', '21', '3');
INSERT INTO `district` VALUES ('2513', '321503', 'ตรวจ   ', '287', '21', '3');
INSERT INTO `district` VALUES ('2514', '321504', 'หนองแวง   ', '287', '21', '3');
INSERT INTO `district` VALUES ('2515', '321505', 'ศรีสุข   ', '287', '21', '3');
INSERT INTO `district` VALUES ('2516', '321601', 'เขวาสินรินทร์   ', '288', '21', '3');
INSERT INTO `district` VALUES ('2517', '321602', 'บึง   ', '288', '21', '3');
INSERT INTO `district` VALUES ('2518', '321603', 'ตากูก   ', '288', '21', '3');
INSERT INTO `district` VALUES ('2519', '321604', 'ปราสาททอง   ', '288', '21', '3');
INSERT INTO `district` VALUES ('2520', '321605', 'บ้านแร่   ', '288', '21', '3');
INSERT INTO `district` VALUES ('2521', '321701', 'หนองหลวง   ', '289', '21', '3');
INSERT INTO `district` VALUES ('2522', '321702', 'คำผง   ', '289', '21', '3');
INSERT INTO `district` VALUES ('2523', '321703', 'โนน   ', '289', '21', '3');
INSERT INTO `district` VALUES ('2524', '321704', 'ระเวียง   ', '289', '21', '3');
INSERT INTO `district` VALUES ('2525', '321705', 'หนองเทพ   ', '289', '21', '3');
INSERT INTO `district` VALUES ('2526', '330101', 'เมืองเหนือ   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2527', '330102', 'เมืองใต้   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2528', '330103', 'คูซอด   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2529', '330104', 'ซำ   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2530', '330105', 'จาน   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2531', '330106', 'ตะดอบ   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2532', '330107', 'หนองครก   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2533', '330108', '*โนนเพ็ก   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2534', '330109', '*พรหมสวัสดิ์   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2535', '330110', '*พยุห์   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2536', '330111', 'โพนข่า   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2537', '330112', 'โพนค้อ   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2538', '330113', '*ธาตุ   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2539', '330114', '*ตำแย   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2540', '330115', 'โพนเขวา   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2541', '330116', 'หญ้าปล้อง   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2542', '330117', '*บุสูง   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2543', '330118', 'ทุ่ม   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2544', '330119', 'หนองไฮ   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2545', '330120', '*ดวนใหญ่   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2546', '330121', 'หนองแก้ว   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2547', '330122', 'น้ำคำ   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2548', '330123', 'โพธิ์   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2549', '330124', 'หมากเขียบ   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2550', '330125', '*บ่อแก้ว   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2551', '330126', '*ศรีสำราญ   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2552', '330127', 'หนองไผ่   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2553', '330128', '*หนองค้า   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2554', '330196', '*ดวนใหญ่   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2555', '330197', '*ธาตุ   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2556', '330198', '*บุสูง   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2557', '330199', '*คอนกาม   ', '290', '22', '3');
INSERT INTO `district` VALUES ('2558', '330201', 'ยางชุมน้อย   ', '291', '22', '3');
INSERT INTO `district` VALUES ('2559', '330202', 'ลิ้นฟ้า   ', '291', '22', '3');
INSERT INTO `district` VALUES ('2560', '330203', 'คอนกาม   ', '291', '22', '3');
INSERT INTO `district` VALUES ('2561', '330204', 'โนนคูณ   ', '291', '22', '3');
INSERT INTO `district` VALUES ('2562', '330205', 'กุดเมืองฮาม   ', '291', '22', '3');
INSERT INTO `district` VALUES ('2563', '330206', 'บึงบอน   ', '291', '22', '3');
INSERT INTO `district` VALUES ('2564', '330207', 'ยางชุมใหญ่   ', '291', '22', '3');
INSERT INTO `district` VALUES ('2565', '330301', 'ดูน   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2566', '330302', 'โนนสัง   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2567', '330303', 'หนองหัวช้าง   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2568', '330304', 'ยาง   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2569', '330305', 'หนองแวง   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2570', '330306', 'หนองแก้ว   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2571', '330307', 'ทาม   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2572', '330308', 'ละทาย   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2573', '330309', 'เมืองน้อย   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2574', '330310', 'อีปาด   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2575', '330311', 'บัวน้อย   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2576', '330312', 'หนองบัว   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2577', '330313', 'ดู่   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2578', '330314', 'ผักแพว   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2579', '330315', 'จาน   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2580', '330316', '*ตองบิด   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2581', '330317', '*ละเอาะ   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2582', '330318', '*น้ำเกลี้ยง   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2583', '330319', '*เขิน   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2584', '330320', 'คำเนียม   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2585', '330394', '*ตองปิด   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2586', '330395', '*ละเอาะ   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2587', '330396', '*หนองกุง   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2588', '330397', '*โพธิ์   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2589', '330398', '*บก   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2590', '330399', '*โนนค้อ   ', '292', '22', '3');
INSERT INTO `district` VALUES ('2591', '330401', 'บึงมะลู   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2592', '330402', 'กุดเสลา   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2593', '330403', 'เมือง   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2594', '330404', '*หนองหว้า   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2595', '330405', 'สังเม็ก   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2596', '330406', 'น้ำอ้อม   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2597', '330407', 'ละลาย   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2598', '330408', 'รุง   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2599', '330409', 'ตระกาจ   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2600', '330410', '*เสียว   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2601', '330411', 'จานใหญ่   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2602', '330412', 'ภูเงิน   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2603', '330413', 'ชำ   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2604', '330414', 'กระแชง   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2605', '330415', 'โนนสำราญ   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2606', '330416', 'หนองหญ้าลาด   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2607', '330417', '*หนองงูเหลือม   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2608', '330418', '*ท่าคล้อ   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2609', '330419', 'เสาธงชัย   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2610', '330420', 'ขนุน   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2611', '330421', 'สวนกล้วย   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2612', '330422', '*หนองฮาง   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2613', '330423', 'เวียงเหนือ   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2614', '330424', 'ทุ่งใหญ่   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2615', '330425', 'ภูผาหมอก   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2616', '330496', '*สระเยาว์   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2617', '330497', '*พิงพวย   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2618', '330498', '*ศรีแก้ว   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2619', '330499', '*ตูม   ', '293', '22', '3');
INSERT INTO `district` VALUES ('2620', '330501', 'กันทรารมย์   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2621', '330502', 'จะกง   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2622', '330503', 'ใจดี   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2623', '330504', 'ดองกำเม็ด   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2624', '330505', 'โสน   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2625', '330506', 'ปรือใหญ่   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2626', '330507', 'สะเดาใหญ่   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2627', '330508', 'ตาอุด   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2628', '330509', 'ห้วยเหนือ   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2629', '330510', 'ห้วยใต้   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2630', '330511', 'หัวเสือ   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2631', '330512', '*ละลม   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2632', '330513', 'ตะเคียน   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2633', '330514', '*โคกตาล   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2634', '330515', 'นิคมพัฒนา   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2635', '330516', '*ห้วยตามอญ   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2636', '330517', 'โคกเพชร   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2637', '330518', 'ปราสาท   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2638', '330519', '*ตะเคียนราม   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2639', '330520', '*ห้วยติ๊กชู   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2640', '330521', 'สำโรงตาเจ็น   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2641', '330522', 'ห้วยสำราญ   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2642', '330523', '*ดงรัก   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2643', '330524', 'กฤษณา   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2644', '330525', 'ลมศักดิ์   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2645', '330526', 'หนองฉลอง   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2646', '330527', 'ศรีตระกูล   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2647', '330528', 'ศรีสะอาด   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2648', '330599', '*ละลม   ', '294', '22', '3');
INSERT INTO `district` VALUES ('2649', '330601', 'ไพรบึง   ', '295', '22', '3');
INSERT INTO `district` VALUES ('2650', '330602', 'ดินแดง   ', '295', '22', '3');
INSERT INTO `district` VALUES ('2651', '330603', 'ปราสาทเยอ   ', '295', '22', '3');
INSERT INTO `district` VALUES ('2652', '330604', 'สำโรงพลัน   ', '295', '22', '3');
INSERT INTO `district` VALUES ('2653', '330605', 'สุขสวัสดิ์   ', '295', '22', '3');
INSERT INTO `district` VALUES ('2654', '330606', 'โนนปูน   ', '295', '22', '3');
INSERT INTO `district` VALUES ('2655', '330701', 'พิมาย   ', '296', '22', '3');
INSERT INTO `district` VALUES ('2656', '330702', 'กู่   ', '296', '22', '3');
INSERT INTO `district` VALUES ('2657', '330703', 'หนองเชียงทูน   ', '296', '22', '3');
INSERT INTO `district` VALUES ('2658', '330704', 'ตูม   ', '296', '22', '3');
INSERT INTO `district` VALUES ('2659', '330705', 'สมอ   ', '296', '22', '3');
INSERT INTO `district` VALUES ('2660', '330706', 'โพธิ์ศรี   ', '296', '22', '3');
INSERT INTO `district` VALUES ('2661', '330707', 'สำโรงปราสาท   ', '296', '22', '3');
INSERT INTO `district` VALUES ('2662', '330708', 'ดู่   ', '296', '22', '3');
INSERT INTO `district` VALUES ('2663', '330709', 'สวาย   ', '296', '22', '3');
INSERT INTO `district` VALUES ('2664', '330710', 'พิมายเหนือ   ', '296', '22', '3');
INSERT INTO `district` VALUES ('2665', '330801', 'สิ   ', '297', '22', '3');
INSERT INTO `district` VALUES ('2666', '330802', 'บักดอง   ', '297', '22', '3');
INSERT INTO `district` VALUES ('2667', '330803', 'พราน   ', '297', '22', '3');
INSERT INTO `district` VALUES ('2668', '330804', 'โพธิ์วงศ์   ', '297', '22', '3');
INSERT INTO `district` VALUES ('2669', '330805', 'ไพร   ', '297', '22', '3');
INSERT INTO `district` VALUES ('2670', '330806', 'กระหวัน   ', '297', '22', '3');
INSERT INTO `district` VALUES ('2671', '330807', 'ขุนหาญ   ', '297', '22', '3');
INSERT INTO `district` VALUES ('2672', '330808', 'โนนสูง   ', '297', '22', '3');
INSERT INTO `district` VALUES ('2673', '330809', 'กันทรอม   ', '297', '22', '3');
INSERT INTO `district` VALUES ('2674', '330810', 'ภูฝ้าย   ', '297', '22', '3');
INSERT INTO `district` VALUES ('2675', '330811', 'โพธิ์กระสังข์   ', '297', '22', '3');
INSERT INTO `district` VALUES ('2676', '330812', 'ห้วยจันทร์   ', '297', '22', '3');
INSERT INTO `district` VALUES ('2677', '330901', 'เมืองคง   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2678', '330902', 'เมืองแคน   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2679', '330903', 'หนองแค   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2680', '330904', 'กุง*   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2681', '330905', 'คลีกลิ้ง*   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2682', '330906', 'จิกสังข์ทอง   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2683', '330907', 'ด่าน   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2684', '330908', 'ดู่   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2685', '330909', 'หนองอึ่ง   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2686', '330910', 'บัวหุ่ง   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2687', '330911', 'ไผ่   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2688', '330912', 'ส้มป่อย   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2689', '330913', 'หนองหมี   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2690', '330914', 'หว้านคำ   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2691', '330915', 'สร้างปี่   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2692', '330916', 'โจดม่วง*   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2693', '330917', 'หนองบัวดง*   ', '298', '22', '3');
INSERT INTO `district` VALUES ('2694', '331001', 'กำแพง   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2695', '331002', 'อี่หล่ำ   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2696', '331003', 'ก้านเหลือง   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2697', '331004', 'ทุ่งไชย   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2698', '331005', 'สำโรง   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2699', '331006', 'แขม   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2700', '331007', 'หนองไฮ   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2701', '331008', 'ขะยูง   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2702', '331009', '*ตาโกน   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2703', '331010', 'ตาเกษ   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2704', '331011', 'หัวช้าง   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2705', '331012', 'รังแร้ง   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2706', '331013', '*เมืองจันทร์   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2707', '331014', 'แต้   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2708', '331015', 'แข้   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2709', '331016', 'โพธิ์ชัย   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2710', '331017', 'ปะอาว   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2711', '331018', 'หนองห้าง   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2712', '331019', '*โดด   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2713', '331020', '*เสียว   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2714', '331021', '*หนองม้า   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2715', '331022', 'สระกำแพงใหญ่   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2716', '331023', '*หนองใหญ่   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2717', '331024', 'โคกหล่าม   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2718', '331025', 'โคกจาน   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2719', '331026', '*ผือใหญ่   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2720', '331027', '*อีเซ   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2721', '331096', '*ผักไหม   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2722', '331097', '*กล้วยกว้าง   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2723', '331098', '*ห้วยทับทัน   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2724', '331099', '*เป๊าะ   ', '299', '22', '3');
INSERT INTO `district` VALUES ('2725', '331101', 'เป๊าะ   ', '300', '22', '3');
INSERT INTO `district` VALUES ('2726', '331102', 'บึงบูรพ์   ', '300', '22', '3');
INSERT INTO `district` VALUES ('2727', '331201', 'ห้วยทับทัน   ', '301', '22', '3');
INSERT INTO `district` VALUES ('2728', '331202', 'เมืองหลวง   ', '301', '22', '3');
INSERT INTO `district` VALUES ('2729', '331203', 'กล้วยกว้าง   ', '301', '22', '3');
INSERT INTO `district` VALUES ('2730', '331204', 'ผักไหม   ', '301', '22', '3');
INSERT INTO `district` VALUES ('2731', '331205', 'จานแสนไชย   ', '301', '22', '3');
INSERT INTO `district` VALUES ('2732', '331206', 'ปราสาท   ', '301', '22', '3');
INSERT INTO `district` VALUES ('2733', '331301', 'โนนค้อ   ', '302', '22', '3');
INSERT INTO `district` VALUES ('2734', '331302', 'บก   ', '302', '22', '3');
INSERT INTO `district` VALUES ('2735', '331303', 'โพธิ์   ', '302', '22', '3');
INSERT INTO `district` VALUES ('2736', '331304', 'หนองกุง   ', '302', '22', '3');
INSERT INTO `district` VALUES ('2737', '331305', 'เหล่ากวาง   ', '302', '22', '3');
INSERT INTO `district` VALUES ('2738', '331401', 'ศรีแก้ว   ', '303', '22', '3');
INSERT INTO `district` VALUES ('2739', '331402', 'พิงพวย   ', '303', '22', '3');
INSERT INTO `district` VALUES ('2740', '331403', 'สระเยาว์   ', '303', '22', '3');
INSERT INTO `district` VALUES ('2741', '331404', 'ตูม   ', '303', '22', '3');
INSERT INTO `district` VALUES ('2742', '331405', 'เสื่องข้าว   ', '303', '22', '3');
INSERT INTO `district` VALUES ('2743', '331406', 'ศรีโนนงาม   ', '303', '22', '3');
INSERT INTO `district` VALUES ('2744', '331407', 'สะพุง   ', '303', '22', '3');
INSERT INTO `district` VALUES ('2745', '331501', 'น้ำเกลี้ยง   ', '304', '22', '3');
INSERT INTO `district` VALUES ('2746', '331502', 'ละเอาะ   ', '304', '22', '3');
INSERT INTO `district` VALUES ('2747', '331503', 'ตองปิด   ', '304', '22', '3');
INSERT INTO `district` VALUES ('2748', '331504', 'เขิน   ', '304', '22', '3');
INSERT INTO `district` VALUES ('2749', '331505', 'รุ่งระวี   ', '304', '22', '3');
INSERT INTO `district` VALUES ('2750', '331506', 'คูบ   ', '304', '22', '3');
INSERT INTO `district` VALUES ('2751', '331601', 'บุสูง   ', '305', '22', '3');
INSERT INTO `district` VALUES ('2752', '331602', 'ธาตุ   ', '305', '22', '3');
INSERT INTO `district` VALUES ('2753', '331603', 'ดวนใหญ่   ', '305', '22', '3');
INSERT INTO `district` VALUES ('2754', '331604', 'บ่อแก้ว   ', '305', '22', '3');
INSERT INTO `district` VALUES ('2755', '331605', 'ศรีสำราญ   ', '305', '22', '3');
INSERT INTO `district` VALUES ('2756', '331606', 'ทุ่งสว่าง   ', '305', '22', '3');
INSERT INTO `district` VALUES ('2757', '331607', 'วังหิน   ', '305', '22', '3');
INSERT INTO `district` VALUES ('2758', '331608', 'โพนยาง   ', '305', '22', '3');
INSERT INTO `district` VALUES ('2759', '331701', 'โคกตาล   ', '306', '22', '3');
INSERT INTO `district` VALUES ('2760', '331702', 'ห้วยตามอญ   ', '306', '22', '3');
INSERT INTO `district` VALUES ('2761', '331703', 'ห้วยตึ๊กชู   ', '306', '22', '3');
INSERT INTO `district` VALUES ('2762', '331704', 'ละลม   ', '306', '22', '3');
INSERT INTO `district` VALUES ('2763', '331705', 'ตะเคียนราม   ', '306', '22', '3');
INSERT INTO `district` VALUES ('2764', '331706', 'ดงรัก   ', '306', '22', '3');
INSERT INTO `district` VALUES ('2765', '331707', 'ไพรพัฒนา   ', '306', '22', '3');
INSERT INTO `district` VALUES ('2766', '331801', 'เมืองจันทร์   ', '307', '22', '3');
INSERT INTO `district` VALUES ('2767', '331802', 'ตาโกน   ', '307', '22', '3');
INSERT INTO `district` VALUES ('2768', '331803', 'หนองใหญ่   ', '307', '22', '3');
INSERT INTO `district` VALUES ('2769', '331901', 'เสียว   ', '308', '22', '3');
INSERT INTO `district` VALUES ('2770', '331902', 'หนองหว้า   ', '308', '22', '3');
INSERT INTO `district` VALUES ('2771', '331903', 'หนองงูเหลือม   ', '308', '22', '3');
INSERT INTO `district` VALUES ('2772', '331904', 'หนองฮาง   ', '308', '22', '3');
INSERT INTO `district` VALUES ('2773', '331905', 'ท่าคล้อ   ', '308', '22', '3');
INSERT INTO `district` VALUES ('2774', '332001', 'พยุห์   ', '309', '22', '3');
INSERT INTO `district` VALUES ('2775', '332002', 'พรหมสวัสดิ์   ', '309', '22', '3');
INSERT INTO `district` VALUES ('2776', '332003', 'ตำแย   ', '309', '22', '3');
INSERT INTO `district` VALUES ('2777', '332004', 'โนนเพ็ก   ', '309', '22', '3');
INSERT INTO `district` VALUES ('2778', '332005', 'หนองค้า   ', '309', '22', '3');
INSERT INTO `district` VALUES ('2779', '332101', 'โดด   ', '310', '22', '3');
INSERT INTO `district` VALUES ('2780', '332102', 'เสียว   ', '310', '22', '3');
INSERT INTO `district` VALUES ('2781', '332103', 'หนองม้า   ', '310', '22', '3');
INSERT INTO `district` VALUES ('2782', '332104', 'ผือใหญ่   ', '310', '22', '3');
INSERT INTO `district` VALUES ('2783', '332105', 'อีเซ   ', '310', '22', '3');
INSERT INTO `district` VALUES ('2784', '332201', 'กุง   ', '311', '22', '3');
INSERT INTO `district` VALUES ('2785', '332202', 'คลีกลิ้ง   ', '311', '22', '3');
INSERT INTO `district` VALUES ('2786', '332203', 'หนองบัวดง   ', '311', '22', '3');
INSERT INTO `district` VALUES ('2787', '332204', 'โจดม่วง   ', '311', '22', '3');
INSERT INTO `district` VALUES ('2788', '340101', 'ในเมือง   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2789', '340102', '*โพนเมือง   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2790', '340103', '*ท่าเมือง   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2791', '340104', 'หัวเรือ   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2792', '340105', 'หนองขอน   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2793', '340106', '*ดอนมดแดง   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2794', '340107', 'ปทุม   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2795', '340108', 'ขามใหญ่   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2796', '340109', 'แจระแม   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2797', '340110', '*คำไฮใหญ่   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2798', '340111', 'หนองบ่อ   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2799', '340112', 'ไร่น้อย   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2800', '340113', 'กระโสบ   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2801', '340114', '*เหล่าแดง   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2802', '340115', '*เหล่าเสือโก้ก   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2803', '340116', 'กุดลาด   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2804', '340117', '*หนองบก   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2805', '340118', '*แพงใหญ่   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2806', '340119', 'ขี้เหล็ก   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2807', '340120', 'ปะอาว   ', '312', '23', '3');
INSERT INTO `district` VALUES ('2808', '340201', 'นาคำ   ', '313', '23', '3');
INSERT INTO `district` VALUES ('2809', '340202', 'แก้งกอก   ', '313', '23', '3');
INSERT INTO `district` VALUES ('2810', '340203', 'เอือดใหญ่   ', '313', '23', '3');
INSERT INTO `district` VALUES ('2811', '340204', 'วาริน   ', '313', '23', '3');
INSERT INTO `district` VALUES ('2812', '340205', 'ลาดควาย   ', '313', '23', '3');
INSERT INTO `district` VALUES ('2813', '340206', 'สงยาง   ', '313', '23', '3');
INSERT INTO `district` VALUES ('2814', '340207', 'ตะบ่าย   ', '313', '23', '3');
INSERT INTO `district` VALUES ('2815', '340208', 'คำไหล   ', '313', '23', '3');
INSERT INTO `district` VALUES ('2816', '340209', 'หนามแท่ง   ', '313', '23', '3');
INSERT INTO `district` VALUES ('2817', '340210', 'นาเลิน   ', '313', '23', '3');
INSERT INTO `district` VALUES ('2818', '340211', 'ดอนใหญ่   ', '313', '23', '3');
INSERT INTO `district` VALUES ('2819', '340301', 'โขงเจียม   ', '314', '23', '3');
INSERT INTO `district` VALUES ('2820', '340302', 'ห้วยยาง   ', '314', '23', '3');
INSERT INTO `district` VALUES ('2821', '340303', 'นาโพธิ์กลาง   ', '314', '23', '3');
INSERT INTO `district` VALUES ('2822', '340304', 'หนองแสงใหญ่   ', '314', '23', '3');
INSERT INTO `district` VALUES ('2823', '340305', 'ห้วยไผ่   ', '314', '23', '3');
INSERT INTO `district` VALUES ('2824', '340306', 'คำเขื่อนแก้ว   ', '314', '23', '3');
INSERT INTO `district` VALUES ('2825', '340401', 'เขื่องใน   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2826', '340402', 'สร้างถ่อ   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2827', '340403', 'ค้อทอง   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2828', '340404', 'ก่อเอ้   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2829', '340405', 'หัวดอน   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2830', '340406', 'ชีทวน   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2831', '340407', 'ท่าไห   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2832', '340408', 'นาคำใหญ่   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2833', '340409', 'แดงหม้อ   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2834', '340410', 'ธาตุน้อย   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2835', '340411', 'บ้านไทย   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2836', '340412', 'บ้านกอก   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2837', '340413', 'กลางใหญ่   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2838', '340414', 'โนนรัง   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2839', '340415', 'ยางขี้นก   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2840', '340416', 'ศรีสุข   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2841', '340417', 'สหธาตุ   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2842', '340418', 'หนองเหล่า   ', '315', '23', '3');
INSERT INTO `district` VALUES ('2843', '340501', 'เขมราฐ   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2844', '340502', '*กองโพน   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2845', '340503', 'ขามป้อม   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2846', '340504', 'เจียด   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2847', '340505', '*พังเคน   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2848', '340506', '*นาตาล   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2849', '340507', 'หนองผือ   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2850', '340508', 'นาแวง   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2851', '340509', '*พะลาน   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2852', '340510', 'แก้งเหนือ   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2853', '340511', 'หนองนกทา   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2854', '340512', 'หนองสิม   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2855', '340513', 'หัวนา   ', '316', '23', '3');
INSERT INTO `district` VALUES ('2856', '340601', '*ชานุมาน   ', '317', '23', '3');
INSERT INTO `district` VALUES ('2857', '340602', '*โคกสาร   ', '317', '23', '3');
INSERT INTO `district` VALUES ('2858', '340603', '*คำเขื่อนแก้ว   ', '317', '23', '3');
INSERT INTO `district` VALUES ('2859', '340604', '*หนองข่า   ', '317', '23', '3');
INSERT INTO `district` VALUES ('2860', '340605', '*คำโพน   ', '317', '23', '3');
INSERT INTO `district` VALUES ('2861', '340606', '*โคกก่ง   ', '317', '23', '3');
INSERT INTO `district` VALUES ('2862', '340607', '*ป่าก่อ   ', '317', '23', '3');
INSERT INTO `district` VALUES ('2863', '340701', 'เมืองเดช   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2864', '340702', 'นาส่วง   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2865', '340703', '*นาเยีย   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2866', '340704', 'นาเจริญ   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2867', '340705', '*นาเรือง   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2868', '340706', 'ทุ่งเทิง   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2869', '340707', '*หนองอ้ม   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2870', '340708', 'สมสะอาด   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2871', '340709', 'กุดประทาย   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2872', '340710', 'ตบหู   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2873', '340711', 'กลาง   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2874', '340712', 'แก้ง   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2875', '340713', 'ท่าโพธิ์ศรี   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2876', '340714', '*นาเกษม   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2877', '340715', 'บัวงาม   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2878', '340716', 'คำครั่ง   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2879', '340717', 'นากระแซง   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2880', '340718', '*กุดเรือ   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2881', '340719', '*นาดี   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2882', '340720', 'โพนงาม   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2883', '340721', 'ป่าโมง   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2884', '340722', '*โคกชำแระ   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2885', '340723', 'โนนสมบูรณ์   ', '318', '23', '3');
INSERT INTO `district` VALUES ('2886', '340801', 'นาจะหลวย   ', '319', '23', '3');
INSERT INTO `district` VALUES ('2887', '340802', 'โนนสมบูรณ์   ', '319', '23', '3');
INSERT INTO `district` VALUES ('2888', '340803', 'พรสวรรค์   ', '319', '23', '3');
INSERT INTO `district` VALUES ('2889', '340804', 'บ้านตูม   ', '319', '23', '3');
INSERT INTO `district` VALUES ('2890', '340805', 'โสกแสง   ', '319', '23', '3');
INSERT INTO `district` VALUES ('2891', '340806', 'โนนสวรรค์   ', '319', '23', '3');
INSERT INTO `district` VALUES ('2892', '340901', 'โซง   ', '320', '23', '3');
INSERT INTO `district` VALUES ('2893', '340902', 'ตาเกา*   ', '320', '23', '3');
INSERT INTO `district` VALUES ('2894', '340903', 'ยาง   ', '320', '23', '3');
INSERT INTO `district` VALUES ('2895', '340904', 'โดมประดิษฐ์   ', '320', '23', '3');
INSERT INTO `district` VALUES ('2896', '340905', 'ขี้เหล็ก*   ', '320', '23', '3');
INSERT INTO `district` VALUES ('2897', '340906', 'บุเปือย   ', '320', '23', '3');
INSERT INTO `district` VALUES ('2898', '340907', 'สีวิเชียร   ', '320', '23', '3');
INSERT INTO `district` VALUES ('2899', '340908', 'ไพบูลย์*   ', '320', '23', '3');
INSERT INTO `district` VALUES ('2900', '340909', 'ยางใหญ่   ', '320', '23', '3');
INSERT INTO `district` VALUES ('2901', '340910', 'โคกสะอาด*   ', '320', '23', '3');
INSERT INTO `district` VALUES ('2902', '340911', 'เก่าขาม   ', '320', '23', '3');
INSERT INTO `district` VALUES ('2903', '341001', 'โพนงาม   ', '321', '23', '3');
INSERT INTO `district` VALUES ('2904', '341002', 'ห้วยข่า   ', '321', '23', '3');
INSERT INTO `district` VALUES ('2905', '341003', 'คอแลน   ', '321', '23', '3');
INSERT INTO `district` VALUES ('2906', '341004', 'นาโพธิ์   ', '321', '23', '3');
INSERT INTO `district` VALUES ('2907', '341005', 'หนองสะโน   ', '321', '23', '3');
INSERT INTO `district` VALUES ('2908', '341006', 'โนนค้อ   ', '321', '23', '3');
INSERT INTO `district` VALUES ('2909', '341007', 'บัวงาม   ', '321', '23', '3');
INSERT INTO `district` VALUES ('2910', '341008', 'บ้านแมด   ', '321', '23', '3');
INSERT INTO `district` VALUES ('2911', '341101', 'ขุหลุ   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2912', '341102', 'กระเดียน   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2913', '341103', 'เกษม   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2914', '341104', 'กุศกร   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2915', '341105', 'ขามเปี้ย   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2916', '341106', 'คอนสาย   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2917', '341107', 'โคกจาน   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2918', '341108', 'นาพิน   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2919', '341109', 'นาสะไม   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2920', '341110', 'โนนกุง   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2921', '341111', 'ตระการ   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2922', '341112', 'ตากแดด   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2923', '341113', 'ไหล่ทุ่ง   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2924', '341114', 'เป้า   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2925', '341115', 'เซเป็ด   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2926', '341116', 'สะพือ   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2927', '341117', 'หนองเต่า   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2928', '341118', 'ถ้ำแข้   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2929', '341119', 'ท่าหลวง   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2930', '341120', 'ห้วยฝ้ายพัฒนา   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2931', '341121', 'กุดยาลวน   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2932', '341122', 'บ้านแดง   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2933', '341123', 'คำเจริญ   ', '322', '23', '3');
INSERT INTO `district` VALUES ('2934', '341201', 'ข้าวปุ้น   ', '323', '23', '3');
INSERT INTO `district` VALUES ('2935', '341202', 'โนนสวาง   ', '323', '23', '3');
INSERT INTO `district` VALUES ('2936', '341203', 'แก่งเค็ง   ', '323', '23', '3');
INSERT INTO `district` VALUES ('2937', '341204', 'กาบิน   ', '323', '23', '3');
INSERT INTO `district` VALUES ('2938', '341205', 'หนองทันน้ำ   ', '323', '23', '3');
INSERT INTO `district` VALUES ('2939', '341301', '*พนา   ', '324', '23', '3');
INSERT INTO `district` VALUES ('2940', '341302', '*จานลาน   ', '324', '23', '3');
INSERT INTO `district` VALUES ('2941', '341303', '*ไม้กลอน   ', '324', '23', '3');
INSERT INTO `district` VALUES ('2942', '341304', '*ลือ   ', '324', '23', '3');
INSERT INTO `district` VALUES ('2943', '341305', '*ห้วย   ', '324', '23', '3');
INSERT INTO `district` VALUES ('2944', '341306', '*นาหว้า   ', '324', '23', '3');
INSERT INTO `district` VALUES ('2945', '341307', '*พระเหลา   ', '324', '23', '3');
INSERT INTO `district` VALUES ('2946', '341308', '*นาป่าแซง   ', '324', '23', '3');
INSERT INTO `district` VALUES ('2947', '341401', 'ม่วงสามสิบ   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2948', '341402', 'เหล่าบก   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2949', '341403', 'ดุมใหญ่   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2950', '341404', 'หนองช้างใหญ่   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2951', '341405', 'หนองเมือง   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2952', '341406', 'เตย   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2953', '341407', 'ยางสักกระโพหลุ่ม   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2954', '341408', 'หนองไข่นก   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2955', '341409', 'หนองเหล่า   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2956', '341410', 'หนองฮาง   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2957', '341411', 'ยางโยภาพ   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2958', '341412', 'ไผ่ใหญ่   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2959', '341413', 'นาเลิง   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2960', '341414', 'โพนแพง   ', '325', '23', '3');
INSERT INTO `district` VALUES ('2961', '341501', 'วารินชำราบ   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2962', '341502', 'ธาตุ   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2963', '341503', '*ท่าช้าง   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2964', '341504', 'ท่าลาด   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2965', '341505', 'โนนโหนน   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2966', '341506', '*โนนกาเล็น   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2967', '341507', 'คูเมือง   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2968', '341508', 'สระสมิง   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2969', '341509', '*ค้อน้อย   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2970', '341510', 'คำน้ำแซบ   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2971', '341511', 'บุ่งหวาย   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2972', '341512', '*หนองไฮ   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2973', '341513', '*สำโรง   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2974', '341514', '*สว่าง   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2975', '341515', 'คำขวาง   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2976', '341516', 'โพธิ์ใหญ่   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2977', '341517', '*โคกก่อง   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2978', '341518', 'แสนสุข   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2979', '341519', '*โคกสว่าง   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2980', '341520', 'หนองกินเพล   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2981', '341521', 'โนนผึ้ง   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2982', '341522', 'เมืองศรีไค   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2983', '341523', '*บุ่งมะแลง   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2984', '341524', 'ห้วยขะยูง   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2985', '341525', '*แก่งโดม   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2986', '341526', 'บุ่งไหม   ', '326', '23', '3');
INSERT INTO `district` VALUES ('2987', '341601', '*บุ่ง   ', '327', '23', '3');
INSERT INTO `district` VALUES ('2988', '341602', '*ไก่คำ   ', '327', '23', '3');
INSERT INTO `district` VALUES ('2989', '341603', '*นาจิก   ', '327', '23', '3');
INSERT INTO `district` VALUES ('2990', '341604', '*ดงมะยาง   ', '327', '23', '3');
INSERT INTO `district` VALUES ('2991', '341605', '*อำนาจ   ', '327', '23', '3');
INSERT INTO `district` VALUES ('2992', '341606', '*เปือย   ', '327', '23', '3');
INSERT INTO `district` VALUES ('2993', '341607', '*ดงบัง   ', '327', '23', '3');
INSERT INTO `district` VALUES ('2994', '341608', '*ไร่ขี   ', '327', '23', '3');
INSERT INTO `district` VALUES ('2995', '341609', '*ปลาค้าว   ', '327', '23', '3');
INSERT INTO `district` VALUES ('2996', '341610', '*เหล่าพรวน   ', '327', '23', '3');
INSERT INTO `district` VALUES ('2997', '341611', '*สร้างนกทา   ', '327', '23', '3');
INSERT INTO `district` VALUES ('2998', '341612', '*คิ่มใหญ่   ', '327', '23', '3');
INSERT INTO `district` VALUES ('2999', '341613', '*นาผือ   ', '327', '23', '3');
INSERT INTO `district` VALUES ('3000', '341614', '*น้ำปลีก   ', '327', '23', '3');
INSERT INTO `district` VALUES ('3001', '341615', '*นาวัง   ', '327', '23', '3');
INSERT INTO `district` VALUES ('3002', '341616', '*นาหมอม้า   ', '327', '23', '3');
INSERT INTO `district` VALUES ('3003', '341617', '*โนนโพธิ์   ', '327', '23', '3');
INSERT INTO `district` VALUES ('3004', '341618', '*โนนหนามแท่ง   ', '327', '23', '3');
INSERT INTO `district` VALUES ('3005', '341619', '*ห้วยไร่   ', '327', '23', '3');
INSERT INTO `district` VALUES ('3006', '341620', '*หนองมะแซว   ', '327', '23', '3');
INSERT INTO `district` VALUES ('3007', '341621', '*แมด   ', '327', '23', '3');
INSERT INTO `district` VALUES ('3008', '341622', '*กุดปลาดุก   ', '327', '23', '3');
INSERT INTO `district` VALUES ('3009', '341623', '*โนนงาม   ', '327', '23', '3');
INSERT INTO `district` VALUES ('3010', '341701', '*เสนางคนิคม   ', '328', '23', '3');
INSERT INTO `district` VALUES ('3011', '341702', '*โพนทอง   ', '328', '23', '3');
INSERT INTO `district` VALUES ('3012', '341703', '*ไร่สีสุก   ', '328', '23', '3');
INSERT INTO `district` VALUES ('3013', '341704', '*นาเวียง   ', '328', '23', '3');
INSERT INTO `district` VALUES ('3014', '341705', '*หนองไฮ   ', '328', '23', '3');
INSERT INTO `district` VALUES ('3015', '341706', '*หนองสามสี   ', '328', '23', '3');
INSERT INTO `district` VALUES ('3016', '341801', '*หัวตะพาน   ', '329', '23', '3');
INSERT INTO `district` VALUES ('3017', '341802', '*คำพระ   ', '329', '23', '3');
INSERT INTO `district` VALUES ('3018', '341803', '*เค็งใหญ่   ', '329', '23', '3');
INSERT INTO `district` VALUES ('3019', '341804', '*หนองแก้ว   ', '329', '23', '3');
INSERT INTO `district` VALUES ('3020', '341805', '*โพนเมืองน้อย   ', '329', '23', '3');
INSERT INTO `district` VALUES ('3021', '341806', '*สร้างถ่อน้อย   ', '329', '23', '3');
INSERT INTO `district` VALUES ('3022', '341807', '*จิกดู่   ', '329', '23', '3');
INSERT INTO `district` VALUES ('3023', '341808', '*รัตนวารี   ', '329', '23', '3');
INSERT INTO `district` VALUES ('3024', '341901', 'พิบูล   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3025', '341902', 'กุดชมภู   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3026', '341903', '*คันไร่   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3027', '341904', 'ดอนจิก   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3028', '341905', 'ทรายมูล   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3029', '341906', 'นาโพธิ์   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3030', '341907', 'โนนกลาง   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3031', '341908', '*ฝางคำ   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3032', '341909', 'โพธิ์ไทร   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3033', '341910', 'โพธิ์ศรี   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3034', '341911', 'ระเว   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3035', '341912', 'ไร่ใต้   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3036', '341913', 'หนองบัวฮี   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3037', '341914', 'อ่างศิลา   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3038', '341915', '*นิคมสร้างตนเองฯ   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3039', '341916', '*ช่องเม็ก   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3040', '341917', '*โนนก่อ   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3041', '341918', 'โนนกาหลง   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3042', '341919', 'บ้านแขม   ', '330', '23', '3');
INSERT INTO `district` VALUES ('3043', '342001', 'ตาลสุม   ', '331', '23', '3');
INSERT INTO `district` VALUES ('3044', '342002', 'สำโรง   ', '331', '23', '3');
INSERT INTO `district` VALUES ('3045', '342003', 'จิกเทิง   ', '331', '23', '3');
INSERT INTO `district` VALUES ('3046', '342004', 'หนองกุง   ', '331', '23', '3');
INSERT INTO `district` VALUES ('3047', '342005', 'นาคาย   ', '331', '23', '3');
INSERT INTO `district` VALUES ('3048', '342006', 'คำหว้า   ', '331', '23', '3');
INSERT INTO `district` VALUES ('3049', '342101', 'โพธิ์ไทร   ', '332', '23', '3');
INSERT INTO `district` VALUES ('3050', '342102', 'ม่วงใหญ่   ', '332', '23', '3');
INSERT INTO `district` VALUES ('3051', '342103', 'สำโรง   ', '332', '23', '3');
INSERT INTO `district` VALUES ('3052', '342104', 'สองคอน   ', '332', '23', '3');
INSERT INTO `district` VALUES ('3053', '342105', 'สารภี   ', '332', '23', '3');
INSERT INTO `district` VALUES ('3054', '342106', 'เหล่างาม   ', '332', '23', '3');
INSERT INTO `district` VALUES ('3055', '342201', 'สำโรง   ', '333', '23', '3');
INSERT INTO `district` VALUES ('3056', '342202', 'โคกก่อง   ', '333', '23', '3');
INSERT INTO `district` VALUES ('3057', '342203', 'หนองไฮ   ', '333', '23', '3');
INSERT INTO `district` VALUES ('3058', '342204', 'ค้อน้อย   ', '333', '23', '3');
INSERT INTO `district` VALUES ('3059', '342205', 'โนนกาเล็น   ', '333', '23', '3');
INSERT INTO `district` VALUES ('3060', '342206', 'โคกสว่าง   ', '333', '23', '3');
INSERT INTO `district` VALUES ('3061', '342207', 'โนนกลาง   ', '333', '23', '3');
INSERT INTO `district` VALUES ('3062', '342208', 'บอน   ', '333', '23', '3');
INSERT INTO `district` VALUES ('3063', '342209', 'ขามป้อม   ', '333', '23', '3');
INSERT INTO `district` VALUES ('3064', '342301', '*อำนาจ   ', '334', '23', '3');
INSERT INTO `district` VALUES ('3065', '342302', '*ดงมะยาง   ', '334', '23', '3');
INSERT INTO `district` VALUES ('3066', '342303', '*เปือย   ', '334', '23', '3');
INSERT INTO `district` VALUES ('3067', '342304', '*ดงบัง   ', '334', '23', '3');
INSERT INTO `district` VALUES ('3068', '342305', '*ไร่ขี   ', '334', '23', '3');
INSERT INTO `district` VALUES ('3069', '342306', '*แมด   ', '334', '23', '3');
INSERT INTO `district` VALUES ('3070', '342401', 'ดอนมดแดง   ', '335', '23', '3');
INSERT INTO `district` VALUES ('3071', '342402', 'เหล่าแดง   ', '335', '23', '3');
INSERT INTO `district` VALUES ('3072', '342403', 'ท่าเมือง   ', '335', '23', '3');
INSERT INTO `district` VALUES ('3073', '342404', 'คำไฮใหญ่   ', '335', '23', '3');
INSERT INTO `district` VALUES ('3074', '342501', 'คันไร่   ', '336', '23', '3');
INSERT INTO `district` VALUES ('3075', '342502', 'ช่องเม็ก   ', '336', '23', '3');
INSERT INTO `district` VALUES ('3076', '342503', 'โนนก่อ   ', '336', '23', '3');
INSERT INTO `district` VALUES ('3077', '342504', 'นิคมสร้างตนเองลำโดมน้อย   ', '336', '23', '3');
INSERT INTO `district` VALUES ('3078', '342505', 'ฝางคำ   ', '336', '23', '3');
INSERT INTO `district` VALUES ('3079', '342506', 'คำเขื่อนแก้ว   ', '336', '23', '3');
INSERT INTO `district` VALUES ('3080', '342601', '*ทุ่งเทิง   ', '337', '23', '3');
INSERT INTO `district` VALUES ('3081', '342602', 'หนองอ้ม   ', '337', '23', '3');
INSERT INTO `district` VALUES ('3082', '342603', 'นาเกษม   ', '337', '23', '3');
INSERT INTO `district` VALUES ('3083', '342604', 'กุดเรือ   ', '337', '23', '3');
INSERT INTO `district` VALUES ('3084', '342605', 'โคกชำแระ   ', '337', '23', '3');
INSERT INTO `district` VALUES ('3085', '342606', 'นาห่อม   ', '337', '23', '3');
INSERT INTO `district` VALUES ('3086', '342701', '*หนองข่า   ', '338', '23', '3');
INSERT INTO `district` VALUES ('3087', '342702', '*คำโพน   ', '338', '23', '3');
INSERT INTO `district` VALUES ('3088', '342703', '*นาหว้า   ', '338', '23', '3');
INSERT INTO `district` VALUES ('3089', '342704', '*ลือ   ', '338', '23', '3');
INSERT INTO `district` VALUES ('3090', '342705', '*ห้วย   ', '338', '23', '3');
INSERT INTO `district` VALUES ('3091', '342706', '*โนนงาม   ', '338', '23', '3');
INSERT INTO `district` VALUES ('3092', '342707', '*นาป่าแซง   ', '338', '23', '3');
INSERT INTO `district` VALUES ('3093', '342901', 'นาเยีย   ', '340', '23', '3');
INSERT INTO `district` VALUES ('3094', '342902', 'นาดี   ', '340', '23', '3');
INSERT INTO `district` VALUES ('3095', '342903', 'นาเรือง   ', '340', '23', '3');
INSERT INTO `district` VALUES ('3096', '343001', 'นาตาล   ', '341', '23', '3');
INSERT INTO `district` VALUES ('3097', '343002', 'พะลาน   ', '341', '23', '3');
INSERT INTO `district` VALUES ('3098', '343003', 'กองโพน   ', '341', '23', '3');
INSERT INTO `district` VALUES ('3099', '343004', 'พังเคน   ', '341', '23', '3');
INSERT INTO `district` VALUES ('3100', '343101', 'เหล่าเสือโก้ก   ', '342', '23', '3');
INSERT INTO `district` VALUES ('3101', '343102', 'โพนเมือง   ', '342', '23', '3');
INSERT INTO `district` VALUES ('3102', '343103', 'แพงใหญ่   ', '342', '23', '3');
INSERT INTO `district` VALUES ('3103', '343104', 'หนองบก   ', '342', '23', '3');
INSERT INTO `district` VALUES ('3104', '343201', 'แก่งโดม   ', '343', '23', '3');
INSERT INTO `district` VALUES ('3105', '343202', 'ท่าช้าง   ', '343', '23', '3');
INSERT INTO `district` VALUES ('3106', '343203', 'บุ่งมะแลง   ', '343', '23', '3');
INSERT INTO `district` VALUES ('3107', '343204', 'สว่าง   ', '343', '23', '3');
INSERT INTO `district` VALUES ('3108', '343301', 'ตาเกา   ', '344', '23', '3');
INSERT INTO `district` VALUES ('3109', '343302', 'ไพบูลย์   ', '344', '23', '3');
INSERT INTO `district` VALUES ('3110', '343303', 'ขี้เหล็ก   ', '344', '23', '3');
INSERT INTO `district` VALUES ('3111', '343304', 'โคกสะอาด   ', '344', '23', '3');
INSERT INTO `district` VALUES ('3112', '350101', 'ในเมือง   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3113', '350102', 'น้ำคำใหญ่   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3114', '350103', 'ตาดทอง   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3115', '350104', 'สำราญ   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3116', '350105', 'ค้อเหนือ   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3117', '350106', 'ดู่ทุ่ง   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3118', '350107', 'เดิด   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3119', '350108', 'ขั้นไดใหญ่   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3120', '350109', 'ทุ่งแต้   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3121', '350110', 'สิงห์   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3122', '350111', 'นาสะไมย์   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3123', '350112', 'เขื่องคำ   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3124', '350113', 'หนองหิน   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3125', '350114', 'หนองคู   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3126', '350115', 'ขุมเงิน   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3127', '350116', 'ทุ่งนางโอก   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3128', '350117', 'หนองเรือ   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3129', '350118', 'หนองเป็ด   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3130', '350196', '*นาเวียง   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3131', '350197', '*ดงมะไฟ   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3132', '350198', '*ดู่ลาย   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3133', '350199', '*ทรายมูล   ', '346', '24', '3');
INSERT INTO `district` VALUES ('3134', '350201', 'ทรายมูล   ', '347', '24', '3');
INSERT INTO `district` VALUES ('3135', '350202', 'ดู่ลาด   ', '347', '24', '3');
INSERT INTO `district` VALUES ('3136', '350203', 'ดงมะไฟ   ', '347', '24', '3');
INSERT INTO `district` VALUES ('3137', '350204', 'นาเวียง   ', '347', '24', '3');
INSERT INTO `district` VALUES ('3138', '350205', 'ไผ่   ', '347', '24', '3');
INSERT INTO `district` VALUES ('3139', '350301', 'กุดชุม   ', '348', '24', '3');
INSERT INTO `district` VALUES ('3140', '350302', 'โนนเปือย   ', '348', '24', '3');
INSERT INTO `district` VALUES ('3141', '350303', 'กำแมด   ', '348', '24', '3');
INSERT INTO `district` VALUES ('3142', '350304', 'นาโส่   ', '348', '24', '3');
INSERT INTO `district` VALUES ('3143', '350305', 'ห้วยแก้ง   ', '348', '24', '3');
INSERT INTO `district` VALUES ('3144', '350306', 'หนองหมี   ', '348', '24', '3');
INSERT INTO `district` VALUES ('3145', '350307', 'โพนงาม   ', '348', '24', '3');
INSERT INTO `district` VALUES ('3146', '350308', 'คำน้ำสร้าง   ', '348', '24', '3');
INSERT INTO `district` VALUES ('3147', '350309', 'หนองแหน   ', '348', '24', '3');
INSERT INTO `district` VALUES ('3148', '350401', 'ลุมพุก   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3149', '350402', 'ย่อ   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3150', '350403', 'สงเปือย   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3151', '350404', 'โพนทัน   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3152', '350405', 'ทุ่งมน   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3153', '350406', 'นาคำ   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3154', '350407', 'ดงแคนใหญ่   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3155', '350408', 'กู่จาน   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3156', '350409', 'นาแก   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3157', '350410', 'กุดกุง   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3158', '350411', 'เหล่าไฮ   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3159', '350412', 'แคนน้อย   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3160', '350413', 'ดงเจริญ   ', '349', '24', '3');
INSERT INTO `district` VALUES ('3161', '350501', 'โพธิ์ไทร   ', '350', '24', '3');
INSERT INTO `district` VALUES ('3162', '350502', 'กระจาย   ', '350', '24', '3');
INSERT INTO `district` VALUES ('3163', '350503', 'โคกนาโก   ', '350', '24', '3');
INSERT INTO `district` VALUES ('3164', '350504', 'เชียงเพ็ง   ', '350', '24', '3');
INSERT INTO `district` VALUES ('3165', '350505', 'ศรีฐาน   ', '350', '24', '3');
INSERT INTO `district` VALUES ('3166', '350601', 'ฟ้าหยาด   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3167', '350602', 'หัวเมือง   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3168', '350603', 'คูเมือง   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3169', '350604', 'ผือฮี   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3170', '350605', 'บากเรือ   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3171', '350606', 'ม่วง   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3172', '350607', 'โนนทราย   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3173', '350608', 'บึงแก   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3174', '350609', 'พระเสาร์   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3175', '350610', 'สงยาง   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3176', '350696', '*ค้อวัง   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3177', '350697', '*น้ำอ้อม   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3178', '350698', '*กุดน้ำใส   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3179', '350699', '*ฟ้าห่วน   ', '351', '24', '3');
INSERT INTO `district` VALUES ('3180', '350701', 'ฟ้าห่วน   ', '352', '24', '3');
INSERT INTO `district` VALUES ('3181', '350702', 'กุดน้ำใส   ', '352', '24', '3');
INSERT INTO `district` VALUES ('3182', '350703', 'น้ำอ้อม   ', '352', '24', '3');
INSERT INTO `district` VALUES ('3183', '350704', 'ค้อวัง   ', '352', '24', '3');
INSERT INTO `district` VALUES ('3184', '350801', '*น้ำคำ   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3185', '350802', 'บุ่งค้า   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3186', '350803', 'สวาท   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3187', '350804', '*ส้มผ่อ   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3188', '350805', 'ห้องแซง   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3189', '350806', 'สามัคคี   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3190', '350807', 'กุดเชียงหมี   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3191', '350808', '*คำเตย   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3192', '350809', '*คำไผ่   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3193', '350810', 'สามแยก   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3194', '350811', 'กุดแห่   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3195', '350812', 'โคกสำราญ   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3196', '350813', 'สร้างมิ่ง   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3197', '350814', 'ศรีแก้ว   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3198', '350815', '*ไทยเจริญ   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3199', '350895', '*ไทยเจริญ   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3200', '350896', '*คำไผ่   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3201', '350897', '*คำเตย   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3202', '350898', '*ส้มผ่อ   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3203', '350899', '*น้ำคำ   ', '353', '24', '3');
INSERT INTO `district` VALUES ('3204', '350901', 'ไทยเจริญ   ', '354', '24', '3');
INSERT INTO `district` VALUES ('3205', '350902', 'น้ำคำ   ', '354', '24', '3');
INSERT INTO `district` VALUES ('3206', '350903', 'ส้มผ่อ   ', '354', '24', '3');
INSERT INTO `district` VALUES ('3207', '350904', 'คำเตย   ', '354', '24', '3');
INSERT INTO `district` VALUES ('3208', '350905', 'คำไผ่   ', '354', '24', '3');
INSERT INTO `district` VALUES ('3209', '360101', 'ในเมือง   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3210', '360102', 'รอบเมือง   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3211', '360103', 'โพนทอง   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3212', '360104', 'นาฝาย   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3213', '360105', 'บ้านค่าย   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3214', '360106', 'กุดตุ้ม   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3215', '360107', 'ชีลอง   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3216', '360108', 'บ้านเล่า   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3217', '360109', 'นาเสียว   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3218', '360110', 'หนองนาแซง   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3219', '360111', 'ลาดใหญ่   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3220', '360112', 'หนองไผ่   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3221', '360113', 'ท่าหินโงม   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3222', '360114', 'ห้วยต้อน   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3223', '360115', 'ห้วยบง   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3224', '360116', 'โนนสำราญ   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3225', '360117', 'โคกสูง   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3226', '360118', 'บุ่งคล้า   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3227', '360119', 'ซับสีทอง   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3228', '360198', '*เจาทอง   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3229', '360199', '*บ้านเจียง   ', '355', '25', '3');
INSERT INTO `district` VALUES ('3230', '360201', 'บ้านเขว้า   ', '356', '25', '3');
INSERT INTO `district` VALUES ('3231', '360202', 'ตลาดแร้ง   ', '356', '25', '3');
INSERT INTO `district` VALUES ('3232', '360203', 'ลุ่มลำชี   ', '356', '25', '3');
INSERT INTO `district` VALUES ('3233', '360204', 'ชีบน   ', '356', '25', '3');
INSERT INTO `district` VALUES ('3234', '360205', 'ภูแลนคา   ', '356', '25', '3');
INSERT INTO `district` VALUES ('3235', '360206', 'โนนแดง   ', '356', '25', '3');
INSERT INTO `district` VALUES ('3236', '360301', 'คอนสวรรค์   ', '357', '25', '3');
INSERT INTO `district` VALUES ('3237', '360302', 'ยางหวาย   ', '357', '25', '3');
INSERT INTO `district` VALUES ('3238', '360303', 'ช่องสามหมอ   ', '357', '25', '3');
INSERT INTO `district` VALUES ('3239', '360304', 'โนนสะอาด   ', '357', '25', '3');
INSERT INTO `district` VALUES ('3240', '360305', 'ห้วยไร่   ', '357', '25', '3');
INSERT INTO `district` VALUES ('3241', '360306', 'บ้านโสก   ', '357', '25', '3');
INSERT INTO `district` VALUES ('3242', '360307', 'โคกมั่งงอย   ', '357', '25', '3');
INSERT INTO `district` VALUES ('3243', '360308', 'หนองขาม   ', '357', '25', '3');
INSERT INTO `district` VALUES ('3244', '360309', 'ศรีสำราญ   ', '357', '25', '3');
INSERT INTO `district` VALUES ('3245', '360401', 'บ้านยาง   ', '358', '25', '3');
INSERT INTO `district` VALUES ('3246', '360402', 'บ้านหัน   ', '358', '25', '3');
INSERT INTO `district` VALUES ('3247', '360403', 'บ้านเดื่อ   ', '358', '25', '3');
INSERT INTO `district` VALUES ('3248', '360404', 'บ้านเป้า   ', '358', '25', '3');
INSERT INTO `district` VALUES ('3249', '360405', 'กุดเลาะ   ', '358', '25', '3');
INSERT INTO `district` VALUES ('3250', '360406', 'โนนกอก   ', '358', '25', '3');
INSERT INTO `district` VALUES ('3251', '360407', 'สระโพนทอง   ', '358', '25', '3');
INSERT INTO `district` VALUES ('3252', '360408', 'หนองข่า   ', '358', '25', '3');
INSERT INTO `district` VALUES ('3253', '360409', 'หนองโพนงาม   ', '358', '25', '3');
INSERT INTO `district` VALUES ('3254', '360410', 'บ้านบัว   ', '358', '25', '3');
INSERT INTO `district` VALUES ('3255', '360411', 'ซับสีทอง*   ', '358', '25', '3');
INSERT INTO `district` VALUES ('3256', '360412', 'โนนทอง   ', '358', '25', '3');
INSERT INTO `district` VALUES ('3257', '360501', 'หนองบัวแดง   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3258', '360502', 'กุดชุมแสง   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3259', '360503', 'ถ้ำวัวแดง   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3260', '360504', 'นางแดด   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3261', '360505', '*บ้านเจียง   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3262', '360506', '*เจาทอง   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3263', '360507', 'หนองแวง   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3264', '360508', 'คูเมือง   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3265', '360509', 'ท่าใหญ่   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3266', '360510', '*วังทอง   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3267', '360511', 'วังชมภู   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3268', '360598', '*เจาทอง   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3269', '360599', '*บ้านเจียง   ', '359', '25', '3');
INSERT INTO `district` VALUES ('3270', '360601', 'บ้านกอก   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3271', '360602', 'หนองบัวบาน   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3272', '360603', 'บ้านขาม   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3273', '360604', '*หนองฉิม   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3274', '360605', 'กุดน้ำใส   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3275', '360606', 'หนองโดน   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3276', '360607', 'ละหาน   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3277', '360608', '*ตาเนิน   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3278', '360609', '*กะฮาด   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3279', '360610', 'หนองบัวใหญ่   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3280', '360611', 'หนองบัวโคก   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3281', '360612', 'ท่ากูบ*   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3282', '360613', 'ส้มป่อย   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3283', '360614', 'ซับใหญ่*   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3284', '360615', '*รังงาม   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3285', '360616', 'ตะโกทอง*   ', '360', '25', '3');
INSERT INTO `district` VALUES ('3286', '360701', 'บ้านชวน   ', '361', '25', '3');
INSERT INTO `district` VALUES ('3287', '360702', 'บ้านเพชร   ', '361', '25', '3');
INSERT INTO `district` VALUES ('3288', '360703', 'บ้านตาล   ', '361', '25', '3');
INSERT INTO `district` VALUES ('3289', '360704', 'หัวทะเล   ', '361', '25', '3');
INSERT INTO `district` VALUES ('3290', '360705', 'โคกเริงรมย์   ', '361', '25', '3');
INSERT INTO `district` VALUES ('3291', '360706', 'เกาะมะนาว   ', '361', '25', '3');
INSERT INTO `district` VALUES ('3292', '360707', 'โคกเพชรพัฒนา   ', '361', '25', '3');
INSERT INTO `district` VALUES ('3293', '360796', '*บ้านไร่   ', '361', '25', '3');
INSERT INTO `district` VALUES ('3294', '360797', '*นายางกลัก   ', '361', '25', '3');
INSERT INTO `district` VALUES ('3295', '360798', '*ห้วยยายจิ๋ว   ', '361', '25', '3');
INSERT INTO `district` VALUES ('3296', '360799', '*วะตะแบก   ', '361', '25', '3');
INSERT INTO `district` VALUES ('3297', '360801', 'หนองบัวระเหว   ', '362', '25', '3');
INSERT INTO `district` VALUES ('3298', '360802', 'วังตะเฆ่   ', '362', '25', '3');
INSERT INTO `district` VALUES ('3299', '360803', 'ห้วยแย้   ', '362', '25', '3');
INSERT INTO `district` VALUES ('3300', '360804', 'โคกสะอาด   ', '362', '25', '3');
INSERT INTO `district` VALUES ('3301', '360805', 'โสกปลาดุก   ', '362', '25', '3');
INSERT INTO `district` VALUES ('3302', '360901', 'วะตะแบก   ', '363', '25', '3');
INSERT INTO `district` VALUES ('3303', '360902', 'ห้วยยายจิ๋ว   ', '363', '25', '3');
INSERT INTO `district` VALUES ('3304', '360903', 'นายางกลัก   ', '363', '25', '3');
INSERT INTO `district` VALUES ('3305', '360904', 'บ้านไร่   ', '363', '25', '3');
INSERT INTO `district` VALUES ('3306', '360905', 'โป่งนก   ', '363', '25', '3');
INSERT INTO `district` VALUES ('3307', '361001', 'ผักปัง   ', '364', '25', '3');
INSERT INTO `district` VALUES ('3308', '361002', 'กวางโจน   ', '364', '25', '3');
INSERT INTO `district` VALUES ('3309', '361003', 'หนองคอนไทย   ', '364', '25', '3');
INSERT INTO `district` VALUES ('3310', '361004', 'บ้านแก้ง   ', '364', '25', '3');
INSERT INTO `district` VALUES ('3311', '361005', 'กุดยม   ', '364', '25', '3');
INSERT INTO `district` VALUES ('3312', '361006', 'บ้านเพชร   ', '364', '25', '3');
INSERT INTO `district` VALUES ('3313', '361007', 'โคกสะอาด   ', '364', '25', '3');
INSERT INTO `district` VALUES ('3314', '361008', 'หนองตูม   ', '364', '25', '3');
INSERT INTO `district` VALUES ('3315', '361009', 'โอโล   ', '364', '25', '3');
INSERT INTO `district` VALUES ('3316', '361010', 'ธาตุทอง   ', '364', '25', '3');
INSERT INTO `district` VALUES ('3317', '361011', 'บ้านดอน   ', '364', '25', '3');
INSERT INTO `district` VALUES ('3318', '361101', 'บ้านแท่น   ', '365', '25', '3');
INSERT INTO `district` VALUES ('3319', '361102', 'สามสวน   ', '365', '25', '3');
INSERT INTO `district` VALUES ('3320', '361103', 'สระพัง   ', '365', '25', '3');
INSERT INTO `district` VALUES ('3321', '361104', 'บ้านเต่า   ', '365', '25', '3');
INSERT INTO `district` VALUES ('3322', '361105', 'หนองคู   ', '365', '25', '3');
INSERT INTO `district` VALUES ('3323', '361201', 'ช่องสามหมอ   ', '366', '25', '3');
INSERT INTO `district` VALUES ('3324', '361202', 'หนองขาม   ', '366', '25', '3');
INSERT INTO `district` VALUES ('3325', '361203', 'นาหนองทุ่ม   ', '366', '25', '3');
INSERT INTO `district` VALUES ('3326', '361204', 'บ้านแก้ง   ', '366', '25', '3');
INSERT INTO `district` VALUES ('3327', '361205', 'หนองสังข์   ', '366', '25', '3');
INSERT INTO `district` VALUES ('3328', '361206', 'หลุบคา   ', '366', '25', '3');
INSERT INTO `district` VALUES ('3329', '361207', 'โคกกุง   ', '366', '25', '3');
INSERT INTO `district` VALUES ('3330', '361208', 'เก่าย่าดี   ', '366', '25', '3');
INSERT INTO `district` VALUES ('3331', '361209', 'ท่ามะไฟหวาน   ', '366', '25', '3');
INSERT INTO `district` VALUES ('3332', '361210', 'หนองไผ่   ', '366', '25', '3');
INSERT INTO `district` VALUES ('3333', '361301', 'คอนสาร   ', '367', '25', '3');
INSERT INTO `district` VALUES ('3334', '361302', 'ทุ่งพระ   ', '367', '25', '3');
INSERT INTO `district` VALUES ('3335', '361303', 'โนนคูณ   ', '367', '25', '3');
INSERT INTO `district` VALUES ('3336', '361304', 'ห้วยยาง   ', '367', '25', '3');
INSERT INTO `district` VALUES ('3337', '361305', 'ทุ่งลุยลาย   ', '367', '25', '3');
INSERT INTO `district` VALUES ('3338', '361306', 'ดงบัง   ', '367', '25', '3');
INSERT INTO `district` VALUES ('3339', '361307', 'ทุ่งนาเลา   ', '367', '25', '3');
INSERT INTO `district` VALUES ('3340', '361308', 'ดงกลาง   ', '367', '25', '3');
INSERT INTO `district` VALUES ('3341', '361401', 'บ้านเจียง   ', '368', '25', '3');
INSERT INTO `district` VALUES ('3342', '361402', 'เจาทอง   ', '368', '25', '3');
INSERT INTO `district` VALUES ('3343', '361403', 'วังทอง   ', '368', '25', '3');
INSERT INTO `district` VALUES ('3344', '361404', 'แหลมทอง   ', '368', '25', '3');
INSERT INTO `district` VALUES ('3345', '361501', 'หนองฉิม   ', '369', '25', '3');
INSERT INTO `district` VALUES ('3346', '361502', 'ตาเนิน   ', '369', '25', '3');
INSERT INTO `district` VALUES ('3347', '361503', 'กะฮาด   ', '369', '25', '3');
INSERT INTO `district` VALUES ('3348', '361504', 'รังงาม   ', '369', '25', '3');
INSERT INTO `district` VALUES ('3349', '361601', 'ซับใหญ่   ', '370', '25', '3');
INSERT INTO `district` VALUES ('3350', '361602', 'ท่ากูบ   ', '370', '25', '3');
INSERT INTO `district` VALUES ('3351', '361603', 'ตะโกทอง   ', '370', '25', '3');
INSERT INTO `district` VALUES ('3352', '370101', 'บุ่ง   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3353', '370102', 'ไก่คำ   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3354', '370103', 'นาจิก   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3355', '370104', 'ปลาค้าว   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3356', '370105', 'เหล่าพรวน   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3357', '370106', 'สร้างนกทา   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3358', '370107', 'คึมใหญ่   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3359', '370108', 'นาผือ   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3360', '370109', 'น้ำปลีก   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3361', '370110', 'นาวัง   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3362', '370111', 'นาหมอม้า   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3363', '370112', 'โนนโพธิ์   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3364', '370113', 'โนนหนามแท่ง   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3365', '370114', 'ห้วยไร่   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3366', '370115', 'หนองมะแซว   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3367', '370116', 'กุดปลาดุก   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3368', '370117', 'ดอนเมย   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3369', '370118', 'นายม   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3370', '370119', 'นาแต้   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3371', '370190', '*โพนทอง   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3372', '370191', '*ดงมะยาง   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3373', '370192', '*เปือย   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3374', '370193', '*หนองไฮ   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3375', '370194', '*นาเวียง   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3376', '370195', '*ไร่ขี   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3377', '370196', '*ไร่สีสุก   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3378', '370197', '*เสนางคนิคม   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3379', '370198', '*อำนาจ   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3380', '370199', '*ดงบัง   ', '380', '26', '3');
INSERT INTO `district` VALUES ('3381', '370201', 'ชานุมาน   ', '381', '26', '3');
INSERT INTO `district` VALUES ('3382', '370202', 'โคกสาร   ', '381', '26', '3');
INSERT INTO `district` VALUES ('3383', '370203', 'คำเขื่อนแก้ว   ', '381', '26', '3');
INSERT INTO `district` VALUES ('3384', '370204', 'โคกก่ง   ', '381', '26', '3');
INSERT INTO `district` VALUES ('3385', '370205', 'ป่าก่อ   ', '381', '26', '3');
INSERT INTO `district` VALUES ('3386', '370299', '*หนองข่า   ', '381', '26', '3');
INSERT INTO `district` VALUES ('3387', '370301', 'หนองข่า   ', '382', '26', '3');
INSERT INTO `district` VALUES ('3388', '370302', 'คำโพน   ', '382', '26', '3');
INSERT INTO `district` VALUES ('3389', '370303', 'นาหว้า   ', '382', '26', '3');
INSERT INTO `district` VALUES ('3390', '370304', 'ลือ   ', '382', '26', '3');
INSERT INTO `district` VALUES ('3391', '370305', 'ห้วย   ', '382', '26', '3');
INSERT INTO `district` VALUES ('3392', '370306', 'โนนงาม   ', '382', '26', '3');
INSERT INTO `district` VALUES ('3393', '370307', 'นาป่าแซง   ', '382', '26', '3');
INSERT INTO `district` VALUES ('3394', '370401', 'พนา   ', '383', '26', '3');
INSERT INTO `district` VALUES ('3395', '370402', 'จานลาน   ', '383', '26', '3');
INSERT INTO `district` VALUES ('3396', '370403', 'ไม้กลอน   ', '383', '26', '3');
INSERT INTO `district` VALUES ('3397', '370404', 'พระเหลา   ', '383', '26', '3');
INSERT INTO `district` VALUES ('3398', '370497', '*นาหว้า   ', '383', '26', '3');
INSERT INTO `district` VALUES ('3399', '370498', '*ลือ   ', '383', '26', '3');
INSERT INTO `district` VALUES ('3400', '370499', '*ห้วย   ', '383', '26', '3');
INSERT INTO `district` VALUES ('3401', '370501', 'เสนางคนิคม   ', '384', '26', '3');
INSERT INTO `district` VALUES ('3402', '370502', 'โพนทอง   ', '384', '26', '3');
INSERT INTO `district` VALUES ('3403', '370503', 'ไร่สีสุก   ', '384', '26', '3');
INSERT INTO `district` VALUES ('3404', '370504', 'นาเวียง   ', '384', '26', '3');
INSERT INTO `district` VALUES ('3405', '370505', 'หนองไฮ   ', '384', '26', '3');
INSERT INTO `district` VALUES ('3406', '370506', 'หนองสามสี   ', '384', '26', '3');
INSERT INTO `district` VALUES ('3407', '370601', 'หัวตะพาน   ', '385', '26', '3');
INSERT INTO `district` VALUES ('3408', '370602', 'คำพระ   ', '385', '26', '3');
INSERT INTO `district` VALUES ('3409', '370603', 'เค็งใหญ่   ', '385', '26', '3');
INSERT INTO `district` VALUES ('3410', '370604', 'หนองแก้ว   ', '385', '26', '3');
INSERT INTO `district` VALUES ('3411', '370605', 'โพนเมืองน้อย   ', '385', '26', '3');
INSERT INTO `district` VALUES ('3412', '370606', 'สร้างถ่อน้อย   ', '385', '26', '3');
INSERT INTO `district` VALUES ('3413', '370607', 'จิกดู่   ', '385', '26', '3');
INSERT INTO `district` VALUES ('3414', '370608', 'รัตนวารี   ', '385', '26', '3');
INSERT INTO `district` VALUES ('3415', '370701', 'อำนาจ   ', '386', '26', '3');
INSERT INTO `district` VALUES ('3416', '370702', 'ดงมะยาง   ', '386', '26', '3');
INSERT INTO `district` VALUES ('3417', '370703', 'เปือย   ', '386', '26', '3');
INSERT INTO `district` VALUES ('3418', '370704', 'ดงบัง   ', '386', '26', '3');
INSERT INTO `district` VALUES ('3419', '370705', 'ไร่ขี   ', '386', '26', '3');
INSERT INTO `district` VALUES ('3420', '370706', 'แมด   ', '386', '26', '3');
INSERT INTO `district` VALUES ('3421', '370707', 'โคกกลาง   ', '386', '26', '3');
INSERT INTO `district` VALUES ('3422', '390101', 'หนองบัว   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3423', '390102', 'หนองภัยศูนย์   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3424', '390103', 'โพธิ์ชัย   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3425', '390104', 'หนองสวรรค์   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3426', '390105', 'หัวนา   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3427', '390106', 'บ้านขาม   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3428', '390107', 'นามะเฟือง   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3429', '390108', 'บ้านพร้าว   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3430', '390109', 'โนนขมิ้น   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3431', '390110', 'ลำภู   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3432', '390111', 'กุดจิก   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3433', '390112', 'โนนทัน   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3434', '390113', 'นาคำไฮ   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3435', '390114', 'ป่าไม้งาม   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3436', '390115', 'หนองหว้า   ', '387', '27', '3');
INSERT INTO `district` VALUES ('3437', '390201', 'นากลาง   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3438', '390202', 'ด่านช้าง   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3439', '390203', '*นาเหล่า   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3440', '390204', '*นาแก   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3441', '390205', 'กุดดินจี่   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3442', '390206', 'ฝั่งแดง   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3443', '390207', 'เก่ากลอย   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3444', '390208', '*วังทอง   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3445', '390209', 'โนนเมือง   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3446', '390210', 'อุทัยสวรรค์   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3447', '390211', 'ดงสวรรค์   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3448', '390212', '*วังปลาป้อม   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3449', '390213', 'กุดแห่   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3450', '390214', '*เทพคีรี   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3451', '390215', 'โนนภูทอง*   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3452', '390296', '*นาดี   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3453', '390297', '*นาสี   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3454', '390298', '*บ้านโคก   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3455', '390299', '*โคกนาเหล่า   ', '388', '27', '3');
INSERT INTO `district` VALUES ('3456', '390301', 'โนนสัง   ', '389', '27', '3');
INSERT INTO `district` VALUES ('3457', '390302', 'บ้านถิ่น   ', '389', '27', '3');
INSERT INTO `district` VALUES ('3458', '390303', 'หนองเรือ   ', '389', '27', '3');
INSERT INTO `district` VALUES ('3459', '390304', 'กุดดู่   ', '389', '27', '3');
INSERT INTO `district` VALUES ('3460', '390305', 'บ้านค้อ   ', '389', '27', '3');
INSERT INTO `district` VALUES ('3461', '390306', 'โนนเมือง   ', '389', '27', '3');
INSERT INTO `district` VALUES ('3462', '390307', 'โคกใหญ่   ', '389', '27', '3');
INSERT INTO `district` VALUES ('3463', '390308', 'โคกม่วง   ', '389', '27', '3');
INSERT INTO `district` VALUES ('3464', '390309', 'นิคมพัฒนา   ', '389', '27', '3');
INSERT INTO `district` VALUES ('3465', '390310', 'ปางกู่   ', '389', '27', '3');
INSERT INTO `district` VALUES ('3466', '390401', 'เมืองใหม่   ', '390', '27', '3');
INSERT INTO `district` VALUES ('3467', '390402', 'ศรีบุญเรือง   ', '390', '27', '3');
INSERT INTO `district` VALUES ('3468', '390403', 'หนองบัวใต้   ', '390', '27', '3');
INSERT INTO `district` VALUES ('3469', '390404', 'กุดสะเทียน   ', '390', '27', '3');
INSERT INTO `district` VALUES ('3470', '390405', 'นากอก   ', '390', '27', '3');
INSERT INTO `district` VALUES ('3471', '390406', 'โนนสะอาด   ', '390', '27', '3');
INSERT INTO `district` VALUES ('3472', '390407', 'ยางหล่อ   ', '390', '27', '3');
INSERT INTO `district` VALUES ('3473', '390408', 'โนนม่วง   ', '390', '27', '3');
INSERT INTO `district` VALUES ('3474', '390409', 'หนองกุงแก้ว   ', '390', '27', '3');
INSERT INTO `district` VALUES ('3475', '390410', 'หนองแก   ', '390', '27', '3');
INSERT INTO `district` VALUES ('3476', '390411', 'ทรายทอง   ', '390', '27', '3');
INSERT INTO `district` VALUES ('3477', '390412', 'หันนางาม   ', '390', '27', '3');
INSERT INTO `district` VALUES ('3478', '390501', 'นาสี   ', '391', '27', '3');
INSERT INTO `district` VALUES ('3479', '390502', 'บ้านโคก   ', '391', '27', '3');
INSERT INTO `district` VALUES ('3480', '390503', 'นาดี   ', '391', '27', '3');
INSERT INTO `district` VALUES ('3481', '390504', 'นาด่าน   ', '391', '27', '3');
INSERT INTO `district` VALUES ('3482', '390505', 'ดงมะไฟ   ', '391', '27', '3');
INSERT INTO `district` VALUES ('3483', '390506', 'สุวรรณคูหา   ', '391', '27', '3');
INSERT INTO `district` VALUES ('3484', '390507', 'บุญทัน   ', '391', '27', '3');
INSERT INTO `district` VALUES ('3485', '390508', 'กุดผึ้ง   ', '391', '27', '3');
INSERT INTO `district` VALUES ('3486', '390601', 'นาเหล่า   ', '392', '27', '3');
INSERT INTO `district` VALUES ('3487', '390602', 'นาแก   ', '392', '27', '3');
INSERT INTO `district` VALUES ('3488', '390603', 'วังทอง   ', '392', '27', '3');
INSERT INTO `district` VALUES ('3489', '390604', 'วังปลาป้อม   ', '392', '27', '3');
INSERT INTO `district` VALUES ('3490', '390605', 'เทพคีรี   ', '392', '27', '3');
INSERT INTO `district` VALUES ('3491', '400101', 'ในเมือง   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3492', '400102', 'สำราญ   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3493', '400103', 'โคกสี   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3494', '400104', 'ท่าพระ   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3495', '400105', 'บ้านทุ่ม   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3496', '400106', 'เมืองเก่า   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3497', '400107', 'พระลับ   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3498', '400108', 'สาวะถี   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3499', '400109', 'บ้านหว้า   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3500', '400110', 'บ้านค้อ   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3501', '400111', 'แดงใหญ่   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3502', '400112', 'ดอนช้าง   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3503', '400113', 'ดอนหัน   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3504', '400114', 'ศิลา   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3505', '400115', 'บ้านเป็ด   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3506', '400116', 'หนองตูม   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3507', '400117', 'บึงเนียม   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3508', '400118', 'โนนท่อน   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3509', '400198', '*บ้านโต้น   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3510', '400199', '*หนองบัว   ', '393', '28', '3');
INSERT INTO `district` VALUES ('3511', '400201', 'หนองบัว   ', '394', '28', '3');
INSERT INTO `district` VALUES ('3512', '400202', 'ป่าหวายนั่ง   ', '394', '28', '3');
INSERT INTO `district` VALUES ('3513', '400203', 'โนนฆ้อง   ', '394', '28', '3');
INSERT INTO `district` VALUES ('3514', '400204', 'บ้านเหล่า   ', '394', '28', '3');
INSERT INTO `district` VALUES ('3515', '400205', 'ป่ามะนาว   ', '394', '28', '3');
INSERT INTO `district` VALUES ('3516', '400206', 'บ้านฝาง   ', '394', '28', '3');
INSERT INTO `district` VALUES ('3517', '400207', 'โคกงาม   ', '394', '28', '3');
INSERT INTO `district` VALUES ('3518', '400301', 'พระยืน   ', '395', '28', '3');
INSERT INTO `district` VALUES ('3519', '400302', 'พระบุ   ', '395', '28', '3');
INSERT INTO `district` VALUES ('3520', '400303', 'บ้านโต้น   ', '395', '28', '3');
INSERT INTO `district` VALUES ('3521', '400304', 'หนองแวง   ', '395', '28', '3');
INSERT INTO `district` VALUES ('3522', '400305', 'ขามป้อม   ', '395', '28', '3');
INSERT INTO `district` VALUES ('3523', '400401', 'หนองเรือ   ', '396', '28', '3');
INSERT INTO `district` VALUES ('3524', '400402', 'บ้านเม็ง   ', '396', '28', '3');
INSERT INTO `district` VALUES ('3525', '400403', 'บ้านกง   ', '396', '28', '3');
INSERT INTO `district` VALUES ('3526', '400404', 'ยางคำ   ', '396', '28', '3');
INSERT INTO `district` VALUES ('3527', '400405', 'จระเข้   ', '396', '28', '3');
INSERT INTO `district` VALUES ('3528', '400406', 'โนนทอง   ', '396', '28', '3');
INSERT INTO `district` VALUES ('3529', '400407', 'กุดกว้าง   ', '396', '28', '3');
INSERT INTO `district` VALUES ('3530', '400408', 'โนนทัน   ', '396', '28', '3');
INSERT INTO `district` VALUES ('3531', '400409', 'โนนสะอาด   ', '396', '28', '3');
INSERT INTO `district` VALUES ('3532', '400410', 'บ้านผือ   ', '396', '28', '3');
INSERT INTO `district` VALUES ('3533', '400501', 'ชุมแพ   ', '397', '28', '3');
INSERT INTO `district` VALUES ('3534', '400502', 'โนนหัน   ', '397', '28', '3');
INSERT INTO `district` VALUES ('3535', '400503', 'นาหนองทุ่ม   ', '397', '28', '3');
INSERT INTO `district` VALUES ('3536', '400504', 'โนนอุดม   ', '397', '28', '3');
INSERT INTO `district` VALUES ('3537', '400505', 'ขัวเรียง   ', '397', '28', '3');
INSERT INTO `district` VALUES ('3538', '400506', 'หนองไผ่   ', '397', '28', '3');
INSERT INTO `district` VALUES ('3539', '400507', 'ไชยสอ   ', '397', '28', '3');
INSERT INTO `district` VALUES ('3540', '400508', 'วังหินลาด   ', '397', '28', '3');
INSERT INTO `district` VALUES ('3541', '400509', 'นาเพียง   ', '397', '28', '3');
INSERT INTO `district` VALUES ('3542', '400510', 'หนองเขียด   ', '397', '28', '3');
INSERT INTO `district` VALUES ('3543', '400511', 'หนองเสาเล้า   ', '397', '28', '3');
INSERT INTO `district` VALUES ('3544', '400512', 'โนนสะอาด   ', '397', '28', '3');
INSERT INTO `district` VALUES ('3545', '400601', 'สีชมพู   ', '398', '28', '3');
INSERT INTO `district` VALUES ('3546', '400602', 'ศรีสุข   ', '398', '28', '3');
INSERT INTO `district` VALUES ('3547', '400603', 'นาจาน   ', '398', '28', '3');
INSERT INTO `district` VALUES ('3548', '400604', 'วังเพิ่ม   ', '398', '28', '3');
INSERT INTO `district` VALUES ('3549', '400605', 'ซำยาง   ', '398', '28', '3');
INSERT INTO `district` VALUES ('3550', '400606', 'หนองแดง   ', '398', '28', '3');
INSERT INTO `district` VALUES ('3551', '400607', 'ดงลาน   ', '398', '28', '3');
INSERT INTO `district` VALUES ('3552', '400608', 'บริบูรณ์   ', '398', '28', '3');
INSERT INTO `district` VALUES ('3553', '400609', 'บ้านใหม่   ', '398', '28', '3');
INSERT INTO `district` VALUES ('3554', '400610', 'ภูห่าน   ', '398', '28', '3');
INSERT INTO `district` VALUES ('3555', '400701', 'น้ำพอง   ', '399', '28', '3');
INSERT INTO `district` VALUES ('3556', '400702', 'วังชัย   ', '399', '28', '3');
INSERT INTO `district` VALUES ('3557', '400703', 'หนองกุง   ', '399', '28', '3');
INSERT INTO `district` VALUES ('3558', '400704', 'บัวใหญ่   ', '399', '28', '3');
INSERT INTO `district` VALUES ('3559', '400705', 'สะอาด   ', '399', '28', '3');
INSERT INTO `district` VALUES ('3560', '400706', 'ม่วงหวาน   ', '399', '28', '3');
INSERT INTO `district` VALUES ('3561', '400707', 'บ้านขาม   ', '399', '28', '3');
INSERT INTO `district` VALUES ('3562', '400708', 'บัวเงิน   ', '399', '28', '3');
INSERT INTO `district` VALUES ('3563', '400709', 'ทรายมูล   ', '399', '28', '3');
INSERT INTO `district` VALUES ('3564', '400710', 'ท่ากระเสริม   ', '399', '28', '3');
INSERT INTO `district` VALUES ('3565', '400711', 'พังทุย   ', '399', '28', '3');
INSERT INTO `district` VALUES ('3566', '400712', 'กุดน้ำใส   ', '399', '28', '3');
INSERT INTO `district` VALUES ('3567', '400801', 'โคกสูง   ', '400', '28', '3');
INSERT INTO `district` VALUES ('3568', '400802', 'บ้านดง   ', '400', '28', '3');
INSERT INTO `district` VALUES ('3569', '400803', 'เขื่อนอุบลรัตน์   ', '400', '28', '3');
INSERT INTO `district` VALUES ('3570', '400804', 'นาคำ   ', '400', '28', '3');
INSERT INTO `district` VALUES ('3571', '400805', 'ศรีสุขสำราญ   ', '400', '28', '3');
INSERT INTO `district` VALUES ('3572', '400806', 'ทุ่งโป่ง   ', '400', '28', '3');
INSERT INTO `district` VALUES ('3573', '400901', 'หนองโก   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3574', '400902', 'หนองกุงใหญ่   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3575', '400903', '*กระนวน   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3576', '400904', '*บ้านโนน   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3577', '400905', 'ห้วยโจด   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3578', '400906', 'ห้วยยาง   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3579', '400907', 'บ้านฝาง   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3580', '400908', '*คำแมด   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3581', '400909', 'ดูนสาด   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3582', '400910', 'หนองโน   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3583', '400911', 'น้ำอ้อม   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3584', '400912', 'หัวนาคำ   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3585', '400913', '*คูคำ   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3586', '400914', '*ห้วยเตย   ', '401', '28', '3');
INSERT INTO `district` VALUES ('3587', '401001', 'บ้านไผ่   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3588', '401002', 'ในเมือง   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3589', '401003', '*บ้านแฮด   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3590', '401004', '*โคกสำราญ   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3591', '401005', 'เมืองเพีย   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3592', '401006', 'เปือยใหญ่*   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3593', '401007', 'โนนศิลา*   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3594', '401008', 'บ้านหัน*   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3595', '401009', 'บ้านลาน   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3596', '401010', 'แคนเหนือ   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3597', '401011', 'ภูเหล็ก   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3598', '401012', '*หนองแซง   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3599', '401013', 'ป่าปอ   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3600', '401014', 'หินตั้ง   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3601', '401015', '*โนนสมบูรณ์   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3602', '401016', 'หนองน้ำใส   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3603', '401017', 'หัวหนอง   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3604', '401018', '*บ้านแฮด   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3605', '401019', 'โนนแดง*   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3606', '401020', 'หนองปลาหมอ*   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3607', '401096', '*สระแก้ว   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3608', '401097', '*ขามป้อม   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3609', '401098', '*วังม่วง   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3610', '401099', '*เปือยน้อย   ', '402', '28', '3');
INSERT INTO `district` VALUES ('3611', '401101', 'เปือยน้อย   ', '403', '28', '3');
INSERT INTO `district` VALUES ('3612', '401102', 'วังม่วง   ', '403', '28', '3');
INSERT INTO `district` VALUES ('3613', '401103', 'ขามป้อม   ', '403', '28', '3');
INSERT INTO `district` VALUES ('3614', '401104', 'สระแก้ว   ', '403', '28', '3');
INSERT INTO `district` VALUES ('3615', '401201', 'เมืองพล   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3616', '401203', 'โจดหนองแก   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3617', '401204', 'เก่างิ้ว   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3618', '401205', 'หนองมะเขือ   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3619', '401206', 'หนองแวงโสกพระ   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3620', '401207', 'เพ็กใหญ่   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3621', '401208', 'โคกสง่า   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3622', '401209', 'หนองแวงนางเบ้า   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3623', '401210', 'ลอมคอม   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3624', '401211', 'โนนข่า   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3625', '401212', 'โสกนกเต็น   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3626', '401213', 'หัวทุ่ง   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3627', '401290', '*ทางขวาง   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3628', '401291', '*ท่าวัด   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3629', '401292', '*ท่านางแมว   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3630', '401293', '*แวงน้อย   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3631', '401294', '*ก้านเหลือง   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3632', '401295', '*ละหารนา   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3633', '401296', '*แวงใหญ่   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3634', '401297', '*โนนทอง   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3635', '401298', '*ใหม่นาเพียง   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3636', '401299', '*คอนฉิม   ', '404', '28', '3');
INSERT INTO `district` VALUES ('3637', '401301', 'คอนฉิม   ', '405', '28', '3');
INSERT INTO `district` VALUES ('3638', '401302', 'ใหม่นาเพียง   ', '405', '28', '3');
INSERT INTO `district` VALUES ('3639', '401303', 'โนนทอง   ', '405', '28', '3');
INSERT INTO `district` VALUES ('3640', '401304', 'แวงใหญ่   ', '405', '28', '3');
INSERT INTO `district` VALUES ('3641', '401305', 'โนนสะอาด   ', '405', '28', '3');
INSERT INTO `district` VALUES ('3642', '401401', 'แวงน้อย   ', '406', '28', '3');
INSERT INTO `district` VALUES ('3643', '401402', 'ก้านเหลือง   ', '406', '28', '3');
INSERT INTO `district` VALUES ('3644', '401403', 'ท่านางแนว   ', '406', '28', '3');
INSERT INTO `district` VALUES ('3645', '401404', 'ละหานนา   ', '406', '28', '3');
INSERT INTO `district` VALUES ('3646', '401405', 'ท่าวัด   ', '406', '28', '3');
INSERT INTO `district` VALUES ('3647', '401406', 'ทางขวาง   ', '406', '28', '3');
INSERT INTO `district` VALUES ('3648', '401501', 'หนองสองห้อง   ', '407', '28', '3');
INSERT INTO `district` VALUES ('3649', '401502', 'คึมชาด   ', '407', '28', '3');
INSERT INTO `district` VALUES ('3650', '401503', 'โนนธาตุ   ', '407', '28', '3');
INSERT INTO `district` VALUES ('3651', '401504', 'ตะกั่วป่า   ', '407', '28', '3');
INSERT INTO `district` VALUES ('3652', '401505', 'สำโรง   ', '407', '28', '3');
INSERT INTO `district` VALUES ('3653', '401506', 'หนองเม็ก   ', '407', '28', '3');
INSERT INTO `district` VALUES ('3654', '401507', 'ดอนดู่   ', '407', '28', '3');
INSERT INTO `district` VALUES ('3655', '401508', 'ดงเค็ง   ', '407', '28', '3');
INSERT INTO `district` VALUES ('3656', '401509', 'หันโจด   ', '407', '28', '3');
INSERT INTO `district` VALUES ('3657', '401510', 'ดอนดั่ง   ', '407', '28', '3');
INSERT INTO `district` VALUES ('3658', '401511', 'วังหิน   ', '407', '28', '3');
INSERT INTO `district` VALUES ('3659', '401512', 'หนองไผ่ล้อม   ', '407', '28', '3');
INSERT INTO `district` VALUES ('3660', '401601', 'บ้านเรือ   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3661', '401602', 'ในเมือง*   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3662', '401603', '*บ้านโคก   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3663', '401604', 'หว้าทอง   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3664', '401605', 'กุดขอนแก่น   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3665', '401606', 'นาชุมแสง   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3666', '401607', 'นาหว้า   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3667', '401608', 'เขาน้อย*   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3668', '401609', '*กุดธาตุ   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3669', '401610', 'หนองกุงธนสาร   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3670', '401611', '*ขนวน   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3671', '401612', 'หนองกุงเซิน   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3672', '401613', 'สงเปือย   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3673', '401614', 'ทุ่งชมพู   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3674', '401615', 'เมืองเก่าพัฒนา*   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3675', '401616', 'ดินดำ   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3676', '401617', 'ภูเวียง   ', '408', '28', '3');
INSERT INTO `district` VALUES ('3677', '401701', 'กุดเค้า   ', '409', '28', '3');
INSERT INTO `district` VALUES ('3678', '401702', 'สวนหม่อน   ', '409', '28', '3');
INSERT INTO `district` VALUES ('3679', '401703', 'หนองแปน   ', '409', '28', '3');
INSERT INTO `district` VALUES ('3680', '401704', 'โพนเพ็ก   ', '409', '28', '3');
INSERT INTO `district` VALUES ('3681', '401705', 'คำแคน   ', '409', '28', '3');
INSERT INTO `district` VALUES ('3682', '401706', 'นาข่า   ', '409', '28', '3');
INSERT INTO `district` VALUES ('3683', '401707', 'นางาม   ', '409', '28', '3');
INSERT INTO `district` VALUES ('3684', '401708', '*บ้านโคก   ', '409', '28', '3');
INSERT INTO `district` VALUES ('3685', '401709', '*โพธิ์ไชย   ', '409', '28', '3');
INSERT INTO `district` VALUES ('3686', '401710', 'ท่าศาลา   ', '409', '28', '3');
INSERT INTO `district` VALUES ('3687', '401711', '*ซับสมบูรณ์   ', '409', '28', '3');
INSERT INTO `district` VALUES ('3688', '401712', '*นาแพง   ', '409', '28', '3');
INSERT INTO `district` VALUES ('3689', '401801', 'ชนบท   ', '410', '28', '3');
INSERT INTO `district` VALUES ('3690', '401802', 'กุดเพียขอม   ', '410', '28', '3');
INSERT INTO `district` VALUES ('3691', '401803', 'วังแสง   ', '410', '28', '3');
INSERT INTO `district` VALUES ('3692', '401804', 'ห้วยแก   ', '410', '28', '3');
INSERT INTO `district` VALUES ('3693', '401805', 'บ้านแท่น   ', '410', '28', '3');
INSERT INTO `district` VALUES ('3694', '401806', 'ศรีบุญเรือง   ', '410', '28', '3');
INSERT INTO `district` VALUES ('3695', '401807', 'โนนพะยอม   ', '410', '28', '3');
INSERT INTO `district` VALUES ('3696', '401808', 'ปอแดง   ', '410', '28', '3');
INSERT INTO `district` VALUES ('3697', '401901', 'เขาสวนกวาง   ', '411', '28', '3');
INSERT INTO `district` VALUES ('3698', '401902', 'ดงเมืองแอม   ', '411', '28', '3');
INSERT INTO `district` VALUES ('3699', '401903', 'นางิ้ว   ', '411', '28', '3');
INSERT INTO `district` VALUES ('3700', '401904', 'โนนสมบูรณ์   ', '411', '28', '3');
INSERT INTO `district` VALUES ('3701', '401905', 'คำม่วง   ', '411', '28', '3');
INSERT INTO `district` VALUES ('3702', '402001', 'โนนคอม   ', '412', '28', '3');
INSERT INTO `district` VALUES ('3703', '402002', 'นาฝาย   ', '412', '28', '3');
INSERT INTO `district` VALUES ('3704', '402003', 'ภูผาม่าน   ', '412', '28', '3');
INSERT INTO `district` VALUES ('3705', '402004', 'วังสวาบ   ', '412', '28', '3');
INSERT INTO `district` VALUES ('3706', '402005', 'ห้วยม่วง   ', '412', '28', '3');
INSERT INTO `district` VALUES ('3707', '402101', 'กระนวน   ', '413', '28', '3');
INSERT INTO `district` VALUES ('3708', '402102', 'คำแมด   ', '413', '28', '3');
INSERT INTO `district` VALUES ('3709', '402103', 'บ้านโนน   ', '413', '28', '3');
INSERT INTO `district` VALUES ('3710', '402104', 'คูคำ   ', '413', '28', '3');
INSERT INTO `district` VALUES ('3711', '402105', 'ห้วยเตย   ', '413', '28', '3');
INSERT INTO `district` VALUES ('3712', '402201', 'บ้านโคก   ', '414', '28', '3');
INSERT INTO `district` VALUES ('3713', '402202', 'โพธิ์ไชย   ', '414', '28', '3');
INSERT INTO `district` VALUES ('3714', '402203', 'ซับสมบูรณ์   ', '414', '28', '3');
INSERT INTO `district` VALUES ('3715', '402204', 'นาแพง   ', '414', '28', '3');
INSERT INTO `district` VALUES ('3716', '402301', 'กุดธาตุ   ', '415', '28', '3');
INSERT INTO `district` VALUES ('3717', '402302', 'บ้านโคก   ', '415', '28', '3');
INSERT INTO `district` VALUES ('3718', '402303', 'ขนวน   ', '415', '28', '3');
INSERT INTO `district` VALUES ('3719', '402401', 'บ้านแฮด   ', '416', '28', '3');
INSERT INTO `district` VALUES ('3720', '402402', 'โคกสำราญ   ', '416', '28', '3');
INSERT INTO `district` VALUES ('3721', '402403', 'โนนสมบูรณ์   ', '416', '28', '3');
INSERT INTO `district` VALUES ('3722', '402404', 'หนองแซง   ', '416', '28', '3');
INSERT INTO `district` VALUES ('3723', '402501', 'โนนศิลา   ', '417', '28', '3');
INSERT INTO `district` VALUES ('3724', '402502', 'หนองปลาหมอ   ', '417', '28', '3');
INSERT INTO `district` VALUES ('3725', '402503', 'บ้านหัน   ', '417', '28', '3');
INSERT INTO `district` VALUES ('3726', '402504', 'เปือยใหญ่   ', '417', '28', '3');
INSERT INTO `district` VALUES ('3727', '402505', 'โนนแดง   ', '417', '28', '3');
INSERT INTO `district` VALUES ('3728', '402901', 'ในเมือง   ', '418', '28', '3');
INSERT INTO `district` VALUES ('3729', '402902', 'เมืองเก่าพัฒนา   ', '418', '28', '3');
INSERT INTO `district` VALUES ('3730', '402903', 'เขาน้อย   ', '418', '28', '3');
INSERT INTO `district` VALUES ('3731', '406801', 'บ้านเป็ด*   ', '419', '28', '3');
INSERT INTO `district` VALUES ('3732', '410101', 'หมากแข้ง   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3733', '410102', 'นิคมสงเคราะห์   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3734', '410103', 'บ้านขาว   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3735', '410104', 'หนองบัว   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3736', '410105', 'บ้านตาด   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3737', '410106', 'โนนสูง   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3738', '410107', 'หมูม่น   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3739', '410108', 'เชียงยืน   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3740', '410109', 'หนองนาคำ   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3741', '410110', 'กุดสระ   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3742', '410111', 'นาดี   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3743', '410112', 'บ้านเลื่อม   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3744', '410113', 'เชียงพิณ   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3745', '410114', 'สามพร้าว   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3746', '410115', 'หนองไฮ   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3747', '410116', 'นาข่า   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3748', '410117', 'บ้านจั่น   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3749', '410118', 'หนองขอนกว้าง   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3750', '410119', 'โคกสะอาด   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3751', '410120', 'นากว้าง   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3752', '410121', 'หนองไผ่   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3753', '410190', '*ขอนยูง   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3754', '410191', '*ปะโค   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3755', '410194', '*หนองหว้า   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3756', '410195', '*ขอนยูง   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3757', '410196', '*ปะโค   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3758', '410197', '*เชียงเพ็ง   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3759', '410198', '*กุดจับ   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3760', '410199', '*หนองปุ   ', '421', '29', '3');
INSERT INTO `district` VALUES ('3761', '410201', 'กุดจับ   ', '422', '29', '3');
INSERT INTO `district` VALUES ('3762', '410202', 'ปะโค   ', '422', '29', '3');
INSERT INTO `district` VALUES ('3763', '410203', 'ขอนยูง   ', '422', '29', '3');
INSERT INTO `district` VALUES ('3764', '410204', 'เชียงเพ็ง   ', '422', '29', '3');
INSERT INTO `district` VALUES ('3765', '410205', 'สร้างก่อ   ', '422', '29', '3');
INSERT INTO `district` VALUES ('3766', '410206', 'เมืองเพีย   ', '422', '29', '3');
INSERT INTO `district` VALUES ('3767', '410207', 'ตาลเลียน   ', '422', '29', '3');
INSERT INTO `district` VALUES ('3768', '410301', 'หมากหญ้า   ', '423', '29', '3');
INSERT INTO `district` VALUES ('3769', '410302', 'หนองอ้อ   ', '423', '29', '3');
INSERT INTO `district` VALUES ('3770', '410303', 'อูบมุง   ', '423', '29', '3');
INSERT INTO `district` VALUES ('3771', '410304', 'กุดหมากไฟ   ', '423', '29', '3');
INSERT INTO `district` VALUES ('3772', '410305', 'น้ำพ่น   ', '423', '29', '3');
INSERT INTO `district` VALUES ('3773', '410306', 'หนองบัวบาน   ', '423', '29', '3');
INSERT INTO `district` VALUES ('3774', '410307', 'โนนหวาย   ', '423', '29', '3');
INSERT INTO `district` VALUES ('3775', '410308', 'หนองวัวซอ   ', '423', '29', '3');
INSERT INTO `district` VALUES ('3776', '410401', 'ตูมใต้   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3777', '410402', 'พันดอน   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3778', '410403', 'เวียงคำ   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3779', '410404', 'แชแล   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3780', '410405', 'อุ่มจาน*   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3781', '410406', 'เชียงแหว   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3782', '410407', 'ห้วยเกิ้ง   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3783', '410408', 'ห้วยสามพาด*   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3784', '410409', 'เสอเพลอ   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3785', '410410', 'สีออ   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3786', '410411', 'ปะโค   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3787', '410412', 'นาม่วง*   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3788', '410413', 'ผาสุก   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3789', '410414', 'ท่าลี่   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3790', '410415', 'กุมภวาปี   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3791', '410416', 'หนองหว้า   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3792', '410495', '*โนนสะอาด   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3793', '410496', '*โพธิ์ศรีสำราญ   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3794', '410497', '*บุ่งแก้ว   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3795', '410498', '*หนองแสง   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3796', '410499', '*แสงสว่าง   ', '424', '29', '3');
INSERT INTO `district` VALUES ('3797', '410501', 'โนนสะอาด   ', '425', '29', '3');
INSERT INTO `district` VALUES ('3798', '410502', 'บุ่งแก้ว   ', '425', '29', '3');
INSERT INTO `district` VALUES ('3799', '410503', 'โพธิ์ศรีสำราญ   ', '425', '29', '3');
INSERT INTO `district` VALUES ('3800', '410504', 'ทมนางาม   ', '425', '29', '3');
INSERT INTO `district` VALUES ('3801', '410505', 'หนองกุงศรี   ', '425', '29', '3');
INSERT INTO `district` VALUES ('3802', '410506', 'โคกกลาง   ', '425', '29', '3');
INSERT INTO `district` VALUES ('3803', '410601', 'หนองหาน   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3804', '410602', 'หนองเม็ก   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3805', '410603', '*คอนสาย   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3806', '410604', '*บ้านจีต   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3807', '410605', 'พังงู   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3808', '410606', 'สะแบง   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3809', '410607', 'สร้อยพร้าว   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3810', '410608', '*บ้านแดง   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3811', '410609', 'บ้านเชียง   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3812', '410610', 'บ้านยา   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3813', '410611', 'โพนงาม   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3814', '410612', 'ผักตบ   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3815', '410613', '*ดอนกลอย   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3816', '410614', 'หนองไผ่   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3817', '410615', '*นาทราย   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3818', '410616', '*ค้อใหญ่   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3819', '410617', 'ดอนหายโศก   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3820', '410618', 'หนองสระปลา   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3821', '410619', '*โนนทองอินทร์   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3822', '410694', '*หนองหลัก   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3823', '410695', '*บ้านแดง   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3824', '410696', '*ทุ่งใหญ่   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3825', '410697', '*ทุ่งฝน   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3826', '410698', '*โพนสูง   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3827', '410699', '*ไชยวาน   ', '426', '29', '3');
INSERT INTO `district` VALUES ('3828', '410701', 'ทุ่งฝน   ', '427', '29', '3');
INSERT INTO `district` VALUES ('3829', '410702', 'ทุ่งใหญ่   ', '427', '29', '3');
INSERT INTO `district` VALUES ('3830', '410703', 'นาชุมแสง   ', '427', '29', '3');
INSERT INTO `district` VALUES ('3831', '410704', 'นาทม   ', '427', '29', '3');
INSERT INTO `district` VALUES ('3832', '410801', 'ไชยวาน   ', '428', '29', '3');
INSERT INTO `district` VALUES ('3833', '410802', 'หนองหลัก   ', '428', '29', '3');
INSERT INTO `district` VALUES ('3834', '410803', 'คำเลาะ   ', '428', '29', '3');
INSERT INTO `district` VALUES ('3835', '410804', 'โพนสูง   ', '428', '29', '3');
INSERT INTO `district` VALUES ('3836', '410901', 'ศรีธาตุ   ', '429', '29', '3');
INSERT INTO `district` VALUES ('3837', '410902', 'จำปี   ', '429', '29', '3');
INSERT INTO `district` VALUES ('3838', '410903', 'บ้านโปร่ง   ', '429', '29', '3');
INSERT INTO `district` VALUES ('3839', '410904', 'หัวนาคำ   ', '429', '29', '3');
INSERT INTO `district` VALUES ('3840', '410905', 'หนองนกเขียน   ', '429', '29', '3');
INSERT INTO `district` VALUES ('3841', '410906', 'นายูง   ', '429', '29', '3');
INSERT INTO `district` VALUES ('3842', '410907', 'ตาดทอง   ', '429', '29', '3');
INSERT INTO `district` VALUES ('3843', '411001', 'หนองกุงทับม้า   ', '430', '29', '3');
INSERT INTO `district` VALUES ('3844', '411002', 'หนองหญ้าไซ   ', '430', '29', '3');
INSERT INTO `district` VALUES ('3845', '411003', 'บะยาว   ', '430', '29', '3');
INSERT INTO `district` VALUES ('3846', '411004', 'ผาสุก   ', '430', '29', '3');
INSERT INTO `district` VALUES ('3847', '411005', 'คำโคกสูง   ', '430', '29', '3');
INSERT INTO `district` VALUES ('3848', '411006', 'วังสามหมอ   ', '430', '29', '3');
INSERT INTO `district` VALUES ('3849', '411101', 'ศรีสุทโธ   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3850', '411102', 'บ้านดุง   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3851', '411103', 'ดงเย็น   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3852', '411104', 'โพนสูง   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3853', '411105', 'อ้อมกอ   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3854', '411106', 'บ้านจันทน์   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3855', '411107', 'บ้านชัย   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3856', '411108', 'นาไหม   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3857', '411109', 'ถ่อนนาลับ   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3858', '411110', 'วังทอง   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3859', '411111', 'บ้านม่วง   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3860', '411112', 'บ้านตาด   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3861', '411113', 'นาคำ   ', '431', '29', '3');
INSERT INTO `district` VALUES ('3862', '411201', '*หนองบัว   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3863', '411202', '*หนองภัยศูนย์   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3864', '411203', '*โพธิ์ชัย   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3865', '411204', '*หนองสวรรค์   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3866', '411205', '*หัวนา   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3867', '411206', '*บ้านขาม   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3868', '411207', '*นามะเฟือง   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3869', '411208', '*บ้านพร้าว   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3870', '411209', '*โนนขมิ้น   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3871', '411210', '*ลำภู   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3872', '411211', '*กุดจิก   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3873', '411212', '*โนนทัน   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3874', '411213', '*นาคำไฮ   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3875', '411214', '*ป่าไม้งาม   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3876', '411215', '*หนองหว้า   ', '432', '29', '3');
INSERT INTO `district` VALUES ('3877', '411301', '*เมืองใหม่   ', '433', '29', '3');
INSERT INTO `district` VALUES ('3878', '411302', '*ศรีบุญเรือง   ', '433', '29', '3');
INSERT INTO `district` VALUES ('3879', '411303', '*หนองบัวใต้   ', '433', '29', '3');
INSERT INTO `district` VALUES ('3880', '411304', '*กุดสะเทียน   ', '433', '29', '3');
INSERT INTO `district` VALUES ('3881', '411305', '*นากอก   ', '433', '29', '3');
INSERT INTO `district` VALUES ('3882', '411306', '*โนนสะอาด   ', '433', '29', '3');
INSERT INTO `district` VALUES ('3883', '411307', '*ยางหล่อ   ', '433', '29', '3');
INSERT INTO `district` VALUES ('3884', '411308', '*โนนม่วง   ', '433', '29', '3');
INSERT INTO `district` VALUES ('3885', '411309', '*หนองกุงแก้ว   ', '433', '29', '3');
INSERT INTO `district` VALUES ('3886', '411310', '*หนองแก   ', '433', '29', '3');
INSERT INTO `district` VALUES ('3887', '411311', '*ทรายทอง   ', '433', '29', '3');
INSERT INTO `district` VALUES ('3888', '411312', '*หันนางาม   ', '433', '29', '3');
INSERT INTO `district` VALUES ('3889', '411401', '*นากลาง   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3890', '411402', '*ด่านช้าง   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3891', '411403', '*นาเหล่า   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3892', '411404', '*นาแก   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3893', '411405', '*กุดดินจี่   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3894', '411406', '*ฝั่งแดง   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3895', '411407', '*เก่ากลอย   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3896', '411408', '*วังทอง   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3897', '411409', '*โนนเมือง   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3898', '411410', '*อุทัยสวรรค์   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3899', '411411', '*ดงสวรรค์   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3900', '411412', '*วังปลาป้อม   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3901', '411413', '*กุดแห่   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3902', '411414', '*เทพคีรี   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3903', '411415', '*โนนภูทอง   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3904', '411493', '*บุญทัน   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3905', '411494', '*สุวรรณคูหา   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3906', '411495', '*ดงมะไฟ   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3907', '411496', '*นาด่าน   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3908', '411497', '*นาดี   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3909', '411498', '*บ้านโคก   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3910', '411499', '*นาสี   ', '434', '29', '3');
INSERT INTO `district` VALUES ('3911', '411501', '*นาสี   ', '435', '29', '3');
INSERT INTO `district` VALUES ('3912', '411502', '*บ้านโคก   ', '435', '29', '3');
INSERT INTO `district` VALUES ('3913', '411503', '*นาดี   ', '435', '29', '3');
INSERT INTO `district` VALUES ('3914', '411504', '*นาด่าน   ', '435', '29', '3');
INSERT INTO `district` VALUES ('3915', '411505', '*ดงมะไฟ   ', '435', '29', '3');
INSERT INTO `district` VALUES ('3916', '411506', '*สุวรรณคูหา   ', '435', '29', '3');
INSERT INTO `district` VALUES ('3917', '411507', '*บุญทัน   ', '435', '29', '3');
INSERT INTO `district` VALUES ('3918', '411601', '*โนนสัง   ', '436', '29', '3');
INSERT INTO `district` VALUES ('3919', '411602', '*บ้านถิ่น   ', '436', '29', '3');
INSERT INTO `district` VALUES ('3920', '411603', '*หนองเรือ   ', '436', '29', '3');
INSERT INTO `district` VALUES ('3921', '411604', '*กุดดู่   ', '436', '29', '3');
INSERT INTO `district` VALUES ('3922', '411605', '*บ้านค้อ   ', '436', '29', '3');
INSERT INTO `district` VALUES ('3923', '411606', '*โนนเมือง   ', '436', '29', '3');
INSERT INTO `district` VALUES ('3924', '411607', '*โคกใหญ่   ', '436', '29', '3');
INSERT INTO `district` VALUES ('3925', '411608', '*โคกม่วง   ', '436', '29', '3');
INSERT INTO `district` VALUES ('3926', '411609', '*นิคมพัฒนา   ', '436', '29', '3');
INSERT INTO `district` VALUES ('3927', '411610', '*ปางกู่   ', '436', '29', '3');
INSERT INTO `district` VALUES ('3928', '411701', 'บ้านผือ   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3929', '411702', 'หายโศก   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3930', '411703', 'เขือน้ำ   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3931', '411704', 'คำบง   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3932', '411705', 'โนนทอง   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3933', '411706', 'ข้าวสาร   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3934', '411707', 'จำปาโมง   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3935', '411708', 'กลางใหญ่   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3936', '411709', 'เมืองพาน   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3937', '411710', 'คำด้วง   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3938', '411711', 'หนองหัวคู   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3939', '411712', 'บ้านค้อ   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3940', '411713', 'หนองแวง   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3941', '411799', '*บ้านเม็ก   ', '437', '29', '3');
INSERT INTO `district` VALUES ('3942', '411801', 'นางัว   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3943', '411802', 'น้ำโสม   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3944', '411803', '*นายูง   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3945', '411804', '*นาแค   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3946', '411805', 'หนองแวง   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3947', '411806', 'บ้านหยวก   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3948', '411807', 'โสมเยี่ยม   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3949', '411808', '*โนนทอง   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3950', '411809', '*บ้านก้อง   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3951', '411810', 'ศรีสำราญ   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3952', '411811', '*ทุบกุง   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3953', '411812', 'สามัคคี   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3954', '411898', '*นาแค   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3955', '411899', '*นายูง   ', '438', '29', '3');
INSERT INTO `district` VALUES ('3956', '411901', 'เพ็ญ   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3957', '411902', 'บ้านธาตุ   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3958', '411903', 'นาพู่   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3959', '411904', 'เชียงหวาง   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3960', '411905', 'สุมเส้า   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3961', '411906', 'นาบัว   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3962', '411907', 'บ้านเหล่า   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3963', '411908', 'จอมศรี   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3964', '411909', 'เตาไห   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3965', '411910', 'โคกกลาง   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3966', '411911', 'สร้างแป้น   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3967', '411997', '*เชียงดา   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3968', '411998', '*บ้านยวด   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3969', '411999', '*สร้างคอม   ', '439', '29', '3');
INSERT INTO `district` VALUES ('3970', '412001', 'สร้างคอม   ', '440', '29', '3');
INSERT INTO `district` VALUES ('3971', '412002', 'เชียงดา   ', '440', '29', '3');
INSERT INTO `district` VALUES ('3972', '412003', 'บ้านยวด   ', '440', '29', '3');
INSERT INTO `district` VALUES ('3973', '412004', 'บ้านโคก   ', '440', '29', '3');
INSERT INTO `district` VALUES ('3974', '412005', 'นาสะอาด   ', '440', '29', '3');
INSERT INTO `district` VALUES ('3975', '412006', 'บ้านหินโงม   ', '440', '29', '3');
INSERT INTO `district` VALUES ('3976', '412101', 'หนองแสง   ', '441', '29', '3');
INSERT INTO `district` VALUES ('3977', '412102', 'แสงสว่าง   ', '441', '29', '3');
INSERT INTO `district` VALUES ('3978', '412103', 'นาดี   ', '441', '29', '3');
INSERT INTO `district` VALUES ('3979', '412104', 'ทับกุง   ', '441', '29', '3');
INSERT INTO `district` VALUES ('3980', '412201', 'นายูง   ', '442', '29', '3');
INSERT INTO `district` VALUES ('3981', '412202', 'บ้านก้อง   ', '442', '29', '3');
INSERT INTO `district` VALUES ('3982', '412203', 'นาแค   ', '442', '29', '3');
INSERT INTO `district` VALUES ('3983', '412204', 'โนนทอง   ', '442', '29', '3');
INSERT INTO `district` VALUES ('3984', '412301', 'บ้านแดง   ', '443', '29', '3');
INSERT INTO `district` VALUES ('3985', '412302', 'นาทราย   ', '443', '29', '3');
INSERT INTO `district` VALUES ('3986', '412303', 'ดอนกลอย   ', '443', '29', '3');
INSERT INTO `district` VALUES ('3987', '412401', 'บ้านจีต   ', '444', '29', '3');
INSERT INTO `district` VALUES ('3988', '412402', 'โนนทองอินทร์   ', '444', '29', '3');
INSERT INTO `district` VALUES ('3989', '412403', 'ค้อใหญ่   ', '444', '29', '3');
INSERT INTO `district` VALUES ('3990', '412404', 'คอนสาย   ', '444', '29', '3');
INSERT INTO `district` VALUES ('3991', '412501', 'นาม่วง   ', '445', '29', '3');
INSERT INTO `district` VALUES ('3992', '412502', 'ห้วยสามพาด   ', '445', '29', '3');
INSERT INTO `district` VALUES ('3993', '412503', 'อุ่มจาน   ', '445', '29', '3');
INSERT INTO `district` VALUES ('3994', '420101', 'กุดป่อง   ', '446', '30', '3');
INSERT INTO `district` VALUES ('3995', '420102', 'เมือง   ', '446', '30', '3');
INSERT INTO `district` VALUES ('3996', '420103', 'นาอ้อ   ', '446', '30', '3');
INSERT INTO `district` VALUES ('3997', '420104', 'กกดู่   ', '446', '30', '3');
INSERT INTO `district` VALUES ('3998', '420105', 'น้ำหมาน   ', '446', '30', '3');
INSERT INTO `district` VALUES ('3999', '420106', 'เสี้ยว   ', '446', '30', '3');
INSERT INTO `district` VALUES ('4000', '420107', 'นาอาน   ', '446', '30', '3');
INSERT INTO `district` VALUES ('4001', '420108', 'นาโป่ง   ', '446', '30', '3');
INSERT INTO `district` VALUES ('4002', '420109', 'นาดินดำ   ', '446', '30', '3');
INSERT INTO `district` VALUES ('4003', '420110', 'น้ำสวย   ', '446', '30', '3');
INSERT INTO `district` VALUES ('4004', '420111', 'ชัยพฤกษ์   ', '446', '30', '3');
INSERT INTO `district` VALUES ('4005', '420112', 'นาแขม   ', '446', '30', '3');
INSERT INTO `district` VALUES ('4006', '420113', 'ศรีสองรัก   ', '446', '30', '3');
INSERT INTO `district` VALUES ('4007', '420114', 'กกทอง   ', '446', '30', '3');
INSERT INTO `district` VALUES ('4008', '420201', 'นาด้วง   ', '447', '30', '3');
INSERT INTO `district` VALUES ('4009', '420202', 'นาดอกคำ   ', '447', '30', '3');
INSERT INTO `district` VALUES ('4010', '420203', 'ท่าสะอาด   ', '447', '30', '3');
INSERT INTO `district` VALUES ('4011', '420204', 'ท่าสวรรค์   ', '447', '30', '3');
INSERT INTO `district` VALUES ('4012', '420301', 'เชียงคาน   ', '448', '30', '3');
INSERT INTO `district` VALUES ('4013', '420302', 'ธาตุ   ', '448', '30', '3');
INSERT INTO `district` VALUES ('4014', '420303', 'นาซ่าว   ', '448', '30', '3');
INSERT INTO `district` VALUES ('4015', '420304', 'เขาแก้ว   ', '448', '30', '3');
INSERT INTO `district` VALUES ('4016', '420305', 'ปากตม   ', '448', '30', '3');
INSERT INTO `district` VALUES ('4017', '420306', 'บุฮม   ', '448', '30', '3');
INSERT INTO `district` VALUES ('4018', '420307', 'จอมศรี   ', '448', '30', '3');
INSERT INTO `district` VALUES ('4019', '420308', 'หาดทรายขาว   ', '448', '30', '3');
INSERT INTO `district` VALUES ('4020', '420401', 'ปากชม   ', '449', '30', '3');
INSERT INTO `district` VALUES ('4021', '420402', 'เชียงกลม   ', '449', '30', '3');
INSERT INTO `district` VALUES ('4022', '420403', 'หาดคัมภีร์   ', '449', '30', '3');
INSERT INTO `district` VALUES ('4023', '420404', 'ห้วยบ่อซืน   ', '449', '30', '3');
INSERT INTO `district` VALUES ('4024', '420405', 'ห้วยพิชัย   ', '449', '30', '3');
INSERT INTO `district` VALUES ('4025', '420406', 'ชมเจริญ   ', '449', '30', '3');
INSERT INTO `district` VALUES ('4026', '420501', 'ด่านซ้าย   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4027', '420502', 'ปากหมัน   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4028', '420503', 'นาดี   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4029', '420504', 'โคกงาม   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4030', '420505', 'โพนสูง   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4031', '420506', 'อิปุ่ม   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4032', '420507', 'กกสะทอน   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4033', '420508', 'โป่ง   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4034', '420509', 'วังยาว   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4035', '420510', 'นาหอ   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4036', '420593', '*ร่องจิก   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4037', '420594', '*แสงภา   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4038', '420595', '*ปลาบ่า   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4039', '420596', '*นาพึ่ง   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4040', '420597', '*ท่าศาลา   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4041', '420598', '*หนองบัว   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4042', '420599', '*นาแห้ว   ', '450', '30', '3');
INSERT INTO `district` VALUES ('4043', '420601', 'นาแห้ว   ', '451', '30', '3');
INSERT INTO `district` VALUES ('4044', '420602', 'แสงภา   ', '451', '30', '3');
INSERT INTO `district` VALUES ('4045', '420603', 'นาพึง   ', '451', '30', '3');
INSERT INTO `district` VALUES ('4046', '420604', 'นามาลา   ', '451', '30', '3');
INSERT INTO `district` VALUES ('4047', '420605', 'เหล่ากอหก   ', '451', '30', '3');
INSERT INTO `district` VALUES ('4048', '420701', 'หนองบัว   ', '452', '30', '3');
INSERT INTO `district` VALUES ('4049', '420702', 'ท่าศาลา   ', '452', '30', '3');
INSERT INTO `district` VALUES ('4050', '420703', 'ร่องจิก   ', '452', '30', '3');
INSERT INTO `district` VALUES ('4051', '420704', 'ปลาบ่า   ', '452', '30', '3');
INSERT INTO `district` VALUES ('4052', '420705', 'ลาดค่าง   ', '452', '30', '3');
INSERT INTO `district` VALUES ('4053', '420706', 'สานตม   ', '452', '30', '3');
INSERT INTO `district` VALUES ('4054', '420801', 'ท่าลี่   ', '453', '30', '3');
INSERT INTO `district` VALUES ('4055', '420802', 'หนองผือ   ', '453', '30', '3');
INSERT INTO `district` VALUES ('4056', '420803', 'อาฮี   ', '453', '30', '3');
INSERT INTO `district` VALUES ('4057', '420804', 'น้ำแคม   ', '453', '30', '3');
INSERT INTO `district` VALUES ('4058', '420805', 'โคกใหญ่   ', '453', '30', '3');
INSERT INTO `district` VALUES ('4059', '420806', 'น้ำทูน   ', '453', '30', '3');
INSERT INTO `district` VALUES ('4060', '420901', 'วังสะพุง   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4061', '420902', 'ทรายขาว   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4062', '420903', 'หนองหญ้าปล้อง   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4063', '420904', 'หนองงิ้ว   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4064', '420905', 'ปากปวน   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4065', '420906', 'ผาน้อย   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4066', '420907', '*เอราวัณ   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4067', '420908', '*ผาอินทร์แปลง   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4068', '420909', '*ผาสามยอด   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4069', '420910', 'ผาบิ้ง   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4070', '420911', 'เขาหลวง   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4071', '420912', 'โคกขมิ้น   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4072', '420913', 'ศรีสงคราม   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4073', '420914', '*ทรัพย์ไพวัลย์   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4074', '420998', '*หนองคัน   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4075', '420999', '*ภูหอ   ', '454', '30', '3');
INSERT INTO `district` VALUES ('4076', '421001', 'ศรีฐาน   ', '455', '30', '3');
INSERT INTO `district` VALUES ('4077', '421002', 'ปวนพุ*   ', '455', '30', '3');
INSERT INTO `district` VALUES ('4078', '421003', '*ท่าช้างคล้อง   ', '455', '30', '3');
INSERT INTO `district` VALUES ('4079', '421004', '*ผาขาว   ', '455', '30', '3');
INSERT INTO `district` VALUES ('4080', '421005', 'ผานกเค้า   ', '455', '30', '3');
INSERT INTO `district` VALUES ('4081', '421006', '*โนนป่าซาง   ', '455', '30', '3');
INSERT INTO `district` VALUES ('4082', '421007', 'ภูกระดึง   ', '455', '30', '3');
INSERT INTO `district` VALUES ('4083', '421008', 'หนองหิน*   ', '455', '30', '3');
INSERT INTO `district` VALUES ('4084', '421009', '*โนนปอแดง   ', '455', '30', '3');
INSERT INTO `district` VALUES ('4085', '421010', 'ห้วยส้ม   ', '455', '30', '3');
INSERT INTO `district` VALUES ('4086', '421011', 'ตาดข่า*   ', '455', '30', '3');
INSERT INTO `district` VALUES ('4087', '421101', 'ภูหอ   ', '456', '30', '3');
INSERT INTO `district` VALUES ('4088', '421102', 'หนองคัน   ', '456', '30', '3');
INSERT INTO `district` VALUES ('4089', '421103', 'วังน้ำใส*   ', '456', '30', '3');
INSERT INTO `district` VALUES ('4090', '421104', 'ห้วยสีเสียด   ', '456', '30', '3');
INSERT INTO `district` VALUES ('4091', '421105', 'เลยวังไสย์   ', '456', '30', '3');
INSERT INTO `district` VALUES ('4092', '421106', 'แก่งศรีภูมิ   ', '456', '30', '3');
INSERT INTO `district` VALUES ('4093', '421201', 'ผาขาว   ', '457', '30', '3');
INSERT INTO `district` VALUES ('4094', '421202', 'ท่าช้างคล้อง   ', '457', '30', '3');
INSERT INTO `district` VALUES ('4095', '421203', 'โนนปอแดง   ', '457', '30', '3');
INSERT INTO `district` VALUES ('4096', '421204', 'โนนป่าซาง   ', '457', '30', '3');
INSERT INTO `district` VALUES ('4097', '421205', 'บ้านเพิ่ม   ', '457', '30', '3');
INSERT INTO `district` VALUES ('4098', '421301', 'เอราวัณ   ', '458', '30', '3');
INSERT INTO `district` VALUES ('4099', '421302', 'ผาอินทร์แปลง   ', '458', '30', '3');
INSERT INTO `district` VALUES ('4100', '421303', 'ผาสามยอด   ', '458', '30', '3');
INSERT INTO `district` VALUES ('4101', '421304', 'ทรัพย์ไพวัลย์   ', '458', '30', '3');
INSERT INTO `district` VALUES ('4102', '421401', 'หนองหิน   ', '459', '30', '3');
INSERT INTO `district` VALUES ('4103', '421402', 'ตาดข่า   ', '459', '30', '3');
INSERT INTO `district` VALUES ('4104', '421403', 'ปวนพุ   ', '459', '30', '3');
INSERT INTO `district` VALUES ('4105', '430101', 'ในเมือง   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4106', '430102', 'มีชัย   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4107', '430103', 'โพธิ์ชัย   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4108', '430104', 'กวนวัน   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4109', '430105', 'เวียงคุก   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4110', '430106', 'วัดธาตุ   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4111', '430107', 'หาดคำ   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4112', '430108', 'หินโงม   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4113', '430109', 'บ้านเดื่อ   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4114', '430110', 'ค่ายบกหวาน   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4115', '430111', 'สองห้อง   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4116', '430112', '*สระใคร   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4117', '430113', 'พระธาตุบังพวน   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4118', '430114', '*บ้านฝาง   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4119', '430115', '*คอกช้าง   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4120', '430116', 'หนองกอมเกาะ   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4121', '430117', 'ปะโค   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4122', '430118', 'เมืองหมี   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4123', '430119', 'สีกาย   ', '460', '31', '3');
INSERT INTO `district` VALUES ('4124', '430201', 'ท่าบ่อ   ', '461', '31', '3');
INSERT INTO `district` VALUES ('4125', '430202', 'น้ำโมง   ', '461', '31', '3');
INSERT INTO `district` VALUES ('4126', '430203', 'กองนาง   ', '461', '31', '3');
INSERT INTO `district` VALUES ('4127', '430204', 'โคกคอน   ', '461', '31', '3');
INSERT INTO `district` VALUES ('4128', '430205', 'บ้านเดื่อ   ', '461', '31', '3');
INSERT INTO `district` VALUES ('4129', '430206', 'บ้านถ่อน   ', '461', '31', '3');
INSERT INTO `district` VALUES ('4130', '430207', 'บ้านว่าน   ', '461', '31', '3');
INSERT INTO `district` VALUES ('4131', '430208', 'นาข่า   ', '461', '31', '3');
INSERT INTO `district` VALUES ('4132', '430209', 'โพนสา   ', '461', '31', '3');
INSERT INTO `district` VALUES ('4133', '430210', 'หนองนาง   ', '461', '31', '3');
INSERT INTO `district` VALUES ('4134', '430301', 'บึงกาฬ   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4135', '430302', '*ชุมภูพร   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4136', '430303', 'โนนสมบูรณ์   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4137', '430304', 'หนองเข็ง   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4138', '430305', 'หอคำ   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4139', '430306', 'หนองเลิง   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4140', '430307', 'โคกก่อง   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4141', '430308', '*หนองเดิ่น   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4142', '430309', '*นาสะแบง   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4143', '430310', 'นาสวรรค์   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4144', '430311', 'ไคสี   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4145', '430312', 'โคกกว้าง*   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4146', '430313', '*ศรีวิไล   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4147', '430314', 'ชัยพร   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4148', '430315', '*นาแสง   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4149', '430316', 'วิศิษฐ์   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4150', '430317', '*บุ่งคล้า   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4151', '430318', 'คำนาดี   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4152', '430319', 'โป่งเปือย   ', '462', '97', '3');
INSERT INTO `district` VALUES ('4153', '430401', 'ศรีชมภู   ', '463', '97', '3');
INSERT INTO `district` VALUES ('4154', '430402', 'ดอนหญ้านาง   ', '463', '97', '3');
INSERT INTO `district` VALUES ('4155', '430403', 'พรเจริญ   ', '463', '97', '3');
INSERT INTO `district` VALUES ('4156', '430404', 'หนองหัวช้าง   ', '463', '97', '3');
INSERT INTO `district` VALUES ('4157', '430405', 'วังชมภู   ', '463', '97', '3');
INSERT INTO `district` VALUES ('4158', '430406', 'ป่าแฝก   ', '463', '97', '3');
INSERT INTO `district` VALUES ('4159', '430407', 'ศรีสำราญ   ', '463', '97', '3');
INSERT INTO `district` VALUES ('4160', '430501', 'จุมพล   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4161', '430502', 'วัดหลวง   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4162', '430503', 'กุดบง   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4163', '430504', 'ชุมช้าง   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4164', '430505', '*รัตนวาปี   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4165', '430506', 'ทุ่งหลวง   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4166', '430507', 'เหล่าต่างคำ   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4167', '430508', 'นาหนัง   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4168', '430509', 'เซิม   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4169', '430510', '*หนองหลวง   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4170', '430511', '*โพนแพง   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4171', '430512', '*เฝ้าไร่   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4172', '430513', 'บ้านโพธิ์   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4173', '430514', '*นาทับไฮ   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4174', '430515', '*วังหลวง   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4175', '430516', '*พระบาทนาสิงห์   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4176', '430517', '*อุดมพร   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4177', '430518', '*นาดี   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4178', '430520', '*บ้านต้อน   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4179', '430521', 'บ้านผือ   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4180', '430522', 'สร้างนางขาว   ', '464', '31', '3');
INSERT INTO `district` VALUES ('4181', '430601', 'โซ่   ', '465', '97', '3');
INSERT INTO `district` VALUES ('4182', '430602', 'หนองพันทา   ', '465', '97', '3');
INSERT INTO `district` VALUES ('4183', '430603', 'ศรีชมภู   ', '465', '97', '3');
INSERT INTO `district` VALUES ('4184', '430604', 'คำแก้ว   ', '465', '97', '3');
INSERT INTO `district` VALUES ('4185', '430605', 'บัวตูม   ', '465', '97', '3');
INSERT INTO `district` VALUES ('4186', '430606', 'ถ้ำเจริญ   ', '465', '97', '3');
INSERT INTO `district` VALUES ('4187', '430607', 'เหล่าทอง   ', '465', '97', '3');
INSERT INTO `district` VALUES ('4188', '430701', 'พานพร้าว   ', '466', '31', '3');
INSERT INTO `district` VALUES ('4189', '430702', 'โพธิ์ตาก*   ', '466', '31', '3');
INSERT INTO `district` VALUES ('4190', '430703', 'บ้านหม้อ   ', '466', '31', '3');
INSERT INTO `district` VALUES ('4191', '430704', 'พระพุทธบาท   ', '466', '31', '3');
INSERT INTO `district` VALUES ('4192', '430705', 'หนองปลาปาก   ', '466', '31', '3');
INSERT INTO `district` VALUES ('4193', '430706', 'โพนทอง*   ', '466', '31', '3');
INSERT INTO `district` VALUES ('4194', '430707', 'ด่านศรีสุข*   ', '466', '31', '3');
INSERT INTO `district` VALUES ('4195', '430801', 'แก้งไก่   ', '467', '31', '3');
INSERT INTO `district` VALUES ('4196', '430802', 'ผาตั้ง   ', '467', '31', '3');
INSERT INTO `district` VALUES ('4197', '430803', 'บ้านม่วง   ', '467', '31', '3');
INSERT INTO `district` VALUES ('4198', '430804', 'นางิ้ว   ', '467', '31', '3');
INSERT INTO `district` VALUES ('4199', '430805', 'สังคม   ', '467', '31', '3');
INSERT INTO `district` VALUES ('4200', '430901', 'เซกา   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4201', '430902', 'ซาง   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4202', '430903', 'ท่ากกแดง   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4203', '430904', '*โพธิ์หมากแข้ง   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4204', '430905', '*ดงบัง   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4205', '430906', 'บ้านต้อง   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4206', '430907', 'ป่งไฮ   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4207', '430908', 'น้ำจั้น   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4208', '430909', 'ท่าสะอาด   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4209', '430910', '*บึงโขงหลง   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4210', '430911', '*ท่าดอกคำ   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4211', '430912', 'หนองทุ่ม   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4212', '430913', 'โสกก่าม   ', '468', '97', '3');
INSERT INTO `district` VALUES ('4213', '431001', 'ปากคาด   ', '469', '97', '3');
INSERT INTO `district` VALUES ('4214', '431002', 'หนองยอง   ', '469', '97', '3');
INSERT INTO `district` VALUES ('4215', '431003', 'นากั้ง   ', '469', '97', '3');
INSERT INTO `district` VALUES ('4216', '431004', 'โนนศิลา   ', '469', '97', '3');
INSERT INTO `district` VALUES ('4217', '431005', 'สมสนุก   ', '469', '97', '3');
INSERT INTO `district` VALUES ('4218', '431006', 'นาดง   ', '469', '97', '3');
INSERT INTO `district` VALUES ('4219', '431101', 'บึงโขงหลง   ', '470', '97', '3');
INSERT INTO `district` VALUES ('4220', '431102', 'โพธิ์หมากแข้ง   ', '470', '97', '3');
INSERT INTO `district` VALUES ('4221', '431103', 'ดงบัง   ', '470', '97', '3');
INSERT INTO `district` VALUES ('4222', '431104', 'ท่าดอกคำ   ', '470', '97', '3');
INSERT INTO `district` VALUES ('4223', '431201', 'ศรีวิไล   ', '471', '97', '3');
INSERT INTO `district` VALUES ('4224', '431202', 'ชุมภูพร   ', '471', '97', '3');
INSERT INTO `district` VALUES ('4225', '431203', 'นาแสง   ', '471', '97', '3');
INSERT INTO `district` VALUES ('4226', '431204', 'นาสะแบง   ', '471', '97', '3');
INSERT INTO `district` VALUES ('4227', '431205', 'นาสิงห์   ', '471', '97', '3');
INSERT INTO `district` VALUES ('4228', '431301', 'บุ่งคล้า   ', '472', '97', '3');
INSERT INTO `district` VALUES ('4229', '431302', 'หนองเดิ่น   ', '472', '97', '3');
INSERT INTO `district` VALUES ('4230', '431303', 'โคกกว้าง   ', '472', '97', '3');
INSERT INTO `district` VALUES ('4231', '431401', 'สระใคร   ', '473', '31', '3');
INSERT INTO `district` VALUES ('4232', '431402', 'คอกช้าง   ', '473', '31', '3');
INSERT INTO `district` VALUES ('4233', '431403', 'บ้านฝาง   ', '473', '31', '3');
INSERT INTO `district` VALUES ('4234', '431501', 'เฝ้าไร่   ', '474', '31', '3');
INSERT INTO `district` VALUES ('4235', '431502', 'นาดี   ', '474', '31', '3');
INSERT INTO `district` VALUES ('4236', '431503', 'หนองหลวง   ', '474', '31', '3');
INSERT INTO `district` VALUES ('4237', '431504', 'วังหลวง   ', '474', '31', '3');
INSERT INTO `district` VALUES ('4238', '431505', 'อุดมพร   ', '474', '31', '3');
INSERT INTO `district` VALUES ('4239', '431601', 'รัตนวาปี   ', '475', '31', '3');
INSERT INTO `district` VALUES ('4240', '431602', 'นาทับไฮ   ', '475', '31', '3');
INSERT INTO `district` VALUES ('4241', '431603', 'บ้านต้อน   ', '475', '31', '3');
INSERT INTO `district` VALUES ('4242', '431604', 'พระบาทนาสิงห์   ', '475', '31', '3');
INSERT INTO `district` VALUES ('4243', '431605', 'โพนแพง   ', '475', '31', '3');
INSERT INTO `district` VALUES ('4244', '431701', 'โพธิ์ตาก   ', '476', '31', '3');
INSERT INTO `district` VALUES ('4245', '431702', 'โพนทอง   ', '476', '31', '3');
INSERT INTO `district` VALUES ('4246', '431703', 'ด่านศรีสุข   ', '476', '31', '3');
INSERT INTO `district` VALUES ('4247', '440101', 'ตลาด   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4248', '440102', 'เขวา   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4249', '440103', 'ท่าตูม   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4250', '440104', 'แวงน่าง   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4251', '440105', 'โคกก่อ   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4252', '440106', 'ดอนหว่าน   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4253', '440107', 'เกิ้ง   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4254', '440108', 'แก่งเลิงจาน   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4255', '440109', 'ท่าสองคอน   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4256', '440110', 'ลาดพัฒนา   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4257', '440111', 'หนองปลิง   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4258', '440112', 'ห้วยแอ่ง   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4259', '440113', 'หนองโน   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4260', '440114', 'บัวค้อ   ', '477', '32', '3');
INSERT INTO `district` VALUES ('4261', '440201', 'แกดำ   ', '478', '32', '3');
INSERT INTO `district` VALUES ('4262', '440202', 'วังแสง   ', '478', '32', '3');
INSERT INTO `district` VALUES ('4263', '440203', 'มิตรภาพ   ', '478', '32', '3');
INSERT INTO `district` VALUES ('4264', '440204', 'หนองกุง   ', '478', '32', '3');
INSERT INTO `district` VALUES ('4265', '440205', 'โนนภิบาล   ', '478', '32', '3');
INSERT INTO `district` VALUES ('4266', '440301', 'หัวขวาง   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4267', '440302', 'ยางน้อย   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4268', '440303', 'วังยาว   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4269', '440304', 'เขวาไร่   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4270', '440305', 'แพง   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4271', '440306', 'แก้งแก   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4272', '440307', 'หนองเหล็ก   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4273', '440308', 'หนองบัว   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4274', '440309', 'เหล่า   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4275', '440310', 'เขื่อน   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4276', '440311', 'หนองบอน   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4277', '440312', 'โพนงาม   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4278', '440313', 'ยางท่าแจ้ง   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4279', '440314', 'แห่ใต้   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4280', '440315', 'หนองกุงสวรรค์   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4281', '440316', 'เลิงใต้   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4282', '440317', 'ดอนกลาง   ', '479', '32', '3');
INSERT INTO `district` VALUES ('4283', '440401', 'โคกพระ   ', '480', '32', '3');
INSERT INTO `district` VALUES ('4284', '440402', 'คันธารราษฎร์   ', '480', '32', '3');
INSERT INTO `district` VALUES ('4285', '440403', 'มะค่า   ', '480', '32', '3');
INSERT INTO `district` VALUES ('4286', '440404', 'ท่าขอนยาง   ', '480', '32', '3');
INSERT INTO `district` VALUES ('4287', '440405', 'นาสีนวน   ', '480', '32', '3');
INSERT INTO `district` VALUES ('4288', '440406', 'ขามเรียง   ', '480', '32', '3');
INSERT INTO `district` VALUES ('4289', '440407', 'เขวาใหญ่   ', '480', '32', '3');
INSERT INTO `district` VALUES ('4290', '440408', 'ศรีสุข   ', '480', '32', '3');
INSERT INTO `district` VALUES ('4291', '440409', 'กุดใส้จ่อ   ', '480', '32', '3');
INSERT INTO `district` VALUES ('4292', '440410', 'ขามเฒ่าพัฒนา   ', '480', '32', '3');
INSERT INTO `district` VALUES ('4293', '440501', 'เชียงยืน   ', '481', '32', '3');
INSERT INTO `district` VALUES ('4294', '440502', 'ชื่นชม*   ', '481', '32', '3');
INSERT INTO `district` VALUES ('4295', '440503', 'หนองซอน   ', '481', '32', '3');
INSERT INTO `district` VALUES ('4296', '440504', 'เหล่าดอกไม้*   ', '481', '32', '3');
INSERT INTO `district` VALUES ('4297', '440505', 'ดอนเงิน   ', '481', '32', '3');
INSERT INTO `district` VALUES ('4298', '440506', 'กู่ทอง   ', '481', '32', '3');
INSERT INTO `district` VALUES ('4299', '440507', 'นาทอง   ', '481', '32', '3');
INSERT INTO `district` VALUES ('4300', '440508', 'เสือเฒ่า   ', '481', '32', '3');
INSERT INTO `district` VALUES ('4301', '440509', 'กุดปลาดุก*   ', '481', '32', '3');
INSERT INTO `district` VALUES ('4302', '440510', 'หนองกุง*   ', '481', '32', '3');
INSERT INTO `district` VALUES ('4303', '440511', 'โพนทอง   ', '481', '32', '3');
INSERT INTO `district` VALUES ('4304', '440512', 'เหล่าบัวบาน   ', '481', '32', '3');
INSERT INTO `district` VALUES ('4305', '440601', 'บรบือ   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4306', '440602', 'บ่อใหญ่   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4307', '440603', '*กุดรัง   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4308', '440604', 'วังไชย   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4309', '440605', 'หนองม่วง   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4310', '440606', 'กำพี้   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4311', '440607', 'โนนราษี   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4312', '440608', 'โนนแดง   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4313', '440609', '*เลิงแฝก   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4314', '440610', 'หนองจิก   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4315', '440611', 'บัวมาศ   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4316', '440612', '*นาโพธิ์   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4317', '440613', 'หนองคูขาด   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4318', '440614', '*หนองแวง   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4319', '440615', 'วังใหม่   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4320', '440616', 'ยาง   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4321', '440617', '*ห้วยเตย   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4322', '440618', 'หนองสิม   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4323', '440619', 'หนองโก   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4324', '440620', 'ดอนงัว   ', '482', '32', '3');
INSERT INTO `district` VALUES ('4325', '440701', 'นาเชือก   ', '483', '32', '3');
INSERT INTO `district` VALUES ('4326', '440702', 'สำโรง   ', '483', '32', '3');
INSERT INTO `district` VALUES ('4327', '440703', 'หนองแดง   ', '483', '32', '3');
INSERT INTO `district` VALUES ('4328', '440704', 'เขวาไร่   ', '483', '32', '3');
INSERT INTO `district` VALUES ('4329', '440705', 'หนองโพธิ์   ', '483', '32', '3');
INSERT INTO `district` VALUES ('4330', '440706', 'ปอพาน   ', '483', '32', '3');
INSERT INTO `district` VALUES ('4331', '440707', 'หนองเม็ก   ', '483', '32', '3');
INSERT INTO `district` VALUES ('4332', '440708', 'หนองเรือ   ', '483', '32', '3');
INSERT INTO `district` VALUES ('4333', '440709', 'หนองกุง   ', '483', '32', '3');
INSERT INTO `district` VALUES ('4334', '440710', 'สันป่าตอง   ', '483', '32', '3');
INSERT INTO `district` VALUES ('4335', '440801', 'ปะหลาน   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4336', '440802', 'ก้ามปู   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4337', '440803', 'เวียงสะอาด   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4338', '440804', 'เม็กดำ   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4339', '440805', 'นาสีนวล   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4340', '440806', '*ดงเมือง   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4341', '440807', '*แวงดง   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4342', '440808', '*ขามเรียน   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4343', '440809', 'ราษฎร์เจริญ   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4344', '440810', 'หนองบัวแก้ว   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4345', '440811', '*นาภู   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4346', '440812', 'เมืองเตา   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4347', '440813', '*บ้านกู่   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4348', '440814', '*ยางสีสุราช   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4349', '440815', 'ลานสะแก   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4350', '440816', 'เวียงชัย   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4351', '440817', 'หนองบัว   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4352', '440818', 'ราษฎร์พัฒนา   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4353', '440819', 'เมืองเสือ   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4354', '440820', 'ภารแอ่น   ', '484', '32', '3');
INSERT INTO `district` VALUES ('4355', '440901', 'หนองแสง   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4356', '440902', 'ขามป้อม   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4357', '440903', 'เสือโก้ก   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4358', '440904', 'ดงใหญ่   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4359', '440905', 'โพธิ์ชัย   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4360', '440906', 'หัวเรือ   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4361', '440907', 'แคน   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4362', '440908', 'งัวบา   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4363', '440909', 'นาข่า   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4364', '440910', 'บ้านหวาย   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4365', '440911', 'หนองไฮ   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4366', '440912', 'ประชาพัฒนา   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4367', '440913', 'หนองทุ่ม   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4368', '440914', 'หนองแสน   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4369', '440915', 'โคกสีทองหลาง   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4370', '440997', '*หนองไผ่   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4371', '440998', '*นาดูน   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4372', '440999', '*หนองคู   ', '485', '32', '3');
INSERT INTO `district` VALUES ('4373', '441001', 'นาดูน   ', '486', '32', '3');
INSERT INTO `district` VALUES ('4374', '441002', 'หนองไผ่   ', '486', '32', '3');
INSERT INTO `district` VALUES ('4375', '441003', 'หนองคู   ', '486', '32', '3');
INSERT INTO `district` VALUES ('4376', '441004', 'ดงบัง   ', '486', '32', '3');
INSERT INTO `district` VALUES ('4377', '441005', 'ดงดวน   ', '486', '32', '3');
INSERT INTO `district` VALUES ('4378', '441006', 'หัวดง   ', '486', '32', '3');
INSERT INTO `district` VALUES ('4379', '441007', 'ดงยาง   ', '486', '32', '3');
INSERT INTO `district` VALUES ('4380', '441008', 'กู่สันตรัตน์   ', '486', '32', '3');
INSERT INTO `district` VALUES ('4381', '441009', 'พระธาตุ   ', '486', '32', '3');
INSERT INTO `district` VALUES ('4382', '441101', 'ยางสีสุราช   ', '487', '32', '3');
INSERT INTO `district` VALUES ('4383', '441102', 'นาภู   ', '487', '32', '3');
INSERT INTO `district` VALUES ('4384', '441103', 'แวงดง   ', '487', '32', '3');
INSERT INTO `district` VALUES ('4385', '441104', 'บ้านกู่   ', '487', '32', '3');
INSERT INTO `district` VALUES ('4386', '441105', 'ดงเมือง   ', '487', '32', '3');
INSERT INTO `district` VALUES ('4387', '441106', 'ขามเรียน   ', '487', '32', '3');
INSERT INTO `district` VALUES ('4388', '441107', 'หนองบัวสันตุ   ', '487', '32', '3');
INSERT INTO `district` VALUES ('4389', '441201', 'กุดรัง   ', '488', '32', '3');
INSERT INTO `district` VALUES ('4390', '441202', 'นาโพธิ์   ', '488', '32', '3');
INSERT INTO `district` VALUES ('4391', '441203', 'เลิงแฝก   ', '488', '32', '3');
INSERT INTO `district` VALUES ('4392', '441204', 'หนองแวง   ', '488', '32', '3');
INSERT INTO `district` VALUES ('4393', '441205', 'ห้วยเตย   ', '488', '32', '3');
INSERT INTO `district` VALUES ('4394', '441301', 'ชื่นชม   ', '489', '32', '3');
INSERT INTO `district` VALUES ('4395', '441302', 'กุดปลาดุก   ', '489', '32', '3');
INSERT INTO `district` VALUES ('4396', '441303', 'เหล่าดอกไม้   ', '489', '32', '3');
INSERT INTO `district` VALUES ('4397', '441304', 'หนองกุง   ', '489', '32', '3');
INSERT INTO `district` VALUES ('4398', '450101', 'ในเมือง   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4399', '450102', 'รอบเมือง   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4400', '450103', 'เหนือเมือง   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4401', '450104', 'ขอนแก่น   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4402', '450105', 'นาโพธิ์   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4403', '450106', 'สะอาดสมบูรณ์   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4404', '450107', '*ปาฝา   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4405', '450108', 'สีแก้ว   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4406', '450109', 'ปอภาร  (ปอพาน)   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4407', '450110', 'โนนรัง   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4408', '450111', '*ดงสิงห์   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4409', '450112', '*สวนจิก   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4410', '450113', '*ม่วงลาด   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4411', '450114', '*โพธิ์ทอง   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4412', '450115', '*จังหาร   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4413', '450116', '*ดินดำ   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4414', '450117', 'หนองแก้ว   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4415', '450118', 'หนองแวง   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4416', '450119', '*ศรีสมเด็จ   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4417', '450120', 'ดงลาน   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4418', '450121', '*หนองใหญ่   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4419', '450122', '*เมืองเปลือย   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4420', '450123', 'แคนใหญ่   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4421', '450124', 'โนนตาล   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4422', '450125', 'เมืองทอง   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4423', '450191', '*ดงสิงห์   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4424', '450192', '*จังหาร   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4425', '450193', '*ม่วงลาด   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4426', '450194', '*ปาฝา   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4427', '450195', '*ดินดำ   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4428', '450196', '*สวนจิก   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4429', '450197', '*เมืองเปลือย   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4430', '450198', '*ศรีสมเด็จ   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4431', '450199', '*โพธิ์ทอง   ', '491', '33', '3');
INSERT INTO `district` VALUES ('4432', '450201', 'เกษตรวิสัย   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4433', '450202', 'เมืองบัว   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4434', '450203', 'เหล่าหลวง   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4435', '450204', 'สิงห์โคก   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4436', '450205', 'ดงครั่งใหญ่   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4437', '450206', 'บ้านฝาง   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4438', '450207', 'หนองแวง   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4439', '450208', 'กำแพง   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4440', '450209', 'กู่กาสิงห์   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4441', '450210', 'น้ำอ้อม   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4442', '450211', 'โนนสว่าง   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4443', '450212', 'ทุ่งทอง   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4444', '450213', 'ดงครั่งน้อย   ', '492', '33', '3');
INSERT INTO `district` VALUES ('4445', '450301', 'บัวแดง   ', '493', '33', '3');
INSERT INTO `district` VALUES ('4446', '450302', 'ดอกล้ำ   ', '493', '33', '3');
INSERT INTO `district` VALUES ('4447', '450303', 'หนองแคน   ', '493', '33', '3');
INSERT INTO `district` VALUES ('4448', '450304', 'โพนสูง   ', '493', '33', '3');
INSERT INTO `district` VALUES ('4449', '450305', 'โนนสวรรค์   ', '493', '33', '3');
INSERT INTO `district` VALUES ('4450', '450306', 'สระบัว   ', '493', '33', '3');
INSERT INTO `district` VALUES ('4451', '450307', 'โนนสง่า   ', '493', '33', '3');
INSERT INTO `district` VALUES ('4452', '450308', 'ขี้เหล็ก   ', '493', '33', '3');
INSERT INTO `district` VALUES ('4453', '450401', 'หัวช้าง   ', '494', '33', '3');
INSERT INTO `district` VALUES ('4454', '450402', 'หนองผือ   ', '494', '33', '3');
INSERT INTO `district` VALUES ('4455', '450403', 'เมืองหงส์   ', '494', '33', '3');
INSERT INTO `district` VALUES ('4456', '450404', 'โคกล่าม   ', '494', '33', '3');
INSERT INTO `district` VALUES ('4457', '450405', 'น้ำใส   ', '494', '33', '3');
INSERT INTO `district` VALUES ('4458', '450406', 'ดงแดง   ', '494', '33', '3');
INSERT INTO `district` VALUES ('4459', '450407', 'ดงกลาง   ', '494', '33', '3');
INSERT INTO `district` VALUES ('4460', '450408', 'ป่าสังข์   ', '494', '33', '3');
INSERT INTO `district` VALUES ('4461', '450409', 'อีง่อง   ', '494', '33', '3');
INSERT INTO `district` VALUES ('4462', '450410', 'ลิ้นฟ้า   ', '494', '33', '3');
INSERT INTO `district` VALUES ('4463', '450411', 'ดู่น้อย   ', '494', '33', '3');
INSERT INTO `district` VALUES ('4464', '450412', 'ศรีโคตร   ', '494', '33', '3');
INSERT INTO `district` VALUES ('4465', '450501', 'นิเวศน์   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4466', '450502', 'ธงธานี   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4467', '450503', 'หนองไผ่   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4468', '450504', 'ธวัชบุรี   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4469', '450505', '*หมูม้น   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4470', '450506', 'อุ่มเม้า   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4471', '450507', 'มะอึ   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4472', '450508', 'เหล่า*   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4473', '450509', 'มะบ้า*   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4474', '450510', 'เขวาทุ่ง   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4475', '450511', '*พระธาตุ   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4476', '450512', 'บึงงาม*   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4477', '450513', '*บ้านเขือง   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4478', '450514', '*พระเจ้า   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4479', '450515', 'ไพศาล   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4480', '450516', 'เทอดไทย*   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4481', '450517', 'เมืองน้อย   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4482', '450518', 'โนนศิลา*   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4483', '450519', '*เชียงขวัญ   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4484', '450520', 'บึงนคร   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4485', '450521', '*พลับพลา   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4486', '450522', 'ราชธานี   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4487', '450523', 'ทุ่งเขาหลวง*   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4488', '450524', 'หนองพอก   ', '495', '33', '3');
INSERT INTO `district` VALUES ('4489', '450601', 'พนมไพร   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4490', '450602', 'แสนสุข   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4491', '450603', 'กุดน้ำใส   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4492', '450604', 'หนองทัพไทย   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4493', '450605', 'โพธิ์ใหญ่   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4494', '450606', 'วารีสวัสดิ์   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4495', '450607', 'โคกสว่าง   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4496', '450608', '*หนองฮี   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4497', '450609', '*เด่นราษฎร์   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4498', '450610', '*ดูกอึ่ง   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4499', '450611', 'โพธิ์ชัย   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4500', '450612', 'นานวล   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4501', '450613', 'คำไฮ   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4502', '450614', 'สระแก้ว   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4503', '450615', 'ค้อใหญ่   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4504', '450616', '*สาวแห   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4505', '450617', 'ชานุวรรณ   ', '496', '33', '3');
INSERT INTO `district` VALUES ('4506', '450701', 'แวง   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4507', '450702', 'โคกกกม่วง   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4508', '450703', 'นาอุดม   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4509', '450704', 'สว่าง   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4510', '450705', 'หนองใหญ่   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4511', '450706', 'โพธิ์ทอง   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4512', '450707', 'โนนชัยศรี   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4513', '450708', 'โพธิ์ศรีสว่าง   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4514', '450709', 'อุ่มเม่า   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4515', '450710', 'คำนาดี   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4516', '450711', 'พรมสวรรค์   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4517', '450712', 'สระนกแก้ว   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4518', '450713', 'วังสามัคคี   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4519', '450714', 'โคกสูง   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4520', '450794', '*ชุมพร   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4521', '450795', '*เมยวดี   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4522', '450796', '*คำพอง   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4523', '450797', '*อัคคะคำ   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4524', '450798', '*เชียงใหม่   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4525', '450799', '*ขามเบี้ย   ', '497', '33', '3');
INSERT INTO `district` VALUES ('4526', '450801', 'ขามเปี้ย   ', '498', '33', '3');
INSERT INTO `district` VALUES ('4527', '450802', 'เชียงใหม่   ', '498', '33', '3');
INSERT INTO `district` VALUES ('4528', '450803', 'บัวคำ   ', '498', '33', '3');
INSERT INTO `district` VALUES ('4529', '450804', 'อัคคะคำ   ', '498', '33', '3');
INSERT INTO `district` VALUES ('4530', '450805', 'สะอาด   ', '498', '33', '3');
INSERT INTO `district` VALUES ('4531', '450806', 'คำพอุง   ', '498', '33', '3');
INSERT INTO `district` VALUES ('4532', '450807', 'หนองตาไก้   ', '498', '33', '3');
INSERT INTO `district` VALUES ('4533', '450808', 'ดอนโอง   ', '498', '33', '3');
INSERT INTO `district` VALUES ('4534', '450809', 'โพธิ์ศรี   ', '498', '33', '3');
INSERT INTO `district` VALUES ('4535', '450901', 'หนองพอก   ', '499', '33', '3');
INSERT INTO `district` VALUES ('4536', '450902', 'บึงงาม   ', '499', '33', '3');
INSERT INTO `district` VALUES ('4537', '450903', 'ภูเขาทอง   ', '499', '33', '3');
INSERT INTO `district` VALUES ('4538', '450904', 'กกโพธิ์   ', '499', '33', '3');
INSERT INTO `district` VALUES ('4539', '450905', 'โคกสว่าง   ', '499', '33', '3');
INSERT INTO `district` VALUES ('4540', '450906', 'หนองขุ่นใหญ่   ', '499', '33', '3');
INSERT INTO `district` VALUES ('4541', '450907', 'รอบเมือง   ', '499', '33', '3');
INSERT INTO `district` VALUES ('4542', '450908', 'ผาน้ำย้อย   ', '499', '33', '3');
INSERT INTO `district` VALUES ('4543', '450909', 'ท่าสีดา   ', '499', '33', '3');
INSERT INTO `district` VALUES ('4544', '451001', 'กลาง   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4545', '451002', 'นางาม   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4546', '451003', 'เมืองไพร   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4547', '451004', 'นาแซง   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4548', '451005', 'นาเมือง   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4549', '451006', 'วังหลวง   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4550', '451007', 'ท่าม่วง   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4551', '451008', 'ขวาว   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4552', '451009', 'โพธิ์ทอง   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4553', '451010', 'ภูเงิน   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4554', '451011', 'เกาะแก้ว   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4555', '451012', 'นาเลิง   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4556', '451013', 'เหล่าน้อย   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4557', '451014', 'ศรีวิลัย   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4558', '451015', 'หนองหลวง   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4559', '451016', 'พรสวรรค์   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4560', '451017', 'ขวัญเมือง   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4561', '451018', 'บึงเกลือ   ', '500', '33', '3');
INSERT INTO `district` VALUES ('4562', '451101', 'สระคู   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4563', '451102', 'ดอกไม้   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4564', '451103', 'นาใหญ่   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4565', '451104', 'หินกอง   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4566', '451105', 'เมืองทุ่ง   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4567', '451106', 'หัวโทน   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4568', '451107', 'บ่อพันขัน   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4569', '451108', 'ทุ่งหลวง   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4570', '451109', 'หัวช้าง   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4571', '451110', 'น้ำคำ   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4572', '451111', 'ห้วยหินลาด   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4573', '451112', 'ช้างเผือก   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4574', '451113', 'ทุ่งกุลา   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4575', '451114', 'ทุ่งศรีเมือง   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4576', '451115', 'จำปาขัน   ', '501', '33', '3');
INSERT INTO `district` VALUES ('4577', '451201', 'หนองผือ   ', '502', '33', '3');
INSERT INTO `district` VALUES ('4578', '451202', 'หนองหิน   ', '502', '33', '3');
INSERT INTO `district` VALUES ('4579', '451203', 'คูเมือง   ', '502', '33', '3');
INSERT INTO `district` VALUES ('4580', '451204', 'กกกุง   ', '502', '33', '3');
INSERT INTO `district` VALUES ('4581', '451205', 'เมืองสรวง   ', '502', '33', '3');
INSERT INTO `district` VALUES ('4582', '451301', 'โพนทราย   ', '503', '33', '3');
INSERT INTO `district` VALUES ('4583', '451302', 'สามขา   ', '503', '33', '3');
INSERT INTO `district` VALUES ('4584', '451303', 'ศรีสว่าง   ', '503', '33', '3');
INSERT INTO `district` VALUES ('4585', '451304', 'ยางคำ   ', '503', '33', '3');
INSERT INTO `district` VALUES ('4586', '451305', 'ท่าหาดยาว   ', '503', '33', '3');
INSERT INTO `district` VALUES ('4587', '451401', 'อาจสามารถ   ', '504', '33', '3');
INSERT INTO `district` VALUES ('4588', '451402', 'โพนเมือง   ', '504', '33', '3');
INSERT INTO `district` VALUES ('4589', '451403', 'บ้านแจ้ง   ', '504', '33', '3');
INSERT INTO `district` VALUES ('4590', '451404', 'หน่อม   ', '504', '33', '3');
INSERT INTO `district` VALUES ('4591', '451405', 'หนองหมื่นถ่าน   ', '504', '33', '3');
INSERT INTO `district` VALUES ('4592', '451406', 'หนองขาม   ', '504', '33', '3');
INSERT INTO `district` VALUES ('4593', '451407', 'โหรา   ', '504', '33', '3');
INSERT INTO `district` VALUES ('4594', '451408', 'หนองบัว   ', '504', '33', '3');
INSERT INTO `district` VALUES ('4595', '451409', 'ขี้เหล็ก   ', '504', '33', '3');
INSERT INTO `district` VALUES ('4596', '451410', 'บ้านดู่   ', '504', '33', '3');
INSERT INTO `district` VALUES ('4597', '451501', 'เมยวดี   ', '505', '33', '3');
INSERT INTO `district` VALUES ('4598', '451502', 'ชุมพร   ', '505', '33', '3');
INSERT INTO `district` VALUES ('4599', '451503', 'บุ่งเลิศ   ', '505', '33', '3');
INSERT INTO `district` VALUES ('4600', '451504', 'ชมสะอาด   ', '505', '33', '3');
INSERT INTO `district` VALUES ('4601', '451601', 'โพธิ์ทอง   ', '506', '33', '3');
INSERT INTO `district` VALUES ('4602', '451602', 'ศรีสมเด็จ   ', '506', '33', '3');
INSERT INTO `district` VALUES ('4603', '451603', 'เมืองเปลือย   ', '506', '33', '3');
INSERT INTO `district` VALUES ('4604', '451604', 'หนองใหญ่   ', '506', '33', '3');
INSERT INTO `district` VALUES ('4605', '451605', 'สวนจิก   ', '506', '33', '3');
INSERT INTO `district` VALUES ('4606', '451606', 'โพธิ์สัย   ', '506', '33', '3');
INSERT INTO `district` VALUES ('4607', '451607', 'หนองแวงควง   ', '506', '33', '3');
INSERT INTO `district` VALUES ('4608', '451608', 'บ้านบาก   ', '506', '33', '3');
INSERT INTO `district` VALUES ('4609', '451701', 'ดินดำ   ', '507', '33', '3');
INSERT INTO `district` VALUES ('4610', '451702', 'ปาฝา   ', '507', '33', '3');
INSERT INTO `district` VALUES ('4611', '451703', 'ม่วงลาด   ', '507', '33', '3');
INSERT INTO `district` VALUES ('4612', '451704', 'จังหาร   ', '507', '33', '3');
INSERT INTO `district` VALUES ('4613', '451705', 'ดงสิงห์   ', '507', '33', '3');
INSERT INTO `district` VALUES ('4614', '451706', 'ยางใหญ่   ', '507', '33', '3');
INSERT INTO `district` VALUES ('4615', '451707', 'ผักแว่น   ', '507', '33', '3');
INSERT INTO `district` VALUES ('4616', '451708', 'แสนชาติ   ', '507', '33', '3');
INSERT INTO `district` VALUES ('4617', '451801', 'เชียงขวัญ   ', '508', '33', '3');
INSERT INTO `district` VALUES ('4618', '451802', 'พลับพลา   ', '508', '33', '3');
INSERT INTO `district` VALUES ('4619', '451803', 'พระธาตุ   ', '508', '33', '3');
INSERT INTO `district` VALUES ('4620', '451804', 'พระเจ้า   ', '508', '33', '3');
INSERT INTO `district` VALUES ('4621', '451805', 'หมูม้น   ', '508', '33', '3');
INSERT INTO `district` VALUES ('4622', '451806', 'บ้านเขือง   ', '508', '33', '3');
INSERT INTO `district` VALUES ('4623', '451901', 'หนองฮี   ', '509', '33', '3');
INSERT INTO `district` VALUES ('4624', '451902', 'สาวแห   ', '509', '33', '3');
INSERT INTO `district` VALUES ('4625', '451903', 'ดูกอึ่ง   ', '509', '33', '3');
INSERT INTO `district` VALUES ('4626', '451904', 'เด่นราษฎร์   ', '509', '33', '3');
INSERT INTO `district` VALUES ('4627', '452001', 'ทุ่งเขาหลวง   ', '510', '33', '3');
INSERT INTO `district` VALUES ('4628', '452002', 'เทอดไทย   ', '510', '33', '3');
INSERT INTO `district` VALUES ('4629', '452003', 'บึงงาม   ', '510', '33', '3');
INSERT INTO `district` VALUES ('4630', '452004', 'มะบ้า   ', '510', '33', '3');
INSERT INTO `district` VALUES ('4631', '452005', 'เหล่า   ', '510', '33', '3');
INSERT INTO `district` VALUES ('4632', '460101', 'กาฬสินธุ์   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4633', '460102', 'เหนือ   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4634', '460103', 'หลุบ   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4635', '460104', 'ไผ่   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4636', '460105', 'ลำปาว   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4637', '460106', 'ลำพาน   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4638', '460107', 'เชียงเครือ   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4639', '460108', 'บึงวิชัย   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4640', '460109', 'ห้วยโพธิ์   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4641', '460110', 'ม่วงนา*   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4642', '460111', 'ภูปอ   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4643', '460112', 'ดงพยุง*   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4644', '460113', 'ภูดิน   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4645', '460114', 'ดอนจาน*   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4646', '460115', 'หนองกุง   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4647', '460116', 'กลางหมื่น   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4648', '460117', 'ขมิ้น   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4649', '460118', 'นาจำปา*   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4650', '460119', 'โพนทอง   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4651', '460120', 'นาจารย์   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4652', '460121', 'ลำคลอง   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4653', '460122', 'สะอาดไชยศรี*   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4654', '460198', 'นามน*   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4655', '460199', 'ยอดแกง*   ', '511', '34', '3');
INSERT INTO `district` VALUES ('4656', '460201', 'นามน   ', '512', '34', '3');
INSERT INTO `district` VALUES ('4657', '460202', 'ยอดแกง   ', '512', '34', '3');
INSERT INTO `district` VALUES ('4658', '460203', 'สงเปลือย   ', '512', '34', '3');
INSERT INTO `district` VALUES ('4659', '460204', 'หลักเหลี่ยม   ', '512', '34', '3');
INSERT INTO `district` VALUES ('4660', '460205', 'หนองบัว   ', '512', '34', '3');
INSERT INTO `district` VALUES ('4661', '460301', 'กมลาไสย   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4662', '460302', 'หลักเมือง   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4663', '460303', 'โพนงาม   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4664', '460304', 'ดงลิง   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4665', '460305', 'ธัญญา   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4666', '460306', 'กุดฆ้องชัย*   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4667', '460307', 'ลำชี*   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4668', '460308', 'หนองแปน   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4669', '460309', 'โคกสะอาด*   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4670', '460310', 'เจ้าท่า   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4671', '460311', 'โคกสมบูรณ์   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4672', '460312', 'โนนศิลา*   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4673', '460313', 'ฆ้องชัยพัฒนา*   ', '513', '34', '3');
INSERT INTO `district` VALUES ('4674', '460401', 'ร่องคำ   ', '514', '34', '3');
INSERT INTO `district` VALUES ('4675', '460402', 'สามัคคี   ', '514', '34', '3');
INSERT INTO `district` VALUES ('4676', '460403', 'เหล่าอ้อย   ', '514', '34', '3');
INSERT INTO `district` VALUES ('4677', '460501', 'บัวขาว   ', '515', '34', '3');
INSERT INTO `district` VALUES ('4678', '460502', 'แจนแลน   ', '515', '34', '3');
INSERT INTO `district` VALUES ('4679', '460503', 'เหล่าใหญ่   ', '515', '34', '3');
INSERT INTO `district` VALUES ('4680', '460504', 'จุมจัง   ', '515', '34', '3');
INSERT INTO `district` VALUES ('4681', '460505', 'เหล่าไฮงาม   ', '515', '34', '3');
INSERT INTO `district` VALUES ('4682', '460506', 'กุดหว้า   ', '515', '34', '3');
INSERT INTO `district` VALUES ('4683', '460507', 'สามขา   ', '515', '34', '3');
INSERT INTO `district` VALUES ('4684', '460508', 'นาขาม   ', '515', '34', '3');
INSERT INTO `district` VALUES ('4685', '460509', 'หนองห้าง   ', '515', '34', '3');
INSERT INTO `district` VALUES ('4686', '460510', 'นาโก   ', '515', '34', '3');
INSERT INTO `district` VALUES ('4687', '460511', 'สมสะอาด   ', '515', '34', '3');
INSERT INTO `district` VALUES ('4688', '460512', 'กุดค้าว   ', '515', '34', '3');
INSERT INTO `district` VALUES ('4689', '460601', 'คุ้มเก่า   ', '516', '34', '3');
INSERT INTO `district` VALUES ('4690', '460602', 'สงเปลือย   ', '516', '34', '3');
INSERT INTO `district` VALUES ('4691', '460603', 'หนองผือ   ', '516', '34', '3');
INSERT INTO `district` VALUES ('4692', '460604', '*ภูแล่นช้าง   ', '516', '34', '3');
INSERT INTO `district` VALUES ('4693', '460605', '*นาคู   ', '516', '34', '3');
INSERT INTO `district` VALUES ('4694', '460606', 'กุดสิมคุ้มใหม่   ', '516', '34', '3');
INSERT INTO `district` VALUES ('4695', '460607', '*บ่อแก้ว   ', '516', '34', '3');
INSERT INTO `district` VALUES ('4696', '460608', 'สระพังทอง   ', '516', '34', '3');
INSERT INTO `district` VALUES ('4697', '460609', '*สายนาวัง   ', '516', '34', '3');
INSERT INTO `district` VALUES ('4698', '460610', '*โนนนาจาน   ', '516', '34', '3');
INSERT INTO `district` VALUES ('4699', '460611', 'กุดปลาค้าว   ', '516', '34', '3');
INSERT INTO `district` VALUES ('4700', '460701', 'ยางตลาด   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4701', '460702', 'หัวงัว   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4702', '460703', 'อุ่มเม่า   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4703', '460704', 'บัวบาน   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4704', '460705', 'เว่อ   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4705', '460706', 'อิตื้อ   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4706', '460707', 'หัวนาคำ   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4707', '460708', 'หนองอิเฒ่า   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4708', '460709', 'ดอนสมบูรณ์   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4709', '460710', 'นาเชือก   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4710', '460711', 'คลองขาม   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4711', '460712', 'เขาพระนอน   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4712', '460713', 'นาดี   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4713', '460714', 'โนนสูง   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4714', '460715', 'หนองตอกแป้น   ', '517', '34', '3');
INSERT INTO `district` VALUES ('4715', '460801', 'ห้วยเม็ก   ', '518', '34', '3');
INSERT INTO `district` VALUES ('4716', '460802', 'คำใหญ่   ', '518', '34', '3');
INSERT INTO `district` VALUES ('4717', '460803', 'กุดโดน   ', '518', '34', '3');
INSERT INTO `district` VALUES ('4718', '460804', 'บึงนาเรียง   ', '518', '34', '3');
INSERT INTO `district` VALUES ('4719', '460805', 'หัวหิน   ', '518', '34', '3');
INSERT INTO `district` VALUES ('4720', '460806', 'พิมูล   ', '518', '34', '3');
INSERT INTO `district` VALUES ('4721', '460807', 'คำเหมือดแก้ว   ', '518', '34', '3');
INSERT INTO `district` VALUES ('4722', '460808', 'โนนสะอาด   ', '518', '34', '3');
INSERT INTO `district` VALUES ('4723', '460809', 'ทรายทอง   ', '518', '34', '3');
INSERT INTO `district` VALUES ('4724', '460901', 'ภูสิงห์   ', '519', '34', '3');
INSERT INTO `district` VALUES ('4725', '460902', 'สหัสขันธ์   ', '519', '34', '3');
INSERT INTO `district` VALUES ('4726', '460903', 'นามะเขือ   ', '519', '34', '3');
INSERT INTO `district` VALUES ('4727', '460904', 'โนนศิลา   ', '519', '34', '3');
INSERT INTO `district` VALUES ('4728', '460905', 'นิคม   ', '519', '34', '3');
INSERT INTO `district` VALUES ('4729', '460906', 'โนนแหลมทอง   ', '519', '34', '3');
INSERT INTO `district` VALUES ('4730', '460907', 'โนนบุรี   ', '519', '34', '3');
INSERT INTO `district` VALUES ('4731', '460908', 'โนนน้ำเกลี้ยง   ', '519', '34', '3');
INSERT INTO `district` VALUES ('4732', '460996', '*หนองบัว   ', '519', '34', '3');
INSERT INTO `district` VALUES ('4733', '460997', '*ทุ่งคลอง   ', '519', '34', '3');
INSERT INTO `district` VALUES ('4734', '460998', '*สำราญ   ', '519', '34', '3');
INSERT INTO `district` VALUES ('4735', '460999', '*โพน   ', '519', '34', '3');
INSERT INTO `district` VALUES ('4736', '461001', 'ทุ่งคลอง   ', '520', '34', '3');
INSERT INTO `district` VALUES ('4737', '461002', 'โพน   ', '520', '34', '3');
INSERT INTO `district` VALUES ('4738', '461003', '*สำราญ   ', '520', '34', '3');
INSERT INTO `district` VALUES ('4739', '461004', '*สำราญใต้   ', '520', '34', '3');
INSERT INTO `district` VALUES ('4740', '461005', 'ดินจี่   ', '520', '34', '3');
INSERT INTO `district` VALUES ('4741', '461006', 'นาบอน   ', '520', '34', '3');
INSERT INTO `district` VALUES ('4742', '461007', 'นาทัน   ', '520', '34', '3');
INSERT INTO `district` VALUES ('4743', '461008', '*คำสร้างเที่ยง   ', '520', '34', '3');
INSERT INTO `district` VALUES ('4744', '461009', 'เนินยาง   ', '520', '34', '3');
INSERT INTO `district` VALUES ('4745', '461010', '*หนองช้าง   ', '520', '34', '3');
INSERT INTO `district` VALUES ('4746', '461101', 'ท่าคันโท   ', '521', '34', '3');
INSERT INTO `district` VALUES ('4747', '461102', 'กุงเก่า   ', '521', '34', '3');
INSERT INTO `district` VALUES ('4748', '461103', 'ยางอู้ม   ', '521', '34', '3');
INSERT INTO `district` VALUES ('4749', '461104', 'กุดจิก   ', '521', '34', '3');
INSERT INTO `district` VALUES ('4750', '461105', 'นาตาล   ', '521', '34', '3');
INSERT INTO `district` VALUES ('4751', '461106', 'ดงสมบูรณ์   ', '521', '34', '3');
INSERT INTO `district` VALUES ('4752', '461198', '*โคกเครือ   ', '521', '34', '3');
INSERT INTO `district` VALUES ('4753', '461199', '*สหัสขันธ์   ', '521', '34', '3');
INSERT INTO `district` VALUES ('4754', '461201', 'หนองกุงศรี   ', '522', '34', '3');
INSERT INTO `district` VALUES ('4755', '461202', 'หนองบัว   ', '522', '34', '3');
INSERT INTO `district` VALUES ('4756', '461203', 'โคกเครือ   ', '522', '34', '3');
INSERT INTO `district` VALUES ('4757', '461204', 'หนองสรวง   ', '522', '34', '3');
INSERT INTO `district` VALUES ('4758', '461205', 'เสาเล้า   ', '522', '34', '3');
INSERT INTO `district` VALUES ('4759', '461206', 'หนองใหญ่   ', '522', '34', '3');
INSERT INTO `district` VALUES ('4760', '461207', 'ดงมูล   ', '522', '34', '3');
INSERT INTO `district` VALUES ('4761', '461208', 'ลำหนองแสน   ', '522', '34', '3');
INSERT INTO `district` VALUES ('4762', '461209', 'หนองหิน   ', '522', '34', '3');
INSERT INTO `district` VALUES ('4763', '461301', 'สมเด็จ   ', '523', '34', '3');
INSERT INTO `district` VALUES ('4764', '461302', 'หนองแวง   ', '523', '34', '3');
INSERT INTO `district` VALUES ('4765', '461303', 'แซงบาดาล   ', '523', '34', '3');
INSERT INTO `district` VALUES ('4766', '461304', 'มหาไชย   ', '523', '34', '3');
INSERT INTO `district` VALUES ('4767', '461305', 'หมูม่น   ', '523', '34', '3');
INSERT INTO `district` VALUES ('4768', '461306', 'ผาเสวย   ', '523', '34', '3');
INSERT INTO `district` VALUES ('4769', '461307', 'ศรีสมเด็จ   ', '523', '34', '3');
INSERT INTO `district` VALUES ('4770', '461308', 'ลำห้วยหลัว   ', '523', '34', '3');
INSERT INTO `district` VALUES ('4771', '461401', 'คำบง   ', '524', '34', '3');
INSERT INTO `district` VALUES ('4772', '461402', 'ไค้นุ่น   ', '524', '34', '3');
INSERT INTO `district` VALUES ('4773', '461403', 'นิคมห้วยผึ้ง   ', '524', '34', '3');
INSERT INTO `district` VALUES ('4774', '461404', 'หนองอีบุตร   ', '524', '34', '3');
INSERT INTO `district` VALUES ('4775', '461501', 'สำราญ   ', '525', '34', '3');
INSERT INTO `district` VALUES ('4776', '461502', 'สำราญใต้   ', '525', '34', '3');
INSERT INTO `district` VALUES ('4777', '461503', 'คำสร้างเที่ยง   ', '525', '34', '3');
INSERT INTO `district` VALUES ('4778', '461504', 'หนองช้าง   ', '525', '34', '3');
INSERT INTO `district` VALUES ('4779', '461601', 'นาคู   ', '526', '34', '3');
INSERT INTO `district` VALUES ('4780', '461602', 'สายนาวัง   ', '526', '34', '3');
INSERT INTO `district` VALUES ('4781', '461603', 'โนนนาจาน   ', '526', '34', '3');
INSERT INTO `district` VALUES ('4782', '461604', 'บ่อแก้ว   ', '526', '34', '3');
INSERT INTO `district` VALUES ('4783', '461605', 'ภูแล่นช้าง   ', '526', '34', '3');
INSERT INTO `district` VALUES ('4784', '461701', 'ดอนจาน   ', '527', '34', '3');
INSERT INTO `district` VALUES ('4785', '461702', 'สะอาดไชยศรี   ', '527', '34', '3');
INSERT INTO `district` VALUES ('4786', '461703', 'ดงพยุง   ', '527', '34', '3');
INSERT INTO `district` VALUES ('4787', '461704', 'ม่วงนา   ', '527', '34', '3');
INSERT INTO `district` VALUES ('4788', '461705', 'นาจำปา   ', '527', '34', '3');
INSERT INTO `district` VALUES ('4789', '461801', 'ฆ้องชัยพัฒนา   ', '528', '34', '3');
INSERT INTO `district` VALUES ('4790', '461802', 'เหล่ากลาง   ', '528', '34', '3');
INSERT INTO `district` VALUES ('4791', '461803', 'โคกสะอาด   ', '528', '34', '3');
INSERT INTO `district` VALUES ('4792', '461804', 'โนนศิลาเลิง   ', '528', '34', '3');
INSERT INTO `district` VALUES ('4793', '461805', 'ลำชี   ', '528', '34', '3');
INSERT INTO `district` VALUES ('4794', '470101', 'ธาตุเชิงชุม   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4795', '470102', 'ขมิ้น   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4796', '470103', 'งิ้วด่อน   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4797', '470104', 'โนนหอม   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4798', '470105', '*นาตงวัฒนา   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4799', '470106', 'เชียงเครือ   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4800', '470107', 'ท่าแร่   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4801', '470108', '*บ้านโพน   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4802', '470109', 'ม่วงลาย   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4803', '470110', 'กกปลาซิว*   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4804', '470111', 'ดงชน   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4805', '470112', 'ห้วยยาง   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4806', '470113', 'พังขว้าง   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4807', '470114', '*นาแก้ว   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4808', '470115', 'ดงมะไฟ   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4809', '470116', 'ธาตุนาเวง   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4810', '470117', 'เหล่าปอแดง   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4811', '470118', 'หนองลาด   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4812', '470119', '*บ้านแป้น   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4813', '470120', 'ฮางโฮง   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4814', '470121', 'โคกก่อง   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4815', '470194', '*นาตงวัฒนา   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4816', '470195', '*นาแก้ว   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4817', '470196', '*บ้านโพน   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4818', '470197', '*เหล่าโพนค้อ   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4819', '470198', '*ตองโขบ   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4820', '470199', '*เต่างอย   ', '529', '35', '3');
INSERT INTO `district` VALUES ('4821', '470201', 'กุสุมาลย์   ', '530', '35', '3');
INSERT INTO `district` VALUES ('4822', '470202', 'นาโพธิ์   ', '530', '35', '3');
INSERT INTO `district` VALUES ('4823', '470203', 'นาเพียง   ', '530', '35', '3');
INSERT INTO `district` VALUES ('4824', '470204', 'โพธิไพศาล   ', '530', '35', '3');
INSERT INTO `district` VALUES ('4825', '470205', 'อุ่มจาน   ', '530', '35', '3');
INSERT INTO `district` VALUES ('4826', '470301', 'กุดบาก   ', '531', '35', '3');
INSERT INTO `district` VALUES ('4827', '470302', '*โคกภู   ', '531', '35', '3');
INSERT INTO `district` VALUES ('4828', '470303', 'นาม่อง   ', '531', '35', '3');
INSERT INTO `district` VALUES ('4829', '470304', '*สร้างค้อ   ', '531', '35', '3');
INSERT INTO `district` VALUES ('4830', '470305', 'กุดไห   ', '531', '35', '3');
INSERT INTO `district` VALUES ('4831', '470306', '*หลุบเลา   ', '531', '35', '3');
INSERT INTO `district` VALUES ('4832', '470401', 'พรรณา   ', '532', '35', '3');
INSERT INTO `district` VALUES ('4833', '470402', 'วังยาง   ', '532', '35', '3');
INSERT INTO `district` VALUES ('4834', '470403', 'พอกน้อย   ', '532', '35', '3');
INSERT INTO `district` VALUES ('4835', '470404', 'นาหัวบ่อ   ', '532', '35', '3');
INSERT INTO `district` VALUES ('4836', '470405', 'ไร่   ', '532', '35', '3');
INSERT INTO `district` VALUES ('4837', '470406', 'ช้างมิ่ง   ', '532', '35', '3');
INSERT INTO `district` VALUES ('4838', '470407', 'นาใน   ', '532', '35', '3');
INSERT INTO `district` VALUES ('4839', '470408', 'สว่าง   ', '532', '35', '3');
INSERT INTO `district` VALUES ('4840', '470409', 'บะฮี   ', '532', '35', '3');
INSERT INTO `district` VALUES ('4841', '470410', 'เชิงชุม   ', '532', '35', '3');
INSERT INTO `district` VALUES ('4842', '470501', 'พังโคน   ', '533', '35', '3');
INSERT INTO `district` VALUES ('4843', '470502', 'ม่วงไข่   ', '533', '35', '3');
INSERT INTO `district` VALUES ('4844', '470503', 'แร่   ', '533', '35', '3');
INSERT INTO `district` VALUES ('4845', '470504', 'ไฮหย่อง   ', '533', '35', '3');
INSERT INTO `district` VALUES ('4846', '470505', 'ต้นผึ้ง   ', '533', '35', '3');
INSERT INTO `district` VALUES ('4847', '470597', '*คลองกระจัง   ', '533', '35', '3');
INSERT INTO `district` VALUES ('4848', '470598', '*สระกรวด   ', '533', '35', '3');
INSERT INTO `district` VALUES ('4849', '470601', 'วาริชภูมิ   ', '534', '35', '3');
INSERT INTO `district` VALUES ('4850', '470602', 'ปลาโหล   ', '534', '35', '3');
INSERT INTO `district` VALUES ('4851', '470603', 'หนองลาด   ', '534', '35', '3');
INSERT INTO `district` VALUES ('4852', '470604', 'คำบ่อ   ', '534', '35', '3');
INSERT INTO `district` VALUES ('4853', '470605', 'ค้อเขียว   ', '534', '35', '3');
INSERT INTO `district` VALUES ('4854', '470701', 'นิคมน้ำอูน   ', '535', '35', '3');
INSERT INTO `district` VALUES ('4855', '470702', 'หนองปลิง   ', '535', '35', '3');
INSERT INTO `district` VALUES ('4856', '470703', 'หนองบัว   ', '535', '35', '3');
INSERT INTO `district` VALUES ('4857', '470704', 'สุวรรณคาม   ', '535', '35', '3');
INSERT INTO `district` VALUES ('4858', '470801', 'วานรนิวาส   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4859', '470802', 'เดื่อศรีคันไชย   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4860', '470803', 'ขัวก่าย   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4861', '470804', 'หนองสนม   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4862', '470805', 'คูสะคาม   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4863', '470806', 'ธาตุ   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4864', '470807', 'หนองแวง   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4865', '470808', 'ศรีวิชัย   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4866', '470809', 'นาซอ   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4867', '470810', 'อินทร์แปลง   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4868', '470811', 'นาคำ   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4869', '470812', 'คอนสวรรค์   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4870', '470813', 'กุดเรือคำ   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4871', '470814', 'หนองแวงใต้   ', '536', '35', '3');
INSERT INTO `district` VALUES ('4872', '470901', 'คำตากล้า   ', '537', '35', '3');
INSERT INTO `district` VALUES ('4873', '470902', 'หนองบัวสิม   ', '537', '35', '3');
INSERT INTO `district` VALUES ('4874', '470903', 'นาแต้   ', '537', '35', '3');
INSERT INTO `district` VALUES ('4875', '470904', 'แพด   ', '537', '35', '3');
INSERT INTO `district` VALUES ('4876', '471001', 'ม่วง   ', '538', '35', '3');
INSERT INTO `district` VALUES ('4877', '471002', 'มาย   ', '538', '35', '3');
INSERT INTO `district` VALUES ('4878', '471003', 'ดงหม้อทอง   ', '538', '35', '3');
INSERT INTO `district` VALUES ('4879', '471004', 'ดงเหนือ   ', '538', '35', '3');
INSERT INTO `district` VALUES ('4880', '471005', 'ดงหม้อทองใต้   ', '538', '35', '3');
INSERT INTO `district` VALUES ('4881', '471006', 'ห้วยหลัว   ', '538', '35', '3');
INSERT INTO `district` VALUES ('4882', '471007', 'โนนสะอาด   ', '538', '35', '3');
INSERT INTO `district` VALUES ('4883', '471008', 'หนองกวั่ง   ', '538', '35', '3');
INSERT INTO `district` VALUES ('4884', '471009', 'บ่อแก้ว   ', '538', '35', '3');
INSERT INTO `district` VALUES ('4885', '471101', 'อากาศ   ', '539', '35', '3');
INSERT INTO `district` VALUES ('4886', '471102', 'โพนแพง   ', '539', '35', '3');
INSERT INTO `district` VALUES ('4887', '471103', 'วาใหญ่   ', '539', '35', '3');
INSERT INTO `district` VALUES ('4888', '471104', 'โพนงาม   ', '539', '35', '3');
INSERT INTO `district` VALUES ('4889', '471105', 'ท่าก้อน   ', '539', '35', '3');
INSERT INTO `district` VALUES ('4890', '471106', 'นาฮี   ', '539', '35', '3');
INSERT INTO `district` VALUES ('4891', '471107', 'บะหว้า   ', '539', '35', '3');
INSERT INTO `district` VALUES ('4892', '471108', 'สามัคคีพัฒนา   ', '539', '35', '3');
INSERT INTO `district` VALUES ('4893', '471201', 'สว่างแดนดิน   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4894', '471202', '*บ้านเหล่า   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4895', '471203', 'คำสะอาด   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4896', '471204', 'บ้านต้าย   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4897', '471205', '*เจริญศิลป์   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4898', '471206', 'บงเหนือ   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4899', '471207', 'โพนสูง   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4900', '471208', 'โคกสี   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4901', '471209', '*ทุ่งแก   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4902', '471210', 'หนองหลวง   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4903', '471211', 'บงใต้   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4904', '471212', 'ค้อใต้   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4905', '471213', 'พันนา   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4906', '471214', 'แวง   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4907', '471215', 'ทรายมูล   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4908', '471216', 'ตาลโกน   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4909', '471217', 'ตาลเนิ้ง   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4910', '471218', '*โคกศิลา   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4911', '471219', '*หนองแปน   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4912', '471220', 'ธาตุทอง   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4913', '471221', 'บ้านถ่อน   ', '540', '35', '3');
INSERT INTO `district` VALUES ('4914', '471301', 'ส่องดาว   ', '541', '35', '3');
INSERT INTO `district` VALUES ('4915', '471302', 'ท่าศิลา   ', '541', '35', '3');
INSERT INTO `district` VALUES ('4916', '471303', 'วัฒนา   ', '541', '35', '3');
INSERT INTO `district` VALUES ('4917', '471304', 'ปทุมวาปี   ', '541', '35', '3');
INSERT INTO `district` VALUES ('4918', '471401', 'เต่างอย   ', '542', '35', '3');
INSERT INTO `district` VALUES ('4919', '471402', 'บึงทวาย   ', '542', '35', '3');
INSERT INTO `district` VALUES ('4920', '471403', 'นาตาล   ', '542', '35', '3');
INSERT INTO `district` VALUES ('4921', '471404', 'จันทร์เพ็ญ   ', '542', '35', '3');
INSERT INTO `district` VALUES ('4922', '471501', 'ตองโขบ   ', '543', '35', '3');
INSERT INTO `district` VALUES ('4923', '471502', 'เหล่าโพนค้อ   ', '543', '35', '3');
INSERT INTO `district` VALUES ('4924', '471503', 'ด่านม่วงคำ   ', '543', '35', '3');
INSERT INTO `district` VALUES ('4925', '471504', 'แมดนาท่ม   ', '543', '35', '3');
INSERT INTO `district` VALUES ('4926', '471601', 'บ้านเหล่า   ', '544', '35', '3');
INSERT INTO `district` VALUES ('4927', '471602', 'เจริญศิลป์   ', '544', '35', '3');
INSERT INTO `district` VALUES ('4928', '471603', 'ทุ่งแก   ', '544', '35', '3');
INSERT INTO `district` VALUES ('4929', '471604', 'โคกศิลา   ', '544', '35', '3');
INSERT INTO `district` VALUES ('4930', '471605', 'หนองแปน   ', '544', '35', '3');
INSERT INTO `district` VALUES ('4931', '471701', 'บ้านโพน   ', '545', '35', '3');
INSERT INTO `district` VALUES ('4932', '471702', 'นาแก้ว   ', '545', '35', '3');
INSERT INTO `district` VALUES ('4933', '471703', 'นาตงวัฒนา   ', '545', '35', '3');
INSERT INTO `district` VALUES ('4934', '471704', 'บ้านแป้น   ', '545', '35', '3');
INSERT INTO `district` VALUES ('4935', '471705', 'เชียงสือ   ', '545', '35', '3');
INSERT INTO `district` VALUES ('4936', '471801', 'สร้างค้อ   ', '546', '35', '3');
INSERT INTO `district` VALUES ('4937', '471802', 'หลุบเลา   ', '546', '35', '3');
INSERT INTO `district` VALUES ('4938', '471803', 'โคกภู   ', '546', '35', '3');
INSERT INTO `district` VALUES ('4939', '471804', 'กกปลาซิว   ', '546', '35', '3');
INSERT INTO `district` VALUES ('4940', '480101', 'ในเมือง   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4941', '480102', 'หนองแสง   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4942', '480103', 'นาทราย   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4943', '480104', 'นาราชควาย   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4944', '480105', 'กุรุคุ   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4945', '480106', 'บ้านผึ้ง   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4946', '480107', 'อาจสามารถ   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4947', '480108', 'ขามเฒ่า   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4948', '480109', 'บ้านกลาง   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4949', '480110', 'ท่าค้อ   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4950', '480111', 'คำเตย   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4951', '480112', 'หนองญาติ   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4952', '480113', 'ดงขวาง   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4953', '480114', 'วังตามัว   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4954', '480115', 'โพธิ์ตาก   ', '549', '36', '3');
INSERT INTO `district` VALUES ('4955', '480201', 'ปลาปาก   ', '550', '36', '3');
INSERT INTO `district` VALUES ('4956', '480202', 'หนองฮี   ', '550', '36', '3');
INSERT INTO `district` VALUES ('4957', '480203', 'กุตาไก้   ', '550', '36', '3');
INSERT INTO `district` VALUES ('4958', '480204', 'โคกสว่าง   ', '550', '36', '3');
INSERT INTO `district` VALUES ('4959', '480205', 'โคกสูง   ', '550', '36', '3');
INSERT INTO `district` VALUES ('4960', '480206', 'มหาชัย   ', '550', '36', '3');
INSERT INTO `district` VALUES ('4961', '480207', 'นามะเขือ   ', '550', '36', '3');
INSERT INTO `district` VALUES ('4962', '480208', 'หนองเทาใหญ่   ', '550', '36', '3');
INSERT INTO `district` VALUES ('4963', '480301', 'ท่าอุเทน   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4964', '480302', 'โนนตาล   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4965', '480303', 'ท่าจำปา   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4966', '480304', 'ไชยบุรี   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4967', '480305', 'พนอม   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4968', '480306', 'พะทาย   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4969', '480307', '*นาขมิ้น   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4970', '480308', '*โพนบก   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4971', '480309', '*โพนสวรรค์   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4972', '480310', '*บ้านค้อ   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4973', '480311', 'เวินพระบาท   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4974', '480312', 'รามราช   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4975', '480313', '*นาหัวบ่อ   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4976', '480314', 'หนองเทา   ', '551', '36', '3');
INSERT INTO `district` VALUES ('4977', '480401', 'บ้านแพง   ', '552', '36', '3');
INSERT INTO `district` VALUES ('4978', '480402', 'ไผ่ล้อม   ', '552', '36', '3');
INSERT INTO `district` VALUES ('4979', '480403', 'โพนทอง   ', '552', '36', '3');
INSERT INTO `district` VALUES ('4980', '480404', 'หนองแวง   ', '552', '36', '3');
INSERT INTO `district` VALUES ('4981', '480405', '*นาทม   ', '552', '36', '3');
INSERT INTO `district` VALUES ('4982', '480406', '*หนองซน   ', '552', '36', '3');
INSERT INTO `district` VALUES ('4983', '480407', '*ดอนเตย   ', '552', '36', '3');
INSERT INTO `district` VALUES ('4984', '480408', 'นางัว   ', '552', '36', '3');
INSERT INTO `district` VALUES ('4985', '480409', 'นาเข   ', '552', '36', '3');
INSERT INTO `district` VALUES ('4986', '480501', 'ธาตุพนม   ', '553', '36', '3');
INSERT INTO `district` VALUES ('4987', '480502', 'ฝั่งแดง   ', '553', '36', '3');
INSERT INTO `district` VALUES ('4988', '480503', 'โพนแพง   ', '553', '36', '3');
INSERT INTO `district` VALUES ('4989', '480504', 'พระกลางทุ่ง   ', '553', '36', '3');
INSERT INTO `district` VALUES ('4990', '480505', 'นาถ่อน   ', '553', '36', '3');
INSERT INTO `district` VALUES ('4991', '480506', 'แสนพัน   ', '553', '36', '3');
INSERT INTO `district` VALUES ('4992', '480507', 'ดอนนางหงส์   ', '553', '36', '3');
INSERT INTO `district` VALUES ('4993', '480508', 'น้ำก่ำ   ', '553', '36', '3');
INSERT INTO `district` VALUES ('4994', '480509', 'อุ่มเหม้า   ', '553', '36', '3');
INSERT INTO `district` VALUES ('4995', '480510', 'นาหนาด   ', '553', '36', '3');
INSERT INTO `district` VALUES ('4996', '480511', 'กุดฉิม   ', '553', '36', '3');
INSERT INTO `district` VALUES ('4997', '480512', 'ธาตุพนมเหนือ   ', '553', '36', '3');
INSERT INTO `district` VALUES ('4998', '480601', 'เรณู   ', '554', '36', '3');
INSERT INTO `district` VALUES ('4999', '480602', 'โพนทอง   ', '554', '36', '3');
INSERT INTO `district` VALUES ('5000', '480603', 'ท่าลาด   ', '554', '36', '3');
INSERT INTO `district` VALUES ('5001', '480604', 'นางาม   ', '554', '36', '3');
INSERT INTO `district` VALUES ('5002', '480605', 'โคกหินแฮ่   ', '554', '36', '3');
INSERT INTO `district` VALUES ('5003', '480606', '*เรณูนคร   ', '554', '36', '3');
INSERT INTO `district` VALUES ('5004', '480607', 'หนองย่างชิ้น   ', '554', '36', '3');
INSERT INTO `district` VALUES ('5005', '480608', 'เรณูใต้   ', '554', '36', '3');
INSERT INTO `district` VALUES ('5006', '480609', 'นาขาม   ', '554', '36', '3');
INSERT INTO `district` VALUES ('5007', '480701', 'นาแก   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5008', '480702', 'พระซอง   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5009', '480703', 'หนองสังข์   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5010', '480704', 'นาคู่   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5011', '480705', 'พิมาน   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5012', '480706', 'พุ่มแก   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5013', '480707', 'ก้านเหลือง   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5014', '480708', 'หนองบ่อ   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5015', '480709', 'นาเลียง   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5016', '480710', 'โคกสี*   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5017', '480711', 'วังยาง*   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5018', '480712', 'บ้านแก้ง   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5019', '480713', 'คำพี้   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5020', '480714', 'ยอดชาด*   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5021', '480715', 'สีชมพู   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5022', '480716', 'หนองโพธิ์*   ', '555', '36', '3');
INSERT INTO `district` VALUES ('5023', '480801', 'ศรีสงคราม   ', '556', '36', '3');
INSERT INTO `district` VALUES ('5024', '480802', 'นาเดื่อ   ', '556', '36', '3');
INSERT INTO `district` VALUES ('5025', '480803', 'บ้านเอื้อง   ', '556', '36', '3');
INSERT INTO `district` VALUES ('5026', '480804', 'สามผง   ', '556', '36', '3');
INSERT INTO `district` VALUES ('5027', '480805', 'ท่าบ่อสงคราม   ', '556', '36', '3');
INSERT INTO `district` VALUES ('5028', '480806', 'บ้านข่า   ', '556', '36', '3');
INSERT INTO `district` VALUES ('5029', '480807', 'นาคำ   ', '556', '36', '3');
INSERT INTO `district` VALUES ('5030', '480808', 'โพนสว่าง   ', '556', '36', '3');
INSERT INTO `district` VALUES ('5031', '480809', 'หาดแพง   ', '556', '36', '3');
INSERT INTO `district` VALUES ('5032', '480901', 'นาหว้า   ', '557', '36', '3');
INSERT INTO `district` VALUES ('5033', '480902', 'นางัว   ', '557', '36', '3');
INSERT INTO `district` VALUES ('5034', '480903', 'บ้านเสียว   ', '557', '36', '3');
INSERT INTO `district` VALUES ('5035', '480904', 'นาคูณใหญ่   ', '557', '36', '3');
INSERT INTO `district` VALUES ('5036', '480905', 'เหล่าพัฒนา   ', '557', '36', '3');
INSERT INTO `district` VALUES ('5037', '480906', 'ท่าเรือ   ', '557', '36', '3');
INSERT INTO `district` VALUES ('5038', '481001', 'โพนสวรรค์   ', '558', '36', '3');
INSERT INTO `district` VALUES ('5039', '481002', 'นาหัวบ่อ   ', '558', '36', '3');
INSERT INTO `district` VALUES ('5040', '481003', 'นาขมิ้น   ', '558', '36', '3');
INSERT INTO `district` VALUES ('5041', '481004', 'โพนบก   ', '558', '36', '3');
INSERT INTO `district` VALUES ('5042', '481005', 'บ้านค้อ   ', '558', '36', '3');
INSERT INTO `district` VALUES ('5043', '481006', 'โพนจาน   ', '558', '36', '3');
INSERT INTO `district` VALUES ('5044', '481007', 'นาใน   ', '558', '36', '3');
INSERT INTO `district` VALUES ('5045', '481101', 'นาทม   ', '559', '36', '3');
INSERT INTO `district` VALUES ('5046', '481102', 'หนองซน   ', '559', '36', '3');
INSERT INTO `district` VALUES ('5047', '481103', 'ดอนเตย   ', '559', '36', '3');
INSERT INTO `district` VALUES ('5048', '481201', 'วังยาง   ', '560', '36', '3');
INSERT INTO `district` VALUES ('5049', '481202', 'โคกสี   ', '560', '36', '3');
INSERT INTO `district` VALUES ('5050', '481203', 'ยอดชาด   ', '560', '36', '3');
INSERT INTO `district` VALUES ('5051', '481204', 'หนองโพธิ์   ', '560', '36', '3');
INSERT INTO `district` VALUES ('5052', '490101', 'มุกดาหาร   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5053', '490102', 'ศรีบุญเรือง   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5054', '490103', 'บ้านโคก   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5055', '490104', 'บางทรายใหญ่   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5056', '490105', 'โพนทราย   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5057', '490106', 'ผึ่งแดด   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5058', '490107', 'นาโสก   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5059', '490108', 'นาสีนวน   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5060', '490109', 'คำป่าหลาย   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5061', '490110', 'คำอาฮวน   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5062', '490111', 'ดงเย็น   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5063', '490112', 'ดงมอน   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5064', '490113', 'กุดแข้   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5065', '490194', '*หนองแวง   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5066', '490195', '*กกแดง   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5067', '490196', '*นากอก   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5068', '490197', '*นำคมคำสร้อย   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5069', '490198', '*บางทรายน้อย   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5070', '490199', '*หว้านใหญ่   ', '561', '37', '3');
INSERT INTO `district` VALUES ('5071', '490201', 'นิคมคำสร้อย   ', '562', '37', '3');
INSERT INTO `district` VALUES ('5072', '490202', 'นากอก   ', '562', '37', '3');
INSERT INTO `district` VALUES ('5073', '490203', 'หนองแวง   ', '562', '37', '3');
INSERT INTO `district` VALUES ('5074', '490204', 'กกแดง   ', '562', '37', '3');
INSERT INTO `district` VALUES ('5075', '490205', 'นาอุดม   ', '562', '37', '3');
INSERT INTO `district` VALUES ('5076', '490206', 'โชคชัย   ', '562', '37', '3');
INSERT INTO `district` VALUES ('5077', '490207', 'ร่มเกล้า   ', '562', '37', '3');
INSERT INTO `district` VALUES ('5078', '490301', 'ดอนตาล   ', '563', '37', '3');
INSERT INTO `district` VALUES ('5079', '490302', 'โพธิ์ไทร   ', '563', '37', '3');
INSERT INTO `district` VALUES ('5080', '490303', 'ป่าไร่   ', '563', '37', '3');
INSERT INTO `district` VALUES ('5081', '490304', 'เหล่าหมี   ', '563', '37', '3');
INSERT INTO `district` VALUES ('5082', '490305', 'บ้านบาก   ', '563', '37', '3');
INSERT INTO `district` VALUES ('5083', '490306', 'นาสะเม็ง   ', '563', '37', '3');
INSERT INTO `district` VALUES ('5084', '490307', 'บ้านแก้ง   ', '563', '37', '3');
INSERT INTO `district` VALUES ('5085', '490401', 'ดงหลวง   ', '564', '37', '3');
INSERT INTO `district` VALUES ('5086', '490402', 'หนองบัว   ', '564', '37', '3');
INSERT INTO `district` VALUES ('5087', '490403', 'กกตูม   ', '564', '37', '3');
INSERT INTO `district` VALUES ('5088', '490404', 'หนองแคน   ', '564', '37', '3');
INSERT INTO `district` VALUES ('5089', '490405', 'ชะโนดน้อย   ', '564', '37', '3');
INSERT INTO `district` VALUES ('5090', '490406', 'พังแดง   ', '564', '37', '3');
INSERT INTO `district` VALUES ('5091', '490501', '*หนองสูงใต้   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5092', '490502', '*หนองสูง   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5093', '490503', 'บ้านซ่ง   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5094', '490504', 'คำชะอี   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5095', '490505', 'หนองเอี่ยน   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5096', '490506', 'บ้านค้อ   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5097', '490507', 'บ้านเหล่า   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5098', '490508', 'โพนงาม   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5099', '490509', '*โนนยาง   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5100', '490510', '*บ้านเป้า   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5101', '490511', 'เหล่าสร้างถ่อ   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5102', '490512', 'คำบก   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5103', '490513', '*ภูวง   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5104', '490514', 'น้ำเที่ยง   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5105', '490597', '*หนองสูงใต้   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5106', '490598', '*บ้านเป้า   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5107', '490599', '*หนองสูง   ', '565', '37', '3');
INSERT INTO `district` VALUES ('5108', '490601', 'หว้านใหญ่   ', '566', '37', '3');
INSERT INTO `district` VALUES ('5109', '490602', 'ป่งขาม   ', '566', '37', '3');
INSERT INTO `district` VALUES ('5110', '490603', 'บางทรายน้อย   ', '566', '37', '3');
INSERT INTO `district` VALUES ('5111', '490604', 'ชะโนด   ', '566', '37', '3');
INSERT INTO `district` VALUES ('5112', '490605', 'ดงหมู   ', '566', '37', '3');
INSERT INTO `district` VALUES ('5113', '490701', 'หนองสูง   ', '567', '37', '3');
INSERT INTO `district` VALUES ('5114', '490702', 'โนนยาง   ', '567', '37', '3');
INSERT INTO `district` VALUES ('5115', '490703', 'ภูวง   ', '567', '37', '3');
INSERT INTO `district` VALUES ('5116', '490704', 'บ้านเป้า   ', '567', '37', '3');
INSERT INTO `district` VALUES ('5117', '490705', 'หนองสูงใต้   ', '567', '37', '3');
INSERT INTO `district` VALUES ('5118', '490706', 'หนองสูงเหนือ   ', '567', '37', '3');
INSERT INTO `district` VALUES ('5119', '500101', 'ศรีภูมิ   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5120', '500102', 'พระสิงห์   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5121', '500103', 'หายยา   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5122', '500104', 'ช้างม่อย   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5123', '500105', 'ช้างคลาน   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5124', '500106', 'วัดเกต   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5125', '500107', 'ช้างเผือก   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5126', '500108', 'สุเทพ   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5127', '500109', 'แม่เหียะ   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5128', '500110', 'ป่าแดด   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5129', '500111', 'หนองหอย   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5130', '500112', 'ท่าศาลา   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5131', '500113', 'หนองป่าครั่ง   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5132', '500114', 'ฟ้าฮ่าม   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5133', '500115', 'ป่าตัน   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5134', '500116', 'สันผีเสื้อ   ', '568', '38', '1');
INSERT INTO `district` VALUES ('5135', '500201', '*ยางคราม   ', '569', '38', '1');
INSERT INTO `district` VALUES ('5136', '500202', '*สองแคว   ', '569', '38', '1');
INSERT INTO `district` VALUES ('5137', '500203', 'บ้านหลวง   ', '569', '38', '1');
INSERT INTO `district` VALUES ('5138', '500204', 'ข่วงเปา   ', '569', '38', '1');
INSERT INTO `district` VALUES ('5139', '500205', 'สบเตี๊ยะ   ', '569', '38', '1');
INSERT INTO `district` VALUES ('5140', '500206', 'บ้านแปะ   ', '569', '38', '1');
INSERT INTO `district` VALUES ('5141', '500207', 'ดอยแก้ว   ', '569', '38', '1');
INSERT INTO `district` VALUES ('5142', '500208', '*ดอยหล่อ   ', '569', '38', '1');
INSERT INTO `district` VALUES ('5143', '500209', 'แม่สอย   ', '569', '38', '1');
INSERT INTO `district` VALUES ('5144', '500210', '*สันติสุข   ', '569', '38', '1');
INSERT INTO `district` VALUES ('5145', '500301', 'ช่างเคิ่ง   ', '570', '38', '1');
INSERT INTO `district` VALUES ('5146', '500302', 'ท่าผา   ', '570', '38', '1');
INSERT INTO `district` VALUES ('5147', '500303', 'บ้านทับ   ', '570', '38', '1');
INSERT INTO `district` VALUES ('5148', '500304', 'แม่ศึก   ', '570', '38', '1');
INSERT INTO `district` VALUES ('5149', '500305', 'แม่นาจร   ', '570', '38', '1');
INSERT INTO `district` VALUES ('5150', '500306', 'บ้านจันทร์   ', '570', '38', '1');
INSERT INTO `district` VALUES ('5151', '500307', 'ปางหินฝน   ', '570', '38', '1');
INSERT INTO `district` VALUES ('5152', '500308', 'กองแขก   ', '570', '38', '1');
INSERT INTO `district` VALUES ('5153', '500309', 'แม่แดด   ', '570', '38', '1');
INSERT INTO `district` VALUES ('5154', '500310', 'แจ่มหลวง   ', '570', '38', '1');
INSERT INTO `district` VALUES ('5155', '500401', 'เชียงดาว   ', '571', '38', '1');
INSERT INTO `district` VALUES ('5156', '500402', 'เมืองนะ   ', '571', '38', '1');
INSERT INTO `district` VALUES ('5157', '500403', 'เมืองงาย   ', '571', '38', '1');
INSERT INTO `district` VALUES ('5158', '500404', 'แม่นะ   ', '571', '38', '1');
INSERT INTO `district` VALUES ('5159', '500405', 'เมืองคอง   ', '571', '38', '1');
INSERT INTO `district` VALUES ('5160', '500406', 'ปิงโค้ง   ', '571', '38', '1');
INSERT INTO `district` VALUES ('5161', '500407', 'ทุ่งข้าวพวง   ', '571', '38', '1');
INSERT INTO `district` VALUES ('5162', '500501', 'เชิงดอย   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5163', '500502', 'สันปูเลย   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5164', '500503', 'ลวงเหนือ   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5165', '500504', 'ป่าป้อง   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5166', '500505', 'สง่าบ้าน   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5167', '500506', 'ป่าลาน   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5168', '500507', 'ตลาดขวัญ   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5169', '500508', 'สำราญราษฎร์   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5170', '500509', 'แม่คือ   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5171', '500510', 'ตลาดใหญ่   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5172', '500511', 'แม่ฮ้อยเงิน   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5173', '500512', 'แม่โป่ง   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5174', '500513', 'ป่าเมี่ยง   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5175', '500514', 'เทพเสด็จ   ', '572', '38', '1');
INSERT INTO `district` VALUES ('5176', '500601', 'สันมหาพน   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5177', '500602', 'แม่แตง   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5178', '500603', 'ขี้เหล็ก   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5179', '500604', 'ช่อแล   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5180', '500605', 'แม่หอพระ   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5181', '500606', 'สบเปิง   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5182', '500607', 'บ้านเป้า   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5183', '500608', 'สันป่ายาง   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5184', '500609', 'ป่าแป๋   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5185', '500610', 'เมืองก๋าย   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5186', '500611', 'บ้านช้าง   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5187', '500612', 'กื้ดช้าง   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5188', '500613', 'อินทขิล   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5189', '500614', 'สมก๋าย   ', '573', '38', '1');
INSERT INTO `district` VALUES ('5190', '500701', 'ริมใต้   ', '574', '38', '1');
INSERT INTO `district` VALUES ('5191', '500702', 'ริมเหนือ   ', '574', '38', '1');
INSERT INTO `district` VALUES ('5192', '500703', 'สันโป่ง   ', '574', '38', '1');
INSERT INTO `district` VALUES ('5193', '500704', 'ขี้เหล็ก   ', '574', '38', '1');
INSERT INTO `district` VALUES ('5194', '500705', 'สะลวง   ', '574', '38', '1');
INSERT INTO `district` VALUES ('5195', '500706', 'ห้วยทราย   ', '574', '38', '1');
INSERT INTO `district` VALUES ('5196', '500707', 'แม่แรม   ', '574', '38', '1');
INSERT INTO `district` VALUES ('5197', '500708', 'โป่งแยง   ', '574', '38', '1');
INSERT INTO `district` VALUES ('5198', '500709', 'แม่สา   ', '574', '38', '1');
INSERT INTO `district` VALUES ('5199', '500710', 'ดอนแก้ว   ', '574', '38', '1');
INSERT INTO `district` VALUES ('5200', '500711', 'เหมืองแก้ว   ', '574', '38', '1');
INSERT INTO `district` VALUES ('5201', '500801', 'สะเมิงใต้   ', '575', '38', '1');
INSERT INTO `district` VALUES ('5202', '500802', 'สะเมิงเหนือ   ', '575', '38', '1');
INSERT INTO `district` VALUES ('5203', '500803', 'แม่สาบ   ', '575', '38', '1');
INSERT INTO `district` VALUES ('5204', '500804', 'บ่อแก้ว   ', '575', '38', '1');
INSERT INTO `district` VALUES ('5205', '500805', 'ยั้งเมิน   ', '575', '38', '1');
INSERT INTO `district` VALUES ('5206', '500901', 'เวียง   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5207', '500902', '*ปงตำ   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5208', '500903', 'ม่อนปิ่น   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5209', '500904', 'แม่งอน   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5210', '500905', 'แม่สูน   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5211', '500906', 'สันทราย   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5212', '500907', '*ศรีดงเย็น   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5213', '500908', '*แม่ทะลบ   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5214', '500909', '*หนองบัว   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5215', '500910', 'แม่คะ   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5216', '500911', 'แม่ข่า   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5217', '500912', 'โป่งน้ำร้อน   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5218', '500995', 'แม่นาวาง*   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5219', '500996', 'แม่สาว*   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5220', '500997', 'แม่อาย*   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5221', '500998', '*ศรีดงเย็น   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5222', '500999', '*ปงตำ   ', '576', '38', '1');
INSERT INTO `district` VALUES ('5223', '501001', 'แม่อาย   ', '577', '38', '1');
INSERT INTO `district` VALUES ('5224', '501002', 'แม่สาว   ', '577', '38', '1');
INSERT INTO `district` VALUES ('5225', '501003', 'สันต้นหมื้อ   ', '577', '38', '1');
INSERT INTO `district` VALUES ('5226', '501004', 'แม่นาวาง   ', '577', '38', '1');
INSERT INTO `district` VALUES ('5227', '501005', 'ท่าตอน   ', '577', '38', '1');
INSERT INTO `district` VALUES ('5228', '501006', 'บ้านหลวง   ', '577', '38', '1');
INSERT INTO `district` VALUES ('5229', '501007', 'มะลิกา   ', '577', '38', '1');
INSERT INTO `district` VALUES ('5230', '501101', 'เวียง   ', '578', '38', '1');
INSERT INTO `district` VALUES ('5231', '501102', 'ทุ่งหลวง   ', '578', '38', '1');
INSERT INTO `district` VALUES ('5232', '501103', 'ป่าตุ้ม   ', '578', '38', '1');
INSERT INTO `district` VALUES ('5233', '501104', 'ป่าไหน่   ', '578', '38', '1');
INSERT INTO `district` VALUES ('5234', '501105', 'สันทราย   ', '578', '38', '1');
INSERT INTO `district` VALUES ('5235', '501106', 'บ้านโป่ง   ', '578', '38', '1');
INSERT INTO `district` VALUES ('5236', '501107', 'น้ำแพร่   ', '578', '38', '1');
INSERT INTO `district` VALUES ('5237', '501108', 'เขื่อนผาก   ', '578', '38', '1');
INSERT INTO `district` VALUES ('5238', '501109', 'แม่แวน   ', '578', '38', '1');
INSERT INTO `district` VALUES ('5239', '501110', 'แม่ปั๋ง   ', '578', '38', '1');
INSERT INTO `district` VALUES ('5240', '501111', 'โหล่งขอด   ', '578', '38', '1');
INSERT INTO `district` VALUES ('5241', '501201', 'ยุหว่า   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5242', '501202', 'สันกลาง   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5243', '501203', 'ท่าวังพร้าว   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5244', '501204', 'มะขามหลวง   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5245', '501205', 'แม่ก๊า   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5246', '501206', 'บ้านแม   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5247', '501207', 'บ้านกลาง   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5248', '501208', 'ทุ่งสะโตก   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5249', '501209', '*ทุ่งปี้   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5250', '501210', 'ทุ่งต้อม   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5251', '501211', '*บ้านกาด   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5252', '501212', '*แม่วิน   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5253', '501213', '*ทุ่งรวงทอง   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5254', '501214', 'น้ำบ่อหลวง   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5255', '501215', 'มะขุนหวาน   ', '579', '38', '1');
INSERT INTO `district` VALUES ('5256', '501301', 'สันกำแพง   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5257', '501302', 'ทรายมูล   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5258', '501303', 'ร้องวัวแดง   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5259', '501304', 'บวกค้าง   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5260', '501305', 'แช่ช้าง   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5261', '501306', 'ออนใต้   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5262', '501307', '*ออนเหนือ   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5263', '501308', '*บ้านสหกรณ์   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5264', '501309', '*ห้วยแก้ว   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5265', '501310', 'แม่ปูคา   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5266', '501311', 'ห้วยทราย   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5267', '501312', 'ต้นเปา   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5268', '501313', 'สันกลาง   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5269', '501314', '*แม่ทา   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5270', '501315', '*ทาเหนือ   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5271', '501316', '*ออนกลาง   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5272', '501397', '*แม่วิน   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5273', '501398', '*ทุ่งปี้   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5274', '501399', '*บ้านกาด   ', '580', '38', '1');
INSERT INTO `district` VALUES ('5275', '501401', 'สันทรายหลวง   ', '581', '38', '1');
INSERT INTO `district` VALUES ('5276', '501402', 'สันทรายน้อย   ', '581', '38', '1');
INSERT INTO `district` VALUES ('5277', '501403', 'สันพระเนตร   ', '581', '38', '1');
INSERT INTO `district` VALUES ('5278', '501404', 'สันนาเม็ง   ', '581', '38', '1');
INSERT INTO `district` VALUES ('5279', '501405', 'สันป่าเปา   ', '581', '38', '1');
INSERT INTO `district` VALUES ('5280', '501406', 'หนองแหย่ง   ', '581', '38', '1');
INSERT INTO `district` VALUES ('5281', '501407', 'หนองจ๊อม   ', '581', '38', '1');
INSERT INTO `district` VALUES ('5282', '501408', 'หนองหาร   ', '581', '38', '1');
INSERT INTO `district` VALUES ('5283', '501409', 'แม่แฝก   ', '581', '38', '1');
INSERT INTO `district` VALUES ('5284', '501410', 'แม่แฝกใหม่   ', '581', '38', '1');
INSERT INTO `district` VALUES ('5285', '501411', 'เมืองเล็น   ', '581', '38', '1');
INSERT INTO `district` VALUES ('5286', '501412', 'ป่าไผ่   ', '581', '38', '1');
INSERT INTO `district` VALUES ('5287', '501501', 'หางดง   ', '582', '38', '1');
INSERT INTO `district` VALUES ('5288', '501502', 'หนองแก๋ว   ', '582', '38', '1');
INSERT INTO `district` VALUES ('5289', '501503', 'หารแก้ว   ', '582', '38', '1');
INSERT INTO `district` VALUES ('5290', '501504', 'หนองตอง   ', '582', '38', '1');
INSERT INTO `district` VALUES ('5291', '501505', 'ขุนคง   ', '582', '38', '1');
INSERT INTO `district` VALUES ('5292', '501506', 'สบแม่ข่า   ', '582', '38', '1');
INSERT INTO `district` VALUES ('5293', '501507', 'บ้านแหวน   ', '582', '38', '1');
INSERT INTO `district` VALUES ('5294', '501508', 'สันผักหวาน   ', '582', '38', '1');
INSERT INTO `district` VALUES ('5295', '501509', 'หนองควาย   ', '582', '38', '1');
INSERT INTO `district` VALUES ('5296', '501510', 'บ้านปง   ', '582', '38', '1');
INSERT INTO `district` VALUES ('5297', '501511', 'น้ำแพร่   ', '582', '38', '1');
INSERT INTO `district` VALUES ('5298', '501601', 'หางดง   ', '583', '38', '1');
INSERT INTO `district` VALUES ('5299', '501602', 'ฮอด   ', '583', '38', '1');
INSERT INTO `district` VALUES ('5300', '501603', 'บ้านตาล   ', '583', '38', '1');
INSERT INTO `district` VALUES ('5301', '501604', 'บ่อหลวง   ', '583', '38', '1');
INSERT INTO `district` VALUES ('5302', '501605', 'บ่อสลี   ', '583', '38', '1');
INSERT INTO `district` VALUES ('5303', '501606', 'นาคอเรือ   ', '583', '38', '1');
INSERT INTO `district` VALUES ('5304', '501701', 'ดอยเต่า   ', '584', '38', '1');
INSERT INTO `district` VALUES ('5305', '501702', 'ท่าเดื่อ   ', '584', '38', '1');
INSERT INTO `district` VALUES ('5306', '501703', 'มืดกา   ', '584', '38', '1');
INSERT INTO `district` VALUES ('5307', '501704', 'บ้านแอ่น   ', '584', '38', '1');
INSERT INTO `district` VALUES ('5308', '501705', 'บงตัน   ', '584', '38', '1');
INSERT INTO `district` VALUES ('5309', '501706', 'โปงทุ่ง   ', '584', '38', '1');
INSERT INTO `district` VALUES ('5310', '501801', 'อมก๋อย   ', '585', '38', '1');
INSERT INTO `district` VALUES ('5311', '501802', 'ยางเปียง   ', '585', '38', '1');
INSERT INTO `district` VALUES ('5312', '501803', 'แม่ตื่น   ', '585', '38', '1');
INSERT INTO `district` VALUES ('5313', '501804', 'ม่อนจอง   ', '585', '38', '1');
INSERT INTO `district` VALUES ('5314', '501805', 'สบโขง   ', '585', '38', '1');
INSERT INTO `district` VALUES ('5315', '501806', 'นาเกียน   ', '585', '38', '1');
INSERT INTO `district` VALUES ('5316', '501901', 'ยางเนิ้ง   ', '586', '38', '1');
INSERT INTO `district` VALUES ('5317', '501902', 'สารภี   ', '586', '38', '1');
INSERT INTO `district` VALUES ('5318', '501903', 'ชมภู   ', '586', '38', '1');
INSERT INTO `district` VALUES ('5319', '501904', 'ไชยสถาน   ', '586', '38', '1');
INSERT INTO `district` VALUES ('5320', '501905', 'ขัวมุง   ', '586', '38', '1');
INSERT INTO `district` VALUES ('5321', '501906', 'หนองแฝก   ', '586', '38', '1');
INSERT INTO `district` VALUES ('5322', '501907', 'หนองผึ้ง   ', '586', '38', '1');
INSERT INTO `district` VALUES ('5323', '501908', 'ท่ากว้าง   ', '586', '38', '1');
INSERT INTO `district` VALUES ('5324', '501909', 'ดอนแก้ว   ', '586', '38', '1');
INSERT INTO `district` VALUES ('5325', '501910', 'ท่าวังตาล   ', '586', '38', '1');
INSERT INTO `district` VALUES ('5326', '501911', 'สันทราย   ', '586', '38', '1');
INSERT INTO `district` VALUES ('5327', '501912', 'ป่าบง   ', '586', '38', '1');
INSERT INTO `district` VALUES ('5328', '502001', 'เมืองแหง   ', '587', '38', '1');
INSERT INTO `district` VALUES ('5329', '502002', 'เปียงหลวง   ', '587', '38', '1');
INSERT INTO `district` VALUES ('5330', '502003', 'แสนไห   ', '587', '38', '1');
INSERT INTO `district` VALUES ('5331', '502101', 'ปงตำ   ', '588', '38', '1');
INSERT INTO `district` VALUES ('5332', '502102', 'ศรีดงเย็น   ', '588', '38', '1');
INSERT INTO `district` VALUES ('5333', '502103', 'แม่ทะลบ   ', '588', '38', '1');
INSERT INTO `district` VALUES ('5334', '502104', 'หนองบัว   ', '588', '38', '1');
INSERT INTO `district` VALUES ('5335', '502201', 'บ้านกาด   ', '589', '38', '1');
INSERT INTO `district` VALUES ('5336', '502202', 'ทุ่งปี้   ', '589', '38', '1');
INSERT INTO `district` VALUES ('5337', '502203', 'ทุ่งรวงทอง   ', '589', '38', '1');
INSERT INTO `district` VALUES ('5338', '502204', 'แม่วิน   ', '589', '38', '1');
INSERT INTO `district` VALUES ('5339', '502205', 'ดอนเปา   ', '589', '38', '1');
INSERT INTO `district` VALUES ('5340', '502301', 'ออนเหนือ   ', '590', '38', '1');
INSERT INTO `district` VALUES ('5341', '502302', 'ออนกลาง   ', '590', '38', '1');
INSERT INTO `district` VALUES ('5342', '502303', 'บ้านสหกรณ์   ', '590', '38', '1');
INSERT INTO `district` VALUES ('5343', '502304', 'ห้วยแก้ว   ', '590', '38', '1');
INSERT INTO `district` VALUES ('5344', '502305', 'แม่ทา   ', '590', '38', '1');
INSERT INTO `district` VALUES ('5345', '502306', 'ทาเหนือ   ', '590', '38', '1');
INSERT INTO `district` VALUES ('5346', '502401', 'ดอยหล่อ   ', '591', '38', '1');
INSERT INTO `district` VALUES ('5347', '502402', 'สองแคว   ', '591', '38', '1');
INSERT INTO `district` VALUES ('5348', '502403', 'ยางคราม   ', '591', '38', '1');
INSERT INTO `district` VALUES ('5349', '502404', 'สันติสุข   ', '591', '38', '1');
INSERT INTO `district` VALUES ('5350', '510101', 'ในเมือง   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5351', '510102', 'เหมืองง่า   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5352', '510103', 'อุโมงค์   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5353', '510104', 'หนองช้างคืน   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5354', '510105', 'ประตูป่า   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5355', '510106', 'ริมปิง   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5356', '510107', 'ต้นธง   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5357', '510108', 'บ้านแป้น   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5358', '510109', 'เหมืองจี้   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5359', '510110', 'ป่าสัก   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5360', '510111', 'เวียงยอง   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5361', '510112', 'บ้านกลาง   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5362', '510113', 'มะเขือแจ้   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5363', '510114', '*บ้านธิ   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5364', '510115', '*ห้วยยาบ   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5365', '510116', 'ศรีบัวบาน   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5366', '510117', 'หนองหนาม   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5367', '510198', '*ห้วยยาบ   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5368', '510199', '*บ้านธิ   ', '595', '39', '1');
INSERT INTO `district` VALUES ('5369', '510201', 'ทาปลาดุก   ', '596', '39', '1');
INSERT INTO `district` VALUES ('5370', '510202', 'ทาสบเส้า   ', '596', '39', '1');
INSERT INTO `district` VALUES ('5371', '510203', 'ทากาศ   ', '596', '39', '1');
INSERT INTO `district` VALUES ('5372', '510204', 'ทาขุมเงิน   ', '596', '39', '1');
INSERT INTO `district` VALUES ('5373', '510205', 'ทาทุ่งหลวง   ', '596', '39', '1');
INSERT INTO `district` VALUES ('5374', '510206', 'ทาแม่ลอบ   ', '596', '39', '1');
INSERT INTO `district` VALUES ('5375', '510301', 'บ้านโฮ่ง   ', '597', '39', '1');
INSERT INTO `district` VALUES ('5376', '510302', 'ป่าพลู   ', '597', '39', '1');
INSERT INTO `district` VALUES ('5377', '510303', 'เหล่ายาว   ', '597', '39', '1');
INSERT INTO `district` VALUES ('5378', '510304', 'ศรีเตี้ย   ', '597', '39', '1');
INSERT INTO `district` VALUES ('5379', '510305', 'หนองปลาสะวาย   ', '597', '39', '1');
INSERT INTO `district` VALUES ('5380', '510401', 'ลี้   ', '598', '39', '1');
INSERT INTO `district` VALUES ('5381', '510402', 'แม่ตืน   ', '598', '39', '1');
INSERT INTO `district` VALUES ('5382', '510403', 'นาทราย   ', '598', '39', '1');
INSERT INTO `district` VALUES ('5383', '510404', 'ดงดำ   ', '598', '39', '1');
INSERT INTO `district` VALUES ('5384', '510405', 'ก้อ   ', '598', '39', '1');
INSERT INTO `district` VALUES ('5385', '510406', 'แม่ลาน   ', '598', '39', '1');
INSERT INTO `district` VALUES ('5386', '510407', 'บ้านไผ่*   ', '598', '39', '1');
INSERT INTO `district` VALUES ('5387', '510408', 'ป่าไผ่   ', '598', '39', '1');
INSERT INTO `district` VALUES ('5388', '510409', 'ศรีวิชัย   ', '598', '39', '1');
INSERT INTO `district` VALUES ('5389', '510498', '*บ้านปวง   ', '598', '39', '1');
INSERT INTO `district` VALUES ('5390', '510499', '*ทุ่งหัวช้าง   ', '598', '39', '1');
INSERT INTO `district` VALUES ('5391', '510501', 'ทุ่งหัวช้าง   ', '599', '39', '1');
INSERT INTO `district` VALUES ('5392', '510502', 'บ้านปวง   ', '599', '39', '1');
INSERT INTO `district` VALUES ('5393', '510503', 'ตะเคียนปม   ', '599', '39', '1');
INSERT INTO `district` VALUES ('5394', '510601', 'ปากบ่อง   ', '600', '39', '1');
INSERT INTO `district` VALUES ('5395', '510602', 'ป่าซาง   ', '600', '39', '1');
INSERT INTO `district` VALUES ('5396', '510603', 'แม่แรง   ', '600', '39', '1');
INSERT INTO `district` VALUES ('5397', '510604', 'ม่วงน้อย   ', '600', '39', '1');
INSERT INTO `district` VALUES ('5398', '510605', 'บ้านเรือน   ', '600', '39', '1');
INSERT INTO `district` VALUES ('5399', '510606', 'มะกอก   ', '600', '39', '1');
INSERT INTO `district` VALUES ('5400', '510607', 'ท่าตุ้ม   ', '600', '39', '1');
INSERT INTO `district` VALUES ('5401', '510608', 'น้ำดิบ   ', '600', '39', '1');
INSERT INTO `district` VALUES ('5402', '510609', '*วังผาง   ', '600', '39', '1');
INSERT INTO `district` VALUES ('5403', '510610', '*หนองล่อง   ', '600', '39', '1');
INSERT INTO `district` VALUES ('5404', '510611', 'นครเจดีย์   ', '600', '39', '1');
INSERT INTO `district` VALUES ('5405', '510612', '*หนองยวง   ', '600', '39', '1');
INSERT INTO `district` VALUES ('5406', '510701', 'บ้านธิ   ', '601', '39', '1');
INSERT INTO `district` VALUES ('5407', '510702', 'ห้วยยาบ   ', '601', '39', '1');
INSERT INTO `district` VALUES ('5408', '510801', 'หนองล่อง   ', '602', '39', '1');
INSERT INTO `district` VALUES ('5409', '510802', 'หนองยวง   ', '602', '39', '1');
INSERT INTO `district` VALUES ('5410', '510803', 'วังผาง   ', '602', '39', '1');
INSERT INTO `district` VALUES ('5411', '520101', 'เวียงเหนือ   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5412', '520102', 'หัวเวียง   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5413', '520103', 'สวนดอก   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5414', '520104', 'สบตุ๋ย   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5415', '520105', 'พระบาท   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5416', '520106', 'ชมพู   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5417', '520107', 'กล้วยแพะ   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5418', '520108', 'ปงแสนทอง   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5419', '520109', 'บ้านแลง   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5420', '520110', 'บ้านเสด็จ   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5421', '520111', 'พิชัย   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5422', '520112', 'ทุ่งฝาย   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5423', '520113', 'บ้านเอื้อม   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5424', '520114', 'บ้านเป้า   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5425', '520115', 'บ้านค่า   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5426', '520116', 'บ่อแฮ้ว   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5427', '520117', 'ต้นธงชัย   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5428', '520118', 'นิคมพัฒนา   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5429', '520119', 'บุญนาคพัฒนา   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5430', '520198', '*นาสัก   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5431', '520199', '*บ้านดง   ', '603', '40', '1');
INSERT INTO `district` VALUES ('5432', '520201', 'บ้านดง   ', '604', '40', '1');
INSERT INTO `district` VALUES ('5433', '520202', 'นาสัก   ', '604', '40', '1');
INSERT INTO `district` VALUES ('5434', '520203', 'จางเหนือ   ', '604', '40', '1');
INSERT INTO `district` VALUES ('5435', '520204', 'แม่เมาะ   ', '604', '40', '1');
INSERT INTO `district` VALUES ('5436', '520205', 'สบป้าด   ', '604', '40', '1');
INSERT INTO `district` VALUES ('5437', '520301', 'ลำปางหลวง   ', '605', '40', '1');
INSERT INTO `district` VALUES ('5438', '520302', 'นาแก้ว   ', '605', '40', '1');
INSERT INTO `district` VALUES ('5439', '520303', 'ไหล่หิน   ', '605', '40', '1');
INSERT INTO `district` VALUES ('5440', '520304', 'วังพร้าว   ', '605', '40', '1');
INSERT INTO `district` VALUES ('5441', '520305', 'ศาลา   ', '605', '40', '1');
INSERT INTO `district` VALUES ('5442', '520306', 'เกาะคา   ', '605', '40', '1');
INSERT INTO `district` VALUES ('5443', '520307', 'นาแส่ง   ', '605', '40', '1');
INSERT INTO `district` VALUES ('5444', '520308', 'ท่าผา   ', '605', '40', '1');
INSERT INTO `district` VALUES ('5445', '520309', 'ใหม่พัฒนา   ', '605', '40', '1');
INSERT INTO `district` VALUES ('5446', '520401', 'ทุ่งงาม   ', '606', '40', '1');
INSERT INTO `district` VALUES ('5447', '520402', 'เสริมขวา   ', '606', '40', '1');
INSERT INTO `district` VALUES ('5448', '520403', 'เสริมซ้าย   ', '606', '40', '1');
INSERT INTO `district` VALUES ('5449', '520404', 'เสริมกลาง   ', '606', '40', '1');
INSERT INTO `district` VALUES ('5450', '520501', 'หลวงเหนือ   ', '607', '40', '1');
INSERT INTO `district` VALUES ('5451', '520502', 'หลวงใต้   ', '607', '40', '1');
INSERT INTO `district` VALUES ('5452', '520503', 'บ้านโป่ง   ', '607', '40', '1');
INSERT INTO `district` VALUES ('5453', '520504', 'บ้านร้อง   ', '607', '40', '1');
INSERT INTO `district` VALUES ('5454', '520505', 'ปงเตา   ', '607', '40', '1');
INSERT INTO `district` VALUES ('5455', '520506', 'นาแก   ', '607', '40', '1');
INSERT INTO `district` VALUES ('5456', '520507', 'บ้านอ้อน   ', '607', '40', '1');
INSERT INTO `district` VALUES ('5457', '520508', 'บ้านแหง   ', '607', '40', '1');
INSERT INTO `district` VALUES ('5458', '520509', 'บ้านหวด   ', '607', '40', '1');
INSERT INTO `district` VALUES ('5459', '520510', 'แม่ตีบ   ', '607', '40', '1');
INSERT INTO `district` VALUES ('5460', '520601', 'แจ้ห่ม   ', '608', '40', '1');
INSERT INTO `district` VALUES ('5461', '520602', 'บ้านสา   ', '608', '40', '1');
INSERT INTO `district` VALUES ('5462', '520603', 'ปงดอน   ', '608', '40', '1');
INSERT INTO `district` VALUES ('5463', '520604', 'แม่สุก   ', '608', '40', '1');
INSERT INTO `district` VALUES ('5464', '520605', 'เมืองมาย   ', '608', '40', '1');
INSERT INTO `district` VALUES ('5465', '520606', 'ทุ่งผึ้ง   ', '608', '40', '1');
INSERT INTO `district` VALUES ('5466', '520607', 'วิเชตนคร   ', '608', '40', '1');
INSERT INTO `district` VALUES ('5467', '520696', '*แจ้ซ้อน   ', '608', '40', '1');
INSERT INTO `district` VALUES ('5468', '520697', '*ทุ่งกว๋าว   ', '608', '40', '1');
INSERT INTO `district` VALUES ('5469', '520698', '*บ้านขอ   ', '608', '40', '1');
INSERT INTO `district` VALUES ('5470', '520699', '*เมืองปาน   ', '608', '40', '1');
INSERT INTO `district` VALUES ('5471', '520701', 'ทุ่งฮั้ว   ', '609', '40', '1');
INSERT INTO `district` VALUES ('5472', '520702', 'วังเหนือ   ', '609', '40', '1');
INSERT INTO `district` VALUES ('5473', '520703', 'วังใต้   ', '609', '40', '1');
INSERT INTO `district` VALUES ('5474', '520704', 'ร่องเคาะ   ', '609', '40', '1');
INSERT INTO `district` VALUES ('5475', '520705', 'วังทอง   ', '609', '40', '1');
INSERT INTO `district` VALUES ('5476', '520706', 'วังซ้าย   ', '609', '40', '1');
INSERT INTO `district` VALUES ('5477', '520707', 'วังแก้ว   ', '609', '40', '1');
INSERT INTO `district` VALUES ('5478', '520708', 'วังทรายคำ   ', '609', '40', '1');
INSERT INTO `district` VALUES ('5479', '520801', 'ล้อมแรด   ', '610', '40', '1');
INSERT INTO `district` VALUES ('5480', '520802', 'แม่วะ   ', '610', '40', '1');
INSERT INTO `district` VALUES ('5481', '520803', 'แม่ปะ   ', '610', '40', '1');
INSERT INTO `district` VALUES ('5482', '520804', 'แม่มอก   ', '610', '40', '1');
INSERT INTO `district` VALUES ('5483', '520805', 'เวียงมอก   ', '610', '40', '1');
INSERT INTO `district` VALUES ('5484', '520806', 'นาโป่ง   ', '610', '40', '1');
INSERT INTO `district` VALUES ('5485', '520807', 'แม่ถอด   ', '610', '40', '1');
INSERT INTO `district` VALUES ('5486', '520808', 'เถินบุรี   ', '610', '40', '1');
INSERT INTO `district` VALUES ('5487', '520901', 'แม่พริก   ', '611', '40', '1');
INSERT INTO `district` VALUES ('5488', '520902', 'ผาปัง   ', '611', '40', '1');
INSERT INTO `district` VALUES ('5489', '520903', 'แม่ปุ   ', '611', '40', '1');
INSERT INTO `district` VALUES ('5490', '520904', 'พระบาทวังตวง   ', '611', '40', '1');
INSERT INTO `district` VALUES ('5491', '521001', 'แม่ทะ   ', '612', '40', '1');
INSERT INTO `district` VALUES ('5492', '521002', 'นาครัว   ', '612', '40', '1');
INSERT INTO `district` VALUES ('5493', '521003', 'ป่าตัน   ', '612', '40', '1');
INSERT INTO `district` VALUES ('5494', '521004', 'บ้านกิ่ว   ', '612', '40', '1');
INSERT INTO `district` VALUES ('5495', '521005', 'บ้านบอม   ', '612', '40', '1');
INSERT INTO `district` VALUES ('5496', '521006', 'น้ำโจ้   ', '612', '40', '1');
INSERT INTO `district` VALUES ('5497', '521007', 'ดอนไฟ   ', '612', '40', '1');
INSERT INTO `district` VALUES ('5498', '521008', 'หัวเสือ   ', '612', '40', '1');
INSERT INTO `district` VALUES ('5499', '521009', 'สบป้าด*   ', '612', '40', '1');
INSERT INTO `district` VALUES ('5500', '521010', 'วังเงิน   ', '612', '40', '1');
INSERT INTO `district` VALUES ('5501', '521011', 'สันดอนแก้ว   ', '612', '40', '1');
INSERT INTO `district` VALUES ('5502', '521101', 'สบปราบ   ', '613', '40', '1');
INSERT INTO `district` VALUES ('5503', '521102', 'สมัย   ', '613', '40', '1');
INSERT INTO `district` VALUES ('5504', '521103', 'แม่กัวะ   ', '613', '40', '1');
INSERT INTO `district` VALUES ('5505', '521104', 'นายาง   ', '613', '40', '1');
INSERT INTO `district` VALUES ('5506', '521201', 'ห้างฉัตร   ', '614', '40', '1');
INSERT INTO `district` VALUES ('5507', '521202', 'หนองหล่ม   ', '614', '40', '1');
INSERT INTO `district` VALUES ('5508', '521203', 'เมืองยาว   ', '614', '40', '1');
INSERT INTO `district` VALUES ('5509', '521204', 'ปงยางคก   ', '614', '40', '1');
INSERT INTO `district` VALUES ('5510', '521205', 'เวียงตาล   ', '614', '40', '1');
INSERT INTO `district` VALUES ('5511', '521206', 'แม่สัน   ', '614', '40', '1');
INSERT INTO `district` VALUES ('5512', '521207', 'วอแก้ว   ', '614', '40', '1');
INSERT INTO `district` VALUES ('5513', '521301', 'เมืองปาน   ', '615', '40', '1');
INSERT INTO `district` VALUES ('5514', '521302', 'บ้านขอ   ', '615', '40', '1');
INSERT INTO `district` VALUES ('5515', '521303', 'ทุ่งกว๋าว   ', '615', '40', '1');
INSERT INTO `district` VALUES ('5516', '521304', 'แจ้ซ้อน   ', '615', '40', '1');
INSERT INTO `district` VALUES ('5517', '521305', 'หัวเมือง   ', '615', '40', '1');
INSERT INTO `district` VALUES ('5518', '530101', 'ท่าอิฐ   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5519', '530102', 'ท่าเสา   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5520', '530103', 'บ้านเกาะ   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5521', '530104', 'ป่าเซ่า   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5522', '530105', 'คุ้งตะเภา   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5523', '530106', 'วังกะพี้   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5524', '530107', 'หาดกรวด   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5525', '530108', 'น้ำริด   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5526', '530109', 'งิ้วงาม   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5527', '530110', 'บ้านด่านนาขาม   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5528', '530111', 'บ้านด่าน   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5529', '530112', 'ผาจุก   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5530', '530113', 'วังดิน   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5531', '530114', 'แสนตอ   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5532', '530115', 'หาดงิ้ว   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5533', '530116', 'ขุนฝาง   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5534', '530117', 'ถ้ำฉลอง   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5535', '530199', '*ร่วมจิตร   ', '616', '41', '1');
INSERT INTO `district` VALUES ('5536', '530201', 'วังแดง   ', '617', '41', '1');
INSERT INTO `district` VALUES ('5537', '530202', 'บ้านแก่ง   ', '617', '41', '1');
INSERT INTO `district` VALUES ('5538', '530203', 'หาดสองแคว   ', '617', '41', '1');
INSERT INTO `district` VALUES ('5539', '530204', 'น้ำอ่าง   ', '617', '41', '1');
INSERT INTO `district` VALUES ('5540', '530205', 'ข่อยสูง   ', '617', '41', '1');
INSERT INTO `district` VALUES ('5541', '530296', '*น้ำพี้   ', '617', '41', '1');
INSERT INTO `district` VALUES ('5542', '530297', '*บ่อทอง   ', '617', '41', '1');
INSERT INTO `district` VALUES ('5543', '530298', '*ผักขวง   ', '617', '41', '1');
INSERT INTO `district` VALUES ('5544', '530299', '*ป่าคาย   ', '617', '41', '1');
INSERT INTO `district` VALUES ('5545', '530301', 'ท่าปลา   ', '618', '41', '1');
INSERT INTO `district` VALUES ('5546', '530302', 'หาดล้า   ', '618', '41', '1');
INSERT INTO `district` VALUES ('5547', '530303', 'ผาเลือด   ', '618', '41', '1');
INSERT INTO `district` VALUES ('5548', '530304', 'จริม   ', '618', '41', '1');
INSERT INTO `district` VALUES ('5549', '530305', 'น้ำหมัน   ', '618', '41', '1');
INSERT INTO `district` VALUES ('5550', '530306', 'ท่าแฝก   ', '618', '41', '1');
INSERT INTO `district` VALUES ('5551', '530307', 'นางพญา   ', '618', '41', '1');
INSERT INTO `district` VALUES ('5552', '530308', 'ร่วมจิต   ', '618', '41', '1');
INSERT INTO `district` VALUES ('5553', '530401', 'แสนตอ   ', '619', '41', '1');
INSERT INTO `district` VALUES ('5554', '530402', 'บ้านฝาย   ', '619', '41', '1');
INSERT INTO `district` VALUES ('5555', '530403', 'เด่นเหล็ก   ', '619', '41', '1');
INSERT INTO `district` VALUES ('5556', '530404', 'น้ำไคร้   ', '619', '41', '1');
INSERT INTO `district` VALUES ('5557', '530405', 'น้ำไผ่   ', '619', '41', '1');
INSERT INTO `district` VALUES ('5558', '530406', 'ห้วยมุ่น   ', '619', '41', '1');
INSERT INTO `district` VALUES ('5559', '530501', 'ฟากท่า   ', '620', '41', '1');
INSERT INTO `district` VALUES ('5560', '530502', 'สองคอน   ', '620', '41', '1');
INSERT INTO `district` VALUES ('5561', '530503', 'บ้านเสี้ยว   ', '620', '41', '1');
INSERT INTO `district` VALUES ('5562', '530504', 'สองห้อง   ', '620', '41', '1');
INSERT INTO `district` VALUES ('5563', '530601', 'ม่วงเจ็ดต้น   ', '621', '41', '1');
INSERT INTO `district` VALUES ('5564', '530602', 'บ้านโคก   ', '621', '41', '1');
INSERT INTO `district` VALUES ('5565', '530603', 'นาขุม   ', '621', '41', '1');
INSERT INTO `district` VALUES ('5566', '530604', 'บ่อเบี้ย   ', '621', '41', '1');
INSERT INTO `district` VALUES ('5567', '530701', 'ในเมือง   ', '622', '41', '1');
INSERT INTO `district` VALUES ('5568', '530702', 'บ้านดารา   ', '622', '41', '1');
INSERT INTO `district` VALUES ('5569', '530703', 'ไร่อ้อย   ', '622', '41', '1');
INSERT INTO `district` VALUES ('5570', '530704', 'ท่าสัก   ', '622', '41', '1');
INSERT INTO `district` VALUES ('5571', '530705', 'คอรุม   ', '622', '41', '1');
INSERT INTO `district` VALUES ('5572', '530706', 'บ้านหม้อ   ', '622', '41', '1');
INSERT INTO `district` VALUES ('5573', '530707', 'ท่ามะเฟือง   ', '622', '41', '1');
INSERT INTO `district` VALUES ('5574', '530708', 'บ้านโคน   ', '622', '41', '1');
INSERT INTO `district` VALUES ('5575', '530709', 'พญาแมน   ', '622', '41', '1');
INSERT INTO `district` VALUES ('5576', '530710', 'นาอิน   ', '622', '41', '1');
INSERT INTO `district` VALUES ('5577', '530711', 'นายาง   ', '622', '41', '1');
INSERT INTO `district` VALUES ('5578', '530801', 'ศรีพนมมาศ   ', '623', '41', '1');
INSERT INTO `district` VALUES ('5579', '530802', 'แม่พูล   ', '623', '41', '1');
INSERT INTO `district` VALUES ('5580', '530803', 'นานกกก   ', '623', '41', '1');
INSERT INTO `district` VALUES ('5581', '530804', 'ฝายหลวง   ', '623', '41', '1');
INSERT INTO `district` VALUES ('5582', '530805', 'ชัยจุมพล   ', '623', '41', '1');
INSERT INTO `district` VALUES ('5583', '530806', 'ไผ่ล้อม   ', '623', '41', '1');
INSERT INTO `district` VALUES ('5584', '530807', 'ทุ่งยั้ง   ', '623', '41', '1');
INSERT INTO `district` VALUES ('5585', '530808', 'ด่านแม่คำมัน   ', '623', '41', '1');
INSERT INTO `district` VALUES ('5586', '530899', '*ศรีพนมมาศ   ', '623', '41', '1');
INSERT INTO `district` VALUES ('5587', '530901', 'ผักขวง   ', '624', '41', '1');
INSERT INTO `district` VALUES ('5588', '530902', 'บ่อทอง   ', '624', '41', '1');
INSERT INTO `district` VALUES ('5589', '530903', 'ป่าคาย   ', '624', '41', '1');
INSERT INTO `district` VALUES ('5590', '530904', 'น้ำพี้   ', '624', '41', '1');
INSERT INTO `district` VALUES ('5591', '540101', 'ในเวียง   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5592', '540102', 'นาจักร   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5593', '540103', 'น้ำชำ   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5594', '540104', 'ป่าแดง   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5595', '540105', 'ทุ่งโฮ้ง   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5596', '540106', 'เหมืองหม้อ   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5597', '540107', 'วังธง   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5598', '540108', 'แม่หล่าย   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5599', '540109', 'ห้วยม้า   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5600', '540110', 'ป่าแมต   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5601', '540111', 'บ้านถิ่น   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5602', '540112', 'สวนเขื่อน   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5603', '540113', 'วังหงส์   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5604', '540114', 'แม่คำมี   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5605', '540115', 'ทุ่งกวาว   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5606', '540116', 'ท่าข้าม   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5607', '540117', 'แม่ยม   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5608', '540118', 'ช่อแฮ   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5609', '540119', 'ร่องฟอง   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5610', '540120', 'กาญจนา   ', '625', '42', '1');
INSERT INTO `district` VALUES ('5611', '540201', 'ร้องกวาง   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5612', '540202', '*หนองม่วงไข่   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5613', '540203', '*แม่คำมี   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5614', '540204', 'ร้องเข็ม   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5615', '540205', 'น้ำเลา   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5616', '540206', 'บ้านเวียง   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5617', '540207', 'ทุ่งศรี   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5618', '540208', 'แม่ยางตาล   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5619', '540209', 'แม่ยางฮ่อ   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5620', '540210', 'ไผ่โทน   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5621', '540211', '*น้ำรัด   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5622', '540212', '*วังหลวง   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5623', '540213', 'ห้วยโรง   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5624', '540214', 'แม่ทราย   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5625', '540215', 'แม่ยางร้อง   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5626', '540298', '*หนองม่วงไข่   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5627', '540299', '*แม่คำมี   ', '626', '42', '1');
INSERT INTO `district` VALUES ('5628', '540301', 'ห้วยอ้อ   ', '627', '42', '1');
INSERT INTO `district` VALUES ('5629', '540302', 'บ้านปิน   ', '627', '42', '1');
INSERT INTO `district` VALUES ('5630', '540303', 'ต้าผามอก   ', '627', '42', '1');
INSERT INTO `district` VALUES ('5631', '540304', 'เวียงต้า   ', '627', '42', '1');
INSERT INTO `district` VALUES ('5632', '540305', 'ปากกาง   ', '627', '42', '1');
INSERT INTO `district` VALUES ('5633', '540306', 'หัวทุ่ง   ', '627', '42', '1');
INSERT INTO `district` VALUES ('5634', '540307', 'ทุ่งแล้ง   ', '627', '42', '1');
INSERT INTO `district` VALUES ('5635', '540308', 'บ่อเหล็กลอง   ', '627', '42', '1');
INSERT INTO `district` VALUES ('5636', '540309', 'แม่ปาน   ', '627', '42', '1');
INSERT INTO `district` VALUES ('5637', '540401', 'สูงเม่น   ', '628', '42', '1');
INSERT INTO `district` VALUES ('5638', '540402', 'น้ำชำ   ', '628', '42', '1');
INSERT INTO `district` VALUES ('5639', '540403', 'หัวฝาย   ', '628', '42', '1');
INSERT INTO `district` VALUES ('5640', '540404', 'ดอนมูล   ', '628', '42', '1');
INSERT INTO `district` VALUES ('5641', '540405', 'บ้านเหล่า   ', '628', '42', '1');
INSERT INTO `district` VALUES ('5642', '540406', 'บ้านกวาง   ', '628', '42', '1');
INSERT INTO `district` VALUES ('5643', '540407', 'บ้านปง   ', '628', '42', '1');
INSERT INTO `district` VALUES ('5644', '540408', 'บ้านกาศ   ', '628', '42', '1');
INSERT INTO `district` VALUES ('5645', '540409', 'ร่องกาศ   ', '628', '42', '1');
INSERT INTO `district` VALUES ('5646', '540410', 'สบสาย   ', '628', '42', '1');
INSERT INTO `district` VALUES ('5647', '540411', 'เวียงทอง   ', '628', '42', '1');
INSERT INTO `district` VALUES ('5648', '540412', 'พระหลวง   ', '628', '42', '1');
INSERT INTO `district` VALUES ('5649', '540501', 'เด่นชัย   ', '629', '42', '1');
INSERT INTO `district` VALUES ('5650', '540502', 'แม่จั๊วะ   ', '629', '42', '1');
INSERT INTO `district` VALUES ('5651', '540503', 'ไทรย้อย   ', '629', '42', '1');
INSERT INTO `district` VALUES ('5652', '540504', 'ห้วยไร่   ', '629', '42', '1');
INSERT INTO `district` VALUES ('5653', '540505', 'ปงป่าหวาย   ', '629', '42', '1');
INSERT INTO `district` VALUES ('5654', '540601', 'บ้านหนุน   ', '630', '42', '1');
INSERT INTO `district` VALUES ('5655', '540602', 'บ้านกลาง   ', '630', '42', '1');
INSERT INTO `district` VALUES ('5656', '540603', 'ห้วยหม้าย   ', '630', '42', '1');
INSERT INTO `district` VALUES ('5657', '540604', 'เตาปูน   ', '630', '42', '1');
INSERT INTO `district` VALUES ('5658', '540605', 'หัวเมือง   ', '630', '42', '1');
INSERT INTO `district` VALUES ('5659', '540606', 'สะเอียบ   ', '630', '42', '1');
INSERT INTO `district` VALUES ('5660', '540607', 'แดนชุมพล   ', '630', '42', '1');
INSERT INTO `district` VALUES ('5661', '540608', 'ทุ่งน้าว   ', '630', '42', '1');
INSERT INTO `district` VALUES ('5662', '540701', 'วังชิ้น   ', '631', '42', '1');
INSERT INTO `district` VALUES ('5663', '540702', 'สรอย   ', '631', '42', '1');
INSERT INTO `district` VALUES ('5664', '540703', 'แม่ป้าก   ', '631', '42', '1');
INSERT INTO `district` VALUES ('5665', '540704', 'นาพูน   ', '631', '42', '1');
INSERT INTO `district` VALUES ('5666', '540705', 'แม่พุง   ', '631', '42', '1');
INSERT INTO `district` VALUES ('5667', '540706', 'ป่าสัก   ', '631', '42', '1');
INSERT INTO `district` VALUES ('5668', '540707', 'แม่เกิ๋ง   ', '631', '42', '1');
INSERT INTO `district` VALUES ('5669', '540801', 'แม่คำมี   ', '632', '42', '1');
INSERT INTO `district` VALUES ('5670', '540802', 'หนองม่วงไข่   ', '632', '42', '1');
INSERT INTO `district` VALUES ('5671', '540803', 'น้ำรัด   ', '632', '42', '1');
INSERT INTO `district` VALUES ('5672', '540804', 'วังหลวง   ', '632', '42', '1');
INSERT INTO `district` VALUES ('5673', '540805', 'ตำหนักธรรม   ', '632', '42', '1');
INSERT INTO `district` VALUES ('5674', '540806', 'ทุ่งแค้ว   ', '632', '42', '1');
INSERT INTO `district` VALUES ('5675', '550101', 'ในเวียง   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5676', '550102', 'บ่อ   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5677', '550103', 'ผาสิงห์   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5678', '550104', 'ไชยสถาน   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5679', '550105', 'ถืมตอง   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5680', '550106', 'เรือง   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5681', '550107', 'นาซาว   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5682', '550108', 'ดู่ใต้   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5683', '550109', 'กองควาย   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5684', '550110', 'ฝายแก้ว*   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5685', '550111', 'ม่วงตึ๊ด*   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5686', '550112', 'ท่าน้าว*   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5687', '550113', 'นาปัง*   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5688', '550114', 'เมืองจัง*   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5689', '550115', 'น้ำแก่น*   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5690', '550116', 'สวก   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5691', '550117', 'สะเนียน   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5692', '550118', 'น้ำเกี๋ยน*   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5693', '550196', '*ป่าคาหลวง   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5694', '550197', '*หมอเมือง   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5695', '550198', '*บ้านฟ้า   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5696', '550199', '*ดู่พงษ์   ', '633', '43', '1');
INSERT INTO `district` VALUES ('5697', '550201', '*พงษ์   ', '634', '43', '1');
INSERT INTO `district` VALUES ('5698', '550202', 'หนองแดง   ', '634', '43', '1');
INSERT INTO `district` VALUES ('5699', '550203', 'หมอเมือง   ', '634', '43', '1');
INSERT INTO `district` VALUES ('5700', '550204', 'น้ำพาง   ', '634', '43', '1');
INSERT INTO `district` VALUES ('5701', '550205', 'น้ำปาย   ', '634', '43', '1');
INSERT INTO `district` VALUES ('5702', '550206', 'แม่จริม   ', '634', '43', '1');
INSERT INTO `district` VALUES ('5703', '550301', 'บ้านฟ้า   ', '635', '43', '1');
INSERT INTO `district` VALUES ('5704', '550302', 'ป่าคาหลวง   ', '635', '43', '1');
INSERT INTO `district` VALUES ('5705', '550303', 'สวด   ', '635', '43', '1');
INSERT INTO `district` VALUES ('5706', '550304', 'บ้านพี้   ', '635', '43', '1');
INSERT INTO `district` VALUES ('5707', '550401', 'นาน้อย   ', '636', '43', '1');
INSERT INTO `district` VALUES ('5708', '550402', 'เชียงของ   ', '636', '43', '1');
INSERT INTO `district` VALUES ('5709', '550403', 'ศรีษะเกษ   ', '636', '43', '1');
INSERT INTO `district` VALUES ('5710', '550404', 'สถาน   ', '636', '43', '1');
INSERT INTO `district` VALUES ('5711', '550405', 'สันทะ   ', '636', '43', '1');
INSERT INTO `district` VALUES ('5712', '550406', 'บัวใหญ่   ', '636', '43', '1');
INSERT INTO `district` VALUES ('5713', '550407', 'น้ำตก   ', '636', '43', '1');
INSERT INTO `district` VALUES ('5714', '550501', 'ปัว   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5715', '550502', 'แงง   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5716', '550503', 'สถาน   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5717', '550504', 'ศิลาแลง   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5718', '550505', 'ศิลาเพชร   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5719', '550506', 'อวน   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5720', '550507', '*บ่อเกลือเหนือ   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5721', '550508', '*บ่อเกลือใต้   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5722', '550509', 'ไชยวัฒนา   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5723', '550510', 'เจดีย์ชัย   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5724', '550511', 'ภูคา   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5725', '550512', 'สกาด   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5726', '550513', 'ป่ากลาง   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5727', '550514', 'วรนคร   ', '637', '43', '1');
INSERT INTO `district` VALUES ('5728', '550601', 'ริม   ', '638', '43', '1');
INSERT INTO `district` VALUES ('5729', '550602', 'ป่าคา   ', '638', '43', '1');
INSERT INTO `district` VALUES ('5730', '550603', 'ผาตอ   ', '638', '43', '1');
INSERT INTO `district` VALUES ('5731', '550604', 'ยม   ', '638', '43', '1');
INSERT INTO `district` VALUES ('5732', '550605', 'ตาลชุม   ', '638', '43', '1');
INSERT INTO `district` VALUES ('5733', '550606', 'ศรีภูมิ   ', '638', '43', '1');
INSERT INTO `district` VALUES ('5734', '550607', 'จอมพระ   ', '638', '43', '1');
INSERT INTO `district` VALUES ('5735', '550608', 'แสนทอง   ', '638', '43', '1');
INSERT INTO `district` VALUES ('5736', '550609', 'ท่าวังผา   ', '638', '43', '1');
INSERT INTO `district` VALUES ('5737', '550610', 'ผาทอง   ', '638', '43', '1');
INSERT INTO `district` VALUES ('5738', '550701', 'กลางเวียง   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5739', '550702', 'ขึ่ง   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5740', '550703', 'ไหล่น่าน   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5741', '550704', 'ตาลชุม   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5742', '550705', 'นาเหลือง   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5743', '550706', 'ส้าน   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5744', '550707', 'น้ำมวบ   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5745', '550708', 'น้ำปั้ว   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5746', '550709', 'ยาบหัวนา   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5747', '550710', 'ปงสนุก   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5748', '550711', 'อ่ายนาไลย   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5749', '550712', 'ส้านนาหนองใหม่   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5750', '550713', 'แม่ขะนิง   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5751', '550714', 'แม่สาคร   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5752', '550715', 'จอมจันทร์   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5753', '550716', 'แม่สา   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5754', '550717', 'ทุ่งศรีทอง   ', '639', '43', '1');
INSERT INTO `district` VALUES ('5755', '550801', 'ปอน   ', '640', '43', '1');
INSERT INTO `district` VALUES ('5756', '550802', 'งอบ   ', '640', '43', '1');
INSERT INTO `district` VALUES ('5757', '550803', 'และ   ', '640', '43', '1');
INSERT INTO `district` VALUES ('5758', '550804', 'ทุ่งช้าง   ', '640', '43', '1');
INSERT INTO `district` VALUES ('5759', '550805', 'ห้วยโก๋น*   ', '640', '43', '1');
INSERT INTO `district` VALUES ('5760', '550898', '*เปือ   ', '640', '43', '1');
INSERT INTO `district` VALUES ('5761', '550899', '*เชียงกลาง   ', '640', '43', '1');
INSERT INTO `district` VALUES ('5762', '550901', 'เชียงกลาง   ', '641', '43', '1');
INSERT INTO `district` VALUES ('5763', '550902', 'เปือ   ', '641', '43', '1');
INSERT INTO `district` VALUES ('5764', '550903', 'เชียงคาน   ', '641', '43', '1');
INSERT INTO `district` VALUES ('5765', '550904', 'พระธาตุ   ', '641', '43', '1');
INSERT INTO `district` VALUES ('5766', '550905', '*นนาไร่หลวง   ', '641', '43', '1');
INSERT INTO `district` VALUES ('5767', '550906', '*ชชนแดน   ', '641', '43', '1');
INSERT INTO `district` VALUES ('5768', '550907', '*ยยอด   ', '641', '43', '1');
INSERT INTO `district` VALUES ('5769', '550908', 'พญาแก้ว   ', '641', '43', '1');
INSERT INTO `district` VALUES ('5770', '550909', 'พระพุทธบาท   ', '641', '43', '1');
INSERT INTO `district` VALUES ('5771', '550998', '*นาไร่หลวง   ', '641', '43', '1');
INSERT INTO `district` VALUES ('5772', '550999', '*ยอด   ', '641', '43', '1');
INSERT INTO `district` VALUES ('5773', '551001', 'นาทะนุง   ', '642', '43', '1');
INSERT INTO `district` VALUES ('5774', '551002', 'บ่อแก้ว   ', '642', '43', '1');
INSERT INTO `district` VALUES ('5775', '551003', 'เมืองลี   ', '642', '43', '1');
INSERT INTO `district` VALUES ('5776', '551004', 'ปิงหลวง   ', '642', '43', '1');
INSERT INTO `district` VALUES ('5777', '551101', 'ดู่พงษ์   ', '643', '43', '1');
INSERT INTO `district` VALUES ('5778', '551102', 'ป่าแลวหลวง   ', '643', '43', '1');
INSERT INTO `district` VALUES ('5779', '551103', 'พงษ์   ', '643', '43', '1');
INSERT INTO `district` VALUES ('5780', '551201', 'บ่อเกลือเหนือ   ', '644', '43', '1');
INSERT INTO `district` VALUES ('5781', '551202', 'บ่อเกลือใต้   ', '644', '43', '1');
INSERT INTO `district` VALUES ('5782', '551203', 'ขุนน่าน*   ', '644', '43', '1');
INSERT INTO `district` VALUES ('5783', '551204', 'ภูฟ้า   ', '644', '43', '1');
INSERT INTO `district` VALUES ('5784', '551205', 'ดงพญา   ', '644', '43', '1');
INSERT INTO `district` VALUES ('5785', '551301', 'นาไร่หลวง   ', '645', '43', '1');
INSERT INTO `district` VALUES ('5786', '551302', 'ชนแดน   ', '645', '43', '1');
INSERT INTO `district` VALUES ('5787', '551303', 'ยอด   ', '645', '43', '1');
INSERT INTO `district` VALUES ('5788', '551401', 'ม่วงตึ๊ด   ', '646', '43', '1');
INSERT INTO `district` VALUES ('5789', '551402', 'นาปัง   ', '646', '43', '1');
INSERT INTO `district` VALUES ('5790', '551403', 'น้ำแก่น   ', '646', '43', '1');
INSERT INTO `district` VALUES ('5791', '551404', 'น้ำเกี๋ยน   ', '646', '43', '1');
INSERT INTO `district` VALUES ('5792', '551405', 'เมืองจัง   ', '646', '43', '1');
INSERT INTO `district` VALUES ('5793', '551406', 'ท่าน้าว   ', '646', '43', '1');
INSERT INTO `district` VALUES ('5794', '551407', 'ฝายแก้ว   ', '646', '43', '1');
INSERT INTO `district` VALUES ('5795', '551501', 'ห้วยโก๋น   ', '647', '43', '1');
INSERT INTO `district` VALUES ('5796', '551502', 'ขุนน่าน   ', '647', '43', '1');
INSERT INTO `district` VALUES ('5797', '560101', 'เวียง   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5798', '560102', 'แม่ต๋ำ   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5799', '560103', 'ดงเจน*   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5800', '560104', 'แม่นาเรือ   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5801', '560105', 'บ้านตุ่น   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5802', '560106', 'บ้านต๊ำ   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5803', '560107', 'บ้านต๋อม   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5804', '560108', 'แม่ปืม   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5805', '560109', 'ห้วยแก้ว*   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5806', '560110', 'แม่กา   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5807', '560111', 'บ้านใหม่   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5808', '560112', 'จำป่าหวาย   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5809', '560113', 'ท่าวังทอง   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5810', '560114', 'แม่ใส   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5811', '560115', 'บ้านสาง   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5812', '560116', 'ท่าจำปี   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5813', '560117', 'แม่อิง*   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5814', '560118', 'สันป่าม่วง   ', '648', '44', '1');
INSERT INTO `district` VALUES ('5815', '560201', 'ห้วยข้าวก่ำ   ', '649', '44', '1');
INSERT INTO `district` VALUES ('5816', '560202', 'จุน   ', '649', '44', '1');
INSERT INTO `district` VALUES ('5817', '560203', 'ลอ   ', '649', '44', '1');
INSERT INTO `district` VALUES ('5818', '560204', 'หงส์หิน   ', '649', '44', '1');
INSERT INTO `district` VALUES ('5819', '560205', 'ทุ่งรวงทอง   ', '649', '44', '1');
INSERT INTO `district` VALUES ('5820', '560206', 'ห้วยยางขาม   ', '649', '44', '1');
INSERT INTO `district` VALUES ('5821', '560207', 'พระธาตุขิงแกง   ', '649', '44', '1');
INSERT INTO `district` VALUES ('5822', '560301', 'หย่วน   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5823', '560302', 'ทุ่งกล้วย*   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5824', '560303', 'สบบง*   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5825', '560304', 'เชียงแรง*   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5826', '560305', 'ภูซาง*   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5827', '560306', 'น้ำแวน   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5828', '560307', 'เวียง   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5829', '560308', 'ฝายกวาง   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5830', '560309', 'เจดีย์คำ   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5831', '560310', 'ร่มเย็น   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5832', '560311', 'เชียงบาน   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5833', '560312', 'แม่ลาว   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5834', '560313', 'อ่างทอง   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5835', '560314', 'ทุ่งผาสุข   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5836', '560315', 'ป่าสัก*   ', '650', '44', '1');
INSERT INTO `district` VALUES ('5837', '560401', 'เชียงม่วน   ', '651', '44', '1');
INSERT INTO `district` VALUES ('5838', '560402', 'บ้านมาง   ', '651', '44', '1');
INSERT INTO `district` VALUES ('5839', '560403', 'สระ   ', '651', '44', '1');
INSERT INTO `district` VALUES ('5840', '560501', 'ดอกคำใต้   ', '652', '44', '1');
INSERT INTO `district` VALUES ('5841', '560502', 'ดอนศรีชุม   ', '652', '44', '1');
INSERT INTO `district` VALUES ('5842', '560503', 'บ้านถ้ำ   ', '652', '44', '1');
INSERT INTO `district` VALUES ('5843', '560504', 'บ้านปิน   ', '652', '44', '1');
INSERT INTO `district` VALUES ('5844', '560505', 'ห้วยลาน   ', '652', '44', '1');
INSERT INTO `district` VALUES ('5845', '560506', 'สันโค้ง   ', '652', '44', '1');
INSERT INTO `district` VALUES ('5846', '560507', 'ป่าซาง   ', '652', '44', '1');
INSERT INTO `district` VALUES ('5847', '560508', 'หนองหล่ม   ', '652', '44', '1');
INSERT INTO `district` VALUES ('5848', '560509', 'ดงสุวรรณ   ', '652', '44', '1');
INSERT INTO `district` VALUES ('5849', '560510', 'บุญเกิด   ', '652', '44', '1');
INSERT INTO `district` VALUES ('5850', '560511', 'สว่างอารมณ์   ', '652', '44', '1');
INSERT INTO `district` VALUES ('5851', '560512', 'คือเวียง   ', '652', '44', '1');
INSERT INTO `district` VALUES ('5852', '560601', 'ปง   ', '653', '44', '1');
INSERT INTO `district` VALUES ('5853', '560602', 'ควร   ', '653', '44', '1');
INSERT INTO `district` VALUES ('5854', '560603', 'ออย   ', '653', '44', '1');
INSERT INTO `district` VALUES ('5855', '560604', 'งิม   ', '653', '44', '1');
INSERT INTO `district` VALUES ('5856', '560605', 'ผาช้างน้อย   ', '653', '44', '1');
INSERT INTO `district` VALUES ('5857', '560606', 'นาปรัง   ', '653', '44', '1');
INSERT INTO `district` VALUES ('5858', '560607', 'ขุนควร   ', '653', '44', '1');
INSERT INTO `district` VALUES ('5859', '560701', 'แม่ใจ   ', '654', '44', '1');
INSERT INTO `district` VALUES ('5860', '560702', 'ศรีถ้อย   ', '654', '44', '1');
INSERT INTO `district` VALUES ('5861', '560703', 'แม่สุก   ', '654', '44', '1');
INSERT INTO `district` VALUES ('5862', '560704', 'ป่าแฝก   ', '654', '44', '1');
INSERT INTO `district` VALUES ('5863', '560705', 'บ้านเหล่า   ', '654', '44', '1');
INSERT INTO `district` VALUES ('5864', '560706', 'เจริญราษฎร์   ', '654', '44', '1');
INSERT INTO `district` VALUES ('5865', '560801', 'ภูซาง   ', '655', '44', '1');
INSERT INTO `district` VALUES ('5866', '560802', 'ป่าสัก   ', '655', '44', '1');
INSERT INTO `district` VALUES ('5867', '560803', 'ทุ่งกล้วย   ', '655', '44', '1');
INSERT INTO `district` VALUES ('5868', '560804', 'เชียงแรง   ', '655', '44', '1');
INSERT INTO `district` VALUES ('5869', '560805', 'สบบง   ', '655', '44', '1');
INSERT INTO `district` VALUES ('5870', '560901', 'ห้วยแก้ว   ', '656', '44', '1');
INSERT INTO `district` VALUES ('5871', '560902', 'ดงเจน   ', '656', '44', '1');
INSERT INTO `district` VALUES ('5872', '560903', 'แม่อิง   ', '656', '44', '1');
INSERT INTO `district` VALUES ('5873', '570101', 'เวียง   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5874', '570102', 'รอบเวียง   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5875', '570103', 'บ้านดู่   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5876', '570104', 'นางแล   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5877', '570105', 'แม่ข้าวต้ม   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5878', '570106', 'แม่ยาว   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5879', '570107', 'สันทราย   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5880', '570108', '*บัวสลี   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5881', '570109', '*ดงมะดะ   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5882', '570110', '*ป่าก่อดำ   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5883', '570111', 'แม่กรณ์   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5884', '570112', 'ห้วยชมภู   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5885', '570113', 'ห้วยสัก   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5886', '570114', 'ริมกก   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5887', '570115', 'ดอยลาน   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5888', '570116', 'ป่าอ้อดอนชัย   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5889', '570117', '*จอมหมอกแก้ว   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5890', '570118', 'ท่าสาย   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5891', '570119', '*โป่งแพร่   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5892', '570120', 'ดอยฮาง   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5893', '570121', 'ท่าสุด   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5894', '570192', '*ทุ่งก่อ   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5895', '570193', '*ป่าก่อดำ   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5896', '570194', '*ดงมะดะ   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5897', '570195', '*บัวสลี   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5898', '570196', '*เวียงเหนือ   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5899', '570197', '*ผางาม   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5900', '570198', '*เวียงชัย   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5901', '570199', '*ทุ่งก่อ   ', '657', '45', '1');
INSERT INTO `district` VALUES ('5902', '570201', '*ทุ่งก่อ   ', '658', '45', '1');
INSERT INTO `district` VALUES ('5903', '570202', 'เวียงชัย   ', '658', '45', '1');
INSERT INTO `district` VALUES ('5904', '570203', 'ผางาม   ', '658', '45', '1');
INSERT INTO `district` VALUES ('5905', '570204', 'เวียงเหนือ   ', '658', '45', '1');
INSERT INTO `district` VALUES ('5906', '570205', '*ป่าซาง   ', '658', '45', '1');
INSERT INTO `district` VALUES ('5907', '570206', 'ดอนศิลา   ', '658', '45', '1');
INSERT INTO `district` VALUES ('5908', '570207', '*ดงมหาวัน   ', '658', '45', '1');
INSERT INTO `district` VALUES ('5909', '570208', 'เมืองชุม   ', '658', '45', '1');
INSERT INTO `district` VALUES ('5910', '570301', 'เวียง   ', '659', '45', '1');
INSERT INTO `district` VALUES ('5911', '570302', 'สถาน   ', '659', '45', '1');
INSERT INTO `district` VALUES ('5912', '570303', 'ครึ่ง   ', '659', '45', '1');
INSERT INTO `district` VALUES ('5913', '570304', 'บุญเรือง   ', '659', '45', '1');
INSERT INTO `district` VALUES ('5914', '570305', 'ห้วยซ้อ   ', '659', '45', '1');
INSERT INTO `district` VALUES ('5915', '570306', '*ม่วงยาย   ', '659', '45', '1');
INSERT INTO `district` VALUES ('5916', '570307', '*ปอ   ', '659', '45', '1');
INSERT INTO `district` VALUES ('5917', '570308', 'ศรีดอนชัย   ', '659', '45', '1');
INSERT INTO `district` VALUES ('5918', '570309', '*หล่ายงาว   ', '659', '45', '1');
INSERT INTO `district` VALUES ('5919', '570310', 'ริมโขง   ', '659', '45', '1');
INSERT INTO `district` VALUES ('5920', '570398', '*ปอ   ', '659', '45', '1');
INSERT INTO `district` VALUES ('5921', '570399', '*ม่วงยาย   ', '659', '45', '1');
INSERT INTO `district` VALUES ('5922', '570401', 'เวียง   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5923', '570402', 'งิ้ว   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5924', '570403', 'ปล้อง   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5925', '570404', 'แม่ลอย   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5926', '570405', 'เชียงเคี่ยน   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5927', '570406', '*ตต้า   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5928', '570407', '*ปป่าตาล   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5929', '570408', '*ยยางฮอม   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5930', '570409', 'ตับเต่า   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5931', '570410', 'หงาว   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5932', '570411', 'สันทรายงาม   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5933', '570412', 'ศรีดอนไชย   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5934', '570413', 'หนองแรด   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5935', '570495', '*แม่ลอย   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5936', '570496', '*ต้า   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5937', '570497', 'ยางฮอม*   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5938', '570498', '*แม่เปา   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5939', '570499', '*ป่าตาล   ', '660', '45', '1');
INSERT INTO `district` VALUES ('5940', '570501', 'สันมะเค็ด   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5941', '570502', 'แม่อ้อ   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5942', '570503', 'ธารทอง   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5943', '570504', 'สันติสุข   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5944', '570505', 'ดอยงาม   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5945', '570506', 'หัวง้ม   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5946', '570507', 'เจริญเมือง   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5947', '570508', 'ป่าหุ่ง   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5948', '570509', 'ม่วงคำ   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5949', '570510', 'ทรายขาว   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5950', '570511', 'สันกลาง   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5951', '570512', 'แม่เย็น   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5952', '570513', 'เมืองพาน   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5953', '570514', 'ทานตะวัน   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5954', '570515', 'เวียงห้าว   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5955', '570597', '*ป่าแงะ   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5956', '570598', '*สันมะค่า   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5957', '570599', '*ป่าแดด   ', '661', '45', '1');
INSERT INTO `district` VALUES ('5958', '570601', 'ป่าแดด   ', '662', '45', '1');
INSERT INTO `district` VALUES ('5959', '570602', 'ป่าแงะ   ', '662', '45', '1');
INSERT INTO `district` VALUES ('5960', '570603', 'สันมะค่า   ', '662', '45', '1');
INSERT INTO `district` VALUES ('5961', '570605', 'โรงช้าง   ', '662', '45', '1');
INSERT INTO `district` VALUES ('5962', '570606', 'ศรีโพธิ์เงิน   ', '662', '45', '1');
INSERT INTO `district` VALUES ('5963', '570701', 'แม่จัน   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5964', '570702', 'จันจว้า   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5965', '570703', 'แม่คำ   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5966', '570704', 'ป่าซาง   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5967', '570705', 'สันทราย   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5968', '570706', 'ท่าข้าวเปลือก   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5969', '570707', 'ปงน้อย*   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5970', '570708', 'ป่าตึง   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5971', '570709', 'หนองป่าก่อ*   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5972', '570710', 'แม่ไร่   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5973', '570711', 'ศรีค้ำ   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5974', '570712', 'จันจว้าใต้   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5975', '570713', 'จอมสวรรค์   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5976', '570714', '*เเทอดไทย   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5977', '570715', '*แแม่สลองใน   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5978', '570716', '*แม่สลองนอก   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5979', '570717', 'โชคชัย*   ', '663', '45', '1');
INSERT INTO `district` VALUES ('5980', '570801', 'เวียง   ', '664', '45', '1');
INSERT INTO `district` VALUES ('5981', '570802', 'ป่าสัก   ', '664', '45', '1');
INSERT INTO `district` VALUES ('5982', '570803', 'บ้านแซว   ', '664', '45', '1');
INSERT INTO `district` VALUES ('5983', '570804', 'ศรีดอนมูล   ', '664', '45', '1');
INSERT INTO `district` VALUES ('5984', '570805', 'แม่เงิน   ', '664', '45', '1');
INSERT INTO `district` VALUES ('5985', '570806', 'โยนก   ', '664', '45', '1');
INSERT INTO `district` VALUES ('5986', '570901', 'แม่สาย   ', '665', '45', '1');
INSERT INTO `district` VALUES ('5987', '570902', 'ห้วยไคร้   ', '665', '45', '1');
INSERT INTO `district` VALUES ('5988', '570903', 'เกาะช้าง   ', '665', '45', '1');
INSERT INTO `district` VALUES ('5989', '570904', 'โป่งผา   ', '665', '45', '1');
INSERT INTO `district` VALUES ('5990', '570905', 'ศรีเมืองชุม   ', '665', '45', '1');
INSERT INTO `district` VALUES ('5991', '570906', 'เวียงพางคำ   ', '665', '45', '1');
INSERT INTO `district` VALUES ('5992', '570908', 'บ้านด้าย   ', '665', '45', '1');
INSERT INTO `district` VALUES ('5993', '570909', 'โป่งงาม   ', '665', '45', '1');
INSERT INTO `district` VALUES ('5994', '571001', 'แม่สรวย   ', '666', '45', '1');
INSERT INTO `district` VALUES ('5995', '571002', 'ป่าแดด   ', '666', '45', '1');
INSERT INTO `district` VALUES ('5996', '571003', 'แม่พริก   ', '666', '45', '1');
INSERT INTO `district` VALUES ('5997', '571004', 'ศรีถ้อย   ', '666', '45', '1');
INSERT INTO `district` VALUES ('5998', '571005', 'ท่าก๊อ   ', '666', '45', '1');
INSERT INTO `district` VALUES ('5999', '571006', 'วาวี   ', '666', '45', '1');
INSERT INTO `district` VALUES ('6000', '571007', 'เจดีย์หลวง   ', '666', '45', '1');
INSERT INTO `district` VALUES ('6001', '571101', 'สันสลี   ', '667', '45', '1');
INSERT INTO `district` VALUES ('6002', '571102', 'เวียง   ', '667', '45', '1');
INSERT INTO `district` VALUES ('6003', '571103', 'บ้านโป่ง   ', '667', '45', '1');
INSERT INTO `district` VALUES ('6004', '571104', 'ป่างิ้ว   ', '667', '45', '1');
INSERT INTO `district` VALUES ('6005', '571105', 'เวียงกาหลง   ', '667', '45', '1');
INSERT INTO `district` VALUES ('6006', '571106', 'แม่เจดีย์   ', '667', '45', '1');
INSERT INTO `district` VALUES ('6007', '571107', 'แม่เจดีย์ใหม่   ', '667', '45', '1');
INSERT INTO `district` VALUES ('6008', '571108', 'เวียงกาหลง*   ', '667', '45', '1');
INSERT INTO `district` VALUES ('6009', '571201', 'แม่เปา   ', '668', '45', '1');
INSERT INTO `district` VALUES ('6010', '571202', 'แม่ต๋ำ   ', '668', '45', '1');
INSERT INTO `district` VALUES ('6011', '571203', 'ไม้ยา   ', '668', '45', '1');
INSERT INTO `district` VALUES ('6012', '571204', 'เม็งราย   ', '668', '45', '1');
INSERT INTO `district` VALUES ('6013', '571205', 'ตาดควัน   ', '668', '45', '1');
INSERT INTO `district` VALUES ('6014', '571301', 'ม่วงยาย   ', '669', '45', '1');
INSERT INTO `district` VALUES ('6015', '571302', 'ปอ   ', '669', '45', '1');
INSERT INTO `district` VALUES ('6016', '571303', 'หล่ายงาว   ', '669', '45', '1');
INSERT INTO `district` VALUES ('6017', '571304', 'ท่าข้าม   ', '669', '45', '1');
INSERT INTO `district` VALUES ('6018', '571401', 'ต้า   ', '670', '45', '1');
INSERT INTO `district` VALUES ('6019', '571402', 'ป่าตาล   ', '670', '45', '1');
INSERT INTO `district` VALUES ('6020', '571403', 'ยางฮอม   ', '670', '45', '1');
INSERT INTO `district` VALUES ('6021', '571501', 'เทอดไทย   ', '671', '45', '1');
INSERT INTO `district` VALUES ('6022', '571502', 'แม่สลองใน   ', '671', '45', '1');
INSERT INTO `district` VALUES ('6023', '571503', 'แม่สลองนอก   ', '671', '45', '1');
INSERT INTO `district` VALUES ('6024', '571504', 'แม่ฟ้าหลวง   ', '671', '45', '1');
INSERT INTO `district` VALUES ('6025', '571601', 'ดงมะดะ   ', '672', '45', '1');
INSERT INTO `district` VALUES ('6026', '571602', 'จอมหมอกแก้ว   ', '672', '45', '1');
INSERT INTO `district` VALUES ('6027', '571603', 'บัวสลี   ', '672', '45', '1');
INSERT INTO `district` VALUES ('6028', '571604', 'ป่าก่อดำ   ', '672', '45', '1');
INSERT INTO `district` VALUES ('6029', '571605', 'โป่งแพร่   ', '672', '45', '1');
INSERT INTO `district` VALUES ('6030', '571701', 'ทุ่งก่อ   ', '673', '45', '1');
INSERT INTO `district` VALUES ('6031', '571702', 'ดงมหาวัน   ', '673', '45', '1');
INSERT INTO `district` VALUES ('6032', '571703', 'ป่าซาง   ', '673', '45', '1');
INSERT INTO `district` VALUES ('6033', '571801', 'ปงน้อย   ', '674', '45', '1');
INSERT INTO `district` VALUES ('6034', '571802', 'โชคชัย   ', '674', '45', '1');
INSERT INTO `district` VALUES ('6035', '571803', 'หนองป่าก่อ   ', '674', '45', '1');
INSERT INTO `district` VALUES ('6036', '580101', 'จองคำ   ', '675', '46', '1');
INSERT INTO `district` VALUES ('6037', '580102', 'ห้วยโป่ง   ', '675', '46', '1');
INSERT INTO `district` VALUES ('6038', '580103', 'ผาบ่อง   ', '675', '46', '1');
INSERT INTO `district` VALUES ('6039', '580104', 'ปางหมู   ', '675', '46', '1');
INSERT INTO `district` VALUES ('6040', '580105', 'หมอกจำแป่   ', '675', '46', '1');
INSERT INTO `district` VALUES ('6041', '580106', 'ห้วยผา   ', '675', '46', '1');
INSERT INTO `district` VALUES ('6042', '580107', '*ปางมะผ้า   ', '675', '46', '1');
INSERT INTO `district` VALUES ('6043', '580108', '*สบป่อง   ', '675', '46', '1');
INSERT INTO `district` VALUES ('6044', '580109', 'ห้วยปูลิง   ', '675', '46', '1');
INSERT INTO `district` VALUES ('6045', '580201', 'ขุนยวม   ', '676', '46', '1');
INSERT INTO `district` VALUES ('6046', '580202', 'แม่เงา   ', '676', '46', '1');
INSERT INTO `district` VALUES ('6047', '580203', 'เมืองปอน   ', '676', '46', '1');
INSERT INTO `district` VALUES ('6048', '580204', 'แม่ยวมน้อย   ', '676', '46', '1');
INSERT INTO `district` VALUES ('6049', '580205', 'แม่กิ๊   ', '676', '46', '1');
INSERT INTO `district` VALUES ('6050', '580206', 'แม่อูคอ   ', '676', '46', '1');
INSERT INTO `district` VALUES ('6051', '580301', 'เวียงใต้   ', '677', '46', '1');
INSERT INTO `district` VALUES ('6052', '580302', 'เวียงเหนือ   ', '677', '46', '1');
INSERT INTO `district` VALUES ('6053', '580303', 'แม่นาเติง   ', '677', '46', '1');
INSERT INTO `district` VALUES ('6054', '580304', 'แม่ฮี้   ', '677', '46', '1');
INSERT INTO `district` VALUES ('6055', '580305', 'ทุ่งยาว   ', '677', '46', '1');
INSERT INTO `district` VALUES ('6056', '580306', 'เมืองแปง   ', '677', '46', '1');
INSERT INTO `district` VALUES ('6057', '580307', 'โป่งสา   ', '677', '46', '1');
INSERT INTO `district` VALUES ('6058', '580401', 'บ้านกาศ   ', '678', '46', '1');
INSERT INTO `district` VALUES ('6059', '580402', 'แม่สะเรียง   ', '678', '46', '1');
INSERT INTO `district` VALUES ('6060', '580403', 'แม่คง   ', '678', '46', '1');
INSERT INTO `district` VALUES ('6061', '580404', 'แม่เหาะ   ', '678', '46', '1');
INSERT INTO `district` VALUES ('6062', '580405', 'แม่ยวม   ', '678', '46', '1');
INSERT INTO `district` VALUES ('6063', '580406', 'เสาหิน   ', '678', '46', '1');
INSERT INTO `district` VALUES ('6064', '580408', 'ป่าแป๋   ', '678', '46', '1');
INSERT INTO `district` VALUES ('6065', '580497', '*กองกอย   ', '678', '46', '1');
INSERT INTO `district` VALUES ('6066', '580498', '*แม่คะตวน   ', '678', '46', '1');
INSERT INTO `district` VALUES ('6067', '580499', '*สบเมย   ', '678', '46', '1');
INSERT INTO `district` VALUES ('6068', '580501', 'แม่ลาน้อย   ', '679', '46', '1');
INSERT INTO `district` VALUES ('6069', '580502', 'แม่ลาหลวง   ', '679', '46', '1');
INSERT INTO `district` VALUES ('6070', '580503', 'ท่าผาปุ้ม   ', '679', '46', '1');
INSERT INTO `district` VALUES ('6071', '580504', 'แม่โถ   ', '679', '46', '1');
INSERT INTO `district` VALUES ('6072', '580505', 'ห้วยห้อม   ', '679', '46', '1');
INSERT INTO `district` VALUES ('6073', '580506', 'แม่นาจาง   ', '679', '46', '1');
INSERT INTO `district` VALUES ('6074', '580507', 'สันติคีรี   ', '679', '46', '1');
INSERT INTO `district` VALUES ('6075', '580508', 'ขุนแม่ลาน้อย   ', '679', '46', '1');
INSERT INTO `district` VALUES ('6076', '580601', 'สบเมย   ', '680', '46', '1');
INSERT INTO `district` VALUES ('6077', '580602', 'แม่คะตวน   ', '680', '46', '1');
INSERT INTO `district` VALUES ('6078', '580603', 'กองก๋อย   ', '680', '46', '1');
INSERT INTO `district` VALUES ('6079', '580604', 'แม่สวด   ', '680', '46', '1');
INSERT INTO `district` VALUES ('6080', '580605', 'ป่าโปง   ', '680', '46', '1');
INSERT INTO `district` VALUES ('6081', '580606', 'แม่สามแลบ   ', '680', '46', '1');
INSERT INTO `district` VALUES ('6082', '580701', 'สบป่อง   ', '681', '46', '1');
INSERT INTO `district` VALUES ('6083', '580702', 'ปางมะผ้า   ', '681', '46', '1');
INSERT INTO `district` VALUES ('6084', '580703', 'ถ้ำลอด   ', '681', '46', '1');
INSERT INTO `district` VALUES ('6085', '580704', 'นาปู่ป้อม   ', '681', '46', '1');
INSERT INTO `district` VALUES ('6086', '600101', 'ปากน้ำโพ   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6087', '600102', 'กลางแดด   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6088', '600103', 'เกรียงไกร   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6089', '600104', 'แควใหญ่   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6090', '600105', 'ตะเคียนเลื่อน   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6091', '600106', 'นครสวรรค์ตก   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6092', '600107', 'นครสวรรค์ออก   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6093', '600108', 'บางพระหลวง   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6094', '600109', 'บางม่วง   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6095', '600110', 'บ้านมะเกลือ   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6096', '600111', 'บ้านแก่ง   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6097', '600112', 'พระนอน   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6098', '600113', 'วัดไทร   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6099', '600114', 'หนองกรด   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6100', '600115', 'หนองกระโดน   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6101', '600116', 'หนองปลิง   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6102', '600117', 'บึงเสนาท   ', '683', '47', '2');
INSERT INTO `district` VALUES ('6103', '600201', 'โกรกพระ   ', '684', '47', '2');
INSERT INTO `district` VALUES ('6104', '600202', 'ยางตาล   ', '684', '47', '2');
INSERT INTO `district` VALUES ('6105', '600203', 'บางมะฝ่อ   ', '684', '47', '2');
INSERT INTO `district` VALUES ('6106', '600204', 'บางประมุง   ', '684', '47', '2');
INSERT INTO `district` VALUES ('6107', '600205', 'นากลาง   ', '684', '47', '2');
INSERT INTO `district` VALUES ('6108', '600206', 'ศาลาแดง   ', '684', '47', '2');
INSERT INTO `district` VALUES ('6109', '600207', 'เนินกว้าว   ', '684', '47', '2');
INSERT INTO `district` VALUES ('6110', '600208', 'เนินศาลา   ', '684', '47', '2');
INSERT INTO `district` VALUES ('6111', '600209', 'หาดสูง   ', '684', '47', '2');
INSERT INTO `district` VALUES ('6112', '600301', 'ชุมแสง   ', '685', '47', '2');
INSERT INTO `district` VALUES ('6113', '600302', 'ทับกฤช   ', '685', '47', '2');
INSERT INTO `district` VALUES ('6114', '600303', 'พิกุล   ', '685', '47', '2');
INSERT INTO `district` VALUES ('6115', '600304', 'เกยไชย   ', '685', '47', '2');
INSERT INTO `district` VALUES ('6116', '600305', 'ท่าไม้   ', '685', '47', '2');
INSERT INTO `district` VALUES ('6117', '600306', 'บางเคียน   ', '685', '47', '2');
INSERT INTO `district` VALUES ('6118', '600307', 'หนองกระเจา   ', '685', '47', '2');
INSERT INTO `district` VALUES ('6119', '600308', 'พันลาน   ', '685', '47', '2');
INSERT INTO `district` VALUES ('6120', '600309', 'โคกหม้อ   ', '685', '47', '2');
INSERT INTO `district` VALUES ('6121', '600310', 'ไผ่สิงห์   ', '685', '47', '2');
INSERT INTO `district` VALUES ('6122', '600311', 'ฆะมัง   ', '685', '47', '2');
INSERT INTO `district` VALUES ('6123', '600312', 'ทับกฤชใต้   ', '685', '47', '2');
INSERT INTO `district` VALUES ('6124', '600401', 'หนองบัว   ', '686', '47', '2');
INSERT INTO `district` VALUES ('6125', '600402', 'หนองกลับ   ', '686', '47', '2');
INSERT INTO `district` VALUES ('6126', '600403', 'ธารทหาร   ', '686', '47', '2');
INSERT INTO `district` VALUES ('6127', '600404', 'ห้วยร่วม   ', '686', '47', '2');
INSERT INTO `district` VALUES ('6128', '600405', 'ห้วยถั่วใต้   ', '686', '47', '2');
INSERT INTO `district` VALUES ('6129', '600406', 'ห้วยถั่วเหนือ   ', '686', '47', '2');
INSERT INTO `district` VALUES ('6130', '600407', 'ห้วยใหญ่   ', '686', '47', '2');
INSERT INTO `district` VALUES ('6131', '600408', 'ทุ่งทอง   ', '686', '47', '2');
INSERT INTO `district` VALUES ('6132', '600409', 'วังบ่อ   ', '686', '47', '2');
INSERT INTO `district` VALUES ('6133', '600501', 'ท่างิ้ว   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6134', '600502', 'บางตาหงาย   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6135', '600503', 'หูกวาง   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6136', '600504', 'อ่างทอง   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6137', '600505', 'บ้านแดน   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6138', '600506', 'บางแก้ว   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6139', '600507', 'ตาขีด   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6140', '600508', 'ตาสัง   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6141', '600509', 'ด่านช้าง   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6142', '600510', 'หนองกรด   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6143', '600511', 'หนองตางู   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6144', '600512', 'บึงปลาทู   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6145', '600513', 'เจริญผล   ', '687', '47', '2');
INSERT INTO `district` VALUES ('6146', '600601', 'มหาโพธิ   ', '688', '47', '2');
INSERT INTO `district` VALUES ('6147', '600602', 'เก้าเลี้ยว   ', '688', '47', '2');
INSERT INTO `district` VALUES ('6148', '600603', 'หนองเต่า   ', '688', '47', '2');
INSERT INTO `district` VALUES ('6149', '600604', 'เขาดิน   ', '688', '47', '2');
INSERT INTO `district` VALUES ('6150', '600605', 'หัวดง   ', '688', '47', '2');
INSERT INTO `district` VALUES ('6151', '600701', 'ตาคลี   ', '689', '47', '2');
INSERT INTO `district` VALUES ('6152', '600702', 'ช่องแค   ', '689', '47', '2');
INSERT INTO `district` VALUES ('6153', '600703', 'จันเสน   ', '689', '47', '2');
INSERT INTO `district` VALUES ('6154', '600704', 'ห้วยหอม   ', '689', '47', '2');
INSERT INTO `district` VALUES ('6155', '600705', 'หัวหวาย   ', '689', '47', '2');
INSERT INTO `district` VALUES ('6156', '600706', 'หนองโพ   ', '689', '47', '2');
INSERT INTO `district` VALUES ('6157', '600707', 'หนองหม้อ   ', '689', '47', '2');
INSERT INTO `district` VALUES ('6158', '600708', 'สร้อยทอง   ', '689', '47', '2');
INSERT INTO `district` VALUES ('6159', '600709', 'ลาดทิพรส   ', '689', '47', '2');
INSERT INTO `district` VALUES ('6160', '600710', 'พรหมนิมิต   ', '689', '47', '2');
INSERT INTO `district` VALUES ('6161', '600801', 'ท่าตะโก   ', '690', '47', '2');
INSERT INTO `district` VALUES ('6162', '600802', 'พนมรอก   ', '690', '47', '2');
INSERT INTO `district` VALUES ('6163', '600803', 'หัวถนน   ', '690', '47', '2');
INSERT INTO `district` VALUES ('6164', '600804', 'สายลำโพง   ', '690', '47', '2');
INSERT INTO `district` VALUES ('6165', '600805', 'วังมหากร   ', '690', '47', '2');
INSERT INTO `district` VALUES ('6166', '600806', 'ดอนคา   ', '690', '47', '2');
INSERT INTO `district` VALUES ('6167', '600807', 'ทำนบ   ', '690', '47', '2');
INSERT INTO `district` VALUES ('6168', '600808', 'วังใหญ่   ', '690', '47', '2');
INSERT INTO `district` VALUES ('6169', '600809', 'พนมเศษ   ', '690', '47', '2');
INSERT INTO `district` VALUES ('6170', '600810', 'หนองหลวง   ', '690', '47', '2');
INSERT INTO `district` VALUES ('6171', '600901', 'โคกเดื่อ   ', '691', '47', '2');
INSERT INTO `district` VALUES ('6172', '600902', 'สำโรงชัย   ', '691', '47', '2');
INSERT INTO `district` VALUES ('6173', '600903', 'วังน้ำลัด   ', '691', '47', '2');
INSERT INTO `district` VALUES ('6174', '600904', 'ตะคร้อ   ', '691', '47', '2');
INSERT INTO `district` VALUES ('6175', '600905', 'โพธิ์ประสาท   ', '691', '47', '2');
INSERT INTO `district` VALUES ('6176', '600906', 'วังข่อย   ', '691', '47', '2');
INSERT INTO `district` VALUES ('6177', '600907', 'นาขอม   ', '691', '47', '2');
INSERT INTO `district` VALUES ('6178', '600908', 'ไพศาลี   ', '691', '47', '2');
INSERT INTO `district` VALUES ('6179', '601001', 'พยุหะ   ', '692', '47', '2');
INSERT INTO `district` VALUES ('6180', '601002', 'เนินมะกอก   ', '692', '47', '2');
INSERT INTO `district` VALUES ('6181', '601003', 'นิคมเขาบ่อแก้ว   ', '692', '47', '2');
INSERT INTO `district` VALUES ('6182', '601004', 'ม่วงหัก   ', '692', '47', '2');
INSERT INTO `district` VALUES ('6183', '601005', 'ยางขาว   ', '692', '47', '2');
INSERT INTO `district` VALUES ('6184', '601006', 'ย่านมัทรี   ', '692', '47', '2');
INSERT INTO `district` VALUES ('6185', '601007', 'เขาทอง   ', '692', '47', '2');
INSERT INTO `district` VALUES ('6186', '601008', 'ท่าน้ำอ้อย   ', '692', '47', '2');
INSERT INTO `district` VALUES ('6187', '601009', 'น้ำทรง   ', '692', '47', '2');
INSERT INTO `district` VALUES ('6188', '601010', 'เขากะลา   ', '692', '47', '2');
INSERT INTO `district` VALUES ('6189', '601011', 'สระทะเล   ', '692', '47', '2');
INSERT INTO `district` VALUES ('6190', '601101', 'ลาดยาว   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6191', '601102', 'ห้วยน้ำหอม   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6192', '601103', 'วังม้า   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6193', '601104', 'วังเมือง   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6194', '601105', 'สร้อยละคร   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6195', '601106', 'มาบแก   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6196', '601107', 'หนองยาว   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6197', '601108', 'หนองนมวัว   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6198', '601109', 'บ้านไร่   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6199', '601110', 'เนินขี้เหล็ก   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6200', '601111', '*แแม่เล่ย์   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6201', '601112', '*แแม่วงก์   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6202', '601113', '*ววังซ่าน   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6203', '601114', '*เเขาชนกัน   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6204', '601115', '*ปปางสวรรค์   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6205', '601116', 'ศาลเจ้าไก่ต่อ   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6206', '601117', 'สระแก้ว   ', '693', '47', '2');
INSERT INTO `district` VALUES ('6207', '601201', 'ตากฟ้า   ', '694', '47', '2');
INSERT INTO `district` VALUES ('6208', '601202', 'ลำพยนต์   ', '694', '47', '2');
INSERT INTO `district` VALUES ('6209', '601203', 'สุขสำราญ   ', '694', '47', '2');
INSERT INTO `district` VALUES ('6210', '601204', 'หนองพิกุล   ', '694', '47', '2');
INSERT INTO `district` VALUES ('6211', '601205', 'พุนกยูง   ', '694', '47', '2');
INSERT INTO `district` VALUES ('6212', '601206', 'อุดมธัญญา   ', '694', '47', '2');
INSERT INTO `district` VALUES ('6213', '601207', 'เขาชายธง   ', '694', '47', '2');
INSERT INTO `district` VALUES ('6214', '601301', 'แม่วงก์   ', '695', '47', '2');
INSERT INTO `district` VALUES ('6215', '601302', 'ห้วยน้ำหอม*   ', '695', '47', '2');
INSERT INTO `district` VALUES ('6216', '601303', 'แม่เล่ย์   ', '695', '47', '2');
INSERT INTO `district` VALUES ('6217', '601304', 'วังซ่าน   ', '695', '47', '2');
INSERT INTO `district` VALUES ('6218', '601305', 'เขาชนกัน   ', '695', '47', '2');
INSERT INTO `district` VALUES ('6219', '601306', 'ปางสวรรค์*   ', '695', '47', '2');
INSERT INTO `district` VALUES ('6220', '601307', 'แม่เปิน*   ', '695', '47', '2');
INSERT INTO `district` VALUES ('6221', '601308', 'ชุมตาบง*   ', '695', '47', '2');
INSERT INTO `district` VALUES ('6222', '601401', 'แม่เปิน   ', '696', '47', '2');
INSERT INTO `district` VALUES ('6223', '601501', 'ชุมตาบง   ', '697', '47', '2');
INSERT INTO `district` VALUES ('6224', '601502', 'ปางสวรรค์   ', '697', '47', '2');
INSERT INTO `district` VALUES ('6225', '610101', 'อุทัยใหม่   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6226', '610102', 'น้ำซึม   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6227', '610103', 'สะแกกรัง   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6228', '610104', 'ดอนขวาง   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6229', '610105', 'หาดทนง   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6230', '610106', 'เกาะเทโพ   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6231', '610107', 'ท่าซุง   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6232', '610108', 'หนองแก   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6233', '610109', 'โนนเหล็ก   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6234', '610110', 'หนองเต่า   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6235', '610111', 'หนองไผ่แบน   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6236', '610112', 'หนองพังค่า   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6237', '610113', 'ทุ่งใหญ่   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6238', '610114', 'เนินแจง   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6239', '610199', '*ข้าวเม่า   ', '701', '48', '2');
INSERT INTO `district` VALUES ('6240', '610201', 'ทัพทัน   ', '702', '48', '2');
INSERT INTO `district` VALUES ('6241', '610202', 'ทุ่งนาไทย   ', '702', '48', '2');
INSERT INTO `district` VALUES ('6242', '610203', 'เขาขี้ฝอย   ', '702', '48', '2');
INSERT INTO `district` VALUES ('6243', '610204', 'หนองหญ้าปล้อง   ', '702', '48', '2');
INSERT INTO `district` VALUES ('6244', '610205', 'โคกหม้อ   ', '702', '48', '2');
INSERT INTO `district` VALUES ('6245', '610206', 'หนองยายดา   ', '702', '48', '2');
INSERT INTO `district` VALUES ('6246', '610207', 'หนองกลางดง   ', '702', '48', '2');
INSERT INTO `district` VALUES ('6247', '610208', 'หนองกระทุ่ม   ', '702', '48', '2');
INSERT INTO `district` VALUES ('6248', '610209', 'หนองสระ   ', '702', '48', '2');
INSERT INTO `district` VALUES ('6249', '610210', 'ตลุกดู่   ', '702', '48', '2');
INSERT INTO `district` VALUES ('6250', '610301', 'สว่างอารมณ์   ', '703', '48', '2');
INSERT INTO `district` VALUES ('6251', '610302', 'หนองหลวง   ', '703', '48', '2');
INSERT INTO `district` VALUES ('6252', '610303', 'พลวงสองนาง   ', '703', '48', '2');
INSERT INTO `district` VALUES ('6253', '610304', 'ไผ่เขียว   ', '703', '48', '2');
INSERT INTO `district` VALUES ('6254', '610305', 'บ่อยาง   ', '703', '48', '2');
INSERT INTO `district` VALUES ('6255', '610401', 'หนองฉาง   ', '704', '48', '2');
INSERT INTO `district` VALUES ('6256', '610402', 'หนองยาง   ', '704', '48', '2');
INSERT INTO `district` VALUES ('6257', '610403', 'หนองนางนวล   ', '704', '48', '2');
INSERT INTO `district` VALUES ('6258', '610404', 'หนองสรวง   ', '704', '48', '2');
INSERT INTO `district` VALUES ('6259', '610405', 'บ้านเก่า   ', '704', '48', '2');
INSERT INTO `district` VALUES ('6260', '610406', 'อุทัยเก่า   ', '704', '48', '2');
INSERT INTO `district` VALUES ('6261', '610407', 'ทุ่งโพ   ', '704', '48', '2');
INSERT INTO `district` VALUES ('6262', '610408', 'ทุ่งพง   ', '704', '48', '2');
INSERT INTO `district` VALUES ('6263', '610409', 'เขาบางแกรก   ', '704', '48', '2');
INSERT INTO `district` VALUES ('6264', '610410', 'เขากวางทอง   ', '704', '48', '2');
INSERT INTO `district` VALUES ('6265', '610501', 'หนองขาหย่าง   ', '705', '48', '2');
INSERT INTO `district` VALUES ('6266', '610502', 'หนองไผ่   ', '705', '48', '2');
INSERT INTO `district` VALUES ('6267', '610503', 'ดอนกลอย   ', '705', '48', '2');
INSERT INTO `district` VALUES ('6268', '610504', 'ห้วยรอบ   ', '705', '48', '2');
INSERT INTO `district` VALUES ('6269', '610505', 'ทุ่งพึ่ง   ', '705', '48', '2');
INSERT INTO `district` VALUES ('6270', '610506', 'ท่าโพ   ', '705', '48', '2');
INSERT INTO `district` VALUES ('6271', '610507', 'หมกแถว   ', '705', '48', '2');
INSERT INTO `district` VALUES ('6272', '610508', 'หลุมเข้า   ', '705', '48', '2');
INSERT INTO `district` VALUES ('6273', '610509', 'ดงขวาง   ', '705', '48', '2');
INSERT INTO `district` VALUES ('6274', '610601', 'บ้านไร่   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6275', '610602', 'ทัพหลวง   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6276', '610603', 'ห้วยแห้ง   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6277', '610604', 'คอกควาย   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6278', '610605', 'วังหิน   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6279', '610606', 'เมืองการุ้ง   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6280', '610607', 'แก่นมะกรูด   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6281', '610609', 'หนองจอก   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6282', '610610', 'หูช้าง   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6283', '610611', 'บ้านบึง   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6284', '610612', 'บ้านใหม่คลองเคียน   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6285', '610613', 'หนองบ่มกล้วย   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6286', '610614', 'เจ้าวัด   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6287', '610695', '*ห้วยคต   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6288', '610696', '*สุขฤทัย   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6289', '610697', '*ป่าอ้อ   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6290', '610698', '*ประดู่ยืน   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6291', '610699', '*ลานสัก   ', '706', '48', '2');
INSERT INTO `district` VALUES ('6292', '610701', 'ลานสัก   ', '707', '48', '2');
INSERT INTO `district` VALUES ('6293', '610702', 'ประดู่ยืน   ', '707', '48', '2');
INSERT INTO `district` VALUES ('6294', '610703', 'ป่าอ้อ   ', '707', '48', '2');
INSERT INTO `district` VALUES ('6295', '610704', 'ระบำ   ', '707', '48', '2');
INSERT INTO `district` VALUES ('6296', '610705', 'น้ำรอบ   ', '707', '48', '2');
INSERT INTO `district` VALUES ('6297', '610706', 'ทุ่งนางาม   ', '707', '48', '2');
INSERT INTO `district` VALUES ('6298', '610801', 'สุขฤทัย   ', '708', '48', '2');
INSERT INTO `district` VALUES ('6299', '610802', 'ทองหลาง   ', '708', '48', '2');
INSERT INTO `district` VALUES ('6300', '610803', 'ห้วยคต   ', '708', '48', '2');
INSERT INTO `district` VALUES ('6301', '620101', 'ในเมือง   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6302', '620102', 'ไตรตรึงษ์   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6303', '620103', 'อ่างทอง   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6304', '620104', 'นาบ่อคำ   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6305', '620105', 'นครชุม   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6306', '620106', 'ทรงธรรม   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6307', '620107', 'ลานดอกไม้   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6308', '620108', 'ลานดอกไม้ตก*   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6309', '620109', 'โกสัมพี*   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6310', '620110', 'หนองปลิง   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6311', '620111', 'คณฑี   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6312', '620112', 'นิคมทุ่งโพธิ์ทะเล   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6313', '620113', 'เทพนคร   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6314', '620114', 'วังทอง   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6315', '620115', 'ท่าขุนราม   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6316', '620116', 'เพชรชมภู*   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6317', '620117', 'คลองแม่ลาย   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6318', '620118', 'ธำมรงค์   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6319', '620119', 'สระแก้ว   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6320', '620197', '*หนองคล้า   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6321', '620198', '*โป่งน้ำร้อน   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6322', '620199', '*ไทรงาม   ', '709', '49', '2');
INSERT INTO `district` VALUES ('6323', '620201', 'ไทรงาม   ', '710', '49', '2');
INSERT INTO `district` VALUES ('6324', '620202', 'หนองคล้า   ', '710', '49', '2');
INSERT INTO `district` VALUES ('6325', '620203', 'หนองทอง   ', '710', '49', '2');
INSERT INTO `district` VALUES ('6326', '620204', 'หนองไม้กอง   ', '710', '49', '2');
INSERT INTO `district` VALUES ('6327', '620205', 'มหาชัย   ', '710', '49', '2');
INSERT INTO `district` VALUES ('6328', '620206', 'พานทอง   ', '710', '49', '2');
INSERT INTO `district` VALUES ('6329', '620207', 'หนองแม่แตง   ', '710', '49', '2');
INSERT INTO `district` VALUES ('6330', '620301', 'คลองน้ำไหล   ', '711', '49', '2');
INSERT INTO `district` VALUES ('6331', '620302', 'โป่งน้ำร้อน   ', '711', '49', '2');
INSERT INTO `district` VALUES ('6332', '620303', 'คลองลานพัฒนา   ', '711', '49', '2');
INSERT INTO `district` VALUES ('6333', '620304', 'สักงาม   ', '711', '49', '2');
INSERT INTO `district` VALUES ('6334', '620401', '*วังชะโอน   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6335', '620402', '*ระหาน   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6336', '620403', 'ยางสูง   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6337', '620404', 'ป่าพุทรา   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6338', '620405', 'แสนตอ   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6339', '620406', 'สลกบาตร   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6340', '620407', 'บ่อถ้ำ   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6341', '620408', 'ดอนแตง   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6342', '620409', 'วังชะพลู   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6343', '620410', 'โค้งไผ่   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6344', '620411', 'ปางมะค่า   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6345', '620412', 'วังหามแห   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6346', '620413', 'เกาะตาล   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6347', '620414', '*บึงสามัคคี   ', '712', '49', '2');
INSERT INTO `district` VALUES ('6348', '620501', 'คลองขลุง   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6349', '620502', 'ท่ามะเขือ   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6350', '620503', '*ททุ่งทราย   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6351', '620504', 'ท่าพุทรา   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6352', '620505', 'แม่ลาด   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6353', '620506', 'วังยาง   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6354', '620507', 'วังแขม   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6355', '620508', 'หัวถนน   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6356', '620509', 'วังไทร   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6357', '620510', '*โพธิ์ทอง   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6358', '620511', '*ปางตาไว   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6359', '620512', '*ถถาวรวัฒนา   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6360', '620513', 'วังบัว   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6361', '620514', '*ทุ่งทอง   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6362', '620515', '*หินดาต   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6363', '620516', 'คลองสมบูรณ์   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6364', '620599', '*ทุ่งทราย   ', '713', '49', '2');
INSERT INTO `district` VALUES ('6365', '620601', 'พรานกระต่าย   ', '714', '49', '2');
INSERT INTO `district` VALUES ('6366', '620602', 'หนองหัววัว   ', '714', '49', '2');
INSERT INTO `district` VALUES ('6367', '620603', 'ท่าไม้   ', '714', '49', '2');
INSERT INTO `district` VALUES ('6368', '620604', 'วังควง   ', '714', '49', '2');
INSERT INTO `district` VALUES ('6369', '620605', 'วังตะแบก   ', '714', '49', '2');
INSERT INTO `district` VALUES ('6370', '620606', 'เขาคีริส   ', '714', '49', '2');
INSERT INTO `district` VALUES ('6371', '620607', 'คุยบ้านโอง   ', '714', '49', '2');
INSERT INTO `district` VALUES ('6372', '620608', 'คลองพิไกร   ', '714', '49', '2');
INSERT INTO `district` VALUES ('6373', '620609', 'ถ้ำกระต่ายทอง   ', '714', '49', '2');
INSERT INTO `district` VALUES ('6374', '620610', 'ห้วยยั้ง   ', '714', '49', '2');
INSERT INTO `district` VALUES ('6375', '620701', 'ลานกระบือ   ', '715', '49', '2');
INSERT INTO `district` VALUES ('6376', '620702', 'ช่องลม   ', '715', '49', '2');
INSERT INTO `district` VALUES ('6377', '620703', 'หนองหลวง   ', '715', '49', '2');
INSERT INTO `district` VALUES ('6378', '620704', 'โนนพลวง   ', '715', '49', '2');
INSERT INTO `district` VALUES ('6379', '620705', 'ประชาสุขสันต์   ', '715', '49', '2');
INSERT INTO `district` VALUES ('6380', '620706', 'บึงทับแรต   ', '715', '49', '2');
INSERT INTO `district` VALUES ('6381', '620707', 'จันทิมา   ', '715', '49', '2');
INSERT INTO `district` VALUES ('6382', '620801', 'ทุ่งทราย   ', '716', '49', '2');
INSERT INTO `district` VALUES ('6383', '620802', 'ทุ่งทอง   ', '716', '49', '2');
INSERT INTO `district` VALUES ('6384', '620803', 'ถาวรวัฒนา   ', '716', '49', '2');
INSERT INTO `district` VALUES ('6385', '620901', 'โพธิ์ทอง   ', '717', '49', '2');
INSERT INTO `district` VALUES ('6386', '620902', 'หินดาต   ', '717', '49', '2');
INSERT INTO `district` VALUES ('6387', '620903', 'ปางตาไว   ', '717', '49', '2');
INSERT INTO `district` VALUES ('6388', '621001', 'บึงสามัคคี   ', '718', '49', '2');
INSERT INTO `district` VALUES ('6389', '621002', 'วังชะโอน   ', '718', '49', '2');
INSERT INTO `district` VALUES ('6390', '621003', 'ระหาน   ', '718', '49', '2');
INSERT INTO `district` VALUES ('6391', '621004', 'เทพนิมิต   ', '718', '49', '2');
INSERT INTO `district` VALUES ('6392', '621101', 'โกสัมพี   ', '719', '49', '2');
INSERT INTO `district` VALUES ('6393', '621102', 'เพชรชมภู   ', '719', '49', '2');
INSERT INTO `district` VALUES ('6394', '621103', 'ลานดอกไม้ตก   ', '719', '49', '2');
INSERT INTO `district` VALUES ('6395', '630101', 'ระแหง   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6396', '630102', 'หนองหลวง   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6397', '630103', 'เชียงเงิน   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6398', '630104', 'หัวเดียด   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6399', '630105', 'หนองบัวเหนือ   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6400', '630106', 'ไม้งาม   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6401', '630107', 'โป่งแดง   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6402', '630108', 'น้ำรึม   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6403', '630109', 'วังหิน   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6404', '630110', 'เชียงทอง*   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6405', '630111', 'แม่ท้อ   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6406', '630112', 'ป่ามะม่วง   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6407', '630113', 'หนองบัวใต้   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6408', '630114', 'วังประจบ   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6409', '630115', 'ตลุกกลางทุ่ง   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6410', '630116', 'นาโบสถ์*   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6411', '630117', 'ประดาง*   ', '720', '50', '4');
INSERT INTO `district` VALUES ('6412', '630201', 'ตากออก   ', '721', '50', '4');
INSERT INTO `district` VALUES ('6413', '630202', 'สมอโคน   ', '721', '50', '4');
INSERT INTO `district` VALUES ('6414', '630203', 'แม่สลิด   ', '721', '50', '4');
INSERT INTO `district` VALUES ('6415', '630204', 'ตากตก   ', '721', '50', '4');
INSERT INTO `district` VALUES ('6416', '630205', 'เกาะตะเภา   ', '721', '50', '4');
INSERT INTO `district` VALUES ('6417', '630206', 'ทุ่งกระเชาะ   ', '721', '50', '4');
INSERT INTO `district` VALUES ('6418', '630207', 'ท้องฟ้า   ', '721', '50', '4');
INSERT INTO `district` VALUES ('6419', '630301', 'สามเงา   ', '722', '50', '4');
INSERT INTO `district` VALUES ('6420', '630302', 'วังหมัน   ', '722', '50', '4');
INSERT INTO `district` VALUES ('6421', '630303', 'ยกกระบัตร   ', '722', '50', '4');
INSERT INTO `district` VALUES ('6422', '630304', 'ย่านรี   ', '722', '50', '4');
INSERT INTO `district` VALUES ('6423', '630305', 'บ้านนา   ', '722', '50', '4');
INSERT INTO `district` VALUES ('6424', '630306', 'วังจันทร์   ', '722', '50', '4');
INSERT INTO `district` VALUES ('6425', '630401', 'แม่ระมาด   ', '723', '50', '4');
INSERT INTO `district` VALUES ('6426', '630402', 'แม่จะเรา   ', '723', '50', '4');
INSERT INTO `district` VALUES ('6427', '630403', 'ขะเนจื้อ   ', '723', '50', '4');
INSERT INTO `district` VALUES ('6428', '630404', 'แม่ตื่น   ', '723', '50', '4');
INSERT INTO `district` VALUES ('6429', '630405', 'สามหมื่น   ', '723', '50', '4');
INSERT INTO `district` VALUES ('6430', '630406', 'พระธาตุ   ', '723', '50', '4');
INSERT INTO `district` VALUES ('6431', '630501', 'ท่าสองยาง   ', '724', '50', '4');
INSERT INTO `district` VALUES ('6432', '630502', 'แม่ต้าน   ', '724', '50', '4');
INSERT INTO `district` VALUES ('6433', '630503', 'แม่สอง   ', '724', '50', '4');
INSERT INTO `district` VALUES ('6434', '630504', 'แม่หละ   ', '724', '50', '4');
INSERT INTO `district` VALUES ('6435', '630505', 'แม่วะหลวง   ', '724', '50', '4');
INSERT INTO `district` VALUES ('6436', '630506', 'แม่อุสุ   ', '724', '50', '4');
INSERT INTO `district` VALUES ('6437', '630601', 'แม่สอด   ', '725', '50', '4');
INSERT INTO `district` VALUES ('6438', '630602', 'แม่กุ   ', '725', '50', '4');
INSERT INTO `district` VALUES ('6439', '630603', 'พะวอ   ', '725', '50', '4');
INSERT INTO `district` VALUES ('6440', '630604', 'แม่ตาว   ', '725', '50', '4');
INSERT INTO `district` VALUES ('6441', '630605', 'แม่กาษา   ', '725', '50', '4');
INSERT INTO `district` VALUES ('6442', '630606', 'ท่าสายลวด   ', '725', '50', '4');
INSERT INTO `district` VALUES ('6443', '630607', 'แม่ปะ   ', '725', '50', '4');
INSERT INTO `district` VALUES ('6444', '630608', 'มหาวัน   ', '725', '50', '4');
INSERT INTO `district` VALUES ('6445', '630609', 'ด่านแม่ละเมา   ', '725', '50', '4');
INSERT INTO `district` VALUES ('6446', '630610', 'พระธาตุผาแดง   ', '725', '50', '4');
INSERT INTO `district` VALUES ('6447', '630701', 'พบพระ   ', '726', '50', '4');
INSERT INTO `district` VALUES ('6448', '630702', 'ช่องแคบ   ', '726', '50', '4');
INSERT INTO `district` VALUES ('6449', '630703', 'คีรีราษฎร์   ', '726', '50', '4');
INSERT INTO `district` VALUES ('6450', '630704', 'วาเล่ย์   ', '726', '50', '4');
INSERT INTO `district` VALUES ('6451', '630705', 'รวมไทยพัฒนา   ', '726', '50', '4');
INSERT INTO `district` VALUES ('6452', '630801', 'อุ้มผาง   ', '727', '50', '4');
INSERT INTO `district` VALUES ('6453', '630802', 'หนองหลวง   ', '727', '50', '4');
INSERT INTO `district` VALUES ('6454', '630803', 'โมโกร   ', '727', '50', '4');
INSERT INTO `district` VALUES ('6455', '630804', 'แม่จัน   ', '727', '50', '4');
INSERT INTO `district` VALUES ('6456', '630805', 'แม่ละมุ้ง   ', '727', '50', '4');
INSERT INTO `district` VALUES ('6457', '630806', 'แม่กลอง   ', '727', '50', '4');
INSERT INTO `district` VALUES ('6458', '630901', 'เชียงทอง   ', '728', '50', '4');
INSERT INTO `district` VALUES ('6459', '630902', 'นาโบสถ์   ', '728', '50', '4');
INSERT INTO `district` VALUES ('6460', '630903', 'ประดาง   ', '728', '50', '4');
INSERT INTO `district` VALUES ('6461', '640101', 'ธานี   ', '730', '51', '2');
INSERT INTO `district` VALUES ('6462', '640102', 'บ้านสวน   ', '730', '51', '2');
INSERT INTO `district` VALUES ('6463', '640103', 'เมืองเก่า   ', '730', '51', '2');
INSERT INTO `district` VALUES ('6464', '640104', 'ปากแคว   ', '730', '51', '2');
INSERT INTO `district` VALUES ('6465', '640105', 'ยางซ้าย   ', '730', '51', '2');
INSERT INTO `district` VALUES ('6466', '640106', 'บ้านกล้วย   ', '730', '51', '2');
INSERT INTO `district` VALUES ('6467', '640107', 'บ้านหลุม   ', '730', '51', '2');
INSERT INTO `district` VALUES ('6468', '640108', 'ตาลเตี้ย   ', '730', '51', '2');
INSERT INTO `district` VALUES ('6469', '640109', 'ปากพระ   ', '730', '51', '2');
INSERT INTO `district` VALUES ('6470', '640110', 'วังทองแดง   ', '730', '51', '2');
INSERT INTO `district` VALUES ('6471', '640201', 'ลานหอย   ', '731', '51', '2');
INSERT INTO `district` VALUES ('6472', '640202', 'บ้านด่าน   ', '731', '51', '2');
INSERT INTO `district` VALUES ('6473', '640203', 'วังตะคร้อ   ', '731', '51', '2');
INSERT INTO `district` VALUES ('6474', '640204', 'วังน้ำขาว   ', '731', '51', '2');
INSERT INTO `district` VALUES ('6475', '640205', 'ตลิ่งชัน   ', '731', '51', '2');
INSERT INTO `district` VALUES ('6476', '640206', 'หนองหญ้าปล้อง   ', '731', '51', '2');
INSERT INTO `district` VALUES ('6477', '640207', 'วังลึก   ', '731', '51', '2');
INSERT INTO `district` VALUES ('6478', '640301', 'โตนด   ', '732', '51', '2');
INSERT INTO `district` VALUES ('6479', '640302', 'ทุ่งหลวง   ', '732', '51', '2');
INSERT INTO `district` VALUES ('6480', '640303', 'บ้านป้อม   ', '732', '51', '2');
INSERT INTO `district` VALUES ('6481', '640304', 'สามพวง   ', '732', '51', '2');
INSERT INTO `district` VALUES ('6482', '640305', 'ศรีคีรีมาศ   ', '732', '51', '2');
INSERT INTO `district` VALUES ('6483', '640306', 'หนองจิก   ', '732', '51', '2');
INSERT INTO `district` VALUES ('6484', '640307', 'นาเชิงคีรี   ', '732', '51', '2');
INSERT INTO `district` VALUES ('6485', '640308', 'หนองกระดิ่ง   ', '732', '51', '2');
INSERT INTO `district` VALUES ('6486', '640309', 'บ้านน้ำพุ   ', '732', '51', '2');
INSERT INTO `district` VALUES ('6487', '640310', 'ทุ่งยางเมือง   ', '732', '51', '2');
INSERT INTO `district` VALUES ('6488', '640401', 'กง   ', '733', '51', '2');
INSERT INTO `district` VALUES ('6489', '640402', 'บ้านกร่าง   ', '733', '51', '2');
INSERT INTO `district` VALUES ('6490', '640403', 'ไกรนอก   ', '733', '51', '2');
INSERT INTO `district` VALUES ('6491', '640404', 'ไกรกลาง   ', '733', '51', '2');
INSERT INTO `district` VALUES ('6492', '640405', 'ไกรใน   ', '733', '51', '2');
INSERT INTO `district` VALUES ('6493', '640406', 'ดงเดือย   ', '733', '51', '2');
INSERT INTO `district` VALUES ('6494', '640407', 'ป่าแฝก   ', '733', '51', '2');
INSERT INTO `district` VALUES ('6495', '640408', 'กกแรต   ', '733', '51', '2');
INSERT INTO `district` VALUES ('6496', '640409', 'ท่าฉนวน   ', '733', '51', '2');
INSERT INTO `district` VALUES ('6497', '640410', 'หนองตูม   ', '733', '51', '2');
INSERT INTO `district` VALUES ('6498', '640411', 'บ้านใหม่สุขเกษม   ', '733', '51', '2');
INSERT INTO `district` VALUES ('6499', '640501', 'หาดเสี้ยว   ', '734', '51', '2');
INSERT INTO `district` VALUES ('6500', '640502', 'ป่างิ้ว   ', '734', '51', '2');
INSERT INTO `district` VALUES ('6501', '640503', 'แม่สำ   ', '734', '51', '2');
INSERT INTO `district` VALUES ('6502', '640504', 'แม่สิน   ', '734', '51', '2');
INSERT INTO `district` VALUES ('6503', '640505', 'บ้านตึก   ', '734', '51', '2');
INSERT INTO `district` VALUES ('6504', '640506', 'หนองอ้อ   ', '734', '51', '2');
INSERT INTO `district` VALUES ('6505', '640507', 'ท่าชัย   ', '734', '51', '2');
INSERT INTO `district` VALUES ('6506', '640508', 'ศรีสัชนาลัย   ', '734', '51', '2');
INSERT INTO `district` VALUES ('6507', '640509', 'ดงคู่   ', '734', '51', '2');
INSERT INTO `district` VALUES ('6508', '640510', 'บ้านแก่ง   ', '734', '51', '2');
INSERT INTO `district` VALUES ('6509', '640511', 'สารจิตร   ', '734', '51', '2');
INSERT INTO `district` VALUES ('6510', '640601', 'คลองตาล   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6511', '640602', 'วังลึก   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6512', '640603', 'สามเรือน   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6513', '640604', 'บ้านนา   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6514', '640605', 'วังทอง   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6515', '640606', 'นาขุนไกร   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6516', '640607', 'เกาะตาเลี้ยง   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6517', '640608', 'วัดเกาะ   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6518', '640609', 'บ้านไร่   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6519', '640610', 'ทับผึ้ง   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6520', '640611', 'บ้านซ่าน   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6521', '640612', 'วังใหญ่   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6522', '640613', 'ราวต้นจันทร์   ', '735', '51', '2');
INSERT INTO `district` VALUES ('6523', '640701', 'เมืองสวรรคโลก   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6524', '640702', 'ในเมือง   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6525', '640703', 'คลองกระจง   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6526', '640704', 'วังพิณพาทย์   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6527', '640705', 'วังไม้ขอน   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6528', '640706', 'ย่านยาว   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6529', '640707', 'นาทุ่ง   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6530', '640708', 'คลองยาง   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6531', '640709', 'เมืองบางยม   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6532', '640710', 'ท่าทอง   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6533', '640711', 'ปากน้ำ   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6534', '640712', 'ป่ากุมเกาะ   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6535', '640713', 'เมืองบางขลัง   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6536', '640714', 'หนองกลับ   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6537', '640795', '*ประชาราษฎร์   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6538', '640796', '*คลองมะพลับ   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6539', '640797', '*น้ำขุม   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6540', '640798', '*นครเดิฐ   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6541', '640799', '*ศรีนคร   ', '736', '51', '2');
INSERT INTO `district` VALUES ('6542', '640801', 'ศรีนคร   ', '737', '51', '2');
INSERT INTO `district` VALUES ('6543', '640802', 'นครเดิฐ   ', '737', '51', '2');
INSERT INTO `district` VALUES ('6544', '640803', 'น้ำขุม   ', '737', '51', '2');
INSERT INTO `district` VALUES ('6545', '640804', 'คลองมะพลับ   ', '737', '51', '2');
INSERT INTO `district` VALUES ('6546', '640805', 'หนองบัว   ', '737', '51', '2');
INSERT INTO `district` VALUES ('6547', '640901', 'บ้านใหม่ไชยมงคล   ', '738', '51', '2');
INSERT INTO `district` VALUES ('6548', '640902', 'ไทยชนะศึก   ', '738', '51', '2');
INSERT INTO `district` VALUES ('6549', '640903', 'ทุ่งเสลี่ยม   ', '738', '51', '2');
INSERT INTO `district` VALUES ('6550', '640904', 'กลางดง   ', '738', '51', '2');
INSERT INTO `district` VALUES ('6551', '640905', 'เขาแก้วศรีสมบูรณ์   ', '738', '51', '2');
INSERT INTO `district` VALUES ('6552', '650101', 'ในเมือง   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6553', '650102', 'วังน้ำคู้   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6554', '650103', 'วัดจันทร์   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6555', '650104', 'วัดพริก   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6556', '650105', 'ท่าทอง   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6557', '650106', 'ท่าโพธิ์   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6558', '650107', 'สมอแข   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6559', '650108', 'ดอนทอง   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6560', '650109', 'บ้านป่า   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6561', '650110', 'ปากโทก   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6562', '650111', 'หัวรอ   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6563', '650112', 'จอมทอง   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6564', '650113', 'บ้านกร่าง   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6565', '650114', 'บ้านคลอง   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6566', '650115', 'พลายชุมพล   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6567', '650116', 'มะขามสูง   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6568', '650117', 'อรัญญิก   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6569', '650118', 'บึงพระ   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6570', '650119', 'ไผ่ขอดอน   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6571', '650120', 'งิ้วงาม   ', '739', '52', '2');
INSERT INTO `district` VALUES ('6572', '650201', 'นครไทย   ', '740', '52', '2');
INSERT INTO `district` VALUES ('6573', '650202', 'หนองกะท้าว   ', '740', '52', '2');
INSERT INTO `district` VALUES ('6574', '650203', 'บ้านแยง   ', '740', '52', '2');
INSERT INTO `district` VALUES ('6575', '650204', 'เนินเพิ่ม   ', '740', '52', '2');
INSERT INTO `district` VALUES ('6576', '650205', 'นาบัว   ', '740', '52', '2');
INSERT INTO `district` VALUES ('6577', '650206', 'นครชุม   ', '740', '52', '2');
INSERT INTO `district` VALUES ('6578', '650207', 'น้ำกุ่ม   ', '740', '52', '2');
INSERT INTO `district` VALUES ('6579', '650208', 'ยางโกลน   ', '740', '52', '2');
INSERT INTO `district` VALUES ('6580', '650209', 'บ่อโพธิ์   ', '740', '52', '2');
INSERT INTO `district` VALUES ('6581', '650210', 'บ้านพร้าว   ', '740', '52', '2');
INSERT INTO `district` VALUES ('6582', '650211', 'ห้วยเฮี้ย   ', '740', '52', '2');
INSERT INTO `district` VALUES ('6583', '650301', 'ป่าแดง   ', '741', '52', '2');
INSERT INTO `district` VALUES ('6584', '650302', 'ชาติตระการ   ', '741', '52', '2');
INSERT INTO `district` VALUES ('6585', '650303', 'สวนเมี่ยง   ', '741', '52', '2');
INSERT INTO `district` VALUES ('6586', '650304', 'บ้านดง   ', '741', '52', '2');
INSERT INTO `district` VALUES ('6587', '650305', 'บ่อภาค   ', '741', '52', '2');
INSERT INTO `district` VALUES ('6588', '650306', 'ท่าสะแก   ', '741', '52', '2');
INSERT INTO `district` VALUES ('6589', '650401', 'บางระกำ   ', '742', '52', '2');
INSERT INTO `district` VALUES ('6590', '650402', 'ปลักแรด   ', '742', '52', '2');
INSERT INTO `district` VALUES ('6591', '650403', 'พันเสา   ', '742', '52', '2');
INSERT INTO `district` VALUES ('6592', '650404', 'วังอิทก   ', '742', '52', '2');
INSERT INTO `district` VALUES ('6593', '650405', 'บึงกอก   ', '742', '52', '2');
INSERT INTO `district` VALUES ('6594', '650406', 'หนองกุลา   ', '742', '52', '2');
INSERT INTO `district` VALUES ('6595', '650407', 'ชุมแสงสงคราม   ', '742', '52', '2');
INSERT INTO `district` VALUES ('6596', '650408', 'นิคมพัฒนา   ', '742', '52', '2');
INSERT INTO `district` VALUES ('6597', '650409', 'บ่อทอง   ', '742', '52', '2');
INSERT INTO `district` VALUES ('6598', '650410', 'ท่านางงาม   ', '742', '52', '2');
INSERT INTO `district` VALUES ('6599', '650411', 'คุยม่วง   ', '742', '52', '2');
INSERT INTO `district` VALUES ('6600', '650501', 'บางกระทุ่ม   ', '743', '52', '2');
INSERT INTO `district` VALUES ('6601', '650502', 'บ้านไร่   ', '743', '52', '2');
INSERT INTO `district` VALUES ('6602', '650503', 'โคกสลุด   ', '743', '52', '2');
INSERT INTO `district` VALUES ('6603', '650504', 'สนามคลี   ', '743', '52', '2');
INSERT INTO `district` VALUES ('6604', '650505', 'ท่าตาล   ', '743', '52', '2');
INSERT INTO `district` VALUES ('6605', '650506', 'ไผ่ล้อม   ', '743', '52', '2');
INSERT INTO `district` VALUES ('6606', '650507', 'นครป่าหมาก   ', '743', '52', '2');
INSERT INTO `district` VALUES ('6607', '650508', 'เนินกุ่ม   ', '743', '52', '2');
INSERT INTO `district` VALUES ('6608', '650509', 'วัดตายม   ', '743', '52', '2');
INSERT INTO `district` VALUES ('6609', '650601', 'พรหมพิราม   ', '744', '52', '2');
INSERT INTO `district` VALUES ('6610', '650602', 'ท่าช้าง   ', '744', '52', '2');
INSERT INTO `district` VALUES ('6611', '650603', 'วงฆ้อง   ', '744', '52', '2');
INSERT INTO `district` VALUES ('6612', '650604', 'มะตูม   ', '744', '52', '2');
INSERT INTO `district` VALUES ('6613', '650605', 'หอกลอง   ', '744', '52', '2');
INSERT INTO `district` VALUES ('6614', '650606', 'ศรีภิรมย์   ', '744', '52', '2');
INSERT INTO `district` VALUES ('6615', '650607', 'ตลุกเทียม   ', '744', '52', '2');
INSERT INTO `district` VALUES ('6616', '650608', 'วังวน   ', '744', '52', '2');
INSERT INTO `district` VALUES ('6617', '650609', 'หนองแขม   ', '744', '52', '2');
INSERT INTO `district` VALUES ('6618', '650610', 'มะต้อง   ', '744', '52', '2');
INSERT INTO `district` VALUES ('6619', '650611', 'ทับยายเชียง   ', '744', '52', '2');
INSERT INTO `district` VALUES ('6620', '650612', 'ดงประคำ   ', '744', '52', '2');
INSERT INTO `district` VALUES ('6621', '650701', 'วัดโบสถ์   ', '745', '52', '2');
INSERT INTO `district` VALUES ('6622', '650702', 'ท่างาม   ', '745', '52', '2');
INSERT INTO `district` VALUES ('6623', '650703', 'ท้อแท้   ', '745', '52', '2');
INSERT INTO `district` VALUES ('6624', '650704', 'บ้านยาง   ', '745', '52', '2');
INSERT INTO `district` VALUES ('6625', '650705', 'หินลาด   ', '745', '52', '2');
INSERT INTO `district` VALUES ('6626', '650706', 'คันโช้ง   ', '745', '52', '2');
INSERT INTO `district` VALUES ('6627', '650801', 'วังทอง   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6628', '650802', 'พันชาลี   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6629', '650803', 'แม่ระกา   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6630', '650804', 'บ้านกลาง   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6631', '650805', 'วังพิกุล   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6632', '650806', 'แก่งโสภา   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6633', '650807', 'ท่าหมื่นราม   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6634', '650808', 'วังนกแอ่น   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6635', '650809', 'หนองพระ   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6636', '650810', 'ชัยนาม   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6637', '650811', 'ดินทอง   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6638', '650895', '*บ้านน้อยซุ้มขี้เหล็ก   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6639', '650896', '*วังโพรง   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6640', '650897', '*ไทรย้อย   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6641', '650898', '*บ้านมุง   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6642', '650899', '*ชมพู   ', '746', '52', '2');
INSERT INTO `district` VALUES ('6643', '650901', 'ชมพู   ', '747', '52', '2');
INSERT INTO `district` VALUES ('6644', '650902', 'บ้านมุง   ', '747', '52', '2');
INSERT INTO `district` VALUES ('6645', '650903', 'ไทรย้อย   ', '747', '52', '2');
INSERT INTO `district` VALUES ('6646', '650904', 'วังโพรง   ', '747', '52', '2');
INSERT INTO `district` VALUES ('6647', '650905', 'บ้านน้อยซุ้มขี้เหล็ก   ', '747', '52', '2');
INSERT INTO `district` VALUES ('6648', '650906', 'เนินมะปราง   ', '747', '52', '2');
INSERT INTO `district` VALUES ('6649', '650907', 'วังยาง   ', '747', '52', '2');
INSERT INTO `district` VALUES ('6650', '650908', 'โคกแหลม   ', '747', '52', '2');
INSERT INTO `district` VALUES ('6651', '660101', 'ในเมือง   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6652', '660102', 'ไผ่ขวาง   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6653', '660103', 'ย่านยาว   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6654', '660104', 'ท่าฬ่อ   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6655', '660105', 'ปากทาง   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6656', '660106', 'คลองคะเชนทร์   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6657', '660107', 'โรงช้าง   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6658', '660108', 'เมืองเก่า   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6659', '660109', 'ท่าหลวง   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6660', '660110', 'บ้านบุ่ง   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6661', '660111', 'ฆะมัง   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6662', '660112', 'ดงป่าคำ   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6663', '660113', 'หัวดง   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6664', '660114', '*หนองปล้อง   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6665', '660115', 'ป่ามะคาบ   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6666', '660116', '*สากเหล็ก   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6667', '660117', '*ท่าเยี่ยม   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6668', '660118', '*คลองทราย   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6669', '660119', 'สายคำโห้   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6670', '660120', 'ดงกลาง   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6671', '660192', '*ไผ่รอบ   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6672', '660193', '*วังจิก   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6673', '660194', '*โพธิ์ประทับช้าง   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6674', '660195', '*ไผ่ท่าโพ   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6675', '660196', '*วังจิก   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6676', '660197', '*หนองพระ   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6677', '660198', '*หนองปลาไหล   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6678', '660199', '*วังทรายพูน   ', '748', '53', '2');
INSERT INTO `district` VALUES ('6679', '660201', 'วังทรายพูน   ', '749', '53', '2');
INSERT INTO `district` VALUES ('6680', '660202', 'หนองปลาไหล   ', '749', '53', '2');
INSERT INTO `district` VALUES ('6681', '660203', 'หนองพระ   ', '749', '53', '2');
INSERT INTO `district` VALUES ('6682', '660204', 'หนองปล้อง   ', '749', '53', '2');
INSERT INTO `district` VALUES ('6683', '660301', 'โพธิ์ประทับช้าง   ', '750', '53', '2');
INSERT INTO `district` VALUES ('6684', '660302', 'ไผ่ท่าโพ   ', '750', '53', '2');
INSERT INTO `district` VALUES ('6685', '660303', 'วังจิก   ', '750', '53', '2');
INSERT INTO `district` VALUES ('6686', '660304', 'ไผ่รอบ   ', '750', '53', '2');
INSERT INTO `district` VALUES ('6687', '660305', 'ดงเสือเหลือง   ', '750', '53', '2');
INSERT INTO `district` VALUES ('6688', '660306', 'เนินสว่าง   ', '750', '53', '2');
INSERT INTO `district` VALUES ('6689', '660307', 'ทุ่งใหญ่   ', '750', '53', '2');
INSERT INTO `district` VALUES ('6690', '660401', 'ตะพานหิน   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6691', '660402', 'งิ้วราย   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6692', '660403', 'ห้วยเกตุ   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6693', '660404', 'ไทรโรงโขน   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6694', '660405', 'หนองพยอม   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6695', '660406', 'ทุ่งโพธิ์   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6696', '660407', 'ดงตะขบ   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6697', '660408', 'คลองคูณ   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6698', '660409', 'วังสำโรง   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6699', '660410', 'วังหว้า   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6700', '660411', 'วังหลุม   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6701', '660412', 'ทับหมัน   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6702', '660413', 'ไผ่หลวง   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6703', '660496', '*ท้ายทุ่ง   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6704', '660497', '*เขาเจ็ดลูก   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6705', '660498', '*เขาทราย   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6706', '660499', '*ทับคล้อ   ', '751', '53', '2');
INSERT INTO `district` VALUES ('6707', '660501', 'บางมูลนาก   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6708', '660502', 'บางไผ่   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6709', '660503', 'หอไกร   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6710', '660504', 'เนินมะกอก   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6711', '660505', 'วังสำโรง   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6712', '660506', 'ภูมิ   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6713', '660507', 'วังกรด   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6714', '660508', 'ห้วยเขน   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6715', '660509', 'วังตะกู   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6716', '660510', 'สำนักขุนเณร*   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6717', '660511', 'ห้วยพุก*   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6718', '660512', 'ห้วยร่วม*   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6719', '660513', 'วังงิ้ว*   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6720', '660514', 'ลำประดา   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6721', '660515', 'วังงิ้วใต้*   ', '752', '53', '2');
INSERT INTO `district` VALUES ('6722', '660601', 'โพทะเล   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6723', '660602', 'ท้ายน้ำ   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6724', '660603', 'ทะนง   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6725', '660604', 'ท่าบัว   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6726', '660605', 'ทุ่งน้อย   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6727', '660606', 'ท่าขมิ้น   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6728', '660607', 'ท่าเสา   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6729', '660608', 'บางคลาน   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6730', '660609', 'บางลาย*   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6731', '660610', 'บึงนาราง*   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6732', '660611', 'ท่านั่ง   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6733', '660612', 'บ้านน้อย   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6734', '660613', 'วัดขวาง   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6735', '660614', 'โพธิ์ไทรงาม*   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6736', '660615', 'แหลมรัง*   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6737', '660616', 'ห้วยแก้ว*   ', '753', '53', '2');
INSERT INTO `district` VALUES ('6738', '660701', 'สามง่าม   ', '754', '53', '2');
INSERT INTO `district` VALUES ('6739', '660702', 'กำแพงดิน   ', '754', '53', '2');
INSERT INTO `district` VALUES ('6740', '660703', 'รังนก   ', '754', '53', '2');
INSERT INTO `district` VALUES ('6741', '660704', 'หนองหลุม*   ', '754', '53', '2');
INSERT INTO `district` VALUES ('6742', '660705', 'บ้านนา*   ', '754', '53', '2');
INSERT INTO `district` VALUES ('6743', '660706', 'เนินปอ   ', '754', '53', '2');
INSERT INTO `district` VALUES ('6744', '660707', 'หนองโสน   ', '754', '53', '2');
INSERT INTO `district` VALUES ('6745', '660708', 'วังโมกข์*   ', '754', '53', '2');
INSERT INTO `district` VALUES ('6746', '660709', 'บึงบัว*   ', '754', '53', '2');
INSERT INTO `district` VALUES ('6747', '660801', 'ทับคล้อ   ', '755', '53', '2');
INSERT INTO `district` VALUES ('6748', '660802', 'เขาทราย   ', '755', '53', '2');
INSERT INTO `district` VALUES ('6749', '660803', 'เขาเจ็ดลูก   ', '755', '53', '2');
INSERT INTO `district` VALUES ('6750', '660804', 'ท้ายทุ่ง   ', '755', '53', '2');
INSERT INTO `district` VALUES ('6751', '660901', 'สากเหล็ก   ', '756', '53', '2');
INSERT INTO `district` VALUES ('6752', '660902', 'ท่าเยี่ยม   ', '756', '53', '2');
INSERT INTO `district` VALUES ('6753', '660903', 'คลองทราย   ', '756', '53', '2');
INSERT INTO `district` VALUES ('6754', '660904', 'หนองหญ้าไทร   ', '756', '53', '2');
INSERT INTO `district` VALUES ('6755', '660905', 'วังทับไทร   ', '756', '53', '2');
INSERT INTO `district` VALUES ('6756', '661001', 'ห้วยแก้ว   ', '757', '53', '2');
INSERT INTO `district` VALUES ('6757', '661002', 'โพธิ์ไทรงาม   ', '757', '53', '2');
INSERT INTO `district` VALUES ('6758', '661003', 'แหลมรัง   ', '757', '53', '2');
INSERT INTO `district` VALUES ('6759', '661004', 'บางลาย   ', '757', '53', '2');
INSERT INTO `district` VALUES ('6760', '661005', 'บึงนาราง   ', '757', '53', '2');
INSERT INTO `district` VALUES ('6761', '661101', 'วังงิ้วใต้   ', '758', '53', '2');
INSERT INTO `district` VALUES ('6762', '661102', 'วังงิ้ว   ', '758', '53', '2');
INSERT INTO `district` VALUES ('6763', '661103', 'ห้วยร่วม   ', '758', '53', '2');
INSERT INTO `district` VALUES ('6764', '661104', 'ห้วยพุก   ', '758', '53', '2');
INSERT INTO `district` VALUES ('6765', '661105', 'สำนักขุนเณร   ', '758', '53', '2');
INSERT INTO `district` VALUES ('6766', '661201', 'บ้านนา   ', '759', '53', '2');
INSERT INTO `district` VALUES ('6767', '661202', 'บึงบัว   ', '759', '53', '2');
INSERT INTO `district` VALUES ('6768', '661203', 'วังโมกข์   ', '759', '53', '2');
INSERT INTO `district` VALUES ('6769', '661204', 'หนองหลุม   ', '759', '53', '2');
INSERT INTO `district` VALUES ('6770', '670101', 'ในเมือง   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6771', '670102', 'ตะเบาะ   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6772', '670103', 'บ้านโตก   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6773', '670104', 'สะเดียง   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6774', '670105', 'ป่าเลา   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6775', '670106', 'นางั่ว   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6776', '670107', 'ท่าพล   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6777', '670108', 'ดงมูลเหล็ก   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6778', '670109', 'บ้านโคก   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6779', '670110', 'ชอนไพร   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6780', '670111', 'นาป่า   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6781', '670112', 'นายม   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6782', '670113', 'วังชมภู   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6783', '670114', 'น้ำร้อน   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6784', '670115', 'ห้วยสะแก   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6785', '670116', 'ห้วยใหญ่   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6786', '670117', 'ระวิง   ', '760', '54', '2');
INSERT INTO `district` VALUES ('6787', '670201', 'ชนแดน   ', '761', '54', '2');
INSERT INTO `district` VALUES ('6788', '670202', 'ดงขุย   ', '761', '54', '2');
INSERT INTO `district` VALUES ('6789', '670203', 'ท่าข้าม   ', '761', '54', '2');
INSERT INTO `district` VALUES ('6790', '670204', 'พุทธบาท   ', '761', '54', '2');
INSERT INTO `district` VALUES ('6791', '670205', 'ลาดแค   ', '761', '54', '2');
INSERT INTO `district` VALUES ('6792', '670206', 'บ้านกล้วย   ', '761', '54', '2');
INSERT INTO `district` VALUES ('6793', '670207', '*ซับเปิม   ', '761', '54', '2');
INSERT INTO `district` VALUES ('6794', '670208', 'ซับพุทรา   ', '761', '54', '2');
INSERT INTO `district` VALUES ('6795', '670209', 'ตะกุดไร   ', '761', '54', '2');
INSERT INTO `district` VALUES ('6796', '670210', 'ศาลาลาย   ', '761', '54', '2');
INSERT INTO `district` VALUES ('6797', '670298', '*ท้ายดง   ', '761', '54', '2');
INSERT INTO `district` VALUES ('6798', '670299', '*วังโป่ง   ', '761', '54', '2');
INSERT INTO `district` VALUES ('6799', '670301', 'หล่มสัก   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6800', '670302', 'วัดป่า   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6801', '670303', 'ตาลเดี่ยว   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6802', '670304', 'ฝายนาแซง   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6803', '670305', 'หนองสว่าง   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6804', '670306', 'น้ำเฮี้ย   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6805', '670307', 'สักหลง   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6806', '670308', 'ท่าอิบุญ   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6807', '670309', 'บ้านโสก   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6808', '670310', 'บ้านติ้ว   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6809', '670311', 'ห้วยไร่   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6810', '670312', 'น้ำก้อ   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6811', '670313', 'ปากช่อง   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6812', '670314', 'น้ำชุน   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6813', '670315', 'หนองไขว่   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6814', '670316', 'ลานบ่า   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6815', '670317', 'บุ่งคล้า   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6816', '670318', 'บุ่งน้ำเต้า   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6817', '670319', 'บ้านกลาง   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6818', '670320', 'ช้างตะลูด   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6819', '670321', 'บ้านไร่   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6820', '670322', 'ปากดุก   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6821', '670323', 'บ้านหวาย   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6822', '670399', '*แคมป์สน   ', '762', '54', '2');
INSERT INTO `district` VALUES ('6823', '670401', 'หล่มเก่า   ', '763', '54', '2');
INSERT INTO `district` VALUES ('6824', '670402', 'นาซำ   ', '763', '54', '2');
INSERT INTO `district` VALUES ('6825', '670403', 'หินฮาว   ', '763', '54', '2');
INSERT INTO `district` VALUES ('6826', '670404', 'บ้านเนิน   ', '763', '54', '2');
INSERT INTO `district` VALUES ('6827', '670405', 'ศิลา   ', '763', '54', '2');
INSERT INTO `district` VALUES ('6828', '670406', 'นาแซง   ', '763', '54', '2');
INSERT INTO `district` VALUES ('6829', '670407', 'วังบาล   ', '763', '54', '2');
INSERT INTO `district` VALUES ('6830', '670408', 'นาเกาะ   ', '763', '54', '2');
INSERT INTO `district` VALUES ('6831', '670409', 'ตาดกลอย   ', '763', '54', '2');
INSERT INTO `district` VALUES ('6832', '670499', '*น้ำหนาว   ', '763', '54', '2');
INSERT INTO `district` VALUES ('6833', '670501', 'ท่าโรง   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6834', '670502', 'สระประดู่   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6835', '670503', 'สามแยก   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6836', '670504', 'โคกปรง   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6837', '670505', 'น้ำร้อน   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6838', '670506', 'บ่อรัง   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6839', '670507', 'พุเตย   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6840', '670508', 'พุขาม   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6841', '670509', 'ภูน้ำหยด   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6842', '670510', 'ซับสมบูรณ์   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6843', '670511', 'บึงกระจับ   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6844', '670512', 'วังใหญ่   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6845', '670513', 'ยางสาว   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6846', '670514', 'ซับน้อย   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6847', '670595', '*นาสนุ่น   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6848', '670597', '*คลองกระจัง   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6849', '670598', '*สระกรวด   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6850', '670599', '*ศรีเทพ   ', '764', '54', '2');
INSERT INTO `district` VALUES ('6851', '670601', 'ศรีเทพ   ', '765', '54', '2');
INSERT INTO `district` VALUES ('6852', '670602', 'สระกรวด   ', '765', '54', '2');
INSERT INTO `district` VALUES ('6853', '670603', 'คลองกระจัง   ', '765', '54', '2');
INSERT INTO `district` VALUES ('6854', '670604', 'นาสนุ่น   ', '765', '54', '2');
INSERT INTO `district` VALUES ('6855', '670605', 'โคกสะอาด   ', '765', '54', '2');
INSERT INTO `district` VALUES ('6856', '670606', 'หนองย่างทอย   ', '765', '54', '2');
INSERT INTO `district` VALUES ('6857', '670607', 'ประดู่งาม   ', '765', '54', '2');
INSERT INTO `district` VALUES ('6858', '670701', 'กองทูล   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6859', '670702', 'นาเฉลียง   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6860', '670703', 'บ้านโภชน์   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6861', '670704', 'ท่าแดง   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6862', '670705', 'เพชรละคร   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6863', '670706', 'บ่อไทย   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6864', '670707', 'ห้วยโป่ง   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6865', '670708', 'วังท่าดี   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6866', '670709', 'บัววัฒนา   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6867', '670710', 'หนองไผ่   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6868', '670711', 'วังโบสถ์   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6869', '670712', 'ยางงาม   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6870', '670713', 'ท่าด้วง   ', '766', '54', '2');
INSERT INTO `district` VALUES ('6871', '670801', 'ซับสมอทอด   ', '767', '54', '2');
INSERT INTO `district` VALUES ('6872', '670802', 'ซับไม้แดง   ', '767', '54', '2');
INSERT INTO `district` VALUES ('6873', '670803', 'หนองแจง   ', '767', '54', '2');
INSERT INTO `district` VALUES ('6874', '670804', 'กันจุ   ', '767', '54', '2');
INSERT INTO `district` VALUES ('6875', '670805', 'วังพิกุล   ', '767', '54', '2');
INSERT INTO `district` VALUES ('6876', '670806', 'พญาวัง   ', '767', '54', '2');
INSERT INTO `district` VALUES ('6877', '670807', 'ศรีมงคล   ', '767', '54', '2');
INSERT INTO `district` VALUES ('6878', '670808', 'สระแก้ว   ', '767', '54', '2');
INSERT INTO `district` VALUES ('6879', '670809', 'บึงสามพัน   ', '767', '54', '2');
INSERT INTO `district` VALUES ('6880', '670901', 'น้ำหนาว   ', '768', '54', '2');
INSERT INTO `district` VALUES ('6881', '670902', 'หลักด่าน   ', '768', '54', '2');
INSERT INTO `district` VALUES ('6882', '670903', 'วังกวาง   ', '768', '54', '2');
INSERT INTO `district` VALUES ('6883', '670904', 'โคกมน   ', '768', '54', '2');
INSERT INTO `district` VALUES ('6884', '671001', 'วังโป่ง   ', '769', '54', '2');
INSERT INTO `district` VALUES ('6885', '671002', 'ท้ายดง   ', '769', '54', '2');
INSERT INTO `district` VALUES ('6886', '671003', 'ซับเปิบ   ', '769', '54', '2');
INSERT INTO `district` VALUES ('6887', '671004', 'วังหิน   ', '769', '54', '2');
INSERT INTO `district` VALUES ('6888', '671005', 'วังศาล   ', '769', '54', '2');
INSERT INTO `district` VALUES ('6889', '671101', 'ทุ่งสมอ   ', '770', '54', '2');
INSERT INTO `district` VALUES ('6890', '671102', 'แคมป์สน   ', '770', '54', '2');
INSERT INTO `district` VALUES ('6891', '671103', 'เขาค้อ   ', '770', '54', '2');
INSERT INTO `district` VALUES ('6892', '671104', 'ริมสีม่วง   ', '770', '54', '2');
INSERT INTO `district` VALUES ('6893', '671105', 'สะเดาะพง   ', '770', '54', '2');
INSERT INTO `district` VALUES ('6894', '671106', 'หนองแม่นา   ', '770', '54', '2');
INSERT INTO `district` VALUES ('6895', '671107', 'เข็กน้อย   ', '770', '54', '2');
INSERT INTO `district` VALUES ('6896', '700101', 'หน้าเมือง   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6897', '700102', 'เจดีย์หัก   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6898', '700103', 'ดอนตะโก   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6899', '700104', 'หนองกลางนา   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6900', '700105', 'ห้วยไผ่   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6901', '700106', 'คุ้งน้ำวน   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6902', '700107', 'คุ้งกระถิน   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6903', '700108', 'อ่างทอง   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6904', '700109', 'โคกหม้อ   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6905', '700110', 'สามเรือน   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6906', '700111', 'พิกุลทอง   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6907', '700112', 'น้ำพุ   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6908', '700113', 'ดอนแร่   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6909', '700114', 'หินกอง   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6910', '700115', 'เขาแร้ง   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6911', '700116', 'เกาะพลับพลา   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6912', '700117', 'หลุมดิน   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6913', '700118', 'บางป่า   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6914', '700119', 'พงสวาย   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6915', '700120', 'คูบัว   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6916', '700121', 'ท่าราบ   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6917', '700122', 'บ้านไร่   ', '771', '55', '4');
INSERT INTO `district` VALUES ('6918', '700201', 'จอมบึง   ', '772', '55', '4');
INSERT INTO `district` VALUES ('6919', '700202', 'ปากช่อง   ', '772', '55', '4');
INSERT INTO `district` VALUES ('6920', '700203', 'เบิกไพร   ', '772', '55', '4');
INSERT INTO `district` VALUES ('6921', '700204', 'ด่านทับตะโก   ', '772', '55', '4');
INSERT INTO `district` VALUES ('6922', '700205', 'แก้มอ้น   ', '772', '55', '4');
INSERT INTO `district` VALUES ('6923', '700206', 'รางบัว   ', '772', '55', '4');
INSERT INTO `district` VALUES ('6924', '700297', '*ป่าหวาย   ', '772', '55', '4');
INSERT INTO `district` VALUES ('6925', '700298', '*บ้านผึ้ง   ', '772', '55', '4');
INSERT INTO `district` VALUES ('6926', '700299', '*สวนผึ้ง   ', '772', '55', '4');
INSERT INTO `district` VALUES ('6927', '700301', 'สวนผึ้ง   ', '773', '55', '4');
INSERT INTO `district` VALUES ('6928', '700302', 'ป่าหวาย   ', '773', '55', '4');
INSERT INTO `district` VALUES ('6929', '700303', 'บ้านบึง*   ', '773', '55', '4');
INSERT INTO `district` VALUES ('6930', '700304', 'ท่าเคย   ', '773', '55', '4');
INSERT INTO `district` VALUES ('6931', '700305', 'บ้านคา*   ', '773', '55', '4');
INSERT INTO `district` VALUES ('6932', '700306', 'หนองพันจันทร์*   ', '773', '55', '4');
INSERT INTO `district` VALUES ('6933', '700307', 'ตะนาวศรี   ', '773', '55', '4');
INSERT INTO `district` VALUES ('6934', '700401', 'ดำเนินสะดวก   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6935', '700402', 'ประสาทสิทธิ์   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6936', '700403', 'ศรีสุราษฎร์   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6937', '700404', 'ตาหลวง   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6938', '700405', 'ดอนกรวย   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6939', '700406', 'ดอนคลัง   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6940', '700407', 'บัวงาม   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6941', '700408', 'บ้านไร่   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6942', '700409', 'แพงพวย   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6943', '700410', 'สี่หมื่น   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6944', '700411', 'ท่านัด   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6945', '700412', 'ขุนพิทักษ์   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6946', '700413', 'ดอนไผ่   ', '774', '55', '4');
INSERT INTO `district` VALUES ('6947', '700501', 'บ้านโป่ง   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6948', '700502', 'ท่าผา   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6949', '700503', 'กรับใหญ่   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6950', '700504', 'ปากแรต   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6951', '700505', 'หนองกบ   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6952', '700506', 'หนองอ้อ   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6953', '700507', 'ดอนกระเบื้อง   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6954', '700508', 'สวนกล้วย   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6955', '700509', 'นครชุมน์   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6956', '700510', 'บ้านม่วง   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6957', '700511', 'คุ้งพยอม   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6958', '700512', 'หนองปลาหมอ   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6959', '700513', 'เขาขลุง   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6960', '700514', 'เบิกไพร   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6961', '700515', 'ลาดบัวขาว   ', '775', '55', '4');
INSERT INTO `district` VALUES ('6962', '700601', 'บางแพ   ', '776', '55', '4');
INSERT INTO `district` VALUES ('6963', '700602', 'วังเย็น   ', '776', '55', '4');
INSERT INTO `district` VALUES ('6964', '700603', 'หัวโพ   ', '776', '55', '4');
INSERT INTO `district` VALUES ('6965', '700604', 'วัดแก้ว   ', '776', '55', '4');
INSERT INTO `district` VALUES ('6966', '700605', 'ดอนใหญ่   ', '776', '55', '4');
INSERT INTO `district` VALUES ('6967', '700606', 'ดอนคา   ', '776', '55', '4');
INSERT INTO `district` VALUES ('6968', '700607', 'โพหัก   ', '776', '55', '4');
INSERT INTO `district` VALUES ('6969', '700701', 'โพธาราม   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6970', '700702', 'ดอนกระเบื้อง   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6971', '700703', 'หนองโพ   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6972', '700704', 'บ้านเลือก   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6973', '700705', 'คลองตาคต   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6974', '700706', 'บ้านฆ้อง   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6975', '700707', 'บ้านสิงห์   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6976', '700708', 'ดอนทราย   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6977', '700709', 'เจ็ดเสมียน   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6978', '700710', 'คลองข่อย   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6979', '700711', 'ชำแระ   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6980', '700712', 'สร้อยฟ้า   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6981', '700713', 'ท่าชุมพล   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6982', '700714', 'บางโตนด   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6983', '700715', 'เตาปูน   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6984', '700716', 'นางแก้ว   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6985', '700717', 'ธรรมเสน   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6986', '700718', 'เขาชะงุ้ม   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6987', '700719', 'หนองกวาง   ', '777', '55', '4');
INSERT INTO `district` VALUES ('6988', '700801', 'ทุ่งหลวง   ', '778', '55', '4');
INSERT INTO `district` VALUES ('6989', '700802', 'วังมะนาว   ', '778', '55', '4');
INSERT INTO `district` VALUES ('6990', '700803', 'ดอนทราย   ', '778', '55', '4');
INSERT INTO `district` VALUES ('6991', '700804', 'หนองกระทุ่ม   ', '778', '55', '4');
INSERT INTO `district` VALUES ('6992', '700805', 'ปากท่อ   ', '778', '55', '4');
INSERT INTO `district` VALUES ('6993', '700806', 'ป่าไก่   ', '778', '55', '4');
INSERT INTO `district` VALUES ('6994', '700807', 'วัดยางงาม   ', '778', '55', '4');
INSERT INTO `district` VALUES ('6995', '700808', 'อ่างหิน   ', '778', '55', '4');
INSERT INTO `district` VALUES ('6996', '700809', 'บ่อกระดาน   ', '778', '55', '4');
INSERT INTO `district` VALUES ('6997', '700810', 'ยางหัก   ', '778', '55', '4');
INSERT INTO `district` VALUES ('6998', '700811', 'วันดาว   ', '778', '55', '4');
INSERT INTO `district` VALUES ('6999', '700812', 'ห้วยยางโทน   ', '778', '55', '4');
INSERT INTO `district` VALUES ('7000', '700901', 'เกาะศาลพระ   ', '779', '55', '4');
INSERT INTO `district` VALUES ('7001', '700902', 'จอมประทัด   ', '779', '55', '4');
INSERT INTO `district` VALUES ('7002', '700903', 'วัดเพลง   ', '779', '55', '4');
INSERT INTO `district` VALUES ('7003', '701001', 'บ้านคา   ', '780', '55', '4');
INSERT INTO `district` VALUES ('7004', '701002', 'บ้านบึง   ', '780', '55', '4');
INSERT INTO `district` VALUES ('7005', '701003', 'หนองพันจันทร์   ', '780', '55', '4');
INSERT INTO `district` VALUES ('7006', '710101', 'บ้านเหนือ   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7007', '710102', 'บ้านใต้   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7008', '710103', 'ปากแพรก   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7009', '710104', 'ท่ามะขาม   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7010', '710105', 'แก่งเสี้ยน   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7011', '710106', 'หนองบัว   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7012', '710107', 'ลาดหญ้า   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7013', '710108', 'วังด้ง   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7014', '710109', 'ช่องสะเดา   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7015', '710110', 'หนองหญ้า   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7016', '710111', 'เกาะสำโรง   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7017', '710112', '*ด่านมะขามเตี้ย   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7018', '710113', 'บ้านเก่า   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7019', '710114', '*จรเข้เผือก   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7020', '710115', '*กลอนโด   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7021', '710116', 'วังเย็น   ', '782', '56', '4');
INSERT INTO `district` VALUES ('7022', '710201', 'ลุ่มสุ่ม   ', '783', '56', '4');
INSERT INTO `district` VALUES ('7023', '710202', 'ท่าเสา   ', '783', '56', '4');
INSERT INTO `district` VALUES ('7024', '710203', 'สิงห์   ', '783', '56', '4');
INSERT INTO `district` VALUES ('7025', '710204', 'ไทรโยค   ', '783', '56', '4');
INSERT INTO `district` VALUES ('7026', '710205', 'วังกระแจะ   ', '783', '56', '4');
INSERT INTO `district` VALUES ('7027', '710206', 'ศรีมงคล   ', '783', '56', '4');
INSERT INTO `district` VALUES ('7028', '710207', 'บ้องตี้   ', '783', '56', '4');
INSERT INTO `district` VALUES ('7029', '710301', 'บ่อพลอย   ', '784', '56', '4');
INSERT INTO `district` VALUES ('7030', '710302', 'หนองกุ่ม   ', '784', '56', '4');
INSERT INTO `district` VALUES ('7031', '710303', 'หนองรี   ', '784', '56', '4');
INSERT INTO `district` VALUES ('7032', '710304', '*หนองปรือ   ', '784', '56', '4');
INSERT INTO `district` VALUES ('7033', '710305', 'หลุมรัง   ', '784', '56', '4');
INSERT INTO `district` VALUES ('7034', '710306', '*หนองปลาไหล   ', '784', '56', '4');
INSERT INTO `district` VALUES ('7035', '710307', '*สมเด็จเจริญ   ', '784', '56', '4');
INSERT INTO `district` VALUES ('7036', '710308', 'ช่องด่าน   ', '784', '56', '4');
INSERT INTO `district` VALUES ('7037', '710309', 'หนองกร่าง   ', '784', '56', '4');
INSERT INTO `district` VALUES ('7038', '710401', 'นาสวน   ', '785', '56', '4');
INSERT INTO `district` VALUES ('7039', '710402', 'ด่านแม่แฉลบ   ', '785', '56', '4');
INSERT INTO `district` VALUES ('7040', '710403', 'หนองเป็ด   ', '785', '56', '4');
INSERT INTO `district` VALUES ('7041', '710404', 'ท่ากระดาน   ', '785', '56', '4');
INSERT INTO `district` VALUES ('7042', '710405', 'เขาโจด   ', '785', '56', '4');
INSERT INTO `district` VALUES ('7043', '710406', 'แม่กระบุง   ', '785', '56', '4');
INSERT INTO `district` VALUES ('7044', '710501', 'พงตึก   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7045', '710502', 'ยางม่วง   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7046', '710503', 'ดอนชะเอม   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7047', '710504', 'ท่าไม้   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7048', '710505', 'ตะคร้ำเอน   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7049', '710506', 'ท่ามะกา   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7050', '710507', 'ท่าเรือ   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7051', '710508', 'โคกตะบอง   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7052', '710509', 'ดอนขมิ้น   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7053', '710510', 'อุโลกสี่หมื่น   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7054', '710511', 'เขาสามสิบหาบ   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7055', '710512', 'พระแท่น   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7056', '710513', 'หวายเหนียว   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7057', '710514', 'แสนตอ   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7058', '710515', 'สนามแย้   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7059', '710516', 'ท่าเสา   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7060', '710517', 'หนองลาน   ', '786', '56', '4');
INSERT INTO `district` VALUES ('7061', '710601', 'ท่าม่วง   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7062', '710602', 'วังขนาย   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7063', '710603', 'วังศาลา   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7064', '710604', 'ท่าล้อ   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7065', '710605', 'หนองขาว   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7066', '710606', 'ทุ่งทอง   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7067', '710607', 'เขาน้อย   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7068', '710608', 'ม่วงชุม   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7069', '710609', 'บ้านใหม่   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7070', '710610', 'พังตรุ   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7071', '710611', 'ท่าตะคร้อ   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7072', '710612', 'รางสาลี่   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7073', '710613', 'หนองตากยา   ', '787', '56', '4');
INSERT INTO `district` VALUES ('7074', '710701', 'ท่าขนุน   ', '788', '56', '4');
INSERT INTO `district` VALUES ('7075', '710702', 'ปิล๊อก   ', '788', '56', '4');
INSERT INTO `district` VALUES ('7076', '710703', 'หินดาด   ', '788', '56', '4');
INSERT INTO `district` VALUES ('7077', '710704', 'ลิ่นถิ่น   ', '788', '56', '4');
INSERT INTO `district` VALUES ('7078', '710705', 'ชะแล   ', '788', '56', '4');
INSERT INTO `district` VALUES ('7079', '710706', 'ห้วยเขย่ง   ', '788', '56', '4');
INSERT INTO `district` VALUES ('7080', '710707', 'สหกรณ์นิคม   ', '788', '56', '4');
INSERT INTO `district` VALUES ('7081', '710801', 'หนองลู   ', '789', '56', '4');
INSERT INTO `district` VALUES ('7082', '710802', 'ปรังเผล   ', '789', '56', '4');
INSERT INTO `district` VALUES ('7083', '710803', 'ไล่โว่   ', '789', '56', '4');
INSERT INTO `district` VALUES ('7084', '710901', 'พนมทวน   ', '790', '56', '4');
INSERT INTO `district` VALUES ('7085', '710902', 'หนองโรง   ', '790', '56', '4');
INSERT INTO `district` VALUES ('7086', '710903', 'ทุ่งสมอ   ', '790', '56', '4');
INSERT INTO `district` VALUES ('7087', '710904', 'ดอนเจดีย์   ', '790', '56', '4');
INSERT INTO `district` VALUES ('7088', '710905', 'พังตรุ   ', '790', '56', '4');
INSERT INTO `district` VALUES ('7089', '710906', 'รางหวาย   ', '790', '56', '4');
INSERT INTO `district` VALUES ('7090', '710907', '*ดอนแสลบ   ', '790', '56', '4');
INSERT INTO `district` VALUES ('7091', '710908', '*ห้วยกระเจา   ', '790', '56', '4');
INSERT INTO `district` VALUES ('7092', '710909', '*สระลงเรือ   ', '790', '56', '4');
INSERT INTO `district` VALUES ('7093', '710910', '*วังไผ่   ', '790', '56', '4');
INSERT INTO `district` VALUES ('7094', '710911', 'หนองสาหร่าย   ', '790', '56', '4');
INSERT INTO `district` VALUES ('7095', '710912', 'ดอนตาเพชร   ', '790', '56', '4');
INSERT INTO `district` VALUES ('7096', '711001', 'เลาขวัญ   ', '791', '56', '4');
INSERT INTO `district` VALUES ('7097', '711002', 'หนองโสน   ', '791', '56', '4');
INSERT INTO `district` VALUES ('7098', '711003', 'หนองประดู่   ', '791', '56', '4');
INSERT INTO `district` VALUES ('7099', '711004', 'หนองปลิง   ', '791', '56', '4');
INSERT INTO `district` VALUES ('7100', '711005', 'หนองนกแก้ว   ', '791', '56', '4');
INSERT INTO `district` VALUES ('7101', '711006', 'ทุ่งกระบ่ำ   ', '791', '56', '4');
INSERT INTO `district` VALUES ('7102', '711007', 'หนองฝ้าย   ', '791', '56', '4');
INSERT INTO `district` VALUES ('7103', '711101', 'ด่านมะขามเตี้ย   ', '792', '56', '4');
INSERT INTO `district` VALUES ('7104', '711102', 'กลอนโด   ', '792', '56', '4');
INSERT INTO `district` VALUES ('7105', '711103', 'จรเข้เผือก   ', '792', '56', '4');
INSERT INTO `district` VALUES ('7106', '711104', 'หนองไผ่   ', '792', '56', '4');
INSERT INTO `district` VALUES ('7107', '711201', 'หนองปรือ   ', '793', '56', '4');
INSERT INTO `district` VALUES ('7108', '711202', 'หนองปลาไหล   ', '793', '56', '4');
INSERT INTO `district` VALUES ('7109', '711203', 'สมเด็จเจริญ   ', '793', '56', '4');
INSERT INTO `district` VALUES ('7110', '711301', 'ห้วยกระเจา   ', '794', '56', '4');
INSERT INTO `district` VALUES ('7111', '711302', 'วังไผ่   ', '794', '56', '4');
INSERT INTO `district` VALUES ('7112', '711303', 'ดอนแสลบ   ', '794', '56', '4');
INSERT INTO `district` VALUES ('7113', '711304', 'สระลงเรือ   ', '794', '56', '4');
INSERT INTO `district` VALUES ('7114', '720101', 'ท่าพี่เลี้ยง   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7115', '720102', 'รั้วใหญ่   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7116', '720103', 'ทับตีเหล็ก   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7117', '720104', 'ท่าระหัด   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7118', '720105', 'ไผ่ขวาง   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7119', '720106', 'โคกโคเฒ่า   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7120', '720107', 'ดอนตาล   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7121', '720108', 'ดอนมะสังข์   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7122', '720109', 'พิหารแดง   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7123', '720110', 'ดอนกำยาน   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7124', '720111', 'ดอนโพธิ์ทอง   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7125', '720112', 'บ้านโพธิ์   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7126', '720113', 'สระแก้ว   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7127', '720114', 'ตลิ่งชัน   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7128', '720115', 'บางกุ้ง   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7129', '720116', 'ศาลาขาว   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7130', '720117', 'สวนแตง   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7131', '720118', 'สนามชัย   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7132', '720119', 'โพธิ์พระยา   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7133', '720120', 'สนามคลี   ', '797', '57', '2');
INSERT INTO `district` VALUES ('7134', '720201', 'เขาพระ   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7135', '720202', 'เดิมบาง   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7136', '720203', 'นางบวช   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7137', '720204', 'เขาดิน   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7138', '720205', 'ปากน้ำ   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7139', '720206', 'ทุ่งคลี   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7140', '720207', 'โคกช้าง   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7141', '720208', 'หัวเขา   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7142', '720209', 'หัวนา   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7143', '720210', 'บ่อกรุ   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7144', '720211', 'วังศรีราช   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7145', '720212', 'ป่าสะแก   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7146', '720213', 'ยางนอน   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7147', '720214', 'หนองกระทุ่ม   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7148', '720296', '*องค์พระ   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7149', '720297', '*ห้วยขมิ้น   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7150', '720298', '*ด่านช้าง   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7151', '720299', '*หนองมะค่าโมง   ', '798', '57', '2');
INSERT INTO `district` VALUES ('7152', '720301', 'หนองมะค่าโมง   ', '799', '57', '2');
INSERT INTO `district` VALUES ('7153', '720302', 'ด่านช้าง   ', '799', '57', '2');
INSERT INTO `district` VALUES ('7154', '720303', 'ห้วยขมิ้น   ', '799', '57', '2');
INSERT INTO `district` VALUES ('7155', '720304', 'องค์พระ   ', '799', '57', '2');
INSERT INTO `district` VALUES ('7156', '720305', 'วังคัน   ', '799', '57', '2');
INSERT INTO `district` VALUES ('7157', '720306', 'นิคมกระเสียว   ', '799', '57', '2');
INSERT INTO `district` VALUES ('7158', '720307', 'วังยาว   ', '799', '57', '2');
INSERT INTO `district` VALUES ('7159', '720401', 'โคกคราม   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7160', '720402', 'บางปลาม้า   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7161', '720403', 'ตะค่า   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7162', '720404', 'บางใหญ่   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7163', '720405', 'กฤษณา   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7164', '720406', 'สาลี   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7165', '720407', 'ไผ่กองดิน   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7166', '720408', 'องครักษ์   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7167', '720409', 'จรเข้ใหญ่   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7168', '720410', 'บ้านแหลม   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7169', '720411', 'มะขามล้ม   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7170', '720412', 'วังน้ำเย็น   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7171', '720413', 'วัดโบสถ์   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7172', '720414', 'วัดดาว   ', '800', '57', '2');
INSERT INTO `district` VALUES ('7173', '720501', 'ศรีประจันต์   ', '801', '57', '2');
INSERT INTO `district` VALUES ('7174', '720502', 'บ้านกร่าง   ', '801', '57', '2');
INSERT INTO `district` VALUES ('7175', '720503', 'มดแดง   ', '801', '57', '2');
INSERT INTO `district` VALUES ('7176', '720504', 'บางงาม   ', '801', '57', '2');
INSERT INTO `district` VALUES ('7177', '720505', 'ดอนปรู   ', '801', '57', '2');
INSERT INTO `district` VALUES ('7178', '720506', 'ปลายนา   ', '801', '57', '2');
INSERT INTO `district` VALUES ('7179', '720507', 'วังหว้า   ', '801', '57', '2');
INSERT INTO `district` VALUES ('7180', '720508', 'วังน้ำซับ   ', '801', '57', '2');
INSERT INTO `district` VALUES ('7181', '720509', 'วังยาง   ', '801', '57', '2');
INSERT INTO `district` VALUES ('7182', '720601', 'ดอนเจดีย์   ', '802', '57', '2');
INSERT INTO `district` VALUES ('7183', '720602', 'หนองสาหร่าย   ', '802', '57', '2');
INSERT INTO `district` VALUES ('7184', '720603', 'ไร่รถ   ', '802', '57', '2');
INSERT INTO `district` VALUES ('7185', '720604', 'สระกระโจม   ', '802', '57', '2');
INSERT INTO `district` VALUES ('7186', '720605', 'ทะเลบก   ', '802', '57', '2');
INSERT INTO `district` VALUES ('7187', '720701', 'สองพี่น้อง   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7188', '720702', 'บางเลน   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7189', '720703', 'บางตาเถร   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7190', '720704', 'บางตะเคียน   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7191', '720705', 'บ้านกุ่ม   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7192', '720706', 'หัวโพธิ์   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7193', '720707', 'บางพลับ   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7194', '720708', 'เนินพระปรางค์   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7195', '720709', 'บ้านช้าง   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7196', '720710', 'ต้นตาล   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7197', '720711', 'ศรีสำราญ   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7198', '720712', 'ทุ่งคอก   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7199', '720713', 'หนองบ่อ   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7200', '720714', 'บ่อสุพรรณ   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7201', '720715', 'ดอนมะนาว   ', '803', '57', '2');
INSERT INTO `district` VALUES ('7202', '720801', 'ย่านยาว   ', '804', '57', '2');
INSERT INTO `district` VALUES ('7203', '720802', 'วังลึก   ', '804', '57', '2');
INSERT INTO `district` VALUES ('7204', '720803', 'สามชุก   ', '804', '57', '2');
INSERT INTO `district` VALUES ('7205', '720804', 'หนองผักนาก   ', '804', '57', '2');
INSERT INTO `district` VALUES ('7206', '720805', 'บ้านสระ   ', '804', '57', '2');
INSERT INTO `district` VALUES ('7207', '720806', 'หนองสะเดา   ', '804', '57', '2');
INSERT INTO `district` VALUES ('7208', '720807', 'กระเสียว   ', '804', '57', '2');
INSERT INTO `district` VALUES ('7209', '720896', '*แจงงาม   ', '804', '57', '2');
INSERT INTO `district` VALUES ('7210', '720897', '*หนองโพธิ์   ', '804', '57', '2');
INSERT INTO `district` VALUES ('7211', '720898', '*หนองราชวัตร   ', '804', '57', '2');
INSERT INTO `district` VALUES ('7212', '720899', '*หนองหญ้าไซ   ', '804', '57', '2');
INSERT INTO `district` VALUES ('7213', '720901', 'อู่ทอง   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7214', '720902', 'สระยายโสม   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7215', '720903', 'จรเข้สามพัน   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7216', '720904', 'บ้านดอน   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7217', '720905', 'ยุ้งทะลาย   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7218', '720906', 'ดอนมะเกลือ   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7219', '720907', 'หนองโอ่ง   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7220', '720908', 'ดอนคา   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7221', '720909', 'พลับพลาไชย   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7222', '720910', 'บ้านโข้ง   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7223', '720911', 'เจดีย์   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7224', '720912', 'สระพังลาน   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7225', '720913', 'กระจัน   ', '805', '57', '2');
INSERT INTO `district` VALUES ('7226', '721001', 'หนองหญ้าไซ   ', '806', '57', '2');
INSERT INTO `district` VALUES ('7227', '721002', 'หนองราชวัตร   ', '806', '57', '2');
INSERT INTO `district` VALUES ('7228', '721003', 'หนองโพธิ์   ', '806', '57', '2');
INSERT INTO `district` VALUES ('7229', '721004', 'แจงงาม   ', '806', '57', '2');
INSERT INTO `district` VALUES ('7230', '721005', 'หนองขาม   ', '806', '57', '2');
INSERT INTO `district` VALUES ('7231', '721006', 'ทัพหลวง   ', '806', '57', '2');
INSERT INTO `district` VALUES ('7232', '730101', 'พระปฐมเจดีย์   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7233', '730102', 'บางแขม   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7234', '730103', 'พระประโทน   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7235', '730104', 'ธรรมศาลา   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7236', '730105', 'ตาก้อง   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7237', '730106', 'มาบแค   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7238', '730107', 'สนามจันทร์   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7239', '730108', 'ดอนยายหอม   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7240', '730109', 'ถนนขาด   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7241', '730110', 'บ่อพลับ   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7242', '730111', 'นครปฐม   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7243', '730112', 'วังตะกู   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7244', '730113', 'หนองปากโลง   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7245', '730114', 'สามควายเผือก   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7246', '730115', 'ทุ่งน้อย   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7247', '730116', 'หนองดินแดง   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7248', '730117', 'วังเย็น   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7249', '730118', 'โพรงมะเดื่อ   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7250', '730119', 'ลำพยา   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7251', '730120', 'สระกะเทียม   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7252', '730121', 'สวนป่าน   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7253', '730122', 'ห้วยจรเข้   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7254', '730123', 'ทัพหลวง   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7255', '730124', 'หนองงูเหลือม   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7256', '730125', 'บ้านยาง   ', '807', '58', '2');
INSERT INTO `district` VALUES ('7257', '730201', 'ทุ่งกระพังโหม   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7258', '730202', 'กระตีบ   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7259', '730203', 'ทุ่งลูกนก   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7260', '730204', 'ห้วยขวาง   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7261', '730205', 'ทุ่งขวาง   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7262', '730206', 'สระสี่มุม   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7263', '730207', 'ทุ่งบัว   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7264', '730208', 'ดอนข่อย   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7265', '730209', 'สระพัฒนา   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7266', '730210', 'ห้วยหมอนทอง   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7267', '730211', 'ห้วยม่วง   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7268', '730212', 'กำแพงแสน   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7269', '730213', 'รางพิกุล   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7270', '730214', 'หนองกระทุ่ม   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7271', '730215', 'วังน้ำเขียว   ', '808', '58', '2');
INSERT INTO `district` VALUES ('7272', '730301', 'นครชัยศรี   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7273', '730302', 'บางกระเบา   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7274', '730303', 'วัดแค   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7275', '730304', 'ท่าตำหนัก   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7276', '730305', 'บางแก้ว   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7277', '730306', 'ท่ากระชับ   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7278', '730307', 'ขุนแก้ว   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7279', '730308', 'ท่าพระยา   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7280', '730309', 'พะเนียด   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7281', '730310', 'บางระกำ   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7282', '730311', 'โคกพระเจดีย์   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7283', '730312', 'ศรีษะทอง   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7284', '730313', 'แหลมบัว   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7285', '730314', 'ศรีมหาโพธิ์   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7286', '730315', 'สัมปทวน   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7287', '730316', 'วัดสำโรง   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7288', '730317', 'ดอนแฝก   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7289', '730318', 'ห้วยพลู   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7290', '730319', 'วัดละมุด   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7291', '730320', 'บางพระ   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7292', '730321', 'บางแก้วฟ้า   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7293', '730322', 'ลานตากฟ้า   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7294', '730323', 'งิ้วราย   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7295', '730324', 'ไทยาวาส   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7296', '730325', '*ศาลายา   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7297', '730326', '*มหาสวัสดิ์   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7298', '730327', '*คลองโยง   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7299', '730397', '*มหาสวัสดิ์   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7300', '730398', '*คลองโยง   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7301', '730399', '*ศาลายา   ', '809', '58', '2');
INSERT INTO `district` VALUES ('7302', '730401', 'สามง่าม   ', '810', '58', '2');
INSERT INTO `district` VALUES ('7303', '730402', 'ห้วยพระ   ', '810', '58', '2');
INSERT INTO `district` VALUES ('7304', '730403', 'ลำเหย   ', '810', '58', '2');
INSERT INTO `district` VALUES ('7305', '730404', 'ดอนพุทรา   ', '810', '58', '2');
INSERT INTO `district` VALUES ('7306', '730405', 'บ้านหลวง   ', '810', '58', '2');
INSERT INTO `district` VALUES ('7307', '730406', 'ดอนรวก   ', '810', '58', '2');
INSERT INTO `district` VALUES ('7308', '730407', 'ห้วยด้วน   ', '810', '58', '2');
INSERT INTO `district` VALUES ('7309', '730408', 'ลำลูกบัว   ', '810', '58', '2');
INSERT INTO `district` VALUES ('7310', '730501', 'บางเลน   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7311', '730502', 'บางปลา   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7312', '730503', 'บางหลวง   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7313', '730504', 'บางภาษี   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7314', '730505', 'บางระกำ   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7315', '730506', 'บางไทรป่า   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7316', '730507', 'หินมูล   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7317', '730508', 'ไทรงาม   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7318', '730509', 'ดอนตูม   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7319', '730510', 'นิลเพชร   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7320', '730511', 'บัวปากท่า   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7321', '730512', 'คลองนกกระทุง   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7322', '730513', 'นราภิรมย์   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7323', '730514', 'ลำพญา   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7324', '730515', 'ไผ่หูช้าง   ', '811', '58', '2');
INSERT INTO `district` VALUES ('7325', '730601', 'ท่าข้าม   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7326', '730602', 'ทรงคนอง   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7327', '730603', 'หอมเกร็ด   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7328', '730604', 'บางกระทึก   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7329', '730605', 'บางเตย   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7330', '730606', 'สามพราน   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7331', '730607', 'บางช้าง   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7332', '730608', 'ไร่ขิง   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7333', '730609', 'ท่าตลาด   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7334', '730610', 'กระทุ่มล้ม   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7335', '730611', 'คลองใหม่   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7336', '730612', 'ตลาดจินดา   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7337', '730613', 'คลองจินดา   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7338', '730614', 'ยายชา   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7339', '730615', 'บ้านใหม่   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7340', '730616', 'อ้อมใหญ่   ', '812', '58', '2');
INSERT INTO `district` VALUES ('7341', '730701', 'ศาลายา   ', '813', '58', '2');
INSERT INTO `district` VALUES ('7342', '730702', 'คลองโยง   ', '813', '58', '2');
INSERT INTO `district` VALUES ('7343', '730703', 'มหาสวัสดิ์   ', '813', '58', '2');
INSERT INTO `district` VALUES ('7344', '740101', 'มหาชัย   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7345', '740102', 'ท่าฉลอม   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7346', '740103', 'โกรกกราก   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7347', '740104', 'บ้านบ่อ   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7348', '740105', 'บางโทรัด   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7349', '740106', 'กาหลง   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7350', '740107', 'นาโคก   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7351', '740108', 'ท่าจีน   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7352', '740109', 'นาดี   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7353', '740110', 'ท่าทราย   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7354', '740111', 'คอกกระบือ   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7355', '740112', 'บางน้ำจืด   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7356', '740113', 'พันท้ายนรสิงห์   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7357', '740114', 'โคกขาม   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7358', '740115', 'บ้านเกาะ   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7359', '740116', 'บางกระเจ้า   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7360', '740117', 'บางหญ้าแพรก   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7361', '740118', 'ชัยมงคล   ', '814', '59', '2');
INSERT INTO `district` VALUES ('7362', '740201', 'ตลาดกระทุ่มแบน   ', '815', '59', '2');
INSERT INTO `district` VALUES ('7363', '740202', 'อ้อมน้อย   ', '815', '59', '2');
INSERT INTO `district` VALUES ('7364', '740203', 'ท่าไม้   ', '815', '59', '2');
INSERT INTO `district` VALUES ('7365', '740204', 'สวนหลวง   ', '815', '59', '2');
INSERT INTO `district` VALUES ('7366', '740205', 'บางยาง   ', '815', '59', '2');
INSERT INTO `district` VALUES ('7367', '740206', 'คลองมะเดื่อ   ', '815', '59', '2');
INSERT INTO `district` VALUES ('7368', '740207', 'หนองนกไข่   ', '815', '59', '2');
INSERT INTO `district` VALUES ('7369', '740208', 'ดอนไก่ดี   ', '815', '59', '2');
INSERT INTO `district` VALUES ('7370', '740209', 'แคราย   ', '815', '59', '2');
INSERT INTO `district` VALUES ('7371', '740210', 'ท่าเสา   ', '815', '59', '2');
INSERT INTO `district` VALUES ('7372', '740301', 'บ้านแพ้ว   ', '816', '59', '2');
INSERT INTO `district` VALUES ('7373', '740302', 'หลักสาม   ', '816', '59', '2');
INSERT INTO `district` VALUES ('7374', '740303', 'ยกกระบัตร   ', '816', '59', '2');
INSERT INTO `district` VALUES ('7375', '740304', 'โรงเข้   ', '816', '59', '2');
INSERT INTO `district` VALUES ('7376', '740305', 'หนองสองห้อง   ', '816', '59', '2');
INSERT INTO `district` VALUES ('7377', '740306', 'หนองบัว   ', '816', '59', '2');
INSERT INTO `district` VALUES ('7378', '740307', 'หลักสอง   ', '816', '59', '2');
INSERT INTO `district` VALUES ('7379', '740308', 'เจ็ดริ้ว   ', '816', '59', '2');
INSERT INTO `district` VALUES ('7380', '740309', 'คลองตัน   ', '816', '59', '2');
INSERT INTO `district` VALUES ('7381', '740310', 'อำแพง   ', '816', '59', '2');
INSERT INTO `district` VALUES ('7382', '740311', 'สวนส้ม   ', '816', '59', '2');
INSERT INTO `district` VALUES ('7383', '740312', 'เกษตรพัฒนา   ', '816', '59', '2');
INSERT INTO `district` VALUES ('7384', '750101', 'แม่กลอง   ', '817', '60', '2');
INSERT INTO `district` VALUES ('7385', '750102', 'บางขันแตก   ', '817', '60', '2');
INSERT INTO `district` VALUES ('7386', '750103', 'ลาดใหญ่   ', '817', '60', '2');
INSERT INTO `district` VALUES ('7387', '750104', 'บ้านปรก   ', '817', '60', '2');
INSERT INTO `district` VALUES ('7388', '750105', 'บางแก้ว   ', '817', '60', '2');
INSERT INTO `district` VALUES ('7389', '750106', 'ท้ายหาด   ', '817', '60', '2');
INSERT INTO `district` VALUES ('7390', '750107', 'แหลมใหญ่   ', '817', '60', '2');
INSERT INTO `district` VALUES ('7391', '750108', 'คลองเขิน   ', '817', '60', '2');
INSERT INTO `district` VALUES ('7392', '750109', 'คลองโคน   ', '817', '60', '2');
INSERT INTO `district` VALUES ('7393', '750110', 'นางตะเคียน   ', '817', '60', '2');
INSERT INTO `district` VALUES ('7394', '750111', 'บางจะเกร็ง   ', '817', '60', '2');
INSERT INTO `district` VALUES ('7395', '750201', 'กระดังงา   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7396', '750202', 'บางสะแก   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7397', '750203', 'บางยี่รงค์   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7398', '750204', 'โรงหีบ   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7399', '750205', 'บางคนที   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7400', '750206', 'ดอนมะโนรา   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7401', '750207', 'บางพรม   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7402', '750208', 'บางกุ้ง   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7403', '750209', 'จอมปลวก   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7404', '750210', 'บางนกแขวก   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7405', '750211', 'ยายแพง   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7406', '750212', 'บางกระบือ   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7407', '750213', 'บ้านปราโมทย์   ', '818', '60', '2');
INSERT INTO `district` VALUES ('7408', '750301', 'อัมพวา   ', '819', '60', '2');
INSERT INTO `district` VALUES ('7409', '750302', 'สวนหลวง   ', '819', '60', '2');
INSERT INTO `district` VALUES ('7410', '750303', 'ท่าคา   ', '819', '60', '2');
INSERT INTO `district` VALUES ('7411', '750304', 'วัดประดู่   ', '819', '60', '2');
INSERT INTO `district` VALUES ('7412', '750305', 'เหมืองใหม่   ', '819', '60', '2');
INSERT INTO `district` VALUES ('7413', '750306', 'บางช้าง   ', '819', '60', '2');
INSERT INTO `district` VALUES ('7414', '750307', 'แควอ้อม   ', '819', '60', '2');
INSERT INTO `district` VALUES ('7415', '750308', 'ปลายโพงพาง   ', '819', '60', '2');
INSERT INTO `district` VALUES ('7416', '750309', 'บางแค   ', '819', '60', '2');
INSERT INTO `district` VALUES ('7417', '750310', 'แพรกหนามแดง   ', '819', '60', '2');
INSERT INTO `district` VALUES ('7418', '750311', 'ยี่สาร   ', '819', '60', '2');
INSERT INTO `district` VALUES ('7419', '750312', 'บางนางลี่   ', '819', '60', '2');
INSERT INTO `district` VALUES ('7420', '760101', 'ท่าราบ   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7421', '760102', 'คลองกระแชง   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7422', '760103', 'บางจาน   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7423', '760104', 'นาพันสาม   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7424', '760105', 'ธงชัย   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7425', '760106', 'บ้านกุ่ม   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7426', '760107', 'หนองโสน   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7427', '760108', 'ไร่ส้ม   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7428', '760109', 'เวียงคอย   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7429', '760110', 'บางจาก   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7430', '760111', 'บ้านหม้อ   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7431', '760112', 'ต้นมะม่วง   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7432', '760113', 'ช่องสะแก   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7433', '760114', 'นาวุ้ง   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7434', '760115', 'สำมะโรง   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7435', '760116', 'โพพระ   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7436', '760117', 'หาดเจ้าสำราญ   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7437', '760118', 'หัวสะพาน   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7438', '760119', 'ต้นมะพร้าว   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7439', '760120', 'วังตะโก   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7440', '760121', 'โพไร่หวาน   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7441', '760122', 'ดอนยาง   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7442', '760123', 'หนองขนาน   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7443', '760124', 'หนองพลับ   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7444', '760199', '*มาตยาวงศ์   ', '820', '61', '4');
INSERT INTO `district` VALUES ('7445', '760201', 'เขาย้อย   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7446', '760202', 'สระพัง   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7447', '760203', 'บางเค็ม   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7448', '760204', 'ทับคาง   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7449', '760205', 'หนองปลาไหล   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7450', '760206', 'หนองปรง   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7451', '760207', 'หนองชุมพล   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7452', '760208', 'ห้วยโรง   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7453', '760209', 'ห้วยท่าช้าง   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7454', '760210', 'หนองชุมพลเหนือ   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7455', '760297', '*ยางน้ำกลักใต้   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7456', '760298', '*ยางน้ำกลักเหนือ   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7457', '760299', '*หนองหญ้าปล้อง   ', '821', '61', '4');
INSERT INTO `district` VALUES ('7458', '760301', 'หนองหญ้าปล้อง   ', '822', '61', '4');
INSERT INTO `district` VALUES ('7459', '760302', 'ยางน้ำกลัดเหนือ   ', '822', '61', '4');
INSERT INTO `district` VALUES ('7460', '760303', 'ยางน้ำกลัดใต้   ', '822', '61', '4');
INSERT INTO `district` VALUES ('7461', '760304', 'ท่าตะคร้อ   ', '822', '61', '4');
INSERT INTO `district` VALUES ('7462', '760401', 'ชะอำ   ', '823', '61', '4');
INSERT INTO `district` VALUES ('7463', '760402', 'บางเก่า   ', '823', '61', '4');
INSERT INTO `district` VALUES ('7464', '760403', 'นายาง   ', '823', '61', '4');
INSERT INTO `district` VALUES ('7465', '760404', 'เขาใหญ่   ', '823', '61', '4');
INSERT INTO `district` VALUES ('7466', '760405', 'หนองศาลา   ', '823', '61', '4');
INSERT INTO `district` VALUES ('7467', '760406', 'ห้วยทรายเหนือ   ', '823', '61', '4');
INSERT INTO `district` VALUES ('7468', '760407', 'ไร่ใหม่พัฒนา   ', '823', '61', '4');
INSERT INTO `district` VALUES ('7469', '760408', 'สามพระยา   ', '823', '61', '4');
INSERT INTO `district` VALUES ('7470', '760409', 'ดอนขุนห้วย   ', '823', '61', '4');
INSERT INTO `district` VALUES ('7471', '760501', 'ท่ายาง   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7472', '760502', 'ท่าคอย   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7473', '760503', 'ยางหย่อง   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7474', '760504', 'หนองจอก   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7475', '760505', 'มาบปลาเค้า   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7476', '760506', 'ท่าไม้รวก   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7477', '760507', 'วังไคร้   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7478', '760508', '*วังจันทร์   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7479', '760509', '*สองพี่น้อง   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7480', '760510', '*แก่งกระจาน   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7481', '760511', 'กลัดหลวง   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7482', '760512', 'ปึกเตียน   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7483', '760513', 'เขากระปุก   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7484', '760514', 'ท่าแลง   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7485', '760515', 'บ้านในดง   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7486', '760594', '*สระปลาดู่   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7487', '760595', '*บางเมือง   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7488', '760596', '*นาไพร   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7489', '760597', '*วังจันทร์   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7490', '760598', '*สองพี่น้อง   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7491', '760599', '*แก่งกระจาน   ', '824', '61', '4');
INSERT INTO `district` VALUES ('7492', '760601', 'บ้านลาด   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7493', '760602', 'บ้านหาด   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7494', '760603', 'บ้านทาน   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7495', '760604', 'ตำหรุ   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7496', '760605', 'สมอพลือ   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7497', '760606', 'ไร่มะขาม   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7498', '760607', 'ท่าเสน   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7499', '760608', 'หนองกระเจ็ด   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7500', '760609', 'หนองกะปุ   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7501', '760610', 'ลาดโพธิ์   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7502', '760611', 'สะพานไกร   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7503', '760612', 'ไร่โคก   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7504', '760613', 'โรงเข้   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7505', '760614', 'ไร่สะท้อน   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7506', '760615', 'ห้วยข้อง   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7507', '760616', 'ท่าช้าง   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7508', '760617', 'ถ้ำรงค์   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7509', '760618', 'ห้วยลึก   ', '825', '61', '4');
INSERT INTO `district` VALUES ('7510', '760701', 'บ้านแหลม   ', '826', '61', '4');
INSERT INTO `district` VALUES ('7511', '760702', 'บางขุนไทร   ', '826', '61', '4');
INSERT INTO `district` VALUES ('7512', '760703', 'ปากทะเล   ', '826', '61', '4');
INSERT INTO `district` VALUES ('7513', '760704', 'บางแก้ว   ', '826', '61', '4');
INSERT INTO `district` VALUES ('7514', '760705', 'แหลมผักเบี้ย   ', '826', '61', '4');
INSERT INTO `district` VALUES ('7515', '760706', 'บางตะบูน   ', '826', '61', '4');
INSERT INTO `district` VALUES ('7516', '760707', 'บางตะบูนออก   ', '826', '61', '4');
INSERT INTO `district` VALUES ('7517', '760708', 'บางครก   ', '826', '61', '4');
INSERT INTO `district` VALUES ('7518', '760709', 'ท่าแร้ง   ', '826', '61', '4');
INSERT INTO `district` VALUES ('7519', '760710', 'ท่าแร้งออก   ', '826', '61', '4');
INSERT INTO `district` VALUES ('7520', '760801', 'แก่งกระจาน   ', '827', '61', '4');
INSERT INTO `district` VALUES ('7521', '760802', 'สองพี่น้อง   ', '827', '61', '4');
INSERT INTO `district` VALUES ('7522', '760803', 'วังจันทร์   ', '827', '61', '4');
INSERT INTO `district` VALUES ('7523', '760804', 'ป่าเด็ง   ', '827', '61', '4');
INSERT INTO `district` VALUES ('7524', '760805', 'พุสวรรค์   ', '827', '61', '4');
INSERT INTO `district` VALUES ('7525', '760806', 'ห้วยแม่เพรียง   ', '827', '61', '4');
INSERT INTO `district` VALUES ('7526', '770101', 'ประจวบคีรีขันธ์   ', '828', '62', '4');
INSERT INTO `district` VALUES ('7527', '770102', 'เกาะหลัก   ', '828', '62', '4');
INSERT INTO `district` VALUES ('7528', '770103', 'คลองวาฬ   ', '828', '62', '4');
INSERT INTO `district` VALUES ('7529', '770104', 'ห้วยทราย   ', '828', '62', '4');
INSERT INTO `district` VALUES ('7530', '770105', 'อ่าวน้อย   ', '828', '62', '4');
INSERT INTO `district` VALUES ('7531', '770106', 'บ่อนอก   ', '828', '62', '4');
INSERT INTO `district` VALUES ('7532', '770201', 'กุยบุรี   ', '829', '62', '4');
INSERT INTO `district` VALUES ('7533', '770202', 'กุยเหนือ   ', '829', '62', '4');
INSERT INTO `district` VALUES ('7534', '770203', 'เขาแดง   ', '829', '62', '4');
INSERT INTO `district` VALUES ('7535', '770204', 'ดอนยายหนู   ', '829', '62', '4');
INSERT INTO `district` VALUES ('7536', '770205', 'ไร่ใหม่*   ', '829', '62', '4');
INSERT INTO `district` VALUES ('7537', '770206', 'สามกระทาย   ', '829', '62', '4');
INSERT INTO `district` VALUES ('7538', '770207', 'หาดขาม   ', '829', '62', '4');
INSERT INTO `district` VALUES ('7539', '770301', 'ทับสะแก   ', '830', '62', '4');
INSERT INTO `district` VALUES ('7540', '770302', 'อ่างทอง   ', '830', '62', '4');
INSERT INTO `district` VALUES ('7541', '770303', 'นาหูกวาง   ', '830', '62', '4');
INSERT INTO `district` VALUES ('7542', '770304', 'เขาล้าน   ', '830', '62', '4');
INSERT INTO `district` VALUES ('7543', '770305', 'ห้วยยาง   ', '830', '62', '4');
INSERT INTO `district` VALUES ('7544', '770306', 'แสงอรุณ   ', '830', '62', '4');
INSERT INTO `district` VALUES ('7545', '770401', 'กำเนิดนพคุณ   ', '831', '62', '4');
INSERT INTO `district` VALUES ('7546', '770402', 'พงศ์ประศาสน์   ', '831', '62', '4');
INSERT INTO `district` VALUES ('7547', '770403', 'ร่อนทอง   ', '831', '62', '4');
INSERT INTO `district` VALUES ('7548', '770404', 'ธงชัย   ', '831', '62', '4');
INSERT INTO `district` VALUES ('7549', '770405', 'ชัยเกษม   ', '831', '62', '4');
INSERT INTO `district` VALUES ('7550', '770406', 'ทองมงคล   ', '831', '62', '4');
INSERT INTO `district` VALUES ('7551', '770407', 'แม่รำพึง   ', '831', '62', '4');
INSERT INTO `district` VALUES ('7552', '770501', 'ปากแพรก   ', '832', '62', '4');
INSERT INTO `district` VALUES ('7553', '770502', 'บางสะพาน   ', '832', '62', '4');
INSERT INTO `district` VALUES ('7554', '770503', 'ทรายทอง   ', '832', '62', '4');
INSERT INTO `district` VALUES ('7555', '770504', 'ช้างแรก   ', '832', '62', '4');
INSERT INTO `district` VALUES ('7556', '770505', 'ไชยราช   ', '832', '62', '4');
INSERT INTO `district` VALUES ('7557', '770601', 'ปราณบุรี   ', '833', '62', '4');
INSERT INTO `district` VALUES ('7558', '770602', 'เขาน้อย   ', '833', '62', '4');
INSERT INTO `district` VALUES ('7559', '770603', '*ศิลาลอย   ', '833', '62', '4');
INSERT INTO `district` VALUES ('7560', '770604', 'ปากน้ำปราณ   ', '833', '62', '4');
INSERT INTO `district` VALUES ('7561', '770605', '*สามร้อยยอด   ', '833', '62', '4');
INSERT INTO `district` VALUES ('7562', '770606', '*ไร่เก่า   ', '833', '62', '4');
INSERT INTO `district` VALUES ('7563', '770607', 'หนองตาแต้ม   ', '833', '62', '4');
INSERT INTO `district` VALUES ('7564', '770608', 'วังก์พง   ', '833', '62', '4');
INSERT INTO `district` VALUES ('7565', '770609', 'เขาจ้าว   ', '833', '62', '4');
INSERT INTO `district` VALUES ('7566', '770701', 'หัวหิน   ', '834', '62', '4');
INSERT INTO `district` VALUES ('7567', '770702', 'หนองแก   ', '834', '62', '4');
INSERT INTO `district` VALUES ('7568', '770703', 'หินเหล็กไฟ   ', '834', '62', '4');
INSERT INTO `district` VALUES ('7569', '770704', 'หนองพลับ   ', '834', '62', '4');
INSERT INTO `district` VALUES ('7570', '770705', 'ทับใต้   ', '834', '62', '4');
INSERT INTO `district` VALUES ('7571', '770706', 'ห้วยสัตว์ใหญ่   ', '834', '62', '4');
INSERT INTO `district` VALUES ('7572', '770707', 'บึงนคร   ', '834', '62', '4');
INSERT INTO `district` VALUES ('7573', '770801', 'สามร้อยยอด   ', '835', '62', '4');
INSERT INTO `district` VALUES ('7574', '770802', 'ศิลาลอย   ', '835', '62', '4');
INSERT INTO `district` VALUES ('7575', '770803', 'ไร่เก่า   ', '835', '62', '4');
INSERT INTO `district` VALUES ('7576', '770804', 'ศาลาลัย   ', '835', '62', '4');
INSERT INTO `district` VALUES ('7577', '770805', 'ไร่ใหม่   ', '835', '62', '4');
INSERT INTO `district` VALUES ('7578', '800101', 'ในเมือง   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7579', '800102', 'ท่าวัง   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7580', '800103', 'คลัง   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7581', '800104', '*นา   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7582', '800105', '*ศาลามีชัย   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7583', '800106', 'ท่าไร่   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7584', '800107', 'ปากนคร   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7585', '800108', 'นาทราย   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7586', '800109', '*นาพรุ   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7587', '800110', '*ช้างซ้าย   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7588', '800111', '*นาสาร   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7589', '800112', 'กำแพงเซา   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7590', '800113', 'ไชยมนตรี   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7591', '800114', 'มะม่วงสองต้น   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7592', '800115', 'นาเคียน   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7593', '800116', 'ท่างิ้ว   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7594', '800117', '*ท้ายสำเภา   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7595', '800118', 'โพธิ์เสด็จ   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7596', '800119', 'บางจาก   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7597', '800120', 'ปากพูน   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7598', '800121', 'ท่าซัก   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7599', '800122', 'ท่าเรือ   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7600', '800195', '*อินคีรี   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7601', '800196', '*พรหมโลก   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7602', '800197', '*ศาลามีชัย   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7603', '800198', '*นา   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7604', '800199', '*บ้านเกาะ   ', '836', '63', '6');
INSERT INTO `district` VALUES ('7605', '800201', 'พรหมโลก   ', '837', '63', '6');
INSERT INTO `district` VALUES ('7606', '800202', 'บ้านเกาะ   ', '837', '63', '6');
INSERT INTO `district` VALUES ('7607', '800203', 'อินคีรี   ', '837', '63', '6');
INSERT INTO `district` VALUES ('7608', '800204', 'ทอนหงส์   ', '837', '63', '6');
INSERT INTO `district` VALUES ('7609', '800205', 'นาเรียง   ', '837', '63', '6');
INSERT INTO `district` VALUES ('7610', '800301', 'เขาแก้ว   ', '838', '63', '6');
INSERT INTO `district` VALUES ('7611', '800302', 'ลานสกา   ', '838', '63', '6');
INSERT INTO `district` VALUES ('7612', '800303', 'ท่าดี   ', '838', '63', '6');
INSERT INTO `district` VALUES ('7613', '800304', 'กำโลน   ', '838', '63', '6');
INSERT INTO `district` VALUES ('7614', '800305', 'ขุนทะเล   ', '838', '63', '6');
INSERT INTO `district` VALUES ('7615', '800401', 'ฉวาง   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7616', '800402', 'ช้างกลาง*   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7617', '800403', 'ละอาย   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7618', '800404', 'นาแว   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7619', '800405', 'ไม้เรียง   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7620', '800406', 'กะเปียด   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7621', '800407', 'นากะชะ   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7622', '800408', '*ถ้ำพรรณรา   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7623', '800409', 'ห้วยปริก   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7624', '800410', 'ไสหร้า   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7625', '800411', 'หลักช้าง*   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7626', '800412', 'สวนขัน*   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7627', '800413', '*คลองเส   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7628', '800414', '*ดุสิต   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7629', '800415', 'นาเขลียง   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7630', '800416', 'จันดี   ', '839', '63', '6');
INSERT INTO `district` VALUES ('7631', '800501', 'พิปูน   ', '840', '63', '6');
INSERT INTO `district` VALUES ('7632', '800502', 'กะทูน   ', '840', '63', '6');
INSERT INTO `district` VALUES ('7633', '800503', 'เขาพระ   ', '840', '63', '6');
INSERT INTO `district` VALUES ('7634', '800504', 'ยางค้อม   ', '840', '63', '6');
INSERT INTO `district` VALUES ('7635', '800505', 'ควนกลาง   ', '840', '63', '6');
INSERT INTO `district` VALUES ('7636', '800601', 'เชียรใหญ่   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7637', '800602', 'เชียรเขา*   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7638', '800603', 'ท่าขนาน   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7639', '800604', 'บ้านกลาง   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7640', '800605', 'บ้านเนิน   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7641', '800606', 'ไสหมาก   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7642', '800607', 'ท้องลำเจียก   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7643', '800608', 'ดอนตรอ*   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7644', '800609', 'สวนหลวง*   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7645', '800610', 'เสือหึง   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7646', '800611', 'การะเกด   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7647', '800612', 'เขาพระบาท   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7648', '800613', 'แม่เจ้าอยู่หัว   ', '841', '63', '6');
INSERT INTO `district` VALUES ('7649', '800701', 'ชะอวด   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7650', '800702', 'ท่าเสม็ด   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7651', '800703', 'ท่าประจะ   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7652', '800704', 'เคร็ง   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7653', '800705', 'วังอ่าง   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7654', '800706', 'บ้านตูล   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7655', '800707', 'ขอนหาด   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7656', '800708', 'เกาะขันธ์   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7657', '800709', 'ควนหนองหงษ์   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7658', '800710', 'เขาพระทอง   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7659', '800711', 'นางหลง   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7660', '800712', '*บ้านควนมุด   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7661', '800713', '*บ้านชะอวด   ', '842', '63', '6');
INSERT INTO `district` VALUES ('7662', '800801', 'ท่าศาลา   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7663', '800802', 'กลาย   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7664', '800803', 'ท่าขึ้น   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7665', '800804', 'หัวตะพาน   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7666', '800805', '*กะหรอ   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7667', '800806', 'สระแก้ว   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7668', '800807', 'โมคลาน   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7669', '800808', '*นบพิตำ   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7670', '800809', 'ไทยบุรี   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7671', '800810', 'ดอนตะโก   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7672', '800811', 'ตลิ่งชัน   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7673', '800812', '*กรุงชิง   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7674', '800813', 'โพธิ์ทอง   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7675', '800814', '*นาเหรง   ', '843', '63', '6');
INSERT INTO `district` VALUES ('7676', '800901', 'ปากแพรก   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7677', '800902', 'ชะมาย   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7678', '800903', 'หนองหงส์   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7679', '800904', 'ควนกรด   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7680', '800905', 'นาไม้ไผ่   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7681', '800906', 'นาหลวงเสน   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7682', '800907', 'เขาโร   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7683', '800908', 'กะปาง   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7684', '800909', 'ที่วัง   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7685', '800910', 'น้ำตก   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7686', '800911', 'ถ้ำใหญ่   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7687', '800912', 'นาโพธิ์   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7688', '800913', 'เขาขาว   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7689', '800994', '*วังหิน   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7690', '800995', '*บ้านลำนาว   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7691', '800996', '*บางขัน   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7692', '800997', '*แก้วแสน   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7693', '800998', '*ทุ่งสง   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7694', '800999', '*นาบอน   ', '844', '63', '6');
INSERT INTO `district` VALUES ('7695', '801001', 'นาบอน   ', '845', '63', '6');
INSERT INTO `district` VALUES ('7696', '801002', 'ทุ่งสง   ', '845', '63', '6');
INSERT INTO `district` VALUES ('7697', '801003', 'แก้วแสน   ', '845', '63', '6');
INSERT INTO `district` VALUES ('7698', '801101', 'ท่ายาง   ', '846', '63', '6');
INSERT INTO `district` VALUES ('7699', '801102', 'ทุ่งสัง   ', '846', '63', '6');
INSERT INTO `district` VALUES ('7700', '801103', 'ทุ่งใหญ่   ', '846', '63', '6');
INSERT INTO `district` VALUES ('7701', '801104', 'กุแหระ   ', '846', '63', '6');
INSERT INTO `district` VALUES ('7702', '801105', 'ปริก   ', '846', '63', '6');
INSERT INTO `district` VALUES ('7703', '801106', 'บางรูป   ', '846', '63', '6');
INSERT INTO `district` VALUES ('7704', '801107', 'กรุงหยัน   ', '846', '63', '6');
INSERT INTO `district` VALUES ('7705', '801201', 'ปากพนัง   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7706', '801202', 'คลองน้อย   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7707', '801203', 'ป่าระกำ   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7708', '801204', 'ชะเมา   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7709', '801205', 'คลองกระบือ   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7710', '801206', 'เกาะทวด   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7711', '801207', 'บ้านใหม่   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7712', '801208', 'หูล่อง   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7713', '801209', 'แหลมตะลุมพุก   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7714', '801210', 'ปากพนังฝั่งตะวันตก   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7715', '801211', 'บางศาลา   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7716', '801212', 'บางพระ   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7717', '801213', 'บางตะพง   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7718', '801214', 'ปากพนังฝั่งตะวันออก   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7719', '801215', 'บ้านเพิง   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7720', '801216', 'ท่าพยา   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7721', '801217', 'ปากแพรก   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7722', '801218', 'ขนาบนาก   ', '847', '63', '6');
INSERT INTO `district` VALUES ('7723', '801301', 'ร่อนพิบูลย์   ', '848', '63', '6');
INSERT INTO `district` VALUES ('7724', '801302', 'หินตก   ', '848', '63', '6');
INSERT INTO `district` VALUES ('7725', '801303', 'เสาธง   ', '848', '63', '6');
INSERT INTO `district` VALUES ('7726', '801304', 'ควนเกย   ', '848', '63', '6');
INSERT INTO `district` VALUES ('7727', '801305', 'ควนพัง   ', '848', '63', '6');
INSERT INTO `district` VALUES ('7728', '801306', 'ควนชุม   ', '848', '63', '6');
INSERT INTO `district` VALUES ('7729', '801307', '*สามตำบล   ', '848', '63', '6');
INSERT INTO `district` VALUES ('7730', '801308', 'ทางพูน*   ', '848', '63', '6');
INSERT INTO `district` VALUES ('7731', '801309', '*นาหมอบุญ   ', '848', '63', '6');
INSERT INTO `district` VALUES ('7732', '801310', '*ทุ่งโพธิ์   ', '848', '63', '6');
INSERT INTO `district` VALUES ('7733', '801311', '*ควนหนองคว้า   ', '848', '63', '6');
INSERT INTO `district` VALUES ('7734', '801401', 'สิชล   ', '849', '63', '6');
INSERT INTO `district` VALUES ('7735', '801402', 'ทุ่งปรัง   ', '849', '63', '6');
INSERT INTO `district` VALUES ('7736', '801403', 'ฉลอง   ', '849', '63', '6');
INSERT INTO `district` VALUES ('7737', '801404', 'เสาเภา   ', '849', '63', '6');
INSERT INTO `district` VALUES ('7738', '801405', 'เปลี่ยน   ', '849', '63', '6');
INSERT INTO `district` VALUES ('7739', '801406', 'สี่ขีด   ', '849', '63', '6');
INSERT INTO `district` VALUES ('7740', '801407', 'เทพราช   ', '849', '63', '6');
INSERT INTO `district` VALUES ('7741', '801408', 'เขาน้อย   ', '849', '63', '6');
INSERT INTO `district` VALUES ('7742', '801409', 'ทุ่งใส   ', '849', '63', '6');
INSERT INTO `district` VALUES ('7743', '801501', 'ขนอม   ', '850', '63', '6');
INSERT INTO `district` VALUES ('7744', '801502', 'ควนทอง   ', '850', '63', '6');
INSERT INTO `district` VALUES ('7745', '801503', 'ท้องเนียน   ', '850', '63', '6');
INSERT INTO `district` VALUES ('7746', '801601', 'หัวไทร   ', '851', '63', '6');
INSERT INTO `district` VALUES ('7747', '801602', 'หน้าสตน   ', '851', '63', '6');
INSERT INTO `district` VALUES ('7748', '801603', 'ทรายขาว   ', '851', '63', '6');
INSERT INTO `district` VALUES ('7749', '801604', 'แหลม   ', '851', '63', '6');
INSERT INTO `district` VALUES ('7750', '801605', 'เขาพังไกร   ', '851', '63', '6');
INSERT INTO `district` VALUES ('7751', '801606', 'บ้านราม   ', '851', '63', '6');
INSERT INTO `district` VALUES ('7752', '801607', 'บางนบ   ', '851', '63', '6');
INSERT INTO `district` VALUES ('7753', '801608', 'ท่าซอม   ', '851', '63', '6');
INSERT INTO `district` VALUES ('7754', '801609', 'ควนชะลิก   ', '851', '63', '6');
INSERT INTO `district` VALUES ('7755', '801610', 'รามแก้ว   ', '851', '63', '6');
INSERT INTO `district` VALUES ('7756', '801611', 'เกาะเพชร   ', '851', '63', '6');
INSERT INTO `district` VALUES ('7757', '801701', 'บางขัน   ', '852', '63', '6');
INSERT INTO `district` VALUES ('7758', '801702', 'บ้านลำนาว   ', '852', '63', '6');
INSERT INTO `district` VALUES ('7759', '801703', 'วังหิน   ', '852', '63', '6');
INSERT INTO `district` VALUES ('7760', '801704', 'บ้านนิคม   ', '852', '63', '6');
INSERT INTO `district` VALUES ('7761', '801801', 'ถ้ำพรรณรา   ', '853', '63', '6');
INSERT INTO `district` VALUES ('7762', '801802', 'คลองเส   ', '853', '63', '6');
INSERT INTO `district` VALUES ('7763', '801803', 'ดุสิต   ', '853', '63', '6');
INSERT INTO `district` VALUES ('7764', '801901', 'บ้านควนมุด   ', '854', '63', '6');
INSERT INTO `district` VALUES ('7765', '801902', 'บ้านชะอวด   ', '854', '63', '6');
INSERT INTO `district` VALUES ('7766', '801903', 'ควนหนองคว้า   ', '854', '63', '6');
INSERT INTO `district` VALUES ('7767', '801904', 'ทุ่งโพธิ์   ', '854', '63', '6');
INSERT INTO `district` VALUES ('7768', '801905', 'นาหมอบุญ   ', '854', '63', '6');
INSERT INTO `district` VALUES ('7769', '801906', 'สามตำบล   ', '854', '63', '6');
INSERT INTO `district` VALUES ('7770', '802001', 'นาพรุ   ', '855', '63', '6');
INSERT INTO `district` VALUES ('7771', '802002', 'นาสาร   ', '855', '63', '6');
INSERT INTO `district` VALUES ('7772', '802003', 'ท้ายสำเภา   ', '855', '63', '6');
INSERT INTO `district` VALUES ('7773', '802004', 'ช้างซ้าย   ', '855', '63', '6');
INSERT INTO `district` VALUES ('7774', '802101', 'นบพิตำ   ', '856', '63', '6');
INSERT INTO `district` VALUES ('7775', '802102', 'กรุงชิง   ', '856', '63', '6');
INSERT INTO `district` VALUES ('7776', '802103', 'กะหรอ   ', '856', '63', '6');
INSERT INTO `district` VALUES ('7777', '802104', 'นาเหรง   ', '856', '63', '6');
INSERT INTO `district` VALUES ('7778', '802201', 'ช้างกลาง   ', '857', '63', '6');
INSERT INTO `district` VALUES ('7779', '802202', 'หลักช้าง   ', '857', '63', '6');
INSERT INTO `district` VALUES ('7780', '802203', 'สวนขัน   ', '857', '63', '6');
INSERT INTO `district` VALUES ('7781', '802301', 'เชียรเขา   ', '858', '63', '6');
INSERT INTO `district` VALUES ('7782', '802302', 'ดอนตรอ   ', '858', '63', '6');
INSERT INTO `district` VALUES ('7783', '802303', 'สวนหลวง   ', '858', '63', '6');
INSERT INTO `district` VALUES ('7784', '802304', 'ทางพูน   ', '858', '63', '6');
INSERT INTO `district` VALUES ('7785', '810101', 'ปากน้ำ   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7786', '810102', 'กระบี่ใหญ่   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7787', '810103', 'กระบี่น้อย   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7788', '810104', '*เกาะศรีบอยา   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7789', '810105', 'เขาคราม   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7790', '810106', 'เขาทอง   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7791', '810107', '*คลองขนาน   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7792', '810108', '*คลองเขม้า   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7793', '810109', '*โคกยาง   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7794', '810110', '*ตลิ่งชัน   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7795', '810111', 'ทับปริก   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7796', '810112', '*ปกาสัย   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7797', '810113', '*ห้วยยูง   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7798', '810114', '*เหนือคลอง   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7799', '810115', 'ไสไทย   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7800', '810116', 'อ่าวนาง   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7801', '810117', 'หนองทะเล   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7802', '810118', 'คลองประสงค์   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7803', '810192', '*เกาะศรีบายอ   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7804', '810193', '*คลองเขม้า   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7805', '810194', '*โคกยาง   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7806', '810195', '*ห้วยยูง   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7807', '810196', '*คลองขนาน   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7808', '810197', '*ตลิ่งชัน   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7809', '810198', '*ปกาสัย   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7810', '810199', '*เหนือคลอง   ', '864', '64', '6');
INSERT INTO `district` VALUES ('7811', '810201', 'เขาพนม   ', '865', '64', '6');
INSERT INTO `district` VALUES ('7812', '810202', 'เขาดิน   ', '865', '64', '6');
INSERT INTO `district` VALUES ('7813', '810203', 'สินปุน   ', '865', '64', '6');
INSERT INTO `district` VALUES ('7814', '810204', 'พรุเตียว   ', '865', '64', '6');
INSERT INTO `district` VALUES ('7815', '810205', 'หน้าเขา   ', '865', '64', '6');
INSERT INTO `district` VALUES ('7816', '810206', 'โคกหาร   ', '865', '64', '6');
INSERT INTO `district` VALUES ('7817', '810301', 'เกาะลันตาใหญ่   ', '866', '64', '6');
INSERT INTO `district` VALUES ('7818', '810302', 'เกาะลันตาน้อย   ', '866', '64', '6');
INSERT INTO `district` VALUES ('7819', '810303', 'เกาะกลาง   ', '866', '64', '6');
INSERT INTO `district` VALUES ('7820', '810304', 'คลองยาง   ', '866', '64', '6');
INSERT INTO `district` VALUES ('7821', '810305', 'ศาลาด่าน   ', '866', '64', '6');
INSERT INTO `district` VALUES ('7822', '810401', 'คลองท่อมใต้   ', '867', '64', '6');
INSERT INTO `district` VALUES ('7823', '810402', 'คลองท่อมเหนือ   ', '867', '64', '6');
INSERT INTO `district` VALUES ('7824', '810403', 'คลองพน   ', '867', '64', '6');
INSERT INTO `district` VALUES ('7825', '810404', 'ทรายขาว   ', '867', '64', '6');
INSERT INTO `district` VALUES ('7826', '810405', 'ห้วยน้ำขาว   ', '867', '64', '6');
INSERT INTO `district` VALUES ('7827', '810406', 'พรุดินนา   ', '867', '64', '6');
INSERT INTO `district` VALUES ('7828', '810407', 'เพหลา   ', '867', '64', '6');
INSERT INTO `district` VALUES ('7829', '810499', 'ลำทับ*   ', '867', '64', '6');
INSERT INTO `district` VALUES ('7830', '810501', 'อ่าวลึกใต้   ', '868', '64', '6');
INSERT INTO `district` VALUES ('7831', '810502', 'แหลมสัก   ', '868', '64', '6');
INSERT INTO `district` VALUES ('7832', '810503', 'นาเหนือ   ', '868', '64', '6');
INSERT INTO `district` VALUES ('7833', '810504', 'คลองหิน   ', '868', '64', '6');
INSERT INTO `district` VALUES ('7834', '810505', 'อ่าวลึกน้อย   ', '868', '64', '6');
INSERT INTO `district` VALUES ('7835', '810506', 'อ่าวลึกเหนือ   ', '868', '64', '6');
INSERT INTO `district` VALUES ('7836', '810507', 'เขาใหญ่   ', '868', '64', '6');
INSERT INTO `district` VALUES ('7837', '810508', 'คลองยา   ', '868', '64', '6');
INSERT INTO `district` VALUES ('7838', '810509', 'บ้านกลาง   ', '868', '64', '6');
INSERT INTO `district` VALUES ('7839', '810597', '*เขาเขน   ', '868', '64', '6');
INSERT INTO `district` VALUES ('7840', '810598', '*เขาต่อ   ', '868', '64', '6');
INSERT INTO `district` VALUES ('7841', '810599', '*ปลายพระยา   ', '868', '64', '6');
INSERT INTO `district` VALUES ('7842', '810601', 'ปลายพระยา   ', '869', '64', '6');
INSERT INTO `district` VALUES ('7843', '810602', 'เขาเขน   ', '869', '64', '6');
INSERT INTO `district` VALUES ('7844', '810603', 'เขาต่อ   ', '869', '64', '6');
INSERT INTO `district` VALUES ('7845', '810604', 'คีรีวง   ', '869', '64', '6');
INSERT INTO `district` VALUES ('7846', '810701', 'ลำทับ   ', '870', '64', '6');
INSERT INTO `district` VALUES ('7847', '810702', 'ดินอุดม   ', '870', '64', '6');
INSERT INTO `district` VALUES ('7848', '810703', 'ทุ่งไทรทอง   ', '870', '64', '6');
INSERT INTO `district` VALUES ('7849', '810704', 'ดินแดง   ', '870', '64', '6');
INSERT INTO `district` VALUES ('7850', '810801', 'เหนือคลอง   ', '871', '64', '6');
INSERT INTO `district` VALUES ('7851', '810802', 'เกาะศรีบอยา   ', '871', '64', '6');
INSERT INTO `district` VALUES ('7852', '810803', 'คลองขนาน   ', '871', '64', '6');
INSERT INTO `district` VALUES ('7853', '810804', 'คลองเขม้า   ', '871', '64', '6');
INSERT INTO `district` VALUES ('7854', '810805', 'โคกยาง   ', '871', '64', '6');
INSERT INTO `district` VALUES ('7855', '810806', 'ตลิ่งชัน   ', '871', '64', '6');
INSERT INTO `district` VALUES ('7856', '810807', 'ปกาสัย   ', '871', '64', '6');
INSERT INTO `district` VALUES ('7857', '810808', 'ห้วยยูง   ', '871', '64', '6');
INSERT INTO `district` VALUES ('7858', '820101', 'ท้ายช้าง   ', '872', '65', '6');
INSERT INTO `district` VALUES ('7859', '820102', 'นบปริง   ', '872', '65', '6');
INSERT INTO `district` VALUES ('7860', '820103', 'ถ้ำน้ำผุด   ', '872', '65', '6');
INSERT INTO `district` VALUES ('7861', '820104', 'บางเตย   ', '872', '65', '6');
INSERT INTO `district` VALUES ('7862', '820105', 'ตากแดด   ', '872', '65', '6');
INSERT INTO `district` VALUES ('7863', '820106', 'สองแพรก   ', '872', '65', '6');
INSERT INTO `district` VALUES ('7864', '820107', 'ทุ่งคาโงก   ', '872', '65', '6');
INSERT INTO `district` VALUES ('7865', '820108', 'เกาะปันหยี   ', '872', '65', '6');
INSERT INTO `district` VALUES ('7866', '820109', 'ป่ากอ   ', '872', '65', '6');
INSERT INTO `district` VALUES ('7867', '820198', '*เกาะยาวใหญ่   ', '872', '65', '6');
INSERT INTO `district` VALUES ('7868', '820199', '*เกาะยาวน้อย   ', '872', '65', '6');
INSERT INTO `district` VALUES ('7869', '820201', 'เกาะยาวน้อย   ', '873', '65', '6');
INSERT INTO `district` VALUES ('7870', '820202', 'เกาะยาวใหญ่   ', '873', '65', '6');
INSERT INTO `district` VALUES ('7871', '820203', 'พรุใน   ', '873', '65', '6');
INSERT INTO `district` VALUES ('7872', '820301', 'กะปง   ', '874', '65', '6');
INSERT INTO `district` VALUES ('7873', '820302', 'ท่านา   ', '874', '65', '6');
INSERT INTO `district` VALUES ('7874', '820303', 'เหมาะ   ', '874', '65', '6');
INSERT INTO `district` VALUES ('7875', '820304', 'เหล   ', '874', '65', '6');
INSERT INTO `district` VALUES ('7876', '820305', 'รมณีย์   ', '874', '65', '6');
INSERT INTO `district` VALUES ('7877', '820401', 'ถ้ำ   ', '875', '65', '6');
INSERT INTO `district` VALUES ('7878', '820402', 'กระโสม   ', '875', '65', '6');
INSERT INTO `district` VALUES ('7879', '820403', 'กะไหล   ', '875', '65', '6');
INSERT INTO `district` VALUES ('7880', '820404', 'ท่าอยู่   ', '875', '65', '6');
INSERT INTO `district` VALUES ('7881', '820405', 'หล่อยูง   ', '875', '65', '6');
INSERT INTO `district` VALUES ('7882', '820406', 'โคกกลอย   ', '875', '65', '6');
INSERT INTO `district` VALUES ('7883', '820407', 'คลองเคียน   ', '875', '65', '6');
INSERT INTO `district` VALUES ('7884', '820501', 'ตะกั่วป่า   ', '876', '65', '6');
INSERT INTO `district` VALUES ('7885', '820502', 'บางนายสี   ', '876', '65', '6');
INSERT INTO `district` VALUES ('7886', '820503', 'บางไทร   ', '876', '65', '6');
INSERT INTO `district` VALUES ('7887', '820504', 'บางม่วง   ', '876', '65', '6');
INSERT INTO `district` VALUES ('7888', '820505', 'ตำตัว   ', '876', '65', '6');
INSERT INTO `district` VALUES ('7889', '820506', 'โคกเคียน   ', '876', '65', '6');
INSERT INTO `district` VALUES ('7890', '820507', 'คึกคัก   ', '876', '65', '6');
INSERT INTO `district` VALUES ('7891', '820508', 'เกาะคอเขา   ', '876', '65', '6');
INSERT INTO `district` VALUES ('7892', '820601', 'คุระ   ', '877', '65', '6');
INSERT INTO `district` VALUES ('7893', '820602', 'บางวัน   ', '877', '65', '6');
INSERT INTO `district` VALUES ('7894', '820603', 'เกาะพระทอง   ', '877', '65', '6');
INSERT INTO `district` VALUES ('7895', '820604', '*เกาะคอเขา   ', '877', '65', '6');
INSERT INTO `district` VALUES ('7896', '820605', 'แม่นางขาว   ', '877', '65', '6');
INSERT INTO `district` VALUES ('7897', '820701', 'ทับปุด   ', '878', '65', '6');
INSERT INTO `district` VALUES ('7898', '820702', 'มะรุ่ย   ', '878', '65', '6');
INSERT INTO `district` VALUES ('7899', '820703', 'บ่อแสน   ', '878', '65', '6');
INSERT INTO `district` VALUES ('7900', '820704', 'ถ้ำทองหลาง   ', '878', '65', '6');
INSERT INTO `district` VALUES ('7901', '820705', 'โคกเจริญ   ', '878', '65', '6');
INSERT INTO `district` VALUES ('7902', '820706', 'บางเหรียง   ', '878', '65', '6');
INSERT INTO `district` VALUES ('7903', '820801', 'ท้ายเหมือง   ', '879', '65', '6');
INSERT INTO `district` VALUES ('7904', '820802', 'นาเตย   ', '879', '65', '6');
INSERT INTO `district` VALUES ('7905', '820803', 'บางทอง   ', '879', '65', '6');
INSERT INTO `district` VALUES ('7906', '820804', 'ทุ่งมะพร้าว   ', '879', '65', '6');
INSERT INTO `district` VALUES ('7907', '820805', 'ลำภี   ', '879', '65', '6');
INSERT INTO `district` VALUES ('7908', '820806', 'ลำแก่น   ', '879', '65', '6');
INSERT INTO `district` VALUES ('7909', '830101', 'ตลาดใหญ่   ', '880', '66', '6');
INSERT INTO `district` VALUES ('7910', '830102', 'ตลาดเหนือ   ', '880', '66', '6');
INSERT INTO `district` VALUES ('7911', '830103', 'เกาะแก้ว   ', '880', '66', '6');
INSERT INTO `district` VALUES ('7912', '830104', 'รัษฎา   ', '880', '66', '6');
INSERT INTO `district` VALUES ('7913', '830105', 'วิชิต   ', '880', '66', '6');
INSERT INTO `district` VALUES ('7914', '830106', 'ฉลอง   ', '880', '66', '6');
INSERT INTO `district` VALUES ('7915', '830107', 'ราไวย์   ', '880', '66', '6');
INSERT INTO `district` VALUES ('7916', '830108', 'กะรน   ', '880', '66', '6');
INSERT INTO `district` VALUES ('7917', '830201', 'กะทู้   ', '881', '66', '6');
INSERT INTO `district` VALUES ('7918', '830202', 'ป่าตอง   ', '881', '66', '6');
INSERT INTO `district` VALUES ('7919', '830203', 'กมลา   ', '881', '66', '6');
INSERT INTO `district` VALUES ('7920', '830301', 'เทพกระษัตรี   ', '882', '66', '6');
INSERT INTO `district` VALUES ('7921', '830302', 'ศรีสุนทร   ', '882', '66', '6');
INSERT INTO `district` VALUES ('7922', '830303', 'เชิงทะเล   ', '882', '66', '6');
INSERT INTO `district` VALUES ('7923', '830304', 'ป่าคลอก   ', '882', '66', '6');
INSERT INTO `district` VALUES ('7924', '830305', 'ไม้ขาว   ', '882', '66', '6');
INSERT INTO `district` VALUES ('7925', '830306', 'สาคู   ', '882', '66', '6');
INSERT INTO `district` VALUES ('7926', '840101', 'ตลาด   ', '884', '67', '6');
INSERT INTO `district` VALUES ('7927', '840102', 'มะขามเตี้ย   ', '884', '67', '6');
INSERT INTO `district` VALUES ('7928', '840103', 'วัดประดู่   ', '884', '67', '6');
INSERT INTO `district` VALUES ('7929', '840104', 'ขุนทะเล   ', '884', '67', '6');
INSERT INTO `district` VALUES ('7930', '840105', 'บางใบไม้   ', '884', '67', '6');
INSERT INTO `district` VALUES ('7931', '840106', 'บางชนะ   ', '884', '67', '6');
INSERT INTO `district` VALUES ('7932', '840107', 'คลองน้อย   ', '884', '67', '6');
INSERT INTO `district` VALUES ('7933', '840108', 'บางไทร   ', '884', '67', '6');
INSERT INTO `district` VALUES ('7934', '840109', 'บางโพธิ์   ', '884', '67', '6');
INSERT INTO `district` VALUES ('7935', '840110', 'บางกุ้ง   ', '884', '67', '6');
INSERT INTO `district` VALUES ('7936', '840111', 'คลองฉนาก   ', '884', '67', '6');
INSERT INTO `district` VALUES ('7937', '840201', 'ท่าทองใหม่   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7938', '840202', 'ท่าทอง   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7939', '840203', 'กะแดะ   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7940', '840204', 'ทุ่งกง   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7941', '840205', 'กรูด   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7942', '840206', 'ช้างซ้าย   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7943', '840207', 'พลายวาส   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7944', '840208', 'ป่าร่อน   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7945', '840209', 'ตะเคียนทอง   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7946', '840210', 'ช้างขวา   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7947', '840211', 'ท่าอุแท   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7948', '840212', 'ทุ่งรัง   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7949', '840213', 'คลองสระ   ', '885', '67', '6');
INSERT INTO `district` VALUES ('7950', '840301', 'ดอนสัก   ', '886', '67', '6');
INSERT INTO `district` VALUES ('7951', '840302', 'ชลคราม   ', '886', '67', '6');
INSERT INTO `district` VALUES ('7952', '840303', 'ไชยคราม   ', '886', '67', '6');
INSERT INTO `district` VALUES ('7953', '840304', 'ปากแพรก   ', '886', '67', '6');
INSERT INTO `district` VALUES ('7954', '840401', 'อ่างทอง   ', '887', '67', '6');
INSERT INTO `district` VALUES ('7955', '840402', 'ลิปะน้อย   ', '887', '67', '6');
INSERT INTO `district` VALUES ('7956', '840403', 'ตลิ่งงาม   ', '887', '67', '6');
INSERT INTO `district` VALUES ('7957', '840404', 'หน้าเมือง   ', '887', '67', '6');
INSERT INTO `district` VALUES ('7958', '840405', 'มะเร็ต   ', '887', '67', '6');
INSERT INTO `district` VALUES ('7959', '840406', 'บ่อผุด   ', '887', '67', '6');
INSERT INTO `district` VALUES ('7960', '840407', 'แม่น้ำ   ', '887', '67', '6');
INSERT INTO `district` VALUES ('7961', '840501', 'เกาะพะงัน   ', '888', '67', '6');
INSERT INTO `district` VALUES ('7962', '840502', 'บ้านใต้   ', '888', '67', '6');
INSERT INTO `district` VALUES ('7963', '840503', 'เกาะเต่า   ', '888', '67', '6');
INSERT INTO `district` VALUES ('7964', '840601', 'ตลาดไชยา   ', '889', '67', '6');
INSERT INTO `district` VALUES ('7965', '840602', 'พุมเรียง   ', '889', '67', '6');
INSERT INTO `district` VALUES ('7966', '840603', 'เลม็ด   ', '889', '67', '6');
INSERT INTO `district` VALUES ('7967', '840604', 'เวียง   ', '889', '67', '6');
INSERT INTO `district` VALUES ('7968', '840605', 'ทุ่ง   ', '889', '67', '6');
INSERT INTO `district` VALUES ('7969', '840606', 'ป่าเว   ', '889', '67', '6');
INSERT INTO `district` VALUES ('7970', '840607', 'ตะกรบ   ', '889', '67', '6');
INSERT INTO `district` VALUES ('7971', '840608', 'โมถ่าย   ', '889', '67', '6');
INSERT INTO `district` VALUES ('7972', '840609', 'ปากหมาก   ', '889', '67', '6');
INSERT INTO `district` VALUES ('7973', '840701', 'ท่าชนะ   ', '890', '67', '6');
INSERT INTO `district` VALUES ('7974', '840702', 'สมอทอง   ', '890', '67', '6');
INSERT INTO `district` VALUES ('7975', '840703', 'ประสงค์   ', '890', '67', '6');
INSERT INTO `district` VALUES ('7976', '840704', 'คันธุลี   ', '890', '67', '6');
INSERT INTO `district` VALUES ('7977', '840705', 'วัง   ', '890', '67', '6');
INSERT INTO `district` VALUES ('7978', '840706', 'คลองพา   ', '890', '67', '6');
INSERT INTO `district` VALUES ('7979', '840801', 'ท่าขนอน   ', '891', '67', '6');
INSERT INTO `district` VALUES ('7980', '840802', 'บ้านยาง   ', '891', '67', '6');
INSERT INTO `district` VALUES ('7981', '840803', 'น้ำหัก   ', '891', '67', '6');
INSERT INTO `district` VALUES ('7982', '840804', '*ตะกุกใต้   ', '891', '67', '6');
INSERT INTO `district` VALUES ('7983', '840805', '*ตะกุกเหนือ   ', '891', '67', '6');
INSERT INTO `district` VALUES ('7984', '840806', 'กะเปา   ', '891', '67', '6');
INSERT INTO `district` VALUES ('7985', '840807', 'ท่ากระดาน   ', '891', '67', '6');
INSERT INTO `district` VALUES ('7986', '840808', 'ย่านยาว   ', '891', '67', '6');
INSERT INTO `district` VALUES ('7987', '840809', 'ถ้ำสิงขร   ', '891', '67', '6');
INSERT INTO `district` VALUES ('7988', '840810', 'บ้านทำเนียบ   ', '891', '67', '6');
INSERT INTO `district` VALUES ('7989', '840899', '*ตะกุดใต้   ', '891', '67', '6');
INSERT INTO `district` VALUES ('7990', '840901', 'เขาวง   ', '892', '67', '6');
INSERT INTO `district` VALUES ('7991', '840902', 'พะแสง   ', '892', '67', '6');
INSERT INTO `district` VALUES ('7992', '840903', 'พรุไทย   ', '892', '67', '6');
INSERT INTO `district` VALUES ('7993', '840904', 'เขาพัง   ', '892', '67', '6');
INSERT INTO `district` VALUES ('7994', '840905', '*ไกรสร   ', '892', '67', '6');
INSERT INTO `district` VALUES ('7995', '841001', 'พนม   ', '893', '67', '6');
INSERT INTO `district` VALUES ('7996', '841002', 'ต้นยวน   ', '893', '67', '6');
INSERT INTO `district` VALUES ('7997', '841003', 'คลองศก   ', '893', '67', '6');
INSERT INTO `district` VALUES ('7998', '841004', 'พลูเถื่อน   ', '893', '67', '6');
INSERT INTO `district` VALUES ('7999', '841005', 'พังกาญจน์   ', '893', '67', '6');
INSERT INTO `district` VALUES ('8000', '841006', 'คลองชะอุ่น   ', '893', '67', '6');
INSERT INTO `district` VALUES ('8001', '841101', 'ท่าฉาง   ', '894', '67', '6');
INSERT INTO `district` VALUES ('8002', '841102', 'ท่าเคย   ', '894', '67', '6');
INSERT INTO `district` VALUES ('8003', '841103', 'คลองไทร   ', '894', '67', '6');
INSERT INTO `district` VALUES ('8004', '841104', 'เขาถ่าน   ', '894', '67', '6');
INSERT INTO `district` VALUES ('8005', '841105', 'เสวียด   ', '894', '67', '6');
INSERT INTO `district` VALUES ('8006', '841106', 'ปากฉลุย   ', '894', '67', '6');
INSERT INTO `district` VALUES ('8007', '841201', 'นาสาร   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8008', '841202', 'พรุพี   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8009', '841203', 'ทุ่งเตา   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8010', '841204', 'ลำพูน   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8011', '841205', 'ท่าชี   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8012', '841206', 'ควนศรี   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8013', '841207', 'ควนสุบรรณ   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8014', '841208', 'คลองปราบ   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8015', '841209', 'น้ำพุ   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8016', '841210', 'ทุ่งเตาใหม่   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8017', '841211', 'เพิ่มพูนทรัพย์   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8018', '841298', '*ท่าเรือ   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8019', '841299', '*บ้านนา   ', '895', '67', '6');
INSERT INTO `district` VALUES ('8020', '841301', 'บ้านนา   ', '896', '67', '6');
INSERT INTO `district` VALUES ('8021', '841302', 'ท่าเรือ   ', '896', '67', '6');
INSERT INTO `district` VALUES ('8022', '841303', 'ทรัพย์ทวี   ', '896', '67', '6');
INSERT INTO `district` VALUES ('8023', '841304', 'นาใต้   ', '896', '67', '6');
INSERT INTO `district` VALUES ('8024', '841401', 'เคียนซา   ', '897', '67', '6');
INSERT INTO `district` VALUES ('8025', '841402', 'พ่วงพรมคร   ', '897', '67', '6');
INSERT INTO `district` VALUES ('8026', '841403', 'เขาตอก   ', '897', '67', '6');
INSERT INTO `district` VALUES ('8027', '841404', 'อรัญคามวารี   ', '897', '67', '6');
INSERT INTO `district` VALUES ('8028', '841405', 'บ้านเสด็จ   ', '897', '67', '6');
INSERT INTO `district` VALUES ('8029', '841501', 'เวียงสระ   ', '898', '67', '6');
INSERT INTO `district` VALUES ('8030', '841502', 'บ้านส้อง   ', '898', '67', '6');
INSERT INTO `district` VALUES ('8031', '841503', 'คลองฉนวน   ', '898', '67', '6');
INSERT INTO `district` VALUES ('8032', '841504', 'ทุ่งหลวง   ', '898', '67', '6');
INSERT INTO `district` VALUES ('8033', '841505', 'เขานิพันธ์   ', '898', '67', '6');
INSERT INTO `district` VALUES ('8034', '841601', 'อิปัน   ', '899', '67', '6');
INSERT INTO `district` VALUES ('8035', '841602', 'สินปุน   ', '899', '67', '6');
INSERT INTO `district` VALUES ('8036', '841603', 'บางสวรรค์   ', '899', '67', '6');
INSERT INTO `district` VALUES ('8037', '841604', 'ไทรขึง   ', '899', '67', '6');
INSERT INTO `district` VALUES ('8038', '841605', 'สินเจริญ   ', '899', '67', '6');
INSERT INTO `district` VALUES ('8039', '841606', 'ไทรโสภา   ', '899', '67', '6');
INSERT INTO `district` VALUES ('8040', '841607', 'สาคู   ', '899', '67', '6');
INSERT INTO `district` VALUES ('8041', '841698', '*ชัยบุรี   ', '899', '67', '6');
INSERT INTO `district` VALUES ('8042', '841699', '*สองแพรก   ', '899', '67', '6');
INSERT INTO `district` VALUES ('8043', '841701', 'ท่าข้าม   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8044', '841702', 'ท่าสะท้อน   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8045', '841703', 'ลีเล็ด   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8046', '841704', 'บางมะเดื่อ   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8047', '841705', 'บางเดือน   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8048', '841706', 'ท่าโรงช้าง   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8049', '841707', 'กรูด   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8050', '841708', 'พุนพิน   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8051', '841709', 'บางงอน   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8052', '841710', 'ศรีวิชัย   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8053', '841711', 'น้ำรอบ   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8054', '841712', 'มะลวน   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8055', '841713', 'หัวเตย   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8056', '841714', 'หนองไทร   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8057', '841715', 'เขาหัวควาย   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8058', '841716', 'ตะปาน   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8059', '841799', '*คลองไทร   ', '900', '67', '6');
INSERT INTO `district` VALUES ('8060', '841801', 'สองแพรก   ', '901', '67', '6');
INSERT INTO `district` VALUES ('8061', '841802', 'ชัยบุรี   ', '901', '67', '6');
INSERT INTO `district` VALUES ('8062', '841803', 'คลองน้อย   ', '901', '67', '6');
INSERT INTO `district` VALUES ('8063', '841804', 'ไทรทอง   ', '901', '67', '6');
INSERT INTO `district` VALUES ('8064', '841901', 'ตะกุกใต้   ', '902', '67', '6');
INSERT INTO `district` VALUES ('8065', '841902', 'ตะกุกเหนือ   ', '902', '67', '6');
INSERT INTO `district` VALUES ('8066', '850101', 'เขานิเวศน์   ', '905', '68', '6');
INSERT INTO `district` VALUES ('8067', '850102', 'ราชกรูด   ', '905', '68', '6');
INSERT INTO `district` VALUES ('8068', '850103', 'หงาว   ', '905', '68', '6');
INSERT INTO `district` VALUES ('8069', '850104', 'บางริ้น   ', '905', '68', '6');
INSERT INTO `district` VALUES ('8070', '850105', 'ปากน้ำ   ', '905', '68', '6');
INSERT INTO `district` VALUES ('8071', '850106', 'บางนอน   ', '905', '68', '6');
INSERT INTO `district` VALUES ('8072', '850107', 'หาดส้มแป้น   ', '905', '68', '6');
INSERT INTO `district` VALUES ('8073', '850108', 'ทรายแดง   ', '905', '68', '6');
INSERT INTO `district` VALUES ('8074', '850109', 'เกาะพยาม   ', '905', '68', '6');
INSERT INTO `district` VALUES ('8075', '850201', 'ละอุ่นใต้   ', '906', '68', '6');
INSERT INTO `district` VALUES ('8076', '850202', 'ละอุ่นเหนือ   ', '906', '68', '6');
INSERT INTO `district` VALUES ('8077', '850203', 'บางพระใต้   ', '906', '68', '6');
INSERT INTO `district` VALUES ('8078', '850204', 'บางพระเหนือ   ', '906', '68', '6');
INSERT INTO `district` VALUES ('8079', '850205', 'บางแก้ว   ', '906', '68', '6');
INSERT INTO `district` VALUES ('8080', '850206', 'ในวงเหนือ   ', '906', '68', '6');
INSERT INTO `district` VALUES ('8081', '850207', 'ในวงใต้   ', '906', '68', '6');
INSERT INTO `district` VALUES ('8082', '850301', 'ม่วงกลวง   ', '907', '68', '6');
INSERT INTO `district` VALUES ('8083', '850302', 'กะเปอร์   ', '907', '68', '6');
INSERT INTO `district` VALUES ('8084', '850303', 'เชี่ยวเหลียง   ', '907', '68', '6');
INSERT INTO `district` VALUES ('8085', '850304', 'บ้านนา   ', '907', '68', '6');
INSERT INTO `district` VALUES ('8086', '850305', 'บางหิน   ', '907', '68', '6');
INSERT INTO `district` VALUES ('8087', '850306', '*นาคา   ', '907', '68', '6');
INSERT INTO `district` VALUES ('8088', '850307', '*กำพวน   ', '907', '68', '6');
INSERT INTO `district` VALUES ('8089', '850401', 'น้ำจืด   ', '908', '68', '6');
INSERT INTO `district` VALUES ('8090', '850402', 'น้ำจืดน้อย   ', '908', '68', '6');
INSERT INTO `district` VALUES ('8091', '850403', 'มะมุ   ', '908', '68', '6');
INSERT INTO `district` VALUES ('8092', '850404', 'ปากจั่น   ', '908', '68', '6');
INSERT INTO `district` VALUES ('8093', '850405', 'ลำเลียง   ', '908', '68', '6');
INSERT INTO `district` VALUES ('8094', '850406', 'จ.ป.ร.   ', '908', '68', '6');
INSERT INTO `district` VALUES ('8095', '850407', 'บางใหญ่   ', '908', '68', '6');
INSERT INTO `district` VALUES ('8096', '850501', 'นาคา   ', '909', '68', '6');
INSERT INTO `district` VALUES ('8097', '850502', 'กำพวน   ', '909', '68', '6');
INSERT INTO `district` VALUES ('8098', '860101', 'ท่าตะเภา   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8099', '860102', 'ปากน้ำ   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8100', '860103', 'ท่ายาง   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8101', '860104', 'บางหมาก   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8102', '860105', 'นาทุ่ง   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8103', '860106', 'นาชะอัง   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8104', '860107', 'ตากแดด   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8105', '860108', 'บางลึก   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8106', '860109', 'หาดพันไกร   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8107', '860110', 'วังไผ่   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8108', '860111', 'วังใหม่   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8109', '860112', 'บ้านนา   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8110', '860113', 'ขุนกระทิง   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8111', '860114', 'ทุ่งคา   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8112', '860115', 'วิสัยเหนือ   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8113', '860116', 'หาดทรายรี   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8114', '860117', 'ถ้ำสิงห์   ', '910', '69', '6');
INSERT INTO `district` VALUES ('8115', '860201', 'ท่าแซะ   ', '911', '69', '6');
INSERT INTO `district` VALUES ('8116', '860202', 'คุริง   ', '911', '69', '6');
INSERT INTO `district` VALUES ('8117', '860203', 'สลุย   ', '911', '69', '6');
INSERT INTO `district` VALUES ('8118', '860204', 'นากระตาม   ', '911', '69', '6');
INSERT INTO `district` VALUES ('8119', '860205', 'รับร่อ   ', '911', '69', '6');
INSERT INTO `district` VALUES ('8120', '860206', 'ท่าข้าม   ', '911', '69', '6');
INSERT INTO `district` VALUES ('8121', '860207', 'หงษ์เจริญ   ', '911', '69', '6');
INSERT INTO `district` VALUES ('8122', '860208', 'หินแก้ว   ', '911', '69', '6');
INSERT INTO `district` VALUES ('8123', '860209', 'ทรัพย์อนันต์   ', '911', '69', '6');
INSERT INTO `district` VALUES ('8124', '860210', 'สองพี่น้อง   ', '911', '69', '6');
INSERT INTO `district` VALUES ('8125', '860301', 'บางสน   ', '912', '69', '6');
INSERT INTO `district` VALUES ('8126', '860302', 'ทะเลทรัพย์   ', '912', '69', '6');
INSERT INTO `district` VALUES ('8127', '860303', 'สะพลี   ', '912', '69', '6');
INSERT INTO `district` VALUES ('8128', '860304', 'ชุมโค   ', '912', '69', '6');
INSERT INTO `district` VALUES ('8129', '860305', 'ดอนยาง   ', '912', '69', '6');
INSERT INTO `district` VALUES ('8130', '860306', 'ปากคลอง   ', '912', '69', '6');
INSERT INTO `district` VALUES ('8131', '860307', 'เขาไชยราช   ', '912', '69', '6');
INSERT INTO `district` VALUES ('8132', '860401', 'หลังสวน   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8133', '860402', 'ขันเงิน   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8134', '860403', 'ท่ามะพลา   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8135', '860404', 'นาขา   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8136', '860405', 'นาพญา   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8137', '860406', 'บ้านควน   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8138', '860407', 'บางมะพร้าว   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8139', '860408', 'บางน้ำจืด   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8140', '860409', 'ปากน้ำ   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8141', '860410', 'พ้อแดง   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8142', '860411', 'แหลมทราย   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8143', '860412', 'วังตะกอ   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8144', '860413', 'หาดยาย   ', '913', '69', '6');
INSERT INTO `district` VALUES ('8145', '860501', 'ละแม   ', '914', '69', '6');
INSERT INTO `district` VALUES ('8146', '860502', 'ทุ่งหลวง   ', '914', '69', '6');
INSERT INTO `district` VALUES ('8147', '860503', 'สวนแตง   ', '914', '69', '6');
INSERT INTO `district` VALUES ('8148', '860504', 'ทุ่งคาวัด   ', '914', '69', '6');
INSERT INTO `district` VALUES ('8149', '860601', 'พะโต๊ะ   ', '915', '69', '6');
INSERT INTO `district` VALUES ('8150', '860602', 'ปากทรง   ', '915', '69', '6');
INSERT INTO `district` VALUES ('8151', '860603', 'ปังหวาน   ', '915', '69', '6');
INSERT INTO `district` VALUES ('8152', '860604', 'พระรักษ์   ', '915', '69', '6');
INSERT INTO `district` VALUES ('8153', '860701', 'นาโพธิ์   ', '916', '69', '6');
INSERT INTO `district` VALUES ('8154', '860702', 'สวี   ', '916', '69', '6');
INSERT INTO `district` VALUES ('8155', '860703', 'ทุ่งระยะ   ', '916', '69', '6');
INSERT INTO `district` VALUES ('8156', '860704', 'ท่าหิน   ', '916', '69', '6');
INSERT INTO `district` VALUES ('8157', '860705', 'ปากแพรก   ', '916', '69', '6');
INSERT INTO `district` VALUES ('8158', '860706', 'ด่านสวี   ', '916', '69', '6');
INSERT INTO `district` VALUES ('8159', '860707', 'ครน   ', '916', '69', '6');
INSERT INTO `district` VALUES ('8160', '860708', 'วิสัยใต้   ', '916', '69', '6');
INSERT INTO `district` VALUES ('8161', '860709', 'นาสัก   ', '916', '69', '6');
INSERT INTO `district` VALUES ('8162', '860710', 'เขาทะลุ   ', '916', '69', '6');
INSERT INTO `district` VALUES ('8163', '860711', 'เขาค่าย   ', '916', '69', '6');
INSERT INTO `district` VALUES ('8164', '860801', 'ปากตะโก   ', '917', '69', '6');
INSERT INTO `district` VALUES ('8165', '860802', 'ทุ่งตะไคร   ', '917', '69', '6');
INSERT INTO `district` VALUES ('8166', '860803', 'ตะโก   ', '917', '69', '6');
INSERT INTO `district` VALUES ('8167', '860804', 'ช่องไม้แก้ว   ', '917', '69', '6');
INSERT INTO `district` VALUES ('8168', '900101', 'บ่อยาง   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8169', '900102', 'เขารูปช้าง   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8170', '900103', 'เกาะแต้ว   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8171', '900104', 'พะวง   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8172', '900105', 'ทุ่งหวัง   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8173', '900106', 'เกาะยอ   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8174', '900107', '*ชิงโค   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8175', '900108', '*สทิงหม้อ   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8176', '900109', '*ทำนบ   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8177', '900110', '*รำแดง   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8178', '900111', '*วัดขนุน   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8179', '900112', '*ชะแล้   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8180', '900113', '*ปากรอ   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8181', '900114', '*ป่าขาด   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8182', '900115', '*หัวเขา   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8183', '900116', '*บางเขียด   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8184', '900117', '*ม่วงงาม   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8185', '900188', '*ปากรอ   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8186', '900189', '*ทำนบ   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8187', '900190', '*ชลเจริญ   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8188', '900191', '*ม่วงงาม   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8189', '900192', '*หัวเขา   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8190', '900193', '*ชะแล้   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8191', '900194', '*วัดขนุน   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8192', '900195', '*สทิงหม้อ   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8193', '900196', '*บางเขียด   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8194', '900197', '*ป่าขาด   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8195', '900198', '*รำแดง   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8196', '900199', '*ชิงโค   ', '918', '70', '6');
INSERT INTO `district` VALUES ('8197', '900201', 'จะทิ้งพระ   ', '919', '70', '6');
INSERT INTO `district` VALUES ('8198', '900202', 'กระดังงา   ', '919', '70', '6');
INSERT INTO `district` VALUES ('8199', '900203', 'สนามชัย   ', '919', '70', '6');
INSERT INTO `district` VALUES ('8200', '900204', 'ดีหลวง   ', '919', '70', '6');
INSERT INTO `district` VALUES ('8201', '900205', 'ชุมพล   ', '919', '70', '6');
INSERT INTO `district` VALUES ('8202', '900206', 'คลองรี   ', '919', '70', '6');
INSERT INTO `district` VALUES ('8203', '900207', 'คูขุด   ', '919', '70', '6');
INSERT INTO `district` VALUES ('8204', '900208', 'ท่าหิน   ', '919', '70', '6');
INSERT INTO `district` VALUES ('8205', '900209', 'วัดจันทร์   ', '919', '70', '6');
INSERT INTO `district` VALUES ('8206', '900210', 'บ่อแดง   ', '919', '70', '6');
INSERT INTO `district` VALUES ('8207', '900211', 'บ่อดาน   ', '919', '70', '6');
INSERT INTO `district` VALUES ('8208', '900301', 'บ้านนา   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8209', '900302', 'ป่าชิง   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8210', '900303', 'สะพานไม้แก่น   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8211', '900304', 'สะกอม   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8212', '900305', 'นาหว้า   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8213', '900306', 'นาทับ   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8214', '900307', 'น้ำขาว   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8215', '900308', 'ขุนตัดหวาย   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8216', '900309', 'ท่าหมอไทร   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8217', '900310', 'จะโหนง   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8218', '900311', 'คู   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8219', '900312', 'แค   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8220', '900313', 'คลองเปียะ   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8221', '900314', 'ตลิ่งชัน   ', '920', '70', '6');
INSERT INTO `district` VALUES ('8222', '900401', 'นาทวี   ', '921', '70', '6');
INSERT INTO `district` VALUES ('8223', '900402', 'ฉาง   ', '921', '70', '6');
INSERT INTO `district` VALUES ('8224', '900403', 'นาหมอศรี   ', '921', '70', '6');
INSERT INTO `district` VALUES ('8225', '900404', 'คลองทราย   ', '921', '70', '6');
INSERT INTO `district` VALUES ('8226', '900405', 'ปลักหนู   ', '921', '70', '6');
INSERT INTO `district` VALUES ('8227', '900406', 'ท่าประดู่   ', '921', '70', '6');
INSERT INTO `district` VALUES ('8228', '900407', 'สะท้อน   ', '921', '70', '6');
INSERT INTO `district` VALUES ('8229', '900408', 'ทับช้าง   ', '921', '70', '6');
INSERT INTO `district` VALUES ('8230', '900409', 'ประกอบ   ', '921', '70', '6');
INSERT INTO `district` VALUES ('8231', '900410', 'คลองกวาง   ', '921', '70', '6');
INSERT INTO `district` VALUES ('8232', '900501', 'เทพา   ', '922', '70', '6');
INSERT INTO `district` VALUES ('8233', '900502', 'ปากบาง   ', '922', '70', '6');
INSERT INTO `district` VALUES ('8234', '900503', 'เกาะสะบ้า   ', '922', '70', '6');
INSERT INTO `district` VALUES ('8235', '900504', 'ลำไพล   ', '922', '70', '6');
INSERT INTO `district` VALUES ('8236', '900505', 'ท่าม่วง   ', '922', '70', '6');
INSERT INTO `district` VALUES ('8237', '900506', 'วังใหญ่   ', '922', '70', '6');
INSERT INTO `district` VALUES ('8238', '900507', 'สะกอม   ', '922', '70', '6');
INSERT INTO `district` VALUES ('8239', '900601', 'สะบ้าย้อย   ', '923', '70', '6');
INSERT INTO `district` VALUES ('8240', '900602', 'ทุ่งพอ   ', '923', '70', '6');
INSERT INTO `district` VALUES ('8241', '900603', 'เปียน   ', '923', '70', '6');
INSERT INTO `district` VALUES ('8242', '900604', 'บ้านโหนด   ', '923', '70', '6');
INSERT INTO `district` VALUES ('8243', '900605', 'จะแหน   ', '923', '70', '6');
INSERT INTO `district` VALUES ('8244', '900606', 'คูหา   ', '923', '70', '6');
INSERT INTO `district` VALUES ('8245', '900607', 'เขาแดง   ', '923', '70', '6');
INSERT INTO `district` VALUES ('8246', '900608', 'บาโหย   ', '923', '70', '6');
INSERT INTO `district` VALUES ('8247', '900609', 'ธารคีรี   ', '923', '70', '6');
INSERT INTO `district` VALUES ('8248', '900701', 'ระโนด   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8249', '900702', 'คลองแดน   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8250', '900703', 'ตะเครียะ   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8251', '900704', 'ท่าบอน   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8252', '900705', 'บ้านใหม่   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8253', '900706', 'บ่อตรุ   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8254', '900707', 'ปากแตระ   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8255', '900708', 'พังยาง   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8256', '900709', 'ระวะ   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8257', '900710', 'วัดสน   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8258', '900711', 'บ้านขาว   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8259', '900712', 'แดนสงวน   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8260', '900797', '*เชิงแส   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8261', '900798', '*โรง   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8262', '900799', '*เกาะใหญ่   ', '924', '70', '6');
INSERT INTO `district` VALUES ('8263', '900801', 'เกาะใหญ่   ', '925', '70', '6');
INSERT INTO `district` VALUES ('8264', '900802', 'โรง   ', '925', '70', '6');
INSERT INTO `district` VALUES ('8265', '900803', 'เชิงแส   ', '925', '70', '6');
INSERT INTO `district` VALUES ('8266', '900804', 'กระแสสินธุ์   ', '925', '70', '6');
INSERT INTO `district` VALUES ('8267', '900901', 'กำแพงเพชร   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8268', '900902', 'ท่าชะมวง   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8269', '900903', 'คูหาใต้   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8270', '900904', 'ควนรู   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8271', '900905', '*ควนโส   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8272', '900906', '*รัตภูมิ   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8273', '900907', '*บางเหรียง   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8274', '900908', '*ห้วยลึก   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8275', '900909', 'เขาพระ   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8276', '900996', '*บางเหรี่ยง   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8277', '900997', '*ห้วยลึก   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8278', '900998', '*ควนโส   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8279', '900999', '*รัตนภูมิ   ', '926', '70', '6');
INSERT INTO `district` VALUES ('8280', '901001', 'สะเดา   ', '927', '70', '6');
INSERT INTO `district` VALUES ('8281', '901002', 'ปริก   ', '927', '70', '6');
INSERT INTO `district` VALUES ('8282', '901003', 'พังลา   ', '927', '70', '6');
INSERT INTO `district` VALUES ('8283', '901004', 'สำนักแต้ว   ', '927', '70', '6');
INSERT INTO `district` VALUES ('8284', '901005', 'ทุ่งหมอ   ', '927', '70', '6');
INSERT INTO `district` VALUES ('8285', '901006', 'ท่าโพธิ์   ', '927', '70', '6');
INSERT INTO `district` VALUES ('8286', '901007', 'ปาดังเบซาร์   ', '927', '70', '6');
INSERT INTO `district` VALUES ('8287', '901008', 'สำนักขาม   ', '927', '70', '6');
INSERT INTO `district` VALUES ('8288', '901009', 'เขามีเกียรติ   ', '927', '70', '6');
INSERT INTO `district` VALUES ('8289', '901101', 'หาดใหญ่   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8290', '901102', 'ควนลัง   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8291', '901103', 'คูเต่า   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8292', '901104', 'คอหงส์   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8293', '901105', 'คลองแห   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8294', '901106', 'คลองหอยโข่ง*   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8295', '901107', 'คลองอู่ตะเภา   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8296', '901108', 'ฉลุง   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8297', '901109', 'ทุ่งลาน*   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8298', '901110', 'ท่าช้าง*   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8299', '901111', 'ทุ่งใหญ่   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8300', '901112', 'ทุ่งตำเสา   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8301', '901113', 'ท่าข้าม   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8302', '901114', 'น้ำน้อย   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8303', '901115', '*บางกล่ำ   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8304', '901116', 'บ้านพรุ   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8305', '901117', '*บ้านหาร   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8306', '901118', 'พะตง   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8307', '901119', '*แม่ทอม   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8308', '901121', '*โคกม่วง   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8309', '901190', '*ทุ่งลาน   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8310', '901191', '*คลองหอยโข่ง   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8311', '901192', '*บ้านหาร   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8312', '901193', '*แม่ทอม   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8313', '901194', '*ท่าช้าง   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8314', '901195', '*บางกล่ำ   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8315', '901196', '*คลองหรัง   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8316', '901197', '*ทุ่งขมิ้น   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8317', '901198', '*พิจิตร   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8318', '901199', '*นาหม่อม   ', '928', '70', '6');
INSERT INTO `district` VALUES ('8319', '901201', 'นาหม่อม   ', '929', '70', '6');
INSERT INTO `district` VALUES ('8320', '901202', 'พิจิตร   ', '929', '70', '6');
INSERT INTO `district` VALUES ('8321', '901203', 'ทุ่งขมิ้น   ', '929', '70', '6');
INSERT INTO `district` VALUES ('8322', '901204', 'คลองหรัง   ', '929', '70', '6');
INSERT INTO `district` VALUES ('8323', '901301', 'รัตภูมิ   ', '930', '70', '6');
INSERT INTO `district` VALUES ('8324', '901302', 'ควนโส   ', '930', '70', '6');
INSERT INTO `district` VALUES ('8325', '901303', 'ห้วยลึก   ', '930', '70', '6');
INSERT INTO `district` VALUES ('8326', '901304', 'บางเหรียง   ', '930', '70', '6');
INSERT INTO `district` VALUES ('8327', '901401', 'บางกล่ำ   ', '931', '70', '6');
INSERT INTO `district` VALUES ('8328', '901402', 'ท่าช้าง   ', '931', '70', '6');
INSERT INTO `district` VALUES ('8329', '901403', 'แม่ทอม   ', '931', '70', '6');
INSERT INTO `district` VALUES ('8330', '901404', 'บ้านหาร   ', '931', '70', '6');
INSERT INTO `district` VALUES ('8331', '901501', 'ชิงโค   ', '932', '70', '6');
INSERT INTO `district` VALUES ('8332', '901502', 'สทิงหม้อ   ', '932', '70', '6');
INSERT INTO `district` VALUES ('8333', '901503', 'ทำนบ   ', '932', '70', '6');
INSERT INTO `district` VALUES ('8334', '901504', 'รำแดง   ', '932', '70', '6');
INSERT INTO `district` VALUES ('8335', '901505', 'วัดขนุน   ', '932', '70', '6');
INSERT INTO `district` VALUES ('8336', '901506', 'ชะแล้   ', '932', '70', '6');
INSERT INTO `district` VALUES ('8337', '901507', 'ปากรอ   ', '932', '70', '6');
INSERT INTO `district` VALUES ('8338', '901508', 'ป่าขาด   ', '932', '70', '6');
INSERT INTO `district` VALUES ('8339', '901509', 'หัวเขา   ', '932', '70', '6');
INSERT INTO `district` VALUES ('8340', '901510', 'บางเขียด   ', '932', '70', '6');
INSERT INTO `district` VALUES ('8341', '901511', 'ม่วงงาม   ', '932', '70', '6');
INSERT INTO `district` VALUES ('8342', '901601', 'คลองหอยโข่ง   ', '933', '70', '6');
INSERT INTO `district` VALUES ('8343', '901602', 'ทุ่งลาน   ', '933', '70', '6');
INSERT INTO `district` VALUES ('8344', '901603', 'โคกม่วง   ', '933', '70', '6');
INSERT INTO `district` VALUES ('8345', '901604', 'คลองหลา   ', '933', '70', '6');
INSERT INTO `district` VALUES ('8346', '907701', 'สำนักขาม*   ', '934', '70', '6');
INSERT INTO `district` VALUES ('8347', '910101', 'พิมาน   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8348', '910102', 'คลองขุด   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8349', '910103', 'ควนขัน   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8350', '910104', 'บ้านควน   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8351', '910105', 'ฉลุง   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8352', '910106', 'เกาะสาหร่าย   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8353', '910107', 'ตันหยงโป   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8354', '910108', 'เจ๊ะบิลัง   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8355', '910109', 'ตำมะลัง   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8356', '910110', 'ปูยู   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8357', '910111', 'ควนโพธิ์   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8358', '910112', 'เกตรี   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8359', '910199', '*ท่าแพ   ', '936', '71', '6');
INSERT INTO `district` VALUES ('8360', '910201', 'ควนโดน   ', '937', '71', '6');
INSERT INTO `district` VALUES ('8361', '910202', 'ควนสตอ   ', '937', '71', '6');
INSERT INTO `district` VALUES ('8362', '910203', 'ย่านซื่อ   ', '937', '71', '6');
INSERT INTO `district` VALUES ('8363', '910204', 'วังประจัน   ', '937', '71', '6');
INSERT INTO `district` VALUES ('8364', '910301', 'ทุ่งนุ้ย   ', '938', '71', '6');
INSERT INTO `district` VALUES ('8365', '910302', 'ควนกาหลง   ', '938', '71', '6');
INSERT INTO `district` VALUES ('8366', '910303', 'อุใดเจริญ   ', '938', '71', '6');
INSERT INTO `district` VALUES ('8367', '910304', 'นิคมพัฒนา*   ', '938', '71', '6');
INSERT INTO `district` VALUES ('8368', '910305', 'ปาล์มพัฒนา*   ', '938', '71', '6');
INSERT INTO `district` VALUES ('8369', '910401', 'ท่าแพ   ', '939', '71', '6');
INSERT INTO `district` VALUES ('8370', '910402', 'แป-ระ   ', '939', '71', '6');
INSERT INTO `district` VALUES ('8371', '910403', 'สาคร   ', '939', '71', '6');
INSERT INTO `district` VALUES ('8372', '910404', 'ท่าเรือ   ', '939', '71', '6');
INSERT INTO `district` VALUES ('8373', '910501', 'กำแพง   ', '940', '71', '6');
INSERT INTO `district` VALUES ('8374', '910502', 'ละงู   ', '940', '71', '6');
INSERT INTO `district` VALUES ('8375', '910503', 'เขาขาว   ', '940', '71', '6');
INSERT INTO `district` VALUES ('8376', '910504', 'ปากน้ำ   ', '940', '71', '6');
INSERT INTO `district` VALUES ('8377', '910505', 'น้ำผุด   ', '940', '71', '6');
INSERT INTO `district` VALUES ('8378', '910506', 'แหลมสน   ', '940', '71', '6');
INSERT INTO `district` VALUES ('8379', '910601', 'ทุ่งหว้า   ', '941', '71', '6');
INSERT INTO `district` VALUES ('8380', '910602', 'นาทอน   ', '941', '71', '6');
INSERT INTO `district` VALUES ('8381', '910603', 'ขอนคลาน   ', '941', '71', '6');
INSERT INTO `district` VALUES ('8382', '910604', 'ทุ่งบุหลัง   ', '941', '71', '6');
INSERT INTO `district` VALUES ('8383', '910605', 'ป่าแก่บ่อหิน   ', '941', '71', '6');
INSERT INTO `district` VALUES ('8384', '910701', 'ปาล์มพัฒนา   ', '942', '71', '6');
INSERT INTO `district` VALUES ('8385', '910702', 'นิคมพัฒนา   ', '942', '71', '6');
INSERT INTO `district` VALUES ('8386', '920101', 'ทับเที่ยง   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8387', '920102', '*โคกสะบ้า   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8388', '920103', '*ละมอ   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8389', '920104', 'นาพละ   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8390', '920105', 'บ้านควน   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8391', '920106', 'นาบินหลา   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8392', '920107', 'ควนปริง   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8393', '920108', 'นาโยงใต้   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8394', '920109', 'บางรัก   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8395', '920110', 'โคกหล่อ   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8396', '920111', '*นาข้าวเสีย   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8397', '920112', '*นาหมื่นศรี   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8398', '920113', 'นาโต๊ะหมิง   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8399', '920114', 'หนองตรุด   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8400', '920115', 'น้ำผุด   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8401', '920116', '*นาโยงเหนือ   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8402', '920117', 'นาตาล่วง   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8403', '920118', 'บ้านโพธิ์   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8404', '920119', 'นาท่ามเหนือ   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8405', '920120', 'นาท่ามใต้   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8406', '920121', '*ช่อง   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8407', '920194', '*นาข้าวเสีย   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8408', '920195', '*โคกสะบ้า   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8409', '920196', '*ละมอ   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8410', '920197', '*นาหมื่นศรี   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8411', '920198', '*ช่อง   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8412', '920199', '*นาโยงเหนือ   ', '943', '72', '6');
INSERT INTO `district` VALUES ('8413', '920201', 'กันตัง   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8414', '920202', 'ควนธานี   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8415', '920203', 'บางหมาก   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8416', '920204', 'บางเป้า   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8417', '920205', 'วังวน   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8418', '920206', 'กันตังใต้   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8419', '920207', 'โคกยาง   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8420', '920208', 'คลองลุ   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8421', '920209', 'ย่านซื่อ   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8422', '920210', 'บ่อน้ำร้อน   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8423', '920211', 'บางสัก   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8424', '920212', 'นาเกลือ   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8425', '920213', 'เกาะลิบง   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8426', '920214', 'คลองชีล้อม   ', '944', '72', '6');
INSERT INTO `district` VALUES ('8427', '920301', 'ย่านตาขาว   ', '945', '72', '6');
INSERT INTO `district` VALUES ('8428', '920302', 'หนองบ่อ   ', '945', '72', '6');
INSERT INTO `district` VALUES ('8429', '920303', 'นาชุมเห็ด   ', '945', '72', '6');
INSERT INTO `district` VALUES ('8430', '920304', 'ในควน   ', '945', '72', '6');
INSERT INTO `district` VALUES ('8431', '920305', 'โพรงจระเข้   ', '945', '72', '6');
INSERT INTO `district` VALUES ('8432', '920306', 'ทุ่งกระบือ   ', '945', '72', '6');
INSERT INTO `district` VALUES ('8433', '920307', 'ทุ่งค่าย   ', '945', '72', '6');
INSERT INTO `district` VALUES ('8434', '920308', 'เกาะเปียะ   ', '945', '72', '6');
INSERT INTO `district` VALUES ('8435', '920401', 'ท่าข้าม   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8436', '920402', 'ทุ่งยาว   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8437', '920403', 'ปะเหลียน   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8438', '920404', 'บางด้วน   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8439', '920405', '*หาดสำราญ   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8440', '920406', '*ตะเสะ   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8441', '920407', 'บ้านนา   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8442', '920408', '*บ้าหวี   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8443', '920409', 'สุโสะ   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8444', '920410', 'ลิพัง   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8445', '920411', 'เกาะสุกร   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8446', '920412', 'ท่าพญา   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8447', '920413', 'แหลมสอม   ', '946', '72', '6');
INSERT INTO `district` VALUES ('8448', '920501', 'บ่อหิน   ', '947', '72', '6');
INSERT INTO `district` VALUES ('8449', '920502', 'เขาไม้แก้ว   ', '947', '72', '6');
INSERT INTO `district` VALUES ('8450', '920503', 'กะลาเส   ', '947', '72', '6');
INSERT INTO `district` VALUES ('8451', '920504', 'ไม้ฝาด   ', '947', '72', '6');
INSERT INTO `district` VALUES ('8452', '920505', 'นาเมืองเพชร   ', '947', '72', '6');
INSERT INTO `district` VALUES ('8453', '920595', '*ท่าสะบ้า   ', '947', '72', '6');
INSERT INTO `district` VALUES ('8454', '920596', '*สิเกา   ', '947', '72', '6');
INSERT INTO `district` VALUES ('8455', '920597', '*อ่าวตง   ', '947', '72', '6');
INSERT INTO `district` VALUES ('8456', '920598', '*วังมะปราง   ', '947', '72', '6');
INSERT INTO `district` VALUES ('8457', '920599', '*เขาวิเศษ   ', '947', '72', '6');
INSERT INTO `district` VALUES ('8458', '920601', 'ห้วยยอด   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8459', '920602', 'หนองช้างแล่น   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8460', '920603', '*หนองปรือ   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8461', '920604', '*หนองบัว   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8462', '920605', 'บางดี   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8463', '920606', 'บางกุ้ง   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8464', '920607', 'เขากอบ   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8465', '920608', 'เขาขาว   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8466', '920609', 'เขาปูน   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8467', '920610', 'ปากแจ่ม   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8468', '920611', 'ปากคม   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8469', '920612', '*คลองปาง   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8470', '920613', '*ควนเมา   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8471', '920614', 'ท่างิ้ว   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8472', '920615', 'ลำภูรา   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8473', '920616', 'นาวง   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8474', '920617', 'ห้วยนาง   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8475', '920618', '*เขาไพร   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8476', '920619', 'ในเตา   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8477', '920620', 'ทุ่งต่อ   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8478', '920621', 'วังคีรี   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8479', '920696', '*หนองปรือ   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8480', '920697', '*หนองบัว   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8481', '920698', '*คลองปาง   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8482', '920699', '*ควนเมา   ', '948', '72', '6');
INSERT INTO `district` VALUES ('8483', '920701', 'เขาวิเศษ   ', '949', '72', '6');
INSERT INTO `district` VALUES ('8484', '920702', 'วังมะปราง   ', '949', '72', '6');
INSERT INTO `district` VALUES ('8485', '920703', 'อ่าวตง   ', '949', '72', '6');
INSERT INTO `district` VALUES ('8486', '920704', 'ท่าสะบ้า   ', '949', '72', '6');
INSERT INTO `district` VALUES ('8487', '920705', 'วังมะปรางเหนือ   ', '949', '72', '6');
INSERT INTO `district` VALUES ('8488', '920801', 'นาโยงเหนือ   ', '950', '72', '6');
INSERT INTO `district` VALUES ('8489', '920802', 'ช่อง   ', '950', '72', '6');
INSERT INTO `district` VALUES ('8490', '920803', 'ละมอ   ', '950', '72', '6');
INSERT INTO `district` VALUES ('8491', '920804', 'โคกสะบ้า   ', '950', '72', '6');
INSERT INTO `district` VALUES ('8492', '920805', 'นาหมื่นศรี   ', '950', '72', '6');
INSERT INTO `district` VALUES ('8493', '920806', 'นาข้าวเสีย   ', '950', '72', '6');
INSERT INTO `district` VALUES ('8494', '920901', 'ควนเมา   ', '951', '72', '6');
INSERT INTO `district` VALUES ('8495', '920902', 'คลองปาง   ', '951', '72', '6');
INSERT INTO `district` VALUES ('8496', '920903', 'หนองบัว   ', '951', '72', '6');
INSERT INTO `district` VALUES ('8497', '920904', 'หนองปรือ   ', '951', '72', '6');
INSERT INTO `district` VALUES ('8498', '920905', 'เขาไพร   ', '951', '72', '6');
INSERT INTO `district` VALUES ('8499', '921001', 'หาดสำราญ   ', '952', '72', '6');
INSERT INTO `district` VALUES ('8500', '921002', 'บ้าหวี   ', '952', '72', '6');
INSERT INTO `district` VALUES ('8501', '921003', 'ตะเสะ   ', '952', '72', '6');
INSERT INTO `district` VALUES ('8502', '930101', 'คูหาสวรรค์   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8503', '930102', 'บ้านนา*   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8504', '930103', 'เขาเจียก   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8505', '930104', 'ท่ามิหรำ   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8506', '930105', 'โคกชะงาย   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8507', '930106', 'นาท่อม   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8508', '930107', 'ปรางหมู่   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8509', '930108', 'ท่าแค   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8510', '930109', 'ลำปำ   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8511', '930110', 'ตำนาน   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8512', '930111', 'ควนมะพร้าว   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8513', '930112', 'ร่มเมือง   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8514', '930113', 'ชัยบุรี   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8515', '930114', 'นาโหนด   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8516', '930115', 'พญาขัน   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8517', '930116', 'ลำสินธุ์*   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8518', '930117', 'อ่างทอง*   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8519', '930118', 'ชุมพล*   ', '954', '73', '6');
INSERT INTO `district` VALUES ('8520', '930201', 'กงหรา   ', '955', '73', '6');
INSERT INTO `district` VALUES ('8521', '930202', 'ชะรัด   ', '955', '73', '6');
INSERT INTO `district` VALUES ('8522', '930203', 'คลองเฉลิม   ', '955', '73', '6');
INSERT INTO `district` VALUES ('8523', '930204', 'คลองทรายขาว   ', '955', '73', '6');
INSERT INTO `district` VALUES ('8524', '930205', 'สมหวัง   ', '955', '73', '6');
INSERT INTO `district` VALUES ('8525', '930301', 'เขาชัยสน   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8526', '930302', 'ควนขนุน   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8527', '930303', '*ท่ามะเดื่อ   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8528', '930304', '*นาปะขอ   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8529', '930305', 'จองถนน   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8530', '930306', 'หานโพธิ์   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8531', '930307', 'โคกม่วง   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8532', '930308', '*โคกสัก   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8533', '930395', '*นาปะขอ   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8534', '930396', '*คลองใหญ่   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8535', '930397', '*ตะโหมด   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8536', '930398', '*ท่ามะเดื่อ   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8537', '930399', '*แม่ขรี   ', '956', '73', '6');
INSERT INTO `district` VALUES ('8538', '930401', 'แม่ขรี   ', '957', '73', '6');
INSERT INTO `district` VALUES ('8539', '930402', 'ตะโหมด   ', '957', '73', '6');
INSERT INTO `district` VALUES ('8540', '930403', 'คลองใหญ่   ', '957', '73', '6');
INSERT INTO `district` VALUES ('8541', '930501', 'ควนขนุน   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8542', '930502', 'ทะเลน้อย   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8543', '930503', '*เกาะเต่า   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8544', '930504', 'นาขยาด   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8545', '930505', 'พนมวังก์   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8546', '930506', 'แหลมโตนด   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8547', '930507', '*ป่าพะยอม   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8548', '930508', 'ปันแต   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8549', '930509', 'โตนดด้วน   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8550', '930510', 'ดอนทราย   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8551', '930511', 'มะกอกเหนือ   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8552', '930512', 'พนางตุง   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8553', '930513', 'ชะมวง   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8554', '930514', '*บ้านพร้าว   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8555', '930515', '*ลานข่อย   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8556', '930516', 'แพรกหา   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8557', '930596', '*คำไผ่   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8558', '930597', '*คำเตย   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8559', '930598', '*ส้มผ่อ   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8560', '930599', '*ป่าพะยอม   ', '958', '73', '6');
INSERT INTO `district` VALUES ('8561', '930601', 'ปากพะยูน   ', '959', '73', '6');
INSERT INTO `district` VALUES ('8562', '930602', 'ดอนประดู่   ', '959', '73', '6');
INSERT INTO `district` VALUES ('8563', '930603', 'เกาะนางคำ   ', '959', '73', '6');
INSERT INTO `district` VALUES ('8564', '930604', 'เกาะหมาก   ', '959', '73', '6');
INSERT INTO `district` VALUES ('8565', '930605', 'ฝาละมี   ', '959', '73', '6');
INSERT INTO `district` VALUES ('8566', '930606', 'หารเทา   ', '959', '73', '6');
INSERT INTO `district` VALUES ('8567', '930607', 'ดอนทราย   ', '959', '73', '6');
INSERT INTO `district` VALUES ('8568', '930697', '*หนองแซง   ', '959', '73', '6');
INSERT INTO `district` VALUES ('8569', '930698', '*โคกทราย   ', '959', '73', '6');
INSERT INTO `district` VALUES ('8570', '930699', '*ป่าบอน   ', '959', '73', '6');
INSERT INTO `district` VALUES ('8571', '930701', 'เขาย่า   ', '960', '73', '6');
INSERT INTO `district` VALUES ('8572', '930702', 'เขาปู่   ', '960', '73', '6');
INSERT INTO `district` VALUES ('8573', '930703', 'ตะแพน   ', '960', '73', '6');
INSERT INTO `district` VALUES ('8574', '930801', 'ป่าบอน   ', '961', '73', '6');
INSERT INTO `district` VALUES ('8575', '930802', 'โคกทราย   ', '961', '73', '6');
INSERT INTO `district` VALUES ('8576', '930803', 'หนองธง   ', '961', '73', '6');
INSERT INTO `district` VALUES ('8577', '930804', 'ทุ่งนารี   ', '961', '73', '6');
INSERT INTO `district` VALUES ('8578', '930806', 'วังใหม่   ', '961', '73', '6');
INSERT INTO `district` VALUES ('8579', '930901', 'ท่ามะเดื่อ   ', '962', '73', '6');
INSERT INTO `district` VALUES ('8580', '930902', 'นาปะขอ   ', '962', '73', '6');
INSERT INTO `district` VALUES ('8581', '930903', 'โคกสัก   ', '962', '73', '6');
INSERT INTO `district` VALUES ('8582', '931001', 'ป่าพะยอม   ', '963', '73', '6');
INSERT INTO `district` VALUES ('8583', '931002', 'ลานข่อย   ', '963', '73', '6');
INSERT INTO `district` VALUES ('8584', '931003', 'เกาะเต่า   ', '963', '73', '6');
INSERT INTO `district` VALUES ('8585', '931004', 'บ้านพร้าว   ', '963', '73', '6');
INSERT INTO `district` VALUES ('8586', '931101', 'ชุมพล   ', '964', '73', '6');
INSERT INTO `district` VALUES ('8587', '931102', 'บ้านนา   ', '964', '73', '6');
INSERT INTO `district` VALUES ('8588', '931103', 'อ่างทอง   ', '964', '73', '6');
INSERT INTO `district` VALUES ('8589', '931104', 'ลำสินธุ์   ', '964', '73', '6');
INSERT INTO `district` VALUES ('8590', '940101', 'สะบารัง   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8591', '940102', 'อาเนาะรู   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8592', '940103', 'จะบังติกอ   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8593', '940104', 'บานา   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8594', '940105', 'ตันหยงลุโละ   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8595', '940106', 'คลองมานิง   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8596', '940107', 'กะมิยอ   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8597', '940108', 'บาราโหม   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8598', '940109', 'ปะกาฮะรัง   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8599', '940110', 'รูสะมิแล   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8600', '940111', 'ตะลุโบะ   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8601', '940112', 'บาราเฮาะ   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8602', '940113', 'ปุยุด   ', '965', '74', '6');
INSERT INTO `district` VALUES ('8603', '940201', 'โคกโพธิ์   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8604', '940202', 'มะกรูด   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8605', '940203', 'บางโกระ   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8606', '940204', 'ป่าบอน   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8607', '940205', 'ทรายขาว   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8608', '940206', 'นาประดู่   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8609', '940207', 'ปากล่อ   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8610', '940208', 'ทุ่งพลา   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8611', '940209', '*แม่ลาน   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8612', '940210', '*ป่าไร่   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8613', '940211', 'ท่าเรือ   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8614', '940212', '*ม่วงเตี้ย   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8615', '940213', 'นาเกตุ   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8616', '940214', 'ควนโนรี   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8617', '940215', 'ช้างให้ตก   ', '966', '74', '6');
INSERT INTO `district` VALUES ('8618', '940301', 'เกาะเปาะ   ', '967', '74', '6');
INSERT INTO `district` VALUES ('8619', '940302', 'คอลอตันหยง   ', '967', '74', '6');
INSERT INTO `district` VALUES ('8620', '940303', 'ดอนรัก   ', '967', '74', '6');
INSERT INTO `district` VALUES ('8621', '940304', 'ดาโต๊ะ   ', '967', '74', '6');
INSERT INTO `district` VALUES ('8622', '940305', 'ตุยง   ', '967', '74', '6');
INSERT INTO `district` VALUES ('8623', '940306', 'ท่ากำชำ   ', '967', '74', '6');
INSERT INTO `district` VALUES ('8624', '940307', 'บ่อทอง   ', '967', '74', '6');
INSERT INTO `district` VALUES ('8625', '940308', 'บางเขา   ', '967', '74', '6');
INSERT INTO `district` VALUES ('8626', '940309', 'บางตาวา   ', '967', '74', '6');
INSERT INTO `district` VALUES ('8627', '940310', 'ปุโละปุโย   ', '967', '74', '6');
INSERT INTO `district` VALUES ('8628', '940311', 'ยาบี   ', '967', '74', '6');
INSERT INTO `district` VALUES ('8629', '940312', 'ลิปะสะโง   ', '967', '74', '6');
INSERT INTO `district` VALUES ('8630', '940401', 'ปะนาเระ   ', '968', '74', '6');
INSERT INTO `district` VALUES ('8631', '940402', 'ท่าข้าม   ', '968', '74', '6');
INSERT INTO `district` VALUES ('8632', '940403', 'บ้านนอก   ', '968', '74', '6');
INSERT INTO `district` VALUES ('8633', '940404', 'ดอน   ', '968', '74', '6');
INSERT INTO `district` VALUES ('8634', '940405', 'ควน   ', '968', '74', '6');
INSERT INTO `district` VALUES ('8635', '940406', 'ท่าน้ำ   ', '968', '74', '6');
INSERT INTO `district` VALUES ('8636', '940407', 'คอกกระบือ   ', '968', '74', '6');
INSERT INTO `district` VALUES ('8637', '940408', 'พ่อมิ่ง   ', '968', '74', '6');
INSERT INTO `district` VALUES ('8638', '940409', 'บ้านกลาง   ', '968', '74', '6');
INSERT INTO `district` VALUES ('8639', '940410', 'บ้านน้ำบ่อ   ', '968', '74', '6');
INSERT INTO `district` VALUES ('8640', '940501', 'มายอ   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8641', '940502', 'ถนน   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8642', '940503', 'ตรัง   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8643', '940504', 'กระหวะ   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8644', '940505', 'ลุโบะยิไร   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8645', '940506', 'ลางา   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8646', '940507', 'กระเสาะ   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8647', '940508', 'เกาะจัน   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8648', '940509', 'ปะโด   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8649', '940510', 'สาคอบน   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8650', '940511', 'สาคอใต้   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8651', '940512', 'สะกำ   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8652', '940513', 'ปานัน   ', '969', '74', '6');
INSERT INTO `district` VALUES ('8653', '940601', 'ตะโละแมะนา   ', '970', '74', '6');
INSERT INTO `district` VALUES ('8654', '940602', 'พิเทน   ', '970', '74', '6');
INSERT INTO `district` VALUES ('8655', '940603', 'น้ำดำ   ', '970', '74', '6');
INSERT INTO `district` VALUES ('8656', '940604', 'ปากู   ', '970', '74', '6');
INSERT INTO `district` VALUES ('8657', '940701', 'ตะลุบัน   ', '971', '74', '6');
INSERT INTO `district` VALUES ('8658', '940702', 'ตะบิ้ง   ', '971', '74', '6');
INSERT INTO `district` VALUES ('8659', '940703', 'ปะเสยะวอ   ', '971', '74', '6');
INSERT INTO `district` VALUES ('8660', '940704', 'บางเก่า   ', '971', '74', '6');
INSERT INTO `district` VALUES ('8661', '940705', 'บือเระ   ', '971', '74', '6');
INSERT INTO `district` VALUES ('8662', '940706', 'เตราะบอน   ', '971', '74', '6');
INSERT INTO `district` VALUES ('8663', '940707', 'กะดุนง   ', '971', '74', '6');
INSERT INTO `district` VALUES ('8664', '940708', 'ละหาร   ', '971', '74', '6');
INSERT INTO `district` VALUES ('8665', '940709', 'มะนังดาลำ   ', '971', '74', '6');
INSERT INTO `district` VALUES ('8666', '940710', 'แป้น   ', '971', '74', '6');
INSERT INTO `district` VALUES ('8667', '940711', 'ทุ่งคล้า   ', '971', '74', '6');
INSERT INTO `district` VALUES ('8668', '940801', 'ไทรทอง   ', '972', '74', '6');
INSERT INTO `district` VALUES ('8669', '940802', 'ไม้แก่น   ', '972', '74', '6');
INSERT INTO `district` VALUES ('8670', '940803', 'ตะโละไกรทอง   ', '972', '74', '6');
INSERT INTO `district` VALUES ('8671', '940804', 'ดอนทราย   ', '972', '74', '6');
INSERT INTO `district` VALUES ('8672', '940901', 'ตะโละ   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8673', '940902', 'ตะโละกาโปร์   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8674', '940903', 'ตันหยงดาลอ   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8675', '940904', 'ตันหยงจึงงา   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8676', '940905', 'ตอหลัง   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8677', '940906', 'ตาแกะ   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8678', '940907', 'ตาลีอายร์   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8679', '940908', 'ยามู   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8680', '940909', 'บางปู   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8681', '940910', 'หนองแรต   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8682', '940911', 'ปิยามุมัง   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8683', '940912', 'ปุลากง   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8684', '940913', 'บาโลย   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8685', '940914', 'สาบัน   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8686', '940915', 'มะนังยง   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8687', '940916', 'ราตาปันยัง   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8688', '940917', 'จะรัง   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8689', '940918', 'แหลมโพธิ์   ', '973', '74', '6');
INSERT INTO `district` VALUES ('8690', '941001', 'ยะรัง   ', '974', '74', '6');
INSERT INTO `district` VALUES ('8691', '941002', 'สะดาวา   ', '974', '74', '6');
INSERT INTO `district` VALUES ('8692', '941003', 'ประจัน   ', '974', '74', '6');
INSERT INTO `district` VALUES ('8693', '941004', 'สะนอ   ', '974', '74', '6');
INSERT INTO `district` VALUES ('8694', '941005', 'ระแว้ง   ', '974', '74', '6');
INSERT INTO `district` VALUES ('8695', '941006', 'ปิตูมุดี   ', '974', '74', '6');
INSERT INTO `district` VALUES ('8696', '941007', 'วัด   ', '974', '74', '6');
INSERT INTO `district` VALUES ('8697', '941008', 'กระโด   ', '974', '74', '6');
INSERT INTO `district` VALUES ('8698', '941009', 'คลองใหม่   ', '974', '74', '6');
INSERT INTO `district` VALUES ('8699', '941010', 'เมาะมาวี   ', '974', '74', '6');
INSERT INTO `district` VALUES ('8700', '941011', 'กอลำ   ', '974', '74', '6');
INSERT INTO `district` VALUES ('8701', '941012', 'เขาตูม   ', '974', '74', '6');
INSERT INTO `district` VALUES ('8702', '941101', 'กะรุบี   ', '975', '74', '6');
INSERT INTO `district` VALUES ('8703', '941102', 'ตะโละดือรามัน   ', '975', '74', '6');
INSERT INTO `district` VALUES ('8704', '941103', 'ปล่องหอย   ', '975', '74', '6');
INSERT INTO `district` VALUES ('8705', '941201', 'แม่ลาน   ', '976', '74', '6');
INSERT INTO `district` VALUES ('8706', '941202', 'ม่วงเตี้ย   ', '976', '74', '6');
INSERT INTO `district` VALUES ('8707', '941203', 'ป่าไร่   ', '976', '74', '6');
INSERT INTO `district` VALUES ('8708', '950101', 'สะเตง   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8709', '950102', 'บุดี   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8710', '950103', 'ยุโป   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8711', '950104', 'ลิดล   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8712', '950105', '*ปุโรง   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8713', '950106', 'ยะลา   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8714', '950107', '*สะเอะ   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8715', '950108', 'ท่าสาป   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8716', '950109', 'ลำใหม่   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8717', '950110', 'หน้าถ้ำ   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8718', '950111', 'ลำพะยา   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8719', '950112', 'เปาะเส้ง   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8720', '950113', '*กรงปินัง   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8721', '950114', 'พร่อน   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8722', '950115', 'บันนังสาเรง   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8723', '950116', 'สะเตงนอก   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8724', '950117', '*ห้วยกระทิง   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8725', '950118', 'ตาเซะ   ', '977', '75', '6');
INSERT INTO `district` VALUES ('8726', '950201', 'เบตง   ', '978', '75', '6');
INSERT INTO `district` VALUES ('8727', '950202', 'ยะรม   ', '978', '75', '6');
INSERT INTO `district` VALUES ('8728', '950203', 'ตาเนาะแมเราะ   ', '978', '75', '6');
INSERT INTO `district` VALUES ('8729', '950204', 'อัยเยอร์เวง   ', '978', '75', '6');
INSERT INTO `district` VALUES ('8730', '950205', 'ธารน้ำทิพย์   ', '978', '75', '6');
INSERT INTO `district` VALUES ('8731', '950301', 'บันนังสตา   ', '979', '75', '6');
INSERT INTO `district` VALUES ('8732', '950302', 'บาเจาะ   ', '979', '75', '6');
INSERT INTO `district` VALUES ('8733', '950303', 'ตาเนาะปูเต๊ะ   ', '979', '75', '6');
INSERT INTO `district` VALUES ('8734', '950304', 'ถ้ำทะลุ   ', '979', '75', '6');
INSERT INTO `district` VALUES ('8735', '950305', 'ตลิ่งชัน   ', '979', '75', '6');
INSERT INTO `district` VALUES ('8736', '950306', 'เขื่อนบางลาง   ', '979', '75', '6');
INSERT INTO `district` VALUES ('8737', '950397', '*แม่หวาด   ', '979', '75', '6');
INSERT INTO `district` VALUES ('8738', '950398', '*บ้านแหร   ', '979', '75', '6');
INSERT INTO `district` VALUES ('8739', '950399', '*ธารโต   ', '979', '75', '6');
INSERT INTO `district` VALUES ('8740', '950401', 'ธารโต   ', '980', '75', '6');
INSERT INTO `district` VALUES ('8741', '950402', 'บ้านแหร   ', '980', '75', '6');
INSERT INTO `district` VALUES ('8742', '950403', 'แม่หวาด   ', '980', '75', '6');
INSERT INTO `district` VALUES ('8743', '950404', 'คีรีเขต   ', '980', '75', '6');
INSERT INTO `district` VALUES ('8744', '950501', 'ยะหา   ', '981', '75', '6');
INSERT INTO `district` VALUES ('8745', '950502', 'ละแอ   ', '981', '75', '6');
INSERT INTO `district` VALUES ('8746', '950503', 'ปะแต   ', '981', '75', '6');
INSERT INTO `district` VALUES ('8747', '950504', 'บาโร๊ะ   ', '981', '75', '6');
INSERT INTO `district` VALUES ('8748', '950505', '*กาบัง   ', '981', '75', '6');
INSERT INTO `district` VALUES ('8749', '950506', 'ตาชี   ', '981', '75', '6');
INSERT INTO `district` VALUES ('8750', '950507', 'บาโงยซิแน   ', '981', '75', '6');
INSERT INTO `district` VALUES ('8751', '950508', 'กาตอง   ', '981', '75', '6');
INSERT INTO `district` VALUES ('8752', '950509', '*บาละ   ', '981', '75', '6');
INSERT INTO `district` VALUES ('8753', '950599', '*กาบัง   ', '981', '75', '6');
INSERT INTO `district` VALUES ('8754', '950601', 'กายูบอเกาะ   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8755', '950602', 'กาลูปัง   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8756', '950603', 'กาลอ   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8757', '950604', 'กอตอตือร๊ะ   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8758', '950605', 'โกตาบารู   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8759', '950606', 'เกะรอ   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8760', '950607', 'จะกว๊ะ   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8761', '950608', 'ท่าธง   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8762', '950609', 'เนินงาม   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8763', '950610', 'บาลอ   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8764', '950611', 'บาโงย   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8765', '950612', 'บือมัง   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8766', '950613', 'ยะต๊ะ   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8767', '950614', 'วังพญา   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8768', '950615', 'อาซ่อง   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8769', '950616', 'ตะโล๊ะหะลอ   ', '982', '75', '6');
INSERT INTO `district` VALUES ('8770', '950701', 'กาบัง   ', '983', '75', '6');
INSERT INTO `district` VALUES ('8771', '950702', 'บาละ   ', '983', '75', '6');
INSERT INTO `district` VALUES ('8772', '950801', 'กรงปินัง   ', '984', '75', '6');
INSERT INTO `district` VALUES ('8773', '950802', 'สะเอะ   ', '984', '75', '6');
INSERT INTO `district` VALUES ('8774', '950803', 'ห้วยกระทิง   ', '984', '75', '6');
INSERT INTO `district` VALUES ('8775', '950804', 'ปุโรง   ', '984', '75', '6');
INSERT INTO `district` VALUES ('8776', '960101', 'บางนาค   ', '985', '76', '6');
INSERT INTO `district` VALUES ('8777', '960102', 'ลำภู   ', '985', '76', '6');
INSERT INTO `district` VALUES ('8778', '960103', 'มะนังตายอ   ', '985', '76', '6');
INSERT INTO `district` VALUES ('8779', '960104', 'บางปอ   ', '985', '76', '6');
INSERT INTO `district` VALUES ('8780', '960105', 'กะลุวอ   ', '985', '76', '6');
INSERT INTO `district` VALUES ('8781', '960106', 'กะลุวอเหนือ   ', '985', '76', '6');
INSERT INTO `district` VALUES ('8782', '960107', 'โคกเคียน   ', '985', '76', '6');
INSERT INTO `district` VALUES ('8783', '960201', 'เจ๊ะเห   ', '986', '76', '6');
INSERT INTO `district` VALUES ('8784', '960202', 'ไพรวัน   ', '986', '76', '6');
INSERT INTO `district` VALUES ('8785', '960203', 'พร่อน   ', '986', '76', '6');
INSERT INTO `district` VALUES ('8786', '960204', 'ศาลาใหม่   ', '986', '76', '6');
INSERT INTO `district` VALUES ('8787', '960205', 'บางขุนทอง   ', '986', '76', '6');
INSERT INTO `district` VALUES ('8788', '960206', 'เกาะสะท้อน   ', '986', '76', '6');
INSERT INTO `district` VALUES ('8789', '960207', 'นานาค   ', '986', '76', '6');
INSERT INTO `district` VALUES ('8790', '960208', 'โฆษิต   ', '986', '76', '6');
INSERT INTO `district` VALUES ('8791', '960301', 'บาเจาะ   ', '987', '76', '6');
INSERT INTO `district` VALUES ('8792', '960302', 'ลุโบะสาวอ   ', '987', '76', '6');
INSERT INTO `district` VALUES ('8793', '960303', 'กาเยาะมาตี   ', '987', '76', '6');
INSERT INTO `district` VALUES ('8794', '960304', 'ปะลุกาสาเมาะ   ', '987', '76', '6');
INSERT INTO `district` VALUES ('8795', '960305', 'บาเระเหนือ   ', '987', '76', '6');
INSERT INTO `district` VALUES ('8796', '960306', 'บาเระใต้   ', '987', '76', '6');
INSERT INTO `district` VALUES ('8797', '960401', 'ยี่งอ   ', '988', '76', '6');
INSERT INTO `district` VALUES ('8798', '960402', 'ละหาร   ', '988', '76', '6');
INSERT INTO `district` VALUES ('8799', '960403', 'จอเบาะ   ', '988', '76', '6');
INSERT INTO `district` VALUES ('8800', '960404', 'ลุโบะบายะ   ', '988', '76', '6');
INSERT INTO `district` VALUES ('8801', '960405', 'ลุโบะบือซา   ', '988', '76', '6');
INSERT INTO `district` VALUES ('8802', '960406', 'ตะปอเยาะ   ', '988', '76', '6');
INSERT INTO `district` VALUES ('8803', '960501', 'ตันหยงมัส   ', '989', '76', '6');
INSERT INTO `district` VALUES ('8804', '960502', 'ตันหยงลิมอ   ', '989', '76', '6');
INSERT INTO `district` VALUES ('8805', '960503', '*จวบ   ', '989', '76', '6');
INSERT INTO `district` VALUES ('8806', '960504', '*มะรือโบตะวันออก   ', '989', '76', '6');
INSERT INTO `district` VALUES ('8807', '960505', '*บูกิต   ', '989', '76', '6');
INSERT INTO `district` VALUES ('8808', '960506', 'บองอ   ', '989', '76', '6');
INSERT INTO `district` VALUES ('8809', '960507', 'กาลิซา   ', '989', '76', '6');
INSERT INTO `district` VALUES ('8810', '960508', 'บาโงสะโต   ', '989', '76', '6');
INSERT INTO `district` VALUES ('8811', '960509', 'เฉลิม   ', '989', '76', '6');
INSERT INTO `district` VALUES ('8812', '960510', 'มะรือโบตก   ', '989', '76', '6');
INSERT INTO `district` VALUES ('8813', '960598', '*ดุซงญอ   ', '989', '76', '6');
INSERT INTO `district` VALUES ('8814', '960599', '*จะแนะ   ', '989', '76', '6');
INSERT INTO `district` VALUES ('8815', '960601', 'รือเสาะ   ', '990', '76', '6');
INSERT INTO `district` VALUES ('8816', '960602', 'สาวอ   ', '990', '76', '6');
INSERT INTO `district` VALUES ('8817', '960603', 'เรียง   ', '990', '76', '6');
INSERT INTO `district` VALUES ('8818', '960604', 'สามัคคี   ', '990', '76', '6');
INSERT INTO `district` VALUES ('8819', '960605', 'บาตง   ', '990', '76', '6');
INSERT INTO `district` VALUES ('8820', '960606', 'ลาโละ   ', '990', '76', '6');
INSERT INTO `district` VALUES ('8821', '960607', 'รือเสาะออก   ', '990', '76', '6');
INSERT INTO `district` VALUES ('8822', '960608', 'โคกสะตอ   ', '990', '76', '6');
INSERT INTO `district` VALUES ('8823', '960609', 'สุวารี   ', '990', '76', '6');
INSERT INTO `district` VALUES ('8824', '960698', '*ตะมะยูง   ', '990', '76', '6');
INSERT INTO `district` VALUES ('8825', '960699', '*ชากอ   ', '990', '76', '6');
INSERT INTO `district` VALUES ('8826', '960701', 'ซากอ   ', '991', '76', '6');
INSERT INTO `district` VALUES ('8827', '960702', 'ตะมะยูง   ', '991', '76', '6');
INSERT INTO `district` VALUES ('8828', '960703', 'ศรีสาคร   ', '991', '76', '6');
INSERT INTO `district` VALUES ('8829', '960704', 'เชิงคีรี   ', '991', '76', '6');
INSERT INTO `district` VALUES ('8830', '960705', 'กาหลง   ', '991', '76', '6');
INSERT INTO `district` VALUES ('8831', '960706', 'ศรีบรรพต   ', '991', '76', '6');
INSERT INTO `district` VALUES ('8832', '960801', 'แว้ง   ', '992', '76', '6');
INSERT INTO `district` VALUES ('8833', '960802', 'กายูคละ   ', '992', '76', '6');
INSERT INTO `district` VALUES ('8834', '960803', 'ฆอเลาะ   ', '992', '76', '6');
INSERT INTO `district` VALUES ('8835', '960804', 'โละจูด   ', '992', '76', '6');
INSERT INTO `district` VALUES ('8836', '960805', 'แม่ดง   ', '992', '76', '6');
INSERT INTO `district` VALUES ('8837', '960806', 'เอราวัณ   ', '992', '76', '6');
INSERT INTO `district` VALUES ('8838', '960899', '*มาโม   ', '992', '76', '6');
INSERT INTO `district` VALUES ('8839', '960901', 'มาโมง   ', '993', '76', '6');
INSERT INTO `district` VALUES ('8840', '960902', 'สุคิริน   ', '993', '76', '6');
INSERT INTO `district` VALUES ('8841', '960903', 'เกียร์   ', '993', '76', '6');
INSERT INTO `district` VALUES ('8842', '960904', 'ภูเขาทอง   ', '993', '76', '6');
INSERT INTO `district` VALUES ('8843', '960905', 'ร่มไทร   ', '993', '76', '6');
INSERT INTO `district` VALUES ('8844', '961001', 'สุไหงโก-ลก   ', '994', '76', '6');
INSERT INTO `district` VALUES ('8845', '961002', 'ปาเสมัส   ', '994', '76', '6');
INSERT INTO `district` VALUES ('8846', '961003', 'มูโนะ   ', '994', '76', '6');
INSERT INTO `district` VALUES ('8847', '961004', 'ปูโยะ   ', '994', '76', '6');
INSERT INTO `district` VALUES ('8848', '961101', 'ปะลุรู   ', '995', '76', '6');
INSERT INTO `district` VALUES ('8849', '961102', 'สุไหงปาดี   ', '995', '76', '6');
INSERT INTO `district` VALUES ('8850', '961103', 'โต๊ะเด็ง   ', '995', '76', '6');
INSERT INTO `district` VALUES ('8851', '961104', 'สากอ   ', '995', '76', '6');
INSERT INTO `district` VALUES ('8852', '961105', 'ริโก๋   ', '995', '76', '6');
INSERT INTO `district` VALUES ('8853', '961106', 'กาวะ   ', '995', '76', '6');
INSERT INTO `district` VALUES ('8854', '961201', 'จะแนะ   ', '996', '76', '6');
INSERT INTO `district` VALUES ('8855', '961202', 'ดุซงญอ   ', '996', '76', '6');
INSERT INTO `district` VALUES ('8856', '961203', 'ผดุงมาตร   ', '996', '76', '6');
INSERT INTO `district` VALUES ('8857', '961204', 'ช้างเผือก   ', '996', '76', '6');
INSERT INTO `district` VALUES ('8858', '961301', 'จวบ   ', '997', '76', '6');
INSERT INTO `district` VALUES ('8859', '961302', 'บูกิต   ', '997', '76', '6');
INSERT INTO `district` VALUES ('8860', '961303', 'มะรือโบออก   ', '997', '76', '6');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_id` int(11) DEFAULT NULL,
  `prefix` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `emp_code` varchar(255) DEFAULT NULL,
  `salary_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '1', '1', 'ศาลายา', 'บาเรน', '1', null, '', '', '1', '1559723099', '1559723099', '1', null, null, 'EM001', '2');

-- ----------------------------
-- Table structure for `event`
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `trans_date` date DEFAULT NULL,
  `ref_type` int(11) DEFAULT NULL,
  `event_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES ('16', 'แผนซื้อประจำวันที่ 04-06-2019', '1559581200', null, null, '1559661814', '1559661814', '1', null, '2019-06-04', null, '1');
INSERT INTO `event` VALUES ('34', 'สวน สวนบุญชู', '1565283600', null, null, '1562475947', '1562475947', '1', null, '2019-08-09', '6', '2');
INSERT INTO `event` VALUES ('35', 'สวน สวนพรเทพ', '1562432400', null, null, '1562475947', '1562475947', '1', null, '2019-07-07', '6', '2');
INSERT INTO `event` VALUES ('36', 'สวน สวนอำนวย', '1564678800', null, null, '1562475947', '1562475947', '1', null, '2019-08-02', '6', '2');
INSERT INTO `event` VALUES ('37', 'แผนซื้อประจำวันที่ 09-07-2019', '1562605200', null, null, '1562675640', '1562675640', '1', null, '2019-07-09', null, '1');
INSERT INTO `event` VALUES ('41', 'แผนซื้อประจำวันที่ 16-11-2019', '1573837200', null, null, '1573915527', '1573915527', '1', null, '2019-11-16', null, '1');
INSERT INTO `event` VALUES ('45', 'แผนซื้อประจำวันที่ 17-11-2019', '1573923600', null, null, '1573961193', '1573961193', '1', null, '2019-11-17', null, '1');
INSERT INTO `event` VALUES ('46', 'แผนซื้อประจำวันที่ 01-12-2019', '1575133200', null, null, '1575212813', '1575212813', '1', null, '2019-12-01', null, '1');

-- ----------------------------
-- Table structure for `invoice`
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(255) DEFAULT NULL,
  `invoice_date` int(11) DEFAULT NULL,
  `suplier_id` int(11) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `payment_term` int(11) DEFAULT NULL,
  `delivery_type` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `total_text` varchar(255) DEFAULT NULL,
  `total_issue` float DEFAULT NULL,
  `total_advance` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invoice
-- ----------------------------
INSERT INTO `invoice` VALUES ('1', 'INV19000001', '1573923600', '1', null, null, null, null, null, '1', '1573961797', '1573961797', '1', '1', 'หนึ่งพันบาทถ้วน', '0', null);

-- ----------------------------
-- Table structure for `invoice_line`
-- ----------------------------
DROP TABLE IF EXISTS `invoice_line`;
CREATE TABLE `invoice_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `trans_date_ref` int(11) DEFAULT NULL,
  `prodrec_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invoice_line
-- ----------------------------
INSERT INTO `invoice_line` VALUES ('1', '1', '1', '100', '10', '1000', null, '0', '1573961797', '1573961797', '1', null, '1559537586', '1');

-- ----------------------------
-- Table structure for `journal`
-- ----------------------------
DROP TABLE IF EXISTS `journal`;
CREATE TABLE `journal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `reference_type_id` int(11) DEFAULT NULL,
  `trans_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `trans_date` int(11) DEFAULT NULL,
  `journal_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of journal
-- ----------------------------
INSERT INTO `journal` VALUES ('1', null, null, '', '14', '14', '1', '1559537586', '1559537586', '1', null, null, 'PDR19000001');
INSERT INTO `journal` VALUES ('2', null, null, '', '14', '14', '1', '1559539963', '1559539963', '1', null, null, 'PDR19000002');
INSERT INTO `journal` VALUES ('3', null, null, '', '14', '14', '1', '1559540404', '1559540404', '1', null, null, 'PDR19000003');
INSERT INTO `journal` VALUES ('4', null, null, '', '14', '14', '1', '1559540450', '1559540450', '1', null, null, 'PDR19000004');
INSERT INTO `journal` VALUES ('5', null, null, '', '14', '14', '1', '1559540572', '1559540572', '1', null, null, 'PDR19000005');
INSERT INTO `journal` VALUES ('6', null, null, '', '15', '15', '1', '1573951233', '1573951233', '1', null, null, 'REP19000001');

-- ----------------------------
-- Table structure for `journaltable`
-- ----------------------------
DROP TABLE IF EXISTS `journaltable`;
CREATE TABLE `journaltable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `account_type` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of journaltable
-- ----------------------------

-- ----------------------------
-- Table structure for `journal_trans`
-- ----------------------------
DROP TABLE IF EXISTS `journal_trans`;
CREATE TABLE `journal_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `journal_type_status` int(11) DEFAULT NULL,
  `line_amount` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `onhand_qty` int(11) DEFAULT NULL,
  `counted_qty` int(11) DEFAULT NULL,
  `diff_qty` int(11) DEFAULT NULL,
  `from_wh` int(11) DEFAULT NULL,
  `to_wh` int(11) DEFAULT NULL,
  `from_loc` int(11) DEFAULT NULL,
  `to_loc` int(11) DEFAULT NULL,
  `from_lot` int(11) DEFAULT NULL,
  `to_lot` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `line_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of journal_trans
-- ----------------------------
INSERT INTO `journal_trans` VALUES ('1', '1', '1', '100', null, '0', '1', '1559537586', '1559537586', '1', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `journal_trans` VALUES ('2', '2', '1', null, null, '0', '1', '1559539963', '1559539963', '1', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `journal_trans` VALUES ('3', '3', '1', null, null, '0', '1', '1559540404', '1559540404', '1', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `journal_trans` VALUES ('4', '4', '1', null, null, '0', '1', '1559540450', '1559540450', '1', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `journal_trans` VALUES ('5', '5', '1', null, null, '0', '1', '1559540572', '1559540572', '1', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `journal_trans` VALUES ('6', '6', '1', '30', null, '0', '1', '1573951233', '1573951233', '1', null, null, null, null, null, '1', null, null, null, null, null, '0');
INSERT INTO `journal_trans` VALUES ('7', '6', '1', '23', null, '0', '1', '1573951233', '1573951233', '1', null, null, null, null, null, '1', null, null, null, null, null, '0');
INSERT INTO `journal_trans` VALUES ('8', '6', '1', '2', null, '0', '1', '1573951233', '1573951233', '1', null, null, null, null, null, '1', null, null, null, null, null, '0');
INSERT INTO `journal_trans` VALUES ('9', '6', '1', '56', null, '0', '1', '1573951233', '1573951233', '1', null, null, null, null, null, '1', null, null, null, null, null, '0');
INSERT INTO `journal_trans` VALUES ('10', '6', '1', '9', null, '0', '1', '1573951233', '1573951233', '1', null, null, null, null, null, '1', null, null, null, null, null, '0');
INSERT INTO `journal_trans` VALUES ('11', '6', '1', '0', null, '0', '1', '1573951233', '1573951233', '1', null, null, null, null, null, '1', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for `location`
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------

-- ----------------------------
-- Table structure for `lot`
-- ----------------------------
DROP TABLE IF EXISTS `lot`;
CREATE TABLE `lot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `expire_date` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lot
-- ----------------------------

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', 'รับวัตถุดิบเลขที่ PDR19000001', 'รับเข้าวัตถุดิบของ ป้าปลิว จำนวน 1รายการ', '2', '1559537586', '1559538787', '1', '1');
INSERT INTO `message` VALUES ('2', '1', 'รับวัตถุดิบเลขที่ PDR19000002', 'รับเข้าวัตถุดิบของ ป้าปลิว จำนวน 1รายการ', '2', '1559539963', '1559540181', '1', '1');
INSERT INTO `message` VALUES ('3', '1', 'รับวัตถุดิบเลขที่ PDR19000002', 'รับเข้าวัตถุดิบของ ป้าปลิว จำนวน 1รายการ', '2', '1559540404', '1559541840', '1', '1');
INSERT INTO `message` VALUES ('4', '1', 'รับวัตถุดิบเลขที่ PDR19000002', 'รับเข้าวัตถุดิบของ ป้าปลิว จำนวน 1รายการ', '2', '1559540450', '1559552885', '1', '1');
INSERT INTO `message` VALUES ('5', '1', 'รับวัตถุดิบเลขที่ PDR19000003', 'รับเข้าวัตถุดิบของ ป้าปลิว จำนวน 1รายการ', '2', '1559540572', '1559541836', '1', '1');

-- ----------------------------
-- Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1559532490');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1559532491');
INSERT INTO `migration` VALUES ('m140506_102106_rbac_init', '1559532549');
INSERT INTO `migration` VALUES ('m170907_052038_rbac_add_index_on_auth_assignment_user_id', '1559532549');
INSERT INTO `migration` VALUES ('m171128_102925_create_plant_table', '1559532491');
INSERT INTO `migration` VALUES ('m171128_103619_create_addressbook_table', '1559532491');
INSERT INTO `migration` VALUES ('m171128_103646_create_bank_table', '1559532491');
INSERT INTO `migration` VALUES ('m171128_103700_create_bank_account_table', '1559532492');
INSERT INTO `migration` VALUES ('m171128_103737_create_user_group_table', '1559532492');
INSERT INTO `migration` VALUES ('m171128_103809_create_position_table', '1559532492');
INSERT INTO `migration` VALUES ('m171128_103822_create_employee_table', '1559532492');
INSERT INTO `migration` VALUES ('m171128_105027_create_department_table', '1559532492');
INSERT INTO `migration` VALUES ('m171128_105037_create_section_table', '1559532492');
INSERT INTO `migration` VALUES ('m171128_105231_create_warehouse_table', '1559532492');
INSERT INTO `migration` VALUES ('m171128_105241_create_location_table', '1559532493');
INSERT INTO `migration` VALUES ('m171128_105308_create_product_category_table', '1559532493');
INSERT INTO `migration` VALUES ('m171128_105636_create_product_table', '1559532493');
INSERT INTO `migration` VALUES ('m171128_121234_create_vendor_group_table', '1559532493');
INSERT INTO `migration` VALUES ('m171128_121300_create_vendor_table', '1559532493');
INSERT INTO `migration` VALUES ('m171128_121327_create_journal_table', '1559532493');
INSERT INTO `migration` VALUES ('m171128_121340_create_journal_trans_table', '1559532493');
INSERT INTO `migration` VALUES ('m171128_121402_create_prefixname_table', '1559532493');
INSERT INTO `migration` VALUES ('m171129_124746_create_payment_type_table', '1559532493');
INSERT INTO `migration` VALUES ('m171129_124828_create_delivery_type_table', '1559532494');
INSERT INTO `migration` VALUES ('m171129_124909_create_payment_term_table', '1559532494');
INSERT INTO `migration` VALUES ('m171129_124935_create_currency_table', '1559532494');
INSERT INTO `migration` VALUES ('m171129_125254_create_stock_balance_table', '1559532494');
INSERT INTO `migration` VALUES ('m171129_130234_create_product_gallery_table', '1559532494');
INSERT INTO `migration` VALUES ('m171129_142449_create_unit_table', '1559532494');
INSERT INTO `migration` VALUES ('m171130_131920_add_column_to_vendor_table', '1559532495');
INSERT INTO `migration` VALUES ('m171130_141034_add_column_to_user_table', '1559532495');
INSERT INTO `migration` VALUES ('m171201_030954_create_customer_group_table', '1559532495');
INSERT INTO `migration` VALUES ('m171201_031001_create_customer_table', '1559532495');
INSERT INTO `migration` VALUES ('m171201_043708_create_purchreq_table', '1559532495');
INSERT INTO `migration` VALUES ('m171201_043716_create_purchreq_line_table', '1559532495');
INSERT INTO `migration` VALUES ('m171201_043749_create_quotation_table', '1559532496');
INSERT INTO `migration` VALUES ('m171201_043754_create_quotation_line_table', '1559532496');
INSERT INTO `migration` VALUES ('m171201_043812_create_sale_table', '1559532496');
INSERT INTO `migration` VALUES ('m171201_043818_create_sale_line_table', '1559532496');
INSERT INTO `migration` VALUES ('m171201_150555_create_config_table', '1559532496');
INSERT INTO `migration` VALUES ('m180504_040918_create_tradetable_table', '1559532496');
INSERT INTO `migration` VALUES ('m180504_040926_create_tradeline_table', '1559532496');
INSERT INTO `migration` VALUES ('m180504_042504_create_lot_table', '1559532496');
INSERT INTO `migration` VALUES ('m180504_042906_add_column_to_product_table', '1559532497');
INSERT INTO `migration` VALUES ('m180504_043651_create_onhand_table', '1559532497');
INSERT INTO `migration` VALUES ('m180505_084911_add_column_to_deliverytype_table', '1559532497');
INSERT INTO `migration` VALUES ('m180505_140600_create_sequence_table', '1559532497');
INSERT INTO `migration` VALUES ('m180505_235236_create_purchtable_table', '1559532497');
INSERT INTO `migration` VALUES ('m180505_235243_create_purchline_table', '1559532497');
INSERT INTO `migration` VALUES ('m180506_083632_add_bank_id_column_to_bankaccount', '1559532498');
INSERT INTO `migration` VALUES ('m180507_014624_add_column_role_id_to_user_table', '1559532498');
INSERT INTO `migration` VALUES ('m180514_064230_add_column_to_vendor_table', '1559532498');
INSERT INTO `migration` VALUES ('m180514_070754_add_column_to_delivery_table', '1559532498');
INSERT INTO `migration` VALUES ('m180514_081605_add_column_to_customer_table', '1559532498');
INSERT INTO `migration` VALUES ('m180514_090134_add_column_to_bank_account_table', '1559532498');
INSERT INTO `migration` VALUES ('m180515_091931_add_column_to_product_table', '1559532499');
INSERT INTO `migration` VALUES ('m180515_150650_create_journaltable_table', '1559532499');
INSERT INTO `migration` VALUES ('m180516_025354_add_column_to_journaltable', '1559532499');
INSERT INTO `migration` VALUES ('m180516_053851_add_column_to_journal_table', '1559532499');
INSERT INTO `migration` VALUES ('m180516_054350_add_column_to_journal_trans_table', '1559532501');
INSERT INTO `migration` VALUES ('m180516_065841_add_column_to_journal_table', '1559532501');
INSERT INTO `migration` VALUES ('m180523_151638_rbac_updates_indexes_without_prefix', '1559532549');
INSERT INTO `migration` VALUES ('m180530_062617_create_vendor_approved_table', '1559532501');
INSERT INTO `migration` VALUES ('m180614_082304_create_zone_table', '1559532501');
INSERT INTO `migration` VALUES ('m180614_083328_create_purch_plan_table', '1559532501');
INSERT INTO `migration` VALUES ('m180616_030841_add_user_id_column_to_employee_table', '1559532501');
INSERT INTO `migration` VALUES ('m180616_031151_add_emp_code_column_to_employee_table', '1559532501');
INSERT INTO `migration` VALUES ('m180618_031431_create_event_table', '1559532501');
INSERT INTO `migration` VALUES ('m180618_085347_add_column_to_employee_table', '1559532502');
INSERT INTO `migration` VALUES ('m180618_091250_create_orchard_table', '1559532502');
INSERT INTO `migration` VALUES ('m180618_150130_create_team_table', '1559532502');
INSERT INTO `migration` VALUES ('m180618_152332_add_column_to_team_table', '1559532502');
INSERT INTO `migration` VALUES ('m180619_024817_add_column_wage_to_team_table', '1559532502');
INSERT INTO `migration` VALUES ('m180619_075531_add_column_to_orchard_table', '1559532503');
INSERT INTO `migration` VALUES ('m180619_081118_add_column_to_vendor_table', '1559532503');
INSERT INTO `migration` VALUES ('m180620_045905_create_prod_rec_table', '1559532503');
INSERT INTO `migration` VALUES ('m180626_073509_create_table_purch_plan_line_table', '1559532503');
INSERT INTO `migration` VALUES ('m180626_104427_add_column_to_purch_plan_line_table', '1559532503');
INSERT INTO `migration` VALUES ('m180627_063214_add_column_to_vendor_table', '1559532503');
INSERT INTO `migration` VALUES ('m180628_062330_create_invoice_table', '1559532503');
INSERT INTO `migration` VALUES ('m180628_062338_create_invoice_line_table', '1559532503');
INSERT INTO `migration` VALUES ('m180628_084007_add_column_to_vendor_table', '1559532504');
INSERT INTO `migration` VALUES ('m180628_142048_add_column_to_purchrec_table', '1559532504');
INSERT INTO `migration` VALUES ('m180629_035544_add_column_to_product_table', '1559532504');
INSERT INTO `migration` VALUES ('m180630_044855_add_column_to_zone_table', '1559532504');
INSERT INTO `migration` VALUES ('m180630_045923_add_column_to_zone_table', '1559532504');
INSERT INTO `migration` VALUES ('m180701_030953_add_column_to_journal_line_table', '1559532504');
INSERT INTO `migration` VALUES ('m180701_032626_add_column_to_journal_line_table', '1559532505');
INSERT INTO `migration` VALUES ('m180702_030331_create_production_rec_table', '1559532505');
INSERT INTO `migration` VALUES ('m180702_030342_create_production_rec_line_table', '1559532505');
INSERT INTO `migration` VALUES ('m180702_031759_add_column_to_production_rec_table', '1559532505');
INSERT INTO `migration` VALUES ('m180702_041943_add_column_to_prod_rec_table', '1559532505');
INSERT INTO `migration` VALUES ('m180702_102107_add_column_to_prodrec_table', '1559532505');
INSERT INTO `migration` VALUES ('m180703_024501_create_prod_rec_line_table', '1559532505');
INSERT INTO `migration` VALUES ('m180703_125031_add_column_to_prod_rec_line_table', '1559532505');
INSERT INTO `migration` VALUES ('m180709_132022_add_column_to_prod_rec_line_table', '1559532506');
INSERT INTO `migration` VALUES ('m180709_140523_add_column_to_prod_rec_line_table', '1559532506');
INSERT INTO `migration` VALUES ('m180710_033454_add_column_to_zone_table', '1559532506');
INSERT INTO `migration` VALUES ('m180711_014630_add_column_to_prod_rec_table', '1559532506');
INSERT INTO `migration` VALUES ('m180711_015521_add_column_to_orchard_table', '1559532506');
INSERT INTO `migration` VALUES ('m180711_020515_add_column_to_vendor_table', '1559532506');
INSERT INTO `migration` VALUES ('m180711_081937_create_prod_issue_table', '1559532506');
INSERT INTO `migration` VALUES ('m180711_081947_create_prod_issue_line_table', '1559532506');
INSERT INTO `migration` VALUES ('m180713_075120_add_column_to_prodrec_line_table', '1559532507');
INSERT INTO `migration` VALUES ('m180716_032337_add_column_to_stock_balance_table', '1559532507');
INSERT INTO `migration` VALUES ('m180716_033940_add_column_to_stock_balance_table', '1559532507');
INSERT INTO `migration` VALUES ('m180717_133023_add_column_to_prod_issue_line', '1559532507');
INSERT INTO `migration` VALUES ('m180719_043441_create_zone_product_table', '1559532508');
INSERT INTO `migration` VALUES ('m180721_020922_add_column_to_production_rec_line', '1559532508');
INSERT INTO `migration` VALUES ('m180724_105449_add_column_to_zoneproduct_table', '1559532508');
INSERT INTO `migration` VALUES ('m180731_042650_create_quality_table', '1559532508');
INSERT INTO `migration` VALUES ('m180731_042700_create_quality_line_table', '1559532508');
INSERT INTO `migration` VALUES ('m180731_141948_add_column_to_quality_table', '1559532508');
INSERT INTO `migration` VALUES ('m180801_131200_add_column_to_quality_table', '1559532509');
INSERT INTO `migration` VALUES ('m180810_154419_add_column_to_production_rec_line_table', '1559532509');
INSERT INTO `migration` VALUES ('m180811_091232_add_column_to_production_rec_table', '1559532509');
INSERT INTO `migration` VALUES ('m180811_143651_add_column_to_prod_rec_table', '1559532509');
INSERT INTO `migration` VALUES ('m180812_133845_add_column_to_invoice_line_table', '1559532509');
INSERT INTO `migration` VALUES ('m180816_144340_add_column_to_invoice_line_table', '1559532509');
INSERT INTO `migration` VALUES ('m180816_144404_add_column_to_invoice_table', '1559532510');
INSERT INTO `migration` VALUES ('m180819_080049_add_column_to_purch_plan_line_table', '1559532510');
INSERT INTO `migration` VALUES ('m180819_080056_add_column_to_purch_plan_table', '1559532510');
INSERT INTO `migration` VALUES ('m180823_133037_create_work_schedule_table', '1559532510');
INSERT INTO `migration` VALUES ('m180823_145409_add_column_to_event_table', '1559532510');
INSERT INTO `migration` VALUES ('m180827_142351_create_message_table', '1559532510');
INSERT INTO `migration` VALUES ('m180830_050138_add_column_to_production_rec_table', '1559532511');
INSERT INTO `migration` VALUES ('m180901_113510_add_column_to_prodrec_table', '1559532511');
INSERT INTO `migration` VALUES ('m180901_143051_add_column_to_production_rec_table', '1559532511');
INSERT INTO `migration` VALUES ('m180909_064235_add_column_to_vendor_table', '1559532511');
INSERT INTO `migration` VALUES ('m181002_144359_add_comlumn_to_orchard_table', '1559532511');
INSERT INTO `migration` VALUES ('m181216_081246_create_worktime_table', '1559532511');
INSERT INTO `migration` VALUES ('m181216_081258_create_worktime_trans_table', '1559532511');
INSERT INTO `migration` VALUES ('m181223_054930_create_cut_table_table', '1559532512');
INSERT INTO `migration` VALUES ('m181223_054936_create_cut_table_line_table', '1559532512');
INSERT INTO `migration` VALUES ('m181226_070757_add_cut_interval_column_to_orchard_table', '1559532512');
INSERT INTO `migration` VALUES ('m190120_064244_create_orchard_treat_table', '1559532512');
INSERT INTO `migration` VALUES ('m190120_070931_create_treat_table', '1559532512');
INSERT INTO `migration` VALUES ('m190604_134507_add_event_type_column_to_event_table', '1559655913');

-- ----------------------------
-- Table structure for `onhand`
-- ----------------------------
DROP TABLE IF EXISTS `onhand`;
CREATE TABLE `onhand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `plant_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `lot_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of onhand
-- ----------------------------

-- ----------------------------
-- Table structure for `orchard`
-- ----------------------------
DROP TABLE IF EXISTS `orchard`;
CREATE TABLE `orchard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `area_size` float DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `wage` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `id_card` varchar(10) DEFAULT NULL,
  `latlong` varchar(255) DEFAULT NULL,
  `standard` varchar(255) DEFAULT NULL,
  `attach_file` varchar(255) DEFAULT NULL,
  `iscompany` int(11) DEFAULT NULL,
  `transport_wage` float DEFAULT NULL,
  `cut_interval` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orchard
-- ----------------------------
INSERT INTO `orchard` VALUES ('1', 'สวนบุญชู', '', '12', '2', null, '2300', '1', '1559652575', '1559652575', '1', null, 'น้าชู', '3433344444', '', '1', null, null, '1500', '25');
INSERT INTO `orchard` VALUES ('2', 'สวนพรเทพ', '', null, '1', null, null, '1', '1559657879', '1559657889', '1', '1', 'เทพวรา', '', '', '2,3', null, null, null, null);
INSERT INTO `orchard` VALUES ('3', 'สวนอำนวย', '', '33', '2', '1', '2300', '1', '1559659357', '1559659357', '1', null, 'กกก', '', '', '1', null, null, '1500', '25');

-- ----------------------------
-- Table structure for `orchard_treat`
-- ----------------------------
DROP TABLE IF EXISTS `orchard_treat`;
CREATE TABLE `orchard_treat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orchard_id` int(11) DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `use_qty` int(11) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `operate_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orchard_treat
-- ----------------------------
INSERT INTO `orchard_treat` VALUES ('1', '3', '0000-00-00 00:00:00', '1', '1', null, null, null, '1562473736', null, '1');
INSERT INTO `orchard_treat` VALUES ('2', '3', '0000-00-00 00:00:00', '1', '2', null, null, null, '1573915615', null, '1');

-- ----------------------------
-- Table structure for `payment_term`
-- ----------------------------
DROP TABLE IF EXISTS `payment_term`;
CREATE TABLE `payment_term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment_term
-- ----------------------------

-- ----------------------------
-- Table structure for `payment_type`
-- ----------------------------
DROP TABLE IF EXISTS `payment_type`;
CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment_type
-- ----------------------------

-- ----------------------------
-- Table structure for `plant`
-- ----------------------------
DROP TABLE IF EXISTS `plant`;
CREATE TABLE `plant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `eng_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `tax_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `line` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plant
-- ----------------------------
INSERT INTO `plant` VALUES ('1', 'บริษัท เอ แอน เจ ผลไม้ไทย จำกัด', 'A&J', 'A&J', '', '', '', '', '', '', '', '', '', null, '1559534742', '1559534742', '1', null);

-- ----------------------------
-- Table structure for `position`
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('1', 'พนักงานทั่วไป', '', '1', '1559723121', '1559723121', '1', null);

-- ----------------------------
-- Table structure for `prefixname`
-- ----------------------------
DROP TABLE IF EXISTS `prefixname`;
CREATE TABLE `prefixname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prefixname
-- ----------------------------

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `min_stock` float DEFAULT NULL,
  `max_stock` float DEFAULT NULL,
  `is_hold` int(11) DEFAULT NULL,
  `has_variant` int(11) DEFAULT NULL,
  `bom_type` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `all_qty` float DEFAULT NULL,
  `available_qty` float DEFAULT NULL,
  `reserved_qty` float DEFAULT NULL,
  `shelf_life` int(11) DEFAULT NULL,
  `check_avl` int(11) DEFAULT NULL,
  `netweight` float DEFAULT NULL,
  `tareweight` float DEFAULT NULL,
  `grossweight` float DEFAULT NULL,
  `date_price` int(11) DEFAULT NULL,
  `zone_group` int(11) DEFAULT NULL,
  `zone_qty_per` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'P1', 'ลูกเขียว', '', '', null, '1', null, '1', null, null, null, null, null, '0', '0', '1', '1559536420', '1573951233', '1', '1', '120', null, null, null, null, null, null, null, null, '1', null);

-- ----------------------------
-- Table structure for `production_rec`
-- ----------------------------
DROP TABLE IF EXISTS `production_rec`;
CREATE TABLE `production_rec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_date` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `zone_date` int(11) DEFAULT NULL,
  `zone_status` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `all_qty` float DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `zone_type` int(11) DEFAULT NULL,
  `productrec_no` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rec_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of production_rec
-- ----------------------------
INSERT INTO `production_rec` VALUES ('1', '1573923600', '1', '1559537586', '1', null, null, null, null, '1573951233', '1573951233', '1', null, null, 'REP19000001', '1', null);

-- ----------------------------
-- Table structure for `production_rec_line`
-- ----------------------------
DROP TABLE IF EXISTS `production_rec_line`;
CREATE TABLE `production_rec_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `production_rec_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `line_num` int(11) DEFAULT NULL,
  `line_qty` int(11) DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `list_qty` varchar(255) DEFAULT NULL,
  `line_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of production_rec_line
-- ----------------------------
INSERT INTO `production_rec_line` VALUES ('1', '1', '1', null, '30', null, '1', '1573951233', '1573951233', '1', null, null, null);
INSERT INTO `production_rec_line` VALUES ('2', '1', '1', null, '23', null, '1', '1573951233', '1573951233', '1', null, null, null);
INSERT INTO `production_rec_line` VALUES ('3', '1', '1', null, '2', null, '1', '1573951233', '1573951233', '1', null, null, null);
INSERT INTO `production_rec_line` VALUES ('4', '1', '1', null, null, null, '0', '1573951233', '1573951233', '1', '1', null, null);
INSERT INTO `production_rec_line` VALUES ('5', '1', '1', null, null, null, '0', '1573951233', '1573951233', '1', '1', null, null);
INSERT INTO `production_rec_line` VALUES ('6', '1', '1', null, '56', null, '1', '1573951233', '1573951233', '1', null, null, null);
INSERT INTO `production_rec_line` VALUES ('7', '1', '1', null, '9', null, '1', '1573951233', '1573951233', '1', null, null, null);
INSERT INTO `production_rec_line` VALUES ('8', '1', '1', null, '0', null, '0', '1573951233', '1573951233', '1', '1', null, null);
INSERT INTO `production_rec_line` VALUES ('9', '1', '1', null, null, null, '0', '1573951233', '1573951233', '1', '1', null, null);
INSERT INTO `production_rec_line` VALUES ('10', '1', '1', null, null, null, '0', '1573951233', '1573951233', '1', '1', null, null);

-- ----------------------------
-- Table structure for `product_category`
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES ('1', 'ลูกเขียว', '', '1', '1559534886', '1559534886', '1', null);
INSERT INTO `product_category` VALUES ('2', 'วัสดุ', 'กดกด', '1', '1559537043', '1559537043', '1', null);

-- ----------------------------
-- Table structure for `product_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `product_gallery`;
CREATE TABLE `product_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `file_extension` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_gallery
-- ----------------------------

-- ----------------------------
-- Table structure for `prod_issue`
-- ----------------------------
DROP TABLE IF EXISTS `prod_issue`;
CREATE TABLE `prod_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_no` varchar(255) DEFAULT NULL,
  `trans_date` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `issue_by` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_issue
-- ----------------------------
INSERT INTO `prod_issue` VALUES ('1', 'IS19000001', '1559667600', null, '100', '1', null, '1', '1559718637', '1559718637', '1', '1');
INSERT INTO `prod_issue` VALUES ('2', 'IS19000002', '1562346000', null, '0', '1', null, '1', '1562420844', '1562420845', '1', '1');

-- ----------------------------
-- Table structure for `prod_issue_line`
-- ----------------------------
DROP TABLE IF EXISTS `prod_issue_line`;
CREATE TABLE `prod_issue_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_rec_id` int(11) DEFAULT NULL,
  `prod_issue_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `lot_no` varchar(255) DEFAULT NULL,
  `ref_no` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_issue_line
-- ----------------------------
INSERT INTO `prod_issue_line` VALUES ('1', null, '1', '1', '100', null, 'SP1030662', null, null, null, null, null, null, '1', '0', null);
INSERT INTO `prod_issue_line` VALUES ('2', null, '2', null, null, null, '', null, null, null, null, null, null, '1', '1', null);
INSERT INTO `prod_issue_line` VALUES ('3', null, '3', null, null, null, '', null, null, null, null, null, null, '1', '1', null);

-- ----------------------------
-- Table structure for `prod_rec`
-- ----------------------------
DROP TABLE IF EXISTS `prod_rec`;
CREATE TABLE `prod_rec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_no` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `trans_date` int(11) DEFAULT NULL,
  `suplier_id` int(11) DEFAULT NULL,
  `raw_type` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `plan_price` float DEFAULT NULL,
  `qc_note` text,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `lot_no` varchar(255) DEFAULT NULL,
  `ref_no` varchar(255) DEFAULT NULL,
  `orchard_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `rec_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_rec
-- ----------------------------
INSERT INTO `prod_rec` VALUES ('1', 'PDR19000001', null, '1559494800', '1', null, '100', null, null, '2', '1559537586', '1573961797', '1', '1', null, 'SP1030662', null, null, null, '1', '2019-06-03');

-- ----------------------------
-- Table structure for `prod_rec_line`
-- ----------------------------
DROP TABLE IF EXISTS `prod_rec_line`;
CREATE TABLE `prod_rec_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_rec_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `lot_no` varchar(255) DEFAULT NULL,
  `ref_no` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `line_type` int(11) DEFAULT NULL,
  `list_zone` varchar(255) DEFAULT NULL,
  `list_qty` varchar(255) DEFAULT NULL,
  `orchard` int(11) DEFAULT NULL,
  `team1` int(11) DEFAULT NULL,
  `team2` int(11) DEFAULT NULL,
  `qc_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_rec_line
-- ----------------------------
INSERT INTO `prod_rec_line` VALUES ('1', '1', '1', '1', '100', '10', 'SP1030662', null, null, '1559537586', '1559537586', '1', null, '1', 'A1', '100', null, null, null, '');

-- ----------------------------
-- Table structure for `province`
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `PROVINCE_ID` int(5) NOT NULL AUTO_INCREMENT,
  `PROVINCE_CODE` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `PROVINCE_NAME` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `GEO_ID` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PROVINCE_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '10', 'กรุงเทพมหานคร   ', '2');
INSERT INTO `province` VALUES ('2', '11', 'สมุทรปราการ   ', '2');
INSERT INTO `province` VALUES ('3', '12', 'นนทบุรี   ', '2');
INSERT INTO `province` VALUES ('4', '13', 'ปทุมธานี   ', '2');
INSERT INTO `province` VALUES ('5', '14', 'พระนครศรีอยุธยา   ', '2');
INSERT INTO `province` VALUES ('6', '15', 'อ่างทอง   ', '2');
INSERT INTO `province` VALUES ('7', '16', 'ลพบุรี   ', '2');
INSERT INTO `province` VALUES ('8', '17', 'สิงห์บุรี   ', '2');
INSERT INTO `province` VALUES ('9', '18', 'ชัยนาท   ', '2');
INSERT INTO `province` VALUES ('10', '19', 'สระบุรี', '2');
INSERT INTO `province` VALUES ('11', '20', 'ชลบุรี   ', '5');
INSERT INTO `province` VALUES ('12', '21', 'ระยอง   ', '5');
INSERT INTO `province` VALUES ('13', '22', 'จันทบุรี   ', '5');
INSERT INTO `province` VALUES ('14', '23', 'ตราด   ', '5');
INSERT INTO `province` VALUES ('15', '24', 'ฉะเชิงเทรา   ', '5');
INSERT INTO `province` VALUES ('16', '25', 'ปราจีนบุรี   ', '5');
INSERT INTO `province` VALUES ('17', '26', 'นครนายก   ', '2');
INSERT INTO `province` VALUES ('18', '27', 'สระแก้ว   ', '5');
INSERT INTO `province` VALUES ('19', '30', 'นครราชสีมา   ', '3');
INSERT INTO `province` VALUES ('20', '31', 'บุรีรัมย์   ', '3');
INSERT INTO `province` VALUES ('21', '32', 'สุรินทร์   ', '3');
INSERT INTO `province` VALUES ('22', '33', 'ศรีสะเกษ   ', '3');
INSERT INTO `province` VALUES ('23', '34', 'อุบลราชธานี   ', '3');
INSERT INTO `province` VALUES ('24', '35', 'ยโสธร   ', '3');
INSERT INTO `province` VALUES ('25', '36', 'ชัยภูมิ   ', '3');
INSERT INTO `province` VALUES ('26', '37', 'อำนาจเจริญ   ', '3');
INSERT INTO `province` VALUES ('27', '39', 'หนองบัวลำภู   ', '3');
INSERT INTO `province` VALUES ('28', '40', 'ขอนแก่น   ', '3');
INSERT INTO `province` VALUES ('29', '41', 'อุดรธานี   ', '3');
INSERT INTO `province` VALUES ('30', '42', 'เลย   ', '3');
INSERT INTO `province` VALUES ('31', '43', 'หนองคาย   ', '3');
INSERT INTO `province` VALUES ('32', '44', 'มหาสารคาม   ', '3');
INSERT INTO `province` VALUES ('33', '45', 'ร้อยเอ็ด   ', '3');
INSERT INTO `province` VALUES ('34', '46', 'กาฬสินธุ์   ', '3');
INSERT INTO `province` VALUES ('35', '47', 'สกลนคร   ', '3');
INSERT INTO `province` VALUES ('36', '48', 'นครพนม   ', '3');
INSERT INTO `province` VALUES ('37', '49', 'มุกดาหาร   ', '3');
INSERT INTO `province` VALUES ('38', '50', 'เชียงใหม่   ', '1');
INSERT INTO `province` VALUES ('39', '51', 'ลำพูน   ', '1');
INSERT INTO `province` VALUES ('40', '52', 'ลำปาง   ', '1');
INSERT INTO `province` VALUES ('41', '53', 'อุตรดิตถ์   ', '1');
INSERT INTO `province` VALUES ('42', '54', 'แพร่   ', '1');
INSERT INTO `province` VALUES ('43', '55', 'น่าน   ', '1');
INSERT INTO `province` VALUES ('44', '56', 'พะเยา   ', '1');
INSERT INTO `province` VALUES ('45', '57', 'เชียงราย   ', '1');
INSERT INTO `province` VALUES ('46', '58', 'แม่ฮ่องสอน   ', '1');
INSERT INTO `province` VALUES ('47', '60', 'นครสวรรค์   ', '2');
INSERT INTO `province` VALUES ('48', '61', 'อุทัยธานี   ', '2');
INSERT INTO `province` VALUES ('49', '62', 'กำแพงเพชร   ', '2');
INSERT INTO `province` VALUES ('50', '63', 'ตาก   ', '4');
INSERT INTO `province` VALUES ('51', '64', 'สุโขทัย   ', '2');
INSERT INTO `province` VALUES ('52', '65', 'พิษณุโลก   ', '2');
INSERT INTO `province` VALUES ('53', '66', 'พิจิตร   ', '2');
INSERT INTO `province` VALUES ('54', '67', 'เพชรบูรณ์   ', '2');
INSERT INTO `province` VALUES ('55', '70', 'ราชบุรี   ', '4');
INSERT INTO `province` VALUES ('56', '71', 'กาญจนบุรี   ', '4');
INSERT INTO `province` VALUES ('57', '72', 'สุพรรณบุรี   ', '2');
INSERT INTO `province` VALUES ('58', '73', 'นครปฐม   ', '2');
INSERT INTO `province` VALUES ('59', '74', 'สมุทรสาคร   ', '2');
INSERT INTO `province` VALUES ('60', '75', 'สมุทรสงคราม   ', '2');
INSERT INTO `province` VALUES ('61', '76', 'เพชรบุรี   ', '4');
INSERT INTO `province` VALUES ('62', '77', 'ประจวบคีรีขันธ์   ', '4');
INSERT INTO `province` VALUES ('63', '80', 'นครศรีธรรมราช   ', '6');
INSERT INTO `province` VALUES ('64', '81', 'กระบี่   ', '6');
INSERT INTO `province` VALUES ('65', '82', 'พังงา   ', '6');
INSERT INTO `province` VALUES ('66', '83', 'ภูเก็ต   ', '6');
INSERT INTO `province` VALUES ('67', '84', 'สุราษฎร์ธานี   ', '6');
INSERT INTO `province` VALUES ('68', '85', 'ระนอง   ', '6');
INSERT INTO `province` VALUES ('69', '86', 'ชุมพร   ', '6');
INSERT INTO `province` VALUES ('70', '90', 'สงขลา   ', '6');
INSERT INTO `province` VALUES ('71', '91', 'สตูล   ', '6');
INSERT INTO `province` VALUES ('72', '92', 'ตรัง   ', '6');
INSERT INTO `province` VALUES ('73', '93', 'พัทลุง   ', '6');
INSERT INTO `province` VALUES ('74', '94', 'ปัตตานี   ', '6');
INSERT INTO `province` VALUES ('75', '95', 'ยะลา   ', '6');
INSERT INTO `province` VALUES ('76', '96', 'นราธิวาส   ', '6');
INSERT INTO `province` VALUES ('77', '97', 'บึงกาฬ', '3');

-- ----------------------------
-- Table structure for `purchline`
-- ----------------------------
DROP TABLE IF EXISTS `purchline`;
CREATE TABLE `purchline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purch_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `line_price` float DEFAULT NULL,
  `line_disc_amt` float DEFAULT NULL,
  `line_disc_per` float DEFAULT NULL,
  `line_amt` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchline
-- ----------------------------

-- ----------------------------
-- Table structure for `purchreq`
-- ----------------------------
DROP TABLE IF EXISTS `purchreq`;
CREATE TABLE `purchreq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchreq_no` varchar(255) DEFAULT NULL,
  `require_date` int(11) DEFAULT NULL,
  `request_by` int(11) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `approve_status` int(11) DEFAULT NULL,
  `approve_by` int(11) DEFAULT NULL,
  `approve_date` int(11) DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchreq
-- ----------------------------

-- ----------------------------
-- Table structure for `purchreq_line`
-- ----------------------------
DROP TABLE IF EXISTS `purchreq_line`;
CREATE TABLE `purchreq_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchreq_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `noneitem_name` varchar(255) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `line_amount` float DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchreq_line
-- ----------------------------

-- ----------------------------
-- Table structure for `purchtable`
-- ----------------------------
DROP TABLE IF EXISTS `purchtable`;
CREATE TABLE `purchtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purch_no` varchar(255) DEFAULT NULL,
  `purch_date` varchar(255) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `delivery_to` int(11) DEFAULT NULL,
  `discount_amt` float DEFAULT NULL,
  `discount_per` float DEFAULT NULL,
  `confirm_status` int(11) DEFAULT NULL,
  `require_date` int(11) DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchtable
-- ----------------------------

-- ----------------------------
-- Table structure for `purch_plan`
-- ----------------------------
DROP TABLE IF EXISTS `purch_plan`;
CREATE TABLE `purch_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `discription` text,
  `plan_date` int(11) DEFAULT NULL,
  `product_type` int(11) DEFAULT NULL,
  `plan_type` int(11) DEFAULT NULL,
  `plan_qty` int(11) DEFAULT NULL,
  `received_qty` int(11) DEFAULT NULL,
  `plan_price` float DEFAULT NULL,
  `note` text,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `trans_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purch_plan
-- ----------------------------
INSERT INTO `purch_plan` VALUES ('1', 'แผนซื้อประจำวันที่ 04-06-2019', null, '1559581200', null, null, null, null, null, null, '1', '1559537468', '1559661796', '1', '1', '2019-06-03');
INSERT INTO `purch_plan` VALUES ('2', 'แผนซื้อประจำวันที่ 09-07-2019', null, '1562605200', null, null, null, null, null, null, '1', '1562675640', '1562675640', '1', null, '2019-07-09');
INSERT INTO `purch_plan` VALUES ('3', 'แผนซื้อประจำวันที่ 16-11-2019', null, '1573837200', null, null, null, null, null, null, '1', '1573915412', '1573915412', '1', '1', '2019-11-16');
INSERT INTO `purch_plan` VALUES ('5', 'แผนซื้อประจำวันที่ 17-11-2019', null, '1573923600', null, null, null, null, null, null, '1', '1573961193', '1573961193', '1', null, '2019-11-17');
INSERT INTO `purch_plan` VALUES ('6', 'แผนซื้อประจำวันที่ 01-12-2019', null, '1575133200', null, null, null, null, null, null, '1', '1575212813', '1575212813', '1', null, '2019-12-01');

-- ----------------------------
-- Table structure for `purch_plan_line`
-- ----------------------------
DROP TABLE IF EXISTS `purch_plan_line`;
CREATE TABLE `purch_plan_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) DEFAULT NULL,
  `product_type` int(11) DEFAULT NULL,
  `plan_type` int(11) DEFAULT NULL,
  `plan_qty` int(11) DEFAULT NULL,
  `received_qty` int(11) DEFAULT NULL,
  `plan_price` float DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `trans_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purch_plan_line
-- ----------------------------
INSERT INTO `purch_plan_line` VALUES ('2', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('3', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('4', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('5', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('6', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('7', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('8', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('9', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('10', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('11', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('12', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('13', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('14', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('15', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('16', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('17', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('18', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('19', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('20', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('21', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('22', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('23', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('24', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('25', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('26', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('27', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('28', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('29', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('30', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('31', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('32', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('33', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('34', '1', null, '1', '1200', null, '10', '1559661796', '1559661796', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('35', '2', null, '1', '1200', '34', '10', '1562675640', '1562675640', '1', null, '1', '2019-07-09');
INSERT INTO `purch_plan_line` VALUES ('150', '3', null, '1', '1200', '0', '100', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('151', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('152', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('153', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('154', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('155', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('156', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('157', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('158', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('159', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('160', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('161', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('162', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('163', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('164', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('165', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('166', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('167', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('168', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('169', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('170', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('171', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('172', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('173', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('174', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('175', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('176', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('177', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('178', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('179', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('180', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('181', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('182', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('183', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('184', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('185', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('186', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('187', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('188', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('189', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('190', '3', null, '1', '1200', '0', '10', '1573915527', '1573915527', '1', null, '1', null);
INSERT INTO `purch_plan_line` VALUES ('197', '5', null, '1', '34', '45', '5454', '1573961193', '1573961193', '1', null, '1', '2019-11-17');
INSERT INTO `purch_plan_line` VALUES ('198', '5', null, '1', '34', '60', '67', '1573961193', '1573961193', '1', null, '2', '2019-11-17');
INSERT INTO `purch_plan_line` VALUES ('199', '6', null, '1', '34', '0', '5454', '1575212813', '1575212813', '1', null, '1', '2019-12-01');
INSERT INTO `purch_plan_line` VALUES ('200', '6', null, '1', '34', '0', '67', '1575212813', '1575212813', '1', null, '2', '2019-12-01');

-- ----------------------------
-- Table structure for `quality`
-- ----------------------------
DROP TABLE IF EXISTS `quality`;
CREATE TABLE `quality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quality_no` varchar(255) DEFAULT NULL,
  `trans_date` int(11) DEFAULT NULL,
  `ref_order_no` int(11) DEFAULT NULL,
  `interval_day` int(11) DEFAULT NULL,
  `action_date` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quality
-- ----------------------------
INSERT INTO `quality` VALUES ('1', 'QC19000001', '1559494800', null, '1', '1559494800', null, '1', '1559537566', '1559537566', '1', null, 'PDR19000001', '1');

-- ----------------------------
-- Table structure for `quality_line`
-- ----------------------------
DROP TABLE IF EXISTS `quality_line`;
CREATE TABLE `quality_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quality_order_id` int(11) DEFAULT NULL,
  `quality_title` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quality_line
-- ----------------------------
INSERT INTO `quality_line` VALUES ('1', '1', '1', '2', null, null, '1559537566', '1559537566', '1', null);
INSERT INTO `quality_line` VALUES ('2', '1', '2', '0', null, null, '1559537566', '1559537566', '1', null);
INSERT INTO `quality_line` VALUES ('3', '1', '3', '0', null, null, '1559537566', '1559537566', '1', null);
INSERT INTO `quality_line` VALUES ('4', '1', '4', '0', null, null, '1559537566', '1559537566', '1', null);
INSERT INTO `quality_line` VALUES ('5', '1', '5', '0', null, null, '1559537566', '1559537566', '1', null);
INSERT INTO `quality_line` VALUES ('6', '1', '6', '0', null, null, '1559537566', '1559537566', '1', null);
INSERT INTO `quality_line` VALUES ('7', '1', '7', '0', null, null, '1559537566', '1559537566', '1', null);
INSERT INTO `quality_line` VALUES ('8', '1', '8', '0', null, null, '1559537566', '1559537566', '1', null);

-- ----------------------------
-- Table structure for `quotation`
-- ----------------------------
DROP TABLE IF EXISTS `quotation`;
CREATE TABLE `quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_no` varchar(255) DEFAULT NULL,
  `require_date` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_ref` varchar(255) DEFAULT NULL,
  `approve_status` int(11) DEFAULT NULL,
  `approve_by` int(11) DEFAULT NULL,
  `approve_date` int(11) DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quotation
-- ----------------------------

-- ----------------------------
-- Table structure for `quotation_line`
-- ----------------------------
DROP TABLE IF EXISTS `quotation_line`;
CREATE TABLE `quotation_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `noneitem_name` varchar(255) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `line_amount` float DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quotation_line
-- ----------------------------

-- ----------------------------
-- Table structure for `sale`
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_no` varchar(255) DEFAULT NULL,
  `revise` int(11) DEFAULT NULL,
  `require_date` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_ref` varchar(255) DEFAULT NULL,
  `delvery_to` int(11) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `disc_amount` float DEFAULT NULL,
  `disc_percent` float DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale
-- ----------------------------

-- ----------------------------
-- Table structure for `sale_line`
-- ----------------------------
DROP TABLE IF EXISTS `sale_line`;
CREATE TABLE `sale_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `noneitem_name` varchar(255) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `disc_amount` float DEFAULT NULL,
  `disc_percent` float DEFAULT NULL,
  `line_amount` float DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale_line
-- ----------------------------

-- ----------------------------
-- Table structure for `section`
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES ('1', '1', 'ปอกฝาก', '', '1', '1559534819', '1559534819', '1', null);

-- ----------------------------
-- Table structure for `sequence`
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plant_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `use_year` int(11) DEFAULT NULL,
  `use_month` int(11) DEFAULT NULL,
  `use_day` int(11) DEFAULT NULL,
  `minimum` int(11) DEFAULT NULL,
  `maximum` int(11) DEFAULT NULL,
  `currentnum` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('1', null, '1', 'PR', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('2', null, '2', 'PO', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('3', null, '3', 'QUO', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('4', null, '4', 'SO', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('5', null, '5', 'TF', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('6', null, '6', 'IS', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('7', null, '7', 'RT', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('8', null, '8', 'SRT', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('9', null, '9', 'PRT', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('10', null, '10', 'CT', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('11', null, '11', 'AD', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('12', null, '12', 'WR', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('13', null, '13', 'WO', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('14', null, '14', 'PDR', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('15', null, '15', 'REP', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('16', null, '16', 'INV', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);
INSERT INTO `sequence` VALUES ('17', null, '17', 'QC', '', '1', '0', '0', '1', '999999', '0', '1', '1559536799', '1559536799', '1', null);

-- ----------------------------
-- Table structure for `stock_balance`
-- ----------------------------
DROP TABLE IF EXISTS `stock_balance`;
CREATE TABLE `stock_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `site` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `lot_no` varchar(255) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `stock_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock_balance
-- ----------------------------
INSERT INTO `stock_balance` VALUES ('1', '1', null, '1', '0', '120', '1573951233', '1573951233', '1', '1', '', null, null);

-- ----------------------------
-- Table structure for `team`
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `leader` varchar(255) DEFAULT NULL,
  `leader_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `team_type` int(11) DEFAULT NULL,
  `wage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('1', 'พี่วิท', 'กดกดก', null, null, '1', '1559652665', '1559652665', '1', null, '1', '3600');
INSERT INTO `team` VALUES ('2', 'ขนคุณศักดิ์', '', null, null, '1', '1559652695', '1559652695', '1', null, '2', '3600');

-- ----------------------------
-- Table structure for `tradeline`
-- ----------------------------
DROP TABLE IF EXISTS `tradeline`;
CREATE TABLE `tradeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tradeid` int(11) DEFAULT NULL,
  `product_group` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `from_qty` float DEFAULT NULL,
  `to_qty` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `form_date` int(11) DEFAULT NULL,
  `to_data` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tradeline
-- ----------------------------

-- ----------------------------
-- Table structure for `tradetable`
-- ----------------------------
DROP TABLE IF EXISTS `tradetable`;
CREATE TABLE `tradetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalid` varchar(255) DEFAULT NULL,
  `journaltype` int(11) DEFAULT NULL,
  `transdate` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tradetable
-- ----------------------------

-- ----------------------------
-- Table structure for `treat`
-- ----------------------------
DROP TABLE IF EXISTS `treat`;
CREATE TABLE `treat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `interval_day` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of treat
-- ----------------------------
INSERT INTO `treat` VALUES ('1', 'A01', 'ลอกคลอง', 'ก', '25', '1', '1559652626', '1559652626', '1', null);

-- ----------------------------
-- Table structure for `unit`
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('1', 'ลัง', '', '1', '1559534961', '1559534961', '1', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'ajadmin', 'ZTHeteA1h6Xso0i9yTPbBNyAVV9ya_P8', '$2y$13$m5gTWkfXEXAXCUM.DnxAVOrIZzKRXUM7H2QjhmrMzv9ctme5jC73e', null, 'admin@aj.com', '1', '1559534291', '1559534291', null, null);

-- ----------------------------
-- Table structure for `user_group`
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('1', 'System Administrator', 'SystemAdministrator ', '1', '1559534756', '1559534756', '1', null);
INSERT INTO `user_group` VALUES ('2', 'System user', 'General Users', '1', '1559534772', '1559534772', '1', null);

-- ----------------------------
-- Table structure for `vendor`
-- ----------------------------
DROP TABLE IF EXISTS `vendor`;
CREATE TABLE `vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `vendor_group_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `payment_term` int(11) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `delivery_type` int(11) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `vendor_type` int(11) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `iscompany` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vendor
-- ----------------------------
INSERT INTO `vendor` VALUES ('1', 'SP1', 'ป้าปลิว', 'dfd', '1', '1', '1559537424', '1559538254', '1', '1', null, null, null, null, null, '', null, '', '1', null);
INSERT INTO `vendor` VALUES ('2', 'CM01', 'อนุมิติ', 'ดกดก', '1', '1', '1573954107', '1573954107', '1', null, null, null, null, null, null, '444444444444444444434', '1', 'f4r343', '1', null);

-- ----------------------------
-- Table structure for `vendor_approved`
-- ----------------------------
DROP TABLE IF EXISTS `vendor_approved`;
CREATE TABLE `vendor_approved` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `form_date` int(11) DEFAULT NULL,
  `to_date` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vendor_approved
-- ----------------------------

-- ----------------------------
-- Table structure for `vendor_group`
-- ----------------------------
DROP TABLE IF EXISTS `vendor_group`;
CREATE TABLE `vendor_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vendor_group
-- ----------------------------
INSERT INTO `vendor_group` VALUES ('1', 'ลูกเขียว', 'กดดก', '1', '1559537375', '1559537375', '1', null);

-- ----------------------------
-- Table structure for `warehouse`
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_primary` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES ('1', 'Fac1', 'dfd', '1', '1', '1559537311', '1559537311', '1', null);

-- ----------------------------
-- Table structure for `worktime`
-- ----------------------------
DROP TABLE IF EXISTS `worktime`;
CREATE TABLE `worktime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worktime
-- ----------------------------

-- ----------------------------
-- Table structure for `worktime_trans`
-- ----------------------------
DROP TABLE IF EXISTS `worktime_trans`;
CREATE TABLE `worktime_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worktime_trans
-- ----------------------------

-- ----------------------------
-- Table structure for `work_schedule`
-- ----------------------------
DROP TABLE IF EXISTS `work_schedule`;
CREATE TABLE `work_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_date` date DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `orchard_id` int(11) DEFAULT NULL,
  `team_cut` int(11) DEFAULT NULL,
  `team_pick` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_schedule
-- ----------------------------

-- ----------------------------
-- Table structure for `zone`
-- ----------------------------
DROP TABLE IF EXISTS `zone`;
CREATE TABLE `zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `discription` text,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `max_qty` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `lock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zone
-- ----------------------------
INSERT INTO `zone` VALUES ('1', 'A1', 'A1', '1', '1559534927', '1573951233', '1', '1', '1000', '0', '1');

-- ----------------------------
-- Table structure for `zone_product`
-- ----------------------------
DROP TABLE IF EXISTS `zone_product`;
CREATE TABLE `zone_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `lot_no` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `wip_qty` float DEFAULT NULL,
  `remain_qty` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zone_product
-- ----------------------------
INSERT INTO `zone_product` VALUES ('1', '1', '1', '100', 'SP1030662', '1', '1559537586', '1573951233', '1', '1', '100', '-20');
INSERT INTO `zone_product` VALUES ('2', '0', '1', null, 'SP1030662', '0', '1559539963', '1559539963', '1', null, null, null);
INSERT INTO `zone_product` VALUES ('3', '0', '1', null, 'SP1030662', '0', '1559540404', '1559540404', '1', null, null, null);
INSERT INTO `zone_product` VALUES ('4', '0', '1', null, 'SP1030662', '0', '1559540450', '1559540450', '1', null, null, null);
INSERT INTO `zone_product` VALUES ('5', '0', '1', null, 'SP1030662', '0', '1559540572', '1559540572', '1', null, null, null);

-- ----------------------------
-- View structure for `query_prodrecline`
-- ----------------------------
DROP VIEW IF EXISTS `query_prodrecline`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query_prodrecline` AS select `prod_rec_line`.`prod_rec_id` AS `prod_rec_id`,`prod_rec_line`.`product_id` AS `product_id`,`prod_rec_line`.`list_zone` AS `list_zone`,`prod_rec_line`.`line_type` AS `line_type`,sum(`prod_rec_line`.`qty`) AS `qty`,`prod_rec_line`.`lot_no` AS `lot_no`,`prod_rec_line`.`list_qty` AS `list_qty`,`prod_rec_line`.`orchard` AS `orchard`,`prod_rec_line`.`team1` AS `team1`,`prod_rec_line`.`team2` AS `team2`,`prod_rec_line`.`qc_note` AS `qc_note` from `prod_rec_line` group by `prod_rec_line`.`prod_rec_id`,`prod_rec_line`.`product_id`,`prod_rec_line`.`line_type`,`prod_rec_line`.`list_qty`;

-- ----------------------------
-- View structure for `query_product_receive`
-- ----------------------------
DROP VIEW IF EXISTS `query_product_receive`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query_product_receive` AS select `zone_product`.`product_id` AS `product_id`,sum(`production_rec_line`.`line_qty`) AS `line_qty`,`product`.`name` AS `name`,`production_rec`.`trans_date` AS `trans_date` from (`product` left join ((`production_rec_line` join `production_rec` on((`production_rec`.`id` = `production_rec_line`.`production_rec_id`))) join `zone_product` on((`production_rec`.`zone_id` = `zone_product`.`zone_id`))) on((`zone_product`.`product_id` = `product`.`id`))) group by `production_rec`.`trans_date`,`zone_product`.`product_id`;
