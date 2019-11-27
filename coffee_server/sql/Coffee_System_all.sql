/*
Navicat MySQL Data Transfer

Source Server         : vm_mysql
Source Server Version : 50725
Source Host           : 176.23.4.231:3306
Source Database       : Coffee_System

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-04-22 09:54:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 设备类型信息', '7', 'add_eqtype');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 设备类型信息', '7', 'change_eqtype');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 设备类型信息', '7', 'delete_eqtype');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 设备类型信息', '8', 'add_eqtype');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 设备类型信息', '8', 'change_eqtype');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 设备类型信息', '8', 'delete_eqtype');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 设备信息', '9', 'add_eqinfo');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 设备信息', '9', 'change_eqinfo');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 设备信息', '9', 'delete_eqinfo');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 设备状态', '10', 'add_eqstate');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 设备状态', '10', 'change_eqstate');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 设备状态', '10', 'delete_eqstate');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 设备报警', '11', 'add_eqwarning');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 设备报警', '11', 'change_eqwarning');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 设备报警', '11', 'delete_eqwarning');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$100000$OGULeqIqTPc4$Ggti9o8yu43z5R7NXoZQhgnOmPaTEAfwgTJ+3rQ0D1o=', '2019-04-21 13:22:34.254276', '1', 'admin', '', '', '24830872@qq.com', '1', '1', '2019-04-21 13:20:08.285434');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-04-21 13:57:28.647735', '4', '宏达广场1一楼', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2019-04-21 13:57:58.232237', '4', '宏达广场1一楼', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '9', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'index', 'eqtype');
INSERT INTO `django_content_type` VALUES ('9', 'manage', 'eqinfo');
INSERT INTO `django_content_type` VALUES ('10', 'manage', 'eqstate');
INSERT INTO `django_content_type` VALUES ('8', 'manage', 'eqtype');
INSERT INTO `django_content_type` VALUES ('11', 'manage', 'eqwarning');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-04-21 13:17:08.707203');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-04-21 13:17:09.540192');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-04-21 13:17:09.647101');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-04-21 13:17:09.661139');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2019-04-21 13:17:09.729706');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2019-04-21 13:17:09.765806');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2019-04-21 13:17:09.828879');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2019-04-21 13:17:09.839910');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2019-04-21 13:17:09.868987');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2019-04-21 13:17:09.872998');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2019-04-21 13:17:09.884029');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2019-04-21 13:17:09.966850');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2019-04-21 13:17:10.009967');
INSERT INTO `django_migrations` VALUES ('14', 'index', '0001_initial', '2019-04-21 13:17:10.028808');
INSERT INTO `django_migrations` VALUES ('15', 'index', '0002_auto_20190419_1044', '2019-04-21 13:17:10.155193');
INSERT INTO `django_migrations` VALUES ('16', 'index', '0003_typedetail', '2019-04-21 13:17:10.210347');
INSERT INTO `django_migrations` VALUES ('17', 'index', '0004_auto_20190421_2113', '2019-04-21 13:17:10.376030');
INSERT INTO `django_migrations` VALUES ('18', 'index', '0005_auto_20190421_2114', '2019-04-21 13:17:10.385055');
INSERT INTO `django_migrations` VALUES ('19', 'sessions', '0001_initial', '2019-04-21 13:17:10.430128');
INSERT INTO `django_migrations` VALUES ('20', 'manage', '0001_initial', '2019-04-21 13:47:03.832475');
INSERT INTO `django_migrations` VALUES ('21', 'manage', '0002_auto_20190419_1044', '2019-04-21 13:47:04.095531');
INSERT INTO `django_migrations` VALUES ('22', 'manage', '0003_typedetail', '2019-04-21 13:47:04.175479');
INSERT INTO `django_migrations` VALUES ('23', 'manage', '0004_auto_20190421_2113', '2019-04-21 13:47:04.306406');
INSERT INTO `django_migrations` VALUES ('24', 'manage', '0005_auto_20190421_2114', '2019-04-21 13:47:04.314424');
INSERT INTO `django_migrations` VALUES ('25', 'manage', '0006_eqinfo', '2019-04-21 13:54:34.623485');
INSERT INTO `django_migrations` VALUES ('26', 'manage', '0007_eqstate', '2019-04-21 14:04:09.872177');
INSERT INTO `django_migrations` VALUES ('27', 'manage', '0008_eqwarning', '2019-04-21 14:09:05.589113');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('aix0u2ukf8fchkfsqdez5spjas8wmu6x', 'MDFkMjQ2ZmUwYzM5MThjNGQwMWM5ZDYwMTI0MzRiOThhZWY0ZGQ4MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZjRiYWYzMzhkMWJmNDY3NGNiMzdjYjhmOTFkOWQzMTAzY2EzYmEzIn0=', '2019-05-05 13:22:34.276707');

-- ----------------------------
-- Table structure for manage_eqinfo
-- ----------------------------
DROP TABLE IF EXISTS `manage_eqinfo`;
CREATE TABLE `manage_eqinfo` (
  `machine_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `mac_addr` varchar(64) NOT NULL,
  `addr` varchar(128) NOT NULL,
  `position` varchar(64) NOT NULL,
  `install_date` date NOT NULL,
  `install_emp_id` varchar(16) NOT NULL,
  `status` int(11) NOT NULL,
  `mantain_emp_id` varchar(16) NOT NULL,
  PRIMARY KEY (`machine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_eqinfo
-- ----------------------------
INSERT INTO `manage_eqinfo` VALUES ('1', '1', '嘉熙业广场11楼1128_001', 'BC-EE-7B-5B-6B-0F', '嘉熙业广场11楼1128', '22.6290598194,114.0463683908', '2019-04-10', '梁胜云', '3', '林九峰');
INSERT INTO `manage_eqinfo` VALUES ('2', '1', '龙华广场8楼0802_001', 'BC-EE-7B-5B-6B-2F', '龙华广场8楼0802', '22.6609131320,114.0456618297', '2019-04-10', '郭洪山', '3', '林九峰');
INSERT INTO `manage_eqinfo` VALUES ('3', '1', '天汇大厦10楼1018_001', 'BC-EE-7B-5B-6B-3F', '天汇大厦10楼1018', '22.6490141267,114.0521801787', '2019-04-10', '张达', '3', '林九峰');
INSERT INTO `manage_eqinfo` VALUES ('4', '1', '宏达广场1一楼', 'BC-EE-7B-5B-6B-4F', '宏达广场0001号设备', '22.6490141267,114.0521801787', '2019-04-21', '王希', '3', '王希');

-- ----------------------------
-- Table structure for manage_eqstate
-- ----------------------------
DROP TABLE IF EXISTS `manage_eqstate`;
CREATE TABLE `manage_eqstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `machine_id` int(11) NOT NULL,
  `recv_time` datetime(6) NOT NULL,
  `enviroment_temperature` varchar(16) NOT NULL,
  `boiler_temperature` varchar(16) NOT NULL,
  `boiler_pressue` varchar(16) NOT NULL,
  `material_remainder` varchar(16) NOT NULL,
  `orders_num` int(11) NOT NULL,
  `orders_amt` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15468 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_eqstate
-- ----------------------------
INSERT INTO `manage_eqstate` VALUES ('14788', '1', '2019-04-13 16:54:36.000000', '25', '76.70', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14789', '2', '2019-04-13 16:54:36.000000', '27', '74.87', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14790', '3', '2019-04-13 16:54:36.000000', '23', '89.17', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14791', '4', '2019-04-13 16:54:36.000000', '26', '82.58', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14792', '5', '2019-04-13 16:54:36.000000', '26', '78.39', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14793', '6', '2019-04-13 16:54:36.000000', '27', '83.26', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14794', '7', '2019-04-13 16:54:36.000000', '29', '88.92', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14795', '8', '2019-04-13 16:54:36.000000', '29', '81.58', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14796', '9', '2019-04-13 16:54:36.000000', '24', '76.19', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14797', '10', '2019-04-13 16:54:36.000000', '30', '76.70', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14798', '12', '2019-04-13 16:54:36.000000', '24', '84.43', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14799', '13', '2019-04-13 16:54:36.000000', '24', '78.38', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14800', '14', '2019-04-13 16:54:36.000000', '23', '76.53', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14801', '15', '2019-04-13 16:54:36.000000', '29', '77.65', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14802', '16', '2019-04-13 16:54:36.000000', '25', '79.29', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14803', '17', '2019-04-13 16:54:36.000000', '24', '89.90', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14804', '18', '2019-04-13 16:54:36.000000', '23', '89.33', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14805', '19', '2019-04-13 16:54:36.000000', '24', '76.44', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14806', '20', '2019-04-13 16:54:36.000000', '26', '82.79', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14807', '21', '2019-04-13 16:54:36.000000', '27', '91.72', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14808', '22', '2019-04-13 16:54:36.000000', '26', '82.17', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14809', '23', '2019-04-13 16:54:36.000000', '27', '74.38', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14810', '24', '2019-04-13 16:54:36.000000', '28', '77.64', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14811', '25', '2019-04-13 16:54:36.000000', '29', '78.01', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14812', '26', '2019-04-13 16:54:36.000000', '25', '88.72', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14813', '27', '2019-04-13 16:54:36.000000', '27', '83.08', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14814', '28', '2019-04-13 16:54:36.000000', '23', '89.15', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14815', '29', '2019-04-13 16:54:36.000000', '28', '92.23', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14816', '30', '2019-04-13 16:54:36.000000', '24', '78.99', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14817', '31', '2019-04-13 16:54:36.000000', '27', '77.23', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14818', '32', '2019-04-13 16:54:36.000000', '28', '84.01', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14819', '33', '2019-04-13 16:54:36.000000', '26', '76.13', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14820', '34', '2019-04-13 16:54:36.000000', '26', '80.85', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14821', '35', '2019-04-13 16:54:36.000000', '29', '91.66', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14822', '36', '2019-04-13 16:54:36.000000', '28', '81.16', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14823', '37', '2019-04-13 16:54:36.000000', '23', '83.29', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14824', '39', '2019-04-13 16:54:36.000000', '27', '76.17', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14825', '40', '2019-04-13 16:54:36.000000', '28', '92.95', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14826', '41', '2019-04-13 16:54:36.000000', '28', '78.86', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14827', '42', '2019-04-13 16:54:36.000000', '26', '75.63', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14828', '43', '2019-04-13 16:54:36.000000', '29', '89.06', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14829', '44', '2019-04-13 16:54:36.000000', '26', '85.45', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14830', '45', '2019-04-13 16:54:36.000000', '28', '89.17', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14831', '46', '2019-04-13 16:54:36.000000', '26', '77.12', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14832', '47', '2019-04-13 16:54:36.000000', '27', '81.85', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14833', '48', '2019-04-13 16:54:36.000000', '25', '75.89', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14834', '49', '2019-04-13 16:54:36.000000', '24', '74.49', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14835', '50', '2019-04-13 16:54:36.000000', '23', '90.29', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14836', '51', '2019-04-13 16:54:36.000000', '24', '86.29', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14837', '52', '2019-04-13 16:54:36.000000', '23', '79.15', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14838', '53', '2019-04-13 16:54:36.000000', '24', '88.17', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14839', '54', '2019-04-13 16:54:36.000000', '23', '83.71', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14840', '55', '2019-04-13 16:54:36.000000', '29', '85.71', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14841', '56', '2019-04-13 16:54:36.000000', '30', '90.78', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14842', '57', '2019-04-13 16:54:36.000000', '23', '75.40', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14843', '58', '2019-04-13 16:54:36.000000', '28', '79.32', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14844', '59', '2019-04-13 16:54:36.000000', '29', '89.61', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14845', '60', '2019-04-13 16:54:36.000000', '25', '88.26', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14846', '61', '2019-04-13 16:54:36.000000', '26', '93.00', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14847', '62', '2019-04-13 16:54:36.000000', '24', '84.06', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14848', '63', '2019-04-13 16:54:36.000000', '28', '78.51', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14849', '64', '2019-04-13 16:54:36.000000', '30', '91.83', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14850', '65', '2019-04-13 16:54:36.000000', '23', '79.50', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14851', '66', '2019-04-13 16:54:36.000000', '26', '83.63', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14852', '67', '2019-04-13 16:54:36.000000', '30', '76.34', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14853', '68', '2019-04-13 16:54:36.000000', '26', '80.34', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14854', '69', '2019-04-13 16:54:36.000000', '25', '92.10', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14855', '70', '2019-04-13 16:54:36.000000', '28', '87.04', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14856', '71', '2019-04-13 16:54:36.000000', '23', '82.51', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14857', '72', '2019-04-13 16:54:36.000000', '24', '85.36', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14858', '73', '2019-04-13 16:54:36.000000', '29', '88.59', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14859', '74', '2019-04-13 16:54:36.000000', '27', '90.78', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14860', '75', '2019-04-13 16:54:36.000000', '24', '87.73', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14861', '76', '2019-04-13 16:54:36.000000', '29', '88.43', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14862', '77', '2019-04-13 16:54:36.000000', '29', '91.50', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14863', '78', '2019-04-13 16:54:36.000000', '24', '84.98', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14864', '79', '2019-04-13 16:54:36.000000', '27', '85.32', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14865', '80', '2019-04-13 16:54:36.000000', '28', '82.82', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14866', '81', '2019-04-13 16:54:36.000000', '30', '85.92', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14867', '82', '2019-04-13 16:54:36.000000', '30', '82.21', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14868', '83', '2019-04-13 16:54:36.000000', '27', '79.00', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14869', '84', '2019-04-13 16:54:36.000000', '24', '83.80', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14870', '85', '2019-04-13 16:54:36.000000', '28', '75.68', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14871', '86', '2019-04-13 16:54:36.000000', '27', '88.66', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14872', '87', '2019-04-13 16:54:36.000000', '30', '90.92', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14873', '88', '2019-04-13 16:54:36.000000', '30', '83.25', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14874', '89', '2019-04-13 16:54:36.000000', '30', '75.34', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14875', '90', '2019-04-13 16:54:36.000000', '27', '85.58', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14876', '92', '2019-04-13 16:54:36.000000', '28', '80.26', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14877', '93', '2019-04-13 16:54:36.000000', '23', '75.78', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14878', '94', '2019-04-13 16:54:36.000000', '27', '84.62', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14879', '95', '2019-04-13 16:54:36.000000', '28', '83.85', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14880', '96', '2019-04-13 16:54:36.000000', '26', '86.75', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14881', '97', '2019-04-13 16:54:36.000000', '28', '90.32', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14882', '98', '2019-04-13 16:54:36.000000', '30', '92.01', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14883', '99', '2019-04-13 16:54:36.000000', '27', '74.32', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14884', '100', '2019-04-13 16:54:36.000000', '24', '74.96', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('14885', '1', '2019-04-13 16:55:36.000000', '27', '72.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14886', '2', '2019-04-13 16:55:36.000000', '28', '77.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14887', '3', '2019-04-13 16:55:36.000000', '24', '93.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14888', '4', '2019-04-13 16:55:36.000000', '26', '78.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14889', '5', '2019-04-13 16:55:36.000000', '24', '81.10', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14890', '6', '2019-04-13 16:55:36.000000', '29', '79.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14891', '7', '2019-04-13 16:55:36.000000', '28', '84.00', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14892', '8', '2019-04-13 16:55:36.000000', '31', '77.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14893', '9', '2019-04-13 16:55:36.000000', '25', '72.50', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14894', '10', '2019-04-13 16:55:36.000000', '32', '73.20', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14895', '12', '2019-04-13 16:55:36.000000', '24', '87.40', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14896', '13', '2019-04-13 16:55:36.000000', '24', '75.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14897', '14', '2019-04-13 16:55:36.000000', '23', '76.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14898', '15', '2019-04-13 16:55:36.000000', '30', '80.30', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14899', '16', '2019-04-13 16:55:36.000000', '23', '74.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14900', '17', '2019-04-13 16:55:36.000000', '24', '92.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14901', '18', '2019-04-13 16:55:36.000000', '25', '89.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14902', '19', '2019-04-13 16:55:36.000000', '25', '74.90', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14903', '20', '2019-04-13 16:55:36.000000', '24', '87.70', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14904', '21', '2019-04-13 16:55:36.000000', '28', '89.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14905', '22', '2019-04-13 16:55:36.000000', '25', '82.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14906', '23', '2019-04-13 16:55:36.000000', '26', '71.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14907', '24', '2019-04-13 16:55:36.000000', '27', '78.60', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14908', '25', '2019-04-13 16:55:36.000000', '29', '81.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14909', '26', '2019-04-13 16:55:36.000000', '24', '91.40', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14910', '27', '2019-04-13 16:55:36.000000', '29', '86.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14911', '28', '2019-04-13 16:55:36.000000', '21', '85.00', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14912', '29', '2019-04-13 16:55:36.000000', '27', '94.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14913', '30', '2019-04-13 16:55:36.000000', '24', '81.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14914', '31', '2019-04-13 16:55:36.000000', '28', '78.20', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14915', '32', '2019-04-13 16:55:36.000000', '27', '83.50', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14916', '33', '2019-04-13 16:55:36.000000', '25', '79.60', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14917', '34', '2019-04-13 16:55:36.000000', '27', '85.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14918', '35', '2019-04-13 16:55:36.000000', '30', '92.50', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14919', '36', '2019-04-13 16:55:36.000000', '28', '82.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14920', '37', '2019-04-13 16:55:36.000000', '22', '82.60', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14921', '39', '2019-04-13 16:55:36.000000', '26', '71.70', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14922', '40', '2019-04-13 16:55:36.000000', '29', '89.90', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14923', '41', '2019-04-13 16:55:36.000000', '28', '74.00', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14924', '42', '2019-04-13 16:55:36.000000', '27', '77.00', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14925', '43', '2019-04-13 16:55:36.000000', '29', '84.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14926', '44', '2019-04-13 16:55:36.000000', '26', '84.70', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14927', '45', '2019-04-13 16:55:36.000000', '27', '86.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14928', '46', '2019-04-13 16:55:36.000000', '27', '72.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14929', '47', '2019-04-13 16:55:36.000000', '26', '82.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14930', '48', '2019-04-13 16:55:36.000000', '23', '79.80', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14931', '49', '2019-04-13 16:55:36.000000', '25', '72.60', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14932', '51', '2019-04-13 16:55:36.000000', '24', '86.60', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14933', '50', '2019-04-13 16:55:36.000000', '22', '94.00', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14934', '52', '2019-04-13 16:55:36.000000', '25', '78.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14935', '53', '2019-04-13 16:55:36.000000', '25', '86.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14936', '54', '2019-04-13 16:55:36.000000', '24', '79.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14937', '56', '2019-04-13 16:55:36.000000', '31', '93.70', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14938', '58', '2019-04-13 16:55:36.000000', '27', '77.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14939', '55', '2019-04-13 16:55:36.000000', '27', '85.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14940', '59', '2019-04-13 16:55:36.000000', '28', '90.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14941', '57', '2019-04-13 16:55:36.000000', '24', '75.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14942', '60', '2019-04-13 16:55:36.000000', '26', '87.10', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14943', '61', '2019-04-13 16:55:36.000000', '27', '91.70', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14944', '62', '2019-04-13 16:55:36.000000', '23', '81.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14945', '63', '2019-04-13 16:55:36.000000', '29', '78.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14946', '64', '2019-04-13 16:55:36.000000', '32', '90.10', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14947', '65', '2019-04-13 16:55:36.000000', '22', '82.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14948', '66', '2019-04-13 16:55:36.000000', '27', '80.30', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14949', '68', '2019-04-13 16:55:36.000000', '28', '82.60', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14950', '70', '2019-04-13 16:55:36.000000', '27', '83.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14951', '72', '2019-04-13 16:55:36.000000', '23', '83.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14952', '67', '2019-04-13 16:55:36.000000', '31', '79.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14953', '71', '2019-04-13 16:55:36.000000', '22', '79.70', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14954', '69', '2019-04-13 16:55:36.000000', '24', '91.90', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14955', '73', '2019-04-13 16:55:36.000000', '29', '91.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14956', '75', '2019-04-13 16:55:36.000000', '25', '84.70', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14957', '76', '2019-04-13 16:55:36.000000', '28', '93.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14958', '78', '2019-04-13 16:55:36.000000', '22', '88.20', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14959', '80', '2019-04-13 16:55:36.000000', '27', '83.50', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14960', '82', '2019-04-13 16:55:36.000000', '32', '78.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14961', '84', '2019-04-13 16:55:36.000000', '25', '82.00', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14962', '77', '2019-04-13 16:55:36.000000', '29', '88.70', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14963', '81', '2019-04-13 16:55:36.000000', '32', '84.60', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14964', '79', '2019-04-13 16:55:36.000000', '28', '87.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14965', '83', '2019-04-13 16:55:36.000000', '25', '77.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14966', '74', '2019-04-13 16:55:36.000000', '26', '94.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14967', '87', '2019-04-13 16:55:36.000000', '29', '91.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14968', '89', '2019-04-13 16:55:36.000000', '31', '72.00', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14969', '86', '2019-04-13 16:55:36.000000', '26', '91.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14970', '90', '2019-04-13 16:55:36.000000', '28', '87.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14971', '88', '2019-04-13 16:55:36.000000', '29', '80.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14972', '85', '2019-04-13 16:55:36.000000', '28', '73.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14973', '92', '2019-04-13 16:55:36.000000', '28', '84.10', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14974', '93', '2019-04-13 16:55:36.000000', '24', '70.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14975', '94', '2019-04-13 16:55:36.000000', '25', '88.00', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14976', '95', '2019-04-13 16:55:36.000000', '30', '82.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14977', '96', '2019-04-13 16:55:36.000000', '27', '83.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14978', '97', '2019-04-13 16:55:36.000000', '30', '86.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14979', '98', '2019-04-13 16:55:36.000000', '32', '94.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14980', '99', '2019-04-13 16:55:36.000000', '26', '73.20', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14981', '100', '2019-04-13 16:55:36.000000', '26', '79.10', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('14982', '1', '2019-04-13 16:56:36.000000', '27', '74.40', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14983', '2', '2019-04-13 16:56:36.000000', '29', '76.70', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14984', '3', '2019-04-13 16:56:36.000000', '23', '91.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14985', '4', '2019-04-13 16:56:36.000000', '26', '80.70', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14986', '5', '2019-04-13 16:56:36.000000', '25', '77.90', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14987', '6', '2019-04-13 16:56:36.000000', '30', '80.20', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14988', '7', '2019-04-13 16:56:36.000000', '27', '82.70', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14989', '8', '2019-04-13 16:56:36.000000', '30', '76.70', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14990', '9', '2019-04-13 16:56:36.000000', '23', '71.90', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14991', '10', '2019-04-13 16:56:36.000000', '34', '69.70', '2', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14992', '12', '2019-04-13 16:56:36.000000', '23', '91.70', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14993', '13', '2019-04-13 16:56:36.000000', '24', '75.50', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14994', '14', '2019-04-13 16:56:36.000000', '24', '72.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14995', '15', '2019-04-13 16:56:36.000000', '28', '82.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14996', '16', '2019-04-13 16:56:36.000000', '25', '70.50', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14997', '17', '2019-04-13 16:56:36.000000', '25', '96.10', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14998', '18', '2019-04-13 16:56:36.000000', '27', '92.00', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('14999', '19', '2019-04-13 16:56:36.000000', '24', '70.90', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15000', '20', '2019-04-13 16:56:36.000000', '24', '86.10', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15001', '21', '2019-04-13 16:56:36.000000', '28', '88.20', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15002', '22', '2019-04-13 16:56:36.000000', '27', '82.90', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15003', '23', '2019-04-13 16:56:36.000000', '26', '71.50', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15004', '24', '2019-04-13 16:56:36.000000', '28', '77.00', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15005', '25', '2019-04-13 16:56:36.000000', '28', '79.30', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15006', '26', '2019-04-13 16:56:36.000000', '26', '92.60', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15007', '27', '2019-04-13 16:56:36.000000', '29', '85.70', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15008', '28', '2019-04-13 16:56:36.000000', '19', '88.70', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15009', '29', '2019-04-13 16:56:36.000000', '27', '89.50', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15010', '30', '2019-04-13 16:56:36.000000', '23', '79.20', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15011', '31', '2019-04-13 16:56:36.000000', '29', '79.60', '2', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15012', '32', '2019-04-13 16:56:36.000000', '25', '86.40', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15013', '33', '2019-04-13 16:56:36.000000', '25', '81.30', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15014', '34', '2019-04-13 16:56:36.000000', '29', '81.30', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15015', '35', '2019-04-13 16:56:36.000000', '31', '92.80', '2', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15016', '36', '2019-04-13 16:56:36.000000', '27', '82.20', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15017', '37', '2019-04-13 16:56:36.000000', '24', '86.00', '2', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15018', '39', '2019-04-13 16:56:36.000000', '28', '67.40', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15019', '41', '2019-04-13 16:56:36.000000', '27', '70.50', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15020', '40', '2019-04-13 16:56:36.000000', '29', '90.00', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15021', '42', '2019-04-13 16:56:36.000000', '27', '74.70', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15022', '45', '2019-04-13 16:56:36.000000', '28', '83.80', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15023', '46', '2019-04-13 16:56:36.000000', '27', '72.10', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15024', '47', '2019-04-13 16:56:36.000000', '27', '80.10', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15025', '48', '2019-04-13 16:56:36.000000', '23', '78.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15026', '49', '2019-04-13 16:56:36.000000', '26', '76.00', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15027', '51', '2019-04-13 16:56:36.000000', '25', '84.30', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15028', '50', '2019-04-13 16:56:36.000000', '23', '98.30', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15029', '52', '2019-04-13 16:56:36.000000', '24', '74.60', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15030', '43', '2019-04-13 16:56:36.000000', '28', '81.80', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15031', '44', '2019-04-13 16:56:36.000000', '25', '84.60', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15032', '53', '2019-04-13 16:56:36.000000', '24', '82.30', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15033', '54', '2019-04-13 16:56:36.000000', '26', '77.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15034', '56', '2019-04-13 16:56:36.000000', '31', '90.10', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15035', '58', '2019-04-13 16:56:36.000000', '26', '81.50', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15036', '55', '2019-04-13 16:56:36.000000', '27', '87.10', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15037', '59', '2019-04-13 16:56:36.000000', '28', '91.00', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15038', '57', '2019-04-13 16:56:36.000000', '24', '71.90', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15039', '60', '2019-04-13 16:56:36.000000', '25', '87.20', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15040', '61', '2019-04-13 16:56:36.000000', '27', '87.70', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15041', '62', '2019-04-13 16:56:36.000000', '23', '85.60', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15042', '63', '2019-04-13 16:56:36.000000', '30', '74.00', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15043', '64', '2019-04-13 16:56:36.000000', '32', '89.30', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15044', '65', '2019-04-13 16:56:36.000000', '24', '78.80', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15045', '66', '2019-04-13 16:56:36.000000', '26', '75.60', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15046', '70', '2019-04-13 16:56:36.000000', '26', '82.00', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15047', '67', '2019-04-13 16:56:36.000000', '33', '78.90', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15048', '69', '2019-04-13 16:56:36.000000', '23', '94.10', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15049', '68', '2019-04-13 16:56:36.000000', '29', '78.20', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15050', '71', '2019-04-13 16:56:36.000000', '22', '83.20', '2', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15051', '72', '2019-04-13 16:56:36.000000', '24', '84.20', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15052', '73', '2019-04-13 16:56:36.000000', '31', '95.50', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15053', '76', '2019-04-13 16:56:36.000000', '29', '96.60', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15054', '78', '2019-04-13 16:56:36.000000', '23', '89.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15055', '84', '2019-04-13 16:56:36.000000', '23', '81.40', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15056', '81', '2019-04-13 16:56:36.000000', '30', '88.40', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15057', '80', '2019-04-13 16:56:36.000000', '26', '87.70', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15058', '83', '2019-04-13 16:56:36.000000', '25', '75.90', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15059', '77', '2019-04-13 16:56:36.000000', '29', '91.90', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15060', '89', '2019-04-13 16:56:36.000000', '30', '67.80', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15061', '90', '2019-04-13 16:56:36.000000', '29', '83.30', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15062', '74', '2019-04-13 16:56:36.000000', '25', '93.10', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15063', '85', '2019-04-13 16:56:36.000000', '30', '75.60', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15064', '82', '2019-04-13 16:56:36.000000', '30', '75.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15065', '75', '2019-04-13 16:56:36.000000', '25', '80.50', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15066', '88', '2019-04-13 16:56:36.000000', '31', '83.10', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15067', '86', '2019-04-13 16:56:36.000000', '25', '92.20', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15068', '79', '2019-04-13 16:56:36.000000', '30', '91.20', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15069', '87', '2019-04-13 16:56:36.000000', '29', '96.20', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15070', '92', '2019-04-13 16:56:36.000000', '30', '82.50', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15071', '94', '2019-04-13 16:56:36.000000', '26', '86.20', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15072', '95', '2019-04-13 16:56:36.000000', '32', '79.50', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15073', '93', '2019-04-13 16:56:36.000000', '26', '70.60', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15074', '97', '2019-04-13 16:56:36.000000', '32', '85.30', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15075', '98', '2019-04-13 16:56:36.000000', '32', '98.80', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15076', '96', '2019-04-13 16:56:36.000000', '29', '83.70', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15077', '99', '2019-04-13 16:56:36.000000', '25', '75.80', '2', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15078', '100', '2019-04-13 16:56:36.000000', '27', '82.30', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `manage_eqstate` VALUES ('15079', '1', '2019-04-13 16:57:36.000000', '29', '74.40', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15080', '2', '2019-04-13 16:57:36.000000', '30', '72.60', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15081', '3', '2019-04-13 16:57:36.000000', '25', '88.80', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15082', '4', '2019-04-13 16:57:36.000000', '27', '77.20', '6', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15083', '5', '2019-04-13 16:57:36.000000', '25', '78.10', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15084', '6', '2019-04-13 16:57:36.000000', '30', '75.50', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15085', '7', '2019-04-13 16:57:36.000000', '27', '86.40', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15086', '8', '2019-04-13 16:57:36.000000', '32', '74.50', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15087', '9', '2019-04-13 16:57:36.000000', '25', '67.30', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15088', '10', '2019-04-13 16:57:36.000000', '34', '66.50', '1', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15089', '12', '2019-04-13 16:57:36.000000', '25', '95.80', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15090', '13', '2019-04-13 16:57:36.000000', '24', '72.20', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15091', '14', '2019-04-13 16:57:36.000000', '25', '72.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15092', '15', '2019-04-13 16:57:36.000000', '27', '78.70', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15093', '16', '2019-04-13 16:57:36.000000', '26', '75.30', '6', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15094', '17', '2019-04-13 16:57:36.000000', '26', '94.80', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15095', '18', '2019-04-13 16:57:36.000000', '26', '95.60', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15096', '19', '2019-04-13 16:57:36.000000', '23', '68.40', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15097', '20', '2019-04-13 16:57:36.000000', '23', '87.20', '7', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15098', '21', '2019-04-13 16:57:36.000000', '29', '90.80', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15099', '22', '2019-04-13 16:57:36.000000', '25', '84.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15100', '23', '2019-04-13 16:57:36.000000', '25', '74.20', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15101', '24', '2019-04-13 16:57:36.000000', '28', '75.40', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15102', '25', '2019-04-13 16:57:36.000000', '30', '77.70', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15103', '26', '2019-04-13 16:57:36.000000', '25', '94.80', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15104', '27', '2019-04-13 16:57:36.000000', '30', '90.00', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15105', '28', '2019-04-13 16:57:36.000000', '17', '93.60', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15106', '29', '2019-04-13 16:57:36.000000', '27', '92.20', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15107', '30', '2019-04-13 16:57:36.000000', '24', '82.00', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15108', '31', '2019-04-13 16:57:36.000000', '31', '81.90', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15109', '32', '2019-04-13 16:57:36.000000', '26', '85.20', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15110', '33', '2019-04-13 16:57:36.000000', '25', '78.30', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15111', '34', '2019-04-13 16:57:36.000000', '30', '81.10', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15112', '35', '2019-04-13 16:57:36.000000', '32', '97.20', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15113', '36', '2019-04-13 16:57:36.000000', '29', '78.80', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15114', '37', '2019-04-13 16:57:36.000000', '25', '86.70', '1', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15115', '39', '2019-04-13 16:57:36.000000', '27', '64.00', '6', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15116', '41', '2019-04-13 16:57:36.000000', '28', '67.40', '6', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15117', '40', '2019-04-13 16:57:36.000000', '30', '85.60', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15118', '42', '2019-04-13 16:57:36.000000', '29', '76.90', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15119', '45', '2019-04-13 16:57:36.000000', '29', '81.20', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15120', '84', '2019-04-13 16:57:36.000000', '23', '79.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15121', '68', '2019-04-13 16:57:36.000000', '28', '73.60', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15122', '51', '2019-04-13 16:57:36.000000', '24', '82.30', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15123', '43', '2019-04-13 16:57:36.000000', '27', '85.20', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15124', '72', '2019-04-13 16:57:36.000000', '23', '84.40', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15125', '70', '2019-04-13 16:57:36.000000', '27', '77.30', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15126', '69', '2019-04-13 16:57:36.000000', '23', '93.20', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15127', '78', '2019-04-13 16:57:36.000000', '23', '90.60', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15128', '55', '2019-04-13 16:57:36.000000', '25', '83.00', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15129', '57', '2019-04-13 16:57:36.000000', '23', '69.70', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15130', '58', '2019-04-13 16:57:36.000000', '24', '86.10', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15131', '53', '2019-04-13 16:57:36.000000', '23', '77.70', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15132', '62', '2019-04-13 16:57:36.000000', '25', '84.70', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15133', '59', '2019-04-13 16:57:36.000000', '27', '91.00', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15134', '64', '2019-04-13 16:57:36.000000', '31', '87.50', '7', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15135', '66', '2019-04-13 16:57:36.000000', '24', '78.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15136', '65', '2019-04-13 16:57:36.000000', '25', '77.70', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15137', '56', '2019-04-13 16:57:36.000000', '30', '85.30', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15138', '47', '2019-04-13 16:57:36.000000', '26', '75.60', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15139', '46', '2019-04-13 16:57:36.000000', '26', '68.10', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15140', '71', '2019-04-13 16:57:36.000000', '22', '78.60', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15141', '63', '2019-04-13 16:57:36.000000', '30', '70.30', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15142', '73', '2019-04-13 16:57:36.000000', '32', '97.80', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15143', '54', '2019-04-13 16:57:36.000000', '27', '78.10', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15144', '81', '2019-04-13 16:57:36.000000', '31', '91.40', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15145', '49', '2019-04-13 16:57:36.000000', '26', '73.50', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15146', '67', '2019-04-13 16:57:36.000000', '33', '80.80', '6', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15147', '52', '2019-04-13 16:57:36.000000', '23', '70.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15148', '80', '2019-04-13 16:57:36.000000', '24', '90.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15149', '44', '2019-04-13 16:57:36.000000', '24', '86.90', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15150', '48', '2019-04-13 16:57:36.000000', '22', '81.10', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15151', '50', '2019-04-13 16:57:36.000000', '22', '100.10', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15152', '61', '2019-04-13 16:57:36.000000', '25', '83.60', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15153', '76', '2019-04-13 16:57:36.000000', '31', '93.50', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15154', '60', '2019-04-13 16:57:36.000000', '27', '82.70', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15155', '83', '2019-04-13 16:57:36.000000', '27', '74.90', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15156', '90', '2019-04-13 16:57:36.000000', '29', '79.10', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15157', '77', '2019-04-13 16:57:36.000000', '29', '93.30', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15158', '89', '2019-04-13 16:57:36.000000', '29', '72.10', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15159', '82', '2019-04-13 16:57:36.000000', '31', '77.60', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15160', '86', '2019-04-13 16:57:36.000000', '25', '94.30', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15161', '87', '2019-04-13 16:57:36.000000', '30', '98.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15162', '95', '2019-04-13 16:57:36.000000', '31', '77.30', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15163', '74', '2019-04-13 16:57:36.000000', '26', '89.00', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15164', '85', '2019-04-13 16:57:36.000000', '30', '77.30', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15165', '79', '2019-04-13 16:57:36.000000', '32', '87.60', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15166', '93', '2019-04-13 16:57:36.000000', '28', '67.60', '6', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15167', '94', '2019-04-13 16:57:36.000000', '25', '83.00', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15168', '88', '2019-04-13 16:57:36.000000', '30', '85.40', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15169', '75', '2019-04-13 16:57:36.000000', '25', '80.90', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15170', '92', '2019-04-13 16:57:36.000000', '29', '87.00', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15171', '97', '2019-04-13 16:57:36.000000', '32', '83.50', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15172', '98', '2019-04-13 16:57:36.000000', '33', '98.30', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15173', '96', '2019-04-13 16:57:36.000000', '29', '85.30', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15174', '99', '2019-04-13 16:57:36.000000', '26', '76.90', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15175', '100', '2019-04-13 16:57:36.000000', '26', '78.30', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `manage_eqstate` VALUES ('15176', '8', '2019-04-13 16:58:36.000000', '34', '70.40', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15177', '7', '2019-04-13 16:58:36.000000', '28', '87.20', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15178', '4', '2019-04-13 16:58:36.000000', '27', '72.20', '7', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15179', '3', '2019-04-13 16:58:36.000000', '24', '84.90', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15180', '6', '2019-04-13 16:58:36.000000', '28', '74.20', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15181', '1', '2019-04-13 16:58:36.000000', '30', '73.30', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15182', '5', '2019-04-13 16:58:36.000000', '24', '79.40', '6', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15183', '15', '2019-04-13 16:58:36.000000', '26', '76.90', '6', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15184', '14', '2019-04-13 16:58:36.000000', '25', '70.00', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15185', '12', '2019-04-13 16:58:36.000000', '24', '98.70', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15186', '16', '2019-04-13 16:58:36.000000', '26', '75.00', '7', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15187', '10', '2019-04-13 16:58:36.000000', '35', '64.60', '0', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15188', '13', '2019-04-13 16:58:36.000000', '25', '74.90', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15189', '9', '2019-04-13 16:58:36.000000', '26', '69.20', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15190', '2', '2019-04-13 16:58:36.000000', '29', '69.60', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15191', '18', '2019-04-13 16:58:36.000000', '27', '97.20', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15192', '19', '2019-04-13 16:58:36.000000', '21', '72.50', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15193', '20', '2019-04-13 16:58:36.000000', '24', '88.50', '7', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15194', '21', '2019-04-13 16:58:36.000000', '30', '93.40', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15195', '17', '2019-04-13 16:58:36.000000', '27', '93.70', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15196', '23', '2019-04-13 16:58:36.000000', '25', '74.60', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15197', '24', '2019-04-13 16:58:36.000000', '27', '79.10', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15198', '26', '2019-04-13 16:58:36.000000', '23', '91.20', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15199', '27', '2019-04-13 16:58:36.000000', '31', '89.00', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15200', '28', '2019-04-13 16:58:36.000000', '17', '92.10', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15201', '29', '2019-04-13 16:58:36.000000', '28', '93.00', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15202', '30', '2019-04-13 16:58:36.000000', '25', '77.70', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15203', '31', '2019-04-13 16:58:36.000000', '30', '77.10', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15204', '33', '2019-04-13 16:58:36.000000', '25', '75.00', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15205', '34', '2019-04-13 16:58:36.000000', '28', '78.80', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15206', '35', '2019-04-13 16:58:36.000000', '32', '95.10', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15207', '25', '2019-04-13 16:58:36.000000', '31', '73.80', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15208', '32', '2019-04-13 16:58:36.000000', '27', '85.60', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15209', '22', '2019-04-13 16:58:36.000000', '24', '89.70', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15210', '36', '2019-04-13 16:58:36.000000', '30', '79.00', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15211', '37', '2019-04-13 16:58:36.000000', '24', '86.20', '0', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15212', '39', '2019-04-13 16:58:36.000000', '27', '59.90', '6', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15213', '41', '2019-04-13 16:58:36.000000', '27', '66.90', '6', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15214', '40', '2019-04-13 16:58:36.000000', '29', '90.10', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15215', '43', '2019-04-13 16:58:36.000000', '28', '82.00', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15216', '68', '2019-04-13 16:58:36.000000', '27', '74.70', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15217', '51', '2019-04-13 16:58:36.000000', '24', '87.20', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15218', '45', '2019-04-13 16:58:36.000000', '28', '76.70', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15219', '72', '2019-04-13 16:58:36.000000', '23', '80.30', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15220', '42', '2019-04-13 16:58:36.000000', '29', '74.40', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15221', '84', '2019-04-13 16:58:36.000000', '22', '76.00', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15222', '69', '2019-04-13 16:58:36.000000', '25', '91.60', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15223', '78', '2019-04-13 16:58:36.000000', '21', '90.80', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15224', '57', '2019-04-13 16:58:36.000000', '21', '71.80', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15225', '53', '2019-04-13 16:58:36.000000', '25', '74.10', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15226', '56', '2019-04-13 16:58:36.000000', '29', '88.30', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15227', '71', '2019-04-13 16:58:36.000000', '21', '75.90', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15228', '73', '2019-04-13 16:58:36.000000', '31', '95.20', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15229', '46', '2019-04-13 16:58:36.000000', '27', '64.70', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15230', '81', '2019-04-13 16:58:36.000000', '32', '96.20', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15231', '49', '2019-04-13 16:58:36.000000', '27', '73.70', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15232', '64', '2019-04-13 16:58:36.000000', '30', '87.40', '7', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15233', '66', '2019-04-13 16:58:36.000000', '22', '79.60', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15234', '58', '2019-04-13 16:58:36.000000', '25', '82.60', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15235', '47', '2019-04-13 16:58:36.000000', '25', '75.90', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15236', '54', '2019-04-13 16:58:36.000000', '26', '76.10', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15237', '65', '2019-04-13 16:58:36.000000', '24', '79.50', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15238', '55', '2019-04-13 16:58:36.000000', '27', '81.70', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15239', '62', '2019-04-13 16:58:36.000000', '24', '89.00', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15240', '63', '2019-04-13 16:58:36.000000', '28', '67.80', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15241', '59', '2019-04-13 16:58:36.000000', '27', '88.90', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15242', '70', '2019-04-13 16:58:36.000000', '27', '75.40', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15243', '67', '2019-04-13 16:58:36.000000', '31', '84.30', '6', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15244', '52', '2019-04-13 16:58:36.000000', '21', '70.20', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15245', '80', '2019-04-13 16:58:36.000000', '23', '88.70', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15246', '44', '2019-04-13 16:58:36.000000', '22', '85.50', '6', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15247', '50', '2019-04-13 16:58:36.000000', '20', '96.00', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15248', '61', '2019-04-13 16:58:36.000000', '24', '87.00', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15249', '48', '2019-04-13 16:58:36.000000', '21', '83.30', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15250', '76', '2019-04-13 16:58:36.000000', '29', '93.50', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15251', '83', '2019-04-13 16:58:36.000000', '27', '76.00', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15252', '60', '2019-04-13 16:58:36.000000', '28', '84.80', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15253', '86', '2019-04-13 16:58:36.000000', '26', '96.40', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15254', '87', '2019-04-13 16:58:36.000000', '30', '95.60', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15255', '74', '2019-04-13 16:58:36.000000', '27', '87.90', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15256', '93', '2019-04-13 16:58:36.000000', '28', '63.70', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15257', '88', '2019-04-13 16:58:36.000000', '30', '87.70', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15258', '85', '2019-04-13 16:58:36.000000', '30', '81.70', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15259', '75', '2019-04-13 16:58:36.000000', '26', '84.80', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15260', '79', '2019-04-13 16:58:36.000000', '33', '90.10', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15261', '95', '2019-04-13 16:58:36.000000', '31', '81.90', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15262', '94', '2019-04-13 16:58:36.000000', '25', '79.60', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15263', '90', '2019-04-13 16:58:36.000000', '27', '83.20', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15264', '82', '2019-04-13 16:58:36.000000', '33', '76.20', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15265', '77', '2019-04-13 16:58:36.000000', '30', '93.10', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15266', '92', '2019-04-13 16:58:36.000000', '28', '91.60', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15267', '89', '2019-04-13 16:58:36.000000', '27', '73.50', '1', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15268', '98', '2019-04-13 16:58:36.000000', '33', '93.90', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15269', '96', '2019-04-13 16:58:36.000000', '28', '85.10', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15270', '97', '2019-04-13 16:58:36.000000', '32', '80.30', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15271', '100', '2019-04-13 16:58:36.000000', '25', '74.70', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15272', '99', '2019-04-13 16:58:36.000000', '28', '74.80', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `manage_eqstate` VALUES ('15273', '1', '2019-04-14 14:45:41.000000', '25', '91.84', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15274', '2', '2019-04-14 14:45:41.000000', '27', '87.45', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15275', '3', '2019-04-14 14:45:41.000000', '28', '86.81', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15276', '4', '2019-04-14 14:45:41.000000', '30', '73.61', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15277', '5', '2019-04-14 14:45:41.000000', '28', '73.85', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15278', '6', '2019-04-14 14:45:41.000000', '25', '89.50', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15279', '7', '2019-04-14 14:45:41.000000', '29', '79.32', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15280', '8', '2019-04-14 14:45:41.000000', '25', '74.76', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15281', '9', '2019-04-14 14:45:41.000000', '28', '74.54', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15282', '10', '2019-04-14 14:45:41.000000', '24', '85.53', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15283', '12', '2019-04-14 14:45:41.000000', '25', '90.23', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15284', '13', '2019-04-14 14:45:41.000000', '26', '92.50', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15285', '14', '2019-04-14 14:45:41.000000', '26', '90.38', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15286', '15', '2019-04-14 14:45:41.000000', '25', '81.39', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15287', '16', '2019-04-14 14:45:41.000000', '30', '86.46', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15288', '17', '2019-04-14 14:45:41.000000', '27', '86.61', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15289', '18', '2019-04-14 14:45:41.000000', '28', '91.60', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15290', '19', '2019-04-14 14:45:41.000000', '29', '92.03', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15291', '20', '2019-04-14 14:45:41.000000', '25', '85.13', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15292', '21', '2019-04-14 14:45:41.000000', '30', '79.18', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15293', '22', '2019-04-14 14:45:41.000000', '26', '79.21', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15294', '23', '2019-04-14 14:45:41.000000', '26', '83.03', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15295', '24', '2019-04-14 14:45:41.000000', '28', '83.62', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15296', '25', '2019-04-14 14:45:41.000000', '24', '76.05', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15297', '26', '2019-04-14 14:45:41.000000', '26', '76.15', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15298', '27', '2019-04-14 14:45:41.000000', '25', '76.59', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15299', '28', '2019-04-14 14:45:41.000000', '26', '73.95', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15300', '29', '2019-04-14 14:45:41.000000', '29', '74.14', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15301', '30', '2019-04-14 14:45:41.000000', '30', '75.74', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15302', '31', '2019-04-14 14:45:41.000000', '27', '74.72', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15303', '32', '2019-04-14 14:45:41.000000', '28', '79.86', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15304', '33', '2019-04-14 14:45:41.000000', '25', '73.03', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15305', '34', '2019-04-14 14:45:41.000000', '25', '90.98', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15306', '35', '2019-04-14 14:45:41.000000', '26', '79.31', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15307', '36', '2019-04-14 14:45:41.000000', '23', '75.27', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15308', '37', '2019-04-14 14:45:41.000000', '25', '80.24', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15309', '39', '2019-04-14 14:45:41.000000', '24', '80.53', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15310', '40', '2019-04-14 14:45:41.000000', '23', '89.04', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15311', '41', '2019-04-14 14:45:41.000000', '29', '86.98', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15312', '42', '2019-04-14 14:45:41.000000', '24', '80.69', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15313', '43', '2019-04-14 14:45:41.000000', '27', '76.44', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15314', '44', '2019-04-14 14:45:41.000000', '25', '81.14', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15315', '45', '2019-04-14 14:45:41.000000', '27', '83.92', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15316', '46', '2019-04-14 14:45:41.000000', '24', '81.25', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15317', '47', '2019-04-14 14:45:41.000000', '25', '77.14', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15318', '48', '2019-04-14 14:45:41.000000', '24', '78.97', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15319', '49', '2019-04-14 14:45:41.000000', '28', '85.97', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15320', '50', '2019-04-14 14:45:41.000000', '28', '75.07', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15321', '51', '2019-04-14 14:45:41.000000', '27', '73.24', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15322', '52', '2019-04-14 14:45:41.000000', '23', '86.70', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15323', '53', '2019-04-14 14:45:41.000000', '28', '89.62', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15324', '54', '2019-04-14 14:45:41.000000', '25', '81.76', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15325', '55', '2019-04-14 14:45:41.000000', '23', '76.95', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15326', '56', '2019-04-14 14:45:41.000000', '26', '86.46', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15327', '57', '2019-04-14 14:45:41.000000', '28', '88.24', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15328', '58', '2019-04-14 14:45:41.000000', '24', '77.03', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15329', '59', '2019-04-14 14:45:41.000000', '28', '91.41', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15330', '60', '2019-04-14 14:45:41.000000', '28', '81.91', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15331', '61', '2019-04-14 14:45:41.000000', '25', '78.02', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15332', '62', '2019-04-14 14:45:41.000000', '28', '83.87', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15333', '63', '2019-04-14 14:45:41.000000', '25', '81.97', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15334', '64', '2019-04-14 14:45:41.000000', '26', '89.17', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15335', '65', '2019-04-14 14:45:41.000000', '25', '85.20', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15336', '66', '2019-04-14 14:45:41.000000', '27', '86.49', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15337', '67', '2019-04-14 14:45:41.000000', '29', '91.60', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15338', '68', '2019-04-14 14:45:41.000000', '29', '87.92', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15339', '69', '2019-04-14 14:45:41.000000', '26', '82.49', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15340', '70', '2019-04-14 14:45:41.000000', '26', '87.84', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15341', '71', '2019-04-14 14:45:41.000000', '24', '90.33', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15342', '72', '2019-04-14 14:45:41.000000', '24', '88.59', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15343', '73', '2019-04-14 14:45:41.000000', '29', '92.92', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15344', '74', '2019-04-14 14:45:41.000000', '25', '75.91', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15345', '75', '2019-04-14 14:45:41.000000', '28', '85.36', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15346', '76', '2019-04-14 14:45:41.000000', '25', '92.54', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15347', '77', '2019-04-14 14:45:41.000000', '28', '80.51', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15348', '78', '2019-04-14 14:45:41.000000', '27', '82.55', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15349', '79', '2019-04-14 14:45:41.000000', '26', '74.18', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15350', '80', '2019-04-14 14:45:41.000000', '25', '81.21', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15351', '81', '2019-04-14 14:45:41.000000', '27', '86.20', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15352', '82', '2019-04-14 14:45:41.000000', '23', '75.75', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15353', '83', '2019-04-14 14:45:41.000000', '30', '73.01', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15354', '84', '2019-04-14 14:45:41.000000', '23', '79.88', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15355', '85', '2019-04-14 14:45:41.000000', '25', '78.74', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15356', '86', '2019-04-14 14:45:41.000000', '24', '81.62', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15357', '87', '2019-04-14 14:45:41.000000', '29', '91.14', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15358', '88', '2019-04-14 14:45:41.000000', '28', '79.45', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15359', '89', '2019-04-14 14:45:41.000000', '28', '76.50', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15360', '90', '2019-04-14 14:45:41.000000', '28', '84.73', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15361', '92', '2019-04-14 14:45:41.000000', '24', '87.19', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15362', '93', '2019-04-14 14:45:41.000000', '27', '89.96', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15363', '94', '2019-04-14 14:45:41.000000', '29', '76.07', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15364', '95', '2019-04-14 14:45:41.000000', '27', '80.19', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15365', '96', '2019-04-14 14:45:41.000000', '30', '82.42', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15366', '97', '2019-04-14 14:45:41.000000', '25', '78.54', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15367', '98', '2019-04-14 14:45:41.000000', '27', '80.40', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15368', '99', '2019-04-14 14:45:41.000000', '26', '79.46', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15369', '100', '2019-04-14 14:45:41.000000', '29', '82.30', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `manage_eqstate` VALUES ('15370', '1', '2019-04-14 14:46:41.000000', '24', '96.20', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15371', '2', '2019-04-14 14:46:41.000000', '27', '86.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15372', '3', '2019-04-14 14:46:41.000000', '26', '91.10', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15373', '4', '2019-04-14 14:46:41.000000', '28', '70.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15374', '5', '2019-04-14 14:46:41.000000', '27', '71.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15375', '6', '2019-04-14 14:46:41.000000', '27', '86.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15376', '7', '2019-04-14 14:46:41.000000', '29', '79.70', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15377', '8', '2019-04-14 14:46:41.000000', '24', '78.10', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15378', '12', '2019-04-14 14:46:41.000000', '26', '89.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15379', '24', '2019-04-14 14:46:41.000000', '26', '88.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15380', '25', '2019-04-14 14:46:41.000000', '25', '71.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15381', '14', '2019-04-14 14:46:41.000000', '27', '86.20', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15382', '16', '2019-04-14 14:46:41.000000', '29', '86.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15383', '9', '2019-04-14 14:46:41.000000', '29', '71.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15384', '15', '2019-04-14 14:46:41.000000', '25', '85.60', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15385', '17', '2019-04-14 14:46:41.000000', '25', '88.30', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15386', '26', '2019-04-14 14:46:41.000000', '26', '78.30', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15387', '27', '2019-04-14 14:46:41.000000', '24', '73.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15388', '13', '2019-04-14 14:46:41.000000', '26', '87.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15389', '10', '2019-04-14 14:46:41.000000', '24', '86.40', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15390', '23', '2019-04-14 14:46:41.000000', '24', '83.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15391', '22', '2019-04-14 14:46:41.000000', '28', '80.10', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15392', '21', '2019-04-14 14:46:41.000000', '31', '82.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15393', '20', '2019-04-14 14:46:41.000000', '25', '88.10', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15394', '28', '2019-04-14 14:46:41.000000', '26', '76.80', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15395', '29', '2019-04-14 14:46:41.000000', '30', '78.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15396', '30', '2019-04-14 14:46:41.000000', '32', '76.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15397', '19', '2019-04-14 14:46:41.000000', '28', '89.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15398', '18', '2019-04-14 14:46:41.000000', '29', '96.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15399', '31', '2019-04-14 14:46:41.000000', '26', '74.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15400', '32', '2019-04-14 14:46:41.000000', '28', '81.50', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15401', '42', '2019-04-14 14:46:41.000000', '25', '77.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15402', '37', '2019-04-14 14:46:41.000000', '25', '77.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15403', '36', '2019-04-14 14:46:41.000000', '22', '70.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15404', '40', '2019-04-14 14:46:41.000000', '25', '87.00', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15405', '33', '2019-04-14 14:46:41.000000', '24', '73.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15406', '45', '2019-04-14 14:46:41.000000', '28', '85.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15407', '46', '2019-04-14 14:46:41.000000', '26', '85.40', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15408', '44', '2019-04-14 14:46:41.000000', '23', '79.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15409', '41', '2019-04-14 14:46:41.000000', '27', '82.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15410', '43', '2019-04-14 14:46:41.000000', '26', '76.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15411', '35', '2019-04-14 14:46:41.000000', '27', '81.80', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15412', '34', '2019-04-14 14:46:41.000000', '26', '93.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15413', '39', '2019-04-14 14:46:41.000000', '25', '77.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15414', '48', '2019-04-14 14:46:41.000000', '25', '82.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15415', '56', '2019-04-14 14:46:41.000000', '27', '89.40', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15416', '49', '2019-04-14 14:46:41.000000', '30', '81.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15417', '54', '2019-04-14 14:46:41.000000', '26', '80.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15418', '59', '2019-04-14 14:46:41.000000', '28', '96.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15419', '47', '2019-04-14 14:46:41.000000', '26', '76.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15420', '55', '2019-04-14 14:46:41.000000', '22', '81.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15421', '57', '2019-04-14 14:46:41.000000', '28', '85.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15422', '50', '2019-04-14 14:46:41.000000', '26', '79.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15423', '53', '2019-04-14 14:46:41.000000', '28', '90.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15424', '60', '2019-04-14 14:46:41.000000', '27', '77.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15425', '52', '2019-04-14 14:46:41.000000', '24', '86.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15426', '58', '2019-04-14 14:46:41.000000', '25', '81.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15427', '51', '2019-04-14 14:46:41.000000', '27', '70.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15428', '62', '2019-04-14 14:46:41.000000', '29', '86.00', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15429', '63', '2019-04-14 14:46:41.000000', '25', '85.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15430', '61', '2019-04-14 14:46:41.000000', '26', '77.60', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15431', '65', '2019-04-14 14:46:41.000000', '25', '87.00', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15432', '64', '2019-04-14 14:46:41.000000', '24', '91.60', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15433', '71', '2019-04-14 14:46:41.000000', '25', '86.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15434', '68', '2019-04-14 14:46:41.000000', '29', '84.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15435', '69', '2019-04-14 14:46:41.000000', '27', '82.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15436', '67', '2019-04-14 14:46:41.000000', '30', '87.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15437', '70', '2019-04-14 14:46:41.000000', '27', '89.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15438', '66', '2019-04-14 14:46:41.000000', '25', '85.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15439', '72', '2019-04-14 14:46:41.000000', '23', '92.20', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15440', '73', '2019-04-14 14:46:41.000000', '28', '97.20', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15441', '74', '2019-04-14 14:46:41.000000', '24', '77.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15442', '75', '2019-04-14 14:46:41.000000', '27', '85.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15443', '77', '2019-04-14 14:46:41.000000', '30', '77.60', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15444', '79', '2019-04-14 14:46:41.000000', '26', '70.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15445', '81', '2019-04-14 14:46:41.000000', '28', '83.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15446', '80', '2019-04-14 14:46:41.000000', '27', '81.50', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15447', '78', '2019-04-14 14:46:41.000000', '28', '80.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15448', '76', '2019-04-14 14:46:41.000000', '26', '87.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15449', '84', '2019-04-14 14:46:41.000000', '22', '78.00', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15450', '82', '2019-04-14 14:46:41.000000', '23', '75.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15451', '83', '2019-04-14 14:46:41.000000', '28', '74.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15452', '86', '2019-04-14 14:46:41.000000', '23', '79.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15453', '88', '2019-04-14 14:46:41.000000', '28', '75.60', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15454', '87', '2019-04-14 14:46:41.000000', '29', '89.30', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15455', '85', '2019-04-14 14:46:41.000000', '24', '75.90', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15456', '89', '2019-04-14 14:46:41.000000', '27', '75.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15457', '90', '2019-04-14 14:46:41.000000', '28', '79.80', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15458', '93', '2019-04-14 14:46:41.000000', '28', '92.40', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15459', '94', '2019-04-14 14:46:41.000000', '30', '80.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15460', '95', '2019-04-14 14:46:41.000000', '26', '80.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15461', '92', '2019-04-14 14:46:41.000000', '22', '83.50', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15462', '96', '2019-04-14 14:46:41.000000', '31', '82.90', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15463', '97', '2019-04-14 14:46:41.000000', '25', '78.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15464', '99', '2019-04-14 14:46:41.000000', '26', '83.30', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15465', '98', '2019-04-14 14:46:41.000000', '26', '82.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15466', '100', '2019-04-14 14:46:41.000000', '28', '79.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `manage_eqstate` VALUES ('15467', '100', '2019-04-14 14:45:41.000000', '29', '82.30', '4', '[1.0, 1.0, 1.0]', '0', '0.00');

-- ----------------------------
-- Table structure for manage_eqtype
-- ----------------------------
DROP TABLE IF EXISTS `manage_eqtype`;
CREATE TABLE `manage_eqtype` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `size` varchar(64) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `power` varchar(32) NOT NULL,
  `dissipation` int(11) NOT NULL,
  `material_buckets` int(11) NOT NULL,
  `water_proofing_grade` varchar(16) NOT NULL,
  `pipe_standard` varchar(16) NOT NULL,
  `inflow_pressue` varchar(16) NOT NULL,
  `work_temperature` varchar(16) NOT NULL,
  `screen_size` decimal(10,2) NOT NULL,
  `comm_interface` varchar(32) NOT NULL,
  `os` varchar(32) NOT NULL,
  `payment_cate` varchar(32) NOT NULL,
  `data_standard` varchar(32) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_eqtype
-- ----------------------------
INSERT INTO `manage_eqtype` VALUES ('1', 'ES4C', '700(H)*420(W)*450(D)mm', '60.00', 'AC220V/50HZ', '2700', '3', 'IPX1', 'G3/8', '0.5-7bar', '75', '14.00', 'USB,WIFI,4G', 'LINUX系统、Android系统', '微信、支付宝', 'EVA-DTS');

-- ----------------------------
-- Table structure for manage_eqwarning
-- ----------------------------
DROP TABLE IF EXISTS `manage_eqwarning`;
CREATE TABLE `manage_eqwarning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MACHINE_ID` int(11) DEFAULT NULL,
  `alter_msg` varchar(128) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_eqwarning
-- ----------------------------
INSERT INTO `manage_eqwarning` VALUES ('1', '1', '1 Machine have no recv msg', '2019-04-21 17:08:07');
INSERT INTO `manage_eqwarning` VALUES ('2', '2', '2 Machine have no recv msg', '2019-04-21 17:08:07');
INSERT INTO `manage_eqwarning` VALUES ('3', '3', '3 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('4', '4', '4 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('5', '5', '5 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('6', '6', '6 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('7', '7', '7 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('8', '8', '8 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('9', '9', '9 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('10', '10', '10 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('11', '12', '12 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('12', '13', '13 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('13', '14', '14 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('14', '15', '15 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('15', '16', '16 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('16', '17', '17 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('17', '18', '18 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('18', '19', '19 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('19', '20', '20 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('20', '21', '21 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('21', '22', '22 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('22', '23', '23 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('23', '24', '24 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('24', '25', '25 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('25', '26', '26 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('26', '27', '27 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('27', '28', '28 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('28', '29', '29 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('29', '30', '30 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('30', '31', '31 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('31', '32', '32 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('32', '33', '33 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('33', '34', '34 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('34', '35', '35 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('35', '36', '36 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('36', '37', '37 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('37', '39', '39 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('38', '40', '40 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('39', '41', '41 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('40', '42', '42 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('41', '43', '43 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('42', '44', '44 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('43', '45', '45 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('44', '46', '46 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('45', '47', '47 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('46', '48', '48 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('47', '49', '49 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('48', '50', '50 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('49', '51', '51 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('50', '52', '52 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('51', '53', '53 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('52', '54', '54 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('53', '55', '55 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('54', '56', '56 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('55', '57', '57 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('56', '58', '58 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('57', '59', '59 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('58', '60', '60 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('59', '61', '61 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('60', '62', '62 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('61', '63', '63 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('62', '64', '64 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('63', '65', '65 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('64', '66', '66 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('65', '67', '67 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('66', '68', '68 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('67', '69', '69 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('68', '70', '70 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('69', '71', '71 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('70', '72', '72 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('71', '73', '73 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('72', '74', '74 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('73', '75', '75 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('74', '76', '76 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('75', '77', '77 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('76', '78', '78 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('77', '79', '79 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('78', '80', '80 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('79', '81', '81 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('80', '82', '82 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('81', '83', '83 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('82', '84', '84 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('83', '85', '85 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('84', '86', '86 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('85', '87', '87 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('86', '88', '88 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('87', '89', '89 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('88', '90', '90 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('89', '92', '92 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('90', '93', '93 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('91', '94', '94 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('92', '95', '95 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('93', '96', '96 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('94', '97', '97 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('95', '98', '98 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('96', '99', '99 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `manage_eqwarning` VALUES ('97', '100', '100 Machine have no recv msg', '2019-04-21 17:08:08');

-- ----------------------------
-- Table structure for User_info_eq_info
-- ----------------------------
DROP TABLE IF EXISTS `User_info_eq_info`;
CREATE TABLE `User_info_eq_info` (
  `machine_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `mac_addr` varchar(64) NOT NULL,
  `addr` varchar(128) NOT NULL,
  `position` varchar(64) NOT NULL,
  `install_date` date NOT NULL,
  `install_emp_id` varchar(16) NOT NULL,
  `status` int(11) NOT NULL,
  `mantain_emp_id` varchar(16) NOT NULL,
  PRIMARY KEY (`machine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of User_info_eq_info
-- ----------------------------
INSERT INTO `User_info_eq_info` VALUES ('1', '1', '嘉熙业广场11楼1128_001', 'BC-EE-7B-5B-6B-0F', '嘉熙业广场11楼1128', '22.6290598194,114.0463683908', '2019-04-10', '梁胜云', '3', '林九峰');
INSERT INTO `User_info_eq_info` VALUES ('2', '1', '龙华广场8楼0802_001', 'BC-EE-7B-5B-6B-2F', '龙华广场8楼0802', '22.6609131320,114.0456618297', '2019-04-10', '郭洪山', '3', '林九峰');
INSERT INTO `User_info_eq_info` VALUES ('3', '1', '天汇大厦10楼1018_001', 'BC-EE-7B-5B-6B-3F', '天汇大厦10楼1018', '22.6490141267,114.0521801787', '2019-04-10', '张达', '3', '林九峰');

-- ----------------------------
-- Table structure for User_info_eq_state
-- ----------------------------
DROP TABLE IF EXISTS `User_info_eq_state`;
CREATE TABLE `User_info_eq_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `machine_id` int(11) NOT NULL,
  `recv_time` datetime(6) NOT NULL,
  `enviroment_temperature` varchar(16) NOT NULL,
  `boiler_temperature` varchar(16) NOT NULL,
  `boiler_pressue` varchar(16) NOT NULL,
  `material_remainder` varchar(16) NOT NULL,
  `orders_num` int(11) NOT NULL,
  `orders_amt` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15468 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of User_info_eq_state
-- ----------------------------
INSERT INTO `User_info_eq_state` VALUES ('14788', '1', '2019-04-13 16:54:36.000000', '25', '76.70', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14789', '2', '2019-04-13 16:54:36.000000', '27', '74.87', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14790', '3', '2019-04-13 16:54:36.000000', '23', '89.17', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14791', '4', '2019-04-13 16:54:36.000000', '26', '82.58', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14792', '5', '2019-04-13 16:54:36.000000', '26', '78.39', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14793', '6', '2019-04-13 16:54:36.000000', '27', '83.26', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14794', '7', '2019-04-13 16:54:36.000000', '29', '88.92', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14795', '8', '2019-04-13 16:54:36.000000', '29', '81.58', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14796', '9', '2019-04-13 16:54:36.000000', '24', '76.19', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14797', '10', '2019-04-13 16:54:36.000000', '30', '76.70', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14798', '12', '2019-04-13 16:54:36.000000', '24', '84.43', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14799', '13', '2019-04-13 16:54:36.000000', '24', '78.38', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14800', '14', '2019-04-13 16:54:36.000000', '23', '76.53', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14801', '15', '2019-04-13 16:54:36.000000', '29', '77.65', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14802', '16', '2019-04-13 16:54:36.000000', '25', '79.29', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14803', '17', '2019-04-13 16:54:36.000000', '24', '89.90', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14804', '18', '2019-04-13 16:54:36.000000', '23', '89.33', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14805', '19', '2019-04-13 16:54:36.000000', '24', '76.44', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14806', '20', '2019-04-13 16:54:36.000000', '26', '82.79', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14807', '21', '2019-04-13 16:54:36.000000', '27', '91.72', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14808', '22', '2019-04-13 16:54:36.000000', '26', '82.17', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14809', '23', '2019-04-13 16:54:36.000000', '27', '74.38', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14810', '24', '2019-04-13 16:54:36.000000', '28', '77.64', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14811', '25', '2019-04-13 16:54:36.000000', '29', '78.01', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14812', '26', '2019-04-13 16:54:36.000000', '25', '88.72', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14813', '27', '2019-04-13 16:54:36.000000', '27', '83.08', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14814', '28', '2019-04-13 16:54:36.000000', '23', '89.15', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14815', '29', '2019-04-13 16:54:36.000000', '28', '92.23', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14816', '30', '2019-04-13 16:54:36.000000', '24', '78.99', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14817', '31', '2019-04-13 16:54:36.000000', '27', '77.23', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14818', '32', '2019-04-13 16:54:36.000000', '28', '84.01', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14819', '33', '2019-04-13 16:54:36.000000', '26', '76.13', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14820', '34', '2019-04-13 16:54:36.000000', '26', '80.85', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14821', '35', '2019-04-13 16:54:36.000000', '29', '91.66', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14822', '36', '2019-04-13 16:54:36.000000', '28', '81.16', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14823', '37', '2019-04-13 16:54:36.000000', '23', '83.29', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14824', '39', '2019-04-13 16:54:36.000000', '27', '76.17', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14825', '40', '2019-04-13 16:54:36.000000', '28', '92.95', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14826', '41', '2019-04-13 16:54:36.000000', '28', '78.86', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14827', '42', '2019-04-13 16:54:36.000000', '26', '75.63', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14828', '43', '2019-04-13 16:54:36.000000', '29', '89.06', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14829', '44', '2019-04-13 16:54:36.000000', '26', '85.45', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14830', '45', '2019-04-13 16:54:36.000000', '28', '89.17', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14831', '46', '2019-04-13 16:54:36.000000', '26', '77.12', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14832', '47', '2019-04-13 16:54:36.000000', '27', '81.85', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14833', '48', '2019-04-13 16:54:36.000000', '25', '75.89', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14834', '49', '2019-04-13 16:54:36.000000', '24', '74.49', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14835', '50', '2019-04-13 16:54:36.000000', '23', '90.29', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14836', '51', '2019-04-13 16:54:36.000000', '24', '86.29', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14837', '52', '2019-04-13 16:54:36.000000', '23', '79.15', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14838', '53', '2019-04-13 16:54:36.000000', '24', '88.17', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14839', '54', '2019-04-13 16:54:36.000000', '23', '83.71', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14840', '55', '2019-04-13 16:54:36.000000', '29', '85.71', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14841', '56', '2019-04-13 16:54:36.000000', '30', '90.78', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14842', '57', '2019-04-13 16:54:36.000000', '23', '75.40', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14843', '58', '2019-04-13 16:54:36.000000', '28', '79.32', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14844', '59', '2019-04-13 16:54:36.000000', '29', '89.61', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14845', '60', '2019-04-13 16:54:36.000000', '25', '88.26', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14846', '61', '2019-04-13 16:54:36.000000', '26', '93.00', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14847', '62', '2019-04-13 16:54:36.000000', '24', '84.06', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14848', '63', '2019-04-13 16:54:36.000000', '28', '78.51', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14849', '64', '2019-04-13 16:54:36.000000', '30', '91.83', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14850', '65', '2019-04-13 16:54:36.000000', '23', '79.50', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14851', '66', '2019-04-13 16:54:36.000000', '26', '83.63', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14852', '67', '2019-04-13 16:54:36.000000', '30', '76.34', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14853', '68', '2019-04-13 16:54:36.000000', '26', '80.34', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14854', '69', '2019-04-13 16:54:36.000000', '25', '92.10', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14855', '70', '2019-04-13 16:54:36.000000', '28', '87.04', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14856', '71', '2019-04-13 16:54:36.000000', '23', '82.51', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14857', '72', '2019-04-13 16:54:36.000000', '24', '85.36', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14858', '73', '2019-04-13 16:54:36.000000', '29', '88.59', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14859', '74', '2019-04-13 16:54:36.000000', '27', '90.78', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14860', '75', '2019-04-13 16:54:36.000000', '24', '87.73', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14861', '76', '2019-04-13 16:54:36.000000', '29', '88.43', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14862', '77', '2019-04-13 16:54:36.000000', '29', '91.50', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14863', '78', '2019-04-13 16:54:36.000000', '24', '84.98', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14864', '79', '2019-04-13 16:54:36.000000', '27', '85.32', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14865', '80', '2019-04-13 16:54:36.000000', '28', '82.82', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14866', '81', '2019-04-13 16:54:36.000000', '30', '85.92', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14867', '82', '2019-04-13 16:54:36.000000', '30', '82.21', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14868', '83', '2019-04-13 16:54:36.000000', '27', '79.00', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14869', '84', '2019-04-13 16:54:36.000000', '24', '83.80', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14870', '85', '2019-04-13 16:54:36.000000', '28', '75.68', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14871', '86', '2019-04-13 16:54:36.000000', '27', '88.66', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14872', '87', '2019-04-13 16:54:36.000000', '30', '90.92', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14873', '88', '2019-04-13 16:54:36.000000', '30', '83.25', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14874', '89', '2019-04-13 16:54:36.000000', '30', '75.34', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14875', '90', '2019-04-13 16:54:36.000000', '27', '85.58', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14876', '92', '2019-04-13 16:54:36.000000', '28', '80.26', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14877', '93', '2019-04-13 16:54:36.000000', '23', '75.78', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14878', '94', '2019-04-13 16:54:36.000000', '27', '84.62', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14879', '95', '2019-04-13 16:54:36.000000', '28', '83.85', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14880', '96', '2019-04-13 16:54:36.000000', '26', '86.75', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14881', '97', '2019-04-13 16:54:36.000000', '28', '90.32', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14882', '98', '2019-04-13 16:54:36.000000', '30', '92.01', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14883', '99', '2019-04-13 16:54:36.000000', '27', '74.32', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14884', '100', '2019-04-13 16:54:36.000000', '24', '74.96', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('14885', '1', '2019-04-13 16:55:36.000000', '27', '72.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14886', '2', '2019-04-13 16:55:36.000000', '28', '77.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14887', '3', '2019-04-13 16:55:36.000000', '24', '93.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14888', '4', '2019-04-13 16:55:36.000000', '26', '78.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14889', '5', '2019-04-13 16:55:36.000000', '24', '81.10', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14890', '6', '2019-04-13 16:55:36.000000', '29', '79.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14891', '7', '2019-04-13 16:55:36.000000', '28', '84.00', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14892', '8', '2019-04-13 16:55:36.000000', '31', '77.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14893', '9', '2019-04-13 16:55:36.000000', '25', '72.50', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14894', '10', '2019-04-13 16:55:36.000000', '32', '73.20', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14895', '12', '2019-04-13 16:55:36.000000', '24', '87.40', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14896', '13', '2019-04-13 16:55:36.000000', '24', '75.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14897', '14', '2019-04-13 16:55:36.000000', '23', '76.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14898', '15', '2019-04-13 16:55:36.000000', '30', '80.30', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14899', '16', '2019-04-13 16:55:36.000000', '23', '74.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14900', '17', '2019-04-13 16:55:36.000000', '24', '92.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14901', '18', '2019-04-13 16:55:36.000000', '25', '89.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14902', '19', '2019-04-13 16:55:36.000000', '25', '74.90', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14903', '20', '2019-04-13 16:55:36.000000', '24', '87.70', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14904', '21', '2019-04-13 16:55:36.000000', '28', '89.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14905', '22', '2019-04-13 16:55:36.000000', '25', '82.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14906', '23', '2019-04-13 16:55:36.000000', '26', '71.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14907', '24', '2019-04-13 16:55:36.000000', '27', '78.60', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14908', '25', '2019-04-13 16:55:36.000000', '29', '81.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14909', '26', '2019-04-13 16:55:36.000000', '24', '91.40', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14910', '27', '2019-04-13 16:55:36.000000', '29', '86.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14911', '28', '2019-04-13 16:55:36.000000', '21', '85.00', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14912', '29', '2019-04-13 16:55:36.000000', '27', '94.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14913', '30', '2019-04-13 16:55:36.000000', '24', '81.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14914', '31', '2019-04-13 16:55:36.000000', '28', '78.20', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14915', '32', '2019-04-13 16:55:36.000000', '27', '83.50', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14916', '33', '2019-04-13 16:55:36.000000', '25', '79.60', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14917', '34', '2019-04-13 16:55:36.000000', '27', '85.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14918', '35', '2019-04-13 16:55:36.000000', '30', '92.50', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14919', '36', '2019-04-13 16:55:36.000000', '28', '82.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14920', '37', '2019-04-13 16:55:36.000000', '22', '82.60', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14921', '39', '2019-04-13 16:55:36.000000', '26', '71.70', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14922', '40', '2019-04-13 16:55:36.000000', '29', '89.90', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14923', '41', '2019-04-13 16:55:36.000000', '28', '74.00', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14924', '42', '2019-04-13 16:55:36.000000', '27', '77.00', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14925', '43', '2019-04-13 16:55:36.000000', '29', '84.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14926', '44', '2019-04-13 16:55:36.000000', '26', '84.70', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14927', '45', '2019-04-13 16:55:36.000000', '27', '86.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14928', '46', '2019-04-13 16:55:36.000000', '27', '72.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14929', '47', '2019-04-13 16:55:36.000000', '26', '82.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14930', '48', '2019-04-13 16:55:36.000000', '23', '79.80', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14931', '49', '2019-04-13 16:55:36.000000', '25', '72.60', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14932', '51', '2019-04-13 16:55:36.000000', '24', '86.60', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14933', '50', '2019-04-13 16:55:36.000000', '22', '94.00', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14934', '52', '2019-04-13 16:55:36.000000', '25', '78.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14935', '53', '2019-04-13 16:55:36.000000', '25', '86.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14936', '54', '2019-04-13 16:55:36.000000', '24', '79.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14937', '56', '2019-04-13 16:55:36.000000', '31', '93.70', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14938', '58', '2019-04-13 16:55:36.000000', '27', '77.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14939', '55', '2019-04-13 16:55:36.000000', '27', '85.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14940', '59', '2019-04-13 16:55:36.000000', '28', '90.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14941', '57', '2019-04-13 16:55:36.000000', '24', '75.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14942', '60', '2019-04-13 16:55:36.000000', '26', '87.10', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14943', '61', '2019-04-13 16:55:36.000000', '27', '91.70', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14944', '62', '2019-04-13 16:55:36.000000', '23', '81.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14945', '63', '2019-04-13 16:55:36.000000', '29', '78.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14946', '64', '2019-04-13 16:55:36.000000', '32', '90.10', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14947', '65', '2019-04-13 16:55:36.000000', '22', '82.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14948', '66', '2019-04-13 16:55:36.000000', '27', '80.30', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14949', '68', '2019-04-13 16:55:36.000000', '28', '82.60', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14950', '70', '2019-04-13 16:55:36.000000', '27', '83.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14951', '72', '2019-04-13 16:55:36.000000', '23', '83.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14952', '67', '2019-04-13 16:55:36.000000', '31', '79.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14953', '71', '2019-04-13 16:55:36.000000', '22', '79.70', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14954', '69', '2019-04-13 16:55:36.000000', '24', '91.90', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14955', '73', '2019-04-13 16:55:36.000000', '29', '91.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14956', '75', '2019-04-13 16:55:36.000000', '25', '84.70', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14957', '76', '2019-04-13 16:55:36.000000', '28', '93.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14958', '78', '2019-04-13 16:55:36.000000', '22', '88.20', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14959', '80', '2019-04-13 16:55:36.000000', '27', '83.50', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14960', '82', '2019-04-13 16:55:36.000000', '32', '78.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14961', '84', '2019-04-13 16:55:36.000000', '25', '82.00', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14962', '77', '2019-04-13 16:55:36.000000', '29', '88.70', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14963', '81', '2019-04-13 16:55:36.000000', '32', '84.60', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14964', '79', '2019-04-13 16:55:36.000000', '28', '87.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14965', '83', '2019-04-13 16:55:36.000000', '25', '77.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14966', '74', '2019-04-13 16:55:36.000000', '26', '94.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14967', '87', '2019-04-13 16:55:36.000000', '29', '91.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14968', '89', '2019-04-13 16:55:36.000000', '31', '72.00', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14969', '86', '2019-04-13 16:55:36.000000', '26', '91.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14970', '90', '2019-04-13 16:55:36.000000', '28', '87.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14971', '88', '2019-04-13 16:55:36.000000', '29', '80.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14972', '85', '2019-04-13 16:55:36.000000', '28', '73.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14973', '92', '2019-04-13 16:55:36.000000', '28', '84.10', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14974', '93', '2019-04-13 16:55:36.000000', '24', '70.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14975', '94', '2019-04-13 16:55:36.000000', '25', '88.00', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14976', '95', '2019-04-13 16:55:36.000000', '30', '82.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14977', '96', '2019-04-13 16:55:36.000000', '27', '83.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14978', '97', '2019-04-13 16:55:36.000000', '30', '86.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14979', '98', '2019-04-13 16:55:36.000000', '32', '94.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14980', '99', '2019-04-13 16:55:36.000000', '26', '73.20', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14981', '100', '2019-04-13 16:55:36.000000', '26', '79.10', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('14982', '1', '2019-04-13 16:56:36.000000', '27', '74.40', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14983', '2', '2019-04-13 16:56:36.000000', '29', '76.70', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14984', '3', '2019-04-13 16:56:36.000000', '23', '91.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14985', '4', '2019-04-13 16:56:36.000000', '26', '80.70', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14986', '5', '2019-04-13 16:56:36.000000', '25', '77.90', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14987', '6', '2019-04-13 16:56:36.000000', '30', '80.20', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14988', '7', '2019-04-13 16:56:36.000000', '27', '82.70', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14989', '8', '2019-04-13 16:56:36.000000', '30', '76.70', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14990', '9', '2019-04-13 16:56:36.000000', '23', '71.90', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14991', '10', '2019-04-13 16:56:36.000000', '34', '69.70', '2', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14992', '12', '2019-04-13 16:56:36.000000', '23', '91.70', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14993', '13', '2019-04-13 16:56:36.000000', '24', '75.50', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14994', '14', '2019-04-13 16:56:36.000000', '24', '72.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14995', '15', '2019-04-13 16:56:36.000000', '28', '82.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14996', '16', '2019-04-13 16:56:36.000000', '25', '70.50', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14997', '17', '2019-04-13 16:56:36.000000', '25', '96.10', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14998', '18', '2019-04-13 16:56:36.000000', '27', '92.00', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('14999', '19', '2019-04-13 16:56:36.000000', '24', '70.90', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15000', '20', '2019-04-13 16:56:36.000000', '24', '86.10', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15001', '21', '2019-04-13 16:56:36.000000', '28', '88.20', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15002', '22', '2019-04-13 16:56:36.000000', '27', '82.90', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15003', '23', '2019-04-13 16:56:36.000000', '26', '71.50', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15004', '24', '2019-04-13 16:56:36.000000', '28', '77.00', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15005', '25', '2019-04-13 16:56:36.000000', '28', '79.30', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15006', '26', '2019-04-13 16:56:36.000000', '26', '92.60', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15007', '27', '2019-04-13 16:56:36.000000', '29', '85.70', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15008', '28', '2019-04-13 16:56:36.000000', '19', '88.70', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15009', '29', '2019-04-13 16:56:36.000000', '27', '89.50', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15010', '30', '2019-04-13 16:56:36.000000', '23', '79.20', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15011', '31', '2019-04-13 16:56:36.000000', '29', '79.60', '2', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15012', '32', '2019-04-13 16:56:36.000000', '25', '86.40', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15013', '33', '2019-04-13 16:56:36.000000', '25', '81.30', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15014', '34', '2019-04-13 16:56:36.000000', '29', '81.30', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15015', '35', '2019-04-13 16:56:36.000000', '31', '92.80', '2', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15016', '36', '2019-04-13 16:56:36.000000', '27', '82.20', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15017', '37', '2019-04-13 16:56:36.000000', '24', '86.00', '2', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15018', '39', '2019-04-13 16:56:36.000000', '28', '67.40', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15019', '41', '2019-04-13 16:56:36.000000', '27', '70.50', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15020', '40', '2019-04-13 16:56:36.000000', '29', '90.00', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15021', '42', '2019-04-13 16:56:36.000000', '27', '74.70', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15022', '45', '2019-04-13 16:56:36.000000', '28', '83.80', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15023', '46', '2019-04-13 16:56:36.000000', '27', '72.10', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15024', '47', '2019-04-13 16:56:36.000000', '27', '80.10', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15025', '48', '2019-04-13 16:56:36.000000', '23', '78.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15026', '49', '2019-04-13 16:56:36.000000', '26', '76.00', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15027', '51', '2019-04-13 16:56:36.000000', '25', '84.30', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15028', '50', '2019-04-13 16:56:36.000000', '23', '98.30', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15029', '52', '2019-04-13 16:56:36.000000', '24', '74.60', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15030', '43', '2019-04-13 16:56:36.000000', '28', '81.80', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15031', '44', '2019-04-13 16:56:36.000000', '25', '84.60', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15032', '53', '2019-04-13 16:56:36.000000', '24', '82.30', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15033', '54', '2019-04-13 16:56:36.000000', '26', '77.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15034', '56', '2019-04-13 16:56:36.000000', '31', '90.10', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15035', '58', '2019-04-13 16:56:36.000000', '26', '81.50', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15036', '55', '2019-04-13 16:56:36.000000', '27', '87.10', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15037', '59', '2019-04-13 16:56:36.000000', '28', '91.00', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15038', '57', '2019-04-13 16:56:36.000000', '24', '71.90', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15039', '60', '2019-04-13 16:56:36.000000', '25', '87.20', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15040', '61', '2019-04-13 16:56:36.000000', '27', '87.70', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15041', '62', '2019-04-13 16:56:36.000000', '23', '85.60', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15042', '63', '2019-04-13 16:56:36.000000', '30', '74.00', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15043', '64', '2019-04-13 16:56:36.000000', '32', '89.30', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15044', '65', '2019-04-13 16:56:36.000000', '24', '78.80', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15045', '66', '2019-04-13 16:56:36.000000', '26', '75.60', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15046', '70', '2019-04-13 16:56:36.000000', '26', '82.00', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15047', '67', '2019-04-13 16:56:36.000000', '33', '78.90', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15048', '69', '2019-04-13 16:56:36.000000', '23', '94.10', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15049', '68', '2019-04-13 16:56:36.000000', '29', '78.20', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15050', '71', '2019-04-13 16:56:36.000000', '22', '83.20', '2', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15051', '72', '2019-04-13 16:56:36.000000', '24', '84.20', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15052', '73', '2019-04-13 16:56:36.000000', '31', '95.50', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15053', '76', '2019-04-13 16:56:36.000000', '29', '96.60', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15054', '78', '2019-04-13 16:56:36.000000', '23', '89.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15055', '84', '2019-04-13 16:56:36.000000', '23', '81.40', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15056', '81', '2019-04-13 16:56:36.000000', '30', '88.40', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15057', '80', '2019-04-13 16:56:36.000000', '26', '87.70', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15058', '83', '2019-04-13 16:56:36.000000', '25', '75.90', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15059', '77', '2019-04-13 16:56:36.000000', '29', '91.90', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15060', '89', '2019-04-13 16:56:36.000000', '30', '67.80', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15061', '90', '2019-04-13 16:56:36.000000', '29', '83.30', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15062', '74', '2019-04-13 16:56:36.000000', '25', '93.10', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15063', '85', '2019-04-13 16:56:36.000000', '30', '75.60', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15064', '82', '2019-04-13 16:56:36.000000', '30', '75.40', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15065', '75', '2019-04-13 16:56:36.000000', '25', '80.50', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15066', '88', '2019-04-13 16:56:36.000000', '31', '83.10', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15067', '86', '2019-04-13 16:56:36.000000', '25', '92.20', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15068', '79', '2019-04-13 16:56:36.000000', '30', '91.20', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15069', '87', '2019-04-13 16:56:36.000000', '29', '96.20', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15070', '92', '2019-04-13 16:56:36.000000', '30', '82.50', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15071', '94', '2019-04-13 16:56:36.000000', '26', '86.20', '5', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15072', '95', '2019-04-13 16:56:36.000000', '32', '79.50', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15073', '93', '2019-04-13 16:56:36.000000', '26', '70.60', '6', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15074', '97', '2019-04-13 16:56:36.000000', '32', '85.30', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15075', '98', '2019-04-13 16:56:36.000000', '32', '98.80', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15076', '96', '2019-04-13 16:56:36.000000', '29', '83.70', '4', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15077', '99', '2019-04-13 16:56:36.000000', '25', '75.80', '2', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15078', '100', '2019-04-13 16:56:36.000000', '27', '82.30', '3', '[0.8, 0.8, 0.8]', '2', '24.00');
INSERT INTO `User_info_eq_state` VALUES ('15079', '1', '2019-04-13 16:57:36.000000', '29', '74.40', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15080', '2', '2019-04-13 16:57:36.000000', '30', '72.60', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15081', '3', '2019-04-13 16:57:36.000000', '25', '88.80', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15082', '4', '2019-04-13 16:57:36.000000', '27', '77.20', '6', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15083', '5', '2019-04-13 16:57:36.000000', '25', '78.10', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15084', '6', '2019-04-13 16:57:36.000000', '30', '75.50', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15085', '7', '2019-04-13 16:57:36.000000', '27', '86.40', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15086', '8', '2019-04-13 16:57:36.000000', '32', '74.50', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15087', '9', '2019-04-13 16:57:36.000000', '25', '67.30', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15088', '10', '2019-04-13 16:57:36.000000', '34', '66.50', '1', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15089', '12', '2019-04-13 16:57:36.000000', '25', '95.80', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15090', '13', '2019-04-13 16:57:36.000000', '24', '72.20', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15091', '14', '2019-04-13 16:57:36.000000', '25', '72.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15092', '15', '2019-04-13 16:57:36.000000', '27', '78.70', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15093', '16', '2019-04-13 16:57:36.000000', '26', '75.30', '6', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15094', '17', '2019-04-13 16:57:36.000000', '26', '94.80', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15095', '18', '2019-04-13 16:57:36.000000', '26', '95.60', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15096', '19', '2019-04-13 16:57:36.000000', '23', '68.40', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15097', '20', '2019-04-13 16:57:36.000000', '23', '87.20', '7', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15098', '21', '2019-04-13 16:57:36.000000', '29', '90.80', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15099', '22', '2019-04-13 16:57:36.000000', '25', '84.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15100', '23', '2019-04-13 16:57:36.000000', '25', '74.20', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15101', '24', '2019-04-13 16:57:36.000000', '28', '75.40', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15102', '25', '2019-04-13 16:57:36.000000', '30', '77.70', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15103', '26', '2019-04-13 16:57:36.000000', '25', '94.80', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15104', '27', '2019-04-13 16:57:36.000000', '30', '90.00', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15105', '28', '2019-04-13 16:57:36.000000', '17', '93.60', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15106', '29', '2019-04-13 16:57:36.000000', '27', '92.20', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15107', '30', '2019-04-13 16:57:36.000000', '24', '82.00', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15108', '31', '2019-04-13 16:57:36.000000', '31', '81.90', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15109', '32', '2019-04-13 16:57:36.000000', '26', '85.20', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15110', '33', '2019-04-13 16:57:36.000000', '25', '78.30', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15111', '34', '2019-04-13 16:57:36.000000', '30', '81.10', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15112', '35', '2019-04-13 16:57:36.000000', '32', '97.20', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15113', '36', '2019-04-13 16:57:36.000000', '29', '78.80', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15114', '37', '2019-04-13 16:57:36.000000', '25', '86.70', '1', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15115', '39', '2019-04-13 16:57:36.000000', '27', '64.00', '6', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15116', '41', '2019-04-13 16:57:36.000000', '28', '67.40', '6', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15117', '40', '2019-04-13 16:57:36.000000', '30', '85.60', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15118', '42', '2019-04-13 16:57:36.000000', '29', '76.90', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15119', '45', '2019-04-13 16:57:36.000000', '29', '81.20', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15120', '84', '2019-04-13 16:57:36.000000', '23', '79.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15121', '68', '2019-04-13 16:57:36.000000', '28', '73.60', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15122', '51', '2019-04-13 16:57:36.000000', '24', '82.30', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15123', '43', '2019-04-13 16:57:36.000000', '27', '85.20', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15124', '72', '2019-04-13 16:57:36.000000', '23', '84.40', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15125', '70', '2019-04-13 16:57:36.000000', '27', '77.30', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15126', '69', '2019-04-13 16:57:36.000000', '23', '93.20', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15127', '78', '2019-04-13 16:57:36.000000', '23', '90.60', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15128', '55', '2019-04-13 16:57:36.000000', '25', '83.00', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15129', '57', '2019-04-13 16:57:36.000000', '23', '69.70', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15130', '58', '2019-04-13 16:57:36.000000', '24', '86.10', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15131', '53', '2019-04-13 16:57:36.000000', '23', '77.70', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15132', '62', '2019-04-13 16:57:36.000000', '25', '84.70', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15133', '59', '2019-04-13 16:57:36.000000', '27', '91.00', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15134', '64', '2019-04-13 16:57:36.000000', '31', '87.50', '7', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15135', '66', '2019-04-13 16:57:36.000000', '24', '78.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15136', '65', '2019-04-13 16:57:36.000000', '25', '77.70', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15137', '56', '2019-04-13 16:57:36.000000', '30', '85.30', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15138', '47', '2019-04-13 16:57:36.000000', '26', '75.60', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15139', '46', '2019-04-13 16:57:36.000000', '26', '68.10', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15140', '71', '2019-04-13 16:57:36.000000', '22', '78.60', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15141', '63', '2019-04-13 16:57:36.000000', '30', '70.30', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15142', '73', '2019-04-13 16:57:36.000000', '32', '97.80', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15143', '54', '2019-04-13 16:57:36.000000', '27', '78.10', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15144', '81', '2019-04-13 16:57:36.000000', '31', '91.40', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15145', '49', '2019-04-13 16:57:36.000000', '26', '73.50', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15146', '67', '2019-04-13 16:57:36.000000', '33', '80.80', '6', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15147', '52', '2019-04-13 16:57:36.000000', '23', '70.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15148', '80', '2019-04-13 16:57:36.000000', '24', '90.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15149', '44', '2019-04-13 16:57:36.000000', '24', '86.90', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15150', '48', '2019-04-13 16:57:36.000000', '22', '81.10', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15151', '50', '2019-04-13 16:57:36.000000', '22', '100.10', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15152', '61', '2019-04-13 16:57:36.000000', '25', '83.60', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15153', '76', '2019-04-13 16:57:36.000000', '31', '93.50', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15154', '60', '2019-04-13 16:57:36.000000', '27', '82.70', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15155', '83', '2019-04-13 16:57:36.000000', '27', '74.90', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15156', '90', '2019-04-13 16:57:36.000000', '29', '79.10', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15157', '77', '2019-04-13 16:57:36.000000', '29', '93.30', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15158', '89', '2019-04-13 16:57:36.000000', '29', '72.10', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15159', '82', '2019-04-13 16:57:36.000000', '31', '77.60', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15160', '86', '2019-04-13 16:57:36.000000', '25', '94.30', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15161', '87', '2019-04-13 16:57:36.000000', '30', '98.90', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15162', '95', '2019-04-13 16:57:36.000000', '31', '77.30', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15163', '74', '2019-04-13 16:57:36.000000', '26', '89.00', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15164', '85', '2019-04-13 16:57:36.000000', '30', '77.30', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15165', '79', '2019-04-13 16:57:36.000000', '32', '87.60', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15166', '93', '2019-04-13 16:57:36.000000', '28', '67.60', '6', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15167', '94', '2019-04-13 16:57:36.000000', '25', '83.00', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15168', '88', '2019-04-13 16:57:36.000000', '30', '85.40', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15169', '75', '2019-04-13 16:57:36.000000', '25', '80.90', '5', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15170', '92', '2019-04-13 16:57:36.000000', '29', '87.00', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15171', '97', '2019-04-13 16:57:36.000000', '32', '83.50', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15172', '98', '2019-04-13 16:57:36.000000', '33', '98.30', '2', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15173', '96', '2019-04-13 16:57:36.000000', '29', '85.30', '4', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15174', '99', '2019-04-13 16:57:36.000000', '26', '76.90', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15175', '100', '2019-04-13 16:57:36.000000', '26', '78.30', '3', '[0.7, 0.7, 0.7]', '3', '36.00');
INSERT INTO `User_info_eq_state` VALUES ('15176', '8', '2019-04-13 16:58:36.000000', '34', '70.40', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15177', '7', '2019-04-13 16:58:36.000000', '28', '87.20', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15178', '4', '2019-04-13 16:58:36.000000', '27', '72.20', '7', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15179', '3', '2019-04-13 16:58:36.000000', '24', '84.90', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15180', '6', '2019-04-13 16:58:36.000000', '28', '74.20', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15181', '1', '2019-04-13 16:58:36.000000', '30', '73.30', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15182', '5', '2019-04-13 16:58:36.000000', '24', '79.40', '6', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15183', '15', '2019-04-13 16:58:36.000000', '26', '76.90', '6', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15184', '14', '2019-04-13 16:58:36.000000', '25', '70.00', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15185', '12', '2019-04-13 16:58:36.000000', '24', '98.70', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15186', '16', '2019-04-13 16:58:36.000000', '26', '75.00', '7', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15187', '10', '2019-04-13 16:58:36.000000', '35', '64.60', '0', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15188', '13', '2019-04-13 16:58:36.000000', '25', '74.90', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15189', '9', '2019-04-13 16:58:36.000000', '26', '69.20', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15190', '2', '2019-04-13 16:58:36.000000', '29', '69.60', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15191', '18', '2019-04-13 16:58:36.000000', '27', '97.20', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15192', '19', '2019-04-13 16:58:36.000000', '21', '72.50', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15193', '20', '2019-04-13 16:58:36.000000', '24', '88.50', '7', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15194', '21', '2019-04-13 16:58:36.000000', '30', '93.40', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15195', '17', '2019-04-13 16:58:36.000000', '27', '93.70', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15196', '23', '2019-04-13 16:58:36.000000', '25', '74.60', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15197', '24', '2019-04-13 16:58:36.000000', '27', '79.10', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15198', '26', '2019-04-13 16:58:36.000000', '23', '91.20', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15199', '27', '2019-04-13 16:58:36.000000', '31', '89.00', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15200', '28', '2019-04-13 16:58:36.000000', '17', '92.10', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15201', '29', '2019-04-13 16:58:36.000000', '28', '93.00', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15202', '30', '2019-04-13 16:58:36.000000', '25', '77.70', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15203', '31', '2019-04-13 16:58:36.000000', '30', '77.10', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15204', '33', '2019-04-13 16:58:36.000000', '25', '75.00', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15205', '34', '2019-04-13 16:58:36.000000', '28', '78.80', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15206', '35', '2019-04-13 16:58:36.000000', '32', '95.10', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15207', '25', '2019-04-13 16:58:36.000000', '31', '73.80', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15208', '32', '2019-04-13 16:58:36.000000', '27', '85.60', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15209', '22', '2019-04-13 16:58:36.000000', '24', '89.70', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15210', '36', '2019-04-13 16:58:36.000000', '30', '79.00', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15211', '37', '2019-04-13 16:58:36.000000', '24', '86.20', '0', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15212', '39', '2019-04-13 16:58:36.000000', '27', '59.90', '6', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15213', '41', '2019-04-13 16:58:36.000000', '27', '66.90', '6', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15214', '40', '2019-04-13 16:58:36.000000', '29', '90.10', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15215', '43', '2019-04-13 16:58:36.000000', '28', '82.00', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15216', '68', '2019-04-13 16:58:36.000000', '27', '74.70', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15217', '51', '2019-04-13 16:58:36.000000', '24', '87.20', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15218', '45', '2019-04-13 16:58:36.000000', '28', '76.70', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15219', '72', '2019-04-13 16:58:36.000000', '23', '80.30', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15220', '42', '2019-04-13 16:58:36.000000', '29', '74.40', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15221', '84', '2019-04-13 16:58:36.000000', '22', '76.00', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15222', '69', '2019-04-13 16:58:36.000000', '25', '91.60', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15223', '78', '2019-04-13 16:58:36.000000', '21', '90.80', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15224', '57', '2019-04-13 16:58:36.000000', '21', '71.80', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15225', '53', '2019-04-13 16:58:36.000000', '25', '74.10', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15226', '56', '2019-04-13 16:58:36.000000', '29', '88.30', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15227', '71', '2019-04-13 16:58:36.000000', '21', '75.90', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15228', '73', '2019-04-13 16:58:36.000000', '31', '95.20', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15229', '46', '2019-04-13 16:58:36.000000', '27', '64.70', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15230', '81', '2019-04-13 16:58:36.000000', '32', '96.20', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15231', '49', '2019-04-13 16:58:36.000000', '27', '73.70', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15232', '64', '2019-04-13 16:58:36.000000', '30', '87.40', '7', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15233', '66', '2019-04-13 16:58:36.000000', '22', '79.60', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15234', '58', '2019-04-13 16:58:36.000000', '25', '82.60', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15235', '47', '2019-04-13 16:58:36.000000', '25', '75.90', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15236', '54', '2019-04-13 16:58:36.000000', '26', '76.10', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15237', '65', '2019-04-13 16:58:36.000000', '24', '79.50', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15238', '55', '2019-04-13 16:58:36.000000', '27', '81.70', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15239', '62', '2019-04-13 16:58:36.000000', '24', '89.00', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15240', '63', '2019-04-13 16:58:36.000000', '28', '67.80', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15241', '59', '2019-04-13 16:58:36.000000', '27', '88.90', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15242', '70', '2019-04-13 16:58:36.000000', '27', '75.40', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15243', '67', '2019-04-13 16:58:36.000000', '31', '84.30', '6', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15244', '52', '2019-04-13 16:58:36.000000', '21', '70.20', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15245', '80', '2019-04-13 16:58:36.000000', '23', '88.70', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15246', '44', '2019-04-13 16:58:36.000000', '22', '85.50', '6', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15247', '50', '2019-04-13 16:58:36.000000', '20', '96.00', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15248', '61', '2019-04-13 16:58:36.000000', '24', '87.00', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15249', '48', '2019-04-13 16:58:36.000000', '21', '83.30', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15250', '76', '2019-04-13 16:58:36.000000', '29', '93.50', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15251', '83', '2019-04-13 16:58:36.000000', '27', '76.00', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15252', '60', '2019-04-13 16:58:36.000000', '28', '84.80', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15253', '86', '2019-04-13 16:58:36.000000', '26', '96.40', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15254', '87', '2019-04-13 16:58:36.000000', '30', '95.60', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15255', '74', '2019-04-13 16:58:36.000000', '27', '87.90', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15256', '93', '2019-04-13 16:58:36.000000', '28', '63.70', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15257', '88', '2019-04-13 16:58:36.000000', '30', '87.70', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15258', '85', '2019-04-13 16:58:36.000000', '30', '81.70', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15259', '75', '2019-04-13 16:58:36.000000', '26', '84.80', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15260', '79', '2019-04-13 16:58:36.000000', '33', '90.10', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15261', '95', '2019-04-13 16:58:36.000000', '31', '81.90', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15262', '94', '2019-04-13 16:58:36.000000', '25', '79.60', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15263', '90', '2019-04-13 16:58:36.000000', '27', '83.20', '2', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15264', '82', '2019-04-13 16:58:36.000000', '33', '76.20', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15265', '77', '2019-04-13 16:58:36.000000', '30', '93.10', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15266', '92', '2019-04-13 16:58:36.000000', '28', '91.60', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15267', '89', '2019-04-13 16:58:36.000000', '27', '73.50', '1', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15268', '98', '2019-04-13 16:58:36.000000', '33', '93.90', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15269', '96', '2019-04-13 16:58:36.000000', '28', '85.10', '5', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15270', '97', '2019-04-13 16:58:36.000000', '32', '80.30', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15271', '100', '2019-04-13 16:58:36.000000', '25', '74.70', '4', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15272', '99', '2019-04-13 16:58:36.000000', '28', '74.80', '3', '[0.6, 0.6, 0.6]', '4', '48.00');
INSERT INTO `User_info_eq_state` VALUES ('15273', '1', '2019-04-14 14:45:41.000000', '25', '91.84', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15274', '2', '2019-04-14 14:45:41.000000', '27', '87.45', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15275', '3', '2019-04-14 14:45:41.000000', '28', '86.81', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15276', '4', '2019-04-14 14:45:41.000000', '30', '73.61', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15277', '5', '2019-04-14 14:45:41.000000', '28', '73.85', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15278', '6', '2019-04-14 14:45:41.000000', '25', '89.50', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15279', '7', '2019-04-14 14:45:41.000000', '29', '79.32', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15280', '8', '2019-04-14 14:45:41.000000', '25', '74.76', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15281', '9', '2019-04-14 14:45:41.000000', '28', '74.54', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15282', '10', '2019-04-14 14:45:41.000000', '24', '85.53', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15283', '12', '2019-04-14 14:45:41.000000', '25', '90.23', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15284', '13', '2019-04-14 14:45:41.000000', '26', '92.50', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15285', '14', '2019-04-14 14:45:41.000000', '26', '90.38', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15286', '15', '2019-04-14 14:45:41.000000', '25', '81.39', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15287', '16', '2019-04-14 14:45:41.000000', '30', '86.46', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15288', '17', '2019-04-14 14:45:41.000000', '27', '86.61', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15289', '18', '2019-04-14 14:45:41.000000', '28', '91.60', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15290', '19', '2019-04-14 14:45:41.000000', '29', '92.03', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15291', '20', '2019-04-14 14:45:41.000000', '25', '85.13', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15292', '21', '2019-04-14 14:45:41.000000', '30', '79.18', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15293', '22', '2019-04-14 14:45:41.000000', '26', '79.21', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15294', '23', '2019-04-14 14:45:41.000000', '26', '83.03', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15295', '24', '2019-04-14 14:45:41.000000', '28', '83.62', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15296', '25', '2019-04-14 14:45:41.000000', '24', '76.05', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15297', '26', '2019-04-14 14:45:41.000000', '26', '76.15', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15298', '27', '2019-04-14 14:45:41.000000', '25', '76.59', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15299', '28', '2019-04-14 14:45:41.000000', '26', '73.95', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15300', '29', '2019-04-14 14:45:41.000000', '29', '74.14', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15301', '30', '2019-04-14 14:45:41.000000', '30', '75.74', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15302', '31', '2019-04-14 14:45:41.000000', '27', '74.72', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15303', '32', '2019-04-14 14:45:41.000000', '28', '79.86', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15304', '33', '2019-04-14 14:45:41.000000', '25', '73.03', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15305', '34', '2019-04-14 14:45:41.000000', '25', '90.98', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15306', '35', '2019-04-14 14:45:41.000000', '26', '79.31', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15307', '36', '2019-04-14 14:45:41.000000', '23', '75.27', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15308', '37', '2019-04-14 14:45:41.000000', '25', '80.24', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15309', '39', '2019-04-14 14:45:41.000000', '24', '80.53', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15310', '40', '2019-04-14 14:45:41.000000', '23', '89.04', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15311', '41', '2019-04-14 14:45:41.000000', '29', '86.98', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15312', '42', '2019-04-14 14:45:41.000000', '24', '80.69', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15313', '43', '2019-04-14 14:45:41.000000', '27', '76.44', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15314', '44', '2019-04-14 14:45:41.000000', '25', '81.14', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15315', '45', '2019-04-14 14:45:41.000000', '27', '83.92', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15316', '46', '2019-04-14 14:45:41.000000', '24', '81.25', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15317', '47', '2019-04-14 14:45:41.000000', '25', '77.14', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15318', '48', '2019-04-14 14:45:41.000000', '24', '78.97', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15319', '49', '2019-04-14 14:45:41.000000', '28', '85.97', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15320', '50', '2019-04-14 14:45:41.000000', '28', '75.07', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15321', '51', '2019-04-14 14:45:41.000000', '27', '73.24', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15322', '52', '2019-04-14 14:45:41.000000', '23', '86.70', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15323', '53', '2019-04-14 14:45:41.000000', '28', '89.62', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15324', '54', '2019-04-14 14:45:41.000000', '25', '81.76', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15325', '55', '2019-04-14 14:45:41.000000', '23', '76.95', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15326', '56', '2019-04-14 14:45:41.000000', '26', '86.46', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15327', '57', '2019-04-14 14:45:41.000000', '28', '88.24', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15328', '58', '2019-04-14 14:45:41.000000', '24', '77.03', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15329', '59', '2019-04-14 14:45:41.000000', '28', '91.41', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15330', '60', '2019-04-14 14:45:41.000000', '28', '81.91', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15331', '61', '2019-04-14 14:45:41.000000', '25', '78.02', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15332', '62', '2019-04-14 14:45:41.000000', '28', '83.87', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15333', '63', '2019-04-14 14:45:41.000000', '25', '81.97', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15334', '64', '2019-04-14 14:45:41.000000', '26', '89.17', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15335', '65', '2019-04-14 14:45:41.000000', '25', '85.20', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15336', '66', '2019-04-14 14:45:41.000000', '27', '86.49', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15337', '67', '2019-04-14 14:45:41.000000', '29', '91.60', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15338', '68', '2019-04-14 14:45:41.000000', '29', '87.92', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15339', '69', '2019-04-14 14:45:41.000000', '26', '82.49', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15340', '70', '2019-04-14 14:45:41.000000', '26', '87.84', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15341', '71', '2019-04-14 14:45:41.000000', '24', '90.33', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15342', '72', '2019-04-14 14:45:41.000000', '24', '88.59', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15343', '73', '2019-04-14 14:45:41.000000', '29', '92.92', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15344', '74', '2019-04-14 14:45:41.000000', '25', '75.91', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15345', '75', '2019-04-14 14:45:41.000000', '28', '85.36', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15346', '76', '2019-04-14 14:45:41.000000', '25', '92.54', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15347', '77', '2019-04-14 14:45:41.000000', '28', '80.51', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15348', '78', '2019-04-14 14:45:41.000000', '27', '82.55', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15349', '79', '2019-04-14 14:45:41.000000', '26', '74.18', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15350', '80', '2019-04-14 14:45:41.000000', '25', '81.21', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15351', '81', '2019-04-14 14:45:41.000000', '27', '86.20', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15352', '82', '2019-04-14 14:45:41.000000', '23', '75.75', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15353', '83', '2019-04-14 14:45:41.000000', '30', '73.01', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15354', '84', '2019-04-14 14:45:41.000000', '23', '79.88', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15355', '85', '2019-04-14 14:45:41.000000', '25', '78.74', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15356', '86', '2019-04-14 14:45:41.000000', '24', '81.62', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15357', '87', '2019-04-14 14:45:41.000000', '29', '91.14', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15358', '88', '2019-04-14 14:45:41.000000', '28', '79.45', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15359', '89', '2019-04-14 14:45:41.000000', '28', '76.50', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15360', '90', '2019-04-14 14:45:41.000000', '28', '84.73', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15361', '92', '2019-04-14 14:45:41.000000', '24', '87.19', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15362', '93', '2019-04-14 14:45:41.000000', '27', '89.96', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15363', '94', '2019-04-14 14:45:41.000000', '29', '76.07', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15364', '95', '2019-04-14 14:45:41.000000', '27', '80.19', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15365', '96', '2019-04-14 14:45:41.000000', '30', '82.42', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15366', '97', '2019-04-14 14:45:41.000000', '25', '78.54', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15367', '98', '2019-04-14 14:45:41.000000', '27', '80.40', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15368', '99', '2019-04-14 14:45:41.000000', '26', '79.46', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15369', '100', '2019-04-14 14:45:41.000000', '29', '82.30', '4', '[1.0, 1.0, 1.0]', '0', '0.00');
INSERT INTO `User_info_eq_state` VALUES ('15370', '1', '2019-04-14 14:46:41.000000', '24', '96.20', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15371', '2', '2019-04-14 14:46:41.000000', '27', '86.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15372', '3', '2019-04-14 14:46:41.000000', '26', '91.10', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15373', '4', '2019-04-14 14:46:41.000000', '28', '70.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15374', '5', '2019-04-14 14:46:41.000000', '27', '71.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15375', '6', '2019-04-14 14:46:41.000000', '27', '86.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15376', '7', '2019-04-14 14:46:41.000000', '29', '79.70', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15377', '8', '2019-04-14 14:46:41.000000', '24', '78.10', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15378', '12', '2019-04-14 14:46:41.000000', '26', '89.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15379', '24', '2019-04-14 14:46:41.000000', '26', '88.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15380', '25', '2019-04-14 14:46:41.000000', '25', '71.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15381', '14', '2019-04-14 14:46:41.000000', '27', '86.20', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15382', '16', '2019-04-14 14:46:41.000000', '29', '86.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15383', '9', '2019-04-14 14:46:41.000000', '29', '71.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15384', '15', '2019-04-14 14:46:41.000000', '25', '85.60', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15385', '17', '2019-04-14 14:46:41.000000', '25', '88.30', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15386', '26', '2019-04-14 14:46:41.000000', '26', '78.30', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15387', '27', '2019-04-14 14:46:41.000000', '24', '73.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15388', '13', '2019-04-14 14:46:41.000000', '26', '87.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15389', '10', '2019-04-14 14:46:41.000000', '24', '86.40', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15390', '23', '2019-04-14 14:46:41.000000', '24', '83.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15391', '22', '2019-04-14 14:46:41.000000', '28', '80.10', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15392', '21', '2019-04-14 14:46:41.000000', '31', '82.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15393', '20', '2019-04-14 14:46:41.000000', '25', '88.10', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15394', '28', '2019-04-14 14:46:41.000000', '26', '76.80', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15395', '29', '2019-04-14 14:46:41.000000', '30', '78.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15396', '30', '2019-04-14 14:46:41.000000', '32', '76.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15397', '19', '2019-04-14 14:46:41.000000', '28', '89.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15398', '18', '2019-04-14 14:46:41.000000', '29', '96.10', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15399', '31', '2019-04-14 14:46:41.000000', '26', '74.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15400', '32', '2019-04-14 14:46:41.000000', '28', '81.50', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15401', '42', '2019-04-14 14:46:41.000000', '25', '77.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15402', '37', '2019-04-14 14:46:41.000000', '25', '77.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15403', '36', '2019-04-14 14:46:41.000000', '22', '70.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15404', '40', '2019-04-14 14:46:41.000000', '25', '87.00', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15405', '33', '2019-04-14 14:46:41.000000', '24', '73.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15406', '45', '2019-04-14 14:46:41.000000', '28', '85.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15407', '46', '2019-04-14 14:46:41.000000', '26', '85.40', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15408', '44', '2019-04-14 14:46:41.000000', '23', '79.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15409', '41', '2019-04-14 14:46:41.000000', '27', '82.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15410', '43', '2019-04-14 14:46:41.000000', '26', '76.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15411', '35', '2019-04-14 14:46:41.000000', '27', '81.80', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15412', '34', '2019-04-14 14:46:41.000000', '26', '93.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15413', '39', '2019-04-14 14:46:41.000000', '25', '77.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15414', '48', '2019-04-14 14:46:41.000000', '25', '82.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15415', '56', '2019-04-14 14:46:41.000000', '27', '89.40', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15416', '49', '2019-04-14 14:46:41.000000', '30', '81.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15417', '54', '2019-04-14 14:46:41.000000', '26', '80.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15418', '59', '2019-04-14 14:46:41.000000', '28', '96.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15419', '47', '2019-04-14 14:46:41.000000', '26', '76.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15420', '55', '2019-04-14 14:46:41.000000', '22', '81.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15421', '57', '2019-04-14 14:46:41.000000', '28', '85.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15422', '50', '2019-04-14 14:46:41.000000', '26', '79.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15423', '53', '2019-04-14 14:46:41.000000', '28', '90.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15424', '60', '2019-04-14 14:46:41.000000', '27', '77.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15425', '52', '2019-04-14 14:46:41.000000', '24', '86.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15426', '58', '2019-04-14 14:46:41.000000', '25', '81.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15427', '51', '2019-04-14 14:46:41.000000', '27', '70.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15428', '62', '2019-04-14 14:46:41.000000', '29', '86.00', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15429', '63', '2019-04-14 14:46:41.000000', '25', '85.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15430', '61', '2019-04-14 14:46:41.000000', '26', '77.60', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15431', '65', '2019-04-14 14:46:41.000000', '25', '87.00', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15432', '64', '2019-04-14 14:46:41.000000', '24', '91.60', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15433', '71', '2019-04-14 14:46:41.000000', '25', '86.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15434', '68', '2019-04-14 14:46:41.000000', '29', '84.30', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15435', '69', '2019-04-14 14:46:41.000000', '27', '82.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15436', '67', '2019-04-14 14:46:41.000000', '30', '87.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15437', '70', '2019-04-14 14:46:41.000000', '27', '89.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15438', '66', '2019-04-14 14:46:41.000000', '25', '85.80', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15439', '72', '2019-04-14 14:46:41.000000', '23', '92.20', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15440', '73', '2019-04-14 14:46:41.000000', '28', '97.20', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15441', '74', '2019-04-14 14:46:41.000000', '24', '77.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15442', '75', '2019-04-14 14:46:41.000000', '27', '85.50', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15443', '77', '2019-04-14 14:46:41.000000', '30', '77.60', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15444', '79', '2019-04-14 14:46:41.000000', '26', '70.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15445', '81', '2019-04-14 14:46:41.000000', '28', '83.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15446', '80', '2019-04-14 14:46:41.000000', '27', '81.50', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15447', '78', '2019-04-14 14:46:41.000000', '28', '80.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15448', '76', '2019-04-14 14:46:41.000000', '26', '87.70', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15449', '84', '2019-04-14 14:46:41.000000', '22', '78.00', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15450', '82', '2019-04-14 14:46:41.000000', '23', '75.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15451', '83', '2019-04-14 14:46:41.000000', '28', '74.20', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15452', '86', '2019-04-14 14:46:41.000000', '23', '79.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15453', '88', '2019-04-14 14:46:41.000000', '28', '75.60', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15454', '87', '2019-04-14 14:46:41.000000', '29', '89.30', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15455', '85', '2019-04-14 14:46:41.000000', '24', '75.90', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15456', '89', '2019-04-14 14:46:41.000000', '27', '75.00', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15457', '90', '2019-04-14 14:46:41.000000', '28', '79.80', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15458', '93', '2019-04-14 14:46:41.000000', '28', '92.40', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15459', '94', '2019-04-14 14:46:41.000000', '30', '80.80', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15460', '95', '2019-04-14 14:46:41.000000', '26', '80.90', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15461', '92', '2019-04-14 14:46:41.000000', '22', '83.50', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15462', '96', '2019-04-14 14:46:41.000000', '31', '82.90', '3', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15463', '97', '2019-04-14 14:46:41.000000', '25', '78.40', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15464', '99', '2019-04-14 14:46:41.000000', '26', '83.30', '5', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15465', '98', '2019-04-14 14:46:41.000000', '26', '82.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15466', '100', '2019-04-14 14:46:41.000000', '28', '79.60', '4', '[0.9, 0.9, 0.9]', '1', '12.00');
INSERT INTO `User_info_eq_state` VALUES ('15467', '100', '2019-04-14 14:45:41.000000', '29', '82.30', '4', '[1.0, 1.0, 1.0]', '0', '0.00');

-- ----------------------------
-- Table structure for User_info_eq_type
-- ----------------------------
DROP TABLE IF EXISTS `User_info_eq_type`;
CREATE TABLE `User_info_eq_type` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `size` varchar(64) NOT NULL,
  `weight` decimal(8,2) NOT NULL,
  `power` varchar(32) NOT NULL,
  `dissipation` int(11) NOT NULL,
  `material_buckets` int(11) NOT NULL,
  `water_proofing_grade` varchar(16) NOT NULL,
  `pipe_standard` varchar(16) NOT NULL,
  `inflow_pressue` varchar(16) NOT NULL,
  `work_temperature` varchar(16) NOT NULL,
  `screen_size` decimal(8,2) NOT NULL,
  `comm_interface` varchar(32) NOT NULL,
  `os` varchar(32) NOT NULL,
  `payment_cate` varchar(32) NOT NULL,
  `data_standard` varchar(32) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of User_info_eq_type
-- ----------------------------
INSERT INTO `User_info_eq_type` VALUES ('1', 'ES4C', '700(H)*420(W)*450(D)mm', '60.00', 'AC220V/50HZ', '2700', '3', 'IPX1', 'G3/8', '0.5-7bar', '75', '14.00', 'USB,WIFI,4G', 'LINUX系统、Android系统', '微信、支付宝', 'EVA-DTS');

-- ----------------------------
-- Table structure for User_info_eq_warnings
-- ----------------------------
DROP TABLE IF EXISTS `User_info_eq_warnings`;
CREATE TABLE `User_info_eq_warnings` (
  `MACHINE_ID` int(11) DEFAULT NULL,
  `alter_msg` varchar(128) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of User_info_eq_warnings
-- ----------------------------
INSERT INTO `User_info_eq_warnings` VALUES ('1', '1 Machine have no recv msg', '2019-04-21 17:08:07');
INSERT INTO `User_info_eq_warnings` VALUES ('2', '2 Machine have no recv msg', '2019-04-21 17:08:07');
INSERT INTO `User_info_eq_warnings` VALUES ('3', '3 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('4', '4 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('5', '5 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('6', '6 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('7', '7 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('8', '8 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('9', '9 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('10', '10 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('12', '12 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('13', '13 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('14', '14 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('15', '15 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('16', '16 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('17', '17 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('18', '18 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('19', '19 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('20', '20 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('21', '21 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('22', '22 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('23', '23 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('24', '24 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('25', '25 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('26', '26 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('27', '27 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('28', '28 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('29', '29 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('30', '30 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('31', '31 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('32', '32 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('33', '33 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('34', '34 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('35', '35 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('36', '36 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('37', '37 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('39', '39 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('40', '40 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('41', '41 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('42', '42 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('43', '43 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('44', '44 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('45', '45 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('46', '46 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('47', '47 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('48', '48 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('49', '49 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('50', '50 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('51', '51 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('52', '52 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('53', '53 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('54', '54 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('55', '55 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('56', '56 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('57', '57 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('58', '58 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('59', '59 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('60', '60 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('61', '61 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('62', '62 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('63', '63 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('64', '64 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('65', '65 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('66', '66 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('67', '67 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('68', '68 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('69', '69 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('70', '70 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('71', '71 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('72', '72 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('73', '73 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('74', '74 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('75', '75 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('76', '76 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('77', '77 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('78', '78 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('79', '79 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('80', '80 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('81', '81 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('82', '82 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('83', '83 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('84', '84 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('85', '85 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('86', '86 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('87', '87 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('88', '88 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('89', '89 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('90', '90 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('92', '92 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('93', '93 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('94', '94 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('95', '95 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('96', '96 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('97', '97 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('98', '98 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('99', '99 Machine have no recv msg', '2019-04-21 17:08:08');
INSERT INTO `User_info_eq_warnings` VALUES ('100', '100 Machine have no recv msg', '2019-04-21 17:08:08');
