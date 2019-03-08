/*
Navicat MySQL Data Transfer

Source Server         : 192.168.173.132_3306
Source Server Version : 50722
Source Host           : 192.168.173.132:3306
Source Database       : redis_admin

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-03-08 14:57:40
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add group', '1', 'add_group');
INSERT INTO `auth_permission` VALUES ('2', 'Can change group', '1', 'change_group');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete group', '1', 'delete_group');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add content type', '3', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('8', 'Can change content type', '3', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete content type', '3', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('10', 'Can add session', '4', 'add_session');
INSERT INTO `auth_permission` VALUES ('11', 'Can change session', '4', 'change_session');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete session', '4', 'delete_session');
INSERT INTO `auth_permission` VALUES ('13', 'Can add redis配置', '5', 'add_redisconf');
INSERT INTO `auth_permission` VALUES ('14', 'Can change redis配置', '5', 'change_redisconf');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete redis配置', '5', 'delete_redisconf');
INSERT INTO `auth_permission` VALUES ('16', 'Can add 权限', '6', 'add_auth');
INSERT INTO `auth_permission` VALUES ('17', 'Can change 权限', '6', 'change_auth');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete 权限', '6', 'delete_auth');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 用户管理', '7', 'add_dctuser');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 用户管理', '7', 'change_dctuser');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 用户管理', '7', 'delete_dctuser');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 操作记录', '8', 'add_operationinfo');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 操作记录', '8', 'change_operationinfo');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 操作记录', '8', 'delete_operationinfo');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('8', 'loginfo', 'operationinfo');
INSERT INTO `django_content_type` VALUES ('4', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'auth');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'dctuser');
INSERT INTO `django_content_type` VALUES ('5', 'users', 'redisconf');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-01-31 18:22:28.860000');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2019-01-31 18:22:28.925000');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2019-01-31 18:22:29.109000');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2019-01-31 18:22:29.144000');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2019-01-31 18:22:29.157000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2019-01-31 18:22:29.172000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2019-01-31 18:22:29.186000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2019-01-31 18:22:29.194000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2019-01-31 18:22:29.206000');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2019-01-31 18:22:29.221000');
INSERT INTO `django_migrations` VALUES ('11', 'loginfo', '0001_initial', '2019-01-31 18:22:29.253000');
INSERT INTO `django_migrations` VALUES ('12', 'loginfo', '0002_auto_20171019_1705', '2019-01-31 18:22:29.285000');
INSERT INTO `django_migrations` VALUES ('13', 'loginfo', '0003_operationinfo_type', '2019-01-31 18:22:29.322000');
INSERT INTO `django_migrations` VALUES ('14', 'loginfo', '0004_auto_20171019_2013', '2019-01-31 18:22:29.345000');
INSERT INTO `django_migrations` VALUES ('15', 'sessions', '0001_initial', '2019-01-31 18:22:29.388000');
INSERT INTO `django_migrations` VALUES ('16', 'users', '0001_initial', '2019-01-31 18:22:29.738000');
INSERT INTO `django_migrations` VALUES ('17', 'users', '0002_auto_20180413_1539', '2019-01-31 18:22:29.765000');
INSERT INTO `django_migrations` VALUES ('18', 'users', '0003_auto_20180413_1549', '2019-01-31 18:22:29.833000');
INSERT INTO `django_migrations` VALUES ('19', 'users', '0004_auto_20180416_1636', '2019-01-31 18:22:29.892000');
INSERT INTO `django_migrations` VALUES ('20', 'users', '0005_remove_redisconf_index', '2019-01-31 18:22:29.929000');
INSERT INTO `django_migrations` VALUES ('21', 'users', '0006_auto_20180530_1753', '2019-01-31 18:22:30.036000');
INSERT INTO `django_migrations` VALUES ('22', 'users', '0007_auto_20180530_1902', '2019-01-31 18:22:30.130000');
INSERT INTO `django_migrations` VALUES ('23', 'users', '0008_redisconf_type', '2019-01-31 18:22:30.169000');

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
INSERT INTO `django_session` VALUES ('b7pgs7artl16pvk0kxfaw32rpxmru1xr', 'M2RiYjZhMWQwMWU2Zjk1NGE1MGRhNTU3NDViMDAyODgwNzJjNWViYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImRiYmM4NGMxOWEyZTY1MWE1ZjBiMTdjZmNmNzFiZDBkYjUzYjgxMGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2019-02-01 20:59:59.786282');
INSERT INTO `django_session` VALUES ('zkho57britqxh3nqwlfnpjjhbz3mj6as', 'M2RiYjZhMWQwMWU2Zjk1NGE1MGRhNTU3NDViMDAyODgwNzJjNWViYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImRiYmM4NGMxOWEyZTY1MWE1ZjBiMTdjZmNmNzFiZDBkYjUzYjgxMGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2019-02-03 10:24:21.344652');

-- ----------------------------
-- Table structure for loginfo_operationinfo
-- ----------------------------
DROP TABLE IF EXISTS `loginfo_operationinfo`;
CREATE TABLE `loginfo_operationinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `server` varchar(20) NOT NULL,
  `db` varchar(20) NOT NULL,
  `key` varchar(120) NOT NULL,
  `old_value` longtext NOT NULL,
  `value` longtext,
  `add_time` datetime(6) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `loginfo_operationinfo_key_36ce1c99` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loginfo_operationinfo
-- ----------------------------

-- ----------------------------
-- Table structure for premission
-- ----------------------------
DROP TABLE IF EXISTS `premission`;
CREATE TABLE `premission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `redis` int(11) NOT NULL,
  `pre_auth` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of premission
-- ----------------------------
INSERT INTO `premission` VALUES ('1', '1', '1');
INSERT INTO `premission` VALUES ('2', '1', '2');
INSERT INTO `premission` VALUES ('3', '1', '3');

-- ----------------------------
-- Table structure for redis_config
-- ----------------------------
DROP TABLE IF EXISTS `redis_config`;
CREATE TABLE `redis_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(15) NOT NULL,
  `port` int(11) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `database` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of redis_config
-- ----------------------------
INSERT INTO `redis_config` VALUES ('1', '127.0.0.1', '6379', null, '16', 'my', '0');

-- ----------------------------
-- Table structure for users_dctuser
-- ----------------------------
DROP TABLE IF EXISTS `users_dctuser`;
CREATE TABLE `users_dctuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_dctuser
-- ----------------------------
INSERT INTO `users_dctuser` VALUES ('1', 'pbkdf2_sha256$36000$HtnQ8Vj0AmHf$QfpJijvGxnTz5RzbMq0EPmgphfoKnHCjydLJnUNKkaY=', '2019-02-02 10:24:21.325814', '1', 'wison', '', '', 'wison@wison.com', '1', '1', '2019-01-31 18:23:57.421000', '/static/img/default.jpg');

-- ----------------------------
-- Table structure for users_dctuser_auths
-- ----------------------------
DROP TABLE IF EXISTS `users_dctuser_auths`;
CREATE TABLE `users_dctuser_auths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dctuser_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_dctuser_auths_dctuser_id_auth_id_ef30d0e3_uniq` (`dctuser_id`,`auth_id`),
  KEY `users_dctuser_auths_auth_id_51f02a81_fk_premission_id` (`auth_id`),
  CONSTRAINT `users_dctuser_auths_auth_id_51f02a81_fk_premission_id` FOREIGN KEY (`auth_id`) REFERENCES `premission` (`id`),
  CONSTRAINT `users_dctuser_auths_dctuser_id_e15fe496_fk_users_dctuser_id` FOREIGN KEY (`dctuser_id`) REFERENCES `users_dctuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_dctuser_auths
-- ----------------------------
INSERT INTO `users_dctuser_auths` VALUES ('5', '1', '3');

-- ----------------------------
-- Table structure for users_dctuser_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_dctuser_groups`;
CREATE TABLE `users_dctuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dctuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_dctuser_groups_dctuser_id_group_id_c4741a2a_uniq` (`dctuser_id`,`group_id`),
  KEY `users_dctuser_groups_group_id_8768016c_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_dctuser_groups_dctuser_id_cd26acde_fk_users_dctuser_id` FOREIGN KEY (`dctuser_id`) REFERENCES `users_dctuser` (`id`),
  CONSTRAINT `users_dctuser_groups_group_id_8768016c_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_dctuser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_dctuser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_dctuser_user_permissions`;
CREATE TABLE `users_dctuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dctuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_dctuser_user_permi_dctuser_id_permission_id_9e3390d3_uniq` (`dctuser_id`,`permission_id`),
  KEY `users_dctuser_user_p_permission_id_4d128c6e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_dctuser_user_p_dctuser_id_03c46672_fk_users_dct` FOREIGN KEY (`dctuser_id`) REFERENCES `users_dctuser` (`id`),
  CONSTRAINT `users_dctuser_user_p_permission_id_4d128c6e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_dctuser_user_permissions
-- ----------------------------
