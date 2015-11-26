/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : lumen_angular

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-11-23 17:04:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `global_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `global_slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_template` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sidebar_position` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('123', '0', '1', null, 'Phụng vụ', 'phung-vu', 'post', null, '', '2015-10-23 10:35:00', '2015-10-23 10:35:00');
INSERT INTO `categories` VALUES ('124', '0', '1', null, 'Giáo lý', 'giao-ly', 'post', null, '', '2015-10-23 10:35:34', '2015-10-23 10:35:34');
INSERT INTO `categories` VALUES ('122', '0', '1', null, 'Lời Chúa', 'loi-chua', 'post', null, '', '2015-10-23 10:34:51', '2015-10-23 10:34:51');
INSERT INTO `categories` VALUES ('125', '0', '1', null, 'Suy tư', 'suy-tu', 'post', null, '', '2015-10-23 10:35:41', '2015-10-23 10:35:41');
INSERT INTO `categories` VALUES ('126', '0', '1', null, 'Tin Giáo Hội', 'tin-giao-hoi', 'post', '', 'left', '2015-10-23 11:05:31', '2015-11-07 12:54:46');
INSERT INTO `categories` VALUES ('127', '0', '1', null, 'Tu đức', 'tu-duc', 'post', '', 'left', '2015-10-23 11:05:40', '2015-11-07 09:48:15');
INSERT INTO `categories` VALUES ('128', '0', '1', null, 'Tài liệu', 'tai-lieu', 'post', '', 'left', '2015-10-23 11:05:48', '2015-11-07 09:48:28');
INSERT INTO `categories` VALUES ('129', '0', '1', null, 'Bài hát', 'bai-hat', 'post', '', 'right', '2015-10-23 11:06:00', '2015-11-07 10:51:36');
INSERT INTO `categories` VALUES ('130', '0', '1', null, 'Học làm người', 'hoc-lam-nguoi', 'post', '', 'right', '2015-10-23 11:06:08', '2015-11-07 12:54:31');

-- ----------------------------
-- Table structure for `categories_posts`
-- ----------------------------
DROP TABLE IF EXISTS `categories_posts`;
CREATE TABLE `categories_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=388 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categories_posts
-- ----------------------------
INSERT INTO `categories_posts` VALUES ('287', '136', '119');
INSERT INTO `categories_posts` VALUES ('288', '138', '119');
INSERT INTO `categories_posts` VALUES ('289', '139', '119');
INSERT INTO `categories_posts` VALUES ('290', '145', '119');
INSERT INTO `categories_posts` VALUES ('291', '144', '119');
INSERT INTO `categories_posts` VALUES ('292', '143', '119');
INSERT INTO `categories_posts` VALUES ('293', '142', '119');
INSERT INTO `categories_posts` VALUES ('294', '141', '119');
INSERT INTO `categories_posts` VALUES ('295', '140', '119');
INSERT INTO `categories_posts` VALUES ('296', '140', '120');
INSERT INTO `categories_posts` VALUES ('297', '140', '121');
INSERT INTO `categories_posts` VALUES ('298', '153', '126');
INSERT INTO `categories_posts` VALUES ('299', '154', '126');
INSERT INTO `categories_posts` VALUES ('300', '160', '126');
INSERT INTO `categories_posts` VALUES ('301', '159', '126');
INSERT INTO `categories_posts` VALUES ('302', '155', '126');
INSERT INTO `categories_posts` VALUES ('303', '158', '125');
INSERT INTO `categories_posts` VALUES ('304', '158', '126');
INSERT INTO `categories_posts` VALUES ('305', '157', '125');
INSERT INTO `categories_posts` VALUES ('306', '157', '126');
INSERT INTO `categories_posts` VALUES ('307', '156', '125');
INSERT INTO `categories_posts` VALUES ('308', '156', '126');
INSERT INTO `categories_posts` VALUES ('309', '155', '125');
INSERT INTO `categories_posts` VALUES ('310', '154', '123');
INSERT INTO `categories_posts` VALUES ('311', '154', '125');
INSERT INTO `categories_posts` VALUES ('312', '153', '123');
INSERT INTO `categories_posts` VALUES ('313', '153', '122');
INSERT INTO `categories_posts` VALUES ('314', '153', '125');
INSERT INTO `categories_posts` VALUES ('315', '160', '123');
INSERT INTO `categories_posts` VALUES ('316', '160', '124');
INSERT INTO `categories_posts` VALUES ('317', '160', '122');
INSERT INTO `categories_posts` VALUES ('318', '160', '125');
INSERT INTO `categories_posts` VALUES ('319', '160', '127');
INSERT INTO `categories_posts` VALUES ('320', '160', '128');
INSERT INTO `categories_posts` VALUES ('321', '160', '129');
INSERT INTO `categories_posts` VALUES ('322', '160', '130');
INSERT INTO `categories_posts` VALUES ('323', '159', '123');
INSERT INTO `categories_posts` VALUES ('324', '159', '124');
INSERT INTO `categories_posts` VALUES ('325', '159', '122');
INSERT INTO `categories_posts` VALUES ('326', '159', '125');
INSERT INTO `categories_posts` VALUES ('327', '159', '127');
INSERT INTO `categories_posts` VALUES ('328', '159', '128');
INSERT INTO `categories_posts` VALUES ('329', '159', '129');
INSERT INTO `categories_posts` VALUES ('330', '159', '130');
INSERT INTO `categories_posts` VALUES ('331', '158', '123');
INSERT INTO `categories_posts` VALUES ('332', '158', '124');
INSERT INTO `categories_posts` VALUES ('333', '158', '122');
INSERT INTO `categories_posts` VALUES ('334', '158', '127');
INSERT INTO `categories_posts` VALUES ('335', '158', '128');
INSERT INTO `categories_posts` VALUES ('336', '158', '129');
INSERT INTO `categories_posts` VALUES ('337', '158', '130');
INSERT INTO `categories_posts` VALUES ('338', '157', '123');
INSERT INTO `categories_posts` VALUES ('339', '157', '124');
INSERT INTO `categories_posts` VALUES ('340', '157', '122');
INSERT INTO `categories_posts` VALUES ('341', '157', '127');
INSERT INTO `categories_posts` VALUES ('342', '157', '128');
INSERT INTO `categories_posts` VALUES ('343', '157', '129');
INSERT INTO `categories_posts` VALUES ('344', '157', '130');
INSERT INTO `categories_posts` VALUES ('345', '156', '123');
INSERT INTO `categories_posts` VALUES ('346', '156', '124');
INSERT INTO `categories_posts` VALUES ('347', '156', '122');
INSERT INTO `categories_posts` VALUES ('348', '156', '127');
INSERT INTO `categories_posts` VALUES ('349', '156', '128');
INSERT INTO `categories_posts` VALUES ('350', '156', '129');
INSERT INTO `categories_posts` VALUES ('351', '156', '130');
INSERT INTO `categories_posts` VALUES ('352', '155', '123');
INSERT INTO `categories_posts` VALUES ('353', '155', '124');
INSERT INTO `categories_posts` VALUES ('354', '155', '122');
INSERT INTO `categories_posts` VALUES ('355', '155', '127');
INSERT INTO `categories_posts` VALUES ('356', '155', '128');
INSERT INTO `categories_posts` VALUES ('357', '155', '129');
INSERT INTO `categories_posts` VALUES ('358', '155', '130');
INSERT INTO `categories_posts` VALUES ('359', '154', '124');
INSERT INTO `categories_posts` VALUES ('360', '154', '122');
INSERT INTO `categories_posts` VALUES ('361', '154', '127');
INSERT INTO `categories_posts` VALUES ('362', '154', '128');
INSERT INTO `categories_posts` VALUES ('363', '154', '129');
INSERT INTO `categories_posts` VALUES ('364', '154', '130');
INSERT INTO `categories_posts` VALUES ('365', '153', '124');
INSERT INTO `categories_posts` VALUES ('366', '153', '127');
INSERT INTO `categories_posts` VALUES ('367', '153', '128');
INSERT INTO `categories_posts` VALUES ('368', '153', '129');
INSERT INTO `categories_posts` VALUES ('369', '153', '130');
INSERT INTO `categories_posts` VALUES ('370', '152', '123');
INSERT INTO `categories_posts` VALUES ('371', '152', '124');
INSERT INTO `categories_posts` VALUES ('372', '152', '122');
INSERT INTO `categories_posts` VALUES ('373', '152', '125');
INSERT INTO `categories_posts` VALUES ('374', '152', '126');
INSERT INTO `categories_posts` VALUES ('375', '152', '127');
INSERT INTO `categories_posts` VALUES ('376', '152', '128');
INSERT INTO `categories_posts` VALUES ('377', '152', '129');
INSERT INTO `categories_posts` VALUES ('378', '152', '130');
INSERT INTO `categories_posts` VALUES ('379', '150', '123');
INSERT INTO `categories_posts` VALUES ('380', '150', '124');
INSERT INTO `categories_posts` VALUES ('381', '150', '122');
INSERT INTO `categories_posts` VALUES ('382', '150', '125');
INSERT INTO `categories_posts` VALUES ('383', '150', '126');
INSERT INTO `categories_posts` VALUES ('384', '150', '127');
INSERT INTO `categories_posts` VALUES ('385', '150', '128');
INSERT INTO `categories_posts` VALUES ('386', '150', '129');
INSERT INTO `categories_posts` VALUES ('387', '150', '130');

-- ----------------------------
-- Table structure for `category_contents`
-- ----------------------------
DROP TABLE IF EXISTS `category_contents`;
CREATE TABLE `category_contents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '223',
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of category_contents
-- ----------------------------
INSERT INTO `category_contents` VALUES ('114', '124', '59', '1', null, null, null, null, 'published', null, null, '2015-10-23 10:35:34', '2015-10-23 10:35:34');
INSERT INTO `category_contents` VALUES ('115', '125', '1', '1', null, null, null, null, 'published', null, null, '2015-10-23 10:35:41', '2015-10-23 10:35:41');
INSERT INTO `category_contents` VALUES ('112', '123', '59', '1', null, null, null, null, 'published', null, null, '2015-10-23 10:35:00', '2015-10-23 10:35:00');
INSERT INTO `category_contents` VALUES ('113', '124', '1', '1', null, null, null, null, 'published', null, null, '2015-10-23 10:35:34', '2015-10-23 10:35:34');
INSERT INTO `category_contents` VALUES ('111', '123', '1', '1', null, null, null, null, 'published', null, null, '2015-10-23 10:35:00', '2015-10-23 10:35:00');
INSERT INTO `category_contents` VALUES ('110', '122', '59', '1', null, null, null, null, 'published', null, null, '2015-10-23 10:34:51', '2015-10-23 10:34:51');
INSERT INTO `category_contents` VALUES ('109', '122', '1', '1', null, null, null, null, 'published', null, null, '2015-10-23 10:34:51', '2015-10-23 10:34:51');
INSERT INTO `category_contents` VALUES ('116', '125', '59', '1', null, null, null, null, 'published', null, null, '2015-10-23 10:35:41', '2015-10-23 10:35:41');
INSERT INTO `category_contents` VALUES ('117', '126', '59', '1', '', '', '', '', 'published', '', null, '2015-10-23 11:05:31', '2015-11-07 09:48:21');
INSERT INTO `category_contents` VALUES ('118', '127', '59', '1', '', '', '', '', 'published', '', null, '2015-10-23 11:05:40', '2015-11-07 09:48:15');
INSERT INTO `category_contents` VALUES ('119', '128', '59', '1', '', '', '', '', 'published', '', null, '2015-10-23 11:05:48', '2015-11-07 09:48:28');
INSERT INTO `category_contents` VALUES ('120', '129', '59', '1', '', '', '', '', 'published', '', null, '2015-10-23 11:06:00', '2015-11-07 10:51:36');
INSERT INTO `category_contents` VALUES ('121', '130', '59', '1', '', '', '', '', 'published', '', null, '2015-10-23 11:06:08', '2015-11-07 12:29:05');

-- ----------------------------
-- Table structure for `category_metas`
-- ----------------------------
DROP TABLE IF EXISTS `category_metas`;
CREATE TABLE `category_metas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_content_id` int(11) DEFAULT NULL,
  `meta_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of category_metas
-- ----------------------------

-- ----------------------------
-- Table structure for `cities`
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4064 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('1', '5', 'AD', 'Canillo', '0', null);
INSERT INTO `cities` VALUES ('2', '5', 'AD', 'Encamp', null, null);
INSERT INTO `cities` VALUES ('3', '5', 'AD', 'La Massana', null, null);
INSERT INTO `cities` VALUES ('4', '5', 'AD', 'Ordino', null, null);
INSERT INTO `cities` VALUES ('5', '5', 'AD', 'Sant Julia de Loria', null, null);
INSERT INTO `cities` VALUES ('6', '5', 'AD', 'Andorra la Vella', null, null);
INSERT INTO `cities` VALUES ('7', '5', 'AD', 'Escaldes-Engordany', null, null);
INSERT INTO `cities` VALUES ('8', '221', 'AE', 'Abu Dhabi', null, null);
INSERT INTO `cities` VALUES ('9', '221', 'AE', 'Ajman', null, null);
INSERT INTO `cities` VALUES ('10', '221', 'AE', 'Dubai', null, null);
INSERT INTO `cities` VALUES ('11', '221', 'AE', 'Fujairah', null, null);
INSERT INTO `cities` VALUES ('12', '221', 'AE', 'Ras Al Khaimah', null, null);
INSERT INTO `cities` VALUES ('13', '221', 'AE', 'Sharjah', null, null);
INSERT INTO `cities` VALUES ('14', '221', 'AE', 'Umm Al Quwain', null, null);
INSERT INTO `cities` VALUES ('15', '1', 'AF', 'Badakhshan', null, null);
INSERT INTO `cities` VALUES ('16', '1', 'AF', 'Badghis', null, null);
INSERT INTO `cities` VALUES ('17', '1', 'AF', 'Baghlan', null, null);
INSERT INTO `cities` VALUES ('18', '1', 'AF', 'Bamian', null, null);
INSERT INTO `cities` VALUES ('19', '1', 'AF', 'Farah', null, null);
INSERT INTO `cities` VALUES ('20', '1', 'AF', 'Faryab', null, null);
INSERT INTO `cities` VALUES ('21', '1', 'AF', 'Ghazni', null, null);
INSERT INTO `cities` VALUES ('22', '1', 'AF', 'Ghowr', null, null);
INSERT INTO `cities` VALUES ('23', '1', 'AF', 'Helmand', null, null);
INSERT INTO `cities` VALUES ('24', '1', 'AF', 'Herat', null, null);
INSERT INTO `cities` VALUES ('25', '1', 'AF', 'Kabol', null, null);
INSERT INTO `cities` VALUES ('26', '1', 'AF', 'Kapisa', null, null);
INSERT INTO `cities` VALUES ('27', '1', 'AF', 'Lowgar', null, null);
INSERT INTO `cities` VALUES ('28', '1', 'AF', 'Nangarhar', null, null);
INSERT INTO `cities` VALUES ('29', '1', 'AF', 'Nimruz', null, null);
INSERT INTO `cities` VALUES ('30', '1', 'AF', 'Kandahar', null, null);
INSERT INTO `cities` VALUES ('31', '1', 'AF', 'Kondoz', null, null);
INSERT INTO `cities` VALUES ('32', '1', 'AF', 'Takhar', null, null);
INSERT INTO `cities` VALUES ('33', '1', 'AF', 'Vardak', null, null);
INSERT INTO `cities` VALUES ('34', '1', 'AF', 'Zabol', null, null);
INSERT INTO `cities` VALUES ('35', '1', 'AF', 'Paktika', null, null);
INSERT INTO `cities` VALUES ('36', '1', 'AF', 'Balkh', null, null);
INSERT INTO `cities` VALUES ('37', '1', 'AF', 'Jowzjan', null, null);
INSERT INTO `cities` VALUES ('38', '1', 'AF', 'Samangan', null, null);
INSERT INTO `cities` VALUES ('39', '1', 'AF', 'Sar-e Pol', null, null);
INSERT INTO `cities` VALUES ('40', '1', 'AF', 'Konar', null, null);
INSERT INTO `cities` VALUES ('41', '1', 'AF', 'Laghman', null, null);
INSERT INTO `cities` VALUES ('42', '1', 'AF', 'Paktia', null, null);
INSERT INTO `cities` VALUES ('43', '1', 'AF', 'Khowst', null, null);
INSERT INTO `cities` VALUES ('44', '1', 'AF', 'Nurestan', null, null);
INSERT INTO `cities` VALUES ('45', '1', 'AF', 'Oruzgan', null, null);
INSERT INTO `cities` VALUES ('46', '1', 'AF', 'Parvan', null, null);
INSERT INTO `cities` VALUES ('47', '1', 'AF', 'Daykondi', null, null);
INSERT INTO `cities` VALUES ('48', '1', 'AF', 'Panjshir', null, null);
INSERT INTO `cities` VALUES ('49', '9', 'AG', 'Barbuda', null, null);
INSERT INTO `cities` VALUES ('50', '9', 'AG', 'Saint George', null, null);
INSERT INTO `cities` VALUES ('51', '9', 'AG', 'Saint John', null, null);
INSERT INTO `cities` VALUES ('52', '9', 'AG', 'Saint Mary', null, null);
INSERT INTO `cities` VALUES ('53', '9', 'AG', 'Saint Paul', null, null);
INSERT INTO `cities` VALUES ('54', '9', 'AG', 'Saint Peter', null, null);
INSERT INTO `cities` VALUES ('55', '9', 'AG', 'Saint Philip', null, null);
INSERT INTO `cities` VALUES ('56', '9', 'AG', 'Redonda', null, null);
INSERT INTO `cities` VALUES ('57', '2', 'AL', 'Berat', null, null);
INSERT INTO `cities` VALUES ('58', '2', 'AL', 'Diber', null, null);
INSERT INTO `cities` VALUES ('59', '2', 'AL', 'Durres', null, null);
INSERT INTO `cities` VALUES ('60', '2', 'AL', 'Elbasan', null, null);
INSERT INTO `cities` VALUES ('61', '2', 'AL', 'Fier', null, null);
INSERT INTO `cities` VALUES ('62', '2', 'AL', 'Gjirokaster', null, null);
INSERT INTO `cities` VALUES ('63', '2', 'AL', 'Korce', null, null);
INSERT INTO `cities` VALUES ('64', '2', 'AL', 'Kukes', null, null);
INSERT INTO `cities` VALUES ('65', '2', 'AL', 'Lezhe', null, null);
INSERT INTO `cities` VALUES ('66', '2', 'AL', 'Shkoder', null, null);
INSERT INTO `cities` VALUES ('67', '2', 'AL', 'Tirane', null, null);
INSERT INTO `cities` VALUES ('68', '2', 'AL', 'Vlore', null, null);
INSERT INTO `cities` VALUES ('69', '11', 'AM', 'Aragatsotn', null, null);
INSERT INTO `cities` VALUES ('70', '11', 'AM', 'Ararat', null, null);
INSERT INTO `cities` VALUES ('71', '11', 'AM', 'Armavir', null, null);
INSERT INTO `cities` VALUES ('72', '11', 'AM', 'Geghark\'unik\'', null, null);
INSERT INTO `cities` VALUES ('73', '11', 'AM', 'Kotayk\'', null, null);
INSERT INTO `cities` VALUES ('74', '11', 'AM', 'Lorri', null, null);
INSERT INTO `cities` VALUES ('75', '11', 'AM', 'Shirak', null, null);
INSERT INTO `cities` VALUES ('76', '11', 'AM', 'Syunik\'', null, null);
INSERT INTO `cities` VALUES ('77', '11', 'AM', 'Tavush', null, null);
INSERT INTO `cities` VALUES ('78', '11', 'AM', 'Vayots\' Dzor', null, null);
INSERT INTO `cities` VALUES ('79', '11', 'AM', 'Yerevan', null, null);
INSERT INTO `cities` VALUES ('80', '6', 'AO', 'Benguela', null, null);
INSERT INTO `cities` VALUES ('81', '6', 'AO', 'Bie', null, null);
INSERT INTO `cities` VALUES ('82', '6', 'AO', 'Cabinda', null, null);
INSERT INTO `cities` VALUES ('83', '6', 'AO', 'Cuando Cubango', null, null);
INSERT INTO `cities` VALUES ('84', '6', 'AO', 'Cuanza Norte', null, null);
INSERT INTO `cities` VALUES ('85', '6', 'AO', 'Cuanza Sul', null, null);
INSERT INTO `cities` VALUES ('86', '6', 'AO', 'Cunene', null, null);
INSERT INTO `cities` VALUES ('87', '6', 'AO', 'Huambo', null, null);
INSERT INTO `cities` VALUES ('88', '6', 'AO', 'Huila', null, null);
INSERT INTO `cities` VALUES ('89', '6', 'AO', 'Malanje', null, null);
INSERT INTO `cities` VALUES ('90', '6', 'AO', 'Namibe', null, null);
INSERT INTO `cities` VALUES ('91', '6', 'AO', 'Moxico', null, null);
INSERT INTO `cities` VALUES ('92', '6', 'AO', 'Uige', null, null);
INSERT INTO `cities` VALUES ('93', '6', 'AO', 'Zaire', null, null);
INSERT INTO `cities` VALUES ('94', '6', 'AO', 'Lunda Norte', null, null);
INSERT INTO `cities` VALUES ('95', '6', 'AO', 'Lunda Sul', null, null);
INSERT INTO `cities` VALUES ('96', '6', 'AO', 'Bengo', null, null);
INSERT INTO `cities` VALUES ('97', '6', 'AO', 'Luanda', null, null);
INSERT INTO `cities` VALUES ('98', '10', 'AR', 'Buenos Aires', null, null);
INSERT INTO `cities` VALUES ('99', '10', 'AR', 'Catamarca', null, null);
INSERT INTO `cities` VALUES ('100', '10', 'AR', 'Chaco', null, null);
INSERT INTO `cities` VALUES ('101', '10', 'AR', 'Chubut', null, null);
INSERT INTO `cities` VALUES ('102', '10', 'AR', 'Cordoba', null, null);
INSERT INTO `cities` VALUES ('103', '10', 'AR', 'Corrientes', null, null);
INSERT INTO `cities` VALUES ('104', '10', 'AR', 'Distrito Federal', null, null);
INSERT INTO `cities` VALUES ('105', '10', 'AR', 'Entre Rios', null, null);
INSERT INTO `cities` VALUES ('106', '10', 'AR', 'Formosa', null, null);
INSERT INTO `cities` VALUES ('107', '10', 'AR', 'Jujuy', null, null);
INSERT INTO `cities` VALUES ('108', '10', 'AR', 'La Pampa', null, null);
INSERT INTO `cities` VALUES ('109', '10', 'AR', 'La Rioja', null, null);
INSERT INTO `cities` VALUES ('110', '10', 'AR', 'Mendoza', null, null);
INSERT INTO `cities` VALUES ('111', '10', 'AR', 'Misiones', null, null);
INSERT INTO `cities` VALUES ('112', '10', 'AR', 'Neuquen', null, null);
INSERT INTO `cities` VALUES ('113', '10', 'AR', 'Rio Negro', null, null);
INSERT INTO `cities` VALUES ('114', '10', 'AR', 'Salta', null, null);
INSERT INTO `cities` VALUES ('115', '10', 'AR', 'San Juan', null, null);
INSERT INTO `cities` VALUES ('116', '10', 'AR', 'San Luis', null, null);
INSERT INTO `cities` VALUES ('117', '10', 'AR', 'Santa Cruz', null, null);
INSERT INTO `cities` VALUES ('118', '10', 'AR', 'Santa Fe', null, null);
INSERT INTO `cities` VALUES ('119', '10', 'AR', 'Santiago del Estero', null, null);
INSERT INTO `cities` VALUES ('120', '10', 'AR', 'Tierra del Fuego', null, null);
INSERT INTO `cities` VALUES ('121', '10', 'AR', 'Tucuman', null, null);
INSERT INTO `cities` VALUES ('122', '14', 'AT', 'Burgenland', null, null);
INSERT INTO `cities` VALUES ('123', '14', 'AT', 'Karnten', null, null);
INSERT INTO `cities` VALUES ('124', '14', 'AT', 'Niederosterreich', null, null);
INSERT INTO `cities` VALUES ('125', '14', 'AT', 'Oberosterreich', null, null);
INSERT INTO `cities` VALUES ('126', '14', 'AT', 'Salzburg', null, null);
INSERT INTO `cities` VALUES ('127', '14', 'AT', 'Steiermark', null, null);
INSERT INTO `cities` VALUES ('128', '14', 'AT', 'Tirol', null, null);
INSERT INTO `cities` VALUES ('129', '14', 'AT', 'Vorarlberg', null, null);
INSERT INTO `cities` VALUES ('130', '14', 'AT', 'Wien', null, null);
INSERT INTO `cities` VALUES ('131', '13', 'AU', 'Australian Capital Territory', null, null);
INSERT INTO `cities` VALUES ('132', '13', 'AU', 'New South Wales', null, null);
INSERT INTO `cities` VALUES ('133', '13', 'AU', 'Northern Territory', null, null);
INSERT INTO `cities` VALUES ('134', '13', 'AU', 'Queensland', null, null);
INSERT INTO `cities` VALUES ('135', '13', 'AU', 'South Australia', null, null);
INSERT INTO `cities` VALUES ('136', '13', 'AU', 'Tasmania', null, null);
INSERT INTO `cities` VALUES ('137', '13', 'AU', 'Victoria', '28.7466', '-97.0165');
INSERT INTO `cities` VALUES ('138', '13', 'AU', 'Western Australia', null, null);
INSERT INTO `cities` VALUES ('139', '15', 'AZ', 'Abseron', null, null);
INSERT INTO `cities` VALUES ('140', '15', 'AZ', 'Agcabadi', null, null);
INSERT INTO `cities` VALUES ('141', '15', 'AZ', 'Agdam', null, null);
INSERT INTO `cities` VALUES ('142', '15', 'AZ', 'Agdas', null, null);
INSERT INTO `cities` VALUES ('143', '15', 'AZ', 'Agstafa', null, null);
INSERT INTO `cities` VALUES ('144', '15', 'AZ', 'Agsu', null, null);
INSERT INTO `cities` VALUES ('145', '15', 'AZ', 'Ali Bayramli', null, null);
INSERT INTO `cities` VALUES ('146', '15', 'AZ', 'Astara', null, null);
INSERT INTO `cities` VALUES ('147', '15', 'AZ', 'Baki', null, null);
INSERT INTO `cities` VALUES ('148', '15', 'AZ', 'Balakan', null, null);
INSERT INTO `cities` VALUES ('149', '15', 'AZ', 'Barda', null, null);
INSERT INTO `cities` VALUES ('150', '15', 'AZ', 'Beylaqan', null, null);
INSERT INTO `cities` VALUES ('151', '15', 'AZ', 'Bilasuvar', null, null);
INSERT INTO `cities` VALUES ('152', '15', 'AZ', 'Cabrayil', null, null);
INSERT INTO `cities` VALUES ('153', '15', 'AZ', 'Calilabad', null, null);
INSERT INTO `cities` VALUES ('154', '15', 'AZ', 'Daskasan', null, null);
INSERT INTO `cities` VALUES ('155', '15', 'AZ', 'Davaci', null, null);
INSERT INTO `cities` VALUES ('156', '15', 'AZ', 'Fuzuli', null, null);
INSERT INTO `cities` VALUES ('157', '15', 'AZ', 'Gadabay', null, null);
INSERT INTO `cities` VALUES ('158', '15', 'AZ', 'Ganca', null, null);
INSERT INTO `cities` VALUES ('159', '15', 'AZ', 'Goranboy', null, null);
INSERT INTO `cities` VALUES ('160', '15', 'AZ', 'Goycay', null, null);
INSERT INTO `cities` VALUES ('161', '15', 'AZ', 'Haciqabul', null, null);
INSERT INTO `cities` VALUES ('162', '15', 'AZ', 'Imisli', null, null);
INSERT INTO `cities` VALUES ('163', '15', 'AZ', 'Ismayilli', null, null);
INSERT INTO `cities` VALUES ('164', '15', 'AZ', 'Kalbacar', null, null);
INSERT INTO `cities` VALUES ('165', '15', 'AZ', 'Kurdamir', null, null);
INSERT INTO `cities` VALUES ('166', '15', 'AZ', 'Lacin', null, null);
INSERT INTO `cities` VALUES ('167', '15', 'AZ', 'Lankaran', null, null);
INSERT INTO `cities` VALUES ('168', '15', 'AZ', 'Lankaran', null, null);
INSERT INTO `cities` VALUES ('169', '15', 'AZ', 'Lerik', null, null);
INSERT INTO `cities` VALUES ('170', '15', 'AZ', 'Masalli', null, null);
INSERT INTO `cities` VALUES ('171', '15', 'AZ', 'Mingacevir', null, null);
INSERT INTO `cities` VALUES ('172', '15', 'AZ', 'Naftalan', null, null);
INSERT INTO `cities` VALUES ('173', '15', 'AZ', 'Naxcivan', null, null);
INSERT INTO `cities` VALUES ('174', '15', 'AZ', 'Neftcala', null, null);
INSERT INTO `cities` VALUES ('175', '15', 'AZ', 'Oguz', null, null);
INSERT INTO `cities` VALUES ('176', '15', 'AZ', 'Qabala', null, null);
INSERT INTO `cities` VALUES ('177', '15', 'AZ', 'Qax', null, null);
INSERT INTO `cities` VALUES ('178', '15', 'AZ', 'Qazax', null, null);
INSERT INTO `cities` VALUES ('179', '15', 'AZ', 'Qobustan', null, null);
INSERT INTO `cities` VALUES ('180', '15', 'AZ', 'Quba', null, null);
INSERT INTO `cities` VALUES ('181', '15', 'AZ', 'Qubadli', null, null);
INSERT INTO `cities` VALUES ('182', '15', 'AZ', 'Qusar', null, null);
INSERT INTO `cities` VALUES ('183', '15', 'AZ', 'Saatli', null, null);
INSERT INTO `cities` VALUES ('184', '15', 'AZ', 'Sabirabad', null, null);
INSERT INTO `cities` VALUES ('185', '15', 'AZ', 'Saki', null, null);
INSERT INTO `cities` VALUES ('186', '15', 'AZ', 'Saki', null, null);
INSERT INTO `cities` VALUES ('187', '15', 'AZ', 'Salyan', null, null);
INSERT INTO `cities` VALUES ('188', '15', 'AZ', 'Samaxi', null, null);
INSERT INTO `cities` VALUES ('189', '15', 'AZ', 'Samkir', null, null);
INSERT INTO `cities` VALUES ('190', '15', 'AZ', 'Samux', null, null);
INSERT INTO `cities` VALUES ('191', '15', 'AZ', 'Siyazan', null, null);
INSERT INTO `cities` VALUES ('192', '15', 'AZ', 'Sumqayit', null, null);
INSERT INTO `cities` VALUES ('193', '15', 'AZ', 'Susa', null, null);
INSERT INTO `cities` VALUES ('194', '15', 'AZ', 'Susa', null, null);
INSERT INTO `cities` VALUES ('195', '15', 'AZ', 'Tartar', null, null);
INSERT INTO `cities` VALUES ('196', '15', 'AZ', 'Tovuz', null, null);
INSERT INTO `cities` VALUES ('197', '15', 'AZ', 'Ucar', null, null);
INSERT INTO `cities` VALUES ('198', '15', 'AZ', 'Xacmaz', null, null);
INSERT INTO `cities` VALUES ('199', '15', 'AZ', 'Xankandi', null, null);
INSERT INTO `cities` VALUES ('200', '15', 'AZ', 'Xanlar', null, null);
INSERT INTO `cities` VALUES ('201', '15', 'AZ', 'Xizi', null, null);
INSERT INTO `cities` VALUES ('202', '15', 'AZ', 'Xocali', null, null);
INSERT INTO `cities` VALUES ('203', '15', 'AZ', 'Xocavand', null, null);
INSERT INTO `cities` VALUES ('204', '15', 'AZ', 'Yardimli', null, null);
INSERT INTO `cities` VALUES ('205', '15', 'AZ', 'Yevlax', null, null);
INSERT INTO `cities` VALUES ('206', '15', 'AZ', 'Yevlax', null, null);
INSERT INTO `cities` VALUES ('207', '15', 'AZ', 'Zangilan', null, null);
INSERT INTO `cities` VALUES ('208', '15', 'AZ', 'Zaqatala', null, null);
INSERT INTO `cities` VALUES ('209', '15', 'AZ', 'Zardab', null, null);
INSERT INTO `cities` VALUES ('210', '27', 'BA', 'Federation of Bosnia and Herzegovina', null, null);
INSERT INTO `cities` VALUES ('211', '27', 'BA', 'Brcko District', null, null);
INSERT INTO `cities` VALUES ('212', '27', 'BA', 'Republika Srpska', null, null);
INSERT INTO `cities` VALUES ('213', '19', 'BB', 'Christ Church', null, null);
INSERT INTO `cities` VALUES ('214', '19', 'BB', 'Saint Andrew', null, null);
INSERT INTO `cities` VALUES ('215', '19', 'BB', 'Saint George', null, null);
INSERT INTO `cities` VALUES ('216', '19', 'BB', 'Saint James', null, null);
INSERT INTO `cities` VALUES ('217', '19', 'BB', 'Saint John', null, null);
INSERT INTO `cities` VALUES ('218', '19', 'BB', 'Saint Joseph', null, null);
INSERT INTO `cities` VALUES ('219', '19', 'BB', 'Saint Lucy', null, null);
INSERT INTO `cities` VALUES ('220', '19', 'BB', 'Saint Michael', null, null);
INSERT INTO `cities` VALUES ('221', '19', 'BB', 'Saint Peter', null, null);
INSERT INTO `cities` VALUES ('222', '19', 'BB', 'Saint Philip', null, null);
INSERT INTO `cities` VALUES ('223', '19', 'BB', 'Saint Thomas', null, null);
INSERT INTO `cities` VALUES ('224', '18', 'BD', 'Dhaka', null, null);
INSERT INTO `cities` VALUES ('225', '18', 'BD', 'Khulna', null, null);
INSERT INTO `cities` VALUES ('226', '18', 'BD', 'Rajshahi', null, null);
INSERT INTO `cities` VALUES ('227', '18', 'BD', 'Chittagong', null, null);
INSERT INTO `cities` VALUES ('228', '18', 'BD', 'Barisal', null, null);
INSERT INTO `cities` VALUES ('229', '18', 'BD', 'Sylhet', null, null);
INSERT INTO `cities` VALUES ('230', '21', 'BE', 'Antwerpen', null, null);
INSERT INTO `cities` VALUES ('231', '21', 'BE', 'Hainaut', null, null);
INSERT INTO `cities` VALUES ('232', '21', 'BE', 'Liege', null, null);
INSERT INTO `cities` VALUES ('233', '21', 'BE', 'Limburg', null, null);
INSERT INTO `cities` VALUES ('234', '21', 'BE', 'Luxembourg', null, null);
INSERT INTO `cities` VALUES ('235', '21', 'BE', 'Namur', null, null);
INSERT INTO `cities` VALUES ('236', '21', 'BE', 'Oost-Vlaanderen', null, null);
INSERT INTO `cities` VALUES ('237', '21', 'BE', 'West-Vlaanderen', null, null);
INSERT INTO `cities` VALUES ('238', '21', 'BE', 'Brabant Wallon', null, null);
INSERT INTO `cities` VALUES ('239', '21', 'BE', 'Brussels Hoofdstedelijk Gewest', null, null);
INSERT INTO `cities` VALUES ('240', '21', 'BE', 'Vlaams-Brabant', null, null);
INSERT INTO `cities` VALUES ('241', '21', 'BE', 'Flanders', null, null);
INSERT INTO `cities` VALUES ('242', '21', 'BE', 'Wallonia', null, null);
INSERT INTO `cities` VALUES ('243', '34', 'BF', 'Bam', null, null);
INSERT INTO `cities` VALUES ('244', '34', 'BF', 'Boulkiemde', null, null);
INSERT INTO `cities` VALUES ('245', '34', 'BF', 'Ganzourgou', null, null);
INSERT INTO `cities` VALUES ('246', '34', 'BF', 'Gnagna', null, null);
INSERT INTO `cities` VALUES ('247', '34', 'BF', 'Kouritenga', null, null);
INSERT INTO `cities` VALUES ('248', '34', 'BF', 'Oudalan', null, null);
INSERT INTO `cities` VALUES ('249', '34', 'BF', 'Passore', null, null);
INSERT INTO `cities` VALUES ('250', '34', 'BF', 'Sanguie', null, null);
INSERT INTO `cities` VALUES ('251', '34', 'BF', 'Soum', null, null);
INSERT INTO `cities` VALUES ('252', '34', 'BF', 'Tapoa', null, null);
INSERT INTO `cities` VALUES ('253', '34', 'BF', 'Zoundweogo', null, null);
INSERT INTO `cities` VALUES ('254', '34', 'BF', 'Bale', null, null);
INSERT INTO `cities` VALUES ('255', '34', 'BF', 'Banwa', null, null);
INSERT INTO `cities` VALUES ('256', '34', 'BF', 'Bazega', null, null);
INSERT INTO `cities` VALUES ('257', '34', 'BF', 'Bougouriba', null, null);
INSERT INTO `cities` VALUES ('258', '34', 'BF', 'Boulgou', null, null);
INSERT INTO `cities` VALUES ('259', '34', 'BF', 'Gourma', null, null);
INSERT INTO `cities` VALUES ('260', '34', 'BF', 'Houet', null, null);
INSERT INTO `cities` VALUES ('261', '34', 'BF', 'Ioba', null, null);
INSERT INTO `cities` VALUES ('262', '34', 'BF', 'Kadiogo', null, null);
INSERT INTO `cities` VALUES ('263', '34', 'BF', 'Kenedougou', null, null);
INSERT INTO `cities` VALUES ('264', '34', 'BF', 'Komoe', null, null);
INSERT INTO `cities` VALUES ('265', '34', 'BF', 'Komondjari', null, null);
INSERT INTO `cities` VALUES ('266', '34', 'BF', 'Kompienga', null, null);
INSERT INTO `cities` VALUES ('267', '34', 'BF', 'Kossi', null, null);
INSERT INTO `cities` VALUES ('268', '34', 'BF', 'Koulpelogo', null, null);
INSERT INTO `cities` VALUES ('269', '34', 'BF', 'Kourweogo', null, null);
INSERT INTO `cities` VALUES ('270', '34', 'BF', 'Leraba', null, null);
INSERT INTO `cities` VALUES ('271', '34', 'BF', 'Loroum', null, null);
INSERT INTO `cities` VALUES ('272', '34', 'BF', 'Mouhoun', null, null);
INSERT INTO `cities` VALUES ('273', '34', 'BF', 'Namentenga', null, null);
INSERT INTO `cities` VALUES ('274', '34', 'BF', 'Naouri', null, null);
INSERT INTO `cities` VALUES ('275', '34', 'BF', 'Nayala', null, null);
INSERT INTO `cities` VALUES ('276', '34', 'BF', 'Noumbiel', null, null);
INSERT INTO `cities` VALUES ('277', '34', 'BF', 'Oubritenga', null, null);
INSERT INTO `cities` VALUES ('278', '34', 'BF', 'Poni', null, null);
INSERT INTO `cities` VALUES ('279', '34', 'BF', 'Sanmatenga', null, null);
INSERT INTO `cities` VALUES ('280', '34', 'BF', 'Seno', null, null);
INSERT INTO `cities` VALUES ('281', '34', 'BF', 'Sissili', null, null);
INSERT INTO `cities` VALUES ('282', '34', 'BF', 'Sourou', null, null);
INSERT INTO `cities` VALUES ('283', '34', 'BF', 'Tuy', null, null);
INSERT INTO `cities` VALUES ('284', '34', 'BF', 'Yagha', null, null);
INSERT INTO `cities` VALUES ('285', '34', 'BF', 'Yatenga', null, null);
INSERT INTO `cities` VALUES ('286', '34', 'BF', 'Ziro', null, null);
INSERT INTO `cities` VALUES ('287', '34', 'BF', 'Zondoma', null, null);
INSERT INTO `cities` VALUES ('288', '33', 'BG', 'Mikhaylovgrad', null, null);
INSERT INTO `cities` VALUES ('289', '33', 'BG', 'Blagoevgrad', null, null);
INSERT INTO `cities` VALUES ('290', '33', 'BG', 'Burgas', null, null);
INSERT INTO `cities` VALUES ('291', '33', 'BG', 'Dobrich', null, null);
INSERT INTO `cities` VALUES ('292', '33', 'BG', 'Gabrovo', null, null);
INSERT INTO `cities` VALUES ('293', '33', 'BG', 'Grad Sofiya', null, null);
INSERT INTO `cities` VALUES ('294', '33', 'BG', 'Khaskovo', null, null);
INSERT INTO `cities` VALUES ('295', '33', 'BG', 'Kurdzhali', null, null);
INSERT INTO `cities` VALUES ('296', '33', 'BG', 'Kyustendil', null, null);
INSERT INTO `cities` VALUES ('297', '33', 'BG', 'Lovech', null, null);
INSERT INTO `cities` VALUES ('298', '33', 'BG', 'Montana', null, null);
INSERT INTO `cities` VALUES ('299', '33', 'BG', 'Pazardzhik', null, null);
INSERT INTO `cities` VALUES ('300', '33', 'BG', 'Pernik', null, null);
INSERT INTO `cities` VALUES ('301', '33', 'BG', 'Pleven', null, null);
INSERT INTO `cities` VALUES ('302', '33', 'BG', 'Plovdiv', null, null);
INSERT INTO `cities` VALUES ('303', '33', 'BG', 'Razgrad', null, null);
INSERT INTO `cities` VALUES ('304', '33', 'BG', 'Ruse', null, null);
INSERT INTO `cities` VALUES ('305', '33', 'BG', 'Shumen', null, null);
INSERT INTO `cities` VALUES ('306', '33', 'BG', 'Silistra', null, null);
INSERT INTO `cities` VALUES ('307', '33', 'BG', 'Sliven', null, null);
INSERT INTO `cities` VALUES ('308', '33', 'BG', 'Smolyan', null, null);
INSERT INTO `cities` VALUES ('309', '33', 'BG', 'Sofiya', null, null);
INSERT INTO `cities` VALUES ('310', '33', 'BG', 'Stara Zagora', null, null);
INSERT INTO `cities` VALUES ('311', '33', 'BG', 'Turgovishte', null, null);
INSERT INTO `cities` VALUES ('312', '33', 'BG', 'Varna', null, null);
INSERT INTO `cities` VALUES ('313', '33', 'BG', 'Veliko Turnovo', null, null);
INSERT INTO `cities` VALUES ('314', '33', 'BG', 'Vidin', null, null);
INSERT INTO `cities` VALUES ('315', '33', 'BG', 'Vratsa', null, null);
INSERT INTO `cities` VALUES ('316', '33', 'BG', 'Yambol', null, null);
INSERT INTO `cities` VALUES ('317', '17', 'BH', 'Al Hadd', null, null);
INSERT INTO `cities` VALUES ('318', '17', 'BH', 'Al Manamah', null, null);
INSERT INTO `cities` VALUES ('319', '17', 'BH', 'Jidd Hafs', null, null);
INSERT INTO `cities` VALUES ('320', '17', 'BH', 'Sitrah', null, null);
INSERT INTO `cities` VALUES ('321', '17', 'BH', 'Al Mintaqah al Gharbiyah', null, null);
INSERT INTO `cities` VALUES ('322', '17', 'BH', 'Mintaqat Juzur Hawar', null, null);
INSERT INTO `cities` VALUES ('323', '17', 'BH', 'Al Mintaqah ash Shamaliyah', null, null);
INSERT INTO `cities` VALUES ('324', '17', 'BH', 'Al Mintaqah al Wusta', null, null);
INSERT INTO `cities` VALUES ('325', '17', 'BH', 'Madinat', null, null);
INSERT INTO `cities` VALUES ('326', '17', 'BH', 'Ar Rifa', null, null);
INSERT INTO `cities` VALUES ('327', '17', 'BH', 'Madinat Hamad', null, null);
INSERT INTO `cities` VALUES ('328', '17', 'BH', 'Al Muharraq', null, null);
INSERT INTO `cities` VALUES ('329', '17', 'BH', 'Al Asimah', null, null);
INSERT INTO `cities` VALUES ('330', '17', 'BH', 'Al Janubiyah', null, null);
INSERT INTO `cities` VALUES ('331', '17', 'BH', 'Ash Shamaliyah', null, null);
INSERT INTO `cities` VALUES ('332', '17', 'BH', 'Al Wusta', null, null);
INSERT INTO `cities` VALUES ('333', '35', 'BI', 'Bujumbura', null, null);
INSERT INTO `cities` VALUES ('334', '35', 'BI', 'Bubanza', null, null);
INSERT INTO `cities` VALUES ('335', '35', 'BI', 'Bururi', null, null);
INSERT INTO `cities` VALUES ('336', '35', 'BI', 'Cankuzo', null, null);
INSERT INTO `cities` VALUES ('337', '35', 'BI', 'Cibitoke', null, null);
INSERT INTO `cities` VALUES ('338', '35', 'BI', 'Gitega', null, null);
INSERT INTO `cities` VALUES ('339', '35', 'BI', 'Karuzi', null, null);
INSERT INTO `cities` VALUES ('340', '35', 'BI', 'Kayanza', null, null);
INSERT INTO `cities` VALUES ('341', '35', 'BI', 'Kirundo', null, null);
INSERT INTO `cities` VALUES ('342', '35', 'BI', 'Makamba', null, null);
INSERT INTO `cities` VALUES ('343', '35', 'BI', 'Muyinga', null, null);
INSERT INTO `cities` VALUES ('344', '35', 'BI', 'Ngozi', null, null);
INSERT INTO `cities` VALUES ('345', '35', 'BI', 'Rutana', null, null);
INSERT INTO `cities` VALUES ('346', '35', 'BI', 'Ruyigi', null, null);
INSERT INTO `cities` VALUES ('347', '35', 'BI', 'Muramvya', null, null);
INSERT INTO `cities` VALUES ('348', '35', 'BI', 'Mwaro', null, null);
INSERT INTO `cities` VALUES ('349', '23', 'BJ', 'Alibori', null, null);
INSERT INTO `cities` VALUES ('350', '23', 'BJ', 'Atakora', null, null);
INSERT INTO `cities` VALUES ('351', '23', 'BJ', 'Atlanyique', null, null);
INSERT INTO `cities` VALUES ('352', '23', 'BJ', 'Borgou', null, null);
INSERT INTO `cities` VALUES ('353', '23', 'BJ', 'Collines', null, null);
INSERT INTO `cities` VALUES ('354', '23', 'BJ', 'Kouffo', null, null);
INSERT INTO `cities` VALUES ('355', '23', 'BJ', 'Donga', null, null);
INSERT INTO `cities` VALUES ('356', '23', 'BJ', 'Littoral', null, null);
INSERT INTO `cities` VALUES ('357', '23', 'BJ', 'Mono', null, null);
INSERT INTO `cities` VALUES ('358', '23', 'BJ', 'Oueme', null, null);
INSERT INTO `cities` VALUES ('359', '23', 'BJ', 'Plateau', null, null);
INSERT INTO `cities` VALUES ('360', '23', 'BJ', 'Zou', null, null);
INSERT INTO `cities` VALUES ('361', '24', 'BM', 'Devonshire', null, null);
INSERT INTO `cities` VALUES ('362', '24', 'BM', 'Hamilton', null, null);
INSERT INTO `cities` VALUES ('363', '24', 'BM', 'Hamilton', null, null);
INSERT INTO `cities` VALUES ('364', '24', 'BM', 'Paget', null, null);
INSERT INTO `cities` VALUES ('365', '24', 'BM', 'Pembroke', null, null);
INSERT INTO `cities` VALUES ('366', '24', 'BM', 'Saint George', null, null);
INSERT INTO `cities` VALUES ('367', '24', 'BM', 'Saint George\'s', null, null);
INSERT INTO `cities` VALUES ('368', '24', 'BM', 'Sandys', null, null);
INSERT INTO `cities` VALUES ('369', '24', 'BM', 'Smiths', null, null);
INSERT INTO `cities` VALUES ('370', '24', 'BM', 'Southampton', null, null);
INSERT INTO `cities` VALUES ('371', '24', 'BM', 'Warwick', null, null);
INSERT INTO `cities` VALUES ('372', '32', 'BN', 'Alibori', null, null);
INSERT INTO `cities` VALUES ('373', '32', 'BN', 'Belait', null, null);
INSERT INTO `cities` VALUES ('374', '32', 'BN', 'Brunei and Muara', null, null);
INSERT INTO `cities` VALUES ('375', '32', 'BN', 'Temburong', null, null);
INSERT INTO `cities` VALUES ('376', '32', 'BN', 'Collines', null, null);
INSERT INTO `cities` VALUES ('377', '32', 'BN', 'Kouffo', null, null);
INSERT INTO `cities` VALUES ('378', '32', 'BN', 'Donga', null, null);
INSERT INTO `cities` VALUES ('379', '32', 'BN', 'Littoral', null, null);
INSERT INTO `cities` VALUES ('380', '32', 'BN', 'Tutong', null, null);
INSERT INTO `cities` VALUES ('381', '32', 'BN', 'Oueme', null, null);
INSERT INTO `cities` VALUES ('382', '32', 'BN', 'Plateau', null, null);
INSERT INTO `cities` VALUES ('383', '32', 'BN', 'Zou', null, null);
INSERT INTO `cities` VALUES ('384', '26', 'BO', 'Chuquisaca', null, null);
INSERT INTO `cities` VALUES ('385', '26', 'BO', 'Cochabamba', null, null);
INSERT INTO `cities` VALUES ('386', '26', 'BO', 'El Beni', null, null);
INSERT INTO `cities` VALUES ('387', '26', 'BO', 'La Paz', null, null);
INSERT INTO `cities` VALUES ('388', '26', 'BO', 'Oruro', null, null);
INSERT INTO `cities` VALUES ('389', '26', 'BO', 'Pando', null, null);
INSERT INTO `cities` VALUES ('390', '26', 'BO', 'Potosi', null, null);
INSERT INTO `cities` VALUES ('391', '26', 'BO', 'Santa Cruz', null, null);
INSERT INTO `cities` VALUES ('392', '26', 'BO', 'Tarija', null, null);
INSERT INTO `cities` VALUES ('393', '30', 'BR', 'Acre', null, null);
INSERT INTO `cities` VALUES ('394', '30', 'BR', 'Alagoas', null, null);
INSERT INTO `cities` VALUES ('395', '30', 'BR', 'Amapa', null, null);
INSERT INTO `cities` VALUES ('396', '30', 'BR', 'Amazonas', null, null);
INSERT INTO `cities` VALUES ('397', '30', 'BR', 'Bahia', null, null);
INSERT INTO `cities` VALUES ('398', '30', 'BR', 'Ceara', null, null);
INSERT INTO `cities` VALUES ('399', '30', 'BR', 'Distrito Federal', null, null);
INSERT INTO `cities` VALUES ('400', '30', 'BR', 'Espirito Santo', null, null);
INSERT INTO `cities` VALUES ('401', '30', 'BR', 'Mato Grosso do Sul', null, null);
INSERT INTO `cities` VALUES ('402', '30', 'BR', 'Maranhao', null, null);
INSERT INTO `cities` VALUES ('403', '30', 'BR', 'Mato Grosso', null, null);
INSERT INTO `cities` VALUES ('404', '30', 'BR', 'Minas Gerais', null, null);
INSERT INTO `cities` VALUES ('405', '30', 'BR', 'Para', null, null);
INSERT INTO `cities` VALUES ('406', '30', 'BR', 'Paraiba', null, null);
INSERT INTO `cities` VALUES ('407', '30', 'BR', 'Parana', null, null);
INSERT INTO `cities` VALUES ('408', '30', 'BR', 'Piaui', null, null);
INSERT INTO `cities` VALUES ('409', '30', 'BR', 'Rio de Janeiro', null, null);
INSERT INTO `cities` VALUES ('410', '30', 'BR', 'Rio Grande do Norte', null, null);
INSERT INTO `cities` VALUES ('411', '30', 'BR', 'Rio Grande do Sul', null, null);
INSERT INTO `cities` VALUES ('412', '30', 'BR', 'Rondonia', null, null);
INSERT INTO `cities` VALUES ('413', '30', 'BR', 'Roraima', null, null);
INSERT INTO `cities` VALUES ('414', '30', 'BR', 'Santa Catarina', null, null);
INSERT INTO `cities` VALUES ('415', '30', 'BR', 'Sao Paulo', null, null);
INSERT INTO `cities` VALUES ('416', '30', 'BR', 'Sergipe', null, null);
INSERT INTO `cities` VALUES ('417', '30', 'BR', 'Goias', null, null);
INSERT INTO `cities` VALUES ('418', '30', 'BR', 'Pernambuco', null, null);
INSERT INTO `cities` VALUES ('419', '30', 'BR', 'Tocantins', null, null);
INSERT INTO `cities` VALUES ('420', '16', 'BS', 'Bimini', null, null);
INSERT INTO `cities` VALUES ('421', '16', 'BS', 'Cat Island', null, null);
INSERT INTO `cities` VALUES ('422', '16', 'BS', 'Exuma', null, null);
INSERT INTO `cities` VALUES ('423', '16', 'BS', 'Inagua', null, null);
INSERT INTO `cities` VALUES ('424', '16', 'BS', 'Long Island', null, null);
INSERT INTO `cities` VALUES ('425', '16', 'BS', 'Mayaguana', null, null);
INSERT INTO `cities` VALUES ('426', '16', 'BS', 'Ragged Island', null, null);
INSERT INTO `cities` VALUES ('427', '16', 'BS', 'Harbour Island', null, null);
INSERT INTO `cities` VALUES ('428', '16', 'BS', 'New Providence', null, null);
INSERT INTO `cities` VALUES ('429', '16', 'BS', 'Acklins and Crooked Islands', null, null);
INSERT INTO `cities` VALUES ('430', '16', 'BS', 'Freeport', null, null);
INSERT INTO `cities` VALUES ('431', '16', 'BS', 'Fresh Creek', null, null);
INSERT INTO `cities` VALUES ('432', '16', 'BS', 'Governor\'s Harbour', null, null);
INSERT INTO `cities` VALUES ('433', '16', 'BS', 'Green Turtle Cay', null, null);
INSERT INTO `cities` VALUES ('434', '16', 'BS', 'High Rock', null, null);
INSERT INTO `cities` VALUES ('435', '16', 'BS', 'Kemps Bay', null, null);
INSERT INTO `cities` VALUES ('436', '16', 'BS', 'Marsh Harbour', null, null);
INSERT INTO `cities` VALUES ('437', '16', 'BS', 'Nichollstown and Berry Islands', null, null);
INSERT INTO `cities` VALUES ('438', '16', 'BS', 'Rock Sound', null, null);
INSERT INTO `cities` VALUES ('439', '16', 'BS', 'Sandy Point', null, null);
INSERT INTO `cities` VALUES ('440', '16', 'BS', 'San Salvador and Rum Cay', null, null);
INSERT INTO `cities` VALUES ('441', '25', 'BT', 'Bumthang', null, null);
INSERT INTO `cities` VALUES ('442', '25', 'BT', 'Chhukha', null, null);
INSERT INTO `cities` VALUES ('443', '25', 'BT', 'Chirang', null, null);
INSERT INTO `cities` VALUES ('444', '25', 'BT', 'Daga', null, null);
INSERT INTO `cities` VALUES ('445', '25', 'BT', 'Geylegphug', null, null);
INSERT INTO `cities` VALUES ('446', '25', 'BT', 'Ha', null, null);
INSERT INTO `cities` VALUES ('447', '25', 'BT', 'Lhuntshi', null, null);
INSERT INTO `cities` VALUES ('448', '25', 'BT', 'Mongar', null, null);
INSERT INTO `cities` VALUES ('449', '25', 'BT', 'Paro', null, null);
INSERT INTO `cities` VALUES ('450', '25', 'BT', 'Pemagatsel', null, null);
INSERT INTO `cities` VALUES ('451', '25', 'BT', 'Punakha', null, null);
INSERT INTO `cities` VALUES ('452', '25', 'BT', 'Samchi', null, null);
INSERT INTO `cities` VALUES ('453', '25', 'BT', 'Samdrup', null, null);
INSERT INTO `cities` VALUES ('454', '25', 'BT', 'Shemgang', null, null);
INSERT INTO `cities` VALUES ('455', '25', 'BT', 'Tashigang', null, null);
INSERT INTO `cities` VALUES ('456', '25', 'BT', 'Thimphu', null, null);
INSERT INTO `cities` VALUES ('457', '25', 'BT', 'Tongsa', null, null);
INSERT INTO `cities` VALUES ('458', '25', 'BT', 'Wangdi Phodrang', null, null);
INSERT INTO `cities` VALUES ('459', '28', 'BW', 'Central', null, null);
INSERT INTO `cities` VALUES ('460', '28', 'BW', 'Ghanzi', null, null);
INSERT INTO `cities` VALUES ('461', '28', 'BW', 'Kgalagadi', null, null);
INSERT INTO `cities` VALUES ('462', '28', 'BW', 'Kgatleng', null, null);
INSERT INTO `cities` VALUES ('463', '28', 'BW', 'Kweneng', null, null);
INSERT INTO `cities` VALUES ('464', '28', 'BW', 'North-East', null, null);
INSERT INTO `cities` VALUES ('465', '28', 'BW', 'South-East', null, null);
INSERT INTO `cities` VALUES ('466', '28', 'BW', 'Southern', null, null);
INSERT INTO `cities` VALUES ('467', '28', 'BW', 'North-West', null, null);
INSERT INTO `cities` VALUES ('468', '20', 'BY', 'Brestskaya Voblasts\'', null, null);
INSERT INTO `cities` VALUES ('469', '20', 'BY', 'Homyel\'skaya Voblasts\'', null, null);
INSERT INTO `cities` VALUES ('470', '20', 'BY', 'Hrodzyenskaya Voblasts\'', null, null);
INSERT INTO `cities` VALUES ('471', '20', 'BY', 'Minsk', null, null);
INSERT INTO `cities` VALUES ('472', '20', 'BY', 'Minskaya Voblasts\'', null, null);
INSERT INTO `cities` VALUES ('473', '20', 'BY', 'Mahilyowskaya Voblasts\'', null, null);
INSERT INTO `cities` VALUES ('474', '20', 'BY', 'Vitsyebskaya Voblasts\'', null, null);
INSERT INTO `cities` VALUES ('475', '22', 'BZ', 'Belize', null, null);
INSERT INTO `cities` VALUES ('476', '22', 'BZ', 'Cayo', null, null);
INSERT INTO `cities` VALUES ('477', '22', 'BZ', 'Corozal', null, null);
INSERT INTO `cities` VALUES ('478', '22', 'BZ', 'Orange Walk', null, null);
INSERT INTO `cities` VALUES ('479', '22', 'BZ', 'Stann Creek', null, null);
INSERT INTO `cities` VALUES ('480', '22', 'BZ', 'Toledo', null, null);
INSERT INTO `cities` VALUES ('481', '38', 'CA', 'Alberta', null, null);
INSERT INTO `cities` VALUES ('482', '38', 'CA', 'British Columbia', null, null);
INSERT INTO `cities` VALUES ('483', '38', 'CA', 'Manitoba', null, null);
INSERT INTO `cities` VALUES ('484', '38', 'CA', 'New Brunswick', null, null);
INSERT INTO `cities` VALUES ('485', '38', 'CA', 'Newfoundland', null, null);
INSERT INTO `cities` VALUES ('486', '38', 'CA', 'Nova Scotia', null, null);
INSERT INTO `cities` VALUES ('487', '38', 'CA', 'Northwest Territories', null, null);
INSERT INTO `cities` VALUES ('488', '38', 'CA', 'Nunavut', null, null);
INSERT INTO `cities` VALUES ('489', '38', 'CA', 'Ontario', null, null);
INSERT INTO `cities` VALUES ('490', '38', 'CA', 'Prince Edward Island', null, null);
INSERT INTO `cities` VALUES ('491', '38', 'CA', 'Quebec', null, null);
INSERT INTO `cities` VALUES ('492', '38', 'CA', 'Saskatchewan', null, null);
INSERT INTO `cities` VALUES ('493', '38', 'CA', 'Yukon Territory', null, null);
INSERT INTO `cities` VALUES ('504', '41', 'CF', 'Bamingui-Bangoran', null, null);
INSERT INTO `cities` VALUES ('505', '41', 'CF', 'Basse-Kotto', null, null);
INSERT INTO `cities` VALUES ('506', '41', 'CF', 'Haute-Kotto', null, null);
INSERT INTO `cities` VALUES ('507', '41', 'CF', 'Mambere-Kadei', null, null);
INSERT INTO `cities` VALUES ('508', '41', 'CF', 'Haut-Mbomou', null, null);
INSERT INTO `cities` VALUES ('509', '41', 'CF', 'Kemo', null, null);
INSERT INTO `cities` VALUES ('510', '41', 'CF', 'Lobaye', null, null);
INSERT INTO `cities` VALUES ('511', '41', 'CF', 'Mbomou', null, null);
INSERT INTO `cities` VALUES ('512', '41', 'CF', 'Nana-Mambere', null, null);
INSERT INTO `cities` VALUES ('513', '41', 'CF', 'Ouaka', null, null);
INSERT INTO `cities` VALUES ('514', '41', 'CF', 'Ouham', null, null);
INSERT INTO `cities` VALUES ('515', '41', 'CF', 'Ouham-Pende', null, null);
INSERT INTO `cities` VALUES ('516', '41', 'CF', 'Cuvette-Ouest', null, null);
INSERT INTO `cities` VALUES ('517', '41', 'CF', 'Nana-Grebizi', null, null);
INSERT INTO `cities` VALUES ('518', '41', 'CF', 'Sangha-Mbaere', null, null);
INSERT INTO `cities` VALUES ('519', '41', 'CF', 'Ombella-Mpoko', null, null);
INSERT INTO `cities` VALUES ('520', '41', 'CF', 'Bangui', null, null);
INSERT INTO `cities` VALUES ('521', '49', 'CG', 'Bouenza', null, null);
INSERT INTO `cities` VALUES ('522', '49', 'CG', 'Kouilou', null, null);
INSERT INTO `cities` VALUES ('523', '49', 'CG', 'Lekoumou', null, null);
INSERT INTO `cities` VALUES ('524', '49', 'CG', 'Likouala', null, null);
INSERT INTO `cities` VALUES ('525', '49', 'CG', 'Niari', null, null);
INSERT INTO `cities` VALUES ('526', '49', 'CG', 'Plateaux', null, null);
INSERT INTO `cities` VALUES ('527', '49', 'CG', 'Sangha', null, null);
INSERT INTO `cities` VALUES ('528', '49', 'CG', 'Pool', null, null);
INSERT INTO `cities` VALUES ('529', '49', 'CG', 'Brazzaville', null, null);
INSERT INTO `cities` VALUES ('530', '49', 'CG', 'Cuvette', null, null);
INSERT INTO `cities` VALUES ('531', '49', 'CG', 'Cuvette-Ouest', null, null);
INSERT INTO `cities` VALUES ('532', '204', 'CH', 'Aargau', null, null);
INSERT INTO `cities` VALUES ('533', '204', 'CH', 'Ausser-Rhoden', null, null);
INSERT INTO `cities` VALUES ('534', '204', 'CH', 'Basel-Landschaft', null, null);
INSERT INTO `cities` VALUES ('535', '204', 'CH', 'Basel-Stadt', null, null);
INSERT INTO `cities` VALUES ('536', '204', 'CH', 'Bern', null, null);
INSERT INTO `cities` VALUES ('537', '204', 'CH', 'Fribourg', null, null);
INSERT INTO `cities` VALUES ('538', '204', 'CH', 'Geneve', null, null);
INSERT INTO `cities` VALUES ('539', '204', 'CH', 'Glarus', null, null);
INSERT INTO `cities` VALUES ('540', '204', 'CH', 'Graubunden', null, null);
INSERT INTO `cities` VALUES ('541', '204', 'CH', 'Inner-Rhoden', null, null);
INSERT INTO `cities` VALUES ('542', '204', 'CH', 'Luzern', null, null);
INSERT INTO `cities` VALUES ('543', '204', 'CH', 'Neuchatel', null, null);
INSERT INTO `cities` VALUES ('544', '204', 'CH', 'Nidwalden', null, null);
INSERT INTO `cities` VALUES ('545', '204', 'CH', 'Obwalden', null, null);
INSERT INTO `cities` VALUES ('546', '204', 'CH', 'Sankt Gallen', null, null);
INSERT INTO `cities` VALUES ('547', '204', 'CH', 'Schaffhausen', null, null);
INSERT INTO `cities` VALUES ('548', '204', 'CH', 'Schwyz', null, null);
INSERT INTO `cities` VALUES ('549', '204', 'CH', 'Solothurn', null, null);
INSERT INTO `cities` VALUES ('550', '204', 'CH', 'Thurgau', null, null);
INSERT INTO `cities` VALUES ('551', '204', 'CH', 'Ticino', null, null);
INSERT INTO `cities` VALUES ('552', '204', 'CH', 'Uri', null, null);
INSERT INTO `cities` VALUES ('553', '204', 'CH', 'Valais', null, null);
INSERT INTO `cities` VALUES ('554', '204', 'CH', 'Vaud', null, null);
INSERT INTO `cities` VALUES ('555', '204', 'CH', 'Zug', null, null);
INSERT INTO `cities` VALUES ('556', '204', 'CH', 'Zurich', null, null);
INSERT INTO `cities` VALUES ('557', '204', 'CH', 'Jura', null, null);
INSERT INTO `cities` VALUES ('558', '52', 'CI', 'Agneby', null, null);
INSERT INTO `cities` VALUES ('559', '52', 'CI', 'Bafing', null, null);
INSERT INTO `cities` VALUES ('560', '52', 'CI', 'Bas-Sassandra', null, null);
INSERT INTO `cities` VALUES ('561', '52', 'CI', 'Denguele', null, null);
INSERT INTO `cities` VALUES ('562', '52', 'CI', 'Dix-Huit Montagnes', null, null);
INSERT INTO `cities` VALUES ('563', '52', 'CI', 'Fromager', null, null);
INSERT INTO `cities` VALUES ('564', '52', 'CI', 'Haut-Sassandra', null, null);
INSERT INTO `cities` VALUES ('565', '52', 'CI', 'Lacs', null, null);
INSERT INTO `cities` VALUES ('566', '52', 'CI', 'Lagunes', null, null);
INSERT INTO `cities` VALUES ('567', '52', 'CI', 'Marahoue', null, null);
INSERT INTO `cities` VALUES ('568', '52', 'CI', 'Moyen-Cavally', null, null);
INSERT INTO `cities` VALUES ('569', '52', 'CI', 'Moyen-Comoe', null, null);
INSERT INTO `cities` VALUES ('570', '52', 'CI', 'N\'zi-Comoe', null, null);
INSERT INTO `cities` VALUES ('571', '52', 'CI', 'Savanes', null, null);
INSERT INTO `cities` VALUES ('572', '52', 'CI', 'Sud-Bandama', null, null);
INSERT INTO `cities` VALUES ('573', '52', 'CI', 'Sud-Comoe', null, null);
INSERT INTO `cities` VALUES ('574', '52', 'CI', 'Vallee du Bandama', null, null);
INSERT INTO `cities` VALUES ('575', '52', 'CI', 'Worodougou', null, null);
INSERT INTO `cities` VALUES ('576', '52', 'CI', 'Zanzan', null, null);
INSERT INTO `cities` VALUES ('577', '43', 'CL', 'Valparaiso', null, null);
INSERT INTO `cities` VALUES ('578', '43', 'CL', 'Aisen del General Carlos Ibanez del Campo', null, null);
INSERT INTO `cities` VALUES ('579', '43', 'CL', 'Antofagasta', null, null);
INSERT INTO `cities` VALUES ('580', '43', 'CL', 'Araucania', null, null);
INSERT INTO `cities` VALUES ('581', '43', 'CL', 'Atacama', null, null);
INSERT INTO `cities` VALUES ('582', '43', 'CL', 'Bio-Bio', null, null);
INSERT INTO `cities` VALUES ('583', '43', 'CL', 'Coquimbo', null, null);
INSERT INTO `cities` VALUES ('584', '43', 'CL', 'Libertador General Bernardo O\'Higgins', null, null);
INSERT INTO `cities` VALUES ('585', '43', 'CL', 'Los Lagos', null, null);
INSERT INTO `cities` VALUES ('586', '43', 'CL', 'Magallanes y de la Antartica Chilena', null, null);
INSERT INTO `cities` VALUES ('587', '43', 'CL', 'Maule', null, null);
INSERT INTO `cities` VALUES ('588', '43', 'CL', 'Region Metropolitana', null, null);
INSERT INTO `cities` VALUES ('589', '43', 'CL', 'Tarapaca', null, null);
INSERT INTO `cities` VALUES ('590', '43', 'CL', 'Los Lagos', null, null);
INSERT INTO `cities` VALUES ('591', '43', 'CL', 'Tarapaca', null, null);
INSERT INTO `cities` VALUES ('592', '43', 'CL', 'Arica y Parinacota', null, null);
INSERT INTO `cities` VALUES ('593', '43', 'CL', 'Los Rios', null, null);
INSERT INTO `cities` VALUES ('594', '37', 'CM', 'Est', null, null);
INSERT INTO `cities` VALUES ('595', '37', 'CM', 'Littoral', null, null);
INSERT INTO `cities` VALUES ('596', '37', 'CM', 'Nord-Ouest', null, null);
INSERT INTO `cities` VALUES ('597', '37', 'CM', 'Ouest', null, null);
INSERT INTO `cities` VALUES ('598', '37', 'CM', 'Sud-Ouest', null, null);
INSERT INTO `cities` VALUES ('599', '37', 'CM', 'Adamaoua', null, null);
INSERT INTO `cities` VALUES ('600', '37', 'CM', 'Centre', null, null);
INSERT INTO `cities` VALUES ('601', '37', 'CM', 'Extreme-Nord', null, null);
INSERT INTO `cities` VALUES ('602', '37', 'CM', 'Nord', null, null);
INSERT INTO `cities` VALUES ('603', '37', 'CM', 'Sud', null, null);
INSERT INTO `cities` VALUES ('604', '44', 'CN', 'Anhui', null, null);
INSERT INTO `cities` VALUES ('605', '44', 'CN', 'Zhejiang', null, null);
INSERT INTO `cities` VALUES ('606', '44', 'CN', 'Jiangxi', null, null);
INSERT INTO `cities` VALUES ('607', '44', 'CN', 'Jiangsu', null, null);
INSERT INTO `cities` VALUES ('608', '44', 'CN', 'Jilin', null, null);
INSERT INTO `cities` VALUES ('609', '44', 'CN', 'Qinghai', null, null);
INSERT INTO `cities` VALUES ('610', '44', 'CN', 'Fujian', null, null);
INSERT INTO `cities` VALUES ('611', '44', 'CN', 'Heilongjiang', null, null);
INSERT INTO `cities` VALUES ('612', '44', 'CN', 'Henan', null, null);
INSERT INTO `cities` VALUES ('613', '44', 'CN', 'Hebei', null, null);
INSERT INTO `cities` VALUES ('614', '44', 'CN', 'Hunan', null, null);
INSERT INTO `cities` VALUES ('615', '44', 'CN', 'Hubei', null, null);
INSERT INTO `cities` VALUES ('616', '44', 'CN', 'Xinjiang', null, null);
INSERT INTO `cities` VALUES ('617', '44', 'CN', 'Xizang', null, null);
INSERT INTO `cities` VALUES ('618', '44', 'CN', 'Gansu', null, null);
INSERT INTO `cities` VALUES ('619', '44', 'CN', 'Guangxi', null, null);
INSERT INTO `cities` VALUES ('620', '44', 'CN', 'Guizhou', null, null);
INSERT INTO `cities` VALUES ('621', '44', 'CN', 'Liaoning', null, null);
INSERT INTO `cities` VALUES ('622', '44', 'CN', 'Nei Mongol', null, null);
INSERT INTO `cities` VALUES ('623', '44', 'CN', 'Ningxia', null, null);
INSERT INTO `cities` VALUES ('624', '44', 'CN', 'Beijing', null, null);
INSERT INTO `cities` VALUES ('625', '44', 'CN', 'Shanghai', null, null);
INSERT INTO `cities` VALUES ('626', '44', 'CN', 'Shanxi', null, null);
INSERT INTO `cities` VALUES ('627', '44', 'CN', 'Shandong', null, null);
INSERT INTO `cities` VALUES ('628', '44', 'CN', 'Shaanxi', null, null);
INSERT INTO `cities` VALUES ('629', '44', 'CN', 'Tianjin', null, null);
INSERT INTO `cities` VALUES ('630', '44', 'CN', 'Yunnan', null, null);
INSERT INTO `cities` VALUES ('631', '44', 'CN', 'Guangdong', null, null);
INSERT INTO `cities` VALUES ('632', '44', 'CN', 'Hainan', null, null);
INSERT INTO `cities` VALUES ('633', '44', 'CN', 'Sichuan', null, null);
INSERT INTO `cities` VALUES ('634', '44', 'CN', 'Chongqing', null, null);
INSERT INTO `cities` VALUES ('635', '47', 'CO', 'Amazonas', null, null);
INSERT INTO `cities` VALUES ('636', '47', 'CO', 'Antioquia', null, null);
INSERT INTO `cities` VALUES ('637', '47', 'CO', 'Arauca', null, null);
INSERT INTO `cities` VALUES ('638', '47', 'CO', 'Atlantico', null, null);
INSERT INTO `cities` VALUES ('639', '47', 'CO', 'Caqueta', null, null);
INSERT INTO `cities` VALUES ('640', '47', 'CO', 'Cauca', null, null);
INSERT INTO `cities` VALUES ('641', '47', 'CO', 'Cesar', null, null);
INSERT INTO `cities` VALUES ('642', '47', 'CO', 'Choco', null, null);
INSERT INTO `cities` VALUES ('643', '47', 'CO', 'Cordoba', null, null);
INSERT INTO `cities` VALUES ('644', '47', 'CO', 'Guaviare', null, null);
INSERT INTO `cities` VALUES ('645', '47', 'CO', 'Guainia', null, null);
INSERT INTO `cities` VALUES ('646', '47', 'CO', 'Huila', null, null);
INSERT INTO `cities` VALUES ('647', '47', 'CO', 'La Guajira', null, null);
INSERT INTO `cities` VALUES ('648', '47', 'CO', 'Meta', null, null);
INSERT INTO `cities` VALUES ('649', '47', 'CO', 'Narino', null, null);
INSERT INTO `cities` VALUES ('650', '47', 'CO', 'Norte de Santander', null, null);
INSERT INTO `cities` VALUES ('651', '47', 'CO', 'Putumayo', null, null);
INSERT INTO `cities` VALUES ('652', '47', 'CO', 'Quindio', null, null);
INSERT INTO `cities` VALUES ('653', '47', 'CO', 'Risaralda', null, null);
INSERT INTO `cities` VALUES ('654', '47', 'CO', 'San Andres y Providencia', null, null);
INSERT INTO `cities` VALUES ('655', '47', 'CO', 'Santander', null, null);
INSERT INTO `cities` VALUES ('656', '47', 'CO', 'Sucre', null, null);
INSERT INTO `cities` VALUES ('657', '47', 'CO', 'Tolima', null, null);
INSERT INTO `cities` VALUES ('658', '47', 'CO', 'Valle del Cauca', null, null);
INSERT INTO `cities` VALUES ('659', '47', 'CO', 'Vaupes', null, null);
INSERT INTO `cities` VALUES ('660', '47', 'CO', 'Vichada', null, null);
INSERT INTO `cities` VALUES ('661', '47', 'CO', 'Casanare', null, null);
INSERT INTO `cities` VALUES ('662', '47', 'CO', 'Cundinamarca', null, null);
INSERT INTO `cities` VALUES ('663', '47', 'CO', 'Distrito Especial', null, null);
INSERT INTO `cities` VALUES ('664', '47', 'CO', 'Bolivar', null, null);
INSERT INTO `cities` VALUES ('665', '47', 'CO', 'Boyaca', null, null);
INSERT INTO `cities` VALUES ('666', '47', 'CO', 'Caldas', null, null);
INSERT INTO `cities` VALUES ('667', '47', 'CO', 'Magdalena', null, null);
INSERT INTO `cities` VALUES ('668', '51', 'CR', 'Alajuela', null, null);
INSERT INTO `cities` VALUES ('669', '51', 'CR', 'Cartago', null, null);
INSERT INTO `cities` VALUES ('670', '51', 'CR', 'Guanacaste', null, null);
INSERT INTO `cities` VALUES ('671', '51', 'CR', 'Heredia', null, null);
INSERT INTO `cities` VALUES ('672', '51', 'CR', 'Limon', null, null);
INSERT INTO `cities` VALUES ('673', '51', 'CR', 'Puntarenas', null, null);
INSERT INTO `cities` VALUES ('674', '51', 'CR', 'San Jose', null, null);
INSERT INTO `cities` VALUES ('675', '54', 'CU', 'Pinar del Rio', null, null);
INSERT INTO `cities` VALUES ('676', '54', 'CU', 'Ciudad de la Habana', null, null);
INSERT INTO `cities` VALUES ('677', '54', 'CU', 'Matanzas', null, null);
INSERT INTO `cities` VALUES ('678', '54', 'CU', 'Isla de la Juventud', null, null);
INSERT INTO `cities` VALUES ('679', '54', 'CU', 'Camaguey', null, null);
INSERT INTO `cities` VALUES ('680', '54', 'CU', 'Ciego de Avila', null, null);
INSERT INTO `cities` VALUES ('681', '54', 'CU', 'Cienfuegos', null, null);
INSERT INTO `cities` VALUES ('682', '54', 'CU', 'Granma', null, null);
INSERT INTO `cities` VALUES ('683', '54', 'CU', 'Guantanamo', null, null);
INSERT INTO `cities` VALUES ('684', '54', 'CU', 'La Habana', null, null);
INSERT INTO `cities` VALUES ('685', '54', 'CU', 'Holguin', null, null);
INSERT INTO `cities` VALUES ('686', '54', 'CU', 'Las Tunas', null, null);
INSERT INTO `cities` VALUES ('687', '54', 'CU', 'Sancti Spiritus', null, null);
INSERT INTO `cities` VALUES ('688', '54', 'CU', 'Santiago de Cuba', null, null);
INSERT INTO `cities` VALUES ('689', '54', 'CU', 'Villa Clara', null, null);
INSERT INTO `cities` VALUES ('690', '39', 'CV', 'Boa Vista', null, null);
INSERT INTO `cities` VALUES ('691', '39', 'CV', 'Brava', null, null);
INSERT INTO `cities` VALUES ('692', '39', 'CV', 'Maio', null, null);
INSERT INTO `cities` VALUES ('693', '39', 'CV', 'Paul', null, null);
INSERT INTO `cities` VALUES ('694', '39', 'CV', 'Ribeira Grande', null, null);
INSERT INTO `cities` VALUES ('695', '39', 'CV', 'Sal', null, null);
INSERT INTO `cities` VALUES ('696', '39', 'CV', 'Sao Nicolau', null, null);
INSERT INTO `cities` VALUES ('697', '39', 'CV', 'Sao Vicente', null, null);
INSERT INTO `cities` VALUES ('698', '39', 'CV', 'Mosteiros', null, null);
INSERT INTO `cities` VALUES ('699', '39', 'CV', 'Praia', null, null);
INSERT INTO `cities` VALUES ('700', '39', 'CV', 'Santa Catarina', null, null);
INSERT INTO `cities` VALUES ('701', '39', 'CV', 'Santa Cruz', null, null);
INSERT INTO `cities` VALUES ('702', '39', 'CV', 'Sao Domingos', null, null);
INSERT INTO `cities` VALUES ('703', '39', 'CV', 'Sao Filipe', null, null);
INSERT INTO `cities` VALUES ('704', '39', 'CV', 'Sao Miguel', null, null);
INSERT INTO `cities` VALUES ('705', '39', 'CV', 'Tarrafal', null, null);
INSERT INTO `cities` VALUES ('706', '55', 'CY', 'Famagusta', null, null);
INSERT INTO `cities` VALUES ('707', '55', 'CY', 'Kyrenia', null, null);
INSERT INTO `cities` VALUES ('708', '55', 'CY', 'Larnaca', null, null);
INSERT INTO `cities` VALUES ('709', '55', 'CY', 'Nicosia', null, null);
INSERT INTO `cities` VALUES ('710', '55', 'CY', 'Limassol', null, null);
INSERT INTO `cities` VALUES ('711', '55', 'CY', 'Paphos', null, null);
INSERT INTO `cities` VALUES ('712', '56', 'CZ', 'Hlavni mesto Praha', null, null);
INSERT INTO `cities` VALUES ('713', '56', 'CZ', 'Jihomoravsky kraj', null, null);
INSERT INTO `cities` VALUES ('714', '56', 'CZ', 'Jihocesky kraj', null, null);
INSERT INTO `cities` VALUES ('715', '56', 'CZ', 'Vysocina', null, null);
INSERT INTO `cities` VALUES ('716', '56', 'CZ', 'Karlovarsky kraj', null, null);
INSERT INTO `cities` VALUES ('717', '56', 'CZ', 'Kralovehradecky kraj', null, null);
INSERT INTO `cities` VALUES ('718', '56', 'CZ', 'Liberecky kraj', null, null);
INSERT INTO `cities` VALUES ('719', '56', 'CZ', 'Olomoucky kraj', null, null);
INSERT INTO `cities` VALUES ('720', '56', 'CZ', 'Moravskoslezsky kraj', null, null);
INSERT INTO `cities` VALUES ('721', '56', 'CZ', 'Pardubicky kraj', null, null);
INSERT INTO `cities` VALUES ('722', '56', 'CZ', 'Plzensky kraj', null, null);
INSERT INTO `cities` VALUES ('723', '56', 'CZ', 'Stredocesky kraj', null, null);
INSERT INTO `cities` VALUES ('724', '56', 'CZ', 'Ustecky kraj', null, null);
INSERT INTO `cities` VALUES ('725', '56', 'CZ', 'Zlinsky kraj', null, null);
INSERT INTO `cities` VALUES ('726', '81', 'DE', 'Baden-Wurttemberg', null, null);
INSERT INTO `cities` VALUES ('727', '81', 'DE', 'Bayern', null, null);
INSERT INTO `cities` VALUES ('728', '81', 'DE', 'Bremen', null, null);
INSERT INTO `cities` VALUES ('729', '81', 'DE', 'Hamburg', null, null);
INSERT INTO `cities` VALUES ('730', '81', 'DE', 'Hessen', null, null);
INSERT INTO `cities` VALUES ('731', '81', 'DE', 'Niedersachsen', null, null);
INSERT INTO `cities` VALUES ('732', '81', 'DE', 'Nordrhein-Westfalen', null, null);
INSERT INTO `cities` VALUES ('733', '81', 'DE', 'Rheinland-Pfalz', null, null);
INSERT INTO `cities` VALUES ('734', '81', 'DE', 'Saarland', null, null);
INSERT INTO `cities` VALUES ('735', '81', 'DE', 'Schleswig-Holstein', null, null);
INSERT INTO `cities` VALUES ('736', '81', 'DE', 'Brandenburg', null, null);
INSERT INTO `cities` VALUES ('737', '81', 'DE', 'Mecklenburg-Vorpommern', null, null);
INSERT INTO `cities` VALUES ('738', '81', 'DE', 'Sachsen', null, null);
INSERT INTO `cities` VALUES ('739', '81', 'DE', 'Sachsen-Anhalt', null, null);
INSERT INTO `cities` VALUES ('740', '81', 'DE', 'Thuringen', null, null);
INSERT INTO `cities` VALUES ('741', '81', 'DE', 'Berlin', null, null);
INSERT INTO `cities` VALUES ('742', '58', 'DJ', 'Ali Sabieh', null, null);
INSERT INTO `cities` VALUES ('743', '58', 'DJ', 'Obock', null, null);
INSERT INTO `cities` VALUES ('744', '58', 'DJ', 'Tadjoura', null, null);
INSERT INTO `cities` VALUES ('745', '58', 'DJ', 'Dikhil', null, null);
INSERT INTO `cities` VALUES ('746', '58', 'DJ', 'Djibouti', null, null);
INSERT INTO `cities` VALUES ('747', '58', 'DJ', 'Arta', null, null);
INSERT INTO `cities` VALUES ('748', '57', 'DK', 'Hovedstaden', null, null);
INSERT INTO `cities` VALUES ('749', '57', 'DK', 'Midtjylland', null, null);
INSERT INTO `cities` VALUES ('750', '57', 'DK', 'Nordjylland', null, null);
INSERT INTO `cities` VALUES ('751', '57', 'DK', 'Sjelland', null, null);
INSERT INTO `cities` VALUES ('752', '57', 'DK', 'Syddanmark', null, null);
INSERT INTO `cities` VALUES ('753', '59', 'DM', 'Saint Andrew', null, null);
INSERT INTO `cities` VALUES ('754', '59', 'DM', 'Saint David', null, null);
INSERT INTO `cities` VALUES ('755', '59', 'DM', 'Saint George', null, null);
INSERT INTO `cities` VALUES ('756', '59', 'DM', 'Saint John', null, null);
INSERT INTO `cities` VALUES ('757', '59', 'DM', 'Saint Joseph', null, null);
INSERT INTO `cities` VALUES ('758', '59', 'DM', 'Saint Luke', null, null);
INSERT INTO `cities` VALUES ('759', '59', 'DM', 'Saint Mark', null, null);
INSERT INTO `cities` VALUES ('760', '59', 'DM', 'Saint Patrick', null, null);
INSERT INTO `cities` VALUES ('761', '59', 'DM', 'Saint Paul', null, null);
INSERT INTO `cities` VALUES ('762', '59', 'DM', 'Saint Peter', null, null);
INSERT INTO `cities` VALUES ('763', '60', 'DO', 'Azua', null, null);
INSERT INTO `cities` VALUES ('764', '60', 'DO', 'Baoruco', null, null);
INSERT INTO `cities` VALUES ('765', '60', 'DO', 'Barahona', null, null);
INSERT INTO `cities` VALUES ('766', '60', 'DO', 'Dajabon', null, null);
INSERT INTO `cities` VALUES ('767', '60', 'DO', 'Distrito Nacional', null, null);
INSERT INTO `cities` VALUES ('768', '60', 'DO', 'Duarte', null, null);
INSERT INTO `cities` VALUES ('769', '60', 'DO', 'Espaillat', null, null);
INSERT INTO `cities` VALUES ('770', '60', 'DO', 'Independencia', null, null);
INSERT INTO `cities` VALUES ('771', '60', 'DO', 'La Altagracia', null, null);
INSERT INTO `cities` VALUES ('772', '60', 'DO', 'Elias Pina', null, null);
INSERT INTO `cities` VALUES ('773', '60', 'DO', 'La Romana', null, null);
INSERT INTO `cities` VALUES ('774', '60', 'DO', 'Maria Trinidad Sanchez', null, null);
INSERT INTO `cities` VALUES ('775', '60', 'DO', 'Monte Cristi', null, null);
INSERT INTO `cities` VALUES ('776', '60', 'DO', 'Pedernales', null, null);
INSERT INTO `cities` VALUES ('777', '60', 'DO', 'Peravia', null, null);
INSERT INTO `cities` VALUES ('778', '60', 'DO', 'Puerto Plata', null, null);
INSERT INTO `cities` VALUES ('779', '60', 'DO', 'Salcedo', null, null);
INSERT INTO `cities` VALUES ('780', '60', 'DO', 'Samana', null, null);
INSERT INTO `cities` VALUES ('781', '60', 'DO', 'Sanchez Ramirez', null, null);
INSERT INTO `cities` VALUES ('782', '60', 'DO', 'San Juan', null, null);
INSERT INTO `cities` VALUES ('783', '60', 'DO', 'San Pedro De Macoris', null, null);
INSERT INTO `cities` VALUES ('784', '60', 'DO', 'Santiago', null, null);
INSERT INTO `cities` VALUES ('785', '60', 'DO', 'Santiago Rodriguez', null, null);
INSERT INTO `cities` VALUES ('786', '60', 'DO', 'Valverde', null, null);
INSERT INTO `cities` VALUES ('787', '60', 'DO', 'El Seibo', null, null);
INSERT INTO `cities` VALUES ('788', '60', 'DO', 'Hato Mayor', null, null);
INSERT INTO `cities` VALUES ('789', '60', 'DO', 'La Vega', null, null);
INSERT INTO `cities` VALUES ('790', '60', 'DO', 'Monsenor Nouel', null, null);
INSERT INTO `cities` VALUES ('791', '60', 'DO', 'Monte Plata', null, null);
INSERT INTO `cities` VALUES ('792', '60', 'DO', 'San Cristobal', null, null);
INSERT INTO `cities` VALUES ('793', '60', 'DO', 'Distrito Nacional', null, null);
INSERT INTO `cities` VALUES ('794', '60', 'DO', 'Peravia', null, null);
INSERT INTO `cities` VALUES ('795', '60', 'DO', 'San Jose de Ocoa', null, null);
INSERT INTO `cities` VALUES ('796', '60', 'DO', 'Santo Domingo', null, null);
INSERT INTO `cities` VALUES ('797', '3', 'DZ', 'Alger', null, null);
INSERT INTO `cities` VALUES ('798', '3', 'DZ', 'Batna', null, null);
INSERT INTO `cities` VALUES ('799', '3', 'DZ', 'Constantine', null, null);
INSERT INTO `cities` VALUES ('800', '3', 'DZ', 'Medea', null, null);
INSERT INTO `cities` VALUES ('801', '3', 'DZ', 'Mostaganem', null, null);
INSERT INTO `cities` VALUES ('802', '3', 'DZ', 'Oran', null, null);
INSERT INTO `cities` VALUES ('803', '3', 'DZ', 'Saida', null, null);
INSERT INTO `cities` VALUES ('804', '3', 'DZ', 'Setif', null, null);
INSERT INTO `cities` VALUES ('805', '3', 'DZ', 'Tiaret', null, null);
INSERT INTO `cities` VALUES ('806', '3', 'DZ', 'Tizi Ouzou', null, null);
INSERT INTO `cities` VALUES ('807', '3', 'DZ', 'Tlemcen', null, null);
INSERT INTO `cities` VALUES ('808', '3', 'DZ', 'Bejaia', null, null);
INSERT INTO `cities` VALUES ('809', '3', 'DZ', 'Biskra', null, null);
INSERT INTO `cities` VALUES ('810', '3', 'DZ', 'Blida', null, null);
INSERT INTO `cities` VALUES ('811', '3', 'DZ', 'Bouira', null, null);
INSERT INTO `cities` VALUES ('812', '3', 'DZ', 'Djelfa', null, null);
INSERT INTO `cities` VALUES ('813', '3', 'DZ', 'Guelma', null, null);
INSERT INTO `cities` VALUES ('814', '3', 'DZ', 'Jijel', null, null);
INSERT INTO `cities` VALUES ('815', '3', 'DZ', 'Laghouat', null, null);
INSERT INTO `cities` VALUES ('816', '3', 'DZ', 'Mascara', null, null);
INSERT INTO `cities` VALUES ('817', '3', 'DZ', 'M\'sila', null, null);
INSERT INTO `cities` VALUES ('818', '3', 'DZ', 'Oum el Bouaghi', null, null);
INSERT INTO `cities` VALUES ('819', '3', 'DZ', 'Sidi Bel Abbes', null, null);
INSERT INTO `cities` VALUES ('820', '3', 'DZ', 'Skikda', null, null);
INSERT INTO `cities` VALUES ('821', '3', 'DZ', 'Tebessa', null, null);
INSERT INTO `cities` VALUES ('822', '3', 'DZ', 'Adrar', null, null);
INSERT INTO `cities` VALUES ('823', '3', 'DZ', 'Ain Defla', null, null);
INSERT INTO `cities` VALUES ('824', '3', 'DZ', 'Ain Temouchent', null, null);
INSERT INTO `cities` VALUES ('825', '3', 'DZ', 'Annaba', null, null);
INSERT INTO `cities` VALUES ('826', '3', 'DZ', 'Bechar', null, null);
INSERT INTO `cities` VALUES ('827', '3', 'DZ', 'Bordj Bou Arreridj', null, null);
INSERT INTO `cities` VALUES ('828', '3', 'DZ', 'Boumerdes', null, null);
INSERT INTO `cities` VALUES ('829', '3', 'DZ', 'Chlef', null, null);
INSERT INTO `cities` VALUES ('830', '3', 'DZ', 'El Bayadh', null, null);
INSERT INTO `cities` VALUES ('831', '3', 'DZ', 'El Oued', null, null);
INSERT INTO `cities` VALUES ('832', '3', 'DZ', 'El Tarf', null, null);
INSERT INTO `cities` VALUES ('833', '3', 'DZ', 'Ghardaia', null, null);
INSERT INTO `cities` VALUES ('834', '3', 'DZ', 'Illizi', null, null);
INSERT INTO `cities` VALUES ('835', '3', 'DZ', 'Khenchela', null, null);
INSERT INTO `cities` VALUES ('836', '3', 'DZ', 'Mila', null, null);
INSERT INTO `cities` VALUES ('837', '3', 'DZ', 'Naama', null, null);
INSERT INTO `cities` VALUES ('838', '3', 'DZ', 'Ouargla', null, null);
INSERT INTO `cities` VALUES ('839', '3', 'DZ', 'Relizane', null, null);
INSERT INTO `cities` VALUES ('840', '3', 'DZ', 'Souk Ahras', null, null);
INSERT INTO `cities` VALUES ('841', '3', 'DZ', 'Tamanghasset', null, null);
INSERT INTO `cities` VALUES ('842', '3', 'DZ', 'Tindouf', null, null);
INSERT INTO `cities` VALUES ('843', '3', 'DZ', 'Tipaza', null, null);
INSERT INTO `cities` VALUES ('844', '3', 'DZ', 'Tissemsilt', null, null);
INSERT INTO `cities` VALUES ('845', '62', 'EC', 'Galapagos', null, null);
INSERT INTO `cities` VALUES ('846', '62', 'EC', 'Azuay', null, null);
INSERT INTO `cities` VALUES ('847', '62', 'EC', 'Bolivar', null, null);
INSERT INTO `cities` VALUES ('848', '62', 'EC', 'Canar', null, null);
INSERT INTO `cities` VALUES ('849', '62', 'EC', 'Carchi', null, null);
INSERT INTO `cities` VALUES ('850', '62', 'EC', 'Chimborazo', null, null);
INSERT INTO `cities` VALUES ('851', '62', 'EC', 'Cotopaxi', null, null);
INSERT INTO `cities` VALUES ('852', '62', 'EC', 'El Oro', null, null);
INSERT INTO `cities` VALUES ('853', '62', 'EC', 'Esmeraldas', null, null);
INSERT INTO `cities` VALUES ('854', '62', 'EC', 'Guayas', null, null);
INSERT INTO `cities` VALUES ('855', '62', 'EC', 'Imbabura', null, null);
INSERT INTO `cities` VALUES ('856', '62', 'EC', 'Loja', null, null);
INSERT INTO `cities` VALUES ('857', '62', 'EC', 'Los Rios', null, null);
INSERT INTO `cities` VALUES ('858', '62', 'EC', 'Manabi', null, null);
INSERT INTO `cities` VALUES ('859', '62', 'EC', 'Morona-Santiago', null, null);
INSERT INTO `cities` VALUES ('860', '62', 'EC', 'Pastaza', null, null);
INSERT INTO `cities` VALUES ('861', '62', 'EC', 'Pichincha', null, null);
INSERT INTO `cities` VALUES ('862', '62', 'EC', 'Tungurahua', null, null);
INSERT INTO `cities` VALUES ('863', '62', 'EC', 'Zamora-Chinchipe', null, null);
INSERT INTO `cities` VALUES ('864', '62', 'EC', 'Sucumbios', null, null);
INSERT INTO `cities` VALUES ('865', '62', 'EC', 'Napo', null, null);
INSERT INTO `cities` VALUES ('866', '62', 'EC', 'Orellana', null, null);
INSERT INTO `cities` VALUES ('867', '67', 'EE', 'Harjumaa', null, null);
INSERT INTO `cities` VALUES ('868', '67', 'EE', 'Hiiumaa', null, null);
INSERT INTO `cities` VALUES ('869', '67', 'EE', 'Ida-Virumaa', null, null);
INSERT INTO `cities` VALUES ('870', '67', 'EE', 'Jarvamaa', null, null);
INSERT INTO `cities` VALUES ('871', '67', 'EE', 'Jogevamaa', null, null);
INSERT INTO `cities` VALUES ('872', '67', 'EE', 'Kohtla-Jarve', null, null);
INSERT INTO `cities` VALUES ('873', '67', 'EE', 'Laanemaa', null, null);
INSERT INTO `cities` VALUES ('874', '67', 'EE', 'Laane-Virumaa', null, null);
INSERT INTO `cities` VALUES ('875', '67', 'EE', 'Narva', null, null);
INSERT INTO `cities` VALUES ('876', '67', 'EE', 'Parnu', null, null);
INSERT INTO `cities` VALUES ('877', '67', 'EE', 'Parnumaa', null, null);
INSERT INTO `cities` VALUES ('878', '67', 'EE', 'Polvamaa', null, null);
INSERT INTO `cities` VALUES ('879', '67', 'EE', 'Raplamaa', null, null);
INSERT INTO `cities` VALUES ('880', '67', 'EE', 'Saaremaa', null, null);
INSERT INTO `cities` VALUES ('881', '67', 'EE', 'Sillamae', null, null);
INSERT INTO `cities` VALUES ('882', '67', 'EE', 'Tallinn', null, null);
INSERT INTO `cities` VALUES ('883', '67', 'EE', 'Tartu', null, null);
INSERT INTO `cities` VALUES ('884', '67', 'EE', 'Tartumaa', null, null);
INSERT INTO `cities` VALUES ('885', '67', 'EE', 'Valgamaa', null, null);
INSERT INTO `cities` VALUES ('886', '67', 'EE', 'Viljandimaa', null, null);
INSERT INTO `cities` VALUES ('887', '67', 'EE', 'Vorumaa', null, null);
INSERT INTO `cities` VALUES ('888', '63', 'EG', 'Ad Daqahliyah', null, null);
INSERT INTO `cities` VALUES ('889', '63', 'EG', 'Al Bahr al Ahmar', null, null);
INSERT INTO `cities` VALUES ('890', '63', 'EG', 'Al Buhayrah', null, null);
INSERT INTO `cities` VALUES ('891', '63', 'EG', 'Al Fayyum', null, null);
INSERT INTO `cities` VALUES ('892', '63', 'EG', 'Al Gharbiyah', null, null);
INSERT INTO `cities` VALUES ('893', '63', 'EG', 'Al Iskandariyah', null, null);
INSERT INTO `cities` VALUES ('894', '63', 'EG', 'Al Isma\'iliyah', null, null);
INSERT INTO `cities` VALUES ('895', '63', 'EG', 'Al Jizah', null, null);
INSERT INTO `cities` VALUES ('896', '63', 'EG', 'Al Minufiyah', null, null);
INSERT INTO `cities` VALUES ('897', '63', 'EG', 'Al Minya', null, null);
INSERT INTO `cities` VALUES ('898', '63', 'EG', 'Al Qahirah', null, null);
INSERT INTO `cities` VALUES ('899', '63', 'EG', 'Al Qalyubiyah', null, null);
INSERT INTO `cities` VALUES ('900', '63', 'EG', 'Al Wadi al Jadid', null, null);
INSERT INTO `cities` VALUES ('901', '63', 'EG', 'Ash Sharqiyah', null, null);
INSERT INTO `cities` VALUES ('902', '63', 'EG', 'As Suways', null, null);
INSERT INTO `cities` VALUES ('903', '63', 'EG', 'Aswan', null, null);
INSERT INTO `cities` VALUES ('904', '63', 'EG', 'Asyut', null, null);
INSERT INTO `cities` VALUES ('905', '63', 'EG', 'Bani Suwayf', null, null);
INSERT INTO `cities` VALUES ('906', '63', 'EG', 'Bur Sa\'id', null, null);
INSERT INTO `cities` VALUES ('907', '63', 'EG', 'Dumyat', null, null);
INSERT INTO `cities` VALUES ('908', '63', 'EG', 'Kafr ash Shaykh', null, null);
INSERT INTO `cities` VALUES ('909', '63', 'EG', 'Matruh', null, null);
INSERT INTO `cities` VALUES ('910', '63', 'EG', 'Qina', null, null);
INSERT INTO `cities` VALUES ('911', '63', 'EG', 'Suhaj', null, null);
INSERT INTO `cities` VALUES ('912', '63', 'EG', 'Janub Sina\'', null, null);
INSERT INTO `cities` VALUES ('913', '63', 'EG', 'Shamal Sina\'', null, null);
INSERT INTO `cities` VALUES ('914', '66', 'ER', 'Anseba', null, null);
INSERT INTO `cities` VALUES ('915', '66', 'ER', 'Debub', null, null);
INSERT INTO `cities` VALUES ('916', '66', 'ER', 'Debubawi K\'eyih Bahri', null, null);
INSERT INTO `cities` VALUES ('917', '66', 'ER', 'Gash Barka', null, null);
INSERT INTO `cities` VALUES ('918', '66', 'ER', 'Ma\'akel', null, null);
INSERT INTO `cities` VALUES ('919', '66', 'ER', 'Semenawi K\'eyih Bahri', null, null);
INSERT INTO `cities` VALUES ('920', '195', 'ES', 'Islas Baleares', null, null);
INSERT INTO `cities` VALUES ('921', '195', 'ES', 'La Rioja', null, null);
INSERT INTO `cities` VALUES ('922', '195', 'ES', 'Madrid', null, null);
INSERT INTO `cities` VALUES ('923', '195', 'ES', 'Murcia', null, null);
INSERT INTO `cities` VALUES ('924', '195', 'ES', 'Navarra', null, null);
INSERT INTO `cities` VALUES ('925', '195', 'ES', 'Asturias', null, null);
INSERT INTO `cities` VALUES ('926', '195', 'ES', 'Cantabria', null, null);
INSERT INTO `cities` VALUES ('927', '195', 'ES', 'Andalucia', null, null);
INSERT INTO `cities` VALUES ('928', '195', 'ES', 'Aragon', null, null);
INSERT INTO `cities` VALUES ('929', '195', 'ES', 'Canarias', null, null);
INSERT INTO `cities` VALUES ('930', '195', 'ES', 'Castilla-La Mancha', null, null);
INSERT INTO `cities` VALUES ('931', '195', 'ES', 'Castilla y Leon', null, null);
INSERT INTO `cities` VALUES ('932', '195', 'ES', 'Catalonia', null, null);
INSERT INTO `cities` VALUES ('933', '195', 'ES', 'Extremadura', null, null);
INSERT INTO `cities` VALUES ('934', '195', 'ES', 'Galicia', null, null);
INSERT INTO `cities` VALUES ('935', '195', 'ES', 'Pais Vasco', null, null);
INSERT INTO `cities` VALUES ('936', '195', 'ES', 'Comunidad Valenciana', null, null);
INSERT INTO `cities` VALUES ('937', '68', 'ET', 'Adis Abeba', null, null);
INSERT INTO `cities` VALUES ('938', '68', 'ET', 'Afar', null, null);
INSERT INTO `cities` VALUES ('939', '68', 'ET', 'Amara', null, null);
INSERT INTO `cities` VALUES ('940', '68', 'ET', 'Binshangul Gumuz', null, null);
INSERT INTO `cities` VALUES ('941', '68', 'ET', 'Dire Dawa', null, null);
INSERT INTO `cities` VALUES ('942', '68', 'ET', 'Gambela Hizboch', null, null);
INSERT INTO `cities` VALUES ('943', '68', 'ET', 'Hareri Hizb', null, null);
INSERT INTO `cities` VALUES ('944', '68', 'ET', 'Oromiya', null, null);
INSERT INTO `cities` VALUES ('945', '68', 'ET', 'Sumale', null, null);
INSERT INTO `cities` VALUES ('946', '68', 'ET', 'Tigray', null, null);
INSERT INTO `cities` VALUES ('947', '68', 'ET', 'YeDebub Biheroch Bihereseboch na Hizboch', null, null);
INSERT INTO `cities` VALUES ('948', '72', 'FI', 'Aland', null, null);
INSERT INTO `cities` VALUES ('949', '72', 'FI', 'Lapland', null, null);
INSERT INTO `cities` VALUES ('950', '72', 'FI', 'Oulu', null, null);
INSERT INTO `cities` VALUES ('951', '72', 'FI', 'Southern Finland', null, null);
INSERT INTO `cities` VALUES ('952', '72', 'FI', 'Eastern Finland', null, null);
INSERT INTO `cities` VALUES ('953', '72', 'FI', 'Western Finland', null, null);
INSERT INTO `cities` VALUES ('954', '71', 'FJ', 'Central', null, null);
INSERT INTO `cities` VALUES ('955', '71', 'FJ', 'Eastern', null, null);
INSERT INTO `cities` VALUES ('956', '71', 'FJ', 'Northern', null, null);
INSERT INTO `cities` VALUES ('957', '71', 'FJ', 'Rotuma', null, null);
INSERT INTO `cities` VALUES ('958', '71', 'FJ', 'Western', null, null);
INSERT INTO `cities` VALUES ('959', '139', 'FM', 'Kosrae', null, null);
INSERT INTO `cities` VALUES ('960', '139', 'FM', 'Pohnpei', null, null);
INSERT INTO `cities` VALUES ('961', '139', 'FM', 'Chuuk', null, null);
INSERT INTO `cities` VALUES ('962', '139', 'FM', 'Yap', null, null);
INSERT INTO `cities` VALUES ('963', '73', 'FR', 'Aquitaine', null, null);
INSERT INTO `cities` VALUES ('964', '73', 'FR', 'Auvergne', null, null);
INSERT INTO `cities` VALUES ('965', '73', 'FR', 'Basse-Normandie', null, null);
INSERT INTO `cities` VALUES ('966', '73', 'FR', 'Bourgogne', null, null);
INSERT INTO `cities` VALUES ('967', '73', 'FR', 'Bretagne', null, null);
INSERT INTO `cities` VALUES ('968', '73', 'FR', 'Centre', null, null);
INSERT INTO `cities` VALUES ('969', '73', 'FR', 'Champagne-Ardenne', null, null);
INSERT INTO `cities` VALUES ('970', '73', 'FR', 'Corse', null, null);
INSERT INTO `cities` VALUES ('971', '73', 'FR', 'Franche-Comte', null, null);
INSERT INTO `cities` VALUES ('972', '73', 'FR', 'Haute-Normandie', null, null);
INSERT INTO `cities` VALUES ('973', '73', 'FR', 'Ile-de-France', null, null);
INSERT INTO `cities` VALUES ('974', '73', 'FR', 'Languedoc-Roussillon', null, null);
INSERT INTO `cities` VALUES ('975', '73', 'FR', 'Limousin', null, null);
INSERT INTO `cities` VALUES ('976', '73', 'FR', 'Lorraine', null, null);
INSERT INTO `cities` VALUES ('977', '73', 'FR', 'Midi-Pyrenees', null, null);
INSERT INTO `cities` VALUES ('978', '73', 'FR', 'Nord-Pas-de-Calais', null, null);
INSERT INTO `cities` VALUES ('979', '73', 'FR', 'Pays de la Loire', null, null);
INSERT INTO `cities` VALUES ('980', '73', 'FR', 'Picardie', null, null);
INSERT INTO `cities` VALUES ('981', '73', 'FR', 'Poitou-Charentes', null, null);
INSERT INTO `cities` VALUES ('982', '73', 'FR', 'Provence-Alpes-Cote d\'Azur', null, null);
INSERT INTO `cities` VALUES ('983', '73', 'FR', 'Rhone-Alpes', null, null);
INSERT INTO `cities` VALUES ('984', '73', 'FR', 'Alsace', null, null);
INSERT INTO `cities` VALUES ('985', '78', 'GA', 'Estuaire', null, null);
INSERT INTO `cities` VALUES ('986', '78', 'GA', 'Haut-Ogooue', null, null);
INSERT INTO `cities` VALUES ('987', '78', 'GA', 'Moyen-Ogooue', null, null);
INSERT INTO `cities` VALUES ('988', '78', 'GA', 'Ngounie', null, null);
INSERT INTO `cities` VALUES ('989', '78', 'GA', 'Nyanga', null, null);
INSERT INTO `cities` VALUES ('990', '78', 'GA', 'Ogooue-Ivindo', null, null);
INSERT INTO `cities` VALUES ('991', '78', 'GA', 'Ogooue-Lolo', null, null);
INSERT INTO `cities` VALUES ('992', '78', 'GA', 'Ogooue-Maritime', null, null);
INSERT INTO `cities` VALUES ('993', '78', 'GA', 'Woleu-Ntem', null, null);
INSERT INTO `cities` VALUES ('994', '222', 'GB', 'Barking and Dagenham', null, null);
INSERT INTO `cities` VALUES ('995', '222', 'GB', 'Barnet', null, null);
INSERT INTO `cities` VALUES ('996', '222', 'GB', 'Barnsley', null, null);
INSERT INTO `cities` VALUES ('997', '222', 'GB', 'Bath and North East Somerset', null, null);
INSERT INTO `cities` VALUES ('998', '222', 'GB', 'Bedfordshire', null, null);
INSERT INTO `cities` VALUES ('999', '222', 'GB', 'Bexley', null, null);
INSERT INTO `cities` VALUES ('1000', '222', 'GB', 'Birmingham', null, null);
INSERT INTO `cities` VALUES ('1001', '222', 'GB', 'Blackburn with Darwen', null, null);
INSERT INTO `cities` VALUES ('1002', '222', 'GB', 'Blackpool', null, null);
INSERT INTO `cities` VALUES ('1003', '222', 'GB', 'Bolton', null, null);
INSERT INTO `cities` VALUES ('1004', '222', 'GB', 'Bournemouth', null, null);
INSERT INTO `cities` VALUES ('1005', '222', 'GB', 'Bracknell Forest', null, null);
INSERT INTO `cities` VALUES ('1006', '222', 'GB', 'Bradford', null, null);
INSERT INTO `cities` VALUES ('1007', '222', 'GB', 'Brent', null, null);
INSERT INTO `cities` VALUES ('1008', '222', 'GB', 'Brighton and Hove', null, null);
INSERT INTO `cities` VALUES ('1009', '222', 'GB', 'Bristol, City of', null, null);
INSERT INTO `cities` VALUES ('1010', '222', 'GB', 'Bromley', null, null);
INSERT INTO `cities` VALUES ('1011', '222', 'GB', 'Buckinghamshire', null, null);
INSERT INTO `cities` VALUES ('1012', '222', 'GB', 'Bury', null, null);
INSERT INTO `cities` VALUES ('1013', '222', 'GB', 'Calderdale', null, null);
INSERT INTO `cities` VALUES ('1014', '222', 'GB', 'Cambridgeshire', null, null);
INSERT INTO `cities` VALUES ('1015', '222', 'GB', 'Camden', null, null);
INSERT INTO `cities` VALUES ('1016', '222', 'GB', 'Cheshire', null, null);
INSERT INTO `cities` VALUES ('1017', '222', 'GB', 'Cornwall', null, null);
INSERT INTO `cities` VALUES ('1018', '222', 'GB', 'Coventry', null, null);
INSERT INTO `cities` VALUES ('1019', '222', 'GB', 'Croydon', null, null);
INSERT INTO `cities` VALUES ('1020', '222', 'GB', 'Cumbria', null, null);
INSERT INTO `cities` VALUES ('1021', '222', 'GB', 'Darlington', null, null);
INSERT INTO `cities` VALUES ('1022', '222', 'GB', 'Derby', null, null);
INSERT INTO `cities` VALUES ('1023', '222', 'GB', 'Derbyshire', null, null);
INSERT INTO `cities` VALUES ('1024', '222', 'GB', 'Devon', null, null);
INSERT INTO `cities` VALUES ('1025', '222', 'GB', 'Doncaster', null, null);
INSERT INTO `cities` VALUES ('1026', '222', 'GB', 'Dorset', null, null);
INSERT INTO `cities` VALUES ('1027', '222', 'GB', 'Dudley', null, null);
INSERT INTO `cities` VALUES ('1028', '222', 'GB', 'Durham', null, null);
INSERT INTO `cities` VALUES ('1029', '222', 'GB', 'Ealing', null, null);
INSERT INTO `cities` VALUES ('1030', '222', 'GB', 'East Riding of Yorkshire', null, null);
INSERT INTO `cities` VALUES ('1031', '222', 'GB', 'East Sussex', null, null);
INSERT INTO `cities` VALUES ('1032', '222', 'GB', 'Enfield', null, null);
INSERT INTO `cities` VALUES ('1033', '222', 'GB', 'Essex', null, null);
INSERT INTO `cities` VALUES ('1034', '222', 'GB', 'Gateshead', null, null);
INSERT INTO `cities` VALUES ('1035', '222', 'GB', 'Gloucestershire', null, null);
INSERT INTO `cities` VALUES ('1036', '222', 'GB', 'Greenwich', null, null);
INSERT INTO `cities` VALUES ('1037', '222', 'GB', 'Hackney', null, null);
INSERT INTO `cities` VALUES ('1038', '222', 'GB', 'Halton', null, null);
INSERT INTO `cities` VALUES ('1039', '222', 'GB', 'Hammersmith and Fulham', null, null);
INSERT INTO `cities` VALUES ('1040', '222', 'GB', 'Hampshire', null, null);
INSERT INTO `cities` VALUES ('1041', '222', 'GB', 'Haringey', null, null);
INSERT INTO `cities` VALUES ('1042', '222', 'GB', 'Harrow', null, null);
INSERT INTO `cities` VALUES ('1043', '222', 'GB', 'Hartlepool', null, null);
INSERT INTO `cities` VALUES ('1044', '222', 'GB', 'Havering', null, null);
INSERT INTO `cities` VALUES ('1045', '222', 'GB', 'Herefordshire', null, null);
INSERT INTO `cities` VALUES ('1046', '222', 'GB', 'Hertford', null, null);
INSERT INTO `cities` VALUES ('1047', '222', 'GB', 'Hillingdon', null, null);
INSERT INTO `cities` VALUES ('1048', '222', 'GB', 'Hounslow', null, null);
INSERT INTO `cities` VALUES ('1049', '222', 'GB', 'Isle of Wight', null, null);
INSERT INTO `cities` VALUES ('1050', '222', 'GB', 'Islington', null, null);
INSERT INTO `cities` VALUES ('1051', '222', 'GB', 'Kensington and Chelsea', null, null);
INSERT INTO `cities` VALUES ('1052', '222', 'GB', 'Kent', null, null);
INSERT INTO `cities` VALUES ('1053', '222', 'GB', 'Kingston upon Hull, City of', null, null);
INSERT INTO `cities` VALUES ('1054', '222', 'GB', 'Kingston upon Thames', null, null);
INSERT INTO `cities` VALUES ('1055', '222', 'GB', 'Kirklees', null, null);
INSERT INTO `cities` VALUES ('1056', '222', 'GB', 'Knowsley', null, null);
INSERT INTO `cities` VALUES ('1057', '222', 'GB', 'Lambeth', null, null);
INSERT INTO `cities` VALUES ('1058', '222', 'GB', 'Lancashire', null, null);
INSERT INTO `cities` VALUES ('1059', '222', 'GB', 'Leeds', null, null);
INSERT INTO `cities` VALUES ('1060', '222', 'GB', 'Leicester', null, null);
INSERT INTO `cities` VALUES ('1061', '222', 'GB', 'Leicestershire', null, null);
INSERT INTO `cities` VALUES ('1062', '222', 'GB', 'Lewisham', null, null);
INSERT INTO `cities` VALUES ('1063', '222', 'GB', 'Lincolnshire', null, null);
INSERT INTO `cities` VALUES ('1064', '222', 'GB', 'Liverpool', null, null);
INSERT INTO `cities` VALUES ('1065', '222', 'GB', 'London, City of', null, null);
INSERT INTO `cities` VALUES ('1066', '222', 'GB', 'Luton', null, null);
INSERT INTO `cities` VALUES ('1067', '222', 'GB', 'Manchester', null, null);
INSERT INTO `cities` VALUES ('1068', '222', 'GB', 'Medway', null, null);
INSERT INTO `cities` VALUES ('1069', '222', 'GB', 'Merton', null, null);
INSERT INTO `cities` VALUES ('1070', '222', 'GB', 'Middlesbrough', null, null);
INSERT INTO `cities` VALUES ('1071', '222', 'GB', 'Milton Keynes', null, null);
INSERT INTO `cities` VALUES ('1072', '222', 'GB', 'Newcastle upon Tyne', null, null);
INSERT INTO `cities` VALUES ('1073', '222', 'GB', 'Newham', null, null);
INSERT INTO `cities` VALUES ('1074', '222', 'GB', 'Norfolk', null, null);
INSERT INTO `cities` VALUES ('1075', '222', 'GB', 'Northamptonshire', null, null);
INSERT INTO `cities` VALUES ('1076', '222', 'GB', 'North East Lincolnshire', null, null);
INSERT INTO `cities` VALUES ('1077', '222', 'GB', 'North Lincolnshire', null, null);
INSERT INTO `cities` VALUES ('1078', '222', 'GB', 'North Somerset', null, null);
INSERT INTO `cities` VALUES ('1079', '222', 'GB', 'North Tyneside', null, null);
INSERT INTO `cities` VALUES ('1080', '222', 'GB', 'Northumberland', null, null);
INSERT INTO `cities` VALUES ('1081', '222', 'GB', 'North Yorkshire', null, null);
INSERT INTO `cities` VALUES ('1082', '222', 'GB', 'Nottingham', null, null);
INSERT INTO `cities` VALUES ('1083', '222', 'GB', 'Nottinghamshire', null, null);
INSERT INTO `cities` VALUES ('1084', '222', 'GB', 'Oldham', null, null);
INSERT INTO `cities` VALUES ('1085', '222', 'GB', 'Oxfordshire', null, null);
INSERT INTO `cities` VALUES ('1086', '222', 'GB', 'Peterborough', null, null);
INSERT INTO `cities` VALUES ('1087', '222', 'GB', 'Plymouth', null, null);
INSERT INTO `cities` VALUES ('1088', '222', 'GB', 'Poole', null, null);
INSERT INTO `cities` VALUES ('1089', '222', 'GB', 'Portsmouth', null, null);
INSERT INTO `cities` VALUES ('1090', '222', 'GB', 'Reading', null, null);
INSERT INTO `cities` VALUES ('1091', '222', 'GB', 'Redbridge', null, null);
INSERT INTO `cities` VALUES ('1092', '222', 'GB', 'Redcar and Cleveland', null, null);
INSERT INTO `cities` VALUES ('1093', '222', 'GB', 'Richmond upon Thames', null, null);
INSERT INTO `cities` VALUES ('1094', '222', 'GB', 'Rochdale', null, null);
INSERT INTO `cities` VALUES ('1095', '222', 'GB', 'Rotherham', null, null);
INSERT INTO `cities` VALUES ('1096', '222', 'GB', 'Rutland', null, null);
INSERT INTO `cities` VALUES ('1097', '222', 'GB', 'Salford', null, null);
INSERT INTO `cities` VALUES ('1098', '222', 'GB', 'Shropshire', null, null);
INSERT INTO `cities` VALUES ('1099', '222', 'GB', 'Sandwell', null, null);
INSERT INTO `cities` VALUES ('1100', '222', 'GB', 'Sefton', null, null);
INSERT INTO `cities` VALUES ('1101', '222', 'GB', 'Sheffield', null, null);
INSERT INTO `cities` VALUES ('1102', '222', 'GB', 'Slough', null, null);
INSERT INTO `cities` VALUES ('1103', '222', 'GB', 'Solihull', null, null);
INSERT INTO `cities` VALUES ('1104', '222', 'GB', 'Somerset', null, null);
INSERT INTO `cities` VALUES ('1105', '222', 'GB', 'Southampton', null, null);
INSERT INTO `cities` VALUES ('1106', '222', 'GB', 'Southend-on-Sea', null, null);
INSERT INTO `cities` VALUES ('1107', '222', 'GB', 'South Gloucestershire', null, null);
INSERT INTO `cities` VALUES ('1108', '222', 'GB', 'South Tyneside', null, null);
INSERT INTO `cities` VALUES ('1109', '222', 'GB', 'Southwark', null, null);
INSERT INTO `cities` VALUES ('1110', '222', 'GB', 'Staffordshire', null, null);
INSERT INTO `cities` VALUES ('1111', '222', 'GB', 'St. Helens', null, null);
INSERT INTO `cities` VALUES ('1112', '222', 'GB', 'Stockport', null, null);
INSERT INTO `cities` VALUES ('1113', '222', 'GB', 'Stockton-on-Tees', null, null);
INSERT INTO `cities` VALUES ('1114', '222', 'GB', 'Stoke-on-Trent', null, null);
INSERT INTO `cities` VALUES ('1115', '222', 'GB', 'Suffolk', null, null);
INSERT INTO `cities` VALUES ('1116', '222', 'GB', 'Sunderland', null, null);
INSERT INTO `cities` VALUES ('1117', '222', 'GB', 'Surrey', null, null);
INSERT INTO `cities` VALUES ('1118', '222', 'GB', 'Sutton', null, null);
INSERT INTO `cities` VALUES ('1119', '222', 'GB', 'Swindon', null, null);
INSERT INTO `cities` VALUES ('1120', '222', 'GB', 'Tameside', null, null);
INSERT INTO `cities` VALUES ('1121', '222', 'GB', 'Telford and Wrekin', null, null);
INSERT INTO `cities` VALUES ('1122', '222', 'GB', 'Thurrock', null, null);
INSERT INTO `cities` VALUES ('1123', '222', 'GB', 'Torbay', null, null);
INSERT INTO `cities` VALUES ('1124', '222', 'GB', 'Tower Hamlets', null, null);
INSERT INTO `cities` VALUES ('1125', '222', 'GB', 'Trafford', null, null);
INSERT INTO `cities` VALUES ('1126', '222', 'GB', 'Wakefield', null, null);
INSERT INTO `cities` VALUES ('1127', '222', 'GB', 'Walsall', null, null);
INSERT INTO `cities` VALUES ('1128', '222', 'GB', 'Waltham Forest', null, null);
INSERT INTO `cities` VALUES ('1129', '222', 'GB', 'Wandsworth', null, null);
INSERT INTO `cities` VALUES ('1130', '222', 'GB', 'Warrington', null, null);
INSERT INTO `cities` VALUES ('1131', '222', 'GB', 'Warwickshire', null, null);
INSERT INTO `cities` VALUES ('1132', '222', 'GB', 'West Berkshire', null, null);
INSERT INTO `cities` VALUES ('1133', '222', 'GB', 'Westminster', null, null);
INSERT INTO `cities` VALUES ('1134', '222', 'GB', 'West Sussex', null, null);
INSERT INTO `cities` VALUES ('1135', '222', 'GB', 'Wigan', null, null);
INSERT INTO `cities` VALUES ('1136', '222', 'GB', 'Wiltshire', null, null);
INSERT INTO `cities` VALUES ('1137', '222', 'GB', 'Windsor and Maidenhead', null, null);
INSERT INTO `cities` VALUES ('1138', '222', 'GB', 'Wirral', null, null);
INSERT INTO `cities` VALUES ('1139', '222', 'GB', 'Wokingham', null, null);
INSERT INTO `cities` VALUES ('1140', '222', 'GB', 'Wolverhampton', null, null);
INSERT INTO `cities` VALUES ('1141', '222', 'GB', 'Worcestershire', null, null);
INSERT INTO `cities` VALUES ('1142', '222', 'GB', 'York', null, null);
INSERT INTO `cities` VALUES ('1143', '222', 'GB', 'Antrim', null, null);
INSERT INTO `cities` VALUES ('1144', '222', 'GB', 'Ards', null, null);
INSERT INTO `cities` VALUES ('1145', '222', 'GB', 'Armagh', null, null);
INSERT INTO `cities` VALUES ('1146', '222', 'GB', 'Ballymena', null, null);
INSERT INTO `cities` VALUES ('1147', '222', 'GB', 'Ballymoney', null, null);
INSERT INTO `cities` VALUES ('1148', '222', 'GB', 'Banbridge', null, null);
INSERT INTO `cities` VALUES ('1149', '222', 'GB', 'Belfast', null, null);
INSERT INTO `cities` VALUES ('1150', '222', 'GB', 'Carrickfergus', null, null);
INSERT INTO `cities` VALUES ('1151', '222', 'GB', 'Castlereagh', null, null);
INSERT INTO `cities` VALUES ('1152', '222', 'GB', 'Coleraine', null, null);
INSERT INTO `cities` VALUES ('1153', '222', 'GB', 'Cookstown', null, null);
INSERT INTO `cities` VALUES ('1154', '222', 'GB', 'Craigavon', null, null);
INSERT INTO `cities` VALUES ('1155', '222', 'GB', 'Down', null, null);
INSERT INTO `cities` VALUES ('1156', '222', 'GB', 'Dungannon', null, null);
INSERT INTO `cities` VALUES ('1157', '222', 'GB', 'Fermanagh', null, null);
INSERT INTO `cities` VALUES ('1158', '222', 'GB', 'Larne', null, null);
INSERT INTO `cities` VALUES ('1159', '222', 'GB', 'Limavady', null, null);
INSERT INTO `cities` VALUES ('1160', '222', 'GB', 'Lisburn', null, null);
INSERT INTO `cities` VALUES ('1161', '222', 'GB', 'Derry', null, null);
INSERT INTO `cities` VALUES ('1162', '222', 'GB', 'Magherafelt', null, null);
INSERT INTO `cities` VALUES ('1163', '222', 'GB', 'Moyle', null, null);
INSERT INTO `cities` VALUES ('1164', '222', 'GB', 'Newry and Mourne', null, null);
INSERT INTO `cities` VALUES ('1165', '222', 'GB', 'Newtownabbey', null, null);
INSERT INTO `cities` VALUES ('1166', '222', 'GB', 'North Down', null, null);
INSERT INTO `cities` VALUES ('1167', '222', 'GB', 'Omagh', null, null);
INSERT INTO `cities` VALUES ('1168', '222', 'GB', 'Strabane', null, null);
INSERT INTO `cities` VALUES ('1169', '222', 'GB', 'Aberdeen City', null, null);
INSERT INTO `cities` VALUES ('1170', '222', 'GB', 'Aberdeenshire', null, null);
INSERT INTO `cities` VALUES ('1171', '222', 'GB', 'Angus', null, null);
INSERT INTO `cities` VALUES ('1172', '222', 'GB', 'Argyll and Bute', null, null);
INSERT INTO `cities` VALUES ('1173', '222', 'GB', 'Scottish Borders, The', null, null);
INSERT INTO `cities` VALUES ('1174', '222', 'GB', 'Clackmannanshire', null, null);
INSERT INTO `cities` VALUES ('1175', '222', 'GB', 'Dumfries and Galloway', null, null);
INSERT INTO `cities` VALUES ('1176', '222', 'GB', 'Dundee City', null, null);
INSERT INTO `cities` VALUES ('1177', '222', 'GB', 'East Ayrshire', null, null);
INSERT INTO `cities` VALUES ('1178', '222', 'GB', 'East Dunbartonshire', null, null);
INSERT INTO `cities` VALUES ('1179', '222', 'GB', 'East Lothian', null, null);
INSERT INTO `cities` VALUES ('1180', '222', 'GB', 'East Renfrewshire', null, null);
INSERT INTO `cities` VALUES ('1181', '222', 'GB', 'Edinburgh, City of', null, null);
INSERT INTO `cities` VALUES ('1182', '222', 'GB', 'Falkirk', null, null);
INSERT INTO `cities` VALUES ('1183', '222', 'GB', 'Fife', null, null);
INSERT INTO `cities` VALUES ('1184', '222', 'GB', 'Glasgow City', null, null);
INSERT INTO `cities` VALUES ('1185', '222', 'GB', 'Highland', null, null);
INSERT INTO `cities` VALUES ('1186', '222', 'GB', 'Inverclyde', null, null);
INSERT INTO `cities` VALUES ('1187', '222', 'GB', 'Midlothian', null, null);
INSERT INTO `cities` VALUES ('1188', '222', 'GB', 'Moray', null, null);
INSERT INTO `cities` VALUES ('1189', '222', 'GB', 'North Ayrshire', null, null);
INSERT INTO `cities` VALUES ('1190', '222', 'GB', 'North Lanarkshire', null, null);
INSERT INTO `cities` VALUES ('1191', '222', 'GB', 'Orkney', null, null);
INSERT INTO `cities` VALUES ('1192', '222', 'GB', 'Perth and Kinross', null, null);
INSERT INTO `cities` VALUES ('1193', '222', 'GB', 'Renfrewshire', null, null);
INSERT INTO `cities` VALUES ('1194', '222', 'GB', 'Shetland Islands', null, null);
INSERT INTO `cities` VALUES ('1195', '222', 'GB', 'South Ayrshire', null, null);
INSERT INTO `cities` VALUES ('1196', '222', 'GB', 'South Lanarkshire', null, null);
INSERT INTO `cities` VALUES ('1197', '222', 'GB', 'Stirling', null, null);
INSERT INTO `cities` VALUES ('1198', '222', 'GB', 'West Dunbartonshire', null, null);
INSERT INTO `cities` VALUES ('1199', '222', 'GB', 'Eilean Siar', null, null);
INSERT INTO `cities` VALUES ('1200', '222', 'GB', 'West Lothian', null, null);
INSERT INTO `cities` VALUES ('1201', '222', 'GB', 'Isle of Anglesey', null, null);
INSERT INTO `cities` VALUES ('1202', '222', 'GB', 'Blaenau Gwent', null, null);
INSERT INTO `cities` VALUES ('1203', '222', 'GB', 'Bridgend', null, null);
INSERT INTO `cities` VALUES ('1204', '222', 'GB', 'Caerphilly', null, null);
INSERT INTO `cities` VALUES ('1205', '222', 'GB', 'Cardiff', null, null);
INSERT INTO `cities` VALUES ('1206', '222', 'GB', 'Ceredigion', null, null);
INSERT INTO `cities` VALUES ('1207', '222', 'GB', 'Carmarthenshire', null, null);
INSERT INTO `cities` VALUES ('1208', '222', 'GB', 'Conwy', null, null);
INSERT INTO `cities` VALUES ('1209', '222', 'GB', 'Denbighshire', null, null);
INSERT INTO `cities` VALUES ('1210', '222', 'GB', 'Flintshire', null, null);
INSERT INTO `cities` VALUES ('1211', '222', 'GB', 'Gwynedd', null, null);
INSERT INTO `cities` VALUES ('1212', '222', 'GB', 'Merthyr Tydfil', null, null);
INSERT INTO `cities` VALUES ('1213', '222', 'GB', 'Monmouthshire', null, null);
INSERT INTO `cities` VALUES ('1214', '222', 'GB', 'Neath Port Talbot', null, null);
INSERT INTO `cities` VALUES ('1215', '222', 'GB', 'Newport', null, null);
INSERT INTO `cities` VALUES ('1216', '222', 'GB', 'Pembrokeshire', null, null);
INSERT INTO `cities` VALUES ('1217', '222', 'GB', 'Powys', null, null);
INSERT INTO `cities` VALUES ('1218', '222', 'GB', 'Rhondda Cynon Taff', null, null);
INSERT INTO `cities` VALUES ('1219', '222', 'GB', 'Swansea', null, null);
INSERT INTO `cities` VALUES ('1220', '222', 'GB', 'Torfaen', null, null);
INSERT INTO `cities` VALUES ('1221', '222', 'GB', 'Vale of Glamorgan, The', null, null);
INSERT INTO `cities` VALUES ('1222', '222', 'GB', 'Wrexham', null, null);
INSERT INTO `cities` VALUES ('1223', '222', 'GB', 'Bedfordshire', null, null);
INSERT INTO `cities` VALUES ('1224', '222', 'GB', 'Central Bedfordshire', null, null);
INSERT INTO `cities` VALUES ('1225', '222', 'GB', 'Cheshire East', null, null);
INSERT INTO `cities` VALUES ('1226', '222', 'GB', 'Cheshire West and Chester', null, null);
INSERT INTO `cities` VALUES ('1227', '222', 'GB', 'Isles of Scilly', null, null);
INSERT INTO `cities` VALUES ('1228', '86', 'GD', 'Saint Andrew', null, null);
INSERT INTO `cities` VALUES ('1229', '86', 'GD', 'Saint David', null, null);
INSERT INTO `cities` VALUES ('1230', '86', 'GD', 'Saint George', null, null);
INSERT INTO `cities` VALUES ('1231', '86', 'GD', 'Saint John', null, null);
INSERT INTO `cities` VALUES ('1232', '86', 'GD', 'Saint Mark', null, null);
INSERT INTO `cities` VALUES ('1233', '86', 'GD', 'Saint Patrick', null, null);
INSERT INTO `cities` VALUES ('1234', '80', 'GE', 'Abashis Raioni', null, null);
INSERT INTO `cities` VALUES ('1235', '80', 'GE', 'Abkhazia', null, null);
INSERT INTO `cities` VALUES ('1236', '80', 'GE', 'Adigenis Raioni', null, null);
INSERT INTO `cities` VALUES ('1237', '80', 'GE', 'Ajaria', null, null);
INSERT INTO `cities` VALUES ('1238', '80', 'GE', 'Akhalgoris Raioni', null, null);
INSERT INTO `cities` VALUES ('1239', '80', 'GE', 'Akhalk\'alak\'is Raioni', null, null);
INSERT INTO `cities` VALUES ('1240', '80', 'GE', 'Akhalts\'ikhis Raioni', null, null);
INSERT INTO `cities` VALUES ('1241', '80', 'GE', 'Akhmetis Raioni', null, null);
INSERT INTO `cities` VALUES ('1242', '80', 'GE', 'Ambrolauris Raioni', null, null);
INSERT INTO `cities` VALUES ('1243', '80', 'GE', 'Aspindzis Raioni', null, null);
INSERT INTO `cities` VALUES ('1244', '80', 'GE', 'Baghdat\'is Raioni', null, null);
INSERT INTO `cities` VALUES ('1245', '80', 'GE', 'Bolnisis Raioni', null, null);
INSERT INTO `cities` VALUES ('1246', '80', 'GE', 'Borjomis Raioni', null, null);
INSERT INTO `cities` VALUES ('1247', '80', 'GE', 'Chiat\'ura', null, null);
INSERT INTO `cities` VALUES ('1248', '80', 'GE', 'Ch\'khorotsqus Raioni', null, null);
INSERT INTO `cities` VALUES ('1249', '80', 'GE', 'Ch\'okhatauris Raioni', null, null);
INSERT INTO `cities` VALUES ('1250', '80', 'GE', 'Dedop\'listsqaros Raioni', null, null);
INSERT INTO `cities` VALUES ('1251', '80', 'GE', 'Dmanisis Raioni', null, null);
INSERT INTO `cities` VALUES ('1252', '80', 'GE', 'Dushet\'is Raioni', null, null);
INSERT INTO `cities` VALUES ('1253', '80', 'GE', 'Gardabanis Raioni', null, null);
INSERT INTO `cities` VALUES ('1254', '80', 'GE', 'Gori', null, null);
INSERT INTO `cities` VALUES ('1255', '80', 'GE', 'Goris Raioni', null, null);
INSERT INTO `cities` VALUES ('1256', '80', 'GE', 'Gurjaanis Raioni', null, null);
INSERT INTO `cities` VALUES ('1257', '80', 'GE', 'Javis Raioni', null, null);
INSERT INTO `cities` VALUES ('1258', '80', 'GE', 'K\'arelis Raioni', null, null);
INSERT INTO `cities` VALUES ('1259', '80', 'GE', 'Kaspis Raioni', null, null);
INSERT INTO `cities` VALUES ('1260', '80', 'GE', 'Kharagaulis Raioni', null, null);
INSERT INTO `cities` VALUES ('1261', '80', 'GE', 'Khashuris Raioni', null, null);
INSERT INTO `cities` VALUES ('1262', '80', 'GE', 'Khobis Raioni', null, null);
INSERT INTO `cities` VALUES ('1263', '80', 'GE', 'Khonis Raioni', null, null);
INSERT INTO `cities` VALUES ('1264', '80', 'GE', 'K\'ut\'aisi', null, null);
INSERT INTO `cities` VALUES ('1265', '80', 'GE', 'Lagodekhis Raioni', null, null);
INSERT INTO `cities` VALUES ('1266', '80', 'GE', 'Lanch\'khut\'is Raioni', null, null);
INSERT INTO `cities` VALUES ('1267', '80', 'GE', 'Lentekhis Raioni', null, null);
INSERT INTO `cities` VALUES ('1268', '80', 'GE', 'Marneulis Raioni', null, null);
INSERT INTO `cities` VALUES ('1269', '80', 'GE', 'Martvilis Raioni', null, null);
INSERT INTO `cities` VALUES ('1270', '80', 'GE', 'Mestiis Raioni', null, null);
INSERT INTO `cities` VALUES ('1271', '80', 'GE', 'Mts\'khet\'is Raioni', null, null);
INSERT INTO `cities` VALUES ('1272', '80', 'GE', 'Ninotsmindis Raioni', null, null);
INSERT INTO `cities` VALUES ('1273', '80', 'GE', 'Onis Raioni', null, null);
INSERT INTO `cities` VALUES ('1274', '80', 'GE', 'Ozurget\'is Raioni', null, null);
INSERT INTO `cities` VALUES ('1275', '80', 'GE', 'P\'ot\'i', null, null);
INSERT INTO `cities` VALUES ('1276', '80', 'GE', 'Qazbegis Raioni', null, null);
INSERT INTO `cities` VALUES ('1277', '80', 'GE', 'Qvarlis Raioni', null, null);
INSERT INTO `cities` VALUES ('1278', '80', 'GE', 'Rust\'avi', null, null);
INSERT INTO `cities` VALUES ('1279', '80', 'GE', 'Sach\'kheris Raioni', null, null);
INSERT INTO `cities` VALUES ('1280', '80', 'GE', 'Sagarejos Raioni', null, null);
INSERT INTO `cities` VALUES ('1281', '80', 'GE', 'Samtrediis Raioni', null, null);
INSERT INTO `cities` VALUES ('1282', '80', 'GE', 'Senakis Raioni', null, null);
INSERT INTO `cities` VALUES ('1283', '80', 'GE', 'Sighnaghis Raioni', null, null);
INSERT INTO `cities` VALUES ('1284', '80', 'GE', 'T\'bilisi', null, null);
INSERT INTO `cities` VALUES ('1285', '80', 'GE', 'T\'elavis Raioni', null, null);
INSERT INTO `cities` VALUES ('1286', '80', 'GE', 'T\'erjolis Raioni', null, null);
INSERT INTO `cities` VALUES ('1287', '80', 'GE', 'T\'et\'ritsqaros Raioni', null, null);
INSERT INTO `cities` VALUES ('1288', '80', 'GE', 'T\'ianet\'is Raioni', null, null);
INSERT INTO `cities` VALUES ('1289', '80', 'GE', 'Tqibuli', null, null);
INSERT INTO `cities` VALUES ('1290', '80', 'GE', 'Ts\'ageris Raioni', null, null);
INSERT INTO `cities` VALUES ('1291', '80', 'GE', 'Tsalenjikhis Raioni', null, null);
INSERT INTO `cities` VALUES ('1292', '80', 'GE', 'Tsalkis Raioni', null, null);
INSERT INTO `cities` VALUES ('1293', '80', 'GE', 'Tsqaltubo', null, null);
INSERT INTO `cities` VALUES ('1294', '80', 'GE', 'Vanis Raioni', null, null);
INSERT INTO `cities` VALUES ('1295', '80', 'GE', 'Zestap\'onis Raioni', null, null);
INSERT INTO `cities` VALUES ('1296', '80', 'GE', 'Zugdidi', null, null);
INSERT INTO `cities` VALUES ('1297', '80', 'GE', 'Zugdidis Raioni', null, null);
INSERT INTO `cities` VALUES ('1298', '82', 'GH', 'Greater Accra', null, null);
INSERT INTO `cities` VALUES ('1299', '82', 'GH', 'Ashanti', null, null);
INSERT INTO `cities` VALUES ('1300', '82', 'GH', 'Brong-Ahafo', null, null);
INSERT INTO `cities` VALUES ('1301', '82', 'GH', 'Central', null, null);
INSERT INTO `cities` VALUES ('1302', '82', 'GH', 'Eastern', null, null);
INSERT INTO `cities` VALUES ('1303', '82', 'GH', 'Northern', null, null);
INSERT INTO `cities` VALUES ('1304', '82', 'GH', 'Volta', null, null);
INSERT INTO `cities` VALUES ('1305', '82', 'GH', 'Western', null, null);
INSERT INTO `cities` VALUES ('1306', '82', 'GH', 'Upper East', null, null);
INSERT INTO `cities` VALUES ('1307', '82', 'GH', 'Upper West', null, null);
INSERT INTO `cities` VALUES ('1308', '85', 'GL', 'Nordgronland', null, null);
INSERT INTO `cities` VALUES ('1309', '85', 'GL', 'Ostgronland', null, null);
INSERT INTO `cities` VALUES ('1310', '85', 'GL', 'Vestgronland', null, null);
INSERT INTO `cities` VALUES ('1311', '79', 'GM', 'Banjul', null, null);
INSERT INTO `cities` VALUES ('1312', '79', 'GM', 'Lower River', null, null);
INSERT INTO `cities` VALUES ('1313', '79', 'GM', 'Central River', null, null);
INSERT INTO `cities` VALUES ('1314', '79', 'GM', 'Upper River', null, null);
INSERT INTO `cities` VALUES ('1315', '79', 'GM', 'Western', null, null);
INSERT INTO `cities` VALUES ('1316', '79', 'GM', 'North Bank', null, null);
INSERT INTO `cities` VALUES ('1317', '90', 'GN', 'Beyla', null, null);
INSERT INTO `cities` VALUES ('1318', '90', 'GN', 'Boffa', null, null);
INSERT INTO `cities` VALUES ('1319', '90', 'GN', 'Boke', null, null);
INSERT INTO `cities` VALUES ('1320', '90', 'GN', 'Conakry', null, null);
INSERT INTO `cities` VALUES ('1321', '90', 'GN', 'Dabola', null, null);
INSERT INTO `cities` VALUES ('1322', '90', 'GN', 'Dalaba', null, null);
INSERT INTO `cities` VALUES ('1323', '90', 'GN', 'Dinguiraye', null, null);
INSERT INTO `cities` VALUES ('1324', '90', 'GN', 'Faranah', null, null);
INSERT INTO `cities` VALUES ('1325', '90', 'GN', 'Forecariah', null, null);
INSERT INTO `cities` VALUES ('1326', '90', 'GN', 'Fria', null, null);
INSERT INTO `cities` VALUES ('1327', '90', 'GN', 'Gaoual', null, null);
INSERT INTO `cities` VALUES ('1328', '90', 'GN', 'Gueckedou', null, null);
INSERT INTO `cities` VALUES ('1329', '90', 'GN', 'Kerouane', null, null);
INSERT INTO `cities` VALUES ('1330', '90', 'GN', 'Kindia', null, null);
INSERT INTO `cities` VALUES ('1331', '90', 'GN', 'Kissidougou', null, null);
INSERT INTO `cities` VALUES ('1332', '90', 'GN', 'Koundara', null, null);
INSERT INTO `cities` VALUES ('1333', '90', 'GN', 'Kouroussa', null, null);
INSERT INTO `cities` VALUES ('1334', '90', 'GN', 'Macenta', null, null);
INSERT INTO `cities` VALUES ('1335', '90', 'GN', 'Mali', null, null);
INSERT INTO `cities` VALUES ('1336', '90', 'GN', 'Mamou', null, null);
INSERT INTO `cities` VALUES ('1337', '90', 'GN', 'Pita', null, null);
INSERT INTO `cities` VALUES ('1338', '90', 'GN', 'Telimele', null, null);
INSERT INTO `cities` VALUES ('1339', '90', 'GN', 'Tougue', null, null);
INSERT INTO `cities` VALUES ('1340', '90', 'GN', 'Yomou', null, null);
INSERT INTO `cities` VALUES ('1341', '90', 'GN', 'Coyah', null, null);
INSERT INTO `cities` VALUES ('1342', '90', 'GN', 'Dubreka', null, null);
INSERT INTO `cities` VALUES ('1343', '90', 'GN', 'Kankan', null, null);
INSERT INTO `cities` VALUES ('1344', '90', 'GN', 'Koubia', null, null);
INSERT INTO `cities` VALUES ('1345', '90', 'GN', 'Labe', null, null);
INSERT INTO `cities` VALUES ('1346', '90', 'GN', 'Lelouma', null, null);
INSERT INTO `cities` VALUES ('1347', '90', 'GN', 'Lola', null, null);
INSERT INTO `cities` VALUES ('1348', '90', 'GN', 'Mandiana', null, null);
INSERT INTO `cities` VALUES ('1349', '90', 'GN', 'Nzerekore', null, null);
INSERT INTO `cities` VALUES ('1350', '90', 'GN', 'Siguiri', null, null);
INSERT INTO `cities` VALUES ('1351', '65', 'GQ', 'Annobon', null, null);
INSERT INTO `cities` VALUES ('1352', '65', 'GQ', 'Bioko Norte', null, null);
INSERT INTO `cities` VALUES ('1353', '65', 'GQ', 'Bioko Sur', null, null);
INSERT INTO `cities` VALUES ('1354', '65', 'GQ', 'Centro Sur', null, null);
INSERT INTO `cities` VALUES ('1355', '65', 'GQ', 'Kie-Ntem', null, null);
INSERT INTO `cities` VALUES ('1356', '65', 'GQ', 'Litoral', null, null);
INSERT INTO `cities` VALUES ('1357', '65', 'GQ', 'Wele-Nzas', null, null);
INSERT INTO `cities` VALUES ('1358', '84', 'GR', 'Evros', null, null);
INSERT INTO `cities` VALUES ('1359', '84', 'GR', 'Rodhopi', null, null);
INSERT INTO `cities` VALUES ('1360', '84', 'GR', 'Xanthi', null, null);
INSERT INTO `cities` VALUES ('1361', '84', 'GR', 'Drama', null, null);
INSERT INTO `cities` VALUES ('1362', '84', 'GR', 'Serrai', null, null);
INSERT INTO `cities` VALUES ('1363', '84', 'GR', 'Kilkis', null, null);
INSERT INTO `cities` VALUES ('1364', '84', 'GR', 'Pella', null, null);
INSERT INTO `cities` VALUES ('1365', '84', 'GR', 'Florina', null, null);
INSERT INTO `cities` VALUES ('1366', '84', 'GR', 'Kastoria', null, null);
INSERT INTO `cities` VALUES ('1367', '84', 'GR', 'Grevena', null, null);
INSERT INTO `cities` VALUES ('1368', '84', 'GR', 'Kozani', null, null);
INSERT INTO `cities` VALUES ('1369', '84', 'GR', 'Imathia', null, null);
INSERT INTO `cities` VALUES ('1370', '84', 'GR', 'Thessaloniki', null, null);
INSERT INTO `cities` VALUES ('1371', '84', 'GR', 'Kavala', null, null);
INSERT INTO `cities` VALUES ('1372', '84', 'GR', 'Khalkidhiki', null, null);
INSERT INTO `cities` VALUES ('1373', '84', 'GR', 'Pieria', null, null);
INSERT INTO `cities` VALUES ('1374', '84', 'GR', 'Ioannina', null, null);
INSERT INTO `cities` VALUES ('1375', '84', 'GR', 'Thesprotia', null, null);
INSERT INTO `cities` VALUES ('1376', '84', 'GR', 'Preveza', null, null);
INSERT INTO `cities` VALUES ('1377', '84', 'GR', 'Arta', null, null);
INSERT INTO `cities` VALUES ('1378', '84', 'GR', 'Larisa', null, null);
INSERT INTO `cities` VALUES ('1379', '84', 'GR', 'Trikala', null, null);
INSERT INTO `cities` VALUES ('1380', '84', 'GR', 'Kardhitsa', null, null);
INSERT INTO `cities` VALUES ('1381', '84', 'GR', 'Magnisia', null, null);
INSERT INTO `cities` VALUES ('1382', '84', 'GR', 'Kerkira', null, null);
INSERT INTO `cities` VALUES ('1383', '84', 'GR', 'Levkas', null, null);
INSERT INTO `cities` VALUES ('1384', '84', 'GR', 'Kefallinia', null, null);
INSERT INTO `cities` VALUES ('1385', '84', 'GR', 'Zakinthos', null, null);
INSERT INTO `cities` VALUES ('1386', '84', 'GR', 'Fthiotis', null, null);
INSERT INTO `cities` VALUES ('1387', '84', 'GR', 'Evritania', null, null);
INSERT INTO `cities` VALUES ('1388', '84', 'GR', 'Aitolia kai Akarnania', null, null);
INSERT INTO `cities` VALUES ('1389', '84', 'GR', 'Fokis', null, null);
INSERT INTO `cities` VALUES ('1390', '84', 'GR', 'Voiotia', null, null);
INSERT INTO `cities` VALUES ('1391', '84', 'GR', 'Evvoia', null, null);
INSERT INTO `cities` VALUES ('1392', '84', 'GR', 'Attiki', null, null);
INSERT INTO `cities` VALUES ('1393', '84', 'GR', 'Argolis', null, null);
INSERT INTO `cities` VALUES ('1394', '84', 'GR', 'Korinthia', null, null);
INSERT INTO `cities` VALUES ('1395', '84', 'GR', 'Akhaia', null, null);
INSERT INTO `cities` VALUES ('1396', '84', 'GR', 'Ilia', null, null);
INSERT INTO `cities` VALUES ('1397', '84', 'GR', 'Messinia', null, null);
INSERT INTO `cities` VALUES ('1398', '84', 'GR', 'Arkadhia', null, null);
INSERT INTO `cities` VALUES ('1399', '84', 'GR', 'Lakonia', null, null);
INSERT INTO `cities` VALUES ('1400', '84', 'GR', 'Khania', null, null);
INSERT INTO `cities` VALUES ('1401', '84', 'GR', 'Rethimni', null, null);
INSERT INTO `cities` VALUES ('1402', '84', 'GR', 'Iraklion', null, null);
INSERT INTO `cities` VALUES ('1403', '84', 'GR', 'Lasithi', null, null);
INSERT INTO `cities` VALUES ('1404', '84', 'GR', 'Dhodhekanisos', null, null);
INSERT INTO `cities` VALUES ('1405', '84', 'GR', 'Samos', null, null);
INSERT INTO `cities` VALUES ('1406', '84', 'GR', 'Kikladhes', null, null);
INSERT INTO `cities` VALUES ('1407', '84', 'GR', 'Khios', null, null);
INSERT INTO `cities` VALUES ('1408', '84', 'GR', 'Lesvos', null, null);
INSERT INTO `cities` VALUES ('1409', '89', 'GT', 'Alta Verapaz', null, null);
INSERT INTO `cities` VALUES ('1410', '89', 'GT', 'Baja Verapaz', null, null);
INSERT INTO `cities` VALUES ('1411', '89', 'GT', 'Chimaltenango', null, null);
INSERT INTO `cities` VALUES ('1412', '89', 'GT', 'Chiquimula', null, null);
INSERT INTO `cities` VALUES ('1413', '89', 'GT', 'El Progreso', null, null);
INSERT INTO `cities` VALUES ('1414', '89', 'GT', 'Escuintla', null, null);
INSERT INTO `cities` VALUES ('1415', '89', 'GT', 'Guatemala', null, null);
INSERT INTO `cities` VALUES ('1416', '89', 'GT', 'Huehuetenango', null, null);
INSERT INTO `cities` VALUES ('1417', '89', 'GT', 'Izabal', null, null);
INSERT INTO `cities` VALUES ('1418', '89', 'GT', 'Jalapa', null, null);
INSERT INTO `cities` VALUES ('1419', '89', 'GT', 'Jutiapa', null, null);
INSERT INTO `cities` VALUES ('1420', '89', 'GT', 'Peten', null, null);
INSERT INTO `cities` VALUES ('1421', '89', 'GT', 'Quetzaltenango', null, null);
INSERT INTO `cities` VALUES ('1422', '89', 'GT', 'Quiche', null, null);
INSERT INTO `cities` VALUES ('1423', '89', 'GT', 'Retalhuleu', null, null);
INSERT INTO `cities` VALUES ('1424', '89', 'GT', 'Sacatepequez', null, null);
INSERT INTO `cities` VALUES ('1425', '89', 'GT', 'San Marcos', null, null);
INSERT INTO `cities` VALUES ('1426', '89', 'GT', 'Santa Rosa', null, null);
INSERT INTO `cities` VALUES ('1427', '89', 'GT', 'Solola', null, null);
INSERT INTO `cities` VALUES ('1428', '89', 'GT', 'Suchitepequez', null, null);
INSERT INTO `cities` VALUES ('1429', '89', 'GT', 'Totonicapan', null, null);
INSERT INTO `cities` VALUES ('1430', '89', 'GT', 'Zacapa', null, null);
INSERT INTO `cities` VALUES ('1431', '91', 'GW', 'Bafata', null, null);
INSERT INTO `cities` VALUES ('1432', '91', 'GW', 'Quinara', null, null);
INSERT INTO `cities` VALUES ('1433', '91', 'GW', 'Oio', null, null);
INSERT INTO `cities` VALUES ('1434', '91', 'GW', 'Bolama', null, null);
INSERT INTO `cities` VALUES ('1435', '91', 'GW', 'Cacheu', null, null);
INSERT INTO `cities` VALUES ('1436', '91', 'GW', 'Tombali', null, null);
INSERT INTO `cities` VALUES ('1437', '91', 'GW', 'Gabu', null, null);
INSERT INTO `cities` VALUES ('1438', '91', 'GW', 'Bissau', null, null);
INSERT INTO `cities` VALUES ('1439', '91', 'GW', 'Biombo', null, null);
INSERT INTO `cities` VALUES ('1440', '92', 'GY', 'Barima-Waini', null, null);
INSERT INTO `cities` VALUES ('1441', '92', 'GY', 'Cuyuni-Mazaruni', null, null);
INSERT INTO `cities` VALUES ('1442', '92', 'GY', 'Demerara-Mahaica', null, null);
INSERT INTO `cities` VALUES ('1443', '92', 'GY', 'East Berbice-Corentyne', null, null);
INSERT INTO `cities` VALUES ('1444', '92', 'GY', 'Essequibo Islands-West Demerara', null, null);
INSERT INTO `cities` VALUES ('1445', '92', 'GY', 'Mahaica-Berbice', null, null);
INSERT INTO `cities` VALUES ('1446', '92', 'GY', 'Pomeroon-Supenaam', null, null);
INSERT INTO `cities` VALUES ('1447', '92', 'GY', 'Potaro-Siparuni', null, null);
INSERT INTO `cities` VALUES ('1448', '92', 'GY', 'Upper Demerara-Berbice', null, null);
INSERT INTO `cities` VALUES ('1449', '92', 'GY', 'Upper Takutu-Upper Essequibo', null, null);
INSERT INTO `cities` VALUES ('1450', '95', 'HN', 'Atlantida', null, null);
INSERT INTO `cities` VALUES ('1451', '95', 'HN', 'Choluteca', null, null);
INSERT INTO `cities` VALUES ('1452', '95', 'HN', 'Colon', null, null);
INSERT INTO `cities` VALUES ('1453', '95', 'HN', 'Comayagua', null, null);
INSERT INTO `cities` VALUES ('1454', '95', 'HN', 'Copan', null, null);
INSERT INTO `cities` VALUES ('1455', '95', 'HN', 'Cortes', null, null);
INSERT INTO `cities` VALUES ('1456', '95', 'HN', 'El Paraiso', null, null);
INSERT INTO `cities` VALUES ('1457', '95', 'HN', 'Francisco Morazan', null, null);
INSERT INTO `cities` VALUES ('1458', '95', 'HN', 'Gracias a Dios', null, null);
INSERT INTO `cities` VALUES ('1459', '95', 'HN', 'Intibuca', null, null);
INSERT INTO `cities` VALUES ('1460', '95', 'HN', 'Islas de la Bahia', null, null);
INSERT INTO `cities` VALUES ('1461', '95', 'HN', 'La Paz', null, null);
INSERT INTO `cities` VALUES ('1462', '95', 'HN', 'Lempira', null, null);
INSERT INTO `cities` VALUES ('1463', '95', 'HN', 'Ocotepeque', null, null);
INSERT INTO `cities` VALUES ('1464', '95', 'HN', 'Olancho', null, null);
INSERT INTO `cities` VALUES ('1465', '95', 'HN', 'Santa Barbara', null, null);
INSERT INTO `cities` VALUES ('1466', '95', 'HN', 'Valle', null, null);
INSERT INTO `cities` VALUES ('1467', '95', 'HN', 'Yoro', null, null);
INSERT INTO `cities` VALUES ('1468', '53', 'HR', 'Bjelovarsko-Bilogorska', null, null);
INSERT INTO `cities` VALUES ('1469', '53', 'HR', 'Brodsko-Posavska', null, null);
INSERT INTO `cities` VALUES ('1470', '53', 'HR', 'Dubrovacko-Neretvanska', null, null);
INSERT INTO `cities` VALUES ('1471', '53', 'HR', 'Istarska', null, null);
INSERT INTO `cities` VALUES ('1472', '53', 'HR', 'Karlovacka', null, null);
INSERT INTO `cities` VALUES ('1473', '53', 'HR', 'Koprivnicko-Krizevacka', null, null);
INSERT INTO `cities` VALUES ('1474', '53', 'HR', 'Krapinsko-Zagorska', null, null);
INSERT INTO `cities` VALUES ('1475', '53', 'HR', 'Licko-Senjska', null, null);
INSERT INTO `cities` VALUES ('1476', '53', 'HR', 'Medimurska', null, null);
INSERT INTO `cities` VALUES ('1477', '53', 'HR', 'Osjecko-Baranjska', null, null);
INSERT INTO `cities` VALUES ('1478', '53', 'HR', 'Pozesko-Slavonska', null, null);
INSERT INTO `cities` VALUES ('1479', '53', 'HR', 'Primorsko-Goranska', null, null);
INSERT INTO `cities` VALUES ('1480', '53', 'HR', 'Sibensko-Kninska', null, null);
INSERT INTO `cities` VALUES ('1481', '53', 'HR', 'Sisacko-Moslavacka', null, null);
INSERT INTO `cities` VALUES ('1482', '53', 'HR', 'Splitsko-Dalmatinska', null, null);
INSERT INTO `cities` VALUES ('1483', '53', 'HR', 'Varazdinska', null, null);
INSERT INTO `cities` VALUES ('1484', '53', 'HR', 'Viroviticko-Podravska', null, null);
INSERT INTO `cities` VALUES ('1485', '53', 'HR', 'Vukovarsko-Srijemska', null, null);
INSERT INTO `cities` VALUES ('1486', '53', 'HR', 'Zadarska', null, null);
INSERT INTO `cities` VALUES ('1487', '53', 'HR', 'Zagrebacka', null, null);
INSERT INTO `cities` VALUES ('1488', '53', 'HR', 'Grad Zagreb', null, null);
INSERT INTO `cities` VALUES ('1489', '93', 'HT', 'Nord-Ouest', null, null);
INSERT INTO `cities` VALUES ('1490', '93', 'HT', 'Artibonite', null, null);
INSERT INTO `cities` VALUES ('1491', '93', 'HT', 'Centre', null, null);
INSERT INTO `cities` VALUES ('1492', '93', 'HT', 'Nord', null, null);
INSERT INTO `cities` VALUES ('1493', '93', 'HT', 'Nord-Est', null, null);
INSERT INTO `cities` VALUES ('1494', '93', 'HT', 'Ouest', null, null);
INSERT INTO `cities` VALUES ('1495', '93', 'HT', 'Sud', null, null);
INSERT INTO `cities` VALUES ('1496', '93', 'HT', 'Sud-Est', null, null);
INSERT INTO `cities` VALUES ('1497', '93', 'HT', 'Grand\' Anse', null, null);
INSERT INTO `cities` VALUES ('1498', '93', 'HT', 'Nippes', null, null);
INSERT INTO `cities` VALUES ('1499', '97', 'HU', 'Bacs-Kiskun', null, null);
INSERT INTO `cities` VALUES ('1500', '97', 'HU', 'Baranya', null, null);
INSERT INTO `cities` VALUES ('1501', '97', 'HU', 'Bekes', null, null);
INSERT INTO `cities` VALUES ('1502', '97', 'HU', 'Borsod-Abauj-Zemplen', null, null);
INSERT INTO `cities` VALUES ('1503', '97', 'HU', 'Budapest', null, null);
INSERT INTO `cities` VALUES ('1504', '97', 'HU', 'Csongrad', null, null);
INSERT INTO `cities` VALUES ('1505', '97', 'HU', 'Debrecen', null, null);
INSERT INTO `cities` VALUES ('1506', '97', 'HU', 'Fejer', null, null);
INSERT INTO `cities` VALUES ('1507', '97', 'HU', 'Gyor-Moson-Sopron', null, null);
INSERT INTO `cities` VALUES ('1508', '97', 'HU', 'Hajdu-Bihar', null, null);
INSERT INTO `cities` VALUES ('1509', '97', 'HU', 'Heves', null, null);
INSERT INTO `cities` VALUES ('1510', '97', 'HU', 'Komarom-Esztergom', null, null);
INSERT INTO `cities` VALUES ('1511', '97', 'HU', 'Miskolc', null, null);
INSERT INTO `cities` VALUES ('1512', '97', 'HU', 'Nograd', null, null);
INSERT INTO `cities` VALUES ('1513', '97', 'HU', 'Pecs', null, null);
INSERT INTO `cities` VALUES ('1514', '97', 'HU', 'Pest', null, null);
INSERT INTO `cities` VALUES ('1515', '97', 'HU', 'Somogy', null, null);
INSERT INTO `cities` VALUES ('1516', '97', 'HU', 'Szabolcs-Szatmar-Bereg', null, null);
INSERT INTO `cities` VALUES ('1517', '97', 'HU', 'Szeged', null, null);
INSERT INTO `cities` VALUES ('1518', '97', 'HU', 'Jasz-Nagykun-Szolnok', null, null);
INSERT INTO `cities` VALUES ('1519', '97', 'HU', 'Tolna', null, null);
INSERT INTO `cities` VALUES ('1520', '97', 'HU', 'Vas', null, null);
INSERT INTO `cities` VALUES ('1521', '97', 'HU', 'Veszprem', null, null);
INSERT INTO `cities` VALUES ('1522', '97', 'HU', 'Zala', null, null);
INSERT INTO `cities` VALUES ('1523', '97', 'HU', 'Gyor', null, null);
INSERT INTO `cities` VALUES ('1524', '97', 'HU', 'Bekescsaba', null, null);
INSERT INTO `cities` VALUES ('1525', '97', 'HU', 'Dunaujvaros', null, null);
INSERT INTO `cities` VALUES ('1526', '97', 'HU', 'Eger', null, null);
INSERT INTO `cities` VALUES ('1527', '97', 'HU', 'Hodmezovasarhely', null, null);
INSERT INTO `cities` VALUES ('1528', '97', 'HU', 'Kaposvar', null, null);
INSERT INTO `cities` VALUES ('1529', '97', 'HU', 'Kecskemet', null, null);
INSERT INTO `cities` VALUES ('1530', '97', 'HU', 'Nagykanizsa', null, null);
INSERT INTO `cities` VALUES ('1531', '97', 'HU', 'Nyiregyhaza', null, null);
INSERT INTO `cities` VALUES ('1532', '97', 'HU', 'Sopron', null, null);
INSERT INTO `cities` VALUES ('1533', '97', 'HU', 'Szekesfehervar', null, null);
INSERT INTO `cities` VALUES ('1534', '97', 'HU', 'Szolnok', null, null);
INSERT INTO `cities` VALUES ('1535', '97', 'HU', 'Szombathely', null, null);
INSERT INTO `cities` VALUES ('1536', '97', 'HU', 'Tatabanya', null, null);
INSERT INTO `cities` VALUES ('1537', '97', 'HU', 'Veszprem', null, null);
INSERT INTO `cities` VALUES ('1538', '97', 'HU', 'Zalaegerszeg', null, null);
INSERT INTO `cities` VALUES ('1539', '97', 'HU', 'Salgotarjan', null, null);
INSERT INTO `cities` VALUES ('1540', '97', 'HU', 'Szekszard', null, null);
INSERT INTO `cities` VALUES ('1541', '97', 'HU', 'Erd', null, null);
INSERT INTO `cities` VALUES ('1542', '100', 'ID', 'Aceh', null, null);
INSERT INTO `cities` VALUES ('1543', '100', 'ID', 'Bali', null, null);
INSERT INTO `cities` VALUES ('1544', '100', 'ID', 'Bengkulu', null, null);
INSERT INTO `cities` VALUES ('1545', '100', 'ID', 'Jakarta Raya', null, null);
INSERT INTO `cities` VALUES ('1546', '100', 'ID', 'Jambi', null, null);
INSERT INTO `cities` VALUES ('1547', '100', 'ID', 'Jawa Tengah', null, null);
INSERT INTO `cities` VALUES ('1548', '100', 'ID', 'Jawa Timur', null, null);
INSERT INTO `cities` VALUES ('1549', '100', 'ID', 'Yogyakarta', null, null);
INSERT INTO `cities` VALUES ('1550', '100', 'ID', 'Kalimantan Barat', null, null);
INSERT INTO `cities` VALUES ('1551', '100', 'ID', 'Kalimantan Selatan', null, null);
INSERT INTO `cities` VALUES ('1552', '100', 'ID', 'Kalimantan Tengah', null, null);
INSERT INTO `cities` VALUES ('1553', '100', 'ID', 'Kalimantan Timur', null, null);
INSERT INTO `cities` VALUES ('1554', '100', 'ID', 'Lampung', null, null);
INSERT INTO `cities` VALUES ('1555', '100', 'ID', 'Nusa Tenggara Barat', null, null);
INSERT INTO `cities` VALUES ('1556', '100', 'ID', 'Nusa Tenggara Timur', null, null);
INSERT INTO `cities` VALUES ('1557', '100', 'ID', 'Sulawesi Tengah', null, null);
INSERT INTO `cities` VALUES ('1558', '100', 'ID', 'Sulawesi Tenggara', null, null);
INSERT INTO `cities` VALUES ('1559', '100', 'ID', 'Sumatera Barat', null, null);
INSERT INTO `cities` VALUES ('1560', '100', 'ID', 'Sumatera Utara', null, null);
INSERT INTO `cities` VALUES ('1561', '100', 'ID', 'Maluku', null, null);
INSERT INTO `cities` VALUES ('1562', '100', 'ID', 'Maluku Utara', null, null);
INSERT INTO `cities` VALUES ('1563', '100', 'ID', 'Jawa Barat', null, null);
INSERT INTO `cities` VALUES ('1564', '100', 'ID', 'Sulawesi Utara', null, null);
INSERT INTO `cities` VALUES ('1565', '100', 'ID', 'Sumatera Selatan', null, null);
INSERT INTO `cities` VALUES ('1566', '100', 'ID', 'Banten', null, null);
INSERT INTO `cities` VALUES ('1567', '100', 'ID', 'Gorontalo', null, null);
INSERT INTO `cities` VALUES ('1568', '100', 'ID', 'Kepulauan Bangka Belitung', null, null);
INSERT INTO `cities` VALUES ('1569', '100', 'ID', 'Papua', null, null);
INSERT INTO `cities` VALUES ('1570', '100', 'ID', 'Riau', null, null);
INSERT INTO `cities` VALUES ('1571', '100', 'ID', 'Sulawesi Selatan', null, null);
INSERT INTO `cities` VALUES ('1572', '100', 'ID', 'Irian Jaya Barat', null, null);
INSERT INTO `cities` VALUES ('1573', '100', 'ID', 'Kepulauan Riau', null, null);
INSERT INTO `cities` VALUES ('1574', '100', 'ID', 'Sulawesi Barat', null, null);
INSERT INTO `cities` VALUES ('1575', '103', 'IE', 'Carlow', null, null);
INSERT INTO `cities` VALUES ('1576', '103', 'IE', 'Cavan', null, null);
INSERT INTO `cities` VALUES ('1577', '103', 'IE', 'Clare', null, null);
INSERT INTO `cities` VALUES ('1578', '103', 'IE', 'Cork', null, null);
INSERT INTO `cities` VALUES ('1579', '103', 'IE', 'Donegal', null, null);
INSERT INTO `cities` VALUES ('1580', '103', 'IE', 'Dublin', null, null);
INSERT INTO `cities` VALUES ('1581', '103', 'IE', 'Galway', null, null);
INSERT INTO `cities` VALUES ('1582', '103', 'IE', 'Kerry', null, null);
INSERT INTO `cities` VALUES ('1583', '103', 'IE', 'Kildare', null, null);
INSERT INTO `cities` VALUES ('1584', '103', 'IE', 'Kilkenny', null, null);
INSERT INTO `cities` VALUES ('1585', '103', 'IE', 'Leitrim', null, null);
INSERT INTO `cities` VALUES ('1586', '103', 'IE', 'Laois', null, null);
INSERT INTO `cities` VALUES ('1587', '103', 'IE', 'Limerick', null, null);
INSERT INTO `cities` VALUES ('1588', '103', 'IE', 'Longford', null, null);
INSERT INTO `cities` VALUES ('1589', '103', 'IE', 'Louth', null, null);
INSERT INTO `cities` VALUES ('1590', '103', 'IE', 'Mayo', null, null);
INSERT INTO `cities` VALUES ('1591', '103', 'IE', 'Meath', null, null);
INSERT INTO `cities` VALUES ('1592', '103', 'IE', 'Monaghan', null, null);
INSERT INTO `cities` VALUES ('1593', '103', 'IE', 'Offaly', null, null);
INSERT INTO `cities` VALUES ('1594', '103', 'IE', 'Roscommon', null, null);
INSERT INTO `cities` VALUES ('1595', '103', 'IE', 'Sligo', null, null);
INSERT INTO `cities` VALUES ('1596', '103', 'IE', 'Tipperary', null, null);
INSERT INTO `cities` VALUES ('1597', '103', 'IE', 'Waterford', null, null);
INSERT INTO `cities` VALUES ('1598', '103', 'IE', 'Westmeath', null, null);
INSERT INTO `cities` VALUES ('1599', '103', 'IE', 'Wexford', null, null);
INSERT INTO `cities` VALUES ('1600', '103', 'IE', 'Wicklow', null, null);
INSERT INTO `cities` VALUES ('1601', '104', 'IL', 'HaDarom', null, null);
INSERT INTO `cities` VALUES ('1602', '104', 'IL', 'HaMerkaz', null, null);
INSERT INTO `cities` VALUES ('1603', '104', 'IL', 'HaZafon', null, null);
INSERT INTO `cities` VALUES ('1604', '104', 'IL', 'Hefa', null, null);
INSERT INTO `cities` VALUES ('1605', '104', 'IL', 'Tel Aviv', null, null);
INSERT INTO `cities` VALUES ('1606', '104', 'IL', 'Yerushalayim', null, null);
INSERT INTO `cities` VALUES ('1607', '99', 'IN', 'Andaman and Nicobar Islands', null, null);
INSERT INTO `cities` VALUES ('1608', '99', 'IN', 'Andhra Pradesh', null, null);
INSERT INTO `cities` VALUES ('1609', '99', 'IN', 'Assam', null, null);
INSERT INTO `cities` VALUES ('1610', '99', 'IN', 'Chandigarh', null, null);
INSERT INTO `cities` VALUES ('1611', '99', 'IN', 'Dadra and Nagar Haveli', null, null);
INSERT INTO `cities` VALUES ('1612', '99', 'IN', 'Delhi', null, null);
INSERT INTO `cities` VALUES ('1613', '99', 'IN', 'Gujarat', null, null);
INSERT INTO `cities` VALUES ('1614', '99', 'IN', 'Haryana', null, null);
INSERT INTO `cities` VALUES ('1615', '99', 'IN', 'Himachal Pradesh', null, null);
INSERT INTO `cities` VALUES ('1616', '99', 'IN', 'Jammu and Kashmir', null, null);
INSERT INTO `cities` VALUES ('1617', '99', 'IN', 'Kerala', null, null);
INSERT INTO `cities` VALUES ('1618', '99', 'IN', 'Lakshadweep', null, null);
INSERT INTO `cities` VALUES ('1619', '99', 'IN', 'Maharashtra', null, null);
INSERT INTO `cities` VALUES ('1620', '99', 'IN', 'Manipur', null, null);
INSERT INTO `cities` VALUES ('1621', '99', 'IN', 'Meghalaya', null, null);
INSERT INTO `cities` VALUES ('1622', '99', 'IN', 'Karnataka', null, null);
INSERT INTO `cities` VALUES ('1623', '99', 'IN', 'Nagaland', null, null);
INSERT INTO `cities` VALUES ('1624', '99', 'IN', 'Orissa', null, null);
INSERT INTO `cities` VALUES ('1625', '99', 'IN', 'Puducherry', null, null);
INSERT INTO `cities` VALUES ('1626', '99', 'IN', 'Punjab', null, null);
INSERT INTO `cities` VALUES ('1627', '99', 'IN', 'Rajasthan', null, null);
INSERT INTO `cities` VALUES ('1628', '99', 'IN', 'Tamil Nadu', null, null);
INSERT INTO `cities` VALUES ('1629', '99', 'IN', 'Tripura', null, null);
INSERT INTO `cities` VALUES ('1630', '99', 'IN', 'West Bengal', null, null);
INSERT INTO `cities` VALUES ('1631', '99', 'IN', 'Sikkim', null, null);
INSERT INTO `cities` VALUES ('1632', '99', 'IN', 'Arunachal Pradesh', null, null);
INSERT INTO `cities` VALUES ('1633', '99', 'IN', 'Mizoram', null, null);
INSERT INTO `cities` VALUES ('1634', '99', 'IN', 'Daman and Diu', null, null);
INSERT INTO `cities` VALUES ('1635', '99', 'IN', 'Goa', null, null);
INSERT INTO `cities` VALUES ('1636', '99', 'IN', 'Bihar', null, null);
INSERT INTO `cities` VALUES ('1637', '99', 'IN', 'Madhya Pradesh', null, null);
INSERT INTO `cities` VALUES ('1638', '99', 'IN', 'Uttar Pradesh', null, null);
INSERT INTO `cities` VALUES ('1639', '99', 'IN', 'Chhattisgarh', null, null);
INSERT INTO `cities` VALUES ('1640', '99', 'IN', 'Jharkhand', null, null);
INSERT INTO `cities` VALUES ('1641', '99', 'IN', 'Uttarakhand', null, null);
INSERT INTO `cities` VALUES ('1642', '102', 'IQ', 'Al Anbar', null, null);
INSERT INTO `cities` VALUES ('1643', '102', 'IQ', 'Al Basrah', null, null);
INSERT INTO `cities` VALUES ('1644', '102', 'IQ', 'Al Muthanna', null, null);
INSERT INTO `cities` VALUES ('1645', '102', 'IQ', 'Al Qadisiyah', null, null);
INSERT INTO `cities` VALUES ('1646', '102', 'IQ', 'As Sulaymaniyah', null, null);
INSERT INTO `cities` VALUES ('1647', '102', 'IQ', 'Babil', null, null);
INSERT INTO `cities` VALUES ('1648', '102', 'IQ', 'Baghdad', null, null);
INSERT INTO `cities` VALUES ('1649', '102', 'IQ', 'Dahuk', null, null);
INSERT INTO `cities` VALUES ('1650', '102', 'IQ', 'Dhi Qar', null, null);
INSERT INTO `cities` VALUES ('1651', '102', 'IQ', 'Diyala', null, null);
INSERT INTO `cities` VALUES ('1652', '102', 'IQ', 'Arbil', null, null);
INSERT INTO `cities` VALUES ('1653', '102', 'IQ', 'Karbala\'', null, null);
INSERT INTO `cities` VALUES ('1654', '102', 'IQ', 'At Ta\'mim', null, null);
INSERT INTO `cities` VALUES ('1655', '102', 'IQ', 'Maysan', null, null);
INSERT INTO `cities` VALUES ('1656', '102', 'IQ', 'Ninawa', null, null);
INSERT INTO `cities` VALUES ('1657', '102', 'IQ', 'Wasit', null, null);
INSERT INTO `cities` VALUES ('1658', '102', 'IQ', 'An Najaf', null, null);
INSERT INTO `cities` VALUES ('1659', '102', 'IQ', 'Salah ad Din', null, null);
INSERT INTO `cities` VALUES ('1660', '101', 'IR', 'Azarbayjan-e Bakhtari', null, null);
INSERT INTO `cities` VALUES ('1661', '101', 'IR', 'Chahar Mahall va Bakhtiari', null, null);
INSERT INTO `cities` VALUES ('1662', '101', 'IR', 'Sistan va Baluchestan', null, null);
INSERT INTO `cities` VALUES ('1663', '101', 'IR', 'Kohkiluyeh va Buyer Ahmadi', null, null);
INSERT INTO `cities` VALUES ('1664', '101', 'IR', 'Fars', null, null);
INSERT INTO `cities` VALUES ('1665', '101', 'IR', 'Gilan', null, null);
INSERT INTO `cities` VALUES ('1666', '101', 'IR', 'Hamadan', null, null);
INSERT INTO `cities` VALUES ('1667', '101', 'IR', 'Ilam', null, null);
INSERT INTO `cities` VALUES ('1668', '101', 'IR', 'Hormozgan', null, null);
INSERT INTO `cities` VALUES ('1669', '101', 'IR', 'Kerman', null, null);
INSERT INTO `cities` VALUES ('1670', '101', 'IR', 'Bakhtaran', null, null);
INSERT INTO `cities` VALUES ('1671', '101', 'IR', 'Khuzestan', null, null);
INSERT INTO `cities` VALUES ('1672', '101', 'IR', 'Kordestan', null, null);
INSERT INTO `cities` VALUES ('1673', '101', 'IR', 'Mazandaran', null, null);
INSERT INTO `cities` VALUES ('1674', '101', 'IR', 'Semnan Province', null, null);
INSERT INTO `cities` VALUES ('1675', '101', 'IR', 'Markazi', null, null);
INSERT INTO `cities` VALUES ('1676', '101', 'IR', 'Zanjan', null, null);
INSERT INTO `cities` VALUES ('1677', '101', 'IR', 'Bushehr', null, null);
INSERT INTO `cities` VALUES ('1678', '101', 'IR', 'Lorestan', null, null);
INSERT INTO `cities` VALUES ('1679', '101', 'IR', 'Markazi', null, null);
INSERT INTO `cities` VALUES ('1680', '101', 'IR', 'Semnan', null, null);
INSERT INTO `cities` VALUES ('1681', '101', 'IR', 'Tehran', null, null);
INSERT INTO `cities` VALUES ('1682', '101', 'IR', 'Zanjan', null, null);
INSERT INTO `cities` VALUES ('1683', '101', 'IR', 'Esfahan', null, null);
INSERT INTO `cities` VALUES ('1684', '101', 'IR', 'Kerman', null, null);
INSERT INTO `cities` VALUES ('1685', '101', 'IR', 'Khorasan', null, null);
INSERT INTO `cities` VALUES ('1686', '101', 'IR', 'Yazd', null, null);
INSERT INTO `cities` VALUES ('1687', '101', 'IR', 'Ardabil', null, null);
INSERT INTO `cities` VALUES ('1688', '101', 'IR', 'East Azarbaijan', null, null);
INSERT INTO `cities` VALUES ('1689', '101', 'IR', 'Markazi', null, null);
INSERT INTO `cities` VALUES ('1690', '101', 'IR', 'Mazandaran', null, null);
INSERT INTO `cities` VALUES ('1691', '101', 'IR', 'Zanjan', null, null);
INSERT INTO `cities` VALUES ('1692', '101', 'IR', 'Golestan', null, null);
INSERT INTO `cities` VALUES ('1693', '101', 'IR', 'Qazvin', null, null);
INSERT INTO `cities` VALUES ('1694', '101', 'IR', 'Qom', null, null);
INSERT INTO `cities` VALUES ('1695', '101', 'IR', 'Yazd', null, null);
INSERT INTO `cities` VALUES ('1696', '101', 'IR', 'Khorasan-e Janubi', null, null);
INSERT INTO `cities` VALUES ('1697', '101', 'IR', 'Khorasan-e Razavi', null, null);
INSERT INTO `cities` VALUES ('1698', '101', 'IR', 'Khorasan-e Shemali', null, null);
INSERT INTO `cities` VALUES ('1699', '101', 'IR', 'Alborz', null, null);
INSERT INTO `cities` VALUES ('1700', '98', 'IS', 'Arnessysla', null, null);
INSERT INTO `cities` VALUES ('1701', '98', 'IS', 'Austur-Hunavatnssysla', null, null);
INSERT INTO `cities` VALUES ('1702', '98', 'IS', 'Austur-Skaftafellssysla', null, null);
INSERT INTO `cities` VALUES ('1703', '98', 'IS', 'Borgarfjardarsysla', null, null);
INSERT INTO `cities` VALUES ('1704', '98', 'IS', 'Eyjafjardarsysla', null, null);
INSERT INTO `cities` VALUES ('1705', '98', 'IS', 'Gullbringusysla', null, null);
INSERT INTO `cities` VALUES ('1706', '98', 'IS', 'Kjosarsysla', null, null);
INSERT INTO `cities` VALUES ('1707', '98', 'IS', 'Myrasysla', null, null);
INSERT INTO `cities` VALUES ('1708', '98', 'IS', 'Nordur-Mulasysla', null, null);
INSERT INTO `cities` VALUES ('1709', '98', 'IS', 'Nordur-Tingeyjarsysla', null, null);
INSERT INTO `cities` VALUES ('1710', '98', 'IS', 'Rangarvallasysla', null, null);
INSERT INTO `cities` VALUES ('1711', '98', 'IS', 'Skagafjardarsysla', null, null);
INSERT INTO `cities` VALUES ('1712', '98', 'IS', 'Snafellsnes- og Hnappadalssysla', null, null);
INSERT INTO `cities` VALUES ('1713', '98', 'IS', 'Strandasysla', null, null);
INSERT INTO `cities` VALUES ('1714', '98', 'IS', 'Sudur-Mulasysla', null, null);
INSERT INTO `cities` VALUES ('1715', '98', 'IS', 'Sudur-Tingeyjarsysla', null, null);
INSERT INTO `cities` VALUES ('1716', '98', 'IS', 'Vestur-Bardastrandarsysla', null, null);
INSERT INTO `cities` VALUES ('1717', '98', 'IS', 'Vestur-Hunavatnssysla', null, null);
INSERT INTO `cities` VALUES ('1718', '98', 'IS', 'Vestur-Isafjardarsysla', null, null);
INSERT INTO `cities` VALUES ('1719', '98', 'IS', 'Vestur-Skaftafellssysla', null, null);
INSERT INTO `cities` VALUES ('1720', '98', 'IS', 'Austurland', null, null);
INSERT INTO `cities` VALUES ('1721', '98', 'IS', 'Hofuoborgarsvaoio', null, null);
INSERT INTO `cities` VALUES ('1722', '98', 'IS', 'Norourland Eystra', null, null);
INSERT INTO `cities` VALUES ('1723', '98', 'IS', 'Norourland Vestra', null, null);
INSERT INTO `cities` VALUES ('1724', '98', 'IS', 'Suourland', null, null);
INSERT INTO `cities` VALUES ('1725', '98', 'IS', 'Suournes', null, null);
INSERT INTO `cities` VALUES ('1726', '98', 'IS', 'Vestfiroir', null, null);
INSERT INTO `cities` VALUES ('1727', '98', 'IS', 'Vesturland', null, null);
INSERT INTO `cities` VALUES ('1728', '105', 'IT', 'Abruzzi', null, null);
INSERT INTO `cities` VALUES ('1729', '105', 'IT', 'Basilicata', null, null);
INSERT INTO `cities` VALUES ('1730', '105', 'IT', 'Calabria', null, null);
INSERT INTO `cities` VALUES ('1731', '105', 'IT', 'Campania', null, null);
INSERT INTO `cities` VALUES ('1732', '105', 'IT', 'Emilia-Romagna', null, null);
INSERT INTO `cities` VALUES ('1733', '105', 'IT', 'Friuli-Venezia Giulia', null, null);
INSERT INTO `cities` VALUES ('1734', '105', 'IT', 'Lazio', null, null);
INSERT INTO `cities` VALUES ('1735', '105', 'IT', 'Liguria', null, null);
INSERT INTO `cities` VALUES ('1736', '105', 'IT', 'Lombardia', null, null);
INSERT INTO `cities` VALUES ('1737', '105', 'IT', 'Marche', null, null);
INSERT INTO `cities` VALUES ('1738', '105', 'IT', 'Molise', null, null);
INSERT INTO `cities` VALUES ('1739', '105', 'IT', 'Piemonte', null, null);
INSERT INTO `cities` VALUES ('1740', '105', 'IT', 'Puglia', null, null);
INSERT INTO `cities` VALUES ('1741', '105', 'IT', 'Sardegna', null, null);
INSERT INTO `cities` VALUES ('1742', '105', 'IT', 'Sicilia', null, null);
INSERT INTO `cities` VALUES ('1743', '105', 'IT', 'Toscana', null, null);
INSERT INTO `cities` VALUES ('1744', '105', 'IT', 'Trentino-Alto Adige', null, null);
INSERT INTO `cities` VALUES ('1745', '105', 'IT', 'Umbria', null, null);
INSERT INTO `cities` VALUES ('1746', '105', 'IT', 'Valle d\'Aosta', null, null);
INSERT INTO `cities` VALUES ('1747', '105', 'IT', 'Veneto', null, null);
INSERT INTO `cities` VALUES ('1748', '106', 'JM', 'Clarendon', null, null);
INSERT INTO `cities` VALUES ('1749', '106', 'JM', 'Hanover', null, null);
INSERT INTO `cities` VALUES ('1750', '106', 'JM', 'Manchester', null, null);
INSERT INTO `cities` VALUES ('1751', '106', 'JM', 'Portland', null, null);
INSERT INTO `cities` VALUES ('1752', '106', 'JM', 'Saint Andrew', null, null);
INSERT INTO `cities` VALUES ('1753', '106', 'JM', 'Saint Ann', null, null);
INSERT INTO `cities` VALUES ('1754', '106', 'JM', 'Saint Catherine', null, null);
INSERT INTO `cities` VALUES ('1755', '106', 'JM', 'Saint Elizabeth', null, null);
INSERT INTO `cities` VALUES ('1756', '106', 'JM', 'Saint James', null, null);
INSERT INTO `cities` VALUES ('1757', '106', 'JM', 'Saint Mary', null, null);
INSERT INTO `cities` VALUES ('1758', '106', 'JM', 'Saint Thomas', null, null);
INSERT INTO `cities` VALUES ('1759', '106', 'JM', 'Trelawny', null, null);
INSERT INTO `cities` VALUES ('1760', '106', 'JM', 'Westmoreland', null, null);
INSERT INTO `cities` VALUES ('1761', '106', 'JM', 'Kingston', null, null);
INSERT INTO `cities` VALUES ('1762', '108', 'JO', 'Al Balqa\'', null, null);
INSERT INTO `cities` VALUES ('1763', '108', 'JO', 'Al Karak', null, null);
INSERT INTO `cities` VALUES ('1764', '108', 'JO', 'At Tafilah', null, null);
INSERT INTO `cities` VALUES ('1765', '108', 'JO', 'Al Mafraq', null, null);
INSERT INTO `cities` VALUES ('1766', '108', 'JO', 'Amman', null, null);
INSERT INTO `cities` VALUES ('1767', '108', 'JO', 'Az Zaraqa', null, null);
INSERT INTO `cities` VALUES ('1768', '108', 'JO', 'Irbid', null, null);
INSERT INTO `cities` VALUES ('1769', '108', 'JO', 'Ma\'an', null, null);
INSERT INTO `cities` VALUES ('1770', '108', 'JO', 'Ajlun', null, null);
INSERT INTO `cities` VALUES ('1771', '108', 'JO', 'Al Aqabah', null, null);
INSERT INTO `cities` VALUES ('1772', '108', 'JO', 'Jarash', null, null);
INSERT INTO `cities` VALUES ('1773', '108', 'JO', 'Madaba', null, null);
INSERT INTO `cities` VALUES ('1774', '107', 'JP', 'Aichi', null, null);
INSERT INTO `cities` VALUES ('1775', '107', 'JP', 'Akita', null, null);
INSERT INTO `cities` VALUES ('1776', '107', 'JP', 'Aomori', null, null);
INSERT INTO `cities` VALUES ('1777', '107', 'JP', 'Chiba', null, null);
INSERT INTO `cities` VALUES ('1778', '107', 'JP', 'Ehime', null, null);
INSERT INTO `cities` VALUES ('1779', '107', 'JP', 'Fukui', null, null);
INSERT INTO `cities` VALUES ('1780', '107', 'JP', 'Fukuoka', null, null);
INSERT INTO `cities` VALUES ('1781', '107', 'JP', 'Fukushima', null, null);
INSERT INTO `cities` VALUES ('1782', '107', 'JP', 'Gifu', null, null);
INSERT INTO `cities` VALUES ('1783', '107', 'JP', 'Gumma', null, null);
INSERT INTO `cities` VALUES ('1784', '107', 'JP', 'Hiroshima', null, null);
INSERT INTO `cities` VALUES ('1785', '107', 'JP', 'Hokkaido', null, null);
INSERT INTO `cities` VALUES ('1786', '107', 'JP', 'Hyogo', null, null);
INSERT INTO `cities` VALUES ('1787', '107', 'JP', 'Ibaraki', null, null);
INSERT INTO `cities` VALUES ('1788', '107', 'JP', 'Ishikawa', null, null);
INSERT INTO `cities` VALUES ('1789', '107', 'JP', 'Iwate', null, null);
INSERT INTO `cities` VALUES ('1790', '107', 'JP', 'Kagawa', null, null);
INSERT INTO `cities` VALUES ('1791', '107', 'JP', 'Kagoshima', null, null);
INSERT INTO `cities` VALUES ('1792', '107', 'JP', 'Kanagawa', null, null);
INSERT INTO `cities` VALUES ('1793', '107', 'JP', 'Kochi', null, null);
INSERT INTO `cities` VALUES ('1794', '107', 'JP', 'Kumamoto', null, null);
INSERT INTO `cities` VALUES ('1795', '107', 'JP', 'Kyoto', null, null);
INSERT INTO `cities` VALUES ('1796', '107', 'JP', 'Mie', null, null);
INSERT INTO `cities` VALUES ('1797', '107', 'JP', 'Miyagi', null, null);
INSERT INTO `cities` VALUES ('1798', '107', 'JP', 'Miyazaki', null, null);
INSERT INTO `cities` VALUES ('1799', '107', 'JP', 'Nagano', null, null);
INSERT INTO `cities` VALUES ('1800', '107', 'JP', 'Nagasaki', null, null);
INSERT INTO `cities` VALUES ('1801', '107', 'JP', 'Nara', null, null);
INSERT INTO `cities` VALUES ('1802', '107', 'JP', 'Niigata', null, null);
INSERT INTO `cities` VALUES ('1803', '107', 'JP', 'Oita', null, null);
INSERT INTO `cities` VALUES ('1804', '107', 'JP', 'Okayama', null, null);
INSERT INTO `cities` VALUES ('1805', '107', 'JP', 'Osaka', null, null);
INSERT INTO `cities` VALUES ('1806', '107', 'JP', 'Saga', null, null);
INSERT INTO `cities` VALUES ('1807', '107', 'JP', 'Saitama', null, null);
INSERT INTO `cities` VALUES ('1808', '107', 'JP', 'Shiga', null, null);
INSERT INTO `cities` VALUES ('1809', '107', 'JP', 'Shimane', null, null);
INSERT INTO `cities` VALUES ('1810', '107', 'JP', 'Shizuoka', null, null);
INSERT INTO `cities` VALUES ('1811', '107', 'JP', 'Tochigi', null, null);
INSERT INTO `cities` VALUES ('1812', '107', 'JP', 'Tokushima', null, null);
INSERT INTO `cities` VALUES ('1813', '107', 'JP', 'Tokyo', null, null);
INSERT INTO `cities` VALUES ('1814', '107', 'JP', 'Tottori', null, null);
INSERT INTO `cities` VALUES ('1815', '107', 'JP', 'Toyama', null, null);
INSERT INTO `cities` VALUES ('1816', '107', 'JP', 'Wakayama', null, null);
INSERT INTO `cities` VALUES ('1817', '107', 'JP', 'Yamagata', null, null);
INSERT INTO `cities` VALUES ('1818', '107', 'JP', 'Yamaguchi', null, null);
INSERT INTO `cities` VALUES ('1819', '107', 'JP', 'Yamanashi', null, null);
INSERT INTO `cities` VALUES ('1820', '107', 'JP', 'Okinawa', null, null);
INSERT INTO `cities` VALUES ('1821', '110', 'KE', 'Central', null, null);
INSERT INTO `cities` VALUES ('1822', '110', 'KE', 'Coast', null, null);
INSERT INTO `cities` VALUES ('1823', '110', 'KE', 'Eastern', null, null);
INSERT INTO `cities` VALUES ('1824', '110', 'KE', 'Nairobi Area', null, null);
INSERT INTO `cities` VALUES ('1825', '110', 'KE', 'North-Eastern', null, null);
INSERT INTO `cities` VALUES ('1826', '110', 'KE', 'Nyanza', null, null);
INSERT INTO `cities` VALUES ('1827', '110', 'KE', 'Rift Valley', null, null);
INSERT INTO `cities` VALUES ('1828', '110', 'KE', 'Western', null, null);
INSERT INTO `cities` VALUES ('1829', '115', 'KG', 'Bishkek', null, null);
INSERT INTO `cities` VALUES ('1830', '115', 'KG', 'Chuy', null, null);
INSERT INTO `cities` VALUES ('1831', '115', 'KG', 'Jalal-Abad', null, null);
INSERT INTO `cities` VALUES ('1832', '115', 'KG', 'Naryn', null, null);
INSERT INTO `cities` VALUES ('1833', '115', 'KG', 'Osh', null, null);
INSERT INTO `cities` VALUES ('1834', '115', 'KG', 'Talas', null, null);
INSERT INTO `cities` VALUES ('1835', '115', 'KG', 'Ysyk-Kol', null, null);
INSERT INTO `cities` VALUES ('1836', '115', 'KG', 'Osh', null, null);
INSERT INTO `cities` VALUES ('1837', '115', 'KG', 'Batken', null, null);
INSERT INTO `cities` VALUES ('1838', '36', 'KH', 'Batdambang', null, null);
INSERT INTO `cities` VALUES ('1839', '36', 'KH', 'Kampong Cham', null, null);
INSERT INTO `cities` VALUES ('1840', '36', 'KH', 'Kampong Chhnang', null, null);
INSERT INTO `cities` VALUES ('1841', '36', 'KH', 'Kampong Speu', null, null);
INSERT INTO `cities` VALUES ('1842', '36', 'KH', 'Kampong Thum', null, null);
INSERT INTO `cities` VALUES ('1843', '36', 'KH', 'Kampot', null, null);
INSERT INTO `cities` VALUES ('1844', '36', 'KH', 'Kandal', null, null);
INSERT INTO `cities` VALUES ('1845', '36', 'KH', 'Koh Kong', null, null);
INSERT INTO `cities` VALUES ('1846', '36', 'KH', 'Kracheh', null, null);
INSERT INTO `cities` VALUES ('1847', '36', 'KH', 'Mondulkiri', null, null);
INSERT INTO `cities` VALUES ('1848', '36', 'KH', 'Phnum Penh', null, null);
INSERT INTO `cities` VALUES ('1849', '36', 'KH', 'Pursat', null, null);
INSERT INTO `cities` VALUES ('1850', '36', 'KH', 'Preah Vihear', null, null);
INSERT INTO `cities` VALUES ('1851', '36', 'KH', 'Prey Veng', null, null);
INSERT INTO `cities` VALUES ('1852', '36', 'KH', 'Ratanakiri Kiri', null, null);
INSERT INTO `cities` VALUES ('1853', '36', 'KH', 'Siem Reap', null, null);
INSERT INTO `cities` VALUES ('1854', '36', 'KH', 'Stung Treng', null, null);
INSERT INTO `cities` VALUES ('1855', '36', 'KH', 'Svay Rieng', null, null);
INSERT INTO `cities` VALUES ('1856', '36', 'KH', 'Takeo', null, null);
INSERT INTO `cities` VALUES ('1857', '36', 'KH', 'Banteay Meanchey', null, null);
INSERT INTO `cities` VALUES ('1858', '36', 'KH', 'Batdambang', null, null);
INSERT INTO `cities` VALUES ('1859', '36', 'KH', 'Pailin', null, null);
INSERT INTO `cities` VALUES ('1860', '111', 'KI', 'Gilbert Islands', null, null);
INSERT INTO `cities` VALUES ('1861', '111', 'KI', 'Line Islands', null, null);
INSERT INTO `cities` VALUES ('1862', '111', 'KI', 'Phoenix Islands', null, null);
INSERT INTO `cities` VALUES ('1863', '48', 'KM', 'Anjouan', null, null);
INSERT INTO `cities` VALUES ('1864', '48', 'KM', 'Grande Comore', null, null);
INSERT INTO `cities` VALUES ('1865', '48', 'KM', 'Moheli', null, null);
INSERT INTO `cities` VALUES ('1866', '178', 'KN', 'Christ Church Nichola Town', null, null);
INSERT INTO `cities` VALUES ('1867', '178', 'KN', 'Saint Anne Sandy Point', null, null);
INSERT INTO `cities` VALUES ('1868', '178', 'KN', 'Saint George Basseterre', null, null);
INSERT INTO `cities` VALUES ('1869', '178', 'KN', 'Saint George Gingerland', null, null);
INSERT INTO `cities` VALUES ('1870', '178', 'KN', 'Saint James Windward', null, null);
INSERT INTO `cities` VALUES ('1871', '178', 'KN', 'Saint John Capisterre', null, null);
INSERT INTO `cities` VALUES ('1872', '178', 'KN', 'Saint John Figtree', null, null);
INSERT INTO `cities` VALUES ('1873', '178', 'KN', 'Saint Mary Cayon', null, null);
INSERT INTO `cities` VALUES ('1874', '178', 'KN', 'Saint Paul Capisterre', null, null);
INSERT INTO `cities` VALUES ('1875', '178', 'KN', 'Saint Paul Charlestown', null, null);
INSERT INTO `cities` VALUES ('1876', '178', 'KN', 'Saint Peter Basseterre', null, null);
INSERT INTO `cities` VALUES ('1877', '178', 'KN', 'Saint Thomas Lowland', null, null);
INSERT INTO `cities` VALUES ('1878', '178', 'KN', 'Saint Thomas Middle Island', null, null);
INSERT INTO `cities` VALUES ('1879', '178', 'KN', 'Trinity Palmetto Point', null, null);
INSERT INTO `cities` VALUES ('1880', '112', 'KP', 'Chagang-do', null, null);
INSERT INTO `cities` VALUES ('1881', '112', 'KP', 'Hamgyong-namdo', null, null);
INSERT INTO `cities` VALUES ('1882', '112', 'KP', 'Hwanghae-namdo', null, null);
INSERT INTO `cities` VALUES ('1883', '112', 'KP', 'Hwanghae-bukto', null, null);
INSERT INTO `cities` VALUES ('1884', '112', 'KP', 'Kaesong-si', null, null);
INSERT INTO `cities` VALUES ('1885', '112', 'KP', 'Kangwon-do', null, null);
INSERT INTO `cities` VALUES ('1886', '112', 'KP', 'P\'yongan-bukto', null, null);
INSERT INTO `cities` VALUES ('1887', '112', 'KP', 'P\'yongyang-si', null, null);
INSERT INTO `cities` VALUES ('1888', '112', 'KP', 'Yanggang-do', null, null);
INSERT INTO `cities` VALUES ('1889', '112', 'KP', 'Namp\'o-si', null, null);
INSERT INTO `cities` VALUES ('1890', '112', 'KP', 'P\'yongan-namdo', null, null);
INSERT INTO `cities` VALUES ('1891', '112', 'KP', 'Hamgyong-bukto', null, null);
INSERT INTO `cities` VALUES ('1892', '112', 'KP', 'Najin Sonbong-si', null, null);
INSERT INTO `cities` VALUES ('1893', '113', 'KR', 'Cheju-do', null, null);
INSERT INTO `cities` VALUES ('1894', '113', 'KR', 'Cholla-bukto', null, null);
INSERT INTO `cities` VALUES ('1895', '113', 'KR', 'Ch\'ungch\'ong-bukto', null, null);
INSERT INTO `cities` VALUES ('1896', '113', 'KR', 'Kangwon-do', null, null);
INSERT INTO `cities` VALUES ('1897', '113', 'KR', 'Pusan-jikhalsi', null, null);
INSERT INTO `cities` VALUES ('1898', '113', 'KR', 'Seoul-t\'ukpyolsi', null, null);
INSERT INTO `cities` VALUES ('1899', '113', 'KR', 'Inch\'on-jikhalsi', null, null);
INSERT INTO `cities` VALUES ('1900', '113', 'KR', 'Kyonggi-do', null, null);
INSERT INTO `cities` VALUES ('1901', '113', 'KR', 'Kyongsang-bukto', null, null);
INSERT INTO `cities` VALUES ('1902', '113', 'KR', 'Taegu-jikhalsi', null, null);
INSERT INTO `cities` VALUES ('1903', '113', 'KR', 'Cholla-namdo', null, null);
INSERT INTO `cities` VALUES ('1904', '113', 'KR', 'Ch\'ungch\'ong-namdo', null, null);
INSERT INTO `cities` VALUES ('1905', '113', 'KR', 'Kwangju-jikhalsi', null, null);
INSERT INTO `cities` VALUES ('1906', '113', 'KR', 'Taejon-jikhalsi', null, null);
INSERT INTO `cities` VALUES ('1907', '113', 'KR', 'Kyongsang-namdo', null, null);
INSERT INTO `cities` VALUES ('1908', '113', 'KR', 'Ulsan-gwangyoksi', null, null);
INSERT INTO `cities` VALUES ('1909', '114', 'KW', 'Al Ahmadi', null, null);
INSERT INTO `cities` VALUES ('1910', '114', 'KW', 'Al Kuwayt', null, null);
INSERT INTO `cities` VALUES ('1911', '114', 'KW', 'Al Jahra', null, null);
INSERT INTO `cities` VALUES ('1912', '114', 'KW', 'Al Farwaniyah', null, null);
INSERT INTO `cities` VALUES ('1913', '114', 'KW', 'Hawalli', null, null);
INSERT INTO `cities` VALUES ('1914', '114', 'KW', 'Mubarak al Kabir', null, null);
INSERT INTO `cities` VALUES ('1915', '40', 'KY', 'Creek', null, null);
INSERT INTO `cities` VALUES ('1916', '40', 'KY', 'Eastern', null, null);
INSERT INTO `cities` VALUES ('1917', '40', 'KY', 'Midland', null, null);
INSERT INTO `cities` VALUES ('1918', '40', 'KY', 'South Town', null, null);
INSERT INTO `cities` VALUES ('1919', '40', 'KY', 'Spot Bay', null, null);
INSERT INTO `cities` VALUES ('1920', '40', 'KY', 'Stake Bay', null, null);
INSERT INTO `cities` VALUES ('1921', '40', 'KY', 'West End', null, null);
INSERT INTO `cities` VALUES ('1922', '40', 'KY', 'Western', null, null);
INSERT INTO `cities` VALUES ('1923', '109', 'KZ', 'Almaty', null, null);
INSERT INTO `cities` VALUES ('1924', '109', 'KZ', 'Almaty City', null, null);
INSERT INTO `cities` VALUES ('1925', '109', 'KZ', 'Aqmola', null, null);
INSERT INTO `cities` VALUES ('1926', '109', 'KZ', 'Aqtobe', null, null);
INSERT INTO `cities` VALUES ('1927', '109', 'KZ', 'Astana', null, null);
INSERT INTO `cities` VALUES ('1928', '109', 'KZ', 'Atyrau', null, null);
INSERT INTO `cities` VALUES ('1929', '109', 'KZ', 'West Kazakhstan', null, null);
INSERT INTO `cities` VALUES ('1930', '109', 'KZ', 'Bayqonyr', null, null);
INSERT INTO `cities` VALUES ('1931', '109', 'KZ', 'Mangghystau', null, null);
INSERT INTO `cities` VALUES ('1932', '109', 'KZ', 'South Kazakhstan', null, null);
INSERT INTO `cities` VALUES ('1933', '109', 'KZ', 'Pavlodar', null, null);
INSERT INTO `cities` VALUES ('1934', '109', 'KZ', 'Qaraghandy', null, null);
INSERT INTO `cities` VALUES ('1935', '109', 'KZ', 'Qostanay', null, null);
INSERT INTO `cities` VALUES ('1936', '109', 'KZ', 'Qyzylorda', null, null);
INSERT INTO `cities` VALUES ('1937', '109', 'KZ', 'East Kazakhstan', null, null);
INSERT INTO `cities` VALUES ('1938', '109', 'KZ', 'North Kazakhstan', null, null);
INSERT INTO `cities` VALUES ('1939', '109', 'KZ', 'Zhambyl', null, null);
INSERT INTO `cities` VALUES ('1940', '116', 'LA', 'Attapu', null, null);
INSERT INTO `cities` VALUES ('1941', '116', 'LA', 'Champasak', null, null);
INSERT INTO `cities` VALUES ('1942', '116', 'LA', 'Houaphan', null, null);
INSERT INTO `cities` VALUES ('1943', '116', 'LA', 'Khammouan', null, null);
INSERT INTO `cities` VALUES ('1944', '116', 'LA', 'Louang Namtha', null, null);
INSERT INTO `cities` VALUES ('1945', '116', 'LA', 'Oudomxai', null, null);
INSERT INTO `cities` VALUES ('1946', '116', 'LA', 'Phongsali', null, null);
INSERT INTO `cities` VALUES ('1947', '116', 'LA', 'Saravan', null, null);
INSERT INTO `cities` VALUES ('1948', '116', 'LA', 'Savannakhet', null, null);
INSERT INTO `cities` VALUES ('1949', '116', 'LA', 'Vientiane', null, null);
INSERT INTO `cities` VALUES ('1950', '116', 'LA', 'Xaignabouri', null, null);
INSERT INTO `cities` VALUES ('1951', '116', 'LA', 'Xiangkhoang', null, null);
INSERT INTO `cities` VALUES ('1952', '116', 'LA', 'Louangphrabang', null, null);
INSERT INTO `cities` VALUES ('1953', '118', 'LB', 'Beqaa', null, null);
INSERT INTO `cities` VALUES ('1954', '118', 'LB', 'Al Janub', null, null);
INSERT INTO `cities` VALUES ('1955', '118', 'LB', 'Liban-Nord', null, null);
INSERT INTO `cities` VALUES ('1956', '118', 'LB', 'Beyrouth', null, null);
INSERT INTO `cities` VALUES ('1957', '118', 'LB', 'Mont-Liban', null, null);
INSERT INTO `cities` VALUES ('1958', '118', 'LB', 'Liban-Sud', null, null);
INSERT INTO `cities` VALUES ('1959', '118', 'LB', 'Nabatiye', null, null);
INSERT INTO `cities` VALUES ('1960', '118', 'LB', 'Beqaa', null, null);
INSERT INTO `cities` VALUES ('1961', '118', 'LB', 'Liban-Nord', null, null);
INSERT INTO `cities` VALUES ('1962', '118', 'LB', 'Aakk,r', null, null);
INSERT INTO `cities` VALUES ('1963', '118', 'LB', 'Baalbek-Hermel', null, null);
INSERT INTO `cities` VALUES ('1964', '179', 'LC', 'Anse-la-Raye', null, null);
INSERT INTO `cities` VALUES ('1965', '179', 'LC', 'Dauphin', null, null);
INSERT INTO `cities` VALUES ('1966', '179', 'LC', 'Castries', null, null);
INSERT INTO `cities` VALUES ('1967', '179', 'LC', 'Choiseul', null, null);
INSERT INTO `cities` VALUES ('1968', '179', 'LC', 'Dennery', null, null);
INSERT INTO `cities` VALUES ('1969', '179', 'LC', 'Gros-Islet', null, null);
INSERT INTO `cities` VALUES ('1970', '179', 'LC', 'Laborie', null, null);
INSERT INTO `cities` VALUES ('1971', '179', 'LC', 'Micoud', null, null);
INSERT INTO `cities` VALUES ('1972', '179', 'LC', 'Soufriere', null, null);
INSERT INTO `cities` VALUES ('1973', '179', 'LC', 'Vieux-Fort', null, null);
INSERT INTO `cities` VALUES ('1974', '179', 'LC', 'Praslin', null, null);
INSERT INTO `cities` VALUES ('1975', '122', 'LI', 'Balzers', null, null);
INSERT INTO `cities` VALUES ('1976', '122', 'LI', 'Eschen', null, null);
INSERT INTO `cities` VALUES ('1977', '122', 'LI', 'Gamprin', null, null);
INSERT INTO `cities` VALUES ('1978', '122', 'LI', 'Mauren', null, null);
INSERT INTO `cities` VALUES ('1979', '122', 'LI', 'Planken', null, null);
INSERT INTO `cities` VALUES ('1980', '122', 'LI', 'Ruggell', null, null);
INSERT INTO `cities` VALUES ('1981', '122', 'LI', 'Schaan', null, null);
INSERT INTO `cities` VALUES ('1982', '122', 'LI', 'Schellenberg', null, null);
INSERT INTO `cities` VALUES ('1983', '122', 'LI', 'Triesen', null, null);
INSERT INTO `cities` VALUES ('1984', '122', 'LI', 'Triesenberg', null, null);
INSERT INTO `cities` VALUES ('1985', '122', 'LI', 'Vaduz', null, null);
INSERT INTO `cities` VALUES ('1986', '122', 'LI', 'Gbarpolu', null, null);
INSERT INTO `cities` VALUES ('1987', '122', 'LI', 'River Gee', null, null);
INSERT INTO `cities` VALUES ('1988', '196', 'LK', 'Central', null, null);
INSERT INTO `cities` VALUES ('1989', '196', 'LK', 'North Central', null, null);
INSERT INTO `cities` VALUES ('1990', '196', 'LK', 'North Western', null, null);
INSERT INTO `cities` VALUES ('1991', '196', 'LK', 'Sabaragamuwa', null, null);
INSERT INTO `cities` VALUES ('1992', '196', 'LK', 'Southern', null, null);
INSERT INTO `cities` VALUES ('1993', '196', 'LK', 'Uva', null, null);
INSERT INTO `cities` VALUES ('1994', '196', 'LK', 'Western', null, null);
INSERT INTO `cities` VALUES ('1995', '196', 'LK', 'Eastern', null, null);
INSERT INTO `cities` VALUES ('1996', '196', 'LK', 'Northern', null, null);
INSERT INTO `cities` VALUES ('1997', '120', 'LR', 'Bong', null, null);
INSERT INTO `cities` VALUES ('1998', '120', 'LR', 'Grand Cape Mount', null, null);
INSERT INTO `cities` VALUES ('1999', '120', 'LR', 'Lofa', null, null);
INSERT INTO `cities` VALUES ('2000', '120', 'LR', 'Maryland', null, null);
INSERT INTO `cities` VALUES ('2001', '120', 'LR', 'Monrovia', null, null);
INSERT INTO `cities` VALUES ('2002', '120', 'LR', 'Nimba', null, null);
INSERT INTO `cities` VALUES ('2003', '120', 'LR', 'Sino', null, null);
INSERT INTO `cities` VALUES ('2004', '120', 'LR', 'Grand Bassa', null, null);
INSERT INTO `cities` VALUES ('2005', '120', 'LR', 'Grand Cape Mount', null, null);
INSERT INTO `cities` VALUES ('2006', '120', 'LR', 'Maryland', null, null);
INSERT INTO `cities` VALUES ('2007', '120', 'LR', 'Montserrado', null, null);
INSERT INTO `cities` VALUES ('2008', '120', 'LR', 'Margibi', null, null);
INSERT INTO `cities` VALUES ('2009', '120', 'LR', 'River Cess', null, null);
INSERT INTO `cities` VALUES ('2010', '120', 'LR', 'Grand Gedeh', null, null);
INSERT INTO `cities` VALUES ('2011', '120', 'LR', 'Lofa', null, null);
INSERT INTO `cities` VALUES ('2012', '120', 'LR', 'Gbarpolu', null, null);
INSERT INTO `cities` VALUES ('2013', '120', 'LR', 'River Gee', null, null);
INSERT INTO `cities` VALUES ('2014', '119', 'LS', 'Berea', null, null);
INSERT INTO `cities` VALUES ('2015', '119', 'LS', 'Butha-Buthe', null, null);
INSERT INTO `cities` VALUES ('2016', '119', 'LS', 'Leribe', null, null);
INSERT INTO `cities` VALUES ('2017', '119', 'LS', 'Mafeteng', null, null);
INSERT INTO `cities` VALUES ('2018', '119', 'LS', 'Maseru', null, null);
INSERT INTO `cities` VALUES ('2019', '119', 'LS', 'Mohales Hoek', null, null);
INSERT INTO `cities` VALUES ('2020', '119', 'LS', 'Mokhotlong', null, null);
INSERT INTO `cities` VALUES ('2021', '119', 'LS', 'Qachas Nek', null, null);
INSERT INTO `cities` VALUES ('2022', '119', 'LS', 'Quthing', null, null);
INSERT INTO `cities` VALUES ('2023', '119', 'LS', 'Thaba-Tseka', null, null);
INSERT INTO `cities` VALUES ('2024', '123', 'LT', 'Alytaus Apskritis', null, null);
INSERT INTO `cities` VALUES ('2025', '123', 'LT', 'Kauno Apskritis', null, null);
INSERT INTO `cities` VALUES ('2026', '123', 'LT', 'Klaipedos Apskritis', null, null);
INSERT INTO `cities` VALUES ('2027', '123', 'LT', 'Marijampoles Apskritis', null, null);
INSERT INTO `cities` VALUES ('2028', '123', 'LT', 'Panevezio Apskritis', null, null);
INSERT INTO `cities` VALUES ('2029', '123', 'LT', 'Siauliu Apskritis', null, null);
INSERT INTO `cities` VALUES ('2030', '123', 'LT', 'Taurages Apskritis', null, null);
INSERT INTO `cities` VALUES ('2031', '123', 'LT', 'Telsiu Apskritis', null, null);
INSERT INTO `cities` VALUES ('2032', '123', 'LT', 'Utenos Apskritis', null, null);
INSERT INTO `cities` VALUES ('2033', '123', 'LT', 'Vilniaus Apskritis', null, null);
INSERT INTO `cities` VALUES ('2034', '124', 'LU', 'Diekirch', null, null);
INSERT INTO `cities` VALUES ('2035', '124', 'LU', 'Grevenmacher', null, null);
INSERT INTO `cities` VALUES ('2036', '124', 'LU', 'Luxembourg', null, null);
INSERT INTO `cities` VALUES ('2037', '117', 'LV', 'Aizkraukles', null, null);
INSERT INTO `cities` VALUES ('2038', '117', 'LV', 'Aluksnes', null, null);
INSERT INTO `cities` VALUES ('2039', '117', 'LV', 'Balvu', null, null);
INSERT INTO `cities` VALUES ('2040', '117', 'LV', 'Bauskas', null, null);
INSERT INTO `cities` VALUES ('2041', '117', 'LV', 'Cesu', null, null);
INSERT INTO `cities` VALUES ('2042', '117', 'LV', 'Daugavpils', null, null);
INSERT INTO `cities` VALUES ('2043', '117', 'LV', 'Daugavpils', null, null);
INSERT INTO `cities` VALUES ('2044', '117', 'LV', 'Dobeles', null, null);
INSERT INTO `cities` VALUES ('2045', '117', 'LV', 'Gulbenes', null, null);
INSERT INTO `cities` VALUES ('2046', '117', 'LV', 'Jekabpils', null, null);
INSERT INTO `cities` VALUES ('2047', '117', 'LV', 'Jelgava', null, null);
INSERT INTO `cities` VALUES ('2048', '117', 'LV', 'Jelgavas', null, null);
INSERT INTO `cities` VALUES ('2049', '117', 'LV', 'Jurmala', null, null);
INSERT INTO `cities` VALUES ('2050', '117', 'LV', 'Kraslavas', null, null);
INSERT INTO `cities` VALUES ('2051', '117', 'LV', 'Kuldigas', null, null);
INSERT INTO `cities` VALUES ('2052', '117', 'LV', 'Liepaja', null, null);
INSERT INTO `cities` VALUES ('2053', '117', 'LV', 'Liepajas', null, null);
INSERT INTO `cities` VALUES ('2054', '117', 'LV', 'Limbazu', null, null);
INSERT INTO `cities` VALUES ('2055', '117', 'LV', 'Ludzas', null, null);
INSERT INTO `cities` VALUES ('2056', '117', 'LV', 'Madonas', null, null);
INSERT INTO `cities` VALUES ('2057', '117', 'LV', 'Ogres', null, null);
INSERT INTO `cities` VALUES ('2058', '117', 'LV', 'Preilu', null, null);
INSERT INTO `cities` VALUES ('2059', '117', 'LV', 'Rezekne', null, null);
INSERT INTO `cities` VALUES ('2060', '117', 'LV', 'Rezeknes', null, null);
INSERT INTO `cities` VALUES ('2061', '117', 'LV', 'Riga', null, null);
INSERT INTO `cities` VALUES ('2062', '117', 'LV', 'Rigas', null, null);
INSERT INTO `cities` VALUES ('2063', '117', 'LV', 'Saldus', null, null);
INSERT INTO `cities` VALUES ('2064', '117', 'LV', 'Talsu', null, null);
INSERT INTO `cities` VALUES ('2065', '117', 'LV', 'Tukuma', null, null);
INSERT INTO `cities` VALUES ('2066', '117', 'LV', 'Valkas', null, null);
INSERT INTO `cities` VALUES ('2067', '117', 'LV', 'Valmieras', null, null);
INSERT INTO `cities` VALUES ('2068', '117', 'LV', 'Ventspils', null, null);
INSERT INTO `cities` VALUES ('2069', '117', 'LV', 'Ventspils', null, null);
INSERT INTO `cities` VALUES ('2070', '121', 'LY', 'Al Aziziyah', null, null);
INSERT INTO `cities` VALUES ('2071', '121', 'LY', 'Al Jufrah', null, null);
INSERT INTO `cities` VALUES ('2072', '121', 'LY', 'Al Kufrah', null, null);
INSERT INTO `cities` VALUES ('2073', '121', 'LY', 'Ash Shati\'', null, null);
INSERT INTO `cities` VALUES ('2074', '121', 'LY', 'Murzuq', null, null);
INSERT INTO `cities` VALUES ('2075', '121', 'LY', 'Sabha', null, null);
INSERT INTO `cities` VALUES ('2076', '121', 'LY', 'Tarhunah', null, null);
INSERT INTO `cities` VALUES ('2077', '121', 'LY', 'Tubruq', null, null);
INSERT INTO `cities` VALUES ('2078', '121', 'LY', 'Zlitan', null, null);
INSERT INTO `cities` VALUES ('2079', '121', 'LY', 'Ajdabiya', null, null);
INSERT INTO `cities` VALUES ('2080', '121', 'LY', 'Al Fatih', null, null);
INSERT INTO `cities` VALUES ('2081', '121', 'LY', 'Al Jabal al Akhdar', null, null);
INSERT INTO `cities` VALUES ('2082', '121', 'LY', 'Al Khums', null, null);
INSERT INTO `cities` VALUES ('2083', '121', 'LY', 'An Nuqat al Khams', null, null);
INSERT INTO `cities` VALUES ('2084', '121', 'LY', 'Awbari', null, null);
INSERT INTO `cities` VALUES ('2085', '121', 'LY', 'Az Zawiyah', null, null);
INSERT INTO `cities` VALUES ('2086', '121', 'LY', 'Banghazi', null, null);
INSERT INTO `cities` VALUES ('2087', '121', 'LY', 'Darnah', null, null);
INSERT INTO `cities` VALUES ('2088', '121', 'LY', 'Ghadamis', null, null);
INSERT INTO `cities` VALUES ('2089', '121', 'LY', 'Gharyan', null, null);
INSERT INTO `cities` VALUES ('2090', '121', 'LY', 'Misratah', null, null);
INSERT INTO `cities` VALUES ('2091', '121', 'LY', 'Sawfajjin', null, null);
INSERT INTO `cities` VALUES ('2092', '121', 'LY', 'Surt', null, null);
INSERT INTO `cities` VALUES ('2093', '121', 'LY', 'Tarabulus', null, null);
INSERT INTO `cities` VALUES ('2094', '121', 'LY', 'Yafran', null, null);
INSERT INTO `cities` VALUES ('2095', '144', 'MA', 'Grand Casablanca', null, null);
INSERT INTO `cities` VALUES ('2096', '144', 'MA', 'Fes-Boulemane', null, null);
INSERT INTO `cities` VALUES ('2097', '144', 'MA', 'Marrakech-Tensift-Al Haouz', null, null);
INSERT INTO `cities` VALUES ('2098', '144', 'MA', 'Meknes-Tafilalet', null, null);
INSERT INTO `cities` VALUES ('2099', '144', 'MA', 'Rabat-Sale-Zemmour-Zaer', null, null);
INSERT INTO `cities` VALUES ('2100', '144', 'MA', 'Chaouia-Ouardigha', null, null);
INSERT INTO `cities` VALUES ('2101', '144', 'MA', 'Doukkala-Abda', null, null);
INSERT INTO `cities` VALUES ('2102', '144', 'MA', 'Gharb-Chrarda-Beni Hssen', null, null);
INSERT INTO `cities` VALUES ('2103', '144', 'MA', 'Guelmim-Es Smara', null, null);
INSERT INTO `cities` VALUES ('2104', '144', 'MA', 'Oriental', null, null);
INSERT INTO `cities` VALUES ('2105', '144', 'MA', 'Souss-Massa-Dr,a', null, null);
INSERT INTO `cities` VALUES ('2106', '144', 'MA', 'Tadla-Azilal', null, null);
INSERT INTO `cities` VALUES ('2107', '144', 'MA', 'Tanger-Tetouan', null, null);
INSERT INTO `cities` VALUES ('2108', '144', 'MA', 'Taza-Al Hoceima-Taounate', null, null);
INSERT INTO `cities` VALUES ('2109', '144', 'MA', 'La,youne-Boujdour-Sakia El Hamra', null, null);
INSERT INTO `cities` VALUES ('2110', '141', 'MC', 'La Condamine', null, null);
INSERT INTO `cities` VALUES ('2111', '141', 'MC', 'Monaco', null, null);
INSERT INTO `cities` VALUES ('2112', '141', 'MC', 'Monte-Carlo', null, null);
INSERT INTO `cities` VALUES ('2113', '140', 'MD', 'Gagauzia', null, null);
INSERT INTO `cities` VALUES ('2114', '140', 'MD', 'Chisinau', null, null);
INSERT INTO `cities` VALUES ('2115', '140', 'MD', 'Stinga Nistrului', null, null);
INSERT INTO `cities` VALUES ('2116', '140', 'MD', 'Anenii Noi', null, null);
INSERT INTO `cities` VALUES ('2117', '140', 'MD', 'Balti', null, null);
INSERT INTO `cities` VALUES ('2118', '140', 'MD', 'Basarabeasca', null, null);
INSERT INTO `cities` VALUES ('2119', '140', 'MD', 'Bender', null, null);
INSERT INTO `cities` VALUES ('2120', '140', 'MD', 'Briceni', null, null);
INSERT INTO `cities` VALUES ('2121', '140', 'MD', 'Cahul', null, null);
INSERT INTO `cities` VALUES ('2122', '140', 'MD', 'Cantemir', null, null);
INSERT INTO `cities` VALUES ('2123', '140', 'MD', 'Calarasi', null, null);
INSERT INTO `cities` VALUES ('2124', '140', 'MD', 'Causeni', null, null);
INSERT INTO `cities` VALUES ('2125', '140', 'MD', 'Cimislia', null, null);
INSERT INTO `cities` VALUES ('2126', '140', 'MD', 'Criuleni', null, null);
INSERT INTO `cities` VALUES ('2127', '140', 'MD', 'Donduseni', null, null);
INSERT INTO `cities` VALUES ('2128', '140', 'MD', 'Drochia', null, null);
INSERT INTO `cities` VALUES ('2129', '140', 'MD', 'Dubasari', null, null);
INSERT INTO `cities` VALUES ('2130', '140', 'MD', 'Edinet', null, null);
INSERT INTO `cities` VALUES ('2131', '140', 'MD', 'Falesti', null, null);
INSERT INTO `cities` VALUES ('2132', '140', 'MD', 'Floresti', null, null);
INSERT INTO `cities` VALUES ('2133', '140', 'MD', 'Glodeni', null, null);
INSERT INTO `cities` VALUES ('2134', '140', 'MD', 'Hincesti', null, null);
INSERT INTO `cities` VALUES ('2135', '140', 'MD', 'Ialoveni', null, null);
INSERT INTO `cities` VALUES ('2136', '140', 'MD', 'Leova', null, null);
INSERT INTO `cities` VALUES ('2137', '140', 'MD', 'Nisporeni', null, null);
INSERT INTO `cities` VALUES ('2138', '140', 'MD', 'Ocnita', null, null);
INSERT INTO `cities` VALUES ('2139', '140', 'MD', 'Orhei', null, null);
INSERT INTO `cities` VALUES ('2140', '140', 'MD', 'Rezina', null, null);
INSERT INTO `cities` VALUES ('2141', '140', 'MD', 'Riscani', null, null);
INSERT INTO `cities` VALUES ('2142', '140', 'MD', 'Singerei', null, null);
INSERT INTO `cities` VALUES ('2143', '140', 'MD', 'Soldanesti', null, null);
INSERT INTO `cities` VALUES ('2144', '140', 'MD', 'Soroca', null, null);
INSERT INTO `cities` VALUES ('2145', '140', 'MD', 'Stefan-Voda', null, null);
INSERT INTO `cities` VALUES ('2146', '140', 'MD', 'Straseni', null, null);
INSERT INTO `cities` VALUES ('2147', '140', 'MD', 'Taraclia', null, null);
INSERT INTO `cities` VALUES ('2148', '140', 'MD', 'Telenesti', null, null);
INSERT INTO `cities` VALUES ('2149', '140', 'MD', 'Ungheni', null, null);
INSERT INTO `cities` VALUES ('2150', '127', 'MG', 'Antsiranana', null, null);
INSERT INTO `cities` VALUES ('2151', '127', 'MG', 'Fianarantsoa', null, null);
INSERT INTO `cities` VALUES ('2152', '127', 'MG', 'Mahajanga', null, null);
INSERT INTO `cities` VALUES ('2153', '127', 'MG', 'Toamasina', null, null);
INSERT INTO `cities` VALUES ('2154', '127', 'MG', 'Antananarivo', null, null);
INSERT INTO `cities` VALUES ('2155', '127', 'MG', 'Toliara', null, null);
INSERT INTO `cities` VALUES ('2156', '126', 'MK', 'Aracinovo', null, null);
INSERT INTO `cities` VALUES ('2157', '126', 'MK', 'Bac', null, null);
INSERT INTO `cities` VALUES ('2158', '126', 'MK', 'Belcista', null, null);
INSERT INTO `cities` VALUES ('2159', '126', 'MK', 'Berovo', null, null);
INSERT INTO `cities` VALUES ('2160', '126', 'MK', 'Bistrica', null, null);
INSERT INTO `cities` VALUES ('2161', '126', 'MK', 'Bitola', null, null);
INSERT INTO `cities` VALUES ('2162', '126', 'MK', 'Blatec', null, null);
INSERT INTO `cities` VALUES ('2163', '126', 'MK', 'Bogdanci', null, null);
INSERT INTO `cities` VALUES ('2164', '126', 'MK', 'Bogomila', null, null);
INSERT INTO `cities` VALUES ('2165', '126', 'MK', 'Bogovinje', null, null);
INSERT INTO `cities` VALUES ('2166', '126', 'MK', 'Bosilovo', null, null);
INSERT INTO `cities` VALUES ('2167', '126', 'MK', 'Brvenica', null, null);
INSERT INTO `cities` VALUES ('2168', '126', 'MK', 'Cair', null, null);
INSERT INTO `cities` VALUES ('2169', '126', 'MK', 'Capari', null, null);
INSERT INTO `cities` VALUES ('2170', '126', 'MK', 'Caska', null, null);
INSERT INTO `cities` VALUES ('2171', '126', 'MK', 'Cegrane', null, null);
INSERT INTO `cities` VALUES ('2172', '126', 'MK', 'Centar', null, null);
INSERT INTO `cities` VALUES ('2173', '126', 'MK', 'Centar Zupa', null, null);
INSERT INTO `cities` VALUES ('2174', '126', 'MK', 'Cesinovo', null, null);
INSERT INTO `cities` VALUES ('2175', '126', 'MK', 'Cucer-Sandevo', null, null);
INSERT INTO `cities` VALUES ('2176', '126', 'MK', 'Debar', null, null);
INSERT INTO `cities` VALUES ('2177', '126', 'MK', 'Delcevo', null, null);
INSERT INTO `cities` VALUES ('2178', '126', 'MK', 'Delogozdi', null, null);
INSERT INTO `cities` VALUES ('2179', '126', 'MK', 'Demir Hisar', null, null);
INSERT INTO `cities` VALUES ('2180', '126', 'MK', 'Demir Kapija', null, null);
INSERT INTO `cities` VALUES ('2181', '126', 'MK', 'Dobrusevo', null, null);
INSERT INTO `cities` VALUES ('2182', '126', 'MK', 'Dolna Banjica', null, null);
INSERT INTO `cities` VALUES ('2183', '126', 'MK', 'Dolneni', null, null);
INSERT INTO `cities` VALUES ('2184', '126', 'MK', 'Dorce Petrov', null, null);
INSERT INTO `cities` VALUES ('2185', '126', 'MK', 'Drugovo', null, null);
INSERT INTO `cities` VALUES ('2186', '126', 'MK', 'Dzepciste', null, null);
INSERT INTO `cities` VALUES ('2187', '126', 'MK', 'Gazi Baba', null, null);
INSERT INTO `cities` VALUES ('2188', '126', 'MK', 'Gevgelija', null, null);
INSERT INTO `cities` VALUES ('2189', '126', 'MK', 'Gostivar', null, null);
INSERT INTO `cities` VALUES ('2190', '126', 'MK', 'Gradsko', null, null);
INSERT INTO `cities` VALUES ('2191', '126', 'MK', 'Ilinden', null, null);
INSERT INTO `cities` VALUES ('2192', '126', 'MK', 'Izvor', null, null);
INSERT INTO `cities` VALUES ('2193', '126', 'MK', 'Jegunovce', null, null);
INSERT INTO `cities` VALUES ('2194', '126', 'MK', 'Kamenjane', null, null);
INSERT INTO `cities` VALUES ('2195', '126', 'MK', 'Karbinci', null, null);
INSERT INTO `cities` VALUES ('2196', '126', 'MK', 'Karpos', null, null);
INSERT INTO `cities` VALUES ('2197', '126', 'MK', 'Kavadarci', null, null);
INSERT INTO `cities` VALUES ('2198', '126', 'MK', 'Kicevo', null, null);
INSERT INTO `cities` VALUES ('2199', '126', 'MK', 'Kisela Voda', null, null);
INSERT INTO `cities` VALUES ('2200', '126', 'MK', 'Klecevce', null, null);
INSERT INTO `cities` VALUES ('2201', '126', 'MK', 'Kocani', null, null);
INSERT INTO `cities` VALUES ('2202', '126', 'MK', 'Konce', null, null);
INSERT INTO `cities` VALUES ('2203', '126', 'MK', 'Kondovo', null, null);
INSERT INTO `cities` VALUES ('2204', '126', 'MK', 'Konopiste', null, null);
INSERT INTO `cities` VALUES ('2205', '126', 'MK', 'Kosel', null, null);
INSERT INTO `cities` VALUES ('2206', '126', 'MK', 'Kratovo', null, null);
INSERT INTO `cities` VALUES ('2207', '126', 'MK', 'Kriva Palanka', null, null);
INSERT INTO `cities` VALUES ('2208', '126', 'MK', 'Krivogastani', null, null);
INSERT INTO `cities` VALUES ('2209', '126', 'MK', 'Krusevo', null, null);
INSERT INTO `cities` VALUES ('2210', '126', 'MK', 'Kuklis', null, null);
INSERT INTO `cities` VALUES ('2211', '126', 'MK', 'Kukurecani', null, null);
INSERT INTO `cities` VALUES ('2212', '126', 'MK', 'Kumanovo', null, null);
INSERT INTO `cities` VALUES ('2213', '126', 'MK', 'Labunista', null, null);
INSERT INTO `cities` VALUES ('2214', '126', 'MK', 'Lipkovo', null, null);
INSERT INTO `cities` VALUES ('2215', '126', 'MK', 'Lozovo', null, null);
INSERT INTO `cities` VALUES ('2216', '126', 'MK', 'Lukovo', null, null);
INSERT INTO `cities` VALUES ('2217', '126', 'MK', 'Makedonska Kamenica', null, null);
INSERT INTO `cities` VALUES ('2218', '126', 'MK', 'Makedonski Brod', null, null);
INSERT INTO `cities` VALUES ('2219', '126', 'MK', 'Mavrovi Anovi', null, null);
INSERT INTO `cities` VALUES ('2220', '126', 'MK', 'Meseista', null, null);
INSERT INTO `cities` VALUES ('2221', '126', 'MK', 'Miravci', null, null);
INSERT INTO `cities` VALUES ('2222', '126', 'MK', 'Mogila', null, null);
INSERT INTO `cities` VALUES ('2223', '126', 'MK', 'Murtino', null, null);
INSERT INTO `cities` VALUES ('2224', '126', 'MK', 'Negotino', null, null);
INSERT INTO `cities` VALUES ('2225', '126', 'MK', 'Negotino-Polosko', null, null);
INSERT INTO `cities` VALUES ('2226', '126', 'MK', 'Novaci', null, null);
INSERT INTO `cities` VALUES ('2227', '126', 'MK', 'Novo Selo', null, null);
INSERT INTO `cities` VALUES ('2228', '126', 'MK', 'Oblesevo', null, null);
INSERT INTO `cities` VALUES ('2229', '126', 'MK', 'Ohrid', null, null);
INSERT INTO `cities` VALUES ('2230', '126', 'MK', 'Orasac', null, null);
INSERT INTO `cities` VALUES ('2231', '126', 'MK', 'Orizari', null, null);
INSERT INTO `cities` VALUES ('2232', '126', 'MK', 'Oslomej', null, null);
INSERT INTO `cities` VALUES ('2233', '126', 'MK', 'Pehcevo', null, null);
INSERT INTO `cities` VALUES ('2234', '126', 'MK', 'Petrovec', null, null);
INSERT INTO `cities` VALUES ('2235', '126', 'MK', 'Plasnica', null, null);
INSERT INTO `cities` VALUES ('2236', '126', 'MK', 'Podares', null, null);
INSERT INTO `cities` VALUES ('2237', '126', 'MK', 'Prilep', null, null);
INSERT INTO `cities` VALUES ('2238', '126', 'MK', 'Probistip', null, null);
INSERT INTO `cities` VALUES ('2239', '126', 'MK', 'Radovis', null, null);
INSERT INTO `cities` VALUES ('2240', '126', 'MK', 'Rankovce', null, null);
INSERT INTO `cities` VALUES ('2241', '126', 'MK', 'Resen', null, null);
INSERT INTO `cities` VALUES ('2242', '126', 'MK', 'Rosoman', null, null);
INSERT INTO `cities` VALUES ('2243', '126', 'MK', 'Rostusa', null, null);
INSERT INTO `cities` VALUES ('2244', '126', 'MK', 'Samokov', null, null);
INSERT INTO `cities` VALUES ('2245', '126', 'MK', 'Saraj', null, null);
INSERT INTO `cities` VALUES ('2246', '126', 'MK', 'Sipkovica', null, null);
INSERT INTO `cities` VALUES ('2247', '126', 'MK', 'Sopiste', null, null);
INSERT INTO `cities` VALUES ('2248', '126', 'MK', 'Sopotnica', null, null);
INSERT INTO `cities` VALUES ('2249', '126', 'MK', 'Srbinovo', null, null);
INSERT INTO `cities` VALUES ('2250', '126', 'MK', 'Staravina', null, null);
INSERT INTO `cities` VALUES ('2251', '126', 'MK', 'Star Dojran', null, null);
INSERT INTO `cities` VALUES ('2252', '126', 'MK', 'Staro Nagoricane', null, null);
INSERT INTO `cities` VALUES ('2253', '126', 'MK', 'Stip', null, null);
INSERT INTO `cities` VALUES ('2254', '126', 'MK', 'Struga', null, null);
INSERT INTO `cities` VALUES ('2255', '126', 'MK', 'Strumica', null, null);
INSERT INTO `cities` VALUES ('2256', '126', 'MK', 'Studenicani', null, null);
INSERT INTO `cities` VALUES ('2257', '126', 'MK', 'Suto Orizari', null, null);
INSERT INTO `cities` VALUES ('2258', '126', 'MK', 'Sveti Nikole', null, null);
INSERT INTO `cities` VALUES ('2259', '126', 'MK', 'Tearce', null, null);
INSERT INTO `cities` VALUES ('2260', '126', 'MK', 'Tetovo', null, null);
INSERT INTO `cities` VALUES ('2261', '126', 'MK', 'Topolcani', null, null);
INSERT INTO `cities` VALUES ('2262', '126', 'MK', 'Valandovo', null, null);
INSERT INTO `cities` VALUES ('2263', '126', 'MK', 'Vasilevo', null, null);
INSERT INTO `cities` VALUES ('2264', '126', 'MK', 'Veles', null, null);
INSERT INTO `cities` VALUES ('2265', '126', 'MK', 'Velesta', null, null);
INSERT INTO `cities` VALUES ('2266', '126', 'MK', 'Vevcani', null, null);
INSERT INTO `cities` VALUES ('2267', '126', 'MK', 'Vinica', null, null);
INSERT INTO `cities` VALUES ('2268', '126', 'MK', 'Vitoliste', null, null);
INSERT INTO `cities` VALUES ('2269', '126', 'MK', 'Vranestica', null, null);
INSERT INTO `cities` VALUES ('2270', '126', 'MK', 'Vrapciste', null, null);
INSERT INTO `cities` VALUES ('2271', '126', 'MK', 'Vratnica', null, null);
INSERT INTO `cities` VALUES ('2272', '126', 'MK', 'Vrutok', null, null);
INSERT INTO `cities` VALUES ('2273', '126', 'MK', 'Zajas', null, null);
INSERT INTO `cities` VALUES ('2274', '126', 'MK', 'Zelenikovo', null, null);
INSERT INTO `cities` VALUES ('2275', '126', 'MK', 'Zelino', null, null);
INSERT INTO `cities` VALUES ('2276', '126', 'MK', 'Zitose', null, null);
INSERT INTO `cities` VALUES ('2277', '126', 'MK', 'Zletovo', null, null);
INSERT INTO `cities` VALUES ('2278', '126', 'MK', 'Zrnovci', null, null);
INSERT INTO `cities` VALUES ('2279', '131', 'ML', 'Bamako', null, null);
INSERT INTO `cities` VALUES ('2280', '131', 'ML', 'Kayes', null, null);
INSERT INTO `cities` VALUES ('2281', '131', 'ML', 'Mopti', null, null);
INSERT INTO `cities` VALUES ('2282', '131', 'ML', 'Segou', null, null);
INSERT INTO `cities` VALUES ('2283', '131', 'ML', 'Sikasso', null, null);
INSERT INTO `cities` VALUES ('2284', '131', 'ML', 'Koulikoro', null, null);
INSERT INTO `cities` VALUES ('2285', '131', 'ML', 'Tombouctou', null, null);
INSERT INTO `cities` VALUES ('2286', '131', 'ML', 'Gao', null, null);
INSERT INTO `cities` VALUES ('2287', '131', 'ML', 'Kidal', null, null);
INSERT INTO `cities` VALUES ('2288', '146', 'MM', 'Rakhine State', null, null);
INSERT INTO `cities` VALUES ('2289', '146', 'MM', 'Chin State', null, null);
INSERT INTO `cities` VALUES ('2290', '146', 'MM', 'Irrawaddy', null, null);
INSERT INTO `cities` VALUES ('2291', '146', 'MM', 'Kachin State', null, null);
INSERT INTO `cities` VALUES ('2292', '146', 'MM', 'Karan State', null, null);
INSERT INTO `cities` VALUES ('2293', '146', 'MM', 'Kayah State', null, null);
INSERT INTO `cities` VALUES ('2294', '146', 'MM', 'Magwe', null, null);
INSERT INTO `cities` VALUES ('2295', '146', 'MM', 'Mandalay', null, null);
INSERT INTO `cities` VALUES ('2296', '146', 'MM', 'Pegu', null, null);
INSERT INTO `cities` VALUES ('2297', '146', 'MM', 'Sagaing', null, null);
INSERT INTO `cities` VALUES ('2298', '146', 'MM', 'Shan State', null, null);
INSERT INTO `cities` VALUES ('2299', '146', 'MM', 'Tenasserim', null, null);
INSERT INTO `cities` VALUES ('2300', '146', 'MM', 'Mon State', null, null);
INSERT INTO `cities` VALUES ('2301', '146', 'MM', 'Rangoon', null, null);
INSERT INTO `cities` VALUES ('2302', '146', 'MM', 'Yangon', null, null);
INSERT INTO `cities` VALUES ('2303', '142', 'MN', 'Arhangay', null, null);
INSERT INTO `cities` VALUES ('2304', '142', 'MN', 'Bayanhongor', null, null);
INSERT INTO `cities` VALUES ('2305', '142', 'MN', 'Bayan-Olgiy', null, null);
INSERT INTO `cities` VALUES ('2306', '142', 'MN', 'Darhan', null, null);
INSERT INTO `cities` VALUES ('2307', '142', 'MN', 'Dornod', null, null);
INSERT INTO `cities` VALUES ('2308', '142', 'MN', 'Dornogovi', null, null);
INSERT INTO `cities` VALUES ('2309', '142', 'MN', 'Dundgovi', null, null);
INSERT INTO `cities` VALUES ('2310', '142', 'MN', 'Dzavhan', null, null);
INSERT INTO `cities` VALUES ('2311', '142', 'MN', 'Govi-Altay', null, null);
INSERT INTO `cities` VALUES ('2312', '142', 'MN', 'Hentiy', null, null);
INSERT INTO `cities` VALUES ('2313', '142', 'MN', 'Hovd', null, null);
INSERT INTO `cities` VALUES ('2314', '142', 'MN', 'Hovsgol', null, null);
INSERT INTO `cities` VALUES ('2315', '142', 'MN', 'Omnogovi', null, null);
INSERT INTO `cities` VALUES ('2316', '142', 'MN', 'Ovorhangay', null, null);
INSERT INTO `cities` VALUES ('2317', '142', 'MN', 'Selenge', null, null);
INSERT INTO `cities` VALUES ('2318', '142', 'MN', 'Suhbaatar', null, null);
INSERT INTO `cities` VALUES ('2319', '142', 'MN', 'Tov', null, null);
INSERT INTO `cities` VALUES ('2320', '142', 'MN', 'Uvs', null, null);
INSERT INTO `cities` VALUES ('2321', '142', 'MN', 'Ulaanbaatar', null, null);
INSERT INTO `cities` VALUES ('2322', '142', 'MN', 'Bulgan', null, null);
INSERT INTO `cities` VALUES ('2323', '142', 'MN', 'Erdenet', null, null);
INSERT INTO `cities` VALUES ('2324', '142', 'MN', 'Darhan-Uul', null, null);
INSERT INTO `cities` VALUES ('2325', '142', 'MN', 'Govisumber', null, null);
INSERT INTO `cities` VALUES ('2326', '142', 'MN', 'Orhon', null, null);
INSERT INTO `cities` VALUES ('2327', '125', 'MO', 'Ilhas', null, null);
INSERT INTO `cities` VALUES ('2328', '125', 'MO', 'Macau', null, null);
INSERT INTO `cities` VALUES ('2329', '135', 'MR', 'Hodh Ech Chargui', null, null);
INSERT INTO `cities` VALUES ('2330', '135', 'MR', 'Hodh El Gharbi', null, null);
INSERT INTO `cities` VALUES ('2331', '135', 'MR', 'Assaba', null, null);
INSERT INTO `cities` VALUES ('2332', '135', 'MR', 'Gorgol', null, null);
INSERT INTO `cities` VALUES ('2333', '135', 'MR', 'Brakna', null, null);
INSERT INTO `cities` VALUES ('2334', '135', 'MR', 'Trarza', null, null);
INSERT INTO `cities` VALUES ('2335', '135', 'MR', 'Adrar', null, null);
INSERT INTO `cities` VALUES ('2336', '135', 'MR', 'Dakhlet Nouadhibou', null, null);
INSERT INTO `cities` VALUES ('2337', '135', 'MR', 'Tagant', null, null);
INSERT INTO `cities` VALUES ('2338', '135', 'MR', 'Guidimaka', null, null);
INSERT INTO `cities` VALUES ('2339', '135', 'MR', 'Tiris Zemmour', null, null);
INSERT INTO `cities` VALUES ('2340', '135', 'MR', 'Inchiri', null, null);
INSERT INTO `cities` VALUES ('2341', '143', 'MS', 'Saint Anthony', null, null);
INSERT INTO `cities` VALUES ('2342', '143', 'MS', 'Saint Georges', null, null);
INSERT INTO `cities` VALUES ('2343', '143', 'MS', 'Saint Peter', null, null);
INSERT INTO `cities` VALUES ('2344', '136', 'MU', 'Black River', null, null);
INSERT INTO `cities` VALUES ('2345', '136', 'MU', 'Flacq', null, null);
INSERT INTO `cities` VALUES ('2346', '136', 'MU', 'Grand Port', null, null);
INSERT INTO `cities` VALUES ('2347', '136', 'MU', 'Moka', null, null);
INSERT INTO `cities` VALUES ('2348', '136', 'MU', 'Pamplemousses', null, null);
INSERT INTO `cities` VALUES ('2349', '136', 'MU', 'Plaines Wilhems', null, null);
INSERT INTO `cities` VALUES ('2350', '136', 'MU', 'Port Louis', null, null);
INSERT INTO `cities` VALUES ('2351', '136', 'MU', 'Riviere du Rempart', null, null);
INSERT INTO `cities` VALUES ('2352', '136', 'MU', 'Savanne', null, null);
INSERT INTO `cities` VALUES ('2353', '136', 'MU', 'Agalega Islands', null, null);
INSERT INTO `cities` VALUES ('2354', '136', 'MU', 'Cargados Carajos', null, null);
INSERT INTO `cities` VALUES ('2355', '136', 'MU', 'Rodrigues', null, null);
INSERT INTO `cities` VALUES ('2356', '130', 'MV', 'Seenu', null, null);
INSERT INTO `cities` VALUES ('2357', '130', 'MV', 'Laamu', null, null);
INSERT INTO `cities` VALUES ('2358', '130', 'MV', 'Alifu', null, null);
INSERT INTO `cities` VALUES ('2359', '130', 'MV', 'Baa', null, null);
INSERT INTO `cities` VALUES ('2360', '130', 'MV', 'Dhaalu', null, null);
INSERT INTO `cities` VALUES ('2361', '130', 'MV', 'Faafu ', null, null);
INSERT INTO `cities` VALUES ('2362', '130', 'MV', 'Gaafu Alifu', null, null);
INSERT INTO `cities` VALUES ('2363', '130', 'MV', 'Gaafu Dhaalu', null, null);
INSERT INTO `cities` VALUES ('2364', '130', 'MV', 'Haa Alifu', null, null);
INSERT INTO `cities` VALUES ('2365', '130', 'MV', 'Haa Dhaalu', null, null);
INSERT INTO `cities` VALUES ('2366', '130', 'MV', 'Kaafu', null, null);
INSERT INTO `cities` VALUES ('2367', '130', 'MV', 'Lhaviyani', null, null);
INSERT INTO `cities` VALUES ('2368', '130', 'MV', 'Maale', null, null);
INSERT INTO `cities` VALUES ('2369', '130', 'MV', 'Meemu', null, null);
INSERT INTO `cities` VALUES ('2370', '130', 'MV', 'Gnaviyani', null, null);
INSERT INTO `cities` VALUES ('2371', '130', 'MV', 'Noonu', null, null);
INSERT INTO `cities` VALUES ('2372', '130', 'MV', 'Raa', null, null);
INSERT INTO `cities` VALUES ('2373', '130', 'MV', 'Shaviyani', null, null);
INSERT INTO `cities` VALUES ('2374', '130', 'MV', 'Thaa', null, null);
INSERT INTO `cities` VALUES ('2375', '130', 'MV', 'Vaavu', null, null);
INSERT INTO `cities` VALUES ('2376', '128', 'MW', 'Chikwawa', null, null);
INSERT INTO `cities` VALUES ('2377', '128', 'MW', 'Chiradzulu', null, null);
INSERT INTO `cities` VALUES ('2378', '128', 'MW', 'Chitipa', null, null);
INSERT INTO `cities` VALUES ('2379', '128', 'MW', 'Thyolo', null, null);
INSERT INTO `cities` VALUES ('2380', '128', 'MW', 'Dedza', null, null);
INSERT INTO `cities` VALUES ('2381', '128', 'MW', 'Dowa', null, null);
INSERT INTO `cities` VALUES ('2382', '128', 'MW', 'Karonga', null, null);
INSERT INTO `cities` VALUES ('2383', '128', 'MW', 'Kasungu', null, null);
INSERT INTO `cities` VALUES ('2384', '128', 'MW', 'Lilongwe', null, null);
INSERT INTO `cities` VALUES ('2385', '128', 'MW', 'Mangochi', null, null);
INSERT INTO `cities` VALUES ('2386', '128', 'MW', 'Mchinji', null, null);
INSERT INTO `cities` VALUES ('2387', '128', 'MW', 'Mzimba', null, null);
INSERT INTO `cities` VALUES ('2388', '128', 'MW', 'Ntcheu', null, null);
INSERT INTO `cities` VALUES ('2389', '128', 'MW', 'Nkhata Bay', null, null);
INSERT INTO `cities` VALUES ('2390', '128', 'MW', 'Nkhotakota', null, null);
INSERT INTO `cities` VALUES ('2391', '128', 'MW', 'Nsanje', null, null);
INSERT INTO `cities` VALUES ('2392', '128', 'MW', 'Ntchisi', null, null);
INSERT INTO `cities` VALUES ('2393', '128', 'MW', 'Rumphi', null, null);
INSERT INTO `cities` VALUES ('2394', '128', 'MW', 'Salima', null, null);
INSERT INTO `cities` VALUES ('2395', '128', 'MW', 'Zomba', null, null);
INSERT INTO `cities` VALUES ('2396', '128', 'MW', 'Blantyre', null, null);
INSERT INTO `cities` VALUES ('2397', '128', 'MW', 'Mwanza', null, null);
INSERT INTO `cities` VALUES ('2398', '128', 'MW', 'Balaka', null, null);
INSERT INTO `cities` VALUES ('2399', '128', 'MW', 'Likoma', null, null);
INSERT INTO `cities` VALUES ('2400', '128', 'MW', 'Machinga', null, null);
INSERT INTO `cities` VALUES ('2401', '128', 'MW', 'Mulanje', null, null);
INSERT INTO `cities` VALUES ('2402', '128', 'MW', 'Phalombe', null, null);
INSERT INTO `cities` VALUES ('2403', '138', 'MX', 'Aguascalientes', null, null);
INSERT INTO `cities` VALUES ('2404', '138', 'MX', 'Baja California', null, null);
INSERT INTO `cities` VALUES ('2405', '138', 'MX', 'Baja California Sur', null, null);
INSERT INTO `cities` VALUES ('2406', '138', 'MX', 'Campeche', null, null);
INSERT INTO `cities` VALUES ('2407', '138', 'MX', 'Chiapas', null, null);
INSERT INTO `cities` VALUES ('2408', '138', 'MX', 'Chihuahua', null, null);
INSERT INTO `cities` VALUES ('2409', '138', 'MX', 'Coahuila de Zaragoza', null, null);
INSERT INTO `cities` VALUES ('2410', '138', 'MX', 'Colima', null, null);
INSERT INTO `cities` VALUES ('2411', '138', 'MX', 'Distrito Federal', null, null);
INSERT INTO `cities` VALUES ('2412', '138', 'MX', 'Durango', null, null);
INSERT INTO `cities` VALUES ('2413', '138', 'MX', 'Guanajuato', null, null);
INSERT INTO `cities` VALUES ('2414', '138', 'MX', 'Guerrero', null, null);
INSERT INTO `cities` VALUES ('2415', '138', 'MX', 'Hidalgo', null, null);
INSERT INTO `cities` VALUES ('2416', '138', 'MX', 'Jalisco', null, null);
INSERT INTO `cities` VALUES ('2417', '138', 'MX', 'Mexico', null, null);
INSERT INTO `cities` VALUES ('2418', '138', 'MX', 'Michoacan de Ocampo', null, null);
INSERT INTO `cities` VALUES ('2419', '138', 'MX', 'Morelos', null, null);
INSERT INTO `cities` VALUES ('2420', '138', 'MX', 'Nayarit', null, null);
INSERT INTO `cities` VALUES ('2421', '138', 'MX', 'Nuevo Leon', null, null);
INSERT INTO `cities` VALUES ('2422', '138', 'MX', 'Oaxaca', null, null);
INSERT INTO `cities` VALUES ('2423', '138', 'MX', 'Puebla', null, null);
INSERT INTO `cities` VALUES ('2424', '138', 'MX', 'Queretaro de Arteaga', null, null);
INSERT INTO `cities` VALUES ('2425', '138', 'MX', 'Quintana Roo', null, null);
INSERT INTO `cities` VALUES ('2426', '138', 'MX', 'San Luis Potosi', null, null);
INSERT INTO `cities` VALUES ('2427', '138', 'MX', 'Sinaloa', null, null);
INSERT INTO `cities` VALUES ('2428', '138', 'MX', 'Sonora', null, null);
INSERT INTO `cities` VALUES ('2429', '138', 'MX', 'Tabasco', null, null);
INSERT INTO `cities` VALUES ('2430', '138', 'MX', 'Tamaulipas', null, null);
INSERT INTO `cities` VALUES ('2431', '138', 'MX', 'Tlaxcala', null, null);
INSERT INTO `cities` VALUES ('2432', '138', 'MX', 'Veracruz-Llave', null, null);
INSERT INTO `cities` VALUES ('2433', '138', 'MX', 'Yucatan', null, null);
INSERT INTO `cities` VALUES ('2434', '138', 'MX', 'Zacatecas', null, null);
INSERT INTO `cities` VALUES ('2435', '129', 'MY', 'Johor', null, null);
INSERT INTO `cities` VALUES ('2436', '129', 'MY', 'Kedah', null, null);
INSERT INTO `cities` VALUES ('2437', '129', 'MY', 'Kelantan', null, null);
INSERT INTO `cities` VALUES ('2438', '129', 'MY', 'Melaka', null, null);
INSERT INTO `cities` VALUES ('2439', '129', 'MY', 'Negeri Sembilan', null, null);
INSERT INTO `cities` VALUES ('2440', '129', 'MY', 'Pahang', null, null);
INSERT INTO `cities` VALUES ('2441', '129', 'MY', 'Perak', null, null);
INSERT INTO `cities` VALUES ('2442', '129', 'MY', 'Perlis', null, null);
INSERT INTO `cities` VALUES ('2443', '129', 'MY', 'Pulau Pinang', null, null);
INSERT INTO `cities` VALUES ('2444', '129', 'MY', 'Sarawak', null, null);
INSERT INTO `cities` VALUES ('2445', '129', 'MY', 'Selangor', null, null);
INSERT INTO `cities` VALUES ('2446', '129', 'MY', 'Terengganu', null, null);
INSERT INTO `cities` VALUES ('2447', '129', 'MY', 'Kuala Lumpur', null, null);
INSERT INTO `cities` VALUES ('2448', '129', 'MY', 'Labuan', null, null);
INSERT INTO `cities` VALUES ('2449', '129', 'MY', 'Sabah', null, null);
INSERT INTO `cities` VALUES ('2450', '129', 'MY', 'Putrajaya', null, null);
INSERT INTO `cities` VALUES ('2451', '145', 'MZ', 'Cabo Delgado', null, null);
INSERT INTO `cities` VALUES ('2452', '145', 'MZ', 'Gaza', null, null);
INSERT INTO `cities` VALUES ('2453', '145', 'MZ', 'Inhambane', null, null);
INSERT INTO `cities` VALUES ('2454', '145', 'MZ', 'Maputo', null, null);
INSERT INTO `cities` VALUES ('2455', '145', 'MZ', 'Sofala', null, null);
INSERT INTO `cities` VALUES ('2456', '145', 'MZ', 'Nampula', null, null);
INSERT INTO `cities` VALUES ('2457', '145', 'MZ', 'Niassa', null, null);
INSERT INTO `cities` VALUES ('2458', '145', 'MZ', 'Tete', null, null);
INSERT INTO `cities` VALUES ('2459', '145', 'MZ', 'Zambezia', null, null);
INSERT INTO `cities` VALUES ('2460', '145', 'MZ', 'Manica', null, null);
INSERT INTO `cities` VALUES ('2461', '145', 'MZ', 'Maputo', null, null);
INSERT INTO `cities` VALUES ('2462', '147', 'NA', 'Bethanien', null, null);
INSERT INTO `cities` VALUES ('2463', '147', 'NA', 'Caprivi Oos', null, null);
INSERT INTO `cities` VALUES ('2464', '147', 'NA', 'Boesmanland', null, null);
INSERT INTO `cities` VALUES ('2465', '147', 'NA', 'Gobabis', null, null);
INSERT INTO `cities` VALUES ('2466', '147', 'NA', 'Grootfontein', null, null);
INSERT INTO `cities` VALUES ('2467', '147', 'NA', 'Kaokoland', null, null);
INSERT INTO `cities` VALUES ('2468', '147', 'NA', 'Karibib', null, null);
INSERT INTO `cities` VALUES ('2469', '147', 'NA', 'Keetmanshoop', null, null);
INSERT INTO `cities` VALUES ('2470', '147', 'NA', 'Luderitz', null, null);
INSERT INTO `cities` VALUES ('2471', '147', 'NA', 'Maltahohe', null, null);
INSERT INTO `cities` VALUES ('2472', '147', 'NA', 'Okahandja', null, null);
INSERT INTO `cities` VALUES ('2473', '147', 'NA', 'Omaruru', null, null);
INSERT INTO `cities` VALUES ('2474', '147', 'NA', 'Otjiwarongo', null, null);
INSERT INTO `cities` VALUES ('2475', '147', 'NA', 'Outjo', null, null);
INSERT INTO `cities` VALUES ('2476', '147', 'NA', 'Owambo', null, null);
INSERT INTO `cities` VALUES ('2477', '147', 'NA', 'Rehoboth', null, null);
INSERT INTO `cities` VALUES ('2478', '147', 'NA', 'Swakopmund', null, null);
INSERT INTO `cities` VALUES ('2479', '147', 'NA', 'Tsumeb', null, null);
INSERT INTO `cities` VALUES ('2480', '147', 'NA', 'Karasburg', null, null);
INSERT INTO `cities` VALUES ('2481', '147', 'NA', 'Windhoek', null, null);
INSERT INTO `cities` VALUES ('2482', '147', 'NA', 'Damaraland', null, null);
INSERT INTO `cities` VALUES ('2483', '147', 'NA', 'Hereroland Oos', null, null);
INSERT INTO `cities` VALUES ('2484', '147', 'NA', 'Hereroland Wes', null, null);
INSERT INTO `cities` VALUES ('2485', '147', 'NA', 'Kavango', null, null);
INSERT INTO `cities` VALUES ('2486', '147', 'NA', 'Mariental', null, null);
INSERT INTO `cities` VALUES ('2487', '147', 'NA', 'Namaland', null, null);
INSERT INTO `cities` VALUES ('2488', '147', 'NA', 'Caprivi', null, null);
INSERT INTO `cities` VALUES ('2489', '147', 'NA', 'Erongo', null, null);
INSERT INTO `cities` VALUES ('2490', '147', 'NA', 'Hardap', null, null);
INSERT INTO `cities` VALUES ('2491', '147', 'NA', 'Karas', null, null);
INSERT INTO `cities` VALUES ('2492', '147', 'NA', 'Kunene', null, null);
INSERT INTO `cities` VALUES ('2493', '147', 'NA', 'Ohangwena', null, null);
INSERT INTO `cities` VALUES ('2494', '147', 'NA', 'Okavango', null, null);
INSERT INTO `cities` VALUES ('2495', '147', 'NA', 'Omaheke', null, null);
INSERT INTO `cities` VALUES ('2496', '147', 'NA', 'Omusati', null, null);
INSERT INTO `cities` VALUES ('2497', '147', 'NA', 'Oshana', null, null);
INSERT INTO `cities` VALUES ('2498', '147', 'NA', 'Oshikoto', null, null);
INSERT INTO `cities` VALUES ('2499', '147', 'NA', 'Otjozondjupa', null, null);
INSERT INTO `cities` VALUES ('2500', '155', 'NE', 'Agadez', null, null);
INSERT INTO `cities` VALUES ('2501', '155', 'NE', 'Diffa', null, null);
INSERT INTO `cities` VALUES ('2502', '155', 'NE', 'Dosso', null, null);
INSERT INTO `cities` VALUES ('2503', '155', 'NE', 'Maradi', null, null);
INSERT INTO `cities` VALUES ('2504', '155', 'NE', 'Niamey', null, null);
INSERT INTO `cities` VALUES ('2505', '155', 'NE', 'Tahoua', null, null);
INSERT INTO `cities` VALUES ('2506', '155', 'NE', 'Zinder', null, null);
INSERT INTO `cities` VALUES ('2507', '155', 'NE', 'Niamey', null, null);
INSERT INTO `cities` VALUES ('2508', '156', 'NG', 'Lagos', null, null);
INSERT INTO `cities` VALUES ('2509', '156', 'NG', 'Federal Capital Territory', null, null);
INSERT INTO `cities` VALUES ('2510', '156', 'NG', 'Ogun', null, null);
INSERT INTO `cities` VALUES ('2511', '156', 'NG', 'Akwa Ibom', null, null);
INSERT INTO `cities` VALUES ('2512', '156', 'NG', 'Cross River', null, null);
INSERT INTO `cities` VALUES ('2513', '156', 'NG', 'Kaduna', null, null);
INSERT INTO `cities` VALUES ('2514', '156', 'NG', 'Katsina', null, null);
INSERT INTO `cities` VALUES ('2515', '156', 'NG', 'Anambra', null, null);
INSERT INTO `cities` VALUES ('2516', '156', 'NG', 'Benue', null, null);
INSERT INTO `cities` VALUES ('2517', '156', 'NG', 'Borno', null, null);
INSERT INTO `cities` VALUES ('2518', '156', 'NG', 'Imo', null, null);
INSERT INTO `cities` VALUES ('2519', '156', 'NG', 'Kano', null, null);
INSERT INTO `cities` VALUES ('2520', '156', 'NG', 'Kwara', null, null);
INSERT INTO `cities` VALUES ('2521', '156', 'NG', 'Niger', null, null);
INSERT INTO `cities` VALUES ('2522', '156', 'NG', 'Oyo', null, null);
INSERT INTO `cities` VALUES ('2523', '156', 'NG', 'Adamawa', null, null);
INSERT INTO `cities` VALUES ('2524', '156', 'NG', 'Delta', null, null);
INSERT INTO `cities` VALUES ('2525', '156', 'NG', 'Edo', null, null);
INSERT INTO `cities` VALUES ('2526', '156', 'NG', 'Jigawa', null, null);
INSERT INTO `cities` VALUES ('2527', '156', 'NG', 'Kebbi', null, null);
INSERT INTO `cities` VALUES ('2528', '156', 'NG', 'Kogi', null, null);
INSERT INTO `cities` VALUES ('2529', '156', 'NG', 'Osun', null, null);
INSERT INTO `cities` VALUES ('2530', '156', 'NG', 'Taraba', null, null);
INSERT INTO `cities` VALUES ('2531', '156', 'NG', 'Yobe', null, null);
INSERT INTO `cities` VALUES ('2532', '156', 'NG', 'Abia', null, null);
INSERT INTO `cities` VALUES ('2533', '156', 'NG', 'Bauchi', null, null);
INSERT INTO `cities` VALUES ('2534', '156', 'NG', 'Enugu', null, null);
INSERT INTO `cities` VALUES ('2535', '156', 'NG', 'Ondo', null, null);
INSERT INTO `cities` VALUES ('2536', '156', 'NG', 'Plateau', null, null);
INSERT INTO `cities` VALUES ('2537', '156', 'NG', 'Rivers', null, null);
INSERT INTO `cities` VALUES ('2538', '156', 'NG', 'Sokoto', null, null);
INSERT INTO `cities` VALUES ('2539', '156', 'NG', 'Bayelsa', null, null);
INSERT INTO `cities` VALUES ('2540', '156', 'NG', 'Ebonyi', null, null);
INSERT INTO `cities` VALUES ('2541', '156', 'NG', 'Ekiti', null, null);
INSERT INTO `cities` VALUES ('2542', '156', 'NG', 'Gombe', null, null);
INSERT INTO `cities` VALUES ('2543', '156', 'NG', 'Nassarawa', null, null);
INSERT INTO `cities` VALUES ('2544', '156', 'NG', 'Zamfara', null, null);
INSERT INTO `cities` VALUES ('2545', '154', 'NI', 'Boaco', null, null);
INSERT INTO `cities` VALUES ('2546', '154', 'NI', 'Carazo', null, null);
INSERT INTO `cities` VALUES ('2547', '154', 'NI', 'Chinandega', null, null);
INSERT INTO `cities` VALUES ('2548', '154', 'NI', 'Chontales', null, null);
INSERT INTO `cities` VALUES ('2549', '154', 'NI', 'Esteli', null, null);
INSERT INTO `cities` VALUES ('2550', '154', 'NI', 'Granada', null, null);
INSERT INTO `cities` VALUES ('2551', '154', 'NI', 'Jinotega', null, null);
INSERT INTO `cities` VALUES ('2552', '154', 'NI', 'Leon', null, null);
INSERT INTO `cities` VALUES ('2553', '154', 'NI', 'Madriz', null, null);
INSERT INTO `cities` VALUES ('2554', '154', 'NI', 'Managua', null, null);
INSERT INTO `cities` VALUES ('2555', '154', 'NI', 'Masaya', null, null);
INSERT INTO `cities` VALUES ('2556', '154', 'NI', 'Matagalpa', null, null);
INSERT INTO `cities` VALUES ('2557', '154', 'NI', 'Nueva Segovia', null, null);
INSERT INTO `cities` VALUES ('2558', '154', 'NI', 'Rio San Juan', null, null);
INSERT INTO `cities` VALUES ('2559', '154', 'NI', 'Rivas', null, null);
INSERT INTO `cities` VALUES ('2560', '154', 'NI', 'Zelaya', null, null);
INSERT INTO `cities` VALUES ('2561', '154', 'NI', 'Autonoma Atlantico Norte', null, null);
INSERT INTO `cities` VALUES ('2562', '154', 'NI', 'Region Autonoma Atlantico Sur', null, null);
INSERT INTO `cities` VALUES ('2563', '150', 'NL', 'Drenthe', null, null);
INSERT INTO `cities` VALUES ('2564', '150', 'NL', 'Friesland', null, null);
INSERT INTO `cities` VALUES ('2565', '150', 'NL', 'Gelderland', null, null);
INSERT INTO `cities` VALUES ('2566', '150', 'NL', 'Groningen', null, null);
INSERT INTO `cities` VALUES ('2567', '150', 'NL', 'Limburg', null, null);
INSERT INTO `cities` VALUES ('2568', '150', 'NL', 'Noord-Brabant', null, null);
INSERT INTO `cities` VALUES ('2569', '150', 'NL', 'Noord-Holland', null, null);
INSERT INTO `cities` VALUES ('2570', '150', 'NL', 'Utrecht', null, null);
INSERT INTO `cities` VALUES ('2571', '150', 'NL', 'Zeeland', null, null);
INSERT INTO `cities` VALUES ('2572', '150', 'NL', 'Zuid-Holland', null, null);
INSERT INTO `cities` VALUES ('2573', '150', 'NL', 'Overijssel', null, null);
INSERT INTO `cities` VALUES ('2574', '150', 'NL', 'Flevoland', null, null);
INSERT INTO `cities` VALUES ('2575', '160', 'NO', 'Akershus', null, null);
INSERT INTO `cities` VALUES ('2576', '160', 'NO', 'Aust-Agder', null, null);
INSERT INTO `cities` VALUES ('2577', '160', 'NO', 'Buskerud', null, null);
INSERT INTO `cities` VALUES ('2578', '160', 'NO', 'Finnmark', null, null);
INSERT INTO `cities` VALUES ('2579', '160', 'NO', 'Hedmark', null, null);
INSERT INTO `cities` VALUES ('2580', '160', 'NO', 'Hordaland', null, null);
INSERT INTO `cities` VALUES ('2581', '160', 'NO', 'More og Romsdal', null, null);
INSERT INTO `cities` VALUES ('2582', '160', 'NO', 'Nordland', null, null);
INSERT INTO `cities` VALUES ('2583', '160', 'NO', 'Nord-Trondelag', null, null);
INSERT INTO `cities` VALUES ('2584', '160', 'NO', 'Oppland', null, null);
INSERT INTO `cities` VALUES ('2585', '160', 'NO', 'Oslo', null, null);
INSERT INTO `cities` VALUES ('2586', '160', 'NO', 'Ostfold', null, null);
INSERT INTO `cities` VALUES ('2587', '160', 'NO', 'Rogaland', null, null);
INSERT INTO `cities` VALUES ('2588', '160', 'NO', 'Sogn og Fjordane', null, null);
INSERT INTO `cities` VALUES ('2589', '160', 'NO', 'Sor-Trondelag', null, null);
INSERT INTO `cities` VALUES ('2590', '160', 'NO', 'Telemark', null, null);
INSERT INTO `cities` VALUES ('2591', '160', 'NO', 'Troms', null, null);
INSERT INTO `cities` VALUES ('2592', '160', 'NO', 'Vest-Agder', null, null);
INSERT INTO `cities` VALUES ('2593', '160', 'NO', 'Vestfold', null, null);
INSERT INTO `cities` VALUES ('2594', '149', 'NP', 'Bagmati', null, null);
INSERT INTO `cities` VALUES ('2595', '149', 'NP', 'Bheri', null, null);
INSERT INTO `cities` VALUES ('2596', '149', 'NP', 'Dhawalagiri', null, null);
INSERT INTO `cities` VALUES ('2597', '149', 'NP', 'Gandaki', null, null);
INSERT INTO `cities` VALUES ('2598', '149', 'NP', 'Janakpur', null, null);
INSERT INTO `cities` VALUES ('2599', '149', 'NP', 'Karnali', null, null);
INSERT INTO `cities` VALUES ('2600', '149', 'NP', 'Kosi', null, null);
INSERT INTO `cities` VALUES ('2601', '149', 'NP', 'Lumbini', null, null);
INSERT INTO `cities` VALUES ('2602', '149', 'NP', 'Mahakali', null, null);
INSERT INTO `cities` VALUES ('2603', '149', 'NP', 'Mechi', null, null);
INSERT INTO `cities` VALUES ('2604', '149', 'NP', 'Narayani', null, null);
INSERT INTO `cities` VALUES ('2605', '149', 'NP', 'Rapti', null, null);
INSERT INTO `cities` VALUES ('2606', '149', 'NP', 'Sagarmatha', null, null);
INSERT INTO `cities` VALUES ('2607', '149', 'NP', 'Seti', null, null);
INSERT INTO `cities` VALUES ('2608', '148', 'NR', 'Aiwo', null, null);
INSERT INTO `cities` VALUES ('2609', '148', 'NR', 'Anabar', null, null);
INSERT INTO `cities` VALUES ('2610', '148', 'NR', 'Anetan', null, null);
INSERT INTO `cities` VALUES ('2611', '148', 'NR', 'Anibare', null, null);
INSERT INTO `cities` VALUES ('2612', '148', 'NR', 'Baiti', null, null);
INSERT INTO `cities` VALUES ('2613', '148', 'NR', 'Boe', null, null);
INSERT INTO `cities` VALUES ('2614', '148', 'NR', 'Buada', null, null);
INSERT INTO `cities` VALUES ('2615', '148', 'NR', 'Denigomodu', null, null);
INSERT INTO `cities` VALUES ('2616', '148', 'NR', 'Ewa', null, null);
INSERT INTO `cities` VALUES ('2617', '148', 'NR', 'Ijuw', null, null);
INSERT INTO `cities` VALUES ('2618', '148', 'NR', 'Meneng', null, null);
INSERT INTO `cities` VALUES ('2619', '148', 'NR', 'Nibok', null, null);
INSERT INTO `cities` VALUES ('2620', '148', 'NR', 'Uaboe', null, null);
INSERT INTO `cities` VALUES ('2621', '148', 'NR', 'Yaren', null, null);
INSERT INTO `cities` VALUES ('2622', '153', 'NZ', 'Chatham Islands', null, null);
INSERT INTO `cities` VALUES ('2623', '153', 'NZ', 'Auckland', null, null);
INSERT INTO `cities` VALUES ('2624', '153', 'NZ', 'Bay of Plenty', null, null);
INSERT INTO `cities` VALUES ('2625', '153', 'NZ', 'Canterbury', null, null);
INSERT INTO `cities` VALUES ('2626', '153', 'NZ', 'Gisborne', null, null);
INSERT INTO `cities` VALUES ('2627', '153', 'NZ', 'Hawke\'s Bay', null, null);
INSERT INTO `cities` VALUES ('2628', '153', 'NZ', 'Manawatu-Wanganui', null, null);
INSERT INTO `cities` VALUES ('2629', '153', 'NZ', 'Marlborough', null, null);
INSERT INTO `cities` VALUES ('2630', '153', 'NZ', 'Nelson', null, null);
INSERT INTO `cities` VALUES ('2631', '153', 'NZ', 'Northland', null, null);
INSERT INTO `cities` VALUES ('2632', '153', 'NZ', 'Otago', null, null);
INSERT INTO `cities` VALUES ('2633', '153', 'NZ', 'Southland', null, null);
INSERT INTO `cities` VALUES ('2634', '153', 'NZ', 'Taranaki', null, null);
INSERT INTO `cities` VALUES ('2635', '153', 'NZ', 'Waikato', null, null);
INSERT INTO `cities` VALUES ('2636', '153', 'NZ', 'Wellington', null, null);
INSERT INTO `cities` VALUES ('2637', '153', 'NZ', 'West Coast', null, null);
INSERT INTO `cities` VALUES ('2638', '161', 'OM', 'Ad Dakhiliyah', null, null);
INSERT INTO `cities` VALUES ('2639', '161', 'OM', 'Al Batinah', null, null);
INSERT INTO `cities` VALUES ('2640', '161', 'OM', 'Al Wusta', null, null);
INSERT INTO `cities` VALUES ('2641', '161', 'OM', 'Ash Sharqiyah', null, null);
INSERT INTO `cities` VALUES ('2642', '161', 'OM', 'Az Zahirah', null, null);
INSERT INTO `cities` VALUES ('2643', '161', 'OM', 'Masqat', null, null);
INSERT INTO `cities` VALUES ('2644', '161', 'OM', 'Musandam', null, null);
INSERT INTO `cities` VALUES ('2645', '161', 'OM', 'Zufar', null, null);
INSERT INTO `cities` VALUES ('2646', '164', 'PA', 'Bocas del Toro', null, null);
INSERT INTO `cities` VALUES ('2647', '164', 'PA', 'Chiriqui', null, null);
INSERT INTO `cities` VALUES ('2648', '164', 'PA', 'Cocle', null, null);
INSERT INTO `cities` VALUES ('2649', '164', 'PA', 'Colon', null, null);
INSERT INTO `cities` VALUES ('2650', '164', 'PA', 'Darien', null, null);
INSERT INTO `cities` VALUES ('2651', '164', 'PA', 'Herrera', null, null);
INSERT INTO `cities` VALUES ('2652', '164', 'PA', 'Los Santos', null, null);
INSERT INTO `cities` VALUES ('2653', '164', 'PA', 'Panama', null, null);
INSERT INTO `cities` VALUES ('2654', '164', 'PA', 'San Blas', null, null);
INSERT INTO `cities` VALUES ('2655', '164', 'PA', 'Veraguas', null, null);
INSERT INTO `cities` VALUES ('2656', '167', 'PE', 'Amazonas', null, null);
INSERT INTO `cities` VALUES ('2657', '167', 'PE', 'Ancash', null, null);
INSERT INTO `cities` VALUES ('2658', '167', 'PE', 'Apurimac', null, null);
INSERT INTO `cities` VALUES ('2659', '167', 'PE', 'Arequipa', null, null);
INSERT INTO `cities` VALUES ('2660', '167', 'PE', 'Ayacucho', null, null);
INSERT INTO `cities` VALUES ('2661', '167', 'PE', 'Cajamarca', null, null);
INSERT INTO `cities` VALUES ('2662', '167', 'PE', 'Callao', null, null);
INSERT INTO `cities` VALUES ('2663', '167', 'PE', 'Cusco', null, null);
INSERT INTO `cities` VALUES ('2664', '167', 'PE', 'Huancavelica', null, null);
INSERT INTO `cities` VALUES ('2665', '167', 'PE', 'Huanuco', null, null);
INSERT INTO `cities` VALUES ('2666', '167', 'PE', 'Ica', null, null);
INSERT INTO `cities` VALUES ('2667', '167', 'PE', 'Junin', null, null);
INSERT INTO `cities` VALUES ('2668', '167', 'PE', 'La Libertad', null, null);
INSERT INTO `cities` VALUES ('2669', '167', 'PE', 'Lambayeque', null, null);
INSERT INTO `cities` VALUES ('2670', '167', 'PE', 'Lima', null, null);
INSERT INTO `cities` VALUES ('2671', '167', 'PE', 'Loreto', null, null);
INSERT INTO `cities` VALUES ('2672', '167', 'PE', 'Madre de Dios', null, null);
INSERT INTO `cities` VALUES ('2673', '167', 'PE', 'Moquegua', null, null);
INSERT INTO `cities` VALUES ('2674', '167', 'PE', 'Pasco', null, null);
INSERT INTO `cities` VALUES ('2675', '167', 'PE', 'Piura', null, null);
INSERT INTO `cities` VALUES ('2676', '167', 'PE', 'Puno', null, null);
INSERT INTO `cities` VALUES ('2677', '167', 'PE', 'San Martin', null, null);
INSERT INTO `cities` VALUES ('2678', '167', 'PE', 'Tacna', null, null);
INSERT INTO `cities` VALUES ('2679', '167', 'PE', 'Tumbes', null, null);
INSERT INTO `cities` VALUES ('2680', '167', 'PE', 'Ucayali', null, null);
INSERT INTO `cities` VALUES ('2681', '165', 'PG', 'Central', null, null);
INSERT INTO `cities` VALUES ('2682', '165', 'PG', 'Gulf', null, null);
INSERT INTO `cities` VALUES ('2683', '165', 'PG', 'Milne Bay', null, null);
INSERT INTO `cities` VALUES ('2684', '165', 'PG', 'Northern', null, null);
INSERT INTO `cities` VALUES ('2685', '165', 'PG', 'Southern Highlands', null, null);
INSERT INTO `cities` VALUES ('2686', '165', 'PG', 'Western', null, null);
INSERT INTO `cities` VALUES ('2687', '165', 'PG', 'North Solomons', null, null);
INSERT INTO `cities` VALUES ('2688', '165', 'PG', 'Chimbu', null, null);
INSERT INTO `cities` VALUES ('2689', '165', 'PG', 'Eastern Highlands', null, null);
INSERT INTO `cities` VALUES ('2690', '165', 'PG', 'East New Britain', null, null);
INSERT INTO `cities` VALUES ('2691', '165', 'PG', 'East Sepik', null, null);
INSERT INTO `cities` VALUES ('2692', '165', 'PG', 'Madang', null, null);
INSERT INTO `cities` VALUES ('2693', '165', 'PG', 'Manus', null, null);
INSERT INTO `cities` VALUES ('2694', '165', 'PG', 'Morobe', null, null);
INSERT INTO `cities` VALUES ('2695', '165', 'PG', 'New Ireland', null, null);
INSERT INTO `cities` VALUES ('2696', '165', 'PG', 'Western Highlands', null, null);
INSERT INTO `cities` VALUES ('2697', '165', 'PG', 'West New Britain', null, null);
INSERT INTO `cities` VALUES ('2698', '165', 'PG', 'Sandaun', null, null);
INSERT INTO `cities` VALUES ('2699', '165', 'PG', 'Enga', null, null);
INSERT INTO `cities` VALUES ('2700', '165', 'PG', 'National Capital', null, null);
INSERT INTO `cities` VALUES ('2701', '168', 'PH', 'Abra', null, null);
INSERT INTO `cities` VALUES ('2702', '168', 'PH', 'Agusan del Norte', null, null);
INSERT INTO `cities` VALUES ('2703', '168', 'PH', 'Agusan del Sur', null, null);
INSERT INTO `cities` VALUES ('2704', '168', 'PH', 'Aklan', null, null);
INSERT INTO `cities` VALUES ('2705', '168', 'PH', 'Albay', null, null);
INSERT INTO `cities` VALUES ('2706', '168', 'PH', 'Antique', null, null);
INSERT INTO `cities` VALUES ('2707', '168', 'PH', 'Bataan', null, null);
INSERT INTO `cities` VALUES ('2708', '168', 'PH', 'Batanes', null, null);
INSERT INTO `cities` VALUES ('2709', '168', 'PH', 'Batangas', null, null);
INSERT INTO `cities` VALUES ('2710', '168', 'PH', 'Benguet', null, null);
INSERT INTO `cities` VALUES ('2711', '168', 'PH', 'Bohol', null, null);
INSERT INTO `cities` VALUES ('2712', '168', 'PH', 'Bukidnon', null, null);
INSERT INTO `cities` VALUES ('2713', '168', 'PH', 'Bulacan', null, null);
INSERT INTO `cities` VALUES ('2714', '168', 'PH', 'Cagayan', null, null);
INSERT INTO `cities` VALUES ('2715', '168', 'PH', 'Camarines Norte', null, null);
INSERT INTO `cities` VALUES ('2716', '168', 'PH', 'Camarines Sur', null, null);
INSERT INTO `cities` VALUES ('2717', '168', 'PH', 'Camiguin', null, null);
INSERT INTO `cities` VALUES ('2718', '168', 'PH', 'Capiz', null, null);
INSERT INTO `cities` VALUES ('2719', '168', 'PH', 'Catanduanes', null, null);
INSERT INTO `cities` VALUES ('2720', '168', 'PH', 'Cavite', null, null);
INSERT INTO `cities` VALUES ('2721', '168', 'PH', 'Cebu', null, null);
INSERT INTO `cities` VALUES ('2722', '168', 'PH', 'Basilan', null, null);
INSERT INTO `cities` VALUES ('2723', '168', 'PH', 'Eastern Samar', null, null);
INSERT INTO `cities` VALUES ('2724', '168', 'PH', 'Davao', null, null);
INSERT INTO `cities` VALUES ('2725', '168', 'PH', 'Davao del Sur', null, null);
INSERT INTO `cities` VALUES ('2726', '168', 'PH', 'Davao Oriental', null, null);
INSERT INTO `cities` VALUES ('2727', '168', 'PH', 'Ifugao', null, null);
INSERT INTO `cities` VALUES ('2728', '168', 'PH', 'Ilocos Norte', null, null);
INSERT INTO `cities` VALUES ('2729', '168', 'PH', 'Ilocos Sur', null, null);
INSERT INTO `cities` VALUES ('2730', '168', 'PH', 'Iloilo', null, null);
INSERT INTO `cities` VALUES ('2731', '168', 'PH', 'Isabela', null, null);
INSERT INTO `cities` VALUES ('2732', '168', 'PH', 'Kalinga-Apayao', null, null);
INSERT INTO `cities` VALUES ('2733', '168', 'PH', 'Laguna', null, null);
INSERT INTO `cities` VALUES ('2734', '168', 'PH', 'Lanao del Norte', null, null);
INSERT INTO `cities` VALUES ('2735', '168', 'PH', 'Lanao del Sur', null, null);
INSERT INTO `cities` VALUES ('2736', '168', 'PH', 'La Union', null, null);
INSERT INTO `cities` VALUES ('2737', '168', 'PH', 'Leyte', null, null);
INSERT INTO `cities` VALUES ('2738', '168', 'PH', 'Marinduque', null, null);
INSERT INTO `cities` VALUES ('2739', '168', 'PH', 'Masbate', null, null);
INSERT INTO `cities` VALUES ('2740', '168', 'PH', 'Mindoro Occidental', null, null);
INSERT INTO `cities` VALUES ('2741', '168', 'PH', 'Mindoro Oriental', null, null);
INSERT INTO `cities` VALUES ('2742', '168', 'PH', 'Misamis Occidental', null, null);
INSERT INTO `cities` VALUES ('2743', '168', 'PH', 'Misamis Oriental', null, null);
INSERT INTO `cities` VALUES ('2744', '168', 'PH', 'Mountain', null, null);
INSERT INTO `cities` VALUES ('2745', '168', 'PH', 'Negros Occidental', null, null);
INSERT INTO `cities` VALUES ('2746', '168', 'PH', 'Negros Oriental', null, null);
INSERT INTO `cities` VALUES ('2747', '168', 'PH', 'Nueva Ecija', null, null);
INSERT INTO `cities` VALUES ('2748', '168', 'PH', 'Nueva Vizcaya', null, null);
INSERT INTO `cities` VALUES ('2749', '168', 'PH', 'Palawan', null, null);
INSERT INTO `cities` VALUES ('2750', '168', 'PH', 'Pampanga', null, null);
INSERT INTO `cities` VALUES ('2751', '168', 'PH', 'Pangasinan', null, null);
INSERT INTO `cities` VALUES ('2752', '168', 'PH', 'Rizal', null, null);
INSERT INTO `cities` VALUES ('2753', '168', 'PH', 'Romblon', null, null);
INSERT INTO `cities` VALUES ('2754', '168', 'PH', 'Samar', null, null);
INSERT INTO `cities` VALUES ('2755', '168', 'PH', 'Maguindanao', null, null);
INSERT INTO `cities` VALUES ('2756', '168', 'PH', 'North Cotabato', null, null);
INSERT INTO `cities` VALUES ('2757', '168', 'PH', 'Sorsogon', null, null);
INSERT INTO `cities` VALUES ('2758', '168', 'PH', 'Southern Leyte', null, null);
INSERT INTO `cities` VALUES ('2759', '168', 'PH', 'Sulu', null, null);
INSERT INTO `cities` VALUES ('2760', '168', 'PH', 'Surigao del Norte', null, null);
INSERT INTO `cities` VALUES ('2761', '168', 'PH', 'Surigao del Sur', null, null);
INSERT INTO `cities` VALUES ('2762', '168', 'PH', 'Tarlac', null, null);
INSERT INTO `cities` VALUES ('2763', '168', 'PH', 'Zambales', null, null);
INSERT INTO `cities` VALUES ('2764', '168', 'PH', 'Zamboanga del Norte', null, null);
INSERT INTO `cities` VALUES ('2765', '168', 'PH', 'Zamboanga del Sur', null, null);
INSERT INTO `cities` VALUES ('2766', '168', 'PH', 'Northern Samar', null, null);
INSERT INTO `cities` VALUES ('2767', '168', 'PH', 'Quirino', null, null);
INSERT INTO `cities` VALUES ('2768', '168', 'PH', 'Siquijor', null, null);
INSERT INTO `cities` VALUES ('2769', '168', 'PH', 'South Cotabato', null, null);
INSERT INTO `cities` VALUES ('2770', '168', 'PH', 'Sultan Kudarat', null, null);
INSERT INTO `cities` VALUES ('2771', '168', 'PH', 'Tawitawi', null, null);
INSERT INTO `cities` VALUES ('2772', '168', 'PH', 'Angeles', null, null);
INSERT INTO `cities` VALUES ('2773', '168', 'PH', 'Bacolod', null, null);
INSERT INTO `cities` VALUES ('2774', '168', 'PH', 'Bago', null, null);
INSERT INTO `cities` VALUES ('2775', '168', 'PH', 'Baguio', null, null);
INSERT INTO `cities` VALUES ('2776', '168', 'PH', 'Bais', null, null);
INSERT INTO `cities` VALUES ('2777', '168', 'PH', 'Basilan City', null, null);
INSERT INTO `cities` VALUES ('2778', '168', 'PH', 'Batangas City', null, null);
INSERT INTO `cities` VALUES ('2779', '168', 'PH', 'Butuan', null, null);
INSERT INTO `cities` VALUES ('2780', '168', 'PH', 'Cabanatuan', null, null);
INSERT INTO `cities` VALUES ('2781', '168', 'PH', 'Cadiz', null, null);
INSERT INTO `cities` VALUES ('2782', '168', 'PH', 'Cagayan de Oro', null, null);
INSERT INTO `cities` VALUES ('2783', '168', 'PH', 'Calbayog', null, null);
INSERT INTO `cities` VALUES ('2784', '168', 'PH', 'Caloocan', null, null);
INSERT INTO `cities` VALUES ('2785', '168', 'PH', 'Canlaon', null, null);
INSERT INTO `cities` VALUES ('2786', '168', 'PH', 'Cavite City', null, null);
INSERT INTO `cities` VALUES ('2787', '168', 'PH', 'Cebu City', null, null);
INSERT INTO `cities` VALUES ('2788', '168', 'PH', 'Cotabato', null, null);
INSERT INTO `cities` VALUES ('2789', '168', 'PH', 'Dagupan', null, null);
INSERT INTO `cities` VALUES ('2790', '168', 'PH', 'Danao', null, null);
INSERT INTO `cities` VALUES ('2791', '168', 'PH', 'Dapitan', null, null);
INSERT INTO `cities` VALUES ('2792', '168', 'PH', 'Davao City', null, null);
INSERT INTO `cities` VALUES ('2793', '168', 'PH', 'Dipolog', null, null);
INSERT INTO `cities` VALUES ('2794', '168', 'PH', 'Dumaguete', null, null);
INSERT INTO `cities` VALUES ('2795', '168', 'PH', 'General Santos', null, null);
INSERT INTO `cities` VALUES ('2796', '168', 'PH', 'Gingoog', null, null);
INSERT INTO `cities` VALUES ('2797', '168', 'PH', 'Iligan', null, null);
INSERT INTO `cities` VALUES ('2798', '168', 'PH', 'Iloilo City', null, null);
INSERT INTO `cities` VALUES ('2799', '168', 'PH', 'Iriga', null, null);
INSERT INTO `cities` VALUES ('2800', '168', 'PH', 'La Carlota', null, null);
INSERT INTO `cities` VALUES ('2801', '168', 'PH', 'Laoag', null, null);
INSERT INTO `cities` VALUES ('2802', '168', 'PH', 'Lapu-Lapu', null, null);
INSERT INTO `cities` VALUES ('2803', '168', 'PH', 'Legaspi', null, null);
INSERT INTO `cities` VALUES ('2804', '168', 'PH', 'Lipa', null, null);
INSERT INTO `cities` VALUES ('2805', '168', 'PH', 'Lucena', null, null);
INSERT INTO `cities` VALUES ('2806', '168', 'PH', 'Mandaue', null, null);
INSERT INTO `cities` VALUES ('2807', '168', 'PH', 'Manila', null, null);
INSERT INTO `cities` VALUES ('2808', '168', 'PH', 'Marawi', null, null);
INSERT INTO `cities` VALUES ('2809', '168', 'PH', 'Naga', null, null);
INSERT INTO `cities` VALUES ('2810', '168', 'PH', 'Olongapo', null, null);
INSERT INTO `cities` VALUES ('2811', '168', 'PH', 'Ormoc', null, null);
INSERT INTO `cities` VALUES ('2812', '168', 'PH', 'Oroquieta', null, null);
INSERT INTO `cities` VALUES ('2813', '168', 'PH', 'Ozamis', null, null);
INSERT INTO `cities` VALUES ('2814', '168', 'PH', 'Pagadian', null, null);
INSERT INTO `cities` VALUES ('2815', '168', 'PH', 'Palayan', null, null);
INSERT INTO `cities` VALUES ('2816', '168', 'PH', 'Pasay', null, null);
INSERT INTO `cities` VALUES ('2817', '168', 'PH', 'Puerto Princesa', null, null);
INSERT INTO `cities` VALUES ('2818', '168', 'PH', 'Quezon City', null, null);
INSERT INTO `cities` VALUES ('2819', '168', 'PH', 'Roxas', null, null);
INSERT INTO `cities` VALUES ('2820', '168', 'PH', 'San Carlos', null, null);
INSERT INTO `cities` VALUES ('2821', '168', 'PH', 'San Carlos', null, null);
INSERT INTO `cities` VALUES ('2822', '168', 'PH', 'San Jose', null, null);
INSERT INTO `cities` VALUES ('2823', '168', 'PH', 'San Pablo', null, null);
INSERT INTO `cities` VALUES ('2824', '168', 'PH', 'Silay', null, null);
INSERT INTO `cities` VALUES ('2825', '168', 'PH', 'Surigao', null, null);
INSERT INTO `cities` VALUES ('2826', '168', 'PH', 'Tacloban', null, null);
INSERT INTO `cities` VALUES ('2827', '168', 'PH', 'Tagaytay', null, null);
INSERT INTO `cities` VALUES ('2828', '168', 'PH', 'Tagbilaran', null, null);
INSERT INTO `cities` VALUES ('2829', '168', 'PH', 'Tangub', null, null);
INSERT INTO `cities` VALUES ('2830', '168', 'PH', 'Toledo', null, null);
INSERT INTO `cities` VALUES ('2831', '168', 'PH', 'Trece Martires', null, null);
INSERT INTO `cities` VALUES ('2832', '168', 'PH', 'Zamboanga', null, null);
INSERT INTO `cities` VALUES ('2833', '168', 'PH', 'Aurora', null, null);
INSERT INTO `cities` VALUES ('2834', '168', 'PH', 'Quezon', null, null);
INSERT INTO `cities` VALUES ('2835', '168', 'PH', 'Negros Occidental', null, null);
INSERT INTO `cities` VALUES ('2836', '168', 'PH', 'Compostela Valley', null, null);
INSERT INTO `cities` VALUES ('2837', '168', 'PH', 'Davao del Norte', null, null);
INSERT INTO `cities` VALUES ('2838', '168', 'PH', 'Himamaylan', null, null);
INSERT INTO `cities` VALUES ('2839', '168', 'PH', 'Kalinga', null, null);
INSERT INTO `cities` VALUES ('2840', '168', 'PH', 'Malaybalay', null, null);
INSERT INTO `cities` VALUES ('2841', '168', 'PH', 'Passi', null, null);
INSERT INTO `cities` VALUES ('2842', '168', 'PH', 'Zambales', null, null);
INSERT INTO `cities` VALUES ('2843', '168', 'PH', 'San Jose del Monte', null, null);
INSERT INTO `cities` VALUES ('2844', '168', 'PH', 'San Juan', null, null);
INSERT INTO `cities` VALUES ('2845', '168', 'PH', 'Santiago', null, null);
INSERT INTO `cities` VALUES ('2846', '168', 'PH', 'Sarangani', null, null);
INSERT INTO `cities` VALUES ('2847', '168', 'PH', 'Sipalay', null, null);
INSERT INTO `cities` VALUES ('2848', '168', 'PH', 'Surigao del Norte', null, null);
INSERT INTO `cities` VALUES ('2849', '168', 'PH', 'Zamboanga', null, null);
INSERT INTO `cities` VALUES ('2850', '162', 'PK', 'Federally Administered Tribal Areas', null, null);
INSERT INTO `cities` VALUES ('2851', '162', 'PK', 'Balochistan', null, null);
INSERT INTO `cities` VALUES ('2852', '162', 'PK', 'North-West Frontier', null, null);
INSERT INTO `cities` VALUES ('2853', '162', 'PK', 'Punjab', null, null);
INSERT INTO `cities` VALUES ('2854', '162', 'PK', 'Sindh', null, null);
INSERT INTO `cities` VALUES ('2855', '162', 'PK', 'Azad Kashmir', null, null);
INSERT INTO `cities` VALUES ('2856', '162', 'PK', 'Northern Areas', null, null);
INSERT INTO `cities` VALUES ('2857', '162', 'PK', 'Islamabad', null, null);
INSERT INTO `cities` VALUES ('2858', '170', 'PL', 'Dolnoslaskie', null, null);
INSERT INTO `cities` VALUES ('2859', '170', 'PL', 'Kujawsko-Pomorskie', null, null);
INSERT INTO `cities` VALUES ('2860', '170', 'PL', 'Lodzkie', null, null);
INSERT INTO `cities` VALUES ('2861', '170', 'PL', 'Lubelskie', null, null);
INSERT INTO `cities` VALUES ('2862', '170', 'PL', 'Lubuskie', null, null);
INSERT INTO `cities` VALUES ('2863', '170', 'PL', 'Malopolskie', null, null);
INSERT INTO `cities` VALUES ('2864', '170', 'PL', 'Mazowieckie', null, null);
INSERT INTO `cities` VALUES ('2865', '170', 'PL', 'Opolskie', null, null);
INSERT INTO `cities` VALUES ('2866', '170', 'PL', 'Podkarpackie', null, null);
INSERT INTO `cities` VALUES ('2867', '170', 'PL', 'Podlaskie', null, null);
INSERT INTO `cities` VALUES ('2868', '170', 'PL', 'Pomorskie', null, null);
INSERT INTO `cities` VALUES ('2869', '170', 'PL', 'Slaskie', null, null);
INSERT INTO `cities` VALUES ('2870', '170', 'PL', 'Swietokrzyskie', null, null);
INSERT INTO `cities` VALUES ('2871', '170', 'PL', 'Warminsko-Mazurskie', null, null);
INSERT INTO `cities` VALUES ('2872', '170', 'PL', 'Wielkopolskie', null, null);
INSERT INTO `cities` VALUES ('2873', '170', 'PL', 'Zachodniopomorskie', null, null);
INSERT INTO `cities` VALUES ('2874', '248', 'PS', 'Gaza', null, null);
INSERT INTO `cities` VALUES ('2875', '248', 'PS', 'West Bank', null, null);
INSERT INTO `cities` VALUES ('2876', '171', 'PT', 'Aveiro', null, null);
INSERT INTO `cities` VALUES ('2877', '171', 'PT', 'Beja', null, null);
INSERT INTO `cities` VALUES ('2878', '171', 'PT', 'Braga', null, null);
INSERT INTO `cities` VALUES ('2879', '171', 'PT', 'Braganca', null, null);
INSERT INTO `cities` VALUES ('2880', '171', 'PT', 'Castelo Branco', null, null);
INSERT INTO `cities` VALUES ('2881', '171', 'PT', 'Coimbra', null, null);
INSERT INTO `cities` VALUES ('2882', '171', 'PT', 'Evora', null, null);
INSERT INTO `cities` VALUES ('2883', '171', 'PT', 'Faro', null, null);
INSERT INTO `cities` VALUES ('2884', '171', 'PT', 'Madeira', null, null);
INSERT INTO `cities` VALUES ('2885', '171', 'PT', 'Guarda', null, null);
INSERT INTO `cities` VALUES ('2886', '171', 'PT', 'Leiria', null, null);
INSERT INTO `cities` VALUES ('2887', '171', 'PT', 'Lisboa', null, null);
INSERT INTO `cities` VALUES ('2888', '171', 'PT', 'Portalegre', null, null);
INSERT INTO `cities` VALUES ('2889', '171', 'PT', 'Porto', null, null);
INSERT INTO `cities` VALUES ('2890', '171', 'PT', 'Santarem', null, null);
INSERT INTO `cities` VALUES ('2891', '171', 'PT', 'Setubal', null, null);
INSERT INTO `cities` VALUES ('2892', '171', 'PT', 'Viana do Castelo', null, null);
INSERT INTO `cities` VALUES ('2893', '171', 'PT', 'Vila Real', null, null);
INSERT INTO `cities` VALUES ('2894', '171', 'PT', 'Viseu', null, null);
INSERT INTO `cities` VALUES ('2895', '171', 'PT', 'Azores', null, null);
INSERT INTO `cities` VALUES ('2896', '166', 'PY', 'Alto Parana', null, null);
INSERT INTO `cities` VALUES ('2897', '166', 'PY', 'Amambay', null, null);
INSERT INTO `cities` VALUES ('2898', '166', 'PY', 'Boqueron', null, null);
INSERT INTO `cities` VALUES ('2899', '166', 'PY', 'Caaguazu', null, null);
INSERT INTO `cities` VALUES ('2900', '166', 'PY', 'Caazapa', null, null);
INSERT INTO `cities` VALUES ('2901', '166', 'PY', 'Central', null, null);
INSERT INTO `cities` VALUES ('2902', '166', 'PY', 'Concepcion', null, null);
INSERT INTO `cities` VALUES ('2903', '166', 'PY', 'Cordillera', null, null);
INSERT INTO `cities` VALUES ('2904', '166', 'PY', 'Guaira', null, null);
INSERT INTO `cities` VALUES ('2905', '166', 'PY', 'Itapua', null, null);
INSERT INTO `cities` VALUES ('2906', '166', 'PY', 'Misiones', null, null);
INSERT INTO `cities` VALUES ('2907', '166', 'PY', 'Neembucu', null, null);
INSERT INTO `cities` VALUES ('2908', '166', 'PY', 'Paraguari', null, null);
INSERT INTO `cities` VALUES ('2909', '166', 'PY', 'Presidente Hayes', null, null);
INSERT INTO `cities` VALUES ('2910', '166', 'PY', 'San Pedro', null, null);
INSERT INTO `cities` VALUES ('2911', '166', 'PY', 'Canindeyu', null, null);
INSERT INTO `cities` VALUES ('2912', '166', 'PY', 'Chaco', null, null);
INSERT INTO `cities` VALUES ('2913', '166', 'PY', 'Nueva Asuncion', null, null);
INSERT INTO `cities` VALUES ('2914', '166', 'PY', 'Alto Paraguay', null, null);
INSERT INTO `cities` VALUES ('2915', '166', 'PY', 'Boqueron', null, null);
INSERT INTO `cities` VALUES ('2916', '173', 'QA', 'Ad Dawhah', null, null);
INSERT INTO `cities` VALUES ('2917', '173', 'QA', 'Al Ghuwariyah', null, null);
INSERT INTO `cities` VALUES ('2918', '173', 'QA', 'Al Jumaliyah', null, null);
INSERT INTO `cities` VALUES ('2919', '173', 'QA', 'Al Khawr', null, null);
INSERT INTO `cities` VALUES ('2920', '173', 'QA', 'Al Wakrah Municipality', null, null);
INSERT INTO `cities` VALUES ('2921', '173', 'QA', 'Ar Rayyan', null, null);
INSERT INTO `cities` VALUES ('2922', '173', 'QA', 'Madinat ach Shamal', null, null);
INSERT INTO `cities` VALUES ('2923', '173', 'QA', 'Umm Salal', null, null);
INSERT INTO `cities` VALUES ('2924', '173', 'QA', 'Al Wakrah', null, null);
INSERT INTO `cities` VALUES ('2925', '173', 'QA', 'Jariyan al Batnah', null, null);
INSERT INTO `cities` VALUES ('2926', '173', 'QA', 'Umm Sa\'id', null, null);
INSERT INTO `cities` VALUES ('2927', '175', 'RO', 'Alba', null, null);
INSERT INTO `cities` VALUES ('2928', '175', 'RO', 'Arad', null, null);
INSERT INTO `cities` VALUES ('2929', '175', 'RO', 'Arges', null, null);
INSERT INTO `cities` VALUES ('2930', '175', 'RO', 'Bacau', null, null);
INSERT INTO `cities` VALUES ('2931', '175', 'RO', 'Bihor', null, null);
INSERT INTO `cities` VALUES ('2932', '175', 'RO', 'Bistrita-Nasaud', null, null);
INSERT INTO `cities` VALUES ('2933', '175', 'RO', 'Botosani', null, null);
INSERT INTO `cities` VALUES ('2934', '175', 'RO', 'Braila', null, null);
INSERT INTO `cities` VALUES ('2935', '175', 'RO', 'Brasov', null, null);
INSERT INTO `cities` VALUES ('2936', '175', 'RO', 'Bucuresti', null, null);
INSERT INTO `cities` VALUES ('2937', '175', 'RO', 'Buzau', null, null);
INSERT INTO `cities` VALUES ('2938', '175', 'RO', 'Caras-Severin', null, null);
INSERT INTO `cities` VALUES ('2939', '175', 'RO', 'Cluj', null, null);
INSERT INTO `cities` VALUES ('2940', '175', 'RO', 'Constanta', null, null);
INSERT INTO `cities` VALUES ('2941', '175', 'RO', 'Covasna', null, null);
INSERT INTO `cities` VALUES ('2942', '175', 'RO', 'Dambovita', null, null);
INSERT INTO `cities` VALUES ('2943', '175', 'RO', 'Dolj', null, null);
INSERT INTO `cities` VALUES ('2944', '175', 'RO', 'Galati', null, null);
INSERT INTO `cities` VALUES ('2945', '175', 'RO', 'Gorj', null, null);
INSERT INTO `cities` VALUES ('2946', '175', 'RO', 'Harghita', null, null);
INSERT INTO `cities` VALUES ('2947', '175', 'RO', 'Hunedoara', null, null);
INSERT INTO `cities` VALUES ('2948', '175', 'RO', 'Ialomita', null, null);
INSERT INTO `cities` VALUES ('2949', '175', 'RO', 'Iasi', null, null);
INSERT INTO `cities` VALUES ('2950', '175', 'RO', 'Maramures', null, null);
INSERT INTO `cities` VALUES ('2951', '175', 'RO', 'Mehedinti', null, null);
INSERT INTO `cities` VALUES ('2952', '175', 'RO', 'Mures', null, null);
INSERT INTO `cities` VALUES ('2953', '175', 'RO', 'Neamt', null, null);
INSERT INTO `cities` VALUES ('2954', '175', 'RO', 'Olt', null, null);
INSERT INTO `cities` VALUES ('2955', '175', 'RO', 'Prahova', null, null);
INSERT INTO `cities` VALUES ('2956', '175', 'RO', 'Salaj', null, null);
INSERT INTO `cities` VALUES ('2957', '175', 'RO', 'Satu Mare', null, null);
INSERT INTO `cities` VALUES ('2958', '175', 'RO', 'Sibiu', null, null);
INSERT INTO `cities` VALUES ('2959', '175', 'RO', 'Suceava', null, null);
INSERT INTO `cities` VALUES ('2960', '175', 'RO', 'Teleorman', null, null);
INSERT INTO `cities` VALUES ('2961', '175', 'RO', 'Timis', null, null);
INSERT INTO `cities` VALUES ('2962', '175', 'RO', 'Tulcea', null, null);
INSERT INTO `cities` VALUES ('2963', '175', 'RO', 'Vaslui', null, null);
INSERT INTO `cities` VALUES ('2964', '175', 'RO', 'Valcea', null, null);
INSERT INTO `cities` VALUES ('2965', '175', 'RO', 'Vrancea', null, null);
INSERT INTO `cities` VALUES ('2966', '175', 'RO', 'Calarasi', null, null);
INSERT INTO `cities` VALUES ('2967', '175', 'RO', 'Giurgiu', null, null);
INSERT INTO `cities` VALUES ('2968', '175', 'RO', 'Ilfov', null, null);
INSERT INTO `cities` VALUES ('2969', '245', 'RS', 'Kosovo', null, null);
INSERT INTO `cities` VALUES ('2970', '245', 'RS', 'Vojvodina', null, null);
INSERT INTO `cities` VALUES ('2971', '176', 'RU', 'Adygeya, Republic of', null, null);
INSERT INTO `cities` VALUES ('2972', '176', 'RU', 'Aginsky Buryatsky AO', null, null);
INSERT INTO `cities` VALUES ('2973', '176', 'RU', 'Gorno-Altay', null, null);
INSERT INTO `cities` VALUES ('2974', '176', 'RU', 'Altaisky krai', null, null);
INSERT INTO `cities` VALUES ('2975', '176', 'RU', 'Amur', null, null);
INSERT INTO `cities` VALUES ('2976', '176', 'RU', 'Arkhangel\'sk', null, null);
INSERT INTO `cities` VALUES ('2977', '176', 'RU', 'Astrakhan\'', null, null);
INSERT INTO `cities` VALUES ('2978', '176', 'RU', 'Bashkortostan', null, null);
INSERT INTO `cities` VALUES ('2979', '176', 'RU', 'Belgorod', null, null);
INSERT INTO `cities` VALUES ('2980', '176', 'RU', 'Bryansk', null, null);
INSERT INTO `cities` VALUES ('2981', '176', 'RU', 'Buryat', null, null);
INSERT INTO `cities` VALUES ('2982', '176', 'RU', 'Chechnya', null, null);
INSERT INTO `cities` VALUES ('2983', '176', 'RU', 'Chelyabinsk', null, null);
INSERT INTO `cities` VALUES ('2984', '176', 'RU', 'Chita', null, null);
INSERT INTO `cities` VALUES ('2985', '176', 'RU', 'Chukot', null, null);
INSERT INTO `cities` VALUES ('2986', '176', 'RU', 'Chuvashia', null, null);
INSERT INTO `cities` VALUES ('2987', '176', 'RU', 'Dagestan', null, null);
INSERT INTO `cities` VALUES ('2988', '176', 'RU', 'Evenk', null, null);
INSERT INTO `cities` VALUES ('2989', '176', 'RU', 'Ingush', null, null);
INSERT INTO `cities` VALUES ('2990', '176', 'RU', 'Irkutsk', null, null);
INSERT INTO `cities` VALUES ('2991', '176', 'RU', 'Ivanovo', null, null);
INSERT INTO `cities` VALUES ('2992', '176', 'RU', 'Kabardin-Balkar', null, null);
INSERT INTO `cities` VALUES ('2993', '176', 'RU', 'Kaliningrad', null, null);
INSERT INTO `cities` VALUES ('2994', '176', 'RU', 'Kalmyk', null, null);
INSERT INTO `cities` VALUES ('2995', '176', 'RU', 'Kaluga', null, null);
INSERT INTO `cities` VALUES ('2996', '176', 'RU', 'Kamchatka', null, null);
INSERT INTO `cities` VALUES ('2997', '176', 'RU', 'Karachay-Cherkess', null, null);
INSERT INTO `cities` VALUES ('2998', '176', 'RU', 'Karelia', null, null);
INSERT INTO `cities` VALUES ('2999', '176', 'RU', 'Kemerovo', null, null);
INSERT INTO `cities` VALUES ('3000', '176', 'RU', 'Khabarovsk', null, null);
INSERT INTO `cities` VALUES ('3001', '176', 'RU', 'Khakass', null, null);
INSERT INTO `cities` VALUES ('3002', '176', 'RU', 'Khanty-Mansiy', null, null);
INSERT INTO `cities` VALUES ('3003', '176', 'RU', 'Kirov', null, null);
INSERT INTO `cities` VALUES ('3004', '176', 'RU', 'Komi', null, null);
INSERT INTO `cities` VALUES ('3005', '176', 'RU', 'Koryak', null, null);
INSERT INTO `cities` VALUES ('3006', '176', 'RU', 'Kostroma', null, null);
INSERT INTO `cities` VALUES ('3007', '176', 'RU', 'Krasnodar', null, null);
INSERT INTO `cities` VALUES ('3008', '176', 'RU', 'Krasnoyarsk', null, null);
INSERT INTO `cities` VALUES ('3009', '176', 'RU', 'Kurgan', null, null);
INSERT INTO `cities` VALUES ('3010', '176', 'RU', 'Kursk', null, null);
INSERT INTO `cities` VALUES ('3011', '176', 'RU', 'Leningrad', null, null);
INSERT INTO `cities` VALUES ('3012', '176', 'RU', 'Lipetsk', null, null);
INSERT INTO `cities` VALUES ('3013', '176', 'RU', 'Magadan', null, null);
INSERT INTO `cities` VALUES ('3014', '176', 'RU', 'Mariy-El', null, null);
INSERT INTO `cities` VALUES ('3015', '176', 'RU', 'Mordovia', null, null);
INSERT INTO `cities` VALUES ('3016', '176', 'RU', 'Moskva', null, null);
INSERT INTO `cities` VALUES ('3017', '176', 'RU', 'Moscow City', null, null);
INSERT INTO `cities` VALUES ('3018', '176', 'RU', 'Murmansk', null, null);
INSERT INTO `cities` VALUES ('3019', '176', 'RU', 'Nenets', null, null);
INSERT INTO `cities` VALUES ('3020', '176', 'RU', 'Nizhegorod', null, null);
INSERT INTO `cities` VALUES ('3021', '176', 'RU', 'Novgorod', null, null);
INSERT INTO `cities` VALUES ('3022', '176', 'RU', 'Novosibirsk', null, null);
INSERT INTO `cities` VALUES ('3023', '176', 'RU', 'Omsk', null, null);
INSERT INTO `cities` VALUES ('3024', '176', 'RU', 'Orenburg', null, null);
INSERT INTO `cities` VALUES ('3025', '176', 'RU', 'Orel', null, null);
INSERT INTO `cities` VALUES ('3026', '176', 'RU', 'Penza', null, null);
INSERT INTO `cities` VALUES ('3027', '176', 'RU', 'Perm\'', null, null);
INSERT INTO `cities` VALUES ('3028', '176', 'RU', 'Primor\'ye', null, null);
INSERT INTO `cities` VALUES ('3029', '176', 'RU', 'Pskov', null, null);
INSERT INTO `cities` VALUES ('3030', '176', 'RU', 'Rostov', null, null);
INSERT INTO `cities` VALUES ('3031', '176', 'RU', 'Ryazan\'', null, null);
INSERT INTO `cities` VALUES ('3032', '176', 'RU', 'Sakha', null, null);
INSERT INTO `cities` VALUES ('3033', '176', 'RU', 'Sakhalin', null, null);
INSERT INTO `cities` VALUES ('3034', '176', 'RU', 'Samara', null, null);
INSERT INTO `cities` VALUES ('3035', '176', 'RU', 'Saint Petersburg City', null, null);
INSERT INTO `cities` VALUES ('3036', '176', 'RU', 'Saratov', null, null);
INSERT INTO `cities` VALUES ('3037', '176', 'RU', 'North Ossetia', null, null);
INSERT INTO `cities` VALUES ('3038', '176', 'RU', 'Smolensk', null, null);
INSERT INTO `cities` VALUES ('3039', '176', 'RU', 'Stavropol\'', null, null);
INSERT INTO `cities` VALUES ('3040', '176', 'RU', 'Sverdlovsk', null, null);
INSERT INTO `cities` VALUES ('3041', '176', 'RU', 'Tambovskaya oblast', null, null);
INSERT INTO `cities` VALUES ('3042', '176', 'RU', 'Tatarstan', null, null);
INSERT INTO `cities` VALUES ('3043', '176', 'RU', 'Taymyr', null, null);
INSERT INTO `cities` VALUES ('3044', '176', 'RU', 'Tomsk', null, null);
INSERT INTO `cities` VALUES ('3045', '176', 'RU', 'Tula', null, null);
INSERT INTO `cities` VALUES ('3046', '176', 'RU', 'Tver\'', null, null);
INSERT INTO `cities` VALUES ('3047', '176', 'RU', 'Tyumen\'', null, null);
INSERT INTO `cities` VALUES ('3048', '176', 'RU', 'Tuva', null, null);
INSERT INTO `cities` VALUES ('3049', '176', 'RU', 'Udmurt', null, null);
INSERT INTO `cities` VALUES ('3050', '176', 'RU', 'Ul\'yanovsk', null, null);
INSERT INTO `cities` VALUES ('3051', '176', 'RU', 'Vladimir', null, null);
INSERT INTO `cities` VALUES ('3052', '176', 'RU', 'Volgograd', null, null);
INSERT INTO `cities` VALUES ('3053', '176', 'RU', 'Vologda', null, null);
INSERT INTO `cities` VALUES ('3054', '176', 'RU', 'Voronezh', null, null);
INSERT INTO `cities` VALUES ('3055', '176', 'RU', 'Yamal-Nenets', null, null);
INSERT INTO `cities` VALUES ('3056', '176', 'RU', 'Yaroslavl\'', null, null);
INSERT INTO `cities` VALUES ('3057', '176', 'RU', 'Yevrey', null, null);
INSERT INTO `cities` VALUES ('3058', '176', 'RU', 'Permskiy Kray', null, null);
INSERT INTO `cities` VALUES ('3059', '176', 'RU', 'Krasnoyarskiy Kray', null, null);
INSERT INTO `cities` VALUES ('3060', '176', 'RU', 'Kamchatskiy Kray', null, null);
INSERT INTO `cities` VALUES ('3061', '176', 'RU', 'Zabaykal\'skiy Kray', null, null);
INSERT INTO `cities` VALUES ('3062', '177', 'RW', 'Butare', null, null);
INSERT INTO `cities` VALUES ('3063', '177', 'RW', 'Gitarama', null, null);
INSERT INTO `cities` VALUES ('3064', '177', 'RW', 'Kibungo', null, null);
INSERT INTO `cities` VALUES ('3065', '177', 'RW', 'Kigali', null, null);
INSERT INTO `cities` VALUES ('3066', '177', 'RW', 'Est', null, null);
INSERT INTO `cities` VALUES ('3067', '177', 'RW', 'Kigali', null, null);
INSERT INTO `cities` VALUES ('3068', '177', 'RW', 'Nord', null, null);
INSERT INTO `cities` VALUES ('3069', '177', 'RW', 'Ouest', null, null);
INSERT INTO `cities` VALUES ('3070', '177', 'RW', 'Sud', null, null);
INSERT INTO `cities` VALUES ('3071', '184', 'SA', 'Al Bahah', null, null);
INSERT INTO `cities` VALUES ('3072', '184', 'SA', 'Al Madinah', null, null);
INSERT INTO `cities` VALUES ('3073', '184', 'SA', 'Ash Sharqiyah', null, null);
INSERT INTO `cities` VALUES ('3074', '184', 'SA', 'Al Qasim', null, null);
INSERT INTO `cities` VALUES ('3075', '184', 'SA', 'Ar Riyad', null, null);
INSERT INTO `cities` VALUES ('3076', '184', 'SA', 'Asir Province', null, null);
INSERT INTO `cities` VALUES ('3077', '184', 'SA', 'Ha\'il', null, null);
INSERT INTO `cities` VALUES ('3078', '184', 'SA', 'Makkah', null, null);
INSERT INTO `cities` VALUES ('3079', '184', 'SA', 'Al Hudud ash Shamaliyah', null, null);
INSERT INTO `cities` VALUES ('3080', '184', 'SA', 'Najran', null, null);
INSERT INTO `cities` VALUES ('3081', '184', 'SA', 'Jizan', null, null);
INSERT INTO `cities` VALUES ('3082', '184', 'SA', 'Tabuk', null, null);
INSERT INTO `cities` VALUES ('3083', '184', 'SA', 'Al Jawf', null, null);
INSERT INTO `cities` VALUES ('3084', '191', 'SB', 'Malaita', null, null);
INSERT INTO `cities` VALUES ('3085', '191', 'SB', 'Guadalcanal', null, null);
INSERT INTO `cities` VALUES ('3086', '191', 'SB', 'Isabel', null, null);
INSERT INTO `cities` VALUES ('3087', '191', 'SB', 'Makira', null, null);
INSERT INTO `cities` VALUES ('3088', '191', 'SB', 'Temotu', null, null);
INSERT INTO `cities` VALUES ('3089', '191', 'SB', 'Central', null, null);
INSERT INTO `cities` VALUES ('3090', '191', 'SB', 'Western', null, null);
INSERT INTO `cities` VALUES ('3091', '191', 'SB', 'Choiseul', null, null);
INSERT INTO `cities` VALUES ('3092', '191', 'SB', 'Rennell and Bellona', null, null);
INSERT INTO `cities` VALUES ('3093', '186', 'SC', 'Anse aux Pins', null, null);
INSERT INTO `cities` VALUES ('3094', '186', 'SC', 'Anse Boileau', null, null);
INSERT INTO `cities` VALUES ('3095', '186', 'SC', 'Anse Etoile', null, null);
INSERT INTO `cities` VALUES ('3096', '186', 'SC', 'Anse Louis', null, null);
INSERT INTO `cities` VALUES ('3097', '186', 'SC', 'Anse Royale', null, null);
INSERT INTO `cities` VALUES ('3098', '186', 'SC', 'Baie Lazare', null, null);
INSERT INTO `cities` VALUES ('3099', '186', 'SC', 'Baie Sainte Anne', null, null);
INSERT INTO `cities` VALUES ('3100', '186', 'SC', 'Beau Vallon', null, null);
INSERT INTO `cities` VALUES ('3101', '186', 'SC', 'Bel Air', null, null);
INSERT INTO `cities` VALUES ('3102', '186', 'SC', 'Bel Ombre', null, null);
INSERT INTO `cities` VALUES ('3103', '186', 'SC', 'Cascade', null, null);
INSERT INTO `cities` VALUES ('3104', '186', 'SC', 'Glacis', null, null);
INSERT INTO `cities` VALUES ('3105', '186', 'SC', 'Grand\' Anse', null, null);
INSERT INTO `cities` VALUES ('3106', '186', 'SC', 'Grand\' Anse', null, null);
INSERT INTO `cities` VALUES ('3107', '186', 'SC', 'La Digue', null, null);
INSERT INTO `cities` VALUES ('3108', '186', 'SC', 'La Riviere Anglaise', null, null);
INSERT INTO `cities` VALUES ('3109', '186', 'SC', 'Mont Buxton', null, null);
INSERT INTO `cities` VALUES ('3110', '186', 'SC', 'Mont Fleuri', null, null);
INSERT INTO `cities` VALUES ('3111', '186', 'SC', 'Plaisance', null, null);
INSERT INTO `cities` VALUES ('3112', '186', 'SC', 'Pointe La Rue', null, null);
INSERT INTO `cities` VALUES ('3113', '186', 'SC', 'Port Glaud', null, null);
INSERT INTO `cities` VALUES ('3114', '186', 'SC', 'Saint Louis', null, null);
INSERT INTO `cities` VALUES ('3115', '186', 'SC', 'Takamaka', null, null);
INSERT INTO `cities` VALUES ('3116', '199', 'SD', 'Al Wusta', null, null);
INSERT INTO `cities` VALUES ('3117', '199', 'SD', 'Al Istiwa\'iyah', null, null);
INSERT INTO `cities` VALUES ('3118', '199', 'SD', 'Al Khartum', null, null);
INSERT INTO `cities` VALUES ('3119', '199', 'SD', 'Ash Shamaliyah', null, null);
INSERT INTO `cities` VALUES ('3120', '199', 'SD', 'Ash Sharqiyah', null, null);
INSERT INTO `cities` VALUES ('3121', '199', 'SD', 'Bahr al Ghazal', null, null);
INSERT INTO `cities` VALUES ('3122', '199', 'SD', 'Darfur', null, null);
INSERT INTO `cities` VALUES ('3123', '199', 'SD', 'Kurdufan', null, null);
INSERT INTO `cities` VALUES ('3124', '199', 'SD', 'Upper Nile', null, null);
INSERT INTO `cities` VALUES ('3125', '199', 'SD', 'Al Wahadah State', null, null);
INSERT INTO `cities` VALUES ('3126', '199', 'SD', 'Central Equatoria State', null, null);
INSERT INTO `cities` VALUES ('3127', '199', 'SD', 'Southern Darfur', null, null);
INSERT INTO `cities` VALUES ('3128', '199', 'SD', 'Southern Kordofan', null, null);
INSERT INTO `cities` VALUES ('3129', '199', 'SD', 'Kassala', null, null);
INSERT INTO `cities` VALUES ('3130', '199', 'SD', 'Northern Darfur', null, null);
INSERT INTO `cities` VALUES ('3131', '203', 'SE', 'Blekinge Lan', null, null);
INSERT INTO `cities` VALUES ('3132', '203', 'SE', 'Gavleborgs Lan', null, null);
INSERT INTO `cities` VALUES ('3133', '203', 'SE', 'Gotlands Lan', null, null);
INSERT INTO `cities` VALUES ('3134', '203', 'SE', 'Hallands Lan', null, null);
INSERT INTO `cities` VALUES ('3135', '203', 'SE', 'Jamtlands Lan', null, null);
INSERT INTO `cities` VALUES ('3136', '203', 'SE', 'Jonkopings Lan', null, null);
INSERT INTO `cities` VALUES ('3137', '203', 'SE', 'Kalmar Lan', null, null);
INSERT INTO `cities` VALUES ('3138', '203', 'SE', 'Dalarnas Lan', null, null);
INSERT INTO `cities` VALUES ('3139', '203', 'SE', 'Kronobergs Lan', null, null);
INSERT INTO `cities` VALUES ('3140', '203', 'SE', 'Norrbottens Lan', null, null);
INSERT INTO `cities` VALUES ('3141', '203', 'SE', 'Orebro Lan', null, null);
INSERT INTO `cities` VALUES ('3142', '203', 'SE', 'Ostergotlands Lan', null, null);
INSERT INTO `cities` VALUES ('3143', '203', 'SE', 'Sodermanlands Lan', null, null);
INSERT INTO `cities` VALUES ('3144', '203', 'SE', 'Uppsala Lan', null, null);
INSERT INTO `cities` VALUES ('3145', '203', 'SE', 'Varmlands Lan', null, null);
INSERT INTO `cities` VALUES ('3146', '203', 'SE', 'Vasterbottens Lan', null, null);
INSERT INTO `cities` VALUES ('3147', '203', 'SE', 'Vasternorrlands Lan', null, null);
INSERT INTO `cities` VALUES ('3148', '203', 'SE', 'Vastmanlands Lan', null, null);
INSERT INTO `cities` VALUES ('3149', '203', 'SE', 'Stockholms Lan', null, null);
INSERT INTO `cities` VALUES ('3150', '203', 'SE', 'Skane Lan', null, null);
INSERT INTO `cities` VALUES ('3151', '203', 'SE', 'Vastra Gotaland', null, null);
INSERT INTO `cities` VALUES ('3152', '197', 'SH', 'Ascension', null, null);
INSERT INTO `cities` VALUES ('3153', '197', 'SH', 'Saint Helena', null, null);
INSERT INTO `cities` VALUES ('3154', '197', 'SH', 'Tristan da Cunha', null, null);
INSERT INTO `cities` VALUES ('3155', '190', 'SI', 'Ajdovscina Commune', null, null);
INSERT INTO `cities` VALUES ('3156', '190', 'SI', 'Beltinci Commune', null, null);
INSERT INTO `cities` VALUES ('3157', '190', 'SI', 'Bled Commune', null, null);
INSERT INTO `cities` VALUES ('3158', '190', 'SI', 'Bohinj Commune', null, null);
INSERT INTO `cities` VALUES ('3159', '190', 'SI', 'Borovnica Commune', null, null);
INSERT INTO `cities` VALUES ('3160', '190', 'SI', 'Bovec Commune', null, null);
INSERT INTO `cities` VALUES ('3161', '190', 'SI', 'Brda Commune', null, null);
INSERT INTO `cities` VALUES ('3162', '190', 'SI', 'Brezice Commune', null, null);
INSERT INTO `cities` VALUES ('3163', '190', 'SI', 'Brezovica Commune', null, null);
INSERT INTO `cities` VALUES ('3164', '190', 'SI', 'Celje Commune', null, null);
INSERT INTO `cities` VALUES ('3165', '190', 'SI', 'Cerklje na Gorenjskem Commune', null, null);
INSERT INTO `cities` VALUES ('3166', '190', 'SI', 'Cerknica Commune', null, null);
INSERT INTO `cities` VALUES ('3167', '190', 'SI', 'Cerkno Commune', null, null);
INSERT INTO `cities` VALUES ('3168', '190', 'SI', 'Crensovci Commune', null, null);
INSERT INTO `cities` VALUES ('3169', '190', 'SI', 'Crna na Koroskem Commune', null, null);
INSERT INTO `cities` VALUES ('3170', '190', 'SI', 'Crnomelj Commune', null, null);
INSERT INTO `cities` VALUES ('3171', '190', 'SI', 'Divaca Commune', null, null);
INSERT INTO `cities` VALUES ('3172', '190', 'SI', 'Dobrepolje Commune', null, null);
INSERT INTO `cities` VALUES ('3173', '190', 'SI', 'Dol pri Ljubljani Commune', null, null);
INSERT INTO `cities` VALUES ('3174', '190', 'SI', 'Dornava Commune', null, null);
INSERT INTO `cities` VALUES ('3175', '190', 'SI', 'Dravograd Commune', null, null);
INSERT INTO `cities` VALUES ('3176', '190', 'SI', 'Duplek Commune', null, null);
INSERT INTO `cities` VALUES ('3177', '190', 'SI', 'Gorenja vas-Poljane Commune', null, null);
INSERT INTO `cities` VALUES ('3178', '190', 'SI', 'Gorisnica Commune', null, null);
INSERT INTO `cities` VALUES ('3179', '190', 'SI', 'Gornja Radgona Commune', null, null);
INSERT INTO `cities` VALUES ('3180', '190', 'SI', 'Gornji Grad Commune', null, null);
INSERT INTO `cities` VALUES ('3181', '190', 'SI', 'Gornji Petrovci Commune', null, null);
INSERT INTO `cities` VALUES ('3182', '190', 'SI', 'Grosuplje Commune', null, null);
INSERT INTO `cities` VALUES ('3183', '190', 'SI', 'Hrastnik Commune', null, null);
INSERT INTO `cities` VALUES ('3184', '190', 'SI', 'Hrpelje-Kozina Commune', null, null);
INSERT INTO `cities` VALUES ('3185', '190', 'SI', 'Idrija Commune', null, null);
INSERT INTO `cities` VALUES ('3186', '190', 'SI', 'Ig Commune', null, null);
INSERT INTO `cities` VALUES ('3187', '190', 'SI', 'Ilirska Bistrica Commune', null, null);
INSERT INTO `cities` VALUES ('3188', '190', 'SI', 'Ivancna Gorica Commune', null, null);
INSERT INTO `cities` VALUES ('3189', '190', 'SI', 'Izola-Isola Commune', null, null);
INSERT INTO `cities` VALUES ('3190', '190', 'SI', 'Jursinci Commune', null, null);
INSERT INTO `cities` VALUES ('3191', '190', 'SI', 'Kanal Commune', null, null);
INSERT INTO `cities` VALUES ('3192', '190', 'SI', 'Kidricevo Commune', null, null);
INSERT INTO `cities` VALUES ('3193', '190', 'SI', 'Kobarid Commune', null, null);
INSERT INTO `cities` VALUES ('3194', '190', 'SI', 'Kobilje Commune', null, null);
INSERT INTO `cities` VALUES ('3195', '190', 'SI', 'Komen Commune', null, null);
INSERT INTO `cities` VALUES ('3196', '190', 'SI', 'Koper-Capodistria Urban Commune', null, null);
INSERT INTO `cities` VALUES ('3197', '190', 'SI', 'Kozje Commune', null, null);
INSERT INTO `cities` VALUES ('3198', '190', 'SI', 'Kranj Commune', null, null);
INSERT INTO `cities` VALUES ('3199', '190', 'SI', 'Kranjska Gora Commune', null, null);
INSERT INTO `cities` VALUES ('3200', '190', 'SI', 'Krsko Commune', null, null);
INSERT INTO `cities` VALUES ('3201', '190', 'SI', 'Kungota Commune', null, null);
INSERT INTO `cities` VALUES ('3202', '190', 'SI', 'Lasko Commune', null, null);
INSERT INTO `cities` VALUES ('3203', '190', 'SI', 'Ljubljana Urban Commune', null, null);
INSERT INTO `cities` VALUES ('3204', '190', 'SI', 'Ljubno Commune', null, null);
INSERT INTO `cities` VALUES ('3205', '190', 'SI', 'Logatec Commune', null, null);
INSERT INTO `cities` VALUES ('3206', '190', 'SI', 'Loski Potok Commune', null, null);
INSERT INTO `cities` VALUES ('3207', '190', 'SI', 'Lukovica Commune', null, null);
INSERT INTO `cities` VALUES ('3208', '190', 'SI', 'Medvode Commune', null, null);
INSERT INTO `cities` VALUES ('3209', '190', 'SI', 'Menges Commune', null, null);
INSERT INTO `cities` VALUES ('3210', '190', 'SI', 'Metlika Commune', null, null);
INSERT INTO `cities` VALUES ('3211', '190', 'SI', 'Mezica Commune', null, null);
INSERT INTO `cities` VALUES ('3212', '190', 'SI', 'Mislinja Commune', null, null);
INSERT INTO `cities` VALUES ('3213', '190', 'SI', 'Moravce Commune', null, null);
INSERT INTO `cities` VALUES ('3214', '190', 'SI', 'Moravske Toplice Commune', null, null);
INSERT INTO `cities` VALUES ('3215', '190', 'SI', 'Mozirje Commune', null, null);
INSERT INTO `cities` VALUES ('3216', '190', 'SI', 'Murska Sobota Urban Commune', null, null);
INSERT INTO `cities` VALUES ('3217', '190', 'SI', 'Muta Commune', null, null);
INSERT INTO `cities` VALUES ('3218', '190', 'SI', 'Naklo Commune', null, null);
INSERT INTO `cities` VALUES ('3219', '190', 'SI', 'Nazarje Commune', null, null);
INSERT INTO `cities` VALUES ('3220', '190', 'SI', 'Nova Gorica Urban Commune', null, null);
INSERT INTO `cities` VALUES ('3221', '190', 'SI', 'Odranci Commune', null, null);
INSERT INTO `cities` VALUES ('3222', '190', 'SI', 'Ormoz Commune', null, null);
INSERT INTO `cities` VALUES ('3223', '190', 'SI', 'Osilnica Commune', null, null);
INSERT INTO `cities` VALUES ('3224', '190', 'SI', 'Pesnica Commune', null, null);
INSERT INTO `cities` VALUES ('3225', '190', 'SI', 'Pivka Commune', null, null);
INSERT INTO `cities` VALUES ('3226', '190', 'SI', 'Podcetrtek Commune', null, null);
INSERT INTO `cities` VALUES ('3227', '190', 'SI', 'Postojna Commune', null, null);
INSERT INTO `cities` VALUES ('3228', '190', 'SI', 'Puconci Commune', null, null);
INSERT INTO `cities` VALUES ('3229', '190', 'SI', 'Race-Fram Commune', null, null);
INSERT INTO `cities` VALUES ('3230', '190', 'SI', 'Radece Commune', null, null);
INSERT INTO `cities` VALUES ('3231', '190', 'SI', 'Radenci Commune', null, null);
INSERT INTO `cities` VALUES ('3232', '190', 'SI', 'Radlje ob Dravi Commune', null, null);
INSERT INTO `cities` VALUES ('3233', '190', 'SI', 'Radovljica Commune', null, null);
INSERT INTO `cities` VALUES ('3234', '190', 'SI', 'Rogasovci Commune', null, null);
INSERT INTO `cities` VALUES ('3235', '190', 'SI', 'Rogaska Slatina Commune', null, null);
INSERT INTO `cities` VALUES ('3236', '190', 'SI', 'Rogatec Commune', null, null);
INSERT INTO `cities` VALUES ('3237', '190', 'SI', 'Semic Commune', null, null);
INSERT INTO `cities` VALUES ('3238', '190', 'SI', 'Sencur Commune', null, null);
INSERT INTO `cities` VALUES ('3239', '190', 'SI', 'Sentilj Commune', null, null);
INSERT INTO `cities` VALUES ('3240', '190', 'SI', 'Sentjernej Commune', null, null);
INSERT INTO `cities` VALUES ('3241', '190', 'SI', 'Sevnica Commune', null, null);
INSERT INTO `cities` VALUES ('3242', '190', 'SI', 'Sezana Commune', null, null);
INSERT INTO `cities` VALUES ('3243', '190', 'SI', 'Skocjan Commune', null, null);
INSERT INTO `cities` VALUES ('3244', '190', 'SI', 'Skofja Loka Commune', null, null);
INSERT INTO `cities` VALUES ('3245', '190', 'SI', 'Skofljica Commune', null, null);
INSERT INTO `cities` VALUES ('3246', '190', 'SI', 'Slovenj Gradec Urban Commune', null, null);
INSERT INTO `cities` VALUES ('3247', '190', 'SI', 'Slovenske Konjice Commune', null, null);
INSERT INTO `cities` VALUES ('3248', '190', 'SI', 'Smarje pri Jelsah Commune', null, null);
INSERT INTO `cities` VALUES ('3249', '190', 'SI', 'Smartno ob Paki Commune', null, null);
INSERT INTO `cities` VALUES ('3250', '190', 'SI', 'Sostanj Commune', null, null);
INSERT INTO `cities` VALUES ('3251', '190', 'SI', 'Starse Commune', null, null);
INSERT INTO `cities` VALUES ('3252', '190', 'SI', 'Store Commune', null, null);
INSERT INTO `cities` VALUES ('3253', '190', 'SI', 'Sveti Jurij Commune', null, null);
INSERT INTO `cities` VALUES ('3254', '190', 'SI', 'Tolmin Commune', null, null);
INSERT INTO `cities` VALUES ('3255', '190', 'SI', 'Trbovlje Commune', null, null);
INSERT INTO `cities` VALUES ('3256', '190', 'SI', 'Trebnje Commune', null, null);
INSERT INTO `cities` VALUES ('3257', '190', 'SI', 'Trzic Commune', null, null);
INSERT INTO `cities` VALUES ('3258', '190', 'SI', 'Turnisce Commune', null, null);
INSERT INTO `cities` VALUES ('3259', '190', 'SI', 'Velenje Urban Commune', null, null);
INSERT INTO `cities` VALUES ('3260', '190', 'SI', 'Velike Lasce Commune', null, null);
INSERT INTO `cities` VALUES ('3261', '190', 'SI', 'Vipava Commune', null, null);
INSERT INTO `cities` VALUES ('3262', '190', 'SI', 'Vitanje Commune', null, null);
INSERT INTO `cities` VALUES ('3263', '190', 'SI', 'Vodice Commune', null, null);
INSERT INTO `cities` VALUES ('3264', '190', 'SI', 'Vrhnika Commune', null, null);
INSERT INTO `cities` VALUES ('3265', '190', 'SI', 'Vuzenica Commune', null, null);
INSERT INTO `cities` VALUES ('3266', '190', 'SI', 'Zagorje ob Savi Commune', null, null);
INSERT INTO `cities` VALUES ('3267', '190', 'SI', 'Zavrc Commune', null, null);
INSERT INTO `cities` VALUES ('3268', '190', 'SI', 'Zelezniki Commune', null, null);
INSERT INTO `cities` VALUES ('3269', '190', 'SI', 'Ziri Commune', null, null);
INSERT INTO `cities` VALUES ('3270', '190', 'SI', 'Zrece Commune', null, null);
INSERT INTO `cities` VALUES ('3271', '190', 'SI', 'Benedikt Commune', null, null);
INSERT INTO `cities` VALUES ('3272', '190', 'SI', 'Bistrica ob Sotli Commune', null, null);
INSERT INTO `cities` VALUES ('3273', '190', 'SI', 'Bloke Commune', null, null);
INSERT INTO `cities` VALUES ('3274', '190', 'SI', 'Braslovce Commune', null, null);
INSERT INTO `cities` VALUES ('3275', '190', 'SI', 'Cankova Commune', null, null);
INSERT INTO `cities` VALUES ('3276', '190', 'SI', 'Cerkvenjak Commune', null, null);
INSERT INTO `cities` VALUES ('3277', '190', 'SI', 'Destrnik Commune', null, null);
INSERT INTO `cities` VALUES ('3278', '190', 'SI', 'Dobje Commune', null, null);
INSERT INTO `cities` VALUES ('3279', '190', 'SI', 'Dobrna Commune', null, null);
INSERT INTO `cities` VALUES ('3280', '190', 'SI', 'Dobrova-Horjul-Polhov Gradec Commune', null, null);
INSERT INTO `cities` VALUES ('3281', '190', 'SI', 'Dobrovnik-Dobronak Commune', null, null);
INSERT INTO `cities` VALUES ('3282', '190', 'SI', 'Dolenjske Toplice Commune', null, null);
INSERT INTO `cities` VALUES ('3283', '190', 'SI', 'Domzale Commune', null, null);
INSERT INTO `cities` VALUES ('3284', '190', 'SI', 'Grad Commune', null, null);
INSERT INTO `cities` VALUES ('3285', '190', 'SI', 'Hajdina Commune', null, null);
INSERT INTO `cities` VALUES ('3286', '190', 'SI', 'Hoce-Slivnica Commune', null, null);
INSERT INTO `cities` VALUES ('3287', '190', 'SI', 'Hodos-Hodos Commune', null, null);
INSERT INTO `cities` VALUES ('3288', '190', 'SI', 'Horjul Commune', null, null);
INSERT INTO `cities` VALUES ('3289', '190', 'SI', 'Jesenice Commune', null, null);
INSERT INTO `cities` VALUES ('3290', '190', 'SI', 'Jezersko Commune', null, null);
INSERT INTO `cities` VALUES ('3291', '190', 'SI', 'Kamnik Commune', null, null);
INSERT INTO `cities` VALUES ('3292', '190', 'SI', 'Kocevje Commune', null, null);
INSERT INTO `cities` VALUES ('3293', '190', 'SI', 'Komenda Commune', null, null);
INSERT INTO `cities` VALUES ('3294', '190', 'SI', 'Kostel Commune', null, null);
INSERT INTO `cities` VALUES ('3295', '190', 'SI', 'Krizevci Commune', null, null);
INSERT INTO `cities` VALUES ('3296', '190', 'SI', 'Kuzma Commune', null, null);
INSERT INTO `cities` VALUES ('3297', '190', 'SI', 'Lenart Commune', null, null);
INSERT INTO `cities` VALUES ('3298', '190', 'SI', 'Lendava-Lendva Commune', null, null);
INSERT INTO `cities` VALUES ('3299', '190', 'SI', 'Litija Commune', null, null);
INSERT INTO `cities` VALUES ('3300', '190', 'SI', 'Ljutomer Commune', null, null);
INSERT INTO `cities` VALUES ('3301', '190', 'SI', 'Loska Dolina Commune', null, null);
INSERT INTO `cities` VALUES ('3302', '190', 'SI', 'Lovrenc na Pohorju Commune', null, null);
INSERT INTO `cities` VALUES ('3303', '190', 'SI', 'Luce Commune', null, null);
INSERT INTO `cities` VALUES ('3304', '190', 'SI', 'Majsperk Commune', null, null);
INSERT INTO `cities` VALUES ('3305', '190', 'SI', 'Maribor Commune', null, null);
INSERT INTO `cities` VALUES ('3306', '190', 'SI', 'Markovci Commune', null, null);
INSERT INTO `cities` VALUES ('3307', '190', 'SI', 'Miklavz na Dravskem polju Commune', null, null);
INSERT INTO `cities` VALUES ('3308', '190', 'SI', 'Miren-Kostanjevica Commune', null, null);
INSERT INTO `cities` VALUES ('3309', '190', 'SI', 'Mirna Pec Commune', null, null);
INSERT INTO `cities` VALUES ('3310', '190', 'SI', 'Novo mesto Urban Commune', null, null);
INSERT INTO `cities` VALUES ('3311', '190', 'SI', 'Oplotnica Commune', null, null);
INSERT INTO `cities` VALUES ('3312', '190', 'SI', 'Piran-Pirano Commune', null, null);
INSERT INTO `cities` VALUES ('3313', '190', 'SI', 'Podlehnik Commune', null, null);
INSERT INTO `cities` VALUES ('3314', '190', 'SI', 'Podvelka Commune', null, null);
INSERT INTO `cities` VALUES ('3315', '190', 'SI', 'Polzela Commune', null, null);
INSERT INTO `cities` VALUES ('3316', '190', 'SI', 'Prebold Commune', null, null);
INSERT INTO `cities` VALUES ('3317', '190', 'SI', 'Preddvor Commune', null, null);
INSERT INTO `cities` VALUES ('3318', '190', 'SI', 'Prevalje Commune', null, null);
INSERT INTO `cities` VALUES ('3319', '190', 'SI', 'Ptuj Urban Commune', null, null);
INSERT INTO `cities` VALUES ('3320', '190', 'SI', 'Ravne na Koroskem Commune', null, null);
INSERT INTO `cities` VALUES ('3321', '190', 'SI', 'Razkrizje Commune', null, null);
INSERT INTO `cities` VALUES ('3322', '190', 'SI', 'Ribnica Commune', null, null);
INSERT INTO `cities` VALUES ('3323', '190', 'SI', 'Ribnica na Pohorju Commune', null, null);
INSERT INTO `cities` VALUES ('3324', '190', 'SI', 'Ruse Commune', null, null);
INSERT INTO `cities` VALUES ('3325', '190', 'SI', 'Salovci Commune', null, null);
INSERT INTO `cities` VALUES ('3326', '190', 'SI', 'Selnica ob Dravi Commune', null, null);
INSERT INTO `cities` VALUES ('3327', '190', 'SI', 'Sempeter-Vrtojba Commune', null, null);
INSERT INTO `cities` VALUES ('3328', '190', 'SI', 'Sentjur pri Celju Commune', null, null);
INSERT INTO `cities` VALUES ('3329', '190', 'SI', 'Slovenska Bistrica Commune', null, null);
INSERT INTO `cities` VALUES ('3330', '190', 'SI', 'Smartno pri Litiji Commune', null, null);
INSERT INTO `cities` VALUES ('3331', '190', 'SI', 'Sodrazica Commune', null, null);
INSERT INTO `cities` VALUES ('3332', '190', 'SI', 'Solcava Commune', null, null);
INSERT INTO `cities` VALUES ('3333', '190', 'SI', 'Sveta Ana Commune', null, null);
INSERT INTO `cities` VALUES ('3334', '190', 'SI', 'Sveti Andraz v Slovenskih goricah Commune', null, null);
INSERT INTO `cities` VALUES ('3335', '190', 'SI', 'Tabor Commune', null, null);
INSERT INTO `cities` VALUES ('3336', '190', 'SI', 'Tisina Commune', null, null);
INSERT INTO `cities` VALUES ('3337', '190', 'SI', 'Trnovska vas Commune', null, null);
INSERT INTO `cities` VALUES ('3338', '190', 'SI', 'Trzin Commune', null, null);
INSERT INTO `cities` VALUES ('3339', '190', 'SI', 'Velika Polana Commune', null, null);
INSERT INTO `cities` VALUES ('3340', '190', 'SI', 'Verzej Commune', null, null);
INSERT INTO `cities` VALUES ('3341', '190', 'SI', 'Videm Commune', null, null);
INSERT INTO `cities` VALUES ('3342', '190', 'SI', 'Vojnik Commune', null, null);
INSERT INTO `cities` VALUES ('3343', '190', 'SI', 'Vransko Commune', null, null);
INSERT INTO `cities` VALUES ('3344', '190', 'SI', 'Zalec Commune', null, null);
INSERT INTO `cities` VALUES ('3345', '190', 'SI', 'Zetale Commune', null, null);
INSERT INTO `cities` VALUES ('3346', '190', 'SI', 'Zirovnica Commune', null, null);
INSERT INTO `cities` VALUES ('3347', '190', 'SI', 'Zuzemberk Commune', null, null);
INSERT INTO `cities` VALUES ('3348', '190', 'SI', 'Apace Commune', null, null);
INSERT INTO `cities` VALUES ('3349', '190', 'SI', 'Cirkulane Commune', null, null);
INSERT INTO `cities` VALUES ('3350', '189', 'SK', 'Banska Bystrica', null, null);
INSERT INTO `cities` VALUES ('3351', '189', 'SK', 'Bratislava', null, null);
INSERT INTO `cities` VALUES ('3352', '189', 'SK', 'Kosice', null, null);
INSERT INTO `cities` VALUES ('3353', '189', 'SK', 'Nitra', null, null);
INSERT INTO `cities` VALUES ('3354', '189', 'SK', 'Presov', null, null);
INSERT INTO `cities` VALUES ('3355', '189', 'SK', 'Trencin', null, null);
INSERT INTO `cities` VALUES ('3356', '189', 'SK', 'Trnava', null, null);
INSERT INTO `cities` VALUES ('3357', '189', 'SK', 'Zilina', null, null);
INSERT INTO `cities` VALUES ('3358', '187', 'SL', 'Eastern', null, null);
INSERT INTO `cities` VALUES ('3359', '187', 'SL', 'Northern', null, null);
INSERT INTO `cities` VALUES ('3360', '187', 'SL', 'Southern', null, null);
INSERT INTO `cities` VALUES ('3361', '187', 'SL', 'Western Area', null, null);
INSERT INTO `cities` VALUES ('3362', '182', 'SM', 'Acquaviva', null, null);
INSERT INTO `cities` VALUES ('3363', '182', 'SM', 'Chiesanuova', null, null);
INSERT INTO `cities` VALUES ('3364', '182', 'SM', 'Domagnano', null, null);
INSERT INTO `cities` VALUES ('3365', '182', 'SM', 'Faetano', null, null);
INSERT INTO `cities` VALUES ('3366', '182', 'SM', 'Fiorentino', null, null);
INSERT INTO `cities` VALUES ('3367', '182', 'SM', 'Borgo Maggiore', null, null);
INSERT INTO `cities` VALUES ('3368', '182', 'SM', 'San Marino', null, null);
INSERT INTO `cities` VALUES ('3369', '182', 'SM', 'Monte Giardino', null, null);
INSERT INTO `cities` VALUES ('3370', '182', 'SM', 'Serravalle', null, null);
INSERT INTO `cities` VALUES ('3371', '185', 'SN', 'Dakar', null, null);
INSERT INTO `cities` VALUES ('3372', '185', 'SN', 'Diourbel', null, null);
INSERT INTO `cities` VALUES ('3373', '185', 'SN', 'Tambacounda', null, null);
INSERT INTO `cities` VALUES ('3374', '185', 'SN', 'Thies', null, null);
INSERT INTO `cities` VALUES ('3375', '185', 'SN', 'Fatick', null, null);
INSERT INTO `cities` VALUES ('3376', '185', 'SN', 'Kaolack', null, null);
INSERT INTO `cities` VALUES ('3377', '185', 'SN', 'Kolda', null, null);
INSERT INTO `cities` VALUES ('3378', '185', 'SN', 'Ziguinchor', null, null);
INSERT INTO `cities` VALUES ('3379', '185', 'SN', 'Louga', null, null);
INSERT INTO `cities` VALUES ('3380', '185', 'SN', 'Saint-Louis', null, null);
INSERT INTO `cities` VALUES ('3381', '185', 'SN', 'Matam', null, null);
INSERT INTO `cities` VALUES ('3382', '192', 'SO', 'Bakool', null, null);
INSERT INTO `cities` VALUES ('3383', '192', 'SO', 'Banaadir', null, null);
INSERT INTO `cities` VALUES ('3384', '192', 'SO', 'Bari', null, null);
INSERT INTO `cities` VALUES ('3385', '192', 'SO', 'Bay', null, null);
INSERT INTO `cities` VALUES ('3386', '192', 'SO', 'Galguduud', null, null);
INSERT INTO `cities` VALUES ('3387', '192', 'SO', 'Gedo', null, null);
INSERT INTO `cities` VALUES ('3388', '192', 'SO', 'Hiiraan', null, null);
INSERT INTO `cities` VALUES ('3389', '192', 'SO', 'Jubbada Dhexe', null, null);
INSERT INTO `cities` VALUES ('3390', '192', 'SO', 'Jubbada Hoose', null, null);
INSERT INTO `cities` VALUES ('3391', '192', 'SO', 'Mudug', null, null);
INSERT INTO `cities` VALUES ('3392', '192', 'SO', 'Nugaal', null, null);
INSERT INTO `cities` VALUES ('3393', '192', 'SO', 'Sanaag', null, null);
INSERT INTO `cities` VALUES ('3394', '192', 'SO', 'Shabeellaha Dhexe', null, null);
INSERT INTO `cities` VALUES ('3395', '192', 'SO', 'Shabeellaha Hoose', null, null);
INSERT INTO `cities` VALUES ('3396', '192', 'SO', 'Woqooyi Galbeed', null, null);
INSERT INTO `cities` VALUES ('3397', '192', 'SO', 'Nugaal', null, null);
INSERT INTO `cities` VALUES ('3398', '192', 'SO', 'Togdheer', null, null);
INSERT INTO `cities` VALUES ('3399', '192', 'SO', 'Woqooyi Galbeed', null, null);
INSERT INTO `cities` VALUES ('3400', '192', 'SO', 'Awdal', null, null);
INSERT INTO `cities` VALUES ('3401', '192', 'SO', 'Sool', null, null);
INSERT INTO `cities` VALUES ('3402', '200', 'SR', 'Brokopondo', null, null);
INSERT INTO `cities` VALUES ('3403', '200', 'SR', 'Commewijne', null, null);
INSERT INTO `cities` VALUES ('3404', '200', 'SR', 'Coronie', null, null);
INSERT INTO `cities` VALUES ('3405', '200', 'SR', 'Marowijne', null, null);
INSERT INTO `cities` VALUES ('3406', '200', 'SR', 'Nickerie', null, null);
INSERT INTO `cities` VALUES ('3407', '200', 'SR', 'Para', null, null);
INSERT INTO `cities` VALUES ('3408', '200', 'SR', 'Paramaribo', null, null);
INSERT INTO `cities` VALUES ('3409', '200', 'SR', 'Saramacca', null, null);
INSERT INTO `cities` VALUES ('3410', '200', 'SR', 'Sipaliwini', null, null);
INSERT INTO `cities` VALUES ('3411', '200', 'SR', 'Wanica', null, null);
INSERT INTO `cities` VALUES ('3422', '183', 'ST', 'Principe', null, null);
INSERT INTO `cities` VALUES ('3423', '183', 'ST', 'Sao Tome', null, null);
INSERT INTO `cities` VALUES ('3424', '64', 'SV', 'Ahuachapan', null, null);
INSERT INTO `cities` VALUES ('3425', '64', 'SV', 'Cabanas', null, null);
INSERT INTO `cities` VALUES ('3426', '64', 'SV', 'Chalatenango', null, null);
INSERT INTO `cities` VALUES ('3427', '64', 'SV', 'Cuscatlan', null, null);
INSERT INTO `cities` VALUES ('3428', '64', 'SV', 'La Libertad', null, null);
INSERT INTO `cities` VALUES ('3429', '64', 'SV', 'La Paz', null, null);
INSERT INTO `cities` VALUES ('3430', '64', 'SV', 'La Union', null, null);
INSERT INTO `cities` VALUES ('3431', '64', 'SV', 'Morazan', null, null);
INSERT INTO `cities` VALUES ('3432', '64', 'SV', 'San Miguel', null, null);
INSERT INTO `cities` VALUES ('3433', '64', 'SV', 'San Salvador', null, null);
INSERT INTO `cities` VALUES ('3434', '64', 'SV', 'Santa Ana', null, null);
INSERT INTO `cities` VALUES ('3435', '64', 'SV', 'San Vicente', null, null);
INSERT INTO `cities` VALUES ('3436', '64', 'SV', 'Sonsonate', null, null);
INSERT INTO `cities` VALUES ('3437', '64', 'SV', 'Usulutan', null, null);
INSERT INTO `cities` VALUES ('3438', '205', 'SY', 'Al Hasakah', null, null);
INSERT INTO `cities` VALUES ('3439', '205', 'SY', 'Al Ladhiqiyah', null, null);
INSERT INTO `cities` VALUES ('3440', '205', 'SY', 'Al Qunaytirah', null, null);
INSERT INTO `cities` VALUES ('3441', '205', 'SY', 'Ar Raqqah', null, null);
INSERT INTO `cities` VALUES ('3442', '205', 'SY', 'As Suwayda\'', null, null);
INSERT INTO `cities` VALUES ('3443', '205', 'SY', 'Dar', null, null);
INSERT INTO `cities` VALUES ('3444', '205', 'SY', 'Dayr az Zawr', null, null);
INSERT INTO `cities` VALUES ('3445', '205', 'SY', 'Rif Dimashq', null, null);
INSERT INTO `cities` VALUES ('3446', '205', 'SY', 'Halab', null, null);
INSERT INTO `cities` VALUES ('3447', '205', 'SY', 'Hamah', null, null);
INSERT INTO `cities` VALUES ('3448', '205', 'SY', 'Hims', null, null);
INSERT INTO `cities` VALUES ('3449', '205', 'SY', 'Idlib', null, null);
INSERT INTO `cities` VALUES ('3450', '205', 'SY', 'Dimashq', null, null);
INSERT INTO `cities` VALUES ('3451', '205', 'SY', 'Tartus', null, null);
INSERT INTO `cities` VALUES ('3452', '202', 'SZ', 'Hhohho', null, null);
INSERT INTO `cities` VALUES ('3453', '202', 'SZ', 'Lubombo', null, null);
INSERT INTO `cities` VALUES ('3454', '202', 'SZ', 'Manzini', null, null);
INSERT INTO `cities` VALUES ('3455', '202', 'SZ', 'Shiselweni', null, null);
INSERT INTO `cities` VALUES ('3456', '202', 'SZ', 'Praslin', null, null);
INSERT INTO `cities` VALUES ('3457', '42', 'TD', 'Batha', null, null);
INSERT INTO `cities` VALUES ('3458', '42', 'TD', 'Biltine', null, null);
INSERT INTO `cities` VALUES ('3459', '42', 'TD', 'Borkou-Ennedi-Tibesti', null, null);
INSERT INTO `cities` VALUES ('3460', '42', 'TD', 'Chari-Baguirmi', null, null);
INSERT INTO `cities` VALUES ('3461', '42', 'TD', 'Guera', null, null);
INSERT INTO `cities` VALUES ('3462', '42', 'TD', 'Kanem', null, null);
INSERT INTO `cities` VALUES ('3463', '42', 'TD', 'Lac', null, null);
INSERT INTO `cities` VALUES ('3464', '42', 'TD', 'Logone Occidental', null, null);
INSERT INTO `cities` VALUES ('3465', '42', 'TD', 'Logone Oriental', null, null);
INSERT INTO `cities` VALUES ('3466', '42', 'TD', 'Mayo-Kebbi', null, null);
INSERT INTO `cities` VALUES ('3467', '42', 'TD', 'Moyen-Chari', null, null);
INSERT INTO `cities` VALUES ('3468', '42', 'TD', 'Ouaddai', null, null);
INSERT INTO `cities` VALUES ('3469', '42', 'TD', 'Salamat', null, null);
INSERT INTO `cities` VALUES ('3470', '42', 'TD', 'Tandjile', null, null);
INSERT INTO `cities` VALUES ('3471', '210', 'TG', 'Centrale', null, null);
INSERT INTO `cities` VALUES ('3472', '210', 'TG', 'Kara', null, null);
INSERT INTO `cities` VALUES ('3473', '210', 'TG', 'Maritime', null, null);
INSERT INTO `cities` VALUES ('3474', '210', 'TG', 'Plateaux', null, null);
INSERT INTO `cities` VALUES ('3475', '210', 'TG', 'Savanes', null, null);
INSERT INTO `cities` VALUES ('3476', '209', 'TH', 'Mae Hong Son', null, null);
INSERT INTO `cities` VALUES ('3477', '209', 'TH', 'Chiang Mai', null, null);
INSERT INTO `cities` VALUES ('3478', '209', 'TH', 'Chiang Rai', null, null);
INSERT INTO `cities` VALUES ('3479', '209', 'TH', 'Nan', null, null);
INSERT INTO `cities` VALUES ('3480', '209', 'TH', 'Lamphun', null, null);
INSERT INTO `cities` VALUES ('3481', '209', 'TH', 'Lampang', null, null);
INSERT INTO `cities` VALUES ('3482', '209', 'TH', 'Phrae', null, null);
INSERT INTO `cities` VALUES ('3483', '209', 'TH', 'Tak', null, null);
INSERT INTO `cities` VALUES ('3484', '209', 'TH', 'Sukhothai', null, null);
INSERT INTO `cities` VALUES ('3485', '209', 'TH', 'Uttaradit', null, null);
INSERT INTO `cities` VALUES ('3486', '209', 'TH', 'Kamphaeng Phet', null, null);
INSERT INTO `cities` VALUES ('3487', '209', 'TH', 'Phitsanulok', null, null);
INSERT INTO `cities` VALUES ('3488', '209', 'TH', 'Phichit', null, null);
INSERT INTO `cities` VALUES ('3489', '209', 'TH', 'Phetchabun', null, null);
INSERT INTO `cities` VALUES ('3490', '209', 'TH', 'Uthai Thani', null, null);
INSERT INTO `cities` VALUES ('3491', '209', 'TH', 'Nakhon Sawan', null, null);
INSERT INTO `cities` VALUES ('3492', '209', 'TH', 'Nong Khai', null, null);
INSERT INTO `cities` VALUES ('3493', '209', 'TH', 'Loei', null, null);
INSERT INTO `cities` VALUES ('3494', '209', 'TH', 'Sakon Nakhon', null, null);
INSERT INTO `cities` VALUES ('3495', '209', 'TH', 'Nakhon Phanom', null, null);
INSERT INTO `cities` VALUES ('3496', '209', 'TH', 'Khon Kaen', null, null);
INSERT INTO `cities` VALUES ('3497', '209', 'TH', 'Kalasin', null, null);
INSERT INTO `cities` VALUES ('3498', '209', 'TH', 'Maha Sarakham', null, null);
INSERT INTO `cities` VALUES ('3499', '209', 'TH', 'Roi Et', null, null);
INSERT INTO `cities` VALUES ('3500', '209', 'TH', 'Chaiyaphum', null, null);
INSERT INTO `cities` VALUES ('3501', '209', 'TH', 'Nakhon Ratchasima', null, null);
INSERT INTO `cities` VALUES ('3502', '209', 'TH', 'Buriram', null, null);
INSERT INTO `cities` VALUES ('3503', '209', 'TH', 'Surin', null, null);
INSERT INTO `cities` VALUES ('3504', '209', 'TH', 'Sisaket', null, null);
INSERT INTO `cities` VALUES ('3505', '209', 'TH', 'Narathiwat', null, null);
INSERT INTO `cities` VALUES ('3506', '209', 'TH', 'Chai Nat', null, null);
INSERT INTO `cities` VALUES ('3507', '209', 'TH', 'Sing Buri', null, null);
INSERT INTO `cities` VALUES ('3508', '209', 'TH', 'Lop Buri', null, null);
INSERT INTO `cities` VALUES ('3509', '209', 'TH', 'Ang Thong', null, null);
INSERT INTO `cities` VALUES ('3510', '209', 'TH', 'Phra Nakhon Si Ayutthaya', null, null);
INSERT INTO `cities` VALUES ('3511', '209', 'TH', 'Saraburi', null, null);
INSERT INTO `cities` VALUES ('3512', '209', 'TH', 'Nonthaburi', null, null);
INSERT INTO `cities` VALUES ('3513', '209', 'TH', 'Pathum Thani', null, null);
INSERT INTO `cities` VALUES ('3514', '209', 'TH', 'Krung Thep', null, null);
INSERT INTO `cities` VALUES ('3515', '209', 'TH', 'Phayao', null, null);
INSERT INTO `cities` VALUES ('3516', '209', 'TH', 'Samut Prakan', null, null);
INSERT INTO `cities` VALUES ('3517', '209', 'TH', 'Nakhon Nayok', null, null);
INSERT INTO `cities` VALUES ('3518', '209', 'TH', 'Chachoengsao', null, null);
INSERT INTO `cities` VALUES ('3519', '209', 'TH', 'Prachin Buri', null, null);
INSERT INTO `cities` VALUES ('3520', '209', 'TH', 'Chon Buri', null, null);
INSERT INTO `cities` VALUES ('3521', '209', 'TH', 'Rayong', null, null);
INSERT INTO `cities` VALUES ('3522', '209', 'TH', 'Chanthaburi', null, null);
INSERT INTO `cities` VALUES ('3523', '209', 'TH', 'Trat', null, null);
INSERT INTO `cities` VALUES ('3524', '209', 'TH', 'Kanchanaburi', null, null);
INSERT INTO `cities` VALUES ('3525', '209', 'TH', 'Suphan Buri', null, null);
INSERT INTO `cities` VALUES ('3526', '209', 'TH', 'Ratchaburi', null, null);
INSERT INTO `cities` VALUES ('3527', '209', 'TH', 'Nakhon Pathom', null, null);
INSERT INTO `cities` VALUES ('3528', '209', 'TH', 'Samut Songkhram', null, null);
INSERT INTO `cities` VALUES ('3529', '209', 'TH', 'Samut Sakhon', null, null);
INSERT INTO `cities` VALUES ('3530', '209', 'TH', 'Phetchaburi', null, null);
INSERT INTO `cities` VALUES ('3531', '209', 'TH', 'Prachuap Khiri Khan', null, null);
INSERT INTO `cities` VALUES ('3532', '209', 'TH', 'Chumphon', null, null);
INSERT INTO `cities` VALUES ('3533', '209', 'TH', 'Ranong', null, null);
INSERT INTO `cities` VALUES ('3534', '209', 'TH', 'Surat Thani', null, null);
INSERT INTO `cities` VALUES ('3535', '209', 'TH', 'Phangnga', null, null);
INSERT INTO `cities` VALUES ('3536', '209', 'TH', 'Phuket', null, null);
INSERT INTO `cities` VALUES ('3537', '209', 'TH', 'Krabi', null, null);
INSERT INTO `cities` VALUES ('3538', '209', 'TH', 'Nakhon Si Thammarat', null, null);
INSERT INTO `cities` VALUES ('3539', '209', 'TH', 'Trang', null, null);
INSERT INTO `cities` VALUES ('3540', '209', 'TH', 'Phatthalung', null, null);
INSERT INTO `cities` VALUES ('3541', '209', 'TH', 'Satun', null, null);
INSERT INTO `cities` VALUES ('3542', '209', 'TH', 'Songkhla', null, null);
INSERT INTO `cities` VALUES ('3543', '209', 'TH', 'Pattani', null, null);
INSERT INTO `cities` VALUES ('3544', '209', 'TH', 'Yala', null, null);
INSERT INTO `cities` VALUES ('3545', '209', 'TH', 'Ubon Ratchathani', null, null);
INSERT INTO `cities` VALUES ('3546', '209', 'TH', 'Yasothon', null, null);
INSERT INTO `cities` VALUES ('3547', '209', 'TH', 'Nakhon Phanom', null, null);
INSERT INTO `cities` VALUES ('3548', '209', 'TH', 'Prachin Buri', null, null);
INSERT INTO `cities` VALUES ('3549', '209', 'TH', 'Ubon Ratchathani', null, null);
INSERT INTO `cities` VALUES ('3550', '209', 'TH', 'Udon Thani', null, null);
INSERT INTO `cities` VALUES ('3551', '209', 'TH', 'Amnat Charoen', null, null);
INSERT INTO `cities` VALUES ('3552', '209', 'TH', 'Mukdahan', null, null);
INSERT INTO `cities` VALUES ('3553', '209', 'TH', 'Nong Bua Lamphu', null, null);
INSERT INTO `cities` VALUES ('3554', '209', 'TH', 'Sa Kaeo', null, null);
INSERT INTO `cities` VALUES ('3555', '209', 'TH', 'Bueng Kan', null, null);
INSERT INTO `cities` VALUES ('3556', '207', 'TJ', 'Kuhistoni Badakhshon', null, null);
INSERT INTO `cities` VALUES ('3557', '207', 'TJ', 'Khatlon', null, null);
INSERT INTO `cities` VALUES ('3558', '207', 'TJ', 'Sughd', null, null);
INSERT INTO `cities` VALUES ('3560', '216', 'TM', 'Ahal', null, null);
INSERT INTO `cities` VALUES ('3561', '216', 'TM', 'Balkan', null, null);
INSERT INTO `cities` VALUES ('3562', '216', 'TM', 'Dashoguz', null, null);
INSERT INTO `cities` VALUES ('3563', '216', 'TM', 'Lebap', null, null);
INSERT INTO `cities` VALUES ('3564', '216', 'TM', 'Mary', null, null);
INSERT INTO `cities` VALUES ('3565', '214', 'TN', 'Kasserine', null, null);
INSERT INTO `cities` VALUES ('3566', '214', 'TN', 'Kairouan', null, null);
INSERT INTO `cities` VALUES ('3567', '214', 'TN', 'Jendouba', null, null);
INSERT INTO `cities` VALUES ('3568', '214', 'TN', 'Qafsah', null, null);
INSERT INTO `cities` VALUES ('3569', '214', 'TN', 'El Kef', null, null);
INSERT INTO `cities` VALUES ('3570', '214', 'TN', 'Al Mahdia', null, null);
INSERT INTO `cities` VALUES ('3571', '214', 'TN', 'Al Munastir', null, null);
INSERT INTO `cities` VALUES ('3572', '214', 'TN', 'Bajah', null, null);
INSERT INTO `cities` VALUES ('3573', '214', 'TN', 'Bizerte', null, null);
INSERT INTO `cities` VALUES ('3574', '214', 'TN', 'Nabeul', null, null);
INSERT INTO `cities` VALUES ('3575', '214', 'TN', 'Siliana', null, null);
INSERT INTO `cities` VALUES ('3576', '214', 'TN', 'Sousse', null, null);
INSERT INTO `cities` VALUES ('3577', '214', 'TN', 'Ben Arous', null, null);
INSERT INTO `cities` VALUES ('3578', '214', 'TN', 'Madanin', null, null);
INSERT INTO `cities` VALUES ('3579', '214', 'TN', 'Gabes', null, null);
INSERT INTO `cities` VALUES ('3580', '214', 'TN', 'Kebili', null, null);
INSERT INTO `cities` VALUES ('3581', '214', 'TN', 'Sfax', null, null);
INSERT INTO `cities` VALUES ('3582', '214', 'TN', 'Sidi Bou Zid', null, null);
INSERT INTO `cities` VALUES ('3583', '214', 'TN', 'Tataouine', null, null);
INSERT INTO `cities` VALUES ('3584', '214', 'TN', 'Tozeur', null, null);
INSERT INTO `cities` VALUES ('3585', '214', 'TN', 'Tunis', null, null);
INSERT INTO `cities` VALUES ('3586', '214', 'TN', 'Zaghouan', null, null);
INSERT INTO `cities` VALUES ('3587', '214', 'TN', 'Aiana', null, null);
INSERT INTO `cities` VALUES ('3588', '214', 'TN', 'Manouba', null, null);
INSERT INTO `cities` VALUES ('3589', '212', 'TO', 'Ha', null, null);
INSERT INTO `cities` VALUES ('3590', '212', 'TO', 'Tongatapu', null, null);
INSERT INTO `cities` VALUES ('3591', '212', 'TO', 'Vava', null, null);
INSERT INTO `cities` VALUES ('3592', '215', 'TR', 'Adiyaman', null, null);
INSERT INTO `cities` VALUES ('3593', '215', 'TR', 'Afyonkarahisar', null, null);
INSERT INTO `cities` VALUES ('3594', '215', 'TR', 'Agri', null, null);
INSERT INTO `cities` VALUES ('3595', '215', 'TR', 'Amasya', null, null);
INSERT INTO `cities` VALUES ('3596', '215', 'TR', 'Antalya', null, null);
INSERT INTO `cities` VALUES ('3597', '215', 'TR', 'Artvin', null, null);
INSERT INTO `cities` VALUES ('3598', '215', 'TR', 'Aydin', null, null);
INSERT INTO `cities` VALUES ('3599', '215', 'TR', 'Balikesir', null, null);
INSERT INTO `cities` VALUES ('3600', '215', 'TR', 'Bilecik', null, null);
INSERT INTO `cities` VALUES ('3601', '215', 'TR', 'Bingol', null, null);
INSERT INTO `cities` VALUES ('3602', '215', 'TR', 'Bitlis', null, null);
INSERT INTO `cities` VALUES ('3603', '215', 'TR', 'Bolu', null, null);
INSERT INTO `cities` VALUES ('3604', '215', 'TR', 'Burdur', null, null);
INSERT INTO `cities` VALUES ('3605', '215', 'TR', 'Bursa', null, null);
INSERT INTO `cities` VALUES ('3606', '215', 'TR', 'Canakkale', null, null);
INSERT INTO `cities` VALUES ('3607', '215', 'TR', 'Corum', null, null);
INSERT INTO `cities` VALUES ('3608', '215', 'TR', 'Denizli', null, null);
INSERT INTO `cities` VALUES ('3609', '215', 'TR', 'Diyarbakir', null, null);
INSERT INTO `cities` VALUES ('3610', '215', 'TR', 'Edirne', null, null);
INSERT INTO `cities` VALUES ('3611', '215', 'TR', 'Elazig', null, null);
INSERT INTO `cities` VALUES ('3612', '215', 'TR', 'Erzincan', null, null);
INSERT INTO `cities` VALUES ('3613', '215', 'TR', 'Erzurum', null, null);
INSERT INTO `cities` VALUES ('3614', '215', 'TR', 'Eskisehir', null, null);
INSERT INTO `cities` VALUES ('3615', '215', 'TR', 'Giresun', null, null);
INSERT INTO `cities` VALUES ('3616', '215', 'TR', 'Hatay', null, null);
INSERT INTO `cities` VALUES ('3617', '215', 'TR', 'Mersin', null, null);
INSERT INTO `cities` VALUES ('3618', '215', 'TR', 'Isparta', null, null);
INSERT INTO `cities` VALUES ('3619', '215', 'TR', 'Istanbul', null, null);
INSERT INTO `cities` VALUES ('3620', '215', 'TR', 'Izmir', null, null);
INSERT INTO `cities` VALUES ('3621', '215', 'TR', 'Kastamonu', null, null);
INSERT INTO `cities` VALUES ('3622', '215', 'TR', 'Kayseri', null, null);
INSERT INTO `cities` VALUES ('3623', '215', 'TR', 'Kirklareli', null, null);
INSERT INTO `cities` VALUES ('3624', '215', 'TR', 'Kirsehir', null, null);
INSERT INTO `cities` VALUES ('3625', '215', 'TR', 'Kocaeli', null, null);
INSERT INTO `cities` VALUES ('3626', '215', 'TR', 'Kutahya', null, null);
INSERT INTO `cities` VALUES ('3627', '215', 'TR', 'Malatya', null, null);
INSERT INTO `cities` VALUES ('3628', '215', 'TR', 'Manisa', null, null);
INSERT INTO `cities` VALUES ('3629', '215', 'TR', 'Kahramanmaras', null, null);
INSERT INTO `cities` VALUES ('3630', '215', 'TR', 'Mugla', null, null);
INSERT INTO `cities` VALUES ('3631', '215', 'TR', 'Mus', null, null);
INSERT INTO `cities` VALUES ('3632', '215', 'TR', 'Nevsehir', null, null);
INSERT INTO `cities` VALUES ('3633', '215', 'TR', 'Ordu', null, null);
INSERT INTO `cities` VALUES ('3634', '215', 'TR', 'Rize', null, null);
INSERT INTO `cities` VALUES ('3635', '215', 'TR', 'Sakarya', null, null);
INSERT INTO `cities` VALUES ('3636', '215', 'TR', 'Samsun', null, null);
INSERT INTO `cities` VALUES ('3637', '215', 'TR', 'Sinop', null, null);
INSERT INTO `cities` VALUES ('3638', '215', 'TR', 'Sivas', null, null);
INSERT INTO `cities` VALUES ('3639', '215', 'TR', 'Tekirdag', null, null);
INSERT INTO `cities` VALUES ('3640', '215', 'TR', 'Tokat', null, null);
INSERT INTO `cities` VALUES ('3641', '215', 'TR', 'Trabzon', null, null);
INSERT INTO `cities` VALUES ('3642', '215', 'TR', 'Tunceli', null, null);
INSERT INTO `cities` VALUES ('3643', '215', 'TR', 'Sanliurfa', null, null);
INSERT INTO `cities` VALUES ('3644', '215', 'TR', 'Usak', null, null);
INSERT INTO `cities` VALUES ('3645', '215', 'TR', 'Van', null, null);
INSERT INTO `cities` VALUES ('3646', '215', 'TR', 'Yozgat', null, null);
INSERT INTO `cities` VALUES ('3647', '215', 'TR', 'Ankara', null, null);
INSERT INTO `cities` VALUES ('3648', '215', 'TR', 'Gumushane', null, null);
INSERT INTO `cities` VALUES ('3649', '215', 'TR', 'Hakkari', null, null);
INSERT INTO `cities` VALUES ('3650', '215', 'TR', 'Konya', null, null);
INSERT INTO `cities` VALUES ('3651', '215', 'TR', 'Mardin', null, null);
INSERT INTO `cities` VALUES ('3652', '215', 'TR', 'Nigde', null, null);
INSERT INTO `cities` VALUES ('3653', '215', 'TR', 'Siirt', null, null);
INSERT INTO `cities` VALUES ('3654', '215', 'TR', 'Aksaray', null, null);
INSERT INTO `cities` VALUES ('3655', '215', 'TR', 'Batman', null, null);
INSERT INTO `cities` VALUES ('3656', '215', 'TR', 'Bayburt', null, null);
INSERT INTO `cities` VALUES ('3657', '215', 'TR', 'Karaman', null, null);
INSERT INTO `cities` VALUES ('3658', '215', 'TR', 'Kirikkale', null, null);
INSERT INTO `cities` VALUES ('3659', '215', 'TR', 'Sirnak', null, null);
INSERT INTO `cities` VALUES ('3660', '215', 'TR', 'Adana', null, null);
INSERT INTO `cities` VALUES ('3661', '215', 'TR', 'Cankiri', null, null);
INSERT INTO `cities` VALUES ('3662', '215', 'TR', 'Gaziantep', null, null);
INSERT INTO `cities` VALUES ('3663', '215', 'TR', 'Kars', null, null);
INSERT INTO `cities` VALUES ('3664', '215', 'TR', 'Zonguldak', null, null);
INSERT INTO `cities` VALUES ('3665', '215', 'TR', 'Ardahan', null, null);
INSERT INTO `cities` VALUES ('3666', '215', 'TR', 'Bartin', null, null);
INSERT INTO `cities` VALUES ('3667', '215', 'TR', 'Igdir', null, null);
INSERT INTO `cities` VALUES ('3668', '215', 'TR', 'Karabuk', null, null);
INSERT INTO `cities` VALUES ('3669', '215', 'TR', 'Kilis', null, null);
INSERT INTO `cities` VALUES ('3670', '215', 'TR', 'Osmaniye', null, null);
INSERT INTO `cities` VALUES ('3671', '215', 'TR', 'Yalova', null, null);
INSERT INTO `cities` VALUES ('3672', '215', 'TR', 'Duzce', null, null);
INSERT INTO `cities` VALUES ('3673', '213', 'TT', 'Arima', null, null);
INSERT INTO `cities` VALUES ('3674', '213', 'TT', 'Caroni', null, null);
INSERT INTO `cities` VALUES ('3675', '213', 'TT', 'Mayaro', null, null);
INSERT INTO `cities` VALUES ('3676', '213', 'TT', 'Nariva', null, null);
INSERT INTO `cities` VALUES ('3677', '213', 'TT', 'Port-of-Spain', null, null);
INSERT INTO `cities` VALUES ('3678', '213', 'TT', 'Saint Andrew', null, null);
INSERT INTO `cities` VALUES ('3679', '213', 'TT', 'Saint David', null, null);
INSERT INTO `cities` VALUES ('3680', '213', 'TT', 'Saint George', null, null);
INSERT INTO `cities` VALUES ('3681', '213', 'TT', 'Saint Patrick', null, null);
INSERT INTO `cities` VALUES ('3682', '213', 'TT', 'San Fernando', null, null);
INSERT INTO `cities` VALUES ('3683', '213', 'TT', 'Tobago', null, null);
INSERT INTO `cities` VALUES ('3684', '213', 'TT', 'Victoria', null, null);
INSERT INTO `cities` VALUES ('3685', '206', 'TW', 'Fu-chien', null, null);
INSERT INTO `cities` VALUES ('3686', '206', 'TW', 'Kao-hsiung', null, null);
INSERT INTO `cities` VALUES ('3687', '206', 'TW', 'T\'ai-pei', null, null);
INSERT INTO `cities` VALUES ('3688', '206', 'TW', 'T\'ai-wan', null, null);
INSERT INTO `cities` VALUES ('3689', '208', 'TZ', 'Pwani', null, null);
INSERT INTO `cities` VALUES ('3690', '208', 'TZ', 'Dodoma', null, null);
INSERT INTO `cities` VALUES ('3691', '208', 'TZ', 'Iringa', null, null);
INSERT INTO `cities` VALUES ('3692', '208', 'TZ', 'Kigoma', null, null);
INSERT INTO `cities` VALUES ('3693', '208', 'TZ', 'Kilimanjaro', null, null);
INSERT INTO `cities` VALUES ('3694', '208', 'TZ', 'Lindi', null, null);
INSERT INTO `cities` VALUES ('3695', '208', 'TZ', 'Mara', null, null);
INSERT INTO `cities` VALUES ('3696', '208', 'TZ', 'Mbeya', null, null);
INSERT INTO `cities` VALUES ('3697', '208', 'TZ', 'Morogoro', null, null);
INSERT INTO `cities` VALUES ('3698', '208', 'TZ', 'Mtwara', null, null);
INSERT INTO `cities` VALUES ('3699', '208', 'TZ', 'Mwanza', null, null);
INSERT INTO `cities` VALUES ('3700', '208', 'TZ', 'Pemba North', null, null);
INSERT INTO `cities` VALUES ('3701', '208', 'TZ', 'Ruvuma', null, null);
INSERT INTO `cities` VALUES ('3702', '208', 'TZ', 'Shinyanga', null, null);
INSERT INTO `cities` VALUES ('3703', '208', 'TZ', 'Singida', null, null);
INSERT INTO `cities` VALUES ('3704', '208', 'TZ', 'Tabora', null, null);
INSERT INTO `cities` VALUES ('3705', '208', 'TZ', 'Tanga', null, null);
INSERT INTO `cities` VALUES ('3706', '208', 'TZ', 'Kagera', null, null);
INSERT INTO `cities` VALUES ('3707', '208', 'TZ', 'Pemba South', null, null);
INSERT INTO `cities` VALUES ('3708', '208', 'TZ', 'Zanzibar Central', null, null);
INSERT INTO `cities` VALUES ('3709', '208', 'TZ', 'Zanzibar North', null, null);
INSERT INTO `cities` VALUES ('3710', '208', 'TZ', 'Dar es Salaam', null, null);
INSERT INTO `cities` VALUES ('3711', '208', 'TZ', 'Rukwa', null, null);
INSERT INTO `cities` VALUES ('3712', '208', 'TZ', 'Zanzibar Urban', null, null);
INSERT INTO `cities` VALUES ('3713', '208', 'TZ', 'Arusha', null, null);
INSERT INTO `cities` VALUES ('3714', '208', 'TZ', 'Manyara', null, null);
INSERT INTO `cities` VALUES ('3715', '220', 'UA', 'Cherkas\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3716', '220', 'UA', 'Chernihivs\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3717', '220', 'UA', 'Chernivets\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3718', '220', 'UA', 'Dnipropetrovs\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3719', '220', 'UA', 'Donets\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3720', '220', 'UA', 'Ivano-Frankivs\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3721', '220', 'UA', 'Kharkivs\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3722', '220', 'UA', 'Khersons\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3723', '220', 'UA', 'Khmel\'nyts\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3724', '220', 'UA', 'Kirovohrads\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3725', '220', 'UA', 'Krym', null, null);
INSERT INTO `cities` VALUES ('3726', '220', 'UA', 'Kyyiv', null, null);
INSERT INTO `cities` VALUES ('3727', '220', 'UA', 'Kyyivs\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3728', '220', 'UA', 'Luhans\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3729', '220', 'UA', 'L\'vivs\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3730', '220', 'UA', 'Mykolayivs\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3731', '220', 'UA', 'Odes\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3732', '220', 'UA', 'Poltavs\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3733', '220', 'UA', 'Rivnens\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3734', '220', 'UA', 'Sevastopol\'', null, null);
INSERT INTO `cities` VALUES ('3735', '220', 'UA', 'Sums\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3736', '220', 'UA', 'Ternopil\'s\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3737', '220', 'UA', 'Vinnyts\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3738', '220', 'UA', 'Volyns\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3739', '220', 'UA', 'Zakarpats\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3740', '220', 'UA', 'Zaporiz\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3741', '220', 'UA', 'Zhytomyrs\'ka Oblast\'', null, null);
INSERT INTO `cities` VALUES ('3742', '219', 'UG', 'Apac', null, null);
INSERT INTO `cities` VALUES ('3743', '219', 'UG', 'Bundibugyo', null, null);
INSERT INTO `cities` VALUES ('3744', '219', 'UG', 'Bushenyi', null, null);
INSERT INTO `cities` VALUES ('3745', '219', 'UG', 'Gulu', null, null);
INSERT INTO `cities` VALUES ('3746', '219', 'UG', 'Hoima', null, null);
INSERT INTO `cities` VALUES ('3747', '219', 'UG', 'Jinja', null, null);
INSERT INTO `cities` VALUES ('3748', '219', 'UG', 'Kalangala', null, null);
INSERT INTO `cities` VALUES ('3749', '219', 'UG', 'Kampala', null, null);
INSERT INTO `cities` VALUES ('3750', '219', 'UG', 'Kamuli', null, null);
INSERT INTO `cities` VALUES ('3751', '219', 'UG', 'Kapchorwa', null, null);
INSERT INTO `cities` VALUES ('3752', '219', 'UG', 'Kasese', null, null);
INSERT INTO `cities` VALUES ('3753', '219', 'UG', 'Kibale', null, null);
INSERT INTO `cities` VALUES ('3754', '219', 'UG', 'Kiboga', null, null);
INSERT INTO `cities` VALUES ('3755', '219', 'UG', 'Kisoro', null, null);
INSERT INTO `cities` VALUES ('3756', '219', 'UG', 'Kotido', null, null);
INSERT INTO `cities` VALUES ('3757', '219', 'UG', 'Kumi', null, null);
INSERT INTO `cities` VALUES ('3758', '219', 'UG', 'Lira', null, null);
INSERT INTO `cities` VALUES ('3759', '219', 'UG', 'Masindi', null, null);
INSERT INTO `cities` VALUES ('3760', '219', 'UG', 'Mbarara', null, null);
INSERT INTO `cities` VALUES ('3761', '219', 'UG', 'Mubende', null, null);
INSERT INTO `cities` VALUES ('3762', '219', 'UG', 'Nebbi', null, null);
INSERT INTO `cities` VALUES ('3763', '219', 'UG', 'Ntungamo', null, null);
INSERT INTO `cities` VALUES ('3764', '219', 'UG', 'Pallisa', null, null);
INSERT INTO `cities` VALUES ('3765', '219', 'UG', 'Rakai', null, null);
INSERT INTO `cities` VALUES ('3766', '219', 'UG', 'Adjumani', null, null);
INSERT INTO `cities` VALUES ('3767', '219', 'UG', 'Bugiri', null, null);
INSERT INTO `cities` VALUES ('3768', '219', 'UG', 'Busia', null, null);
INSERT INTO `cities` VALUES ('3769', '219', 'UG', 'Katakwi', null, null);
INSERT INTO `cities` VALUES ('3770', '219', 'UG', 'Luwero', null, null);
INSERT INTO `cities` VALUES ('3771', '219', 'UG', 'Masaka', null, null);
INSERT INTO `cities` VALUES ('3772', '219', 'UG', 'Moyo', null, null);
INSERT INTO `cities` VALUES ('3773', '219', 'UG', 'Nakasongola', null, null);
INSERT INTO `cities` VALUES ('3774', '219', 'UG', 'Sembabule', null, null);
INSERT INTO `cities` VALUES ('3775', '219', 'UG', 'Tororo', null, null);
INSERT INTO `cities` VALUES ('3776', '219', 'UG', 'Arua', null, null);
INSERT INTO `cities` VALUES ('3777', '219', 'UG', 'Iganga', null, null);
INSERT INTO `cities` VALUES ('3778', '219', 'UG', 'Kabarole', null, null);
INSERT INTO `cities` VALUES ('3779', '219', 'UG', 'Kaberamaido', null, null);
INSERT INTO `cities` VALUES ('3780', '219', 'UG', 'Kamwenge', null, null);
INSERT INTO `cities` VALUES ('3781', '219', 'UG', 'Kanungu', null, null);
INSERT INTO `cities` VALUES ('3782', '219', 'UG', 'Kayunga', null, null);
INSERT INTO `cities` VALUES ('3783', '219', 'UG', 'Kitgum', null, null);
INSERT INTO `cities` VALUES ('3784', '219', 'UG', 'Kyenjojo', null, null);
INSERT INTO `cities` VALUES ('3785', '219', 'UG', 'Mayuge', null, null);
INSERT INTO `cities` VALUES ('3786', '219', 'UG', 'Mbale', null, null);
INSERT INTO `cities` VALUES ('3787', '219', 'UG', 'Moroto', null, null);
INSERT INTO `cities` VALUES ('3788', '219', 'UG', 'Mpigi', null, null);
INSERT INTO `cities` VALUES ('3789', '219', 'UG', 'Mukono', null, null);
INSERT INTO `cities` VALUES ('3790', '219', 'UG', 'Nakapiripirit', null, null);
INSERT INTO `cities` VALUES ('3791', '219', 'UG', 'Pader', null, null);
INSERT INTO `cities` VALUES ('3792', '219', 'UG', 'Rukungiri', null, null);
INSERT INTO `cities` VALUES ('3793', '219', 'UG', 'Sironko', null, null);
INSERT INTO `cities` VALUES ('3794', '219', 'UG', 'Soroti', null, null);
INSERT INTO `cities` VALUES ('3795', '219', 'UG', 'Wakiso', null, null);
INSERT INTO `cities` VALUES ('3796', '219', 'UG', 'Yumbe', null, null);
INSERT INTO `cities` VALUES ('3797', '223', 'US', 'Armed Forces Americas', null, null);
INSERT INTO `cities` VALUES ('3798', '223', 'US', 'Armed Forces Europe, Middle East, & Canada', null, null);
INSERT INTO `cities` VALUES ('3799', '223', 'US', 'Alaska', null, null);
INSERT INTO `cities` VALUES ('3800', '223', 'US', 'Alabama', null, null);
INSERT INTO `cities` VALUES ('3801', '223', 'US', 'Armed Forces Pacific', null, null);
INSERT INTO `cities` VALUES ('3802', '223', 'US', 'Arkansas', null, null);
INSERT INTO `cities` VALUES ('3803', '223', 'US', 'American Samoa', null, null);
INSERT INTO `cities` VALUES ('3804', '223', 'US', 'Arizona', null, null);
INSERT INTO `cities` VALUES ('3805', '223', 'US', 'California', null, null);
INSERT INTO `cities` VALUES ('3806', '223', 'US', 'Colorado', null, null);
INSERT INTO `cities` VALUES ('3807', '223', 'US', 'Connecticut', null, null);
INSERT INTO `cities` VALUES ('3808', '223', 'US', 'District of Columbia', null, null);
INSERT INTO `cities` VALUES ('3809', '223', 'US', 'Delaware', null, null);
INSERT INTO `cities` VALUES ('3810', '223', 'US', 'Florida', null, null);
INSERT INTO `cities` VALUES ('3811', '223', 'US', 'Federated States of Micronesia', null, null);
INSERT INTO `cities` VALUES ('3812', '223', 'US', 'Georgia', null, null);
INSERT INTO `cities` VALUES ('3813', '223', 'US', 'Guam', null, null);
INSERT INTO `cities` VALUES ('3814', '223', 'US', 'Hawaii', null, null);
INSERT INTO `cities` VALUES ('3815', '223', 'US', 'Iowa', null, null);
INSERT INTO `cities` VALUES ('3816', '223', 'US', 'Idaho', null, null);
INSERT INTO `cities` VALUES ('3817', '223', 'US', 'Illinois', null, null);
INSERT INTO `cities` VALUES ('3818', '223', 'US', 'Indiana', null, null);
INSERT INTO `cities` VALUES ('3819', '223', 'US', 'Kansas', null, null);
INSERT INTO `cities` VALUES ('3820', '223', 'US', 'Kentucky', null, null);
INSERT INTO `cities` VALUES ('3821', '223', 'US', 'Louisiana', null, null);
INSERT INTO `cities` VALUES ('3822', '223', 'US', 'Massachusetts', null, null);
INSERT INTO `cities` VALUES ('3823', '223', 'US', 'Maryland', null, null);
INSERT INTO `cities` VALUES ('3824', '223', 'US', 'Maine', null, null);
INSERT INTO `cities` VALUES ('3825', '223', 'US', 'Marshall Islands', null, null);
INSERT INTO `cities` VALUES ('3826', '223', 'US', 'Michigan', null, null);
INSERT INTO `cities` VALUES ('3827', '223', 'US', 'Minnesota', null, null);
INSERT INTO `cities` VALUES ('3828', '223', 'US', 'Missouri', null, null);
INSERT INTO `cities` VALUES ('3829', '223', 'US', 'Northern Mariana Islands', null, null);
INSERT INTO `cities` VALUES ('3830', '223', 'US', 'Mississippi', null, null);
INSERT INTO `cities` VALUES ('3831', '223', 'US', 'Montana', null, null);
INSERT INTO `cities` VALUES ('3832', '223', 'US', 'North Carolina', null, null);
INSERT INTO `cities` VALUES ('3833', '223', 'US', 'North Dakota', null, null);
INSERT INTO `cities` VALUES ('3834', '223', 'US', 'Nebraska', null, null);
INSERT INTO `cities` VALUES ('3835', '223', 'US', 'New Hampshire', null, null);
INSERT INTO `cities` VALUES ('3836', '223', 'US', 'New Jersey', null, null);
INSERT INTO `cities` VALUES ('3837', '223', 'US', 'New Mexico', null, null);
INSERT INTO `cities` VALUES ('3838', '223', 'US', 'Nevada', null, null);
INSERT INTO `cities` VALUES ('3839', '223', 'US', 'New York', null, null);
INSERT INTO `cities` VALUES ('3840', '223', 'US', 'Ohio', null, null);
INSERT INTO `cities` VALUES ('3841', '223', 'US', 'Oklahoma', null, null);
INSERT INTO `cities` VALUES ('3842', '223', 'US', 'Oregon', null, null);
INSERT INTO `cities` VALUES ('3843', '223', 'US', 'Pennsylvania', null, null);
INSERT INTO `cities` VALUES ('3844', '223', 'US', 'Palau', null, null);
INSERT INTO `cities` VALUES ('3845', '223', 'US', 'Rhode Island', null, null);
INSERT INTO `cities` VALUES ('3846', '223', 'US', 'South Carolina', null, null);
INSERT INTO `cities` VALUES ('3847', '223', 'US', 'South Dakota', null, null);
INSERT INTO `cities` VALUES ('3848', '223', 'US', 'Tennessee', null, null);
INSERT INTO `cities` VALUES ('3849', '223', 'US', 'Texas', null, null);
INSERT INTO `cities` VALUES ('3850', '223', 'US', 'Utah', null, null);
INSERT INTO `cities` VALUES ('3851', '223', 'US', 'Virginia', null, null);
INSERT INTO `cities` VALUES ('3852', '223', 'US', 'Virgin Islands', null, null);
INSERT INTO `cities` VALUES ('3853', '223', 'US', 'Vermont', null, null);
INSERT INTO `cities` VALUES ('3854', '223', 'US', 'Washington', null, null);
INSERT INTO `cities` VALUES ('3855', '223', 'US', 'Wisconsin', null, null);
INSERT INTO `cities` VALUES ('3856', '223', 'US', 'West Virginia', null, null);
INSERT INTO `cities` VALUES ('3857', '223', 'US', 'Wyoming', null, null);
INSERT INTO `cities` VALUES ('3858', '225', 'UY', 'Artigas', null, null);
INSERT INTO `cities` VALUES ('3859', '225', 'UY', 'Canelones', null, null);
INSERT INTO `cities` VALUES ('3860', '225', 'UY', 'Cerro Largo', null, null);
INSERT INTO `cities` VALUES ('3861', '225', 'UY', 'Colonia', null, null);
INSERT INTO `cities` VALUES ('3862', '225', 'UY', 'Durazno', null, null);
INSERT INTO `cities` VALUES ('3863', '225', 'UY', 'Flores', null, null);
INSERT INTO `cities` VALUES ('3864', '225', 'UY', 'Florida', null, null);
INSERT INTO `cities` VALUES ('3865', '225', 'UY', 'Lavalleja', null, null);
INSERT INTO `cities` VALUES ('3866', '225', 'UY', 'Maldonado', null, null);
INSERT INTO `cities` VALUES ('3867', '225', 'UY', 'Montevideo', null, null);
INSERT INTO `cities` VALUES ('3868', '225', 'UY', 'Paysandu', null, null);
INSERT INTO `cities` VALUES ('3869', '225', 'UY', 'Rio Negro', null, null);
INSERT INTO `cities` VALUES ('3870', '225', 'UY', 'Rivera', null, null);
INSERT INTO `cities` VALUES ('3871', '225', 'UY', 'Rocha', null, null);
INSERT INTO `cities` VALUES ('3872', '225', 'UY', 'Salto', null, null);
INSERT INTO `cities` VALUES ('3873', '225', 'UY', 'San Jose', null, null);
INSERT INTO `cities` VALUES ('3874', '225', 'UY', 'Soriano', null, null);
INSERT INTO `cities` VALUES ('3875', '225', 'UY', 'Tacuarembo', null, null);
INSERT INTO `cities` VALUES ('3876', '225', 'UY', 'Treinta y Tres', null, null);
INSERT INTO `cities` VALUES ('3877', '226', 'UZ', 'Andijon', null, null);
INSERT INTO `cities` VALUES ('3878', '226', 'UZ', 'Bukhoro', null, null);
INSERT INTO `cities` VALUES ('3879', '226', 'UZ', 'Farghona', null, null);
INSERT INTO `cities` VALUES ('3880', '226', 'UZ', 'Jizzakh', null, null);
INSERT INTO `cities` VALUES ('3881', '226', 'UZ', 'Khorazm', null, null);
INSERT INTO `cities` VALUES ('3882', '226', 'UZ', 'Namangan', null, null);
INSERT INTO `cities` VALUES ('3883', '226', 'UZ', 'Nawoiy', null, null);
INSERT INTO `cities` VALUES ('3884', '226', 'UZ', 'Qashqadaryo', null, null);
INSERT INTO `cities` VALUES ('3885', '226', 'UZ', 'Qoraqalpoghiston', null, null);
INSERT INTO `cities` VALUES ('3886', '226', 'UZ', 'Samarqand', null, null);
INSERT INTO `cities` VALUES ('3887', '226', 'UZ', 'Sirdaryo', null, null);
INSERT INTO `cities` VALUES ('3888', '226', 'UZ', 'Surkhondaryo', null, null);
INSERT INTO `cities` VALUES ('3889', '226', 'UZ', 'Toshkent', null, null);
INSERT INTO `cities` VALUES ('3890', '226', 'UZ', 'Toshkent', null, null);
INSERT INTO `cities` VALUES ('3891', '180', 'VC', 'Charlotte', null, null);
INSERT INTO `cities` VALUES ('3892', '180', 'VC', 'Saint Andrew', null, null);
INSERT INTO `cities` VALUES ('3893', '180', 'VC', 'Saint David', null, null);
INSERT INTO `cities` VALUES ('3894', '180', 'VC', 'Saint George', null, null);
INSERT INTO `cities` VALUES ('3895', '180', 'VC', 'Saint Patrick', null, null);
INSERT INTO `cities` VALUES ('3896', '180', 'VC', 'Grenadines', null, null);
INSERT INTO `cities` VALUES ('3897', '229', 'VE', 'Amazonas', null, null);
INSERT INTO `cities` VALUES ('3898', '229', 'VE', 'Anzoategui', null, null);
INSERT INTO `cities` VALUES ('3899', '229', 'VE', 'Apure', null, null);
INSERT INTO `cities` VALUES ('3900', '229', 'VE', 'Aragua', null, null);
INSERT INTO `cities` VALUES ('3901', '229', 'VE', 'Barinas', null, null);
INSERT INTO `cities` VALUES ('3902', '229', 'VE', 'Bolivar', null, null);
INSERT INTO `cities` VALUES ('3903', '229', 'VE', 'Carabobo', null, null);
INSERT INTO `cities` VALUES ('3904', '229', 'VE', 'Cojedes', null, null);
INSERT INTO `cities` VALUES ('3905', '229', 'VE', 'Delta Amacuro', null, null);
INSERT INTO `cities` VALUES ('3906', '229', 'VE', 'Falcon', null, null);
INSERT INTO `cities` VALUES ('3907', '229', 'VE', 'Guarico', null, null);
INSERT INTO `cities` VALUES ('3908', '229', 'VE', 'Lara', null, null);
INSERT INTO `cities` VALUES ('3909', '229', 'VE', 'Merida', null, null);
INSERT INTO `cities` VALUES ('3910', '229', 'VE', 'Miranda', null, null);
INSERT INTO `cities` VALUES ('3911', '229', 'VE', 'Monagas', null, null);
INSERT INTO `cities` VALUES ('3912', '229', 'VE', 'Nueva Esparta', null, null);
INSERT INTO `cities` VALUES ('3913', '229', 'VE', 'Portuguesa', null, null);
INSERT INTO `cities` VALUES ('3914', '229', 'VE', 'Sucre', null, null);
INSERT INTO `cities` VALUES ('3915', '229', 'VE', 'Tachira', null, null);
INSERT INTO `cities` VALUES ('3916', '229', 'VE', 'Trujillo', null, null);
INSERT INTO `cities` VALUES ('3917', '229', 'VE', 'Yaracuy', null, null);
INSERT INTO `cities` VALUES ('3918', '229', 'VE', 'Zulia', null, null);
INSERT INTO `cities` VALUES ('3919', '229', 'VE', 'Dependencias Federales', null, null);
INSERT INTO `cities` VALUES ('3920', '229', 'VE', 'Distrito Federal', null, null);
INSERT INTO `cities` VALUES ('3921', '229', 'VE', 'Vargas', null, null);
INSERT INTO `cities` VALUES ('3922', '230', 'VN', 'An Giang', '14.35', '109.1');
INSERT INTO `cities` VALUES ('3923', '230', 'VN', 'Ben Tre', '10.2333', '106.3833');
INSERT INTO `cities` VALUES ('3924', '230', 'VN', 'Cao Bang', '22.6667', '106.25');
INSERT INTO `cities` VALUES ('3925', '230', 'VN', 'Dong Thap', '21.7667', '104.7');
INSERT INTO `cities` VALUES ('3926', '230', 'VN', 'Hai Phong', '20.8561', '106.6822');
INSERT INTO `cities` VALUES ('3927', '230', 'VN', 'Ho Chi Minh', '10.8142', '106.6438');
INSERT INTO `cities` VALUES ('3928', '230', 'VN', 'Kien Giang', null, null);
INSERT INTO `cities` VALUES ('3929', '230', 'VN', 'Lam Dong', null, null);
INSERT INTO `cities` VALUES ('3930', '230', 'VN', 'Long An', '10.4', '106.3333');
INSERT INTO `cities` VALUES ('3931', '230', 'VN', 'Quang Ninh', '17.4', '106.65');
INSERT INTO `cities` VALUES ('3932', '230', 'VN', 'Son La', '21.3167', '103.9');
INSERT INTO `cities` VALUES ('3933', '230', 'VN', 'Tay Ninh', '11.3', '106.1');
INSERT INTO `cities` VALUES ('3934', '230', 'VN', 'Thanh Hoa', '19.8', '105.7667');
INSERT INTO `cities` VALUES ('3935', '230', 'VN', 'Thai Binh', '20.45', '106.3333');
INSERT INTO `cities` VALUES ('3936', '230', 'VN', 'Tien Giang', null, null);
INSERT INTO `cities` VALUES ('3937', '230', 'VN', 'Lang Son', '21.8333', '106.7333');
INSERT INTO `cities` VALUES ('3938', '230', 'VN', 'Dong Nai', '18.1', '106.3333');
INSERT INTO `cities` VALUES ('3939', '230', 'VN', 'Ha Noi', '21.0333', '105.85');
INSERT INTO `cities` VALUES ('3940', '230', 'VN', 'Ba Ria', '14.7', '108.6833');
INSERT INTO `cities` VALUES ('3941', '230', 'VN', 'Binh Dinh', '14.1333', '108.7833');
INSERT INTO `cities` VALUES ('3942', '230', 'VN', 'Binh Thuan', null, null);
INSERT INTO `cities` VALUES ('3943', '230', 'VN', 'Gia Lai', '13.9833', '108');
INSERT INTO `cities` VALUES ('3944', '230', 'VN', 'Ha Giang', '22.8333', '104.9833');
INSERT INTO `cities` VALUES ('3945', '230', 'VN', 'Ha Tinh', '18.3333', '105.9');
INSERT INTO `cities` VALUES ('3946', '230', 'VN', 'Hoa Binh', '20.8133', '105.3383');
INSERT INTO `cities` VALUES ('3947', '230', 'VN', 'Khanh Hoa', '10.6833', '105.1667');
INSERT INTO `cities` VALUES ('3948', '230', 'VN', 'Kon Tum', '14.35', '108');
INSERT INTO `cities` VALUES ('3949', '230', 'VN', 'Nghe An', null, null);
INSERT INTO `cities` VALUES ('3950', '230', 'VN', 'Ninh Binh', '20.2539', '105.975');
INSERT INTO `cities` VALUES ('3951', '230', 'VN', 'Ninh Thuan', null, null);
INSERT INTO `cities` VALUES ('3952', '230', 'VN', 'Phu Yen', null, null);
INSERT INTO `cities` VALUES ('3953', '230', 'VN', 'Quang Binh', null, null);
INSERT INTO `cities` VALUES ('3954', '230', 'VN', 'Quang Ngai', '15.1167', '108.8');
INSERT INTO `cities` VALUES ('3955', '230', 'VN', 'Quang Tri', '16.75', '107.2');
INSERT INTO `cities` VALUES ('3956', '230', 'VN', 'Soc Trang', '9.6033', '105.98');
INSERT INTO `cities` VALUES ('3957', '230', 'VN', 'Thua Thien-Hue', null, null);
INSERT INTO `cities` VALUES ('3958', '230', 'VN', 'Tra Vinh', '9.9347', '106.3453');
INSERT INTO `cities` VALUES ('3959', '230', 'VN', 'Tuyen Quang', null, null);
INSERT INTO `cities` VALUES ('3960', '230', 'VN', 'Vinh Long', '10.25', '105.9667');
INSERT INTO `cities` VALUES ('3961', '230', 'VN', 'Yen Bai', '21.7', '104.8667');
INSERT INTO `cities` VALUES ('3962', '230', 'VN', 'Bac Giang', '21.2731', '106.1946');
INSERT INTO `cities` VALUES ('3963', '230', 'VN', 'Bac Kan', null, null);
INSERT INTO `cities` VALUES ('3964', '230', 'VN', 'Bac Lieu', '9.2941', '105.7278');
INSERT INTO `cities` VALUES ('3965', '230', 'VN', 'Bac Ninh', '21.1861', '106.0763');
INSERT INTO `cities` VALUES ('3966', '230', 'VN', 'Binh Duong', '15.85', '108.3833');
INSERT INTO `cities` VALUES ('3967', '230', 'VN', 'Binh Phuoc', '10.4927', '105.2681');
INSERT INTO `cities` VALUES ('3968', '230', 'VN', 'Ca Mau', '9.1769', '105.15');
INSERT INTO `cities` VALUES ('3969', '230', 'VN', 'Da Nang', '16.0678', '108.2208');
INSERT INTO `cities` VALUES ('3970', '230', 'VN', 'Hai Duong', '20.9333', '106.3167');
INSERT INTO `cities` VALUES ('3971', '230', 'VN', 'Ha Nam', '19.3167', '105.8');
INSERT INTO `cities` VALUES ('3972', '230', 'VN', 'Hung Yen', '20.65', '106.0667');
INSERT INTO `cities` VALUES ('3973', '230', 'VN', 'Nam Dinh', '20.4167', '106.1667');
INSERT INTO `cities` VALUES ('3974', '230', 'VN', 'Phu Tho', '13.9', '108.9167');
INSERT INTO `cities` VALUES ('3975', '230', 'VN', 'Quang Nam', '15.8858', '108.2569');
INSERT INTO `cities` VALUES ('3976', '230', 'VN', 'Thai Nguyen', '21.5928', '105.8442');
INSERT INTO `cities` VALUES ('3977', '230', 'VN', 'Vinh Phuc', '14.1', '108.8');
INSERT INTO `cities` VALUES ('3978', '230', 'VN', 'Can Tho', '10.0333', '105.7833');
INSERT INTO `cities` VALUES ('3979', '230', 'VN', 'Dac Lak', null, null);
INSERT INTO `cities` VALUES ('3980', '230', 'VN', 'Lai Chau', '22.0667', '103.1667');
INSERT INTO `cities` VALUES ('3981', '230', 'VN', 'Lao Cai', '22.4833', '103.95');
INSERT INTO `cities` VALUES ('3982', '230', 'VN', 'Dak Nong', null, null);
INSERT INTO `cities` VALUES ('3983', '230', 'VN', 'Dien Bien', '21.3833', '103.0167');
INSERT INTO `cities` VALUES ('3984', '230', 'VN', 'Hau Giang', null, null);
INSERT INTO `cities` VALUES ('3985', '227', 'VU', 'Ambrym', null, null);
INSERT INTO `cities` VALUES ('3986', '227', 'VU', 'Aoba', null, null);
INSERT INTO `cities` VALUES ('3987', '227', 'VU', 'Torba', null, null);
INSERT INTO `cities` VALUES ('3988', '227', 'VU', 'Efate', null, null);
INSERT INTO `cities` VALUES ('3989', '227', 'VU', 'Epi', null, null);
INSERT INTO `cities` VALUES ('3990', '227', 'VU', 'Malakula', null, null);
INSERT INTO `cities` VALUES ('3991', '227', 'VU', 'Paama', null, null);
INSERT INTO `cities` VALUES ('3992', '227', 'VU', 'Pentecote', null, null);
INSERT INTO `cities` VALUES ('3993', '227', 'VU', 'Sanma', null, null);
INSERT INTO `cities` VALUES ('3994', '227', 'VU', 'Shepherd', null, null);
INSERT INTO `cities` VALUES ('3995', '227', 'VU', 'Tafea', null, null);
INSERT INTO `cities` VALUES ('3996', '227', 'VU', 'Malampa', null, null);
INSERT INTO `cities` VALUES ('3997', '227', 'VU', 'Penama', null, null);
INSERT INTO `cities` VALUES ('3998', '227', 'VU', 'Shefa', null, null);
INSERT INTO `cities` VALUES ('3999', '181', 'WS', 'Aiga-i-le-Tai', null, null);
INSERT INTO `cities` VALUES ('4000', '181', 'WS', 'Atua', null, null);
INSERT INTO `cities` VALUES ('4001', '181', 'WS', 'Fa', null, null);
INSERT INTO `cities` VALUES ('4002', '181', 'WS', 'Gaga', null, null);
INSERT INTO `cities` VALUES ('4003', '181', 'WS', 'Va', null, null);
INSERT INTO `cities` VALUES ('4004', '181', 'WS', 'Gagaifomauga', null, null);
INSERT INTO `cities` VALUES ('4005', '181', 'WS', 'Palauli', null, null);
INSERT INTO `cities` VALUES ('4006', '181', 'WS', 'Satupa', null, null);
INSERT INTO `cities` VALUES ('4007', '181', 'WS', 'Tuamasaga', null, null);
INSERT INTO `cities` VALUES ('4008', '181', 'WS', 'Vaisigano', null, null);
INSERT INTO `cities` VALUES ('4009', '235', 'YE', 'Abyan', null, null);
INSERT INTO `cities` VALUES ('4010', '235', 'YE', 'Adan', null, null);
INSERT INTO `cities` VALUES ('4011', '235', 'YE', 'Al Mahrah', null, null);
INSERT INTO `cities` VALUES ('4012', '235', 'YE', 'Hadramawt', null, null);
INSERT INTO `cities` VALUES ('4013', '235', 'YE', 'Shabwah', null, null);
INSERT INTO `cities` VALUES ('4014', '235', 'YE', 'Lahij', null, null);
INSERT INTO `cities` VALUES ('4015', '235', 'YE', 'Al Bayda\'', null, null);
INSERT INTO `cities` VALUES ('4016', '235', 'YE', 'Al Hudaydah', null, null);
INSERT INTO `cities` VALUES ('4017', '235', 'YE', 'Al Jawf', null, null);
INSERT INTO `cities` VALUES ('4018', '235', 'YE', 'Al Mahwit', null, null);
INSERT INTO `cities` VALUES ('4019', '235', 'YE', 'Dhamar', null, null);
INSERT INTO `cities` VALUES ('4020', '235', 'YE', 'Hajjah', null, null);
INSERT INTO `cities` VALUES ('4021', '235', 'YE', 'Ibb', null, null);
INSERT INTO `cities` VALUES ('4022', '235', 'YE', 'Ma\'rib', null, null);
INSERT INTO `cities` VALUES ('4023', '235', 'YE', 'Sa\'dah', null, null);
INSERT INTO `cities` VALUES ('4024', '235', 'YE', 'San\'a\'', null, null);
INSERT INTO `cities` VALUES ('4025', '235', 'YE', 'Taizz', null, null);
INSERT INTO `cities` VALUES ('4026', '235', 'YE', 'Ad Dali', null, null);
INSERT INTO `cities` VALUES ('4027', '235', 'YE', 'Amran', null, null);
INSERT INTO `cities` VALUES ('4028', '235', 'YE', 'Al Bayda\'', null, null);
INSERT INTO `cities` VALUES ('4029', '235', 'YE', 'Al Jawf', null, null);
INSERT INTO `cities` VALUES ('4030', '235', 'YE', 'Hajjah', null, null);
INSERT INTO `cities` VALUES ('4031', '235', 'YE', 'Ibb', null, null);
INSERT INTO `cities` VALUES ('4032', '235', 'YE', 'Lahij', null, null);
INSERT INTO `cities` VALUES ('4033', '235', 'YE', 'Taizz', null, null);
INSERT INTO `cities` VALUES ('4034', '193', 'ZA', 'North-Western Province', null, null);
INSERT INTO `cities` VALUES ('4035', '193', 'ZA', 'KwaZulu-Natal', null, null);
INSERT INTO `cities` VALUES ('4036', '193', 'ZA', 'Free State', null, null);
INSERT INTO `cities` VALUES ('4037', '193', 'ZA', 'Eastern Cape', null, null);
INSERT INTO `cities` VALUES ('4038', '193', 'ZA', 'Gauteng', null, null);
INSERT INTO `cities` VALUES ('4039', '193', 'ZA', 'Mpumalanga', null, null);
INSERT INTO `cities` VALUES ('4040', '193', 'ZA', 'Northern Cape', null, null);
INSERT INTO `cities` VALUES ('4041', '193', 'ZA', 'Limpopo', null, null);
INSERT INTO `cities` VALUES ('4042', '193', 'ZA', 'North-West', null, null);
INSERT INTO `cities` VALUES ('4043', '193', 'ZA', 'Western Cape', null, null);
INSERT INTO `cities` VALUES ('4044', '238', 'ZM', 'Western', null, null);
INSERT INTO `cities` VALUES ('4045', '238', 'ZM', 'Central', null, null);
INSERT INTO `cities` VALUES ('4046', '238', 'ZM', 'Eastern', null, null);
INSERT INTO `cities` VALUES ('4047', '238', 'ZM', 'Luapula', null, null);
INSERT INTO `cities` VALUES ('4048', '238', 'ZM', 'Northern', null, null);
INSERT INTO `cities` VALUES ('4049', '238', 'ZM', 'North-Western', null, null);
INSERT INTO `cities` VALUES ('4050', '238', 'ZM', 'Southern', null, null);
INSERT INTO `cities` VALUES ('4051', '238', 'ZM', 'Copperbelt', null, null);
INSERT INTO `cities` VALUES ('4052', '238', 'ZM', 'Lusaka', null, null);
INSERT INTO `cities` VALUES ('4053', '239', 'ZW', 'Manicaland', null, null);
INSERT INTO `cities` VALUES ('4054', '239', 'ZW', 'Midlands', null, null);
INSERT INTO `cities` VALUES ('4055', '239', 'ZW', 'Mashonaland Central', null, null);
INSERT INTO `cities` VALUES ('4056', '239', 'ZW', 'Mashonaland East', null, null);
INSERT INTO `cities` VALUES ('4057', '239', 'ZW', 'Mashonaland West', null, null);
INSERT INTO `cities` VALUES ('4058', '239', 'ZW', 'Matabeleland North', null, null);
INSERT INTO `cities` VALUES ('4059', '239', 'ZW', 'Matabeleland South', null, null);
INSERT INTO `cities` VALUES ('4060', '239', 'ZW', 'Masvingo', null, null);
INSERT INTO `cities` VALUES ('4061', '239', 'ZW', 'Bulawayo', null, null);
INSERT INTO `cities` VALUES ('4062', '239', 'ZW', 'Harare', null, null);
INSERT INTO `cities` VALUES ('4063', '230', 'VN', 'Vung Tau', '10.35', '107.0667');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `product_content_id` int(11) NOT NULL DEFAULT '0',
  `from_user_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('14', '0', '109', '25', null, 'Chuyến đi rất hay. Mình rất thích.', 'published', '2015-07-26 06:55:52', '2015-07-26 07:18:23');
INSERT INTO `comments` VALUES ('15', '0', '109', '25', null, 'Tuy nhiên, thời gian chơi tự do hơi ít, cần để cho mọi người có nhiều khoảng thời gian riêng hơn.', 'published', '2015-07-26 07:08:23', '2015-07-26 07:18:23');
INSERT INTO `comments` VALUES ('16', '0', '109', '1', null, 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'pending', '2015-07-26 07:16:58', '2015-09-13 01:12:03');
INSERT INTO `comments` VALUES ('17', '15', '109', '1', null, 'Có rất nhiều biến thể của Lorem Ipsum mà bạn có thể tìm thấy, nhưng đa số được biến đổi bằng cách thêm các yếu tố hài hước, các từ ngẫu nhiên có khi không có vẻ gì là có ý nghĩa.', 'published', '2015-07-26 07:17:43', '2015-07-26 07:18:23');
INSERT INTO `comments` VALUES ('18', '14', '109', '1', null, ' Thật ra, nó được tìm thấy trong các đoạn 1.10.32 và 1.10.33 của \"De Finibus Bonorum et Malorum\" (Đỉnh tối thượng của Cái Tốt và Cái Xấu) viết bởi Cicero vào năm 45 trước Công Nguyên. Cuốn sách này là một luận thuyết đạo lí rất phổ biến trong thời kì Phục Hưng.', 'published', '2015-07-26 07:18:09', '2015-09-12 06:09:50');

-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------

-- ----------------------------
-- Table structure for `countries`
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_3_code` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_2_code` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_name` char(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_city` int(11) DEFAULT '0',
  `is_published` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('1', 'AFG', 'AF', 'Afghanistan', '34', '0');
INSERT INTO `countries` VALUES ('2', 'ALB', 'AL', 'Albania', '12', '0');
INSERT INTO `countries` VALUES ('3', 'DZA', 'DZ', 'Algeria', '48', '0');
INSERT INTO `countries` VALUES ('4', 'ASM', 'AS', 'American Samoa', '0', '0');
INSERT INTO `countries` VALUES ('5', 'AND', 'AD', 'Andorra', '7', '0');
INSERT INTO `countries` VALUES ('6', 'AGO', 'AO', 'Angola', '18', '0');
INSERT INTO `countries` VALUES ('7', 'AIA', 'AI', 'Anguilla', '0', '0');
INSERT INTO `countries` VALUES ('8', 'ATA', 'AQ', 'Antarctica', '0', '0');
INSERT INTO `countries` VALUES ('9', 'ATG', 'AG', 'Antigua and Barbuda', '8', '0');
INSERT INTO `countries` VALUES ('10', 'ARG', 'AR', 'Argentina', '24', '0');
INSERT INTO `countries` VALUES ('11', 'ARM', 'AM', 'Armenia', '11', '0');
INSERT INTO `countries` VALUES ('12', 'ABW', 'AW', 'Aruba', '0', '0');
INSERT INTO `countries` VALUES ('13', 'AUS', 'AU', 'Australia', '8', '0');
INSERT INTO `countries` VALUES ('14', 'AUT', 'AT', 'Austria', '9', '0');
INSERT INTO `countries` VALUES ('15', 'AZE', 'AZ', 'Azerbaijan', '71', '0');
INSERT INTO `countries` VALUES ('16', 'BHS', 'BS', 'Bahamas', '21', '0');
INSERT INTO `countries` VALUES ('17', 'BHR', 'BH', 'Bahrain', '16', '0');
INSERT INTO `countries` VALUES ('18', 'BGD', 'BD', 'Bangladesh', '6', '0');
INSERT INTO `countries` VALUES ('19', 'BRB', 'BB', 'Barbados', '11', '0');
INSERT INTO `countries` VALUES ('20', 'BLR', 'BY', 'Belarus', '7', '0');
INSERT INTO `countries` VALUES ('21', 'BEL', 'BE', 'Belgium', '13', '0');
INSERT INTO `countries` VALUES ('22', 'BLZ', 'BZ', 'Belize', '6', '0');
INSERT INTO `countries` VALUES ('23', 'BEN', 'BJ', 'Benin', '12', '0');
INSERT INTO `countries` VALUES ('24', 'BMU', 'BM', 'Bermuda', '11', '0');
INSERT INTO `countries` VALUES ('25', 'BTN', 'BT', 'Bhutan', '18', '0');
INSERT INTO `countries` VALUES ('26', 'BOL', 'BO', 'Bolivia', '9', '0');
INSERT INTO `countries` VALUES ('27', 'BIH', 'BA', 'Bosnia and Herzegowina', '3', '0');
INSERT INTO `countries` VALUES ('28', 'BWA', 'BW', 'Botswana', '9', '0');
INSERT INTO `countries` VALUES ('29', 'BVT', 'BV', 'Bouvet Island', '0', '0');
INSERT INTO `countries` VALUES ('30', 'BRA', 'BR', 'Brazil', '27', '0');
INSERT INTO `countries` VALUES ('31', 'IOT', 'IO', 'British Indian Ocean Territory', '0', '0');
INSERT INTO `countries` VALUES ('32', 'BRN', 'BN', 'Brunei Darussalam', '12', '0');
INSERT INTO `countries` VALUES ('33', 'BGR', 'BG', 'Bulgaria', '29', '0');
INSERT INTO `countries` VALUES ('34', 'BFA', 'BF', 'Burkina Faso', '45', '0');
INSERT INTO `countries` VALUES ('35', 'BDI', 'BI', 'Burundi', '16', '0');
INSERT INTO `countries` VALUES ('36', 'KHM', 'KH', 'Cambodia', '22', '0');
INSERT INTO `countries` VALUES ('37', 'CMR', 'CM', 'Cameroon', '10', '0');
INSERT INTO `countries` VALUES ('38', 'CAN', 'CA', 'Canada', '13', '0');
INSERT INTO `countries` VALUES ('39', 'CPV', 'CV', 'Cape Verde', '16', '0');
INSERT INTO `countries` VALUES ('40', 'CYM', 'KY', 'Cayman Islands', '8', '0');
INSERT INTO `countries` VALUES ('41', 'CAF', 'CF', 'Central African Republic', '17', '0');
INSERT INTO `countries` VALUES ('42', 'TCD', 'TD', 'Chad', '14', '0');
INSERT INTO `countries` VALUES ('43', 'CHL', 'CL', 'Chile', '17', '0');
INSERT INTO `countries` VALUES ('44', 'CHN', 'CN', 'China', '31', '0');
INSERT INTO `countries` VALUES ('45', 'CXR', 'CX', 'Christmas Island', '0', '0');
INSERT INTO `countries` VALUES ('46', 'CCK', 'CC', 'Cocos (Keeling) Islands', '0', '0');
INSERT INTO `countries` VALUES ('47', 'COL', 'CO', 'Colombia', '33', '0');
INSERT INTO `countries` VALUES ('48', 'COM', 'KM', 'Comoros', '3', '0');
INSERT INTO `countries` VALUES ('49', 'COG', 'CG', 'Congo', '11', '0');
INSERT INTO `countries` VALUES ('50', 'COK', 'CK', 'Cook Islands', '0', '0');
INSERT INTO `countries` VALUES ('51', 'CRI', 'CR', 'Costa Rica', '7', '0');
INSERT INTO `countries` VALUES ('52', 'CIV', 'CI', 'Cote D\'Ivoire', '19', '0');
INSERT INTO `countries` VALUES ('53', 'HRV', 'HR', 'Croatia', '21', '0');
INSERT INTO `countries` VALUES ('54', 'CUB', 'CU', 'Cuba', '15', '0');
INSERT INTO `countries` VALUES ('55', 'CYP', 'CY', 'Cyprus', '6', '0');
INSERT INTO `countries` VALUES ('56', 'CZE', 'CZ', 'Czech Republic', '14', '0');
INSERT INTO `countries` VALUES ('57', 'DNK', 'DK', 'Denmark', '5', '0');
INSERT INTO `countries` VALUES ('58', 'DJI', 'DJ', 'Djibouti', '6', '0');
INSERT INTO `countries` VALUES ('59', 'DMA', 'DM', 'Dominica', '10', '0');
INSERT INTO `countries` VALUES ('60', 'DOM', 'DO', 'Dominican Republic', '34', '0');
INSERT INTO `countries` VALUES ('61', 'TMP', 'TP', 'East Timor', '0', '0');
INSERT INTO `countries` VALUES ('62', 'ECU', 'EC', 'Ecuador', '22', '0');
INSERT INTO `countries` VALUES ('63', 'EGY', 'EG', 'Egypt', '26', '0');
INSERT INTO `countries` VALUES ('64', 'SLV', 'SV', 'El Salvador', '14', '0');
INSERT INTO `countries` VALUES ('65', 'GNQ', 'GQ', 'Equatorial Guinea', '7', '0');
INSERT INTO `countries` VALUES ('66', 'ERI', 'ER', 'Eritrea', '6', '0');
INSERT INTO `countries` VALUES ('67', 'EST', 'EE', 'Estonia', '21', '0');
INSERT INTO `countries` VALUES ('68', 'ETH', 'ET', 'Ethiopia', '11', '0');
INSERT INTO `countries` VALUES ('69', 'FLK', 'FK', 'Falkland Islands (Malvinas)', '0', '0');
INSERT INTO `countries` VALUES ('70', 'FRO', 'FO', 'Faroe Islands', '0', '0');
INSERT INTO `countries` VALUES ('71', 'FJI', 'FJ', 'Fiji', '5', '0');
INSERT INTO `countries` VALUES ('72', 'FIN', 'FI', 'Finland', '6', '0');
INSERT INTO `countries` VALUES ('73', 'FRA', 'FR', 'France', '22', '0');
INSERT INTO `countries` VALUES ('75', 'GUF', 'GF', 'French Guiana', '0', '0');
INSERT INTO `countries` VALUES ('76', 'PYF', 'PF', 'French Polynesia', '0', '0');
INSERT INTO `countries` VALUES ('77', 'ATF', 'TF', 'French Southern Territories', '0', '0');
INSERT INTO `countries` VALUES ('78', 'GAB', 'GA', 'Gabon', '9', '0');
INSERT INTO `countries` VALUES ('79', 'GMB', 'GM', 'Gambia', '6', '0');
INSERT INTO `countries` VALUES ('80', 'GEO', 'GE', 'Georgia', '64', '0');
INSERT INTO `countries` VALUES ('81', 'DEU', 'DE', 'Germany', '16', '0');
INSERT INTO `countries` VALUES ('82', 'GHA', 'GH', 'Ghana', '10', '0');
INSERT INTO `countries` VALUES ('83', 'GIB', 'GI', 'Gibraltar', '0', '0');
INSERT INTO `countries` VALUES ('84', 'GRC', 'GR', 'Greece', '51', '0');
INSERT INTO `countries` VALUES ('85', 'GRL', 'GL', 'Greenland', '3', '0');
INSERT INTO `countries` VALUES ('86', 'GRD', 'GD', 'Grenada', '6', '0');
INSERT INTO `countries` VALUES ('87', 'GLP', 'GP', 'Guadeloupe', '0', '0');
INSERT INTO `countries` VALUES ('88', 'GUM', 'GU', 'Guam', '0', '0');
INSERT INTO `countries` VALUES ('89', 'GTM', 'GT', 'Guatemala', '22', '0');
INSERT INTO `countries` VALUES ('90', 'GIN', 'GN', 'Guinea', '34', '0');
INSERT INTO `countries` VALUES ('91', 'GNB', 'GW', 'Guinea-bissau', '9', '0');
INSERT INTO `countries` VALUES ('92', 'GUY', 'GY', 'Guyana', '10', '0');
INSERT INTO `countries` VALUES ('93', 'HTI', 'HT', 'Haiti', '10', '0');
INSERT INTO `countries` VALUES ('94', 'HMD', 'HM', 'Heard and Mc Donald Islands', '0', '0');
INSERT INTO `countries` VALUES ('95', 'HND', 'HN', 'Honduras', '18', '0');
INSERT INTO `countries` VALUES ('96', 'HKG', 'HK', 'Hong Kong', '0', '0');
INSERT INTO `countries` VALUES ('97', 'HUN', 'HU', 'Hungary', '43', '0');
INSERT INTO `countries` VALUES ('98', 'ISL', 'IS', 'Iceland', '28', '0');
INSERT INTO `countries` VALUES ('99', 'IND', 'IN', 'India', '35', '0');
INSERT INTO `countries` VALUES ('100', 'IDN', 'ID', 'Indonesia', '33', '0');
INSERT INTO `countries` VALUES ('101', 'IRN', 'IR', 'Iran (Islamic Republic of)', '40', '0');
INSERT INTO `countries` VALUES ('102', 'IRQ', 'IQ', 'Iraq', '18', '0');
INSERT INTO `countries` VALUES ('103', 'IRL', 'IE', 'Ireland', '26', '0');
INSERT INTO `countries` VALUES ('104', 'ISR', 'IL', 'Israel', '6', '0');
INSERT INTO `countries` VALUES ('105', 'ITA', 'IT', 'Italy', '20', '0');
INSERT INTO `countries` VALUES ('106', 'JAM', 'JM', 'Jamaica', '14', '0');
INSERT INTO `countries` VALUES ('107', 'JPN', 'JP', 'Japan', '47', '0');
INSERT INTO `countries` VALUES ('108', 'JOR', 'JO', 'Jordan', '12', '0');
INSERT INTO `countries` VALUES ('109', 'KAZ', 'KZ', 'Kazakhstan', '17', '0');
INSERT INTO `countries` VALUES ('110', 'KEN', 'KE', 'Kenya', '8', '0');
INSERT INTO `countries` VALUES ('111', 'KIR', 'KI', 'Kiribati', '3', '0');
INSERT INTO `countries` VALUES ('112', 'PRK', 'KP', 'Korea, Democratic People\'s Republic of', '13', '0');
INSERT INTO `countries` VALUES ('113', 'KOR', 'KR', 'Korea, Republic of', '16', '0');
INSERT INTO `countries` VALUES ('114', 'KWT', 'KW', 'Kuwait', '6', '0');
INSERT INTO `countries` VALUES ('115', 'KGZ', 'KG', 'Kyrgyzstan', '9', '0');
INSERT INTO `countries` VALUES ('116', 'LAO', 'LA', 'Lao People\'s Democratic Republic', '13', '0');
INSERT INTO `countries` VALUES ('117', 'LVA', 'LV', 'Latvia', '33', '0');
INSERT INTO `countries` VALUES ('118', 'LBN', 'LB', 'Lebanon', '11', '0');
INSERT INTO `countries` VALUES ('119', 'LSO', 'LS', 'Lesotho', '10', '0');
INSERT INTO `countries` VALUES ('120', 'LBR', 'LR', 'Liberia', '17', '0');
INSERT INTO `countries` VALUES ('121', 'LBY', 'LY', 'Libya', '25', '0');
INSERT INTO `countries` VALUES ('122', 'LIE', 'LI', 'Liechtenstein', '13', '0');
INSERT INTO `countries` VALUES ('123', 'LTU', 'LT', 'Lithuania', '10', '0');
INSERT INTO `countries` VALUES ('124', 'LUX', 'LU', 'Luxembourg', '3', '0');
INSERT INTO `countries` VALUES ('125', 'MAC', 'MO', 'Macau', '2', '0');
INSERT INTO `countries` VALUES ('126', 'MKD', 'MK', 'Macedonia, The Former Yugoslav Republic of', '123', '0');
INSERT INTO `countries` VALUES ('127', 'MDG', 'MG', 'Madagascar', '6', '0');
INSERT INTO `countries` VALUES ('128', 'MWI', 'MW', 'Malawi', '27', '0');
INSERT INTO `countries` VALUES ('129', 'MYS', 'MY', 'Malaysia', '16', '0');
INSERT INTO `countries` VALUES ('130', 'MDV', 'MV', 'Maldives', '20', '0');
INSERT INTO `countries` VALUES ('131', 'MLI', 'ML', 'Mali', '9', '0');
INSERT INTO `countries` VALUES ('132', 'MLT', 'MT', 'Malta', '0', '0');
INSERT INTO `countries` VALUES ('133', 'MHL', 'MH', 'Marshall Islands', '0', '0');
INSERT INTO `countries` VALUES ('134', 'MTQ', 'MQ', 'Martinique', '0', '0');
INSERT INTO `countries` VALUES ('135', 'MRT', 'MR', 'Mauritania', '12', '0');
INSERT INTO `countries` VALUES ('136', 'MUS', 'MU', 'Mauritius', '12', '0');
INSERT INTO `countries` VALUES ('137', 'MYT', 'YT', 'Mayotte', '0', '0');
INSERT INTO `countries` VALUES ('138', 'MEX', 'MX', 'Mexico', '32', '0');
INSERT INTO `countries` VALUES ('139', 'FSM', 'FM', 'Micronesia, Federated States of', '4', '0');
INSERT INTO `countries` VALUES ('140', 'MDA', 'MD', 'Moldova, Republic of', '37', '0');
INSERT INTO `countries` VALUES ('141', 'MCO', 'MC', 'Monaco', '3', '0');
INSERT INTO `countries` VALUES ('142', 'MNG', 'MN', 'Mongolia', '24', '0');
INSERT INTO `countries` VALUES ('143', 'MSR', 'MS', 'Montserrat', '3', '0');
INSERT INTO `countries` VALUES ('144', 'MAR', 'MA', 'Morocco', '15', '0');
INSERT INTO `countries` VALUES ('145', 'MOZ', 'MZ', 'Mozambique', '11', '0');
INSERT INTO `countries` VALUES ('146', 'MMR', 'MM', 'Myanmar', '15', '0');
INSERT INTO `countries` VALUES ('147', 'NAM', 'NA', 'Namibia', '38', '0');
INSERT INTO `countries` VALUES ('148', 'NRU', 'NR', 'Nauru', '14', '0');
INSERT INTO `countries` VALUES ('149', 'NPL', 'NP', 'Nepal', '14', '0');
INSERT INTO `countries` VALUES ('150', 'NLD', 'NL', 'Netherlands', '12', '0');
INSERT INTO `countries` VALUES ('151', 'ANT', 'AN', 'Netherlands Antilles', '0', '0');
INSERT INTO `countries` VALUES ('152', 'NCL', 'NC', 'New Caledonia', '0', '0');
INSERT INTO `countries` VALUES ('153', 'NZL', 'NZ', 'New Zealand', '16', '0');
INSERT INTO `countries` VALUES ('154', 'NIC', 'NI', 'Nicaragua', '18', '0');
INSERT INTO `countries` VALUES ('155', 'NER', 'NE', 'Niger', '8', '0');
INSERT INTO `countries` VALUES ('156', 'NGA', 'NG', 'Nigeria', '37', '0');
INSERT INTO `countries` VALUES ('157', 'NIU', 'NU', 'Niue', '0', '0');
INSERT INTO `countries` VALUES ('158', 'NFK', 'NF', 'Norfolk Island', '0', '0');
INSERT INTO `countries` VALUES ('159', 'MNP', 'MP', 'Northern Mariana Islands', '0', '0');
INSERT INTO `countries` VALUES ('160', 'NOR', 'NO', 'Norway', '19', '0');
INSERT INTO `countries` VALUES ('161', 'OMN', 'OM', 'Oman', '8', '0');
INSERT INTO `countries` VALUES ('162', 'PAK', 'PK', 'Pakistan', '8', '0');
INSERT INTO `countries` VALUES ('163', 'PLW', 'PW', 'Palau', '0', '0');
INSERT INTO `countries` VALUES ('164', 'PAN', 'PA', 'Panama', '10', '0');
INSERT INTO `countries` VALUES ('165', 'PNG', 'PG', 'Papua New Guinea', '20', '0');
INSERT INTO `countries` VALUES ('166', 'PRY', 'PY', 'Paraguay', '20', '0');
INSERT INTO `countries` VALUES ('167', 'PER', 'PE', 'Peru', '25', '0');
INSERT INTO `countries` VALUES ('168', 'PHL', 'PH', 'Philippines', '149', '0');
INSERT INTO `countries` VALUES ('169', 'PCN', 'PN', 'Pitcairn', '0', '0');
INSERT INTO `countries` VALUES ('170', 'POL', 'PL', 'Poland', '16', '0');
INSERT INTO `countries` VALUES ('171', 'PRT', 'PT', 'Portugal', '20', '0');
INSERT INTO `countries` VALUES ('172', 'PRI', 'PR', 'Puerto Rico', '0', '0');
INSERT INTO `countries` VALUES ('173', 'QAT', 'QA', 'Qatar', '11', '0');
INSERT INTO `countries` VALUES ('174', 'REU', 'RE', 'Reunion', '0', '0');
INSERT INTO `countries` VALUES ('175', 'ROM', 'RO', 'Romania', '42', '0');
INSERT INTO `countries` VALUES ('176', 'RUS', 'RU', 'Russian Federation', '91', '0');
INSERT INTO `countries` VALUES ('177', 'RWA', 'RW', 'Rwanda', '9', '0');
INSERT INTO `countries` VALUES ('178', 'KNA', 'KN', 'Saint Kitts and Nevis', '14', '0');
INSERT INTO `countries` VALUES ('179', 'LCA', 'LC', 'Saint Lucia', '11', '0');
INSERT INTO `countries` VALUES ('180', 'VCT', 'VC', 'Saint Vincent and the Grenadines', '6', '0');
INSERT INTO `countries` VALUES ('181', 'WSM', 'WS', 'Samoa', '10', '0');
INSERT INTO `countries` VALUES ('182', 'SMR', 'SM', 'San Marino', '9', '0');
INSERT INTO `countries` VALUES ('183', 'STP', 'ST', 'Sao Tome and Principe', '2', '0');
INSERT INTO `countries` VALUES ('184', 'SAU', 'SA', 'Saudi Arabia', '13', '0');
INSERT INTO `countries` VALUES ('185', 'SEN', 'SN', 'Senegal', '11', '0');
INSERT INTO `countries` VALUES ('186', 'SYC', 'SC', 'Seychelles', '23', '0');
INSERT INTO `countries` VALUES ('187', 'SLE', 'SL', 'Sierra Leone', '4', '0');
INSERT INTO `countries` VALUES ('188', 'SGP', 'SG', 'Singapore', '0', '0');
INSERT INTO `countries` VALUES ('189', 'SVK', 'SK', 'Slovakia', '8', '0');
INSERT INTO `countries` VALUES ('190', 'SVN', 'SI', 'Slovenia', '195', '0');
INSERT INTO `countries` VALUES ('191', 'SLB', 'SB', 'Solomon Islands', '9', '0');
INSERT INTO `countries` VALUES ('192', 'SOM', 'SO', 'Somalia', '20', '0');
INSERT INTO `countries` VALUES ('193', 'ZAF', 'ZA', 'South Africa', '10', '0');
INSERT INTO `countries` VALUES ('194', 'SGS', 'GS', 'South Georgia and the South Sandwich Islands', '0', '0');
INSERT INTO `countries` VALUES ('195', 'ESP', 'ES', 'Spain', '17', '0');
INSERT INTO `countries` VALUES ('196', 'LKA', 'LK', 'Sri Lanka', '9', '0');
INSERT INTO `countries` VALUES ('197', 'SHN', 'SH', 'St. Helena', '3', '0');
INSERT INTO `countries` VALUES ('198', 'SPM', 'PM', 'St. Pierre and Miquelon', '0', '0');
INSERT INTO `countries` VALUES ('199', 'SDN', 'SD', 'Sudan', '15', '0');
INSERT INTO `countries` VALUES ('200', 'SUR', 'SR', 'Suriname', '10', '0');
INSERT INTO `countries` VALUES ('201', 'SJM', 'SJ', 'Svalbard and Jan Mayen Islands', '0', '0');
INSERT INTO `countries` VALUES ('202', 'SWZ', 'SZ', 'Swaziland', '5', '0');
INSERT INTO `countries` VALUES ('203', 'SWE', 'SE', 'Sweden', '21', '0');
INSERT INTO `countries` VALUES ('204', 'CHE', 'CH', 'Switzerland', '26', '0');
INSERT INTO `countries` VALUES ('205', 'SYR', 'SY', 'Syrian Arab Republic', '14', '0');
INSERT INTO `countries` VALUES ('206', 'TWN', 'TW', 'Taiwan', '4', '0');
INSERT INTO `countries` VALUES ('207', 'TJK', 'TJ', 'Tajikistan', '3', '0');
INSERT INTO `countries` VALUES ('208', 'TZA', 'TZ', 'Tanzania, United Republic of', '26', '0');
INSERT INTO `countries` VALUES ('209', 'THA', 'TH', 'Thailand', '80', '0');
INSERT INTO `countries` VALUES ('210', 'TGO', 'TG', 'Togo', '5', '0');
INSERT INTO `countries` VALUES ('211', 'TKL', 'TK', 'Tokelau', '0', '0');
INSERT INTO `countries` VALUES ('212', 'TON', 'TO', 'Tonga', '3', '0');
INSERT INTO `countries` VALUES ('213', 'TTO', 'TT', 'Trinidad and Tobago', '12', '0');
INSERT INTO `countries` VALUES ('214', 'TUN', 'TN', 'Tunisia', '24', '0');
INSERT INTO `countries` VALUES ('215', 'TUR', 'TR', 'Turkey', '81', '0');
INSERT INTO `countries` VALUES ('216', 'TKM', 'TM', 'Turkmenistan', '5', '0');
INSERT INTO `countries` VALUES ('217', 'TCA', 'TC', 'Turks and Caicos Islands', '0', '0');
INSERT INTO `countries` VALUES ('218', 'TUV', 'TV', 'Tuvalu', '0', '0');
INSERT INTO `countries` VALUES ('219', 'UGA', 'UG', 'Uganda', '55', '0');
INSERT INTO `countries` VALUES ('220', 'UKR', 'UA', 'Ukraine', '27', '0');
INSERT INTO `countries` VALUES ('221', 'ARE', 'AE', 'United Arab Emirates', '7', '0');
INSERT INTO `countries` VALUES ('222', 'GBR', 'GB', 'United Kingdom', '234', '1');
INSERT INTO `countries` VALUES ('223', 'USA', 'US', 'United States', '61', '0');
INSERT INTO `countries` VALUES ('224', 'UMI', 'UM', 'United States Minor Outlying Islands', '0', '0');
INSERT INTO `countries` VALUES ('225', 'URY', 'UY', 'Uruguay', '19', '0');
INSERT INTO `countries` VALUES ('226', 'UZB', 'UZ', 'Uzbekistan', '14', '0');
INSERT INTO `countries` VALUES ('227', 'VUT', 'VU', 'Vanuatu', '14', '0');
INSERT INTO `countries` VALUES ('228', 'VAT', 'VA', 'Vatican City State (Holy See)', '0', '0');
INSERT INTO `countries` VALUES ('229', 'VEN', 'VE', 'Venezuela', '25', '0');
INSERT INTO `countries` VALUES ('230', 'VNM', 'VN', 'Viet Nam', '64', '1');
INSERT INTO `countries` VALUES ('231', 'VGB', 'VG', 'Virgin Islands (British)', '0', '0');
INSERT INTO `countries` VALUES ('232', 'VIR', 'VI', 'Virgin Islands (U.S.)', '0', '0');
INSERT INTO `countries` VALUES ('233', 'WLF', 'WF', 'Wallis and Futuna Islands', '0', '0');
INSERT INTO `countries` VALUES ('234', 'ESH', 'EH', 'Western Sahara', '0', '0');
INSERT INTO `countries` VALUES ('235', 'YEM', 'YE', 'Yemen', '25', '0');
INSERT INTO `countries` VALUES ('237', 'DRC', 'DC', 'The Democratic Republic of Congo', '0', '0');
INSERT INTO `countries` VALUES ('238', 'ZMB', 'ZM', 'Zambia', '9', '0');
INSERT INTO `countries` VALUES ('239', 'ZWE', 'ZW', 'Zimbabwe', '10', '0');
INSERT INTO `countries` VALUES ('240', 'XET', 'XE', 'East Timor', '0', '0');
INSERT INTO `countries` VALUES ('241', 'JEY', 'JE', 'Jersey', '0', '0');
INSERT INTO `countries` VALUES ('242', 'XSB', 'XB', 'St. Barthelemy', '0', '0');
INSERT INTO `countries` VALUES ('243', 'XSE', 'XU', 'St. Eustatius', '0', '0');
INSERT INTO `countries` VALUES ('244', 'XCA', 'XC', 'Canary Islands', '0', '0');
INSERT INTO `countries` VALUES ('245', 'SRB', 'RS', 'Serbia', '2', '0');
INSERT INTO `countries` VALUES ('246', 'MAF', 'MF', 'Sint Maarten (French Antilles)', '0', '0');
INSERT INTO `countries` VALUES ('247', 'SXM', 'SX', 'Sint Maarten (Netherlands Antilles)', '0', '0');
INSERT INTO `countries` VALUES ('248', 'PSE', 'FS', 'Palestinian Territory, occupied', '2', '0');

-- ----------------------------
-- Table structure for `fieldgroups`
-- ----------------------------
DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_rules` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fieldgroups
-- ----------------------------
INSERT INTO `fieldgroups` VALUES ('1', null, 'Meta for SEO', '[{\"field_relation\":\"and\",\"field_options\":[{\"rel_name\":\"user_type\",\"rel_value\":\"6\",\"rel_type\":\"!=\"},{\"rel_name\":\"user_type\",\"rel_value\":\"5\",\"rel_type\":\"!=\"}]}]', null, null, '2015-09-13 02:34:40', '2015-09-13 02:41:05');

-- ----------------------------
-- Table structure for `fielditems`
-- ----------------------------
DROP TABLE IF EXISTS `fielditems`;
CREATE TABLE `fielditems` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fieldgroup_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `options` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fielditems
-- ----------------------------
INSERT INTO `fielditems` VALUES ('1', '1', '0', '1', 'Description', '1_description', 'text', '', '{\"defaultvalue\":\"\",\"placeholdertext\":\"\",\"formatting\":\"1\",\"defaultvaluetextarea\":\"\",\"formattingtextarea\":\"\",\"wyswygtoolbar\":\"\",\"selectchoices\":\"\",\"buttonlabel\":\"\"}', '2015-09-13 02:41:05', '2015-09-13 02:41:05');
INSERT INTO `fielditems` VALUES ('2', '1', '0', '2', 'Keywords', '2_keywords', 'text', '', '{\"defaultvalue\":\"\",\"placeholdertext\":\"\",\"formatting\":\"1\",\"defaultvaluetextarea\":\"\",\"formattingtextarea\":\"\",\"wyswygtoolbar\":\"\",\"selectchoices\":\"\",\"buttonlabel\":\"\"}', '2015-09-13 02:41:05', '2015-09-13 02:41:05');
INSERT INTO `fielditems` VALUES ('3', '1', '0', '3', 'Social image', '3_social_image', 'image', '', '{\"defaultvalue\":\"\",\"placeholdertext\":\"\",\"formatting\":\"\",\"defaultvaluetextarea\":\"\",\"formattingtextarea\":\"\",\"wyswygtoolbar\":\"\",\"selectchoices\":\"\",\"buttonlabel\":\"\"}', '2015-09-13 02:41:05', '2015-11-07 00:57:35');

-- ----------------------------
-- Table structure for `languages`
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `language_code` varchar(7) NOT NULL,
  `language_name` varchar(128) NOT NULL,
  `major` tinyint(4) NOT NULL DEFAULT '0',
  `default_locale` varchar(8) DEFAULT NULL,
  `tag` varchar(8) DEFAULT NULL,
  `encode_url` tinyint(1) NOT NULL DEFAULT '0',
  `flag` varchar(32) DEFAULT NULL,
  `is_published` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`language_code`),
  UNIQUE KEY `english_name` (`language_name`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES ('1', '222', 'en', 'English', '1', 'en_US', 'en-US', '0', null, '0', '0000-00-00 00:00:00', '2015-10-23 11:04:23');
INSERT INTO `languages` VALUES ('2', '0', 'es', 'Spanish', '1', 'es_ES', 'es-ES', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('3', '0', 'de', 'German', '1', 'de_DE', 'de-DE', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('4', '73', 'fr', 'French', '1', 'fr_FR', 'fr-FR', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:36');
INSERT INTO `languages` VALUES ('5', '0', 'ar', 'Arabic', '0', 'ar', 'ar', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('6', '0', 'bs', 'Bosnian', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('7', '0', 'bg', 'Bulgarian', '0', 'bg_BG', 'bg-BG', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('8', '0', 'ca', 'Catalan', '0', 'ca', 'ca', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('9', '0', 'cs', 'Czech', '0', 'cs_CZ', 'cs-CZ', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('10', '0', 'sk', 'Slovak', '0', 'sk_SK', 'sk-SK', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('11', '0', 'cy', 'Welsh', '0', 'cy', 'cy', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('12', '0', 'da', 'Danish', '1', 'da_DK', 'da-DK', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('13', '0', 'el', 'Greek', '0', 'el', 'el', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('14', '0', 'eo', 'Esperanto', '0', 'eo', 'eo', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('15', '0', 'et', 'Estonian', '0', 'et', 'et', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('16', '0', 'eu', 'Basque', '0', 'eu', 'eu', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('17', '0', 'fa', 'Persian', '0', 'fa_IR', 'fa-IR', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('18', '0', 'fi', 'Finnish', '0', 'fi', 'fi', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('19', '0', 'ga', 'Irish', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('20', '0', 'he', 'Hebrew', '0', 'he_IL', 'he-IL', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('21', '0', 'hi', 'Hindi', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('22', '0', 'hr', 'Croatian', '0', 'hr', 'hr', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('23', '0', 'hu', 'Hungarian', '0', 'hu_HU', 'hu-HU', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('24', '0', 'hy', 'Armenian', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('25', '0', 'id', 'Indonesian', '0', 'id_ID', 'id-ID', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('26', '0', 'is', 'Icelandic', '0', 'is_IS', 'is-IS', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('27', '0', 'it', 'Italian', '1', 'it_IT', 'it-IT', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('28', '0', 'ja', 'Japanese', '1', 'ja', 'ja', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('29', '0', 'ko', 'Korean', '0', 'ko_KR', 'ko-KR', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('30', '0', 'ku', 'Kurdish', '0', 'ku', 'ku', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('31', '0', 'la', 'Latin', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('32', '0', 'lv', 'Latvian', '0', 'lv', 'lv', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('33', '0', 'lt', 'Lithuanian', '0', 'lt', 'lt', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('34', '0', 'mk', 'Macedonian', '0', 'mk_MK', 'mk-MK', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('35', '0', 'mt', 'Maltese', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('36', '0', 'mo', 'Moldavian', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('37', '0', 'mn', 'Mongolian', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('38', '0', 'ne', 'Nepali', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('39', '0', 'nl', 'Dutch', '1', 'nl_NL', 'nl-NL', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('40', '0', 'nb', 'Norwegian Bokmål', '0', 'nb_NO', 'nb-NO', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('41', '0', 'pa', 'Punjabi', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('42', '0', 'pl', 'Polish', '0', 'pl_PL', 'pl-PL', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('43', '0', 'pt-pt', 'Portuguese, Portugal', '0', 'pt_PT', 'pt-PT', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('44', '0', 'pt-br', 'Portuguese, Brazil', '0', 'pt_BR', 'pt-BR', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('45', '0', 'qu', 'Quechua', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('46', '0', 'ro', 'Romanian', '0', 'ro_RO', 'ro-RO', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('47', '0', 'ru', 'Russian', '1', 'ru_RU', 'ru-RU', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('48', '0', 'sl', 'Slovenian', '0', 'sl_SI', 'sl-SI', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('49', '0', 'so', 'Somali', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('50', '0', 'sq', 'Albanian', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('51', '0', 'sr', 'Serbian', '0', 'sr_RS', 'sr-RS', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('52', '0', 'sv', 'Swedish', '0', 'sv_SE', 'sv-SE', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('53', '0', 'ta', 'Tamil', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('54', '0', 'th', 'Thai', '0', 'th', 'th', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('55', '0', 'tr', 'Turkish', '0', 'tr', 'tr', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('56', '0', 'uk', 'Ukrainian', '0', 'uk_UA', 'uk-UA', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('57', '0', 'ur', 'Urdu', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('58', '0', 'uz', 'Uzbek', '0', 'uz_UZ', 'uz-UZ', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('59', '230', 'vi', 'Vietnamese', '0', 'vi', 'vi', '0', null, '1', '0000-00-00 00:00:00', '2015-10-23 11:04:23');
INSERT INTO `languages` VALUES ('60', '0', 'yi', 'Yiddish', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('61', '0', 'zh-hans', 'Chinese (Simplified)', '1', 'zh_CN', 'zh-CN', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('62', '0', 'zu', 'Zulu', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('63', '0', 'zh-hant', 'Chinese (Traditional)', '1', 'zh_TW', 'zh-TW', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO `languages` VALUES ('64', '0', 'ms', 'Malay', '0', 'ms_MY', 'ms-MY', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');

-- ----------------------------
-- Table structure for `menus`
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_admin_menu` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('2', '1', 'Admin Menu', 'admin-menu', '1', '2014-10-25 01:26:30', '2015-03-08 21:53:43');
INSERT INTO `menus` VALUES ('3', '0', 'Main menu', 'main-menu', '0', '2015-05-17 21:14:02', '2015-05-17 21:14:02');
INSERT INTO `menus` VALUES ('4', '0', 'Footer menu', 'footer-menu', '0', '2015-05-30 19:40:39', '2015-05-30 19:40:39');

-- ----------------------------
-- Table structure for `menu_nodes`
-- ----------------------------
DROP TABLE IF EXISTS `menu_nodes`;
CREATE TABLE `menu_nodes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_font` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_class` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menu_nodes
-- ----------------------------
INSERT INTO `menu_nodes` VALUES ('272', '2', '0', '0', '0', 'customLink', 'dashboard', 'fa fa-home', '0', 'Dashboard', 'start', '2015-01-09 07:34:11', '2015-01-26 15:08:30');
INSERT INTO `menu_nodes` VALUES ('273', '2', '300', '0', '0', 'customLink', 'category', 'fa fa-sitemap', '1', 'Post Categories', '', '2015-01-09 07:34:11', '2015-03-14 16:56:21');
INSERT INTO `menu_nodes` VALUES ('280', '2', '0', '0', '0', 'customLink', 'custom-field', 'fa fa-edit', '6', 'Custom fields', '', '2015-01-09 07:34:11', '2015-09-13 02:12:24');
INSERT INTO `menu_nodes` VALUES ('283', '2', '0', '0', '0', 'customLink', 'page', 'fa fa-tasks', '1', 'Pages', '', '2015-01-09 07:34:11', '2015-09-13 02:12:24');
INSERT INTO `menu_nodes` VALUES ('291', '2', '403', '0', '0', 'customLink', 'options', 'fa fa-gear', '0', 'Options', '', '2015-01-09 07:34:11', '2015-09-13 01:22:27');
INSERT INTO `menu_nodes` VALUES ('292', '2', '0', '0', '0', 'customLink', 'user', 'fa fa-users', '7', 'Users', '', '2015-01-09 07:34:11', '2015-09-13 02:12:24');
INSERT INTO `menu_nodes` VALUES ('297', '2', '0', '0', '0', 'customLink', 'menu', 'fa fa-bars', '8', 'Menus', '', '2015-01-09 07:34:11', '2015-09-13 02:12:24');
INSERT INTO `menu_nodes` VALUES ('300', '2', '0', '0', '0', 'customLink', 'post', 'icon-layers', '3', 'Posts', '', '2015-03-14 16:47:08', '2015-09-13 02:12:24');
INSERT INTO `menu_nodes` VALUES ('301', '2', '300', '0', '0', 'customLink', 'post', 'icon-layers', '0', 'Posts', '', '2015-03-14 16:47:08', '2015-03-14 16:56:21');
INSERT INTO `menu_nodes` VALUES ('330', '2', '0', '0', '0', 'customLink', 'product', 'fa fa-cubes', '2', 'Products', '', '2015-04-02 15:54:31', '2015-09-13 02:12:24');
INSERT INTO `menu_nodes` VALUES ('331', '2', '330', '0', '0', 'customLink', 'product', 'fa fa-cubes', '0', 'Products', '', '2015-04-02 15:54:31', '2015-04-02 15:57:21');
INSERT INTO `menu_nodes` VALUES ('332', '2', '330', '0', '0', 'customLink', 'product-category', 'fa fa-sitemap', '1', 'Product categories', '', '2015-04-02 15:54:31', '2015-04-02 15:57:21');
INSERT INTO `menu_nodes` VALUES ('360', '2', '0', '0', '0', 'customLink', 'order', 'fa fa-fax', '5', 'Orders', '', '2015-04-27 15:51:35', '2015-09-13 02:12:24');
INSERT INTO `menu_nodes` VALUES ('396', '2', '0', '0', '0', 'customLink', 'comment', 'fa fa-comments', '4', 'Comments', '', '2015-06-10 19:53:59', '2015-09-13 02:12:24');
INSERT INTO `menu_nodes` VALUES ('397', '3', '0', '44', '0', 'page', '', '', '0', '', '', '2015-09-08 16:08:34', '2015-09-08 16:08:34');
INSERT INTO `menu_nodes` VALUES ('402', '2', '403', '0', '0', 'customLink', 'options/language', 'fa fa-language', '1', 'Languages', '', '2015-09-13 01:17:35', '2015-09-13 01:22:27');
INSERT INTO `menu_nodes` VALUES ('403', '2', '0', '0', '0', 'customLink', 'options', 'fa fa-cogs', '9', 'Settings', '', '2015-09-13 01:22:25', '2015-09-13 02:12:24');
INSERT INTO `menu_nodes` VALUES ('404', '3', '0', '0', '123', 'category', '', '', '1', '', '', '2015-10-23 10:36:33', '2015-10-23 10:36:33');
INSERT INTO `menu_nodes` VALUES ('405', '3', '0', '0', '124', 'category', '', '', '2', '', '', '2015-10-23 10:36:33', '2015-10-23 10:36:33');
INSERT INTO `menu_nodes` VALUES ('406', '3', '0', '0', '122', 'category', '', '', '3', '', '', '2015-10-23 10:36:33', '2015-10-23 10:36:33');
INSERT INTO `menu_nodes` VALUES ('407', '3', '0', '0', '125', 'category', '', '', '4', '', '', '2015-10-23 10:36:33', '2015-10-23 10:36:33');

-- ----------------------------
-- Table structure for `menu_nodes_users`
-- ----------------------------
DROP TABLE IF EXISTS `menu_nodes_users`;
CREATE TABLE `menu_nodes_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `menu_node_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu_nodes_users
-- ----------------------------
INSERT INTO `menu_nodes_users` VALUES ('19', '13', '272');
INSERT INTO `menu_nodes_users` VALUES ('20', '13', '273');
INSERT INTO `menu_nodes_users` VALUES ('22', '13', '283');
INSERT INTO `menu_nodes_users` VALUES ('23', '13', '291');
INSERT INTO `menu_nodes_users` VALUES ('24', '13', '292');
INSERT INTO `menu_nodes_users` VALUES ('27', '12', '272');
INSERT INTO `menu_nodes_users` VALUES ('28', '2', '272');
INSERT INTO `menu_nodes_users` VALUES ('29', '2', '291');
INSERT INTO `menu_nodes_users` VALUES ('30', '2', '292');
INSERT INTO `menu_nodes_users` VALUES ('31', '2', '297');
INSERT INTO `menu_nodes_users` VALUES ('32', '2', '273');
INSERT INTO `menu_nodes_users` VALUES ('33', '2', '280');
INSERT INTO `menu_nodes_users` VALUES ('34', '2', '283');
INSERT INTO `menu_nodes_users` VALUES ('35', '1', '272');
INSERT INTO `menu_nodes_users` VALUES ('37', '1', '283');
INSERT INTO `menu_nodes_users` VALUES ('38', '1', '291');
INSERT INTO `menu_nodes_users` VALUES ('39', '1', '292');
INSERT INTO `menu_nodes_users` VALUES ('40', '1', '297');
INSERT INTO `menu_nodes_users` VALUES ('41', '1', '300');
INSERT INTO `menu_nodes_users` VALUES ('42', '1', '273');
INSERT INTO `menu_nodes_users` VALUES ('43', '1', '301');
INSERT INTO `menu_nodes_users` VALUES ('45', '1', '331');
INSERT INTO `menu_nodes_users` VALUES ('46', '1', '332');
INSERT INTO `menu_nodes_users` VALUES ('47', '1', '357');
INSERT INTO `menu_nodes_users` VALUES ('48', '15', '272');
INSERT INTO `menu_nodes_users` VALUES ('49', '15', '283');
INSERT INTO `menu_nodes_users` VALUES ('50', '15', '291');
INSERT INTO `menu_nodes_users` VALUES ('51', '15', '292');
INSERT INTO `menu_nodes_users` VALUES ('52', '15', '297');
INSERT INTO `menu_nodes_users` VALUES ('53', '15', '300');
INSERT INTO `menu_nodes_users` VALUES ('54', '15', '273');
INSERT INTO `menu_nodes_users` VALUES ('55', '15', '301');
INSERT INTO `menu_nodes_users` VALUES ('56', '15', '330');
INSERT INTO `menu_nodes_users` VALUES ('57', '15', '331');
INSERT INTO `menu_nodes_users` VALUES ('58', '15', '332');
INSERT INTO `menu_nodes_users` VALUES ('59', '15', '396');
INSERT INTO `menu_nodes_users` VALUES ('60', '15', '360');
INSERT INTO `menu_nodes_users` VALUES ('61', '15', '280');
INSERT INTO `menu_nodes_users` VALUES ('62', '15', '403');
INSERT INTO `menu_nodes_users` VALUES ('63', '15', '402');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_content_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `payment_method` tinyint(2) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '105', '2', 'Phan Thành Duy', '0915428202', 'duy.phan@saigontechnology.vn', '40 VT', '4', 'Không có yêu cầu khác. Chỉ cần giao hàng đúng hẹn, đúng hàng.', '1', '0', '2015-04-27 16:39:11', '2015-04-27 16:39:11');
INSERT INTO `orders` VALUES ('2', '105', '1', 'Phan Thành Duy', '0915428202', 'duyphan.developer@gmail.com', '40 Hoàng Việt, F6, Vũng Tàu', '0', 'Chúng ta cần có một buổi meeting để thống nhất.', '0', 'onOrder', '2015-04-27 17:02:17', '2015-09-13 01:14:49');
INSERT INTO `orders` VALUES ('3', '105', '1', 'Phan Thành Duy', '0915428202', 'duyphan.developer@gmail.com', '40 Hoàng Việt, F6, Vũng Tàu', null, '', '0', 'onOrder', '2015-04-27 17:07:32', '2015-09-13 01:14:49');
INSERT INTO `orders` VALUES ('4', '105', '3', 'Phan Thành Duy', '0915428202', 'duyphan.developer@gmail.com', '40 Hoàng Việt, F6, Vũng Tàu', '56', '', '0', 'onOrder', '2015-04-27 17:23:44', '2015-09-13 01:14:49');
INSERT INTO `orders` VALUES ('5', '105', '1', 'Phan Thành Duy', '0915428202', 'duyphan.developer@gmail.com', '40 Hoàng Việt, F6, Vũng Tàu', null, '', '0', 'onOrder', '2015-04-29 10:38:00', '2015-09-13 01:14:49');
INSERT INTO `orders` VALUES ('6', '105', '3', 'Phan Thành Duy', '0915428202', 'duyphan.developer@gmail.com', '40 Hoàng Việt, F6, Vũng Tàu', null, '', '2', 'onOrder', '2015-04-30 12:30:29', '2015-09-13 01:14:49');
INSERT INTO `orders` VALUES ('7', '105', '1', 'Phan Thành Duy', '0915428202', 'duyphan.developer@gmail.com', '40 Hoàng Việt, F6, Vũng Tàu', null, '', '2', 'onOrder', '2015-04-30 23:05:49', '2015-09-13 01:14:49');
INSERT INTO `orders` VALUES ('8', '105', '1', 'Phan Thành Duy', '0915428202', 'duyphan.developer@gmail.com', '40 Hoàng Việt, F6, Vũng Tàu', null, '', '0', 'delivered', '2015-04-30 23:08:30', '2015-09-13 01:06:52');
INSERT INTO `orders` VALUES ('9', '105', '1', 'Phan Thành Duy', '0915428202', 'duyphan.developer@gmail.com', '40 Hoàng Việt, F6, Vũng Tàu', null, '', '0', 'deleted', '2015-04-30 23:09:31', '2015-09-13 01:06:38');
INSERT INTO `orders` VALUES ('10', '105', '1', 'Phan Thành Duy', '0915428202', 'duyphan.developer@gmail.com', '40 Hoàng Việt, F6, Vũng Tàu', null, '', '0', 'deleted', '2015-04-30 23:10:07', '2015-09-13 01:06:38');
INSERT INTO `orders` VALUES ('11', '105', '1', 'Phan Thành Duy', '0915428202', 'duyphan.developer@gmail.com', '40 Hoàng Việt, F6, Vũng Tàu', null, '', '0', 'checking', '2015-04-30 23:12:29', '2015-09-13 01:06:06');

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL,
  `post_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_template` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `global_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `global_slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('44', '0', 'page', 'Homepage', '1', 'Home', 'home', '0', '2015-09-15 05:57:32', '2015-03-21 22:47:42');
INSERT INTO `posts` VALUES ('150', '0', 'post', null, '1', 'Hạt Cà Mau - cùng học Thánh Kinh', 'hat-ca-mau-cung-hoc-thanh-kinh', '1', '2015-10-23 12:15:51', '2015-10-23 10:54:56');
INSERT INTO `posts` VALUES ('149', '0', 'post', null, '1', 'Bài giảng của Đức Thánh Cha trong Lễ Tuyên Thánh ngày 18 tháng 10 năm 2015', 'bai-giang-cua-duc-thanh-cha-trong-le-tuyen-thanh-ngay-18-thang-10-nam-2015', '0', '2015-10-22 23:43:27', '2015-10-22 23:43:27');
INSERT INTO `posts` VALUES ('146', '0', 'page', 'About Us', '1', 'About us', 'about-us', '0', '2015-09-21 11:48:09', '2015-09-21 11:48:09');
INSERT INTO `posts` VALUES ('147', '0', 'page', 'Services', '1', 'Services', 'services', '0', '2015-09-21 11:48:22', '2015-09-21 11:48:22');
INSERT INTO `posts` VALUES ('148', '0', 'page', 'Contact Us', '1', 'Contact us', 'contact-us', '0', '2015-09-21 11:48:35', '2015-09-21 11:48:35');
INSERT INTO `posts` VALUES ('152', '0', 'post', null, '1', 'Tân Giám mục Kontum & Vĩnh Long', 'tan-giam-muc-kontum-vinh-long', '1', '2015-10-23 12:15:51', '2015-10-23 11:00:05');
INSERT INTO `posts` VALUES ('153', '0', 'post', null, '1', 'Bế giảng khóa huấn luyện HĐGX khóa 2 - 2015', 'be-giang-khoa-huan-luyen-hdgx-khoa-2-2015', '0', '2015-11-07 00:55:01', '2015-11-07 00:55:01');
INSERT INTO `posts` VALUES ('154', '0', 'post', null, '1', 'Nhật ký truyền giáo Họ Long Phú', 'nhat-ky-truyen-giao-ho-long-phu', '0', '2015-11-07 00:59:40', '2015-11-07 00:59:40');
INSERT INTO `posts` VALUES ('155', '0', 'post', null, '1', 'Họ đạo Quản Long cầu cho Các Đẳng', 'ho-dao-quan-long-cau-cho-cac-dang', '0', '2015-11-07 01:04:38', '2015-11-07 01:04:38');
INSERT INTO `posts` VALUES ('156', '0', 'post', null, '1', 'Gx.Tân Thạnh bế mạc tháng Hoa 2015', 'gx-tan-thanh-be-mac-thang-hoa-2015', '0', '2015-11-07 01:04:51', '2015-11-07 01:04:51');
INSERT INTO `posts` VALUES ('157', '0', 'post', null, '1', 'Diễn văn kết thúc Thượng Hội Đồng Giám Mục của Đức Giáo Hoàng Phanxicô', 'dien-van-ket-thuc-thuong-hoi-dong-giam-muc-cua-duc-giao-hoang-phanxico', '0', '2015-11-07 01:05:02', '2015-11-07 01:05:02');
INSERT INTO `posts` VALUES ('158', '0', 'post', null, '1', 'Bài giảng của Đức Thánh Cha trong Lễ Tuyên Thánh ngày 18 tháng 10 năm 2015', 'bai-giang-cua-duc-thanh-cha-trong-le-tuyen-thanh-ngay-18-thang-10-nam-2015', '0', '2015-11-07 09:27:45', '2015-11-07 01:05:14');
INSERT INTO `posts` VALUES ('159', '0', 'post', null, '1', 'ĐTC Phanxicô phong 4 vị thánh vào Chúa nhật 18-10-2015', 'dtc-phanxico-phong-4-vi-thanh-vao-chua-nhat-18-10-2015', '1', '2015-11-07 15:00:03', '2015-11-07 01:05:24');
INSERT INTO `posts` VALUES ('160', '0', 'post', null, '1', 'Một linh mục được ca ngợi là thánh thiện và nhiệt thành chăm sóc người phong cùi', 'mot-linh-muc-duoc-ca-ngoi-la-thanh-thien-va-nhiet-thanh-cham-soc-nguoi-phong-cui', '1', '2015-11-07 15:00:03', '2015-11-07 01:05:48');
INSERT INTO `posts` VALUES ('161', '0', 'page', 'Style Guide', '1', 'Style guide', 'style-guide', '0', '2015-11-07 08:59:23', '2015-11-07 08:58:56');
INSERT INTO `posts` VALUES ('162', '0', 'page', 'Popular Posts', '1', 'Bài viết nổi bật', 'bai-viet-noi-bat', '0', '2015-11-07 17:19:20', '2015-11-07 17:19:20');

-- ----------------------------
-- Table structure for `post_contents`
-- ----------------------------
DROP TABLE IF EXISTS `post_contents`;
CREATE TABLE `post_contents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '223',
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of post_contents
-- ----------------------------
INSERT INTO `post_contents` VALUES ('156', '44', '59', '1', 'Trang chủ', 'trang-chu', '', '', 'published', '', null, '0', '2015-09-15 03:53:49', '2015-11-07 14:43:11');
INSERT INTO `post_contents` VALUES ('169', '149', '1', '1', '', '', 'Các bài đọc Kinh Thánh hôm nay trình bày chủ đề phục vụ, kêu gọi chúng ta bước theo Chúa Giêsu trên con đường khiêm nhường và thánh giá.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad, alias architecto autem dolore dolores est, eum ex illo ipsa laborum odit perspiciatis quae sapiente vero. Asperiores autem eius vitae?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad, alias architecto autem dolore dolores est, eum ex illo ipsa laborum odit perspiciatis quae sapiente vero. Asperiores autem eius vitae?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad, alias architecto autem dolore dolores est, eum ex illo ipsa laborum odit perspiciatis quae sapiente vero. Asperiores autem eius vitae?&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad, alias architecto autem dolore dolores est, eum ex illo ipsa laborum odit perspiciatis quae sapiente vero. Asperiores autem eius vitae?&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad, alias architecto autem dolore dolores est, eum ex illo ipsa laborum odit perspiciatis quae sapiente vero. Asperiores autem eius vitae?</p>\r\n', 'published', '/uploads/1910201542716194.jpg', '', '0', '2015-10-22 23:43:54', '2015-10-22 23:58:38');
INSERT INTO `post_contents` VALUES ('153', '44', '1', '15', '', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto et facilis libero perspiciatis praesentium quisquam ratione veniam? Ab asperiores beatae distinctio dolorum, eaque expedita facere in inventore laboriosam minus vero.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto et facilis libero perspiciatis praesentium quisquam ratione veniam? Ab asperiores beatae distinctio dolorum, eaque expedita facere in inventore laboriosam minus vero.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto et facilis libero perspiciatis praesentium quisquam ratione veniam? Ab asperiores beatae distinctio dolorum, eaque expedita facere in inventore laboriosam minus vero.</p>\r\n', 'published', '', null, '0', '2015-09-13 02:21:55', '2015-09-19 00:42:57');
INSERT INTO `post_contents` VALUES ('166', '146', '1', '1', null, null, null, null, 'published', null, null, '0', '2015-09-21 11:48:09', '2015-09-21 11:48:09');
INSERT INTO `post_contents` VALUES ('167', '147', '1', '1', null, null, null, null, 'published', null, null, '0', '2015-09-21 11:48:22', '2015-09-21 11:48:22');
INSERT INTO `post_contents` VALUES ('168', '148', '1', '1', '', '', '', '', 'published', '', null, '0', '2015-09-21 11:48:35', '2015-09-21 11:49:48');
INSERT INTO `post_contents` VALUES ('170', '149', '59', '1', '', '', 'Các bài đọc Kinh Thánh hôm nay trình bày chủ đề phục vụ, kêu gọi chúng ta bước theo Chúa Giêsu trên con đường khiêm nhường và thánh giá.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad, alias architecto autem dolore dolores est, eum ex illo ipsa laborum odit perspiciatis quae sapiente vero. Asperiores autem eius vitae?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad, alias architecto autem dolore dolores est, eum ex illo ipsa laborum odit perspiciatis quae sapiente vero. Asperiores autem eius vitae?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad, alias architecto autem dolore dolores est, eum ex illo ipsa laborum odit perspiciatis quae sapiente vero. Asperiores autem eius vitae?&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad, alias architecto autem dolore dolores est, eum ex illo ipsa laborum odit perspiciatis quae sapiente vero. Asperiores autem eius vitae?&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad, alias architecto autem dolore dolores est, eum ex illo ipsa laborum odit perspiciatis quae sapiente vero. Asperiores autem eius vitae?</p>\r\n', 'published', '/uploads/1910201542716194.jpg', '', '0', '2015-10-23 00:36:41', '2015-10-23 00:36:41');
INSERT INTO `post_contents` VALUES ('171', '150', '1', '1', '', '', 'Hiện nay cả Hạt đã có 4 Nhóm Thánh Kinh: Nhóm 1 học tại Họ đạo Cà Mau, gồm Họ đạo Hòa Thành và Ao Kho. Nhóm 2 học tại Họ đạo Quản Long. Nhóm 3 học tại Họ đạo Tắc Vân. Nhóm 4 học tại Họ đạo Khánh Hưng, và Nhóm 5 sắp khai sinh tại Họ đạo Cái Cấm.', '<p>Đ&aacute;p lại lời mời gọi của Hội Th&aacute;nh v&agrave; thao thức của Đức Gi&aacute;m Mục Gi&aacute;o Phận, anh chị em gi&aacute;o d&acirc;n trong Hạt C&agrave; Mau đang nỗ lực c&ugrave;ng nhau học hỏi Kinh Th&aacute;nh hằng tuần bởi như lời Th&aacute;nh Augustin&ocirc; n&oacute;i: &ldquo;kh&ocirc;ng một ai sẽ trở th&agrave;nh &quot;kẻ hu&ecirc;nh hoang rao giảng lời Thi&ecirc;n Ch&uacute;a ngo&agrave;i m&ocirc;i miệng m&agrave; kh&ocirc;ng lắng nghe lời Thi&ecirc;n Ch&uacute;a trong l&ograve;ng.&quot; Đặc biệt, Th&aacute;nh C&ocirc;ng Đồng cũng tha thiết mời gọi mọi th&agrave;nh phần Kit&ocirc; hữu h&atilde;y gắn b&oacute; với Lời Ch&uacute;a bằng việc chuy&ecirc;n cần v&agrave; học hỏi &quot;khoa học si&ecirc;u việt của Ch&uacute;a Gi&ecirc;su Kit&ocirc;&quot; (Ph 3,8). &quot;V&igrave; kh&ocirc;ng biết Th&aacute;nh Kinh l&agrave; kh&ocirc;ng biết Ch&uacute;a Kit&ocirc;&quot; (Th&aacute;nh Gi&ecirc;r&ecirc;nim&ocirc;).</p>\r\n\r\n<p>Hiện nay cả Hạt đ&atilde; c&oacute; 4 Nh&oacute;m Th&aacute;nh Kinh: Nh&oacute;m 1 học tại Họ đạo C&agrave; Mau, gồm Họ đạo H&ograve;a Th&agrave;nh v&agrave; Ao Kho. Nh&oacute;m 2 học tại Họ đạo Quản Long. Nh&oacute;m 3 học tại Họ đạo Tắc V&acirc;n. Nh&oacute;m 4 học tại Họ đạo Kh&aacute;nh Hưng, v&agrave; Nh&oacute;m 5 sắp khai sinh tại Họ đạo C&aacute;i Cấm.</p>\r\n\r\n<p>Xin Ch&uacute;a gi&uacute;p anh chị em gi&aacute;o d&acirc;n trong Hạt C&agrave; Mau, cảm nhận được tầm quan trọng của Lời Ch&uacute;a trong cuộc sống của m&igrave;nh, từ đ&oacute; hăng say hơn trong việc đọc, lắng nghe v&agrave; thực h&agrave;nh Lời Ch&uacute;a. Amen.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/DSC_3764_640x427.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/DSC_3767_640x427.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/Lop Thanh Kinh_640x427.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'published', '', '', '0', '2015-10-23 10:57:40', '2015-10-23 10:57:40');
INSERT INTO `post_contents` VALUES ('172', '152', '1', '1', '', '', 'Đức Thánh Cha Phanxicô bổ nhiệm Tân Giám mục chính toà giáo phận Kontum và Tân Giám mục chính toà giáo phận Vĩnh Long ', '<p><strong><span style=\"color:#FF0000\">Đức Th&aacute;nh Cha Phanxic&ocirc; bổ nhiệm T&acirc;n Gi&aacute;m mục ch&iacute;nh to&agrave; gi&aacute;o phận Kontum v&agrave; T&acirc;n Gi&aacute;m mục ch&iacute;nh to&agrave; gi&aacute;o phận Vĩnh Long</span></strong></p>\r\n\r\n<p>WHĐ (07.10.2015) &ndash; V&agrave;o l&uacute;c 17g00 h&ocirc;m nay, thứ Tư 07-10-2015 (tức 12g00 giờ Roma), Ph&ograve;ng B&aacute;o ch&iacute; To&agrave; Th&aacute;nh đ&atilde; c&ocirc;ng bố th&ocirc;ng tin về việc miễn nhiệm v&agrave; bổ nhiệm gi&aacute;m mục cho Gi&aacute;o hội tại Việt Nam như sau:</p>\r\n\r\n<p>1/ Đức Th&aacute;nh Cha đ&atilde; chấp thuận đơn từ nhiệm gi&aacute;m mục gi&aacute;o phận Kontum (Việt Nam) của Đức gi&aacute;m mục Micae Ho&agrave;ng Đức Oanh, theo điều 401, &sect;1 của Bộ Gi&aacute;o luật*.</p>\r\n\r\n<p>2/ Đức Th&aacute;nh Cha đ&atilde; bổ nhiệm linh mục Aloisi&ocirc; Nguyễn H&ugrave;ng Vị, hiện l&agrave; ch&iacute;nh xứ gi&aacute;o xứ Phương Nghĩa - gi&aacute;o phận Kontum, l&agrave;m Gi&aacute;m mục ch&iacute;nh to&agrave; gi&aacute;o phận Kontum, Việt Nam.<br />\r\n&nbsp;<br />\r\n3/ Đức Th&aacute;nh Cha đ&atilde; bổ nhiệm linh mục Ph&ecirc;r&ocirc; Huỳnh Văn Hai, hiện l&agrave; Ph&oacute; Gi&aacute;m đốc v&agrave; gi&aacute;o sư triết học tại Đại chủng viện Cần Thơ, l&agrave;m Gi&aacute;m mục ch&iacute;nh to&agrave; gi&aacute;o phận Vĩnh Long, Việt Nam.<br />\r\n(Nguồn: http://press.vatican.va)<br />\r\n---<br />\r\n* Gi&aacute;m mục gi&aacute;o phận đ&atilde; trọn bảy mươi lăm tuổi được y&ecirc;u cầu đệ đơn từ nhiệm l&ecirc;n Đức gi&aacute;o ho&agrave;ng,v&agrave; Đức gi&aacute;o ho&agrave;ng sẽ định liệu sau khi c&acirc;n nhắc tất cả mọi ho&agrave;n cảnh.(Bộ Gi&aacute;o luật 1983, Bản dịch của Hội đồng Gi&aacute;m mục Việt Nam).</p>\r\n', 'published', '/uploads/810201510023632.jpg', '', '0', '2015-10-23 11:01:54', '2015-10-23 11:03:19');
INSERT INTO `post_contents` VALUES ('173', '152', '59', '1', '', '', 'Đức Thánh Cha Phanxicô bổ nhiệm Tân Giám mục chính toà giáo phận Kontum và Tân Giám mục chính toà giáo phận Vĩnh Long ', '<p>WHĐ (07.10.2015) &ndash; V&agrave;o l&uacute;c 17g00 h&ocirc;m nay, thứ Tư 07-10-2015 (tức 12g00 giờ Roma), Ph&ograve;ng B&aacute;o ch&iacute; To&agrave; Th&aacute;nh đ&atilde; c&ocirc;ng bố th&ocirc;ng tin về việc miễn nhiệm v&agrave; bổ nhiệm gi&aacute;m mục cho Gi&aacute;o hội tại Việt Nam như sau:</p>\r\n\r\n<p>1/ Đức Th&aacute;nh Cha đ&atilde; chấp thuận đơn từ nhiệm gi&aacute;m mục gi&aacute;o phận Kontum (Việt Nam) của Đức gi&aacute;m mục Micae Ho&agrave;ng Đức Oanh, theo điều 401, &sect;1 của Bộ Gi&aacute;o luật*.</p>\r\n\r\n<p>2/ Đức Th&aacute;nh Cha đ&atilde; bổ nhiệm linh mục Aloisi&ocirc; Nguyễn H&ugrave;ng Vị, hiện l&agrave; ch&iacute;nh xứ gi&aacute;o xứ Phương Nghĩa - gi&aacute;o phận Kontum, l&agrave;m Gi&aacute;m mục ch&iacute;nh to&agrave; gi&aacute;o phận Kontum, Việt Nam.<br />\r\n&nbsp;<br />\r\n3/ Đức Th&aacute;nh Cha đ&atilde; bổ nhiệm linh mục Ph&ecirc;r&ocirc; Huỳnh Văn Hai, hiện l&agrave; Ph&oacute; Gi&aacute;m đốc v&agrave; gi&aacute;o sư triết học tại Đại chủng viện Cần Thơ, l&agrave;m Gi&aacute;m mục ch&iacute;nh to&agrave; gi&aacute;o phận Vĩnh Long, Việt Nam.<br />\r\n(Nguồn: http://press.vatican.va)<br />\r\n---<br />\r\n* Gi&aacute;m mục gi&aacute;o phận đ&atilde; trọn bảy mươi lăm tuổi được y&ecirc;u cầu đệ đơn từ nhiệm l&ecirc;n Đức gi&aacute;o ho&agrave;ng,v&agrave; Đức gi&aacute;o ho&agrave;ng sẽ định liệu sau khi c&acirc;n nhắc tất cả mọi ho&agrave;n cảnh.(Bộ Gi&aacute;o luật 1983, Bản dịch của Hội đồng Gi&aacute;m mục Việt Nam).</p>\r\n', 'published', '/uploads/810201510023632.jpg', '', '0', '2015-10-23 11:03:27', '2015-10-23 11:44:40');
INSERT INTO `post_contents` VALUES ('174', '150', '59', '1', '', '', 'Hiện nay cả Hạt đã có 4 Nhóm Thánh Kinh: Nhóm 1 học tại Họ đạo Cà Mau, gồm Họ đạo Hòa Thành và Ao Kho. Nhóm 2 học tại Họ đạo Quản Long. Nhóm 3 học tại Họ đạo Tắc Vân. Nhóm 4 học tại Họ đạo Khánh Hưng, và Nhóm 5 sắp khai sinh tại Họ đạo Cái Cấm.', '<p>Đ&aacute;p lại lời mời gọi của Hội Th&aacute;nh v&agrave; thao thức của Đức Gi&aacute;m Mục Gi&aacute;o Phận, anh chị em gi&aacute;o d&acirc;n trong Hạt C&agrave; Mau đang nỗ lực c&ugrave;ng nhau học hỏi Kinh Th&aacute;nh hằng tuần bởi như lời Th&aacute;nh Augustin&ocirc; n&oacute;i: &ldquo;kh&ocirc;ng một ai sẽ trở th&agrave;nh &quot;kẻ hu&ecirc;nh hoang rao giảng lời Thi&ecirc;n Ch&uacute;a ngo&agrave;i m&ocirc;i miệng m&agrave; kh&ocirc;ng lắng nghe lời Thi&ecirc;n Ch&uacute;a trong l&ograve;ng.&quot; Đặc biệt, Th&aacute;nh C&ocirc;ng Đồng cũng tha thiết mời gọi mọi th&agrave;nh phần Kit&ocirc; hữu h&atilde;y gắn b&oacute; với Lời Ch&uacute;a bằng việc chuy&ecirc;n cần v&agrave; học hỏi &quot;khoa học si&ecirc;u việt của Ch&uacute;a Gi&ecirc;su Kit&ocirc;&quot; (Ph 3,8). &quot;V&igrave; kh&ocirc;ng biết Th&aacute;nh Kinh l&agrave; kh&ocirc;ng biết Ch&uacute;a Kit&ocirc;&quot; (Th&aacute;nh Gi&ecirc;r&ecirc;nim&ocirc;).</p>\r\n\r\n<p>Hiện nay cả Hạt đ&atilde; c&oacute; 4 Nh&oacute;m Th&aacute;nh Kinh: Nh&oacute;m 1 học tại Họ đạo C&agrave; Mau, gồm Họ đạo H&ograve;a Th&agrave;nh v&agrave; Ao Kho. Nh&oacute;m 2 học tại Họ đạo Quản Long. Nh&oacute;m 3 học tại Họ đạo Tắc V&acirc;n. Nh&oacute;m 4 học tại Họ đạo Kh&aacute;nh Hưng, v&agrave; Nh&oacute;m 5 sắp khai sinh tại Họ đạo C&aacute;i Cấm.</p>\r\n\r\n<p>Xin Ch&uacute;a gi&uacute;p anh chị em gi&aacute;o d&acirc;n trong Hạt C&agrave; Mau, cảm nhận được tầm quan trọng của Lời Ch&uacute;a trong cuộc sống của m&igrave;nh, từ đ&oacute; hăng say hơn trong việc đọc, lắng nghe v&agrave; thực h&agrave;nh Lời Ch&uacute;a. Amen.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/DSC_3764_640x427.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/DSC_3767_640x427.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/Lop Thanh Kinh_640x427.jpg\" /></p>\r\n', 'published', '/uploads/211020159719642.jpg', '', '0', '2015-10-23 11:04:15', '2015-10-23 11:04:15');
INSERT INTO `post_contents` VALUES ('175', '153', '59', '1', '', '', 'Khóa tập huấn HĐGX GPCT từ ngày 2-5/11/2015 hôm nay đã kết thúc, Đức Cha Stephanô đã đến chủ sự Thánh lễ bế giảng khóa học tại TTMV/GPCT lúc 10 giờ sáng ngày 5/11/2015.', '<p>Kh&oacute;a tập huấn HĐGX GPCT từ ng&agrave;y 2-5/11/2015 h&ocirc;m nay đ&atilde; kết th&uacute;c, Đức Cha Stephan&ocirc; đ&atilde; đến chủ sự Th&aacute;nh lễ bế giảng kh&oacute;a học tại TTMV/GPCT l&uacute;c 10 giờ s&aacute;ng ng&agrave;y 5/11/2015. C&ugrave;ng đồng tế với Đức Cha c&oacute; Cha Trưởng ban Gi&aacute;o d&acirc;n Gi&aacute;o phận: Đaminh Nguyễn Đức Mười, Qu&yacute; Cha phụ tr&aacute;ch ban gi&aacute;o d&acirc;n c&aacute;c hạt: Cần Thơ, Vị Thanh, Tr&agrave; Lồng, S&oacute;c Trăng, C&agrave; Mau. Sau b&agrave;i h&aacute;t nhập lễ, Cha Đaminh Trưởng ban đ&atilde; b&aacute;o c&aacute;o với Đức Cha về c&aacute;c đề t&agrave;i huấn luyện Hội đồng gi&aacute;o xứ trong đời sống hoạt động t&ocirc;ng đồ, do Qu&yacute; Cha Gi&aacute;o sư Đại Chủng viện Th&aacute;nh Qu&yacute; bi&ecirc;n soạn v&agrave; thuyết tr&igrave;nh. Đ&oacute; l&agrave; một số kiến thức l&agrave;m h&agrave;nh trang cho từng th&agrave;nh vi&ecirc;n kh&oacute;a học, biết &aacute;p dụng thực tiễn v&agrave;o cuộc sống trong cộng đo&agrave;n họ đạo m&agrave; m&igrave;nh đang phục vụ.</p>\r\n\r\n<p>Trong b&agrave;i giảng lễ, Đức Cha n&oacute;i l&ecirc;n tầm quan trọng của việc huấn luyện cho Hội đồng gi&aacute;o xứ cấp gi&aacute;o phận m&agrave; l&acirc;u nay Ng&agrave;i thao thức v&agrave; nay th&agrave;nh hiện thực. Ng&agrave;i vui mừng khi nhận thấy đ&ocirc;ng đảo anh chị em Hội đồng gi&aacute;o xứ từ c&aacute;c họ đạo trong gi&aacute;o phận đ&atilde; quảng đại, hy sinh bỏ c&aacute;c c&ocirc;ng việc ri&ecirc;ng, việc gia đ&igrave;nh để đến tham dự kh&oacute;a học, ước mong từng người sẽ &yacute; thức được bổn phận, tr&aacute;ch nhiệm đối với họ đạo, li&ecirc;n kết với Cha Sở để x&acirc;y dựng họ đạo, phục vụ chăm s&oacute;c gi&aacute;o d&acirc;n trong mọi phương diện đức tin, phượng tự v&agrave; b&aacute;c &aacute;i.</p>\r\n\r\n<p>Sau b&agrave;i giảng, &nbsp;Đức Cha k&ecirc;u mời Anh chị em Hội đồng gi&aacute;o xứ c&ugrave;ng lập lại lời tuy&ecirc;n hứa khi nhậm chức, để x&aacute;c t&iacute;n điều m&igrave;nh đ&atilde; hứa v&agrave; chu to&agrave;n chức vụ trong việc phụng sự cho danh Ch&uacute;a cả s&aacute;ng v&agrave; hạnh ph&uacute;c cho mọi người.</p>\r\n\r\n<p>Kết th&uacute;c th&aacute;nh lễ, Đức Cha, Qu&yacute; Cha v&agrave; anh chị em HĐGX đ&atilde; chụp h&igrave;nh lưu niệm v&agrave; d&ugrave;ng bữa cơm trưa thắm đượm t&igrave;nh Cha con trong gia đ&igrave;nh gi&aacute;o phận. Cha Đaminh đ&atilde; đại diện cho Qu&yacute; Cha v&agrave; Anh chị em HĐGX n&oacute;i đ&ocirc;i lời cảm ơn Đức Cha, Cha Gi&aacute;m đốc TTMV, Qu&yacute; Cha v&agrave; những anh chị em đ&atilde; phục vụ trong suốt kh&oacute;a huấn luyện. Sau đ&oacute; mọi người chia tay nhau ra về, l&ograve;ng h&acirc;n hoan trở về để phục vụ họ đạo ng&agrave;y c&agrave;ng tốt hơn. &nbsp;</p>\r\n', 'published', '/uploads/5112015202143230.jpg', '', '0', '2015-11-07 00:57:12', '2015-11-07 00:57:12');
INSERT INTO `post_contents` VALUES ('176', '154', '59', '1', '', '', 'Họ đạo Long Phú đã mời Cha Sở Trung Bình Khmer đến dâng lễ và rửa tội cho 20 người dự tòng Khmer.', '<p><strong>Ng&agrave;y 20.12.2014:</strong><br />\r\nHọ đạo Long Ph&uacute; đ&atilde; mời Cha Sở Trung B&igrave;nh Khmer đến d&acirc;ng lễ v&agrave; rửa tội cho 20 người dự t&ograve;ng Khmer.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/DSC01077_640x480_1.jpg\" style=\"height:480px; width:640px\" /></p>\r\n\r\n<p><strong>Ng&agrave;y 01.11.2015:</strong><br />\r\nCha Sở Long Ph&uacute; đ&atilde; rửa tội cho 18 người dự t&ograve;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/IMG_5211_640x480_2.jpg\" style=\"height:480px; width:640px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/IMG_5247_640x480_3.jpg\" style=\"height:480px; width:640px\" /></p>\r\n\r\n<p><strong>Ng&agrave;y 02.11.2015:</strong><br />\r\n&nbsp;C&aacute;c gia đ&igrave;nh trong họ đạo đ&atilde; đem ảnh Ti&ecirc;n Nh&acirc;n đến nh&agrave; thờ. Đặc biệt c&oacute; ảnh Ti&ecirc;n Nh&acirc;n lương gi&aacute;o. Tổ chức mời người th&acirc;n gia đ&igrave;nh v&agrave; d&ograve;ng họ đến dự lễ. Nhất l&agrave; gia đ&igrave;nh của những người dự t&ograve;ng v&agrave; t&acirc;n t&ograve;ng. Đặc biệt mời người lương gi&aacute;o đến dự lễ.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/IMG_5293_640x480_4.jpg\" style=\"height:480px; width:640px\" /></p>\r\n', 'published', '/uploads/Mc_12_38-44.jpg', '', '0', '2015-11-07 01:02:08', '2015-11-07 01:02:42');
INSERT INTO `post_contents` VALUES ('177', '160', '59', '1', '', '', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.', '<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\r\n\r\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\r\n\r\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe align=\"middle\" frameborder=\"0\" height=\"315\" scrolling=\"no\" src=\"https://www.youtube.com/embed/5iMx3tlpFeY\" width=\"560\"></iframe></p>\r\n', 'published', '/uploads/DSC_3767_640x427.jpg', 'tedozi manson,duy phan', '0', '2015-11-07 01:06:45', '2015-11-07 19:16:01');
INSERT INTO `post_contents` VALUES ('178', '159', '59', '1', '', '', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.', '<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.</p>\r\n\r\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.</p>\r\n\r\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.</p>\r\n\r\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.</p>\r\n\r\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.</p>\r\n', 'published', '/uploads/DSC01077_640x480_1.jpg', '', '0', '2015-11-07 01:07:03', '2015-11-07 01:07:03');
INSERT INTO `post_contents` VALUES ('179', '158', '59', '1', '', '', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.', '<p>C&oacute; rất nhiều biến thể của Lorem Ipsum m&agrave; bạn c&oacute; thể t&igrave;m thấy, nhưng đa số được biến đổi bằng c&aacute;ch th&ecirc;m c&aacute;c yếu tố h&agrave;i hước, c&aacute;c từ ngẫu nhi&ecirc;n c&oacute; khi kh&ocirc;ng c&oacute; vẻ g&igrave; l&agrave; c&oacute; &yacute; nghĩa. Nếu bạn định sử dụng một đoạn Lorem Ipsum, bạn n&ecirc;n kiểm tra kĩ để chắn chắn l&agrave; kh&ocirc;ng c&oacute; g&igrave; nhạy cảm được giấu ở giữa đoạn văn bản. Tất cả c&aacute;c c&ocirc;ng cụ sản xuất văn bản mẫu Lorem Ipsum đều được l&agrave;m theo c&aacute;ch lặp đi lặp lại c&aacute;c đoạn chữ cho tới đủ th&igrave; th&ocirc;i, khiến cho lipsum.com trở th&agrave;nh c&ocirc;ng cụ sản xuất Lorem Ipsum đ&aacute;ng gi&aacute; nhất tr&ecirc;n mạng. Trang web n&agrave;y sử dụng hơn 200 từ la-tinh, kết hợp thuần thục nhiều cấu tr&uacute;c c&acirc;u để tạo ra văn bản Lorem Ipsum tr&ocirc;ng c&oacute; vẻ thật sự hợp l&iacute;. Nhờ thế, văn bản Lorem Ipsum được tạo ra m&agrave; kh&ocirc;ng cần một sự lặp lại n&agrave;o, cũng kh&ocirc;ng cần ch&egrave;n th&ecirc;m c&aacute;c từ ngữ h&oacute;m hỉnh hay thiếu trật tự.</p>\r\n\r\n<p>C&oacute; rất nhiều biến thể của Lorem Ipsum m&agrave; bạn c&oacute; thể t&igrave;m thấy, nhưng đa số được biến đổi bằng c&aacute;ch th&ecirc;m c&aacute;c yếu tố h&agrave;i hước, c&aacute;c từ ngẫu nhi&ecirc;n c&oacute; khi kh&ocirc;ng c&oacute; vẻ g&igrave; l&agrave; c&oacute; &yacute; nghĩa. Nếu bạn định sử dụng một đoạn Lorem Ipsum, bạn n&ecirc;n kiểm tra kĩ để chắn chắn l&agrave; kh&ocirc;ng c&oacute; g&igrave; nhạy cảm được giấu ở giữa đoạn văn bản. Tất cả c&aacute;c c&ocirc;ng cụ sản xuất văn bản mẫu Lorem Ipsum đều được l&agrave;m theo c&aacute;ch lặp đi lặp lại c&aacute;c đoạn chữ cho tới đủ th&igrave; th&ocirc;i, khiến cho lipsum.com trở th&agrave;nh c&ocirc;ng cụ sản xuất Lorem Ipsum đ&aacute;ng gi&aacute; nhất tr&ecirc;n mạng. Trang web n&agrave;y sử dụng hơn 200 từ la-tinh, kết hợp thuần thục nhiều cấu tr&uacute;c c&acirc;u để tạo ra văn bản Lorem Ipsum tr&ocirc;ng c&oacute; vẻ thật sự hợp l&iacute;. Nhờ thế, văn bản Lorem Ipsum được tạo ra m&agrave; kh&ocirc;ng cần một sự lặp lại n&agrave;o, cũng kh&ocirc;ng cần ch&egrave;n th&ecirc;m c&aacute;c từ ngữ h&oacute;m hỉnh hay thiếu trật tự.</p>\r\n\r\n<p>C&oacute; rất nhiều biến thể của Lorem Ipsum m&agrave; bạn c&oacute; thể t&igrave;m thấy, nhưng đa số được biến đổi bằng c&aacute;ch th&ecirc;m c&aacute;c yếu tố h&agrave;i hước, c&aacute;c từ ngẫu nhi&ecirc;n c&oacute; khi kh&ocirc;ng c&oacute; vẻ g&igrave; l&agrave; c&oacute; &yacute; nghĩa. Nếu bạn định sử dụng một đoạn Lorem Ipsum, bạn n&ecirc;n kiểm tra kĩ để chắn chắn l&agrave; kh&ocirc;ng c&oacute; g&igrave; nhạy cảm được giấu ở giữa đoạn văn bản. Tất cả c&aacute;c c&ocirc;ng cụ sản xuất văn bản mẫu Lorem Ipsum đều được l&agrave;m theo c&aacute;ch lặp đi lặp lại c&aacute;c đoạn chữ cho tới đủ th&igrave; th&ocirc;i, khiến cho lipsum.com trở th&agrave;nh c&ocirc;ng cụ sản xuất Lorem Ipsum đ&aacute;ng gi&aacute; nhất tr&ecirc;n mạng. Trang web n&agrave;y sử dụng hơn 200 từ la-tinh, kết hợp thuần thục nhiều cấu tr&uacute;c c&acirc;u để tạo ra văn bản Lorem Ipsum tr&ocirc;ng c&oacute; vẻ thật sự hợp l&iacute;. Nhờ thế, văn bản Lorem Ipsum được tạo ra m&agrave; kh&ocirc;ng cần một sự lặp lại n&agrave;o, cũng kh&ocirc;ng cần ch&egrave;n th&ecirc;m c&aacute;c từ ngữ h&oacute;m hỉnh hay thiếu trật tự.</p>\r\n', 'published', '/uploads/Lop Thanh Kinh_640x427.jpg', '', '0', '2015-11-07 01:07:34', '2015-11-07 01:07:34');
INSERT INTO `post_contents` VALUES ('180', '157', '59', '1', '', '', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.', '<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.</p>\r\n\r\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.</p>\r\n\r\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.</p>\r\n', 'published', '/uploads/jesus-with-children.jpg', '', '0', '2015-11-07 01:08:32', '2015-11-07 01:08:32');
INSERT INTO `post_contents` VALUES ('181', '156', '59', '1', '', '', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.', '<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.</p>\r\n\r\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.</p>\r\n\r\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản.</p>\r\n', 'published', '/uploads/IMG_5293_640x480_4.jpg', '', '0', '2015-11-07 01:08:53', '2015-11-07 01:08:53');
INSERT INTO `post_contents` VALUES ('182', '155', '59', '1', '', '', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.', '', 'published', '/uploads/Mc_12_38-44.jpg', '', '0', '2015-11-07 01:09:07', '2015-11-07 01:09:07');
INSERT INTO `post_contents` VALUES ('183', '161', '59', '1', '', '', '', '', 'published', '', null, '0', '2015-11-07 08:58:56', '2015-11-07 08:59:23');
INSERT INTO `post_contents` VALUES ('184', '162', '59', '1', '', '', '', '', 'published', '', null, '0', '2015-11-07 17:19:20', '2015-11-07 17:29:26');

-- ----------------------------
-- Table structure for `post_metas`
-- ----------------------------
DROP TABLE IF EXISTS `post_metas`;
CREATE TABLE `post_metas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content_id` int(11) DEFAULT NULL,
  `meta_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of post_metas
-- ----------------------------
INSERT INTO `post_metas` VALUES ('132', '169', '3_social_image', '/uploads/1910201542716194.jpg', '2015-10-22 23:58:38', '2015-10-22 23:58:38');
INSERT INTO `post_metas` VALUES ('133', '169', '1_description', 'Bài giảng của Đức Thánh Cha trong Lễ Tuyên Thánh ngày 18 tháng 10 năm 2015', '2015-10-22 23:58:57', '2015-10-22 23:58:57');
INSERT INTO `post_metas` VALUES ('134', '169', '2_keywords', 'Bài giảng của Đức Thánh Cha trong Lễ Tuyên Thánh ngày 18 tháng 10 năm 2015', '2015-10-22 23:58:57', '2015-10-22 23:58:57');
INSERT INTO `post_metas` VALUES ('135', '170', '1_description', 'Bài giảng của Đức Thánh Cha trong Lễ Tuyên Thánh ngày 18 tháng 10 năm 2015', '2015-10-23 00:36:41', '2015-10-23 00:36:41');
INSERT INTO `post_metas` VALUES ('136', '170', '2_keywords', 'Bài giảng của Đức Thánh Cha trong Lễ Tuyên Thánh ngày 18 tháng 10 năm 2015', '2015-10-23 00:36:41', '2015-10-23 00:36:41');
INSERT INTO `post_metas` VALUES ('137', '170', '3_social_image', '/uploads/1910201542716194.jpg', '2015-10-23 00:36:41', '2015-10-23 00:36:41');
INSERT INTO `post_metas` VALUES ('138', '156', '3_social_image', '/uploads/1910201542716194.jpg', '2015-11-04 16:55:32', '2015-11-04 16:55:32');
INSERT INTO `post_metas` VALUES ('139', '175', '3_social_image', '/uploads/5112015202143230.jpg', '2015-11-07 00:57:12', '2015-11-07 00:57:12');
INSERT INTO `post_metas` VALUES ('140', '176', '3_social_image', '/uploads/Mc_12_38-44.jpg', '2015-11-07 01:02:08', '2015-11-07 01:02:08');
INSERT INTO `post_metas` VALUES ('141', '177', '3_social_image', '/uploads/DSC_3767_640x427.jpg', '2015-11-07 01:06:45', '2015-11-07 01:06:45');
INSERT INTO `post_metas` VALUES ('142', '178', '3_social_image', '/uploads/DSC01077_640x480_1.jpg', '2015-11-07 01:07:03', '2015-11-07 01:07:03');
INSERT INTO `post_metas` VALUES ('143', '179', '3_social_image', '/uploads/Lop Thanh Kinh_640x427.jpg', '2015-11-07 01:07:34', '2015-11-07 01:07:34');
INSERT INTO `post_metas` VALUES ('144', '180', '3_social_image', '/uploads/jesus-with-children.jpg', '2015-11-07 01:08:32', '2015-11-07 01:08:32');
INSERT INTO `post_metas` VALUES ('145', '181', '3_social_image', '/uploads/IMG_5293_640x480_4.jpg', '2015-11-07 01:08:53', '2015-11-07 01:08:53');
INSERT INTO `post_metas` VALUES ('146', '182', '3_social_image', '/uploads/Mc_12_38-44.jpg', '2015-11-07 01:09:07', '2015-11-07 01:09:07');

-- ----------------------------
-- Table structure for `productcats`
-- ----------------------------
DROP TABLE IF EXISTS `productcats`;
CREATE TABLE `productcats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `global_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `global_slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_template` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productcats
-- ----------------------------
INSERT INTO `productcats` VALUES ('108', '0', '1', null, 'Our products', 'our-products', 'published', null, '2015-06-01 11:13:21', '2015-06-01 11:13:21');
INSERT INTO `productcats` VALUES ('109', '108', '1', null, 'Classic tours', 'classic-tours', 'published', null, '2015-06-01 11:13:35', '2015-06-01 11:13:35');
INSERT INTO `productcats` VALUES ('110', '108', '1', null, 'Honey moon', 'honey-moon', 'published', null, '2015-06-01 11:13:46', '2015-06-01 11:13:46');
INSERT INTO `productcats` VALUES ('111', '108', '1', null, 'Adventure tours', 'adventure-tours', 'published', null, '2015-06-01 11:14:03', '2015-06-01 11:14:03');
INSERT INTO `productcats` VALUES ('112', '108', '1', null, 'Beach tours', 'beach-tours', 'published', null, '2015-06-01 11:14:14', '2015-06-01 11:14:14');

-- ----------------------------
-- Table structure for `productcats_products`
-- ----------------------------
DROP TABLE IF EXISTS `productcats_products`;
CREATE TABLE `productcats_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=292 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productcats_products
-- ----------------------------
INSERT INTO `productcats_products` VALUES ('250', '81', '85');
INSERT INTO `productcats_products` VALUES ('251', '82', '85');
INSERT INTO `productcats_products` VALUES ('252', '83', '85');
INSERT INTO `productcats_products` VALUES ('253', '84', '85');
INSERT INTO `productcats_products` VALUES ('254', '85', '85');
INSERT INTO `productcats_products` VALUES ('240', '57', '84');
INSERT INTO `productcats_products` VALUES ('241', '59', '84');
INSERT INTO `productcats_products` VALUES ('242', '60', '84');
INSERT INTO `productcats_products` VALUES ('243', '61', '84');
INSERT INTO `productcats_products` VALUES ('244', '62', '84');
INSERT INTO `productcats_products` VALUES ('245', '63', '84');
INSERT INTO `productcats_products` VALUES ('246', '64', '84');
INSERT INTO `productcats_products` VALUES ('247', '65', '84');
INSERT INTO `productcats_products` VALUES ('248', '66', '84');
INSERT INTO `productcats_products` VALUES ('249', '58', '84');
INSERT INTO `productcats_products` VALUES ('255', '86', '85');
INSERT INTO `productcats_products` VALUES ('256', '87', '85');
INSERT INTO `productcats_products` VALUES ('257', '88', '85');
INSERT INTO `productcats_products` VALUES ('258', '89', '85');
INSERT INTO `productcats_products` VALUES ('259', '90', '85');
INSERT INTO `productcats_products` VALUES ('260', '91', '86');
INSERT INTO `productcats_products` VALUES ('261', '92', '86');
INSERT INTO `productcats_products` VALUES ('262', '93', '86');
INSERT INTO `productcats_products` VALUES ('263', '94', '86');
INSERT INTO `productcats_products` VALUES ('264', '95', '86');
INSERT INTO `productcats_products` VALUES ('265', '96', '86');
INSERT INTO `productcats_products` VALUES ('266', '97', '86');
INSERT INTO `productcats_products` VALUES ('267', '98', '86');
INSERT INTO `productcats_products` VALUES ('268', '99', '86');
INSERT INTO `productcats_products` VALUES ('270', '100', '86');
INSERT INTO `productcats_products` VALUES ('271', '90', '88');
INSERT INTO `productcats_products` VALUES ('272', '90', '90');
INSERT INTO `productcats_products` VALUES ('273', '100', '105');
INSERT INTO `productcats_products` VALUES ('274', '101', '107');
INSERT INTO `productcats_products` VALUES ('275', '102', '107');
INSERT INTO `productcats_products` VALUES ('276', '103', '107');
INSERT INTO `productcats_products` VALUES ('277', '104', '107');
INSERT INTO `productcats_products` VALUES ('278', '105', '107');
INSERT INTO `productcats_products` VALUES ('279', '106', '111');
INSERT INTO `productcats_products` VALUES ('280', '107', '111');
INSERT INTO `productcats_products` VALUES ('281', '109', '110');
INSERT INTO `productcats_products` VALUES ('282', '110', '111');
INSERT INTO `productcats_products` VALUES ('283', '112', '109');
INSERT INTO `productcats_products` VALUES ('284', '113', '109');
INSERT INTO `productcats_products` VALUES ('285', '108', '111');
INSERT INTO `productcats_products` VALUES ('286', '111', '109');
INSERT INTO `productcats_products` VALUES ('287', '111', '111');
INSERT INTO `productcats_products` VALUES ('288', '112', '112');
INSERT INTO `productcats_products` VALUES ('289', '114', '109');
INSERT INTO `productcats_products` VALUES ('290', '114', '111');
INSERT INTO `productcats_products` VALUES ('291', '114', '112');

-- ----------------------------
-- Table structure for `productcat_contents`
-- ----------------------------
DROP TABLE IF EXISTS `productcat_contents`;
CREATE TABLE `productcat_contents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productcat_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '223',
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productcat_contents
-- ----------------------------
INSERT INTO `productcat_contents` VALUES ('81', '108', '17', '1', 'Nos produits', '', '', '<p style=\"text-align:center\"><img alt=\"\" src=\"/uploads/images/beach_29-wallpaper-1600x600.jpg\" /></p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '', null, '2015-06-01 11:13:21', '2015-07-19 14:02:08');
INSERT INTO `productcat_contents` VALUES ('82', '108', '10', '1', '', '', '', '<p style=\"text-align:center\"><img alt=\"\" src=\"/uploads/images/beach_29-wallpaper-1600x600.jpg\" /></p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '', null, '2015-06-01 11:13:21', '2015-06-20 16:53:11');
INSERT INTO `productcat_contents` VALUES ('83', '109', '17', '1', 'Voyages classiques ', '', '', '', 'published', '/uploads/images/classic-tours-1.jpg', null, '2015-06-01 11:13:35', '2015-08-04 00:34:03');
INSERT INTO `productcat_contents` VALUES ('84', '109', '10', '1', '', '', '', '', 'published', '/uploads/images/classic-tours-1.jpg', null, '2015-06-01 11:13:35', '2015-06-20 22:37:30');
INSERT INTO `productcat_contents` VALUES ('85', '110', '17', '1', 'Voyages de noces', '', '', '', 'published', '/uploads/images/honeymoon-trip-1.jpg', null, '2015-06-01 11:13:46', '2015-08-04 00:33:43');
INSERT INTO `productcat_contents` VALUES ('86', '110', '10', '1', '', '', '', '', 'published', '/uploads/images/honeymoon-trip-1.jpg', null, '2015-06-01 11:13:46', '2015-06-20 22:37:26');
INSERT INTO `productcat_contents` VALUES ('87', '111', '17', '1', 'Voyages d\'aventures', '', '', '', 'published', '/uploads/images/adventure-tour-1.jpg', null, '2015-06-01 11:14:03', '2015-08-04 00:33:25');
INSERT INTO `productcat_contents` VALUES ('88', '111', '10', '1', '', '', '', '', 'published', '/uploads/images/adventure-tour-1.jpg', null, '2015-06-01 11:14:03', '2015-06-20 22:37:23');
INSERT INTO `productcat_contents` VALUES ('89', '112', '17', '1', 'Vacances balnéaires', '', '', '', 'published', '/uploads/images/beach-tour-1.jpg', null, '2015-06-01 11:14:14', '2015-08-04 00:32:58');
INSERT INTO `productcat_contents` VALUES ('90', '112', '10', '1', '', '', '', '', 'published', '/uploads/images/beach-tour-1.jpg', null, '2015-06-01 11:14:14', '2015-06-20 22:37:20');

-- ----------------------------
-- Table structure for `productcat_metas`
-- ----------------------------
DROP TABLE IF EXISTS `productcat_metas`;
CREATE TABLE `productcat_metas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productcat_content_id` int(11) DEFAULT NULL,
  `meta_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productcat_metas
-- ----------------------------

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `global_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `global_slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pricing` bigint(20) NOT NULL DEFAULT '0',
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('106', '0', '1', 'Tour du lịch Phan Thiết - Mũi Né - Tà Cú', 'tour-du-lich-phan-thiet-mui-ne-ta-cu', '0', '0', '2015-06-03 18:53:25', '2015-06-03 18:53:25');
INSERT INTO `products` VALUES ('107', '0', '1', 'Đảo Bình Ba - vẻ đẹp hoang sơ', 'dao-binh-ba-ve-dep-hoang-so', '0', '0', '2015-06-03 18:53:54', '2015-06-03 18:53:54');
INSERT INTO `products` VALUES ('108', '0', '1', 'Khám phá Đồng Tháp Mười - Tràm Chim - Gáo Giồng', 'kham-pha-dong-thap-muoi-tram-chim-gao-giong', '0', '0', '2015-06-03 18:54:22', '2015-06-03 18:54:22');
INSERT INTO `products` VALUES ('109', '0', '1', 'Khám phá thiên đường tình yêu - đảo Bình Hưng', 'kham-pha-thien-duong-tinh-yeu-dao-binh-hung', '0', '0', '2015-06-03 18:54:50', '2015-06-03 18:54:50');
INSERT INTO `products` VALUES ('110', '0', '1', 'Thiên đường biển đảo Nam Du', 'thien-duong-bien-dao-nam-du', '0', '0', '2015-06-03 18:55:54', '2015-06-03 18:55:54');
INSERT INTO `products` VALUES ('111', '0', '1', 'Trải nghiệm cao nguyên Mộc Châu', 'trai-nghiem-cao-nguyen-moc-chau', '0', '0', '2015-06-03 18:56:20', '2015-06-03 18:56:20');
INSERT INTO `products` VALUES ('112', '0', '1', 'Tour Nha Trang - Vinpearl Land', 'tour-nha-trang-vinpearl-land', '0', '0', '2015-06-03 18:56:37', '2015-06-03 18:56:37');
INSERT INTO `products` VALUES ('114', '0', '1', 'Phú Quốc - hành trình thơ mộng', 'phu-quoc-hanh-trinh-tho-mong', '0', '1', '2015-09-12 15:51:07', '2015-06-03 19:33:09');

-- ----------------------------
-- Table structure for `product_contents`
-- ----------------------------
DROP TABLE IF EXISTS `product_contents`;
CREATE TABLE `product_contents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '223',
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pricing` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product_contents
-- ----------------------------
INSERT INTO `product_contents` VALUES ('101', '106', '10', '1', '', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/classic-tours-1.jpg', '', '0', '2015-06-03 19:02:58', '2015-06-04 20:16:34', '0');
INSERT INTO `product_contents` VALUES ('102', '107', '10', '1', '', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/900x600xnha-tuong-lai-dao-nhan-tao-04.jpg.pagespeed.ic.piA13rnsYr.jpg', '', '0', '2015-06-03 19:06:55', '2015-06-04 20:16:27', '800');
INSERT INTO `product_contents` VALUES ('103', '108', '10', '1', '', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/dong-thap-muoi-tram-chim.jpg', '', '0', '2015-06-03 19:07:05', '2015-06-04 20:16:20', '400');
INSERT INTO `product_contents` VALUES ('104', '109', '10', '1', '', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/Tour-du-lich-dao-Binh-Hung---BBQ-hai-san-Tet-Duong-Lich1418261523_s406.jpg', '', '0', '2015-06-03 19:07:17', '2015-06-04 20:16:14', '600');
INSERT INTO `product_contents` VALUES ('105', '110', '10', '1', 'Thiên đường biển đảo Nam Du ', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/nam-du-ivivu.jpg', '', '0', '2015-06-03 19:07:30', '2015-06-04 20:19:07', '600');
INSERT INTO `product_contents` VALUES ('106', '111', '10', '1', '', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/cao-nguyen-Moc-Chau-thao-nguyen-Moc-Chau-di-du-lich-Son-La-3.jpg', '', '0', '2015-06-03 19:07:37', '2015-06-04 20:17:17', '1200');
INSERT INTO `product_contents` VALUES ('107', '112', '10', '1', 'Tour Nha Trang - Vinpearl Land ', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/du-lich-Nha-Trang-vinpearland.jpg', '', '0', '2015-06-03 19:07:50', '2015-06-04 20:15:08', '300');
INSERT INTO `product_contents` VALUES ('109', '114', '10', '1', '', '', '', '<p><strong>Lộ tr&igrave;nh</strong>: S&agrave;i G&ograve;n - Ph&uacute; Quốc<br />\r\n<strong>Thời gian</strong>: 3 ng&agrave;y 2 đ&ecirc;m, khởi h&agrave;nh thứ 6 h&agrave;ng tuần, về v&agrave;o tối Chủ nhật.<br />\r\n<strong>Mức gi&aacute; dự t&iacute;nh</strong>: 700$</p>\r\n\r\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &quot;Nội dung, nội dung, nội dung&quot; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &quot;Lorem ipsum&quot; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\r\n\r\n<p>C&oacute; rất nhiều biến thể của Lorem Ipsum m&agrave; bạn c&oacute; thể t&igrave;m thấy, nhưng đa số được biến đổi bằng c&aacute;ch th&ecirc;m c&aacute;c yếu tố h&agrave;i hước, c&aacute;c từ ngẫu nhi&ecirc;n c&oacute; khi kh&ocirc;ng c&oacute; vẻ g&igrave; l&agrave; c&oacute; &yacute; nghĩa. Nếu bạn định sử dụng một đoạn Lorem Ipsum, bạn n&ecirc;n kiểm tra kĩ để chắn chắn l&agrave; kh&ocirc;ng c&oacute; g&igrave; nhạy cảm được giấu ở giữa đoạn văn bản. Tất cả c&aacute;c c&ocirc;ng cụ sản xuất văn bản mẫu Lorem Ipsum đều được l&agrave;m theo c&aacute;ch lặp đi lặp lại c&aacute;c đoạn chữ cho tới đủ th&igrave; th&ocirc;i, khiến cho lipsum.com trở th&agrave;nh c&ocirc;ng cụ sản xuất Lorem Ipsum đ&aacute;ng gi&aacute; nhất tr&ecirc;n mạng. Trang web n&agrave;y sử dụng hơn 200 từ la-tinh, kết hợp thuần thục nhiều cấu tr&uacute;c c&acirc;u để tạo ra văn bản Lorem Ipsum tr&ocirc;ng c&oacute; vẻ thật sự hợp l&iacute;. Nhờ thế, văn bản Lorem Ipsum được tạo ra m&agrave; kh&ocirc;ng cần một sự lặp lại n&agrave;o, cũng kh&ocirc;ng cần ch&egrave;n th&ecirc;m c&aacute;c từ ngữ h&oacute;m hỉnh hay thiếu trật tự.</p>\r\n\r\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia - Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &quot;consectetur&quot;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &quot;De Finibus Bonorum et Malorum&quot; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng. D&ograve;ng đầu ti&ecirc;n của Lorem Ipsum, &quot;Lorem ipsum dolor sit amet...&quot; được tr&iacute;ch từ một c&acirc;u trong đoạn thứ 1.10.32.</p>\r\n', null, '/uploads/minh-duc.png', '', '0', '2015-06-03 19:34:16', '2015-09-12 18:17:52', '700');
INSERT INTO `product_contents` VALUES ('110', '114', '17', '1', 'Voyage de Phu Quoc-poétique', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/Phu-quoc-bang-tau-cao-toc.jpg', '', '0', '2015-06-04 20:01:23', '2015-06-04 20:06:12', '700');
INSERT INTO `product_contents` VALUES ('119', '114', '1', '1', '', '', '', '', 'published', '', '', '0', '2015-09-16 23:04:50', '2015-09-16 23:04:50', '0');
INSERT INTO `product_contents` VALUES ('120', '112', '1', '1', '', '', '', '', 'published', '', '', '0', '2015-09-16 23:04:55', '2015-09-16 23:04:55', '0');
INSERT INTO `product_contents` VALUES ('121', '111', '1', '1', '', '', '', '', 'published', '', '', '0', '2015-09-16 23:04:59', '2015-09-16 23:04:59', '0');
INSERT INTO `product_contents` VALUES ('122', '110', '1', '1', '', '', '', '', 'published', '', '', '0', '2015-09-16 23:05:04', '2015-09-16 23:05:04', '0');
INSERT INTO `product_contents` VALUES ('123', '109', '1', '1', '', '', '', '', 'published', '', '', '0', '2015-09-16 23:05:08', '2015-09-16 23:05:08', '0');
INSERT INTO `product_contents` VALUES ('124', '108', '1', '1', '', '', '', '', 'published', '', '', '0', '2015-09-16 23:05:13', '2015-09-16 23:05:13', '0');
INSERT INTO `product_contents` VALUES ('125', '107', '1', '1', '', '', '', '', 'published', '', '', '0', '2015-09-16 23:05:17', '2015-09-16 23:05:17', '0');
INSERT INTO `product_contents` VALUES ('126', '106', '1', '1', '', '', '', '', 'published', '', '', '0', '2015-09-16 23:05:21', '2015-09-16 23:05:21', '0');
INSERT INTO `product_contents` VALUES ('112', '112', '17', '1', 'Tour Nha Trang - Vinpearl Land ', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/du-lich-Nha-Trang-vinpearland.jpg', '', '0', '2015-06-04 20:15:35', '2015-06-04 20:26:46', '0');
INSERT INTO `product_contents` VALUES ('113', '111', '17', '1', 'Expérience de plateau de MOC Chau', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/cao-nguyen-Moc-Chau-thao-nguyen-Moc-Chau-di-du-lich-Son-La-3.jpg', '', '0', '2015-06-04 20:18:06', '2015-06-04 20:18:06', '0');
INSERT INTO `product_contents` VALUES ('114', '110', '17', '1', 'Nam mer îles Du Paradis', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/nam-du-ivivu.jpg', '', '0', '2015-06-04 20:19:56', '2015-06-04 20:19:56', '1200');
INSERT INTO `product_contents` VALUES ('115', '109', '17', '1', 'Explorez Paradise Island-Binh accroché amour', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/Tour-du-lich-dao-Binh-Hung---BBQ-hai-san-Tet-Duong-Lich1418261523_s406.jpg', '', '0', '2015-06-04 20:22:03', '2015-06-04 20:22:03', '0');
INSERT INTO `product_contents` VALUES ('116', '108', '17', '1', 'Découvrez les dix tour-Tram Chim-Briquette buttes', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/dong-thap-muoi-tram-chim.jpg', '', '0', '2015-06-04 20:23:08', '2015-06-04 20:23:20', '400');
INSERT INTO `product_contents` VALUES ('117', '107', '17', '1', 'Sur la beauté sauvage-trois moyenne', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/900x600xnha-tuong-lai-dao-nhan-tao-04.jpg.pagespeed.ic.piA13rnsYr.jpg', '', '0', '2015-06-04 20:24:10', '2015-06-04 20:24:49', '800');
INSERT INTO `product_contents` VALUES ('118', '106', '17', '1', 'Tour Phan Thiet - Mui Ne - Ta Cu', '', '', '<p><strong>La feuille de route</strong>: Sài Gòn - Phú Quốc<br />\r\n<strong>Temps</strong>: 3 ngày 2 đêm, khởi hành thứ 6 hàng tuần, về vào tối Chủ nhật.<br />\r\n<strong>Prix estimé</strong>: 700$</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'published', '/uploads/images/classic-tours-1.jpg', '', '0', '2015-06-04 20:26:05', '2015-06-04 20:26:05', '900');

-- ----------------------------
-- Table structure for `product_metas`
-- ----------------------------
DROP TABLE IF EXISTS `product_metas`;
CREATE TABLE `product_metas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_content_id` int(11) DEFAULT NULL,
  `meta_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product_metas
-- ----------------------------

-- ----------------------------
-- Table structure for `ratings`
-- ----------------------------
DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ratings
-- ----------------------------
INSERT INTO `ratings` VALUES ('1', '0', '114', '14', '25', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ratings` VALUES ('2', '0', '114', '15', '25', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ratings` VALUES ('3', '0', '114', '16', '1', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ratings` VALUES ('4', '0', '114', '17', '1', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ratings` VALUES ('5', '0', '114', '18', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `option_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'Tiêu đề trang', 'text', 'tieu_de_trang', 'Lumen Angular Local', '2015-11-23 10:50:11', '2015-11-23 15:29:14');
INSERT INTO `settings` VALUES ('2', 'Meta SEO - tóm tắt nội dung (meta description)', 'text', 'meta_seo_description', 'Lumen Angular', '2015-11-23 10:51:02', '2015-11-23 15:29:14');
INSERT INTO `settings` VALUES ('3', 'Meta SEO - từ khóa (meta keywords)', 'text', 'meta_seo_keywords', 'Lumen, Angular, Tedozi Manson, Duy Phan', '2015-11-23 10:52:19', '2015-11-23 13:51:59');
INSERT INTO `settings` VALUES ('4', 'Số bài viết hiển thị mỗi trang', 'text', 'post_per_page', '15', '2015-11-23 10:52:51', '2015-11-23 13:51:59');

-- ----------------------------
-- Table structure for `usermetas`
-- ----------------------------
DROP TABLE IF EXISTS `usermetas`;
CREATE TABLE `usermetas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `meta_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usermetas
-- ----------------------------

-- ----------------------------
-- Table structure for `userroles`
-- ----------------------------
DROP TABLE IF EXISTS `userroles`;
CREATE TABLE `userroles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_user_can` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userroles
-- ----------------------------
INSERT INTO `userroles` VALUES ('1', '1', 'Webmaster', 'webmaster', '[]', '2014-10-14 00:12:53', '2014-11-07 15:44:09');
INSERT INTO `userroles` VALUES ('3', '2', 'Administrator', 'administrator', '[\"loginDashboard\",\"comment\",\"replyComment\",\"createPost\",\"updatePost\",\"updatePostMeta\",\"createPage\",\"updatePage\",\"createCategory\",\"updateCategory\",\"updateCategoryMeta\",\"updateMenu\",\"viewOrder\",\"createNormalUser\",\"createStaffUser\"]', '0000-00-00 00:00:00', '2015-01-08 17:32:05');
INSERT INTO `userroles` VALUES ('5', '3', 'Staff', 'staff', '[\"loginDashboard\",\"comment\",\"replyComment\",\"viewOrder\"]', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `userroles` VALUES ('6', '4', 'Normal User', 'normal', '[]', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userrole_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_of_birth` datetime DEFAULT '0000-00-00 00:00:00',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone_1` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `phone_2` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `phone_3` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_can` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `register_key` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', '1', 'webmaster', '$2y$10$OhUkdcdm5JlAnwr1s2VO/eAxpKiU66wLMVqsiQW9yesyheGs7/Fj6', 'Webmaster', '', null, 'duy.phan2509@outlook.com', 'PHP developer, Frontend developer', '2015-03-04 22:27:35', null, '/uploads/minh-duc.png', '0984848519', '0915428202', '01993032562', 'activated', '[\"loginDashboard\",\"comment\",\"replyComment\",\"viewComments\",\"deleteComment\",\"editComment\",\"viewPosts\",\"createPost\",\"updatePost\",\"deletePost\",\"viewPages\",\"createPage\",\"updatePage\",\"deletePage\",\"viewCategories\",\"createCategory\",\"updateCategory\",\"deleteCategory\",\"viewMenus\",\"createMenu\",\"updateMenu\",\"deleteMenu\",\"viewCustomFields\",\"createCustomField\",\"updateCustomField\",\"deleteCustomField\",\"viewOrders\",\"viewProducts\",\"createProduct\",\"updateProduct\",\"deleteProduct\",\"viewProductCategories\",\"createProductCategory\",\"updateProductCategory\",\"deleteProductCategory\",\"viewUsers\",\"createNormalUser\",\"createStaffUser\",\"createAdminUser\",\"createWebmasterUser\",\"updateOtherUser\",\"deleteUserPermanently\",\"updateOptions\",\"updateUserRoles\",\"updateUserMenuRoles\"]', null, 'd126ERHB56Swvr8vsM0PuxQNV0b2jQ5k0lBKwT9VTD5TRkqhzPegzdkWLHJz', '2014-10-14 00:10:13', '2015-09-15 01:50:07');
INSERT INTO `users` VALUES ('15', '3', '2', 'admin', '$2y$10$qZOddgitcKNDydQ2C/VDd.ki9ip/tzizJApG.4JVHhD5hyaUt3Bke', 'Administrator', '', null, 'admin@vto.com', null, '0000-00-00 00:00:00', null, '', '', '', '', 'activated', '[\"loginDashboard\",\"comment\",\"replyComment\",\"viewComments\",\"deleteComment\",\"editComment\",\"viewPosts\",\"createPost\",\"updatePost\",\"deletePost\",\"viewPages\",\"createPage\",\"updatePage\",\"deletePage\",\"viewCategories\",\"createCategory\",\"updateCategory\",\"deleteCategory\",\"viewMenus\",\"createMenu\",\"updateMenu\",\"deleteMenu\",\"viewCustomFields\",\"createCustomField\",\"updateCustomField\",\"deleteCustomField\",\"viewOrders\",\"viewProducts\",\"createProduct\",\"updateProduct\",\"deleteProduct\",\"viewProductCategories\",\"createProductCategory\",\"updateProductCategory\",\"deleteProductCategory\",\"viewUsers\",\"createNormalUser\",\"createStaffUser\",\"createAdminUser\",\"updateOtherUser\",\"deleteUserPermanently\",\"updateOptions\",\"updateUserRoles\",\"updateUserMenuRoles\"]', null, 'gA4ArpvG87zifUlBXxySoln7ozMRAGD6utVltxHRpTNZQ72PLXD2JRSnT5Fe', '2015-05-27 20:58:15', '2015-09-19 06:37:17');
