/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : middle

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2019-05-27 17:28:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
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
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO `auth_permission` VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO `auth_permission` VALUES ('7', 'Can add permission', '3', 'add_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can change permission', '3', 'change_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete permission', '3', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add t order', '7', 'add_torder');
INSERT INTO `auth_permission` VALUES ('20', 'Can change t order', '7', 'change_torder');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete t order', '7', 'delete_torder');
INSERT INTO `auth_permission` VALUES ('22', 'Can add t user', '8', 'add_tuser');
INSERT INTO `auth_permission` VALUES ('23', 'Can change t user', '8', 'change_tuser');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete t user', '8', 'delete_tuser');
INSERT INTO `auth_permission` VALUES ('25', 'Can add t category', '9', 'add_tcategory');
INSERT INTO `auth_permission` VALUES ('26', 'Can change t category', '9', 'change_tcategory');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete t category', '9', 'delete_tcategory');
INSERT INTO `auth_permission` VALUES ('28', 'Can add t orderitem', '10', 'add_torderitem');
INSERT INTO `auth_permission` VALUES ('29', 'Can change t orderitem', '10', 'change_torderitem');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete t orderitem', '10', 'delete_torderitem');
INSERT INTO `auth_permission` VALUES ('31', 'Can add t address', '11', 'add_taddress');
INSERT INTO `auth_permission` VALUES ('32', 'Can change t address', '11', 'change_taddress');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete t address', '11', 'delete_taddress');
INSERT INTO `auth_permission` VALUES ('34', 'Can add t book', '12', 'add_tbook');
INSERT INTO `auth_permission` VALUES ('35', 'Can change t book', '12', 'change_tbook');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete t book', '12', 'delete_tbook');
INSERT INTO `auth_permission` VALUES ('37', 'Can add confirm_string', '13', 'add_confirm_string');
INSERT INTO `auth_permission` VALUES ('38', 'Can change confirm_string', '13', 'change_confirm_string');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete confirm_string', '13', 'delete_confirm_string');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_groups`
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
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('13', 'userapp', 'confirm_string');
INSERT INTO `django_content_type` VALUES ('11', 'userapp', 'taddress');
INSERT INTO `django_content_type` VALUES ('12', 'userapp', 'tbook');
INSERT INTO `django_content_type` VALUES ('9', 'userapp', 'tcategory');
INSERT INTO `django_content_type` VALUES ('7', 'userapp', 'torder');
INSERT INTO `django_content_type` VALUES ('10', 'userapp', 'torderitem');
INSERT INTO `django_content_type` VALUES ('8', 'userapp', 'tuser');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('15', 'userapp', '0001_initial', '2019-05-22 11:21:32');
INSERT INTO `django_migrations` VALUES ('16', 'userapp', '0002_confirm_string', '2019-05-27 06:13:43');
INSERT INTO `django_migrations` VALUES ('17', 'userapp', '0003_auto_20190527_1502', '2019-05-27 07:02:40');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('001n8ceiwqiz43hay3twn5fpqarqslmh', 'MjI5YjRiY2RiZGE0YzJkMzA1ZDFmYWZmMGY3NDQzYjNjYWU4M2U2YjqABJUPAAAAAAAAAH2UjARleGl0lIwBMZRzLg==', '2019-06-09 15:05:26');
INSERT INTO `django_session` VALUES ('043uwybav4c4tfeby4pkdsus33r5oxd0', 'MGUxMzRkNjViZGUzZmM3OTgzNzJkMzQ2OWJmNmQwNTYxOTczYzUxYTqABJWXAgAAAAAAAH2UKIwEY29kZZSMBFBNU1GUjANsb2eUjAsxNTAzNzY5Mzg4NZSMBGNhcnSUjAxzaG9wYXBwLmNhcnSUjARDYXJ0lJOUKYGUfZQojAhjYXJ0SXRlbZRdlGgGjAhDYXJ0SXRlbZSTlCmBlH2UKIwGYW1vdW50lIwBMZSMBnN0YXR1c5RLAYwEYm9va5SMFWRqYW5nby5kYi5tb2RlbHMuYmFzZZSMDm1vZGVsX3VucGlja2xllJOUjAd1c2VyYXBwlIwFVEJvb2uUhpSFlFKUfZQojA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuNpSMB3N0b3JhZ2WUS2SMBXNhbGVzlEtxjAxwdXNoaXNoX3RpbWWUjAhkYXRldGltZZSMCGRhdGV0aW1llJOUQwoH4wQdEScOAAAAlIWUUpSMCWJvb2tfbmFtZZSMJ+esrOWFq+acrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMBHBpY3OUjBJib29rX3ByaWNlL2RkMi5qcGeUjA5kYW5nZGFuZ19wcmljZZRHQFmAAAAAAACMDmVkaXRlcl9jb21tb25klE6MC2NhdGVnb3J5X2lklEsBjAZhbnRob3KUjAnliJjmhYjmrKOUjAxtYXJrZXRfcHJpY2WUR0BfwAAAAAAAjAJpZJRLE4wGX3N0YXRllGgVjApNb2RlbFN0YXRllJOUKYGUfZQojAJkYpSMB2RlZmF1bHSUjAZhZGRpbmeUiXVidWJ1YmGMCnNhdmVfcHJpY2WUR0A5AAAAAAAAjAt0b3RhbF9wcmljZZRHQFmAAAAAAAB1YowHdXNlcm51bZSMCzEyMzQ1Njc4OTExlIwHdXNlcnBhc5SMBjEyMzQ1NpR1Lg==', '2019-06-07 16:25:23');
INSERT INTO `django_session` VALUES ('0e6cof49givuq8x1f0wlur5k2636clg5', 'NzE4YWYyYjc1YzUwNjg1M2VmM2FjYzU0Y2ViMTViMTlmZThjYzlmMjqABJXAAAAAAAAAAH2UKIwEY29kZZSMBG04c3iUjAt0eHRVc2VybmFtZZSMCzEyMzQ1Njc4OTExlIwFbG9naW6UjAJva5SMA2xvZ5RoBIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjARleGl0lIwBMZSMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZR1Lg==', '2019-06-09 07:16:08');
INSERT INTO `django_session` VALUES ('13r63f8plpq0godqqtq5t1v962iamvf9', 'YmIwYTU1OTUzMmJkMmNjMmIzMzhmMTlhNmMzYzZjY2Y4M2JiMjIzZTqABJVvAwAAAAAAAH2UKIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjAd0X3ByaWNllEdAWYAAAAAAAIwEZXhpdJSMATGUjARjb2RllIwENjdhZJSMCGNhcnRJdGVtlF2UjAxzaG9wYXBwLmNhcnSUjAhDYXJ0SXRlbZSTlCmBlH2UKIwGc3RhdHVzlEsBjAZhbW91bnSUSwGMBGJvb2uUjBVkamFuZ28uZGIubW9kZWxzLmJhc2WUjA5tb2RlbF91bnBpY2tsZZSTlIwHdXNlcmFwcJSMBVRCb29rlIaUhZRSlH2UKIwOZWRpdGVyX2NvbW1vbmSUTowHc3RvcmFnZZRLZIwMbWFya2V0X3ByaWNllEdAX8AAAAAAAIwGYW50aG9ylIwJ5YiY5oWI5qyjlIwPX2RqYW5nb192ZXJzaW9ulIwFMi4wLjaUjAJpZJRLE4wEcGljc5SMEmJvb2tfcHJpY2UvZGQyLmpwZ5SMC2NhdGVnb3J5X2lklEsBjAxwdXNoaXNoX3RpbWWUjAhkYXRldGltZZSMCGRhdGV0aW1llJOUQwoH4wQdEScOAAAAlIWUUpSMBl9zdGF0ZZRoEowKTW9kZWxTdGF0ZZSTlCmBlH2UKIwGYWRkaW5nlImMAmRilIwHZGVmYXVsdJR1YowFc2FsZXOUS3GMCWJvb2tfbmFtZZSMJ+esrOWFq+acrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMDmRhbmdkYW5nX3ByaWNllEdAWYAAAAAAAHVidWJhjAt0eHRVc2VybmFtZZSMCzEyMzQ1Njc4OTExlIwEZmZmZpROjAVsb2dpbpSMAm9rlIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwEY2FydJRoCowEQ2FydJSTlCmBlH2UKIwLdG90YWxfcHJpY2WUR0BZgAAAAAAAjAhjYXJ0SXRlbZRoCYwKc2F2ZV9wcmljZZRHQDkAAAAAAAB1YowEbmFtZZSMCeadjumjnumYs5SMA2xvZ5SMCzEyMzQ1Njc4OTExlIwHb3JkZXJpZJSKBpJexPZqAYwHc19wcmljZZRHQDkAAAAAAAB1Lg==', '2019-06-10 00:50:35');
INSERT INTO `django_session` VALUES ('1hg6m30alkqgkjj8a5me0rrcwf5pkkxi', 'NGEwNTNmMDliZDhiYjNhMTU3ZWI5NDUzY2FiYWI0ZDVmNmNiOTc3ZjqABJWsAgAAAAAAAH2UKIwEY2FydJSMDHNob3BhcHAuY2FydJSMBENhcnSUk5QpgZR9lCiMC3RvdGFsX3ByaWNllEdAaYAAAAAAAIwIY2FydEl0ZW2UXZRoAowIQ2FydEl0ZW2Uk5QpgZR9lCiMBGJvb2uUjBVkamFuZ28uZGIubW9kZWxzLmJhc2WUjA5tb2RlbF91bnBpY2tsZZSTlIwHdXNlcmFwcJSMBVRCb29rlIaUhZRSlH2UKIwEcGljc5SMEmJvb2tfcHJpY2UvZGQyLmpwZ5SMDmVkaXRlcl9jb21tb25klE6MAmlklEsTjAZhbnRob3KUjAnliJjmhYjmrKOUjAZfc3RhdGWUaA+MCk1vZGVsU3RhdGWUk5QpgZR9lCiMBmFkZGluZ5SJjAJkYpSMB2RlZmF1bHSUdWKMDG1hcmtldF9wcmljZZRHQF/AAAAAAACMDmRhbmdkYW5nX3ByaWNllEdAWYAAAAAAAIwHc3RvcmFnZZRLZIwPX2RqYW5nb192ZXJzaW9ulIwFMi4wLjaUjAxwdXNoaXNoX3RpbWWUjAhkYXRldGltZZSMCGRhdGV0aW1llJOUQwoH4wQdEScOAAAAlIWUUpSMCWJvb2tfbmFtZZSMJ+esrOWFq+acrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMC2NhdGVnb3J5X2lklEsBjAVzYWxlc5RLcXVijAZzdGF0dXOUSwGMBmFtb3VudJSMATKUdWJhjApzYXZlX3ByaWNllEdASQAAAAAAAHVijAdzX3ByaWNllEdASQAAAAAAAIwEY29kZZSMBHFXVFCUjAhjYXJ0SXRlbZRoCYwFbG9naW6UjAJva5SMB3RfcHJpY2WUR0BpgAAAAAAAjANsb2eUjAsxNTAzNzY5Mzg4NZR1Lg==', '2019-06-08 12:43:04');
INSERT INTO `django_session` VALUES ('1llw8axk8y18bbutcgala3b22l5tltmj', 'NmFlZjU5OGM5YjZhOTBjOTk1ZDhiNWU3MjdjNDJlODhlNDUyNmYwNDqABJUpBAAAAAAAAH2UKIwEY29kZZSMBGthcjSUjARuYW1llIwJ5p2O6aOe6ZizlIwDbG9nlIwLMTUwMzc2OTM4ODWUjAdzX3ByaWNllEdAUAAAAAAAAIwHdF9wcmljZZRHQHNwAAAAAACMBGNhcnSUjAxzaG9wYXBwLmNhcnSUjARDYXJ0lJOUKYGUfZQojAhjYXJ0SXRlbZRdlChoCowIQ2FydEl0ZW2Uk5QpgZR9lCiMBGJvb2uUjBVkamFuZ28uZGIubW9kZWxzLmJhc2WUjA5tb2RlbF91bnBpY2tsZZSTlIwHdXNlcmFwcJSMBVRCb29rlIaUhZRSlH2UKIwLY2F0ZWdvcnlfaWSUSwGMBHBpY3OUjBJib29rX3ByaWNlL2RkMi5qcGeUjAxtYXJrZXRfcHJpY2WUR0BfwAAAAAAAjA5lZGl0ZXJfY29tbW9uZJROjAxwdXNoaXNoX3RpbWWUjAhkYXRldGltZZSMCGRhdGV0aW1llJOUQwoH4wQdEScOAAAAlIWUUpSMD19kamFuZ29fdmVyc2lvbpSMBTIuMC42lIwFc2FsZXOUS3GMCWJvb2tfbmFtZZSMJ+esrOWFq+acrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMB3N0b3JhZ2WUS2SMDmRhbmdkYW5nX3ByaWNllEdAWYAAAAAAAIwCaWSUSxOMBmFudGhvcpSMCeWImOaFiOaso5SMBl9zdGF0ZZRoFowKTW9kZWxTdGF0ZZSTlCmBlH2UKIwGYWRkaW5nlImMAmRilIwHZGVmYXVsdJR1YnVijAZhbW91bnSUjAEylIwGc3RhdHVzlEsBdWJoEimBlH2UKGgVaBhoGWgahpSFlFKUfZQojAtjYXRlZ29yeV9pZJRLKYwEcGljc5SMEmJvb2tfcHJpY2UvZGQxLmpwZ5SMDG1hcmtldF9wcmljZZRHQF5AAAAAAACMDmVkaXRlcl9jb21tb25klE6MDHB1c2hpc2hfdGltZZRoJ0MKB+MEHgMAAAAAAJSFlFKUjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuNpSMBXNhbGVzlEt5jAlib29rX25hbWWUjCrnrKzljYHkuInmnKzmlZnogrLliIbnsbvkuIvnmoTmlZnmnZDlm77kuaaUjAdzdG9yYWdllEtkjA5kYW5nZGFuZ19wcmljZZRHQFrAAAAAAACMAmlklEtFjAZhbnRob3KUjAbpqazkupGUjAZfc3RhdGWUaDcpgZR9lChoOoloO4wHZGVmYXVsdJR1YnViaD1LAWg/SwF1YmWMCnNhdmVfcHJpY2WUR0BQAAAAAAAAjAt0b3RhbF9wcmljZZRHQHNwAAAAAAB1YowEc3RhdJRoPowHb3JkZXJpZJSKBhcE7u9qAYwIY2FydEl0ZW2UaBB1Lg==', '2019-06-08 17:54:24');
INSERT INTO `django_session` VALUES ('1lun9qeiupwtdwxarcl3i9odifyt83uz', 'YmEzNGNiMzBlZmY1ZmNjNTYyYzZjYjI5MjIwMTI4NDkwM2NkNDM5ZTqABJViAQAAAAAAAH2UKIwGcmVfcHdklIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkdlRlWUlRbWxDSmZUJElXN25DLys3U3paN1lTUndyaXZXTzVuRjB4MUNEdTMxTUZZYVY0Z0ZEd1U9lIwHdXNlcnBhc5SMBzEyMzQ1NnGUjAt0eHRVc2VybmFtZZSMCzEyMzQ1Njc4OTExlIwEZXhpdJSMATGUjANmbGGUTowLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwEY29kZZSMBERrQzKUjAdyZV9uYW1llIwVbGkxMzAxODk5NjU2QHNpbmEuY29tlIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjANsb2eUjAsxMjM0NTY3ODkxMZSMB3VzZXJudW2UaA91Lg==', '2019-06-09 14:57:53');
INSERT INTO `django_session` VALUES ('1ouk1dezz1h5c693spdi8mdkfm2cx9lx', 'Nzg5M2U1YTUxOGI2MGU5NGYwYmEwNjNmYTkyZmFmNGMzZTNmM2I0NTqABJXAAAAAAAAAAH2UKIwEY29kZZSMBHRHcVaUjAt0eHRVc2VybmFtZZSMCzEyMzQ1Njc4OTExlIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjAVsb2dpbpSMAm9rlIwDbG9nlGgEjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjARleGl0lIwBMZR1Lg==', '2019-06-09 07:11:35');
INSERT INTO `django_session` VALUES ('25yzp4cyulbe1bfejxy9t5xrtie5lozf', 'ZDI3MzhiOGJmNzUwNTJjZGZhZjFhMmU3ZmJmOWRmMTEzYzBkNzVkOTqABJXMAAAAAAAAAH2UKIwDbG9nlIwLMTIzNDU2Nzg5MTGUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZSMBWxvZ2lulIwCb2uUjARjb2RllIwEaVQ3U5SMBGV4aXSUjAExlIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZR1Lg==', '2019-06-09 09:05:54');
INSERT INTO `django_session` VALUES ('2r9cnalberixxh2546lo905kf584biya', 'MDVhM2Y3Y2E5N2Y3YzI1ZmUwMjhmZGJjNTcwNTZlMzRmNzUxODA3Zjp7ImNvZGUiOiJYUWlNIiwidXNlcm51bSI6IjEyMzQ1Njc4OTExIiwibG9nIjoiMTUwMzc2OTM4ODUiLCJ1c2VycGFzIjoiMTIzNDU2In0=', '2019-06-06 07:12:53');
INSERT INTO `django_session` VALUES ('3j9sjs2528zgp77n9qvfxr3wdsnrhqm2', 'MzBiMzc3YzM4YTU5MzFlNGQ1NDA4MGYxOWQ1OWYyYWZmODVhMzQ0Yzp7ImxvZyI6IjE1MDM3NjkzODg1IiwiY29kZSI6IlhGamUiLCJsb2dpbiI6Im9rIn0=', '2019-06-05 16:04:17');
INSERT INTO `django_session` VALUES ('3nnzuohbg4ujclg3x1jl2amgywr28gsw', 'MDY5YThmNWI5YjAxYzUwODczYzE2ZjYxZTNkMmY3NjgyZWY3NzZjMDqABJXAAAAAAAAAAH2UKIwEY29kZZSMBEF1SUuUjARleGl0lIwBMZSMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZSMBWxvZ2lulIwCb2uUjANsb2eUjAsxMjM0NTY3ODkxMZSMC3R4dFVzZXJuYW1llGgKjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZR1Lg==', '2019-06-09 07:21:18');
INSERT INTO `django_session` VALUES ('4pao10iavzg40dxf2jfctgef5tfx5q9j', 'ZDJkMmQ1ZDI2NjY5MmQ1OWNmMTA2ZjE2NDMxNTM0MzYzMzE2NzgyZjqABJXMAAAAAAAAAH2UKIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMBGV4aXSUjAExlIwDbG9nlIwLMTIzNDU2Nzg5MTGUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZSMBGNvZGWUjARnQW95lIwFbG9naW6UjAJva5R1Lg==', '2019-06-09 08:50:28');
INSERT INTO `django_session` VALUES ('52v476428370ix93r0j6cljd4uv5rsry', 'MTRiZjM5ZGFjMDc5Mjg1MjU5ZTI5MDY5NDJmOWE4ZTZhYzk4ZmU1ZDqABJVTAwAAAAAAAH2UKIwEY2FydJSMDHNob3BhcHAuY2FydJSMBENhcnSUk5QpgZR9lCiMCGNhcnRJdGVtlF2UaAKMCENhcnRJdGVtlJOUKYGUfZQojAZhbW91bnSUSwGMBnN0YXR1c5RLAYwEYm9va5SMFWRqYW5nby5kYi5tb2RlbHMuYmFzZZSMDm1vZGVsX3VucGlja2xllJOUjAd1c2VyYXBwlIwFVEJvb2uUhpSFlFKUfZQojAJpZJRLE4wGYW50aG9ylIwJ5YiY5oWI5qyjlIwOZWRpdGVyX2NvbW1vbmSUTowJYm9va19uYW1llIwn56ys5YWr5pys5pWZ6IKy5YiG57G75LiL55qE5pWZ5p2Q5Zu+5LmmlIwFc2FsZXOUS3GMB3N0b3JhZ2WUS2SMBHBpY3OUjBJib29rX3ByaWNlL2RkMi5qcGeUjAtjYXRlZ29yeV9pZJRLAYwMbWFya2V0X3ByaWNllEdAX8AAAAAAAIwMcHVzaGlzaF90aW1llIwIZGF0ZXRpbWWUjAhkYXRldGltZZSTlEMKB+MEHREnDgAAAJSFlFKUjA5kYW5nZGFuZ19wcmljZZRHQFmAAAAAAACMD19kamFuZ29fdmVyc2lvbpSMBTIuMC42lIwGX3N0YXRllGgQjApNb2RlbFN0YXRllJOUKYGUfZQojAZhZGRpbmeUiYwCZGKUjAdkZWZhdWx0lHVidWJ1YmGMC3RvdGFsX3ByaWNllEdAWYAAAAAAAIwKc2F2ZV9wcmljZZRHQDkAAAAAAAB1YowEZmZmZpROjAhjYXJ0SXRlbZRoCIwHc19wcmljZZRHQDkAAAAAAACMBXBhc3N3lIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkQndXZVlCaUhlSEIwJG93UzZBWWJBTW9JdkRuKzhXMFgrTkZ3VWdycEcxd0Jna0RsVm1ZNzRlRW89lIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwLdHh0VXNlcm5hbWWUjBVsaTEzMDE4OTk2NTZAc2luYS5jb22UjANsb2eUjBVsaTEzMDE4OTk2NTZAc2luYS5jb22UjARjb2RllIwEOXhZTZSMBWxvZ2lulIwCb2uUjAd0X3ByaWNllEdAWYAAAAAAAHUu', '2019-06-10 07:39:07');
INSERT INTO `django_session` VALUES ('5dfi57hd8namemygjzyvwa1knzygyvoz', 'YTNhMWEwYjYyNDc1OGQxNDk5NGY4MjM0N2ExMWM0OTM5MDQ4NjcxNjqABJXMAAAAAAAAAH2UKIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjARjb2RllIwERmRnT5SMC3R4dFVzZXJuYW1llIwLMTIzNDU2Nzg5MTGUjANsb2eUjAsxMjM0NTY3ODkxMZSMBGV4aXSUjAExlIwFbG9naW6UjAJva5SMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZR1Lg==', '2019-06-09 07:24:33');
INSERT INTO `django_session` VALUES ('5ib57thk47zba0obk7zrlcajonjmfksi', 'NmMxYzJkYThhYWZkYzJiNDk3NjdmNjY1OTc0MzBiODIzMGIxZTg1YzqABJXAAAAAAAAAAH2UKIwFbG9naW6UjAJva5SMBGV4aXSUjAExlIwEY29kZZSMBEJzbUyUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZSMC3R4dFVzZXJuYW1llIwLMTIzNDU2Nzg5MTGUjANsb2eUaAx1Lg==', '2019-06-09 08:46:18');
INSERT INTO `django_session` VALUES ('5tx5z3gttii3hyxgzw5byznd2zjnlw9n', 'MmQ5NGU4MTIyZTg2NjAzYzYzNzU1ZDE4Njc0YWJlMjgwNDgzOTkzMzqABJV9AgAAAAAAAH2UKIwEY2FydJSMDHNob3BhcHAuY2FydJSMBENhcnSUk5QpgZR9lCiMCnNhdmVfcHJpY2WUR0A5AAAAAAAAjAhjYXJ0SXRlbZRdlGgCjAhDYXJ0SXRlbZSTlCmBlH2UKIwGc3RhdHVzlEsBjARib29rlIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMB3VzZXJhcHCUjAVUQm9va5SGlIWUUpR9lCiMBHBpY3OUjBJib29rX3ByaWNlL2RkMi5qcGeUjAxwdXNoaXNoX3RpbWWUjAhkYXRldGltZZSMCGRhdGV0aW1llJOUQwoH4wQdEScOAAAAlIWUUpSMBXNhbGVzlEtxjAdzdG9yYWdllEtkjA5lZGl0ZXJfY29tbW9uZJROjAZfc3RhdGWUaBCMCk1vZGVsU3RhdGWUk5QpgZR9lCiMBmFkZGluZ5SJjAJkYpSMB2RlZmF1bHSUdWKMDG1hcmtldF9wcmljZZRHQF/AAAAAAACMD19kamFuZ29fdmVyc2lvbpSMBTIuMC42lIwGYW50aG9ylIwJ5YiY5oWI5qyjlIwLY2F0ZWdvcnlfaWSUSwGMCWJvb2tfbmFtZZSMJ+esrOWFq+acrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMAmlklEsTjA5kYW5nZGFuZ19wcmljZZRHQFmAAAAAAAB1YowGYW1vdW50lEsBdWJhjAt0b3RhbF9wcmljZZRHQFmAAAAAAAB1YowHc19wcmljZZRHQDkAAAAAAACMB3RfcHJpY2WUR0BZgAAAAAAAjARleGl0lIwBMZRoCGgJdS4=', '2019-06-10 07:59:09');
INSERT INTO `django_session` VALUES ('62dui5o9h2b2t6xgda01jgwt8clooz8k', 'NTA3ODRhOTU4Y2RkNTBmMzQ4ZDg1OTU4NWI1MzE5OWEzNWU0NjEyNDqABJW4AAAAAAAAAH2UKIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMBGV4aXSUjAExlIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjARjb2RllIwESDNndJSMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZSMBWxvZ2lulIwCb2uUdS4=', '2019-06-09 06:49:06');
INSERT INTO `django_session` VALUES ('6fufyln70p9s15i5p5sibvsarn3eggst', 'MDI1Y2FiYWMxMDY3ZmIxMWY2MjU3ZmUxZWRhYzRlZGIyNzZhMzY0NDqABJW1AAAAAAAAAH2UKIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjANsb2eUjAsxMjM0NTY3ODkxMZSMC3R4dFVzZXJuYW1llGgGjARmZmZmlIwDY2FylIwEY29kZZSMBGNPa3aUdS4=', '2019-06-10 01:06:02');
INSERT INTO `django_session` VALUES ('6nuubzm8prhput2ozfywo8r6o3uq9rbq', 'OTNmOGJhZmMzNTBjYjZkZGUzNjFhNDA3ZGQyNjQxM2E2NDI2Y2ZiNTqABJVJAgAAAAAAAH2UjARjYXJ0lIwMc2hvcGFwcC5jYXJ0lIwEQ2FydJSTlCmBlH2UKIwIY2FydEl0ZW2UXZRoAowIQ2FydEl0ZW2Uk5QpgZR9lCiMBGJvb2uUjBVkamFuZ28uZGIubW9kZWxzLmJhc2WUjA5tb2RlbF91bnBpY2tsZZSTlIwHdXNlcmFwcJSMBVRCb29rlIaUhZRSlH2UKIwOZWRpdGVyX2NvbW1vbmSUTowOZGFuZ2RhbmdfcHJpY2WUR0BawAAAAAAAjARwaWNzlIwSYm9va19wcmljZS9kZDEuanBnlIwMcHVzaGlzaF90aW1llIwIZGF0ZXRpbWWUjAhkYXRldGltZZSTlEMKB+MEHgMAAAAAAJSFlFKUjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuNpSMCWJvb2tfbmFtZZSMKuesrOWNgeS4ieacrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMB3N0b3JhZ2WUS2SMAmlklEtFjAZhbnRob3KUjAbpqazkupGUjAxtYXJrZXRfcHJpY2WUR0BeQAAAAAAAjAZfc3RhdGWUaA6MCk1vZGVsU3RhdGWUk5QpgZR9lCiMBmFkZGluZ5SJjAJkYpSMB2RlZmF1bHSUdWKMBXNhbGVzlEt5jAtjYXRlZ29yeV9pZJRLKXVijAZhbW91bnSUjAE0lIwGc3RhdHVzlEsBdWJhjAt0b3RhbF9wcmljZZRHQHrAAAAAAACMCnNhdmVfcHJpY2WUR0BMAAAAAAAAdWJzLg==', '2019-06-07 15:14:31');
INSERT INTO `django_session` VALUES ('6z5jrr0zhyszg1iqq5ae3a1b1pky0hbb', 'YjEyZWJkMmI0OGRlYTcyYjFmMTI2YjYwNGVmZTEyNWYyZTJmZDNlZDqABJXMAAAAAAAAAH2UKIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwEZXhpdJSMATGUjARjb2RllIwEcFoyepSMA2xvZ5SMCzEyMzQ1Njc4OTExlIwFbG9naW6UjAJva5SMBXBhc3N3lIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkRnBzeFBETFZDQ0N5JEt3a3lESXBPVGhubmRCWHJSMDBBaTBRL1hUWHFyUmVDbHZqKy96RmQ2RDA9lIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZR1Lg==', '2019-06-09 15:09:50');
INSERT INTO `django_session` VALUES ('731s739e47eucz11j2nw1za3hu3pad9q', 'YTg4OGUwMTNlOGVlMmRlYmZkNWIzMDcwZjMxNzI0NThmMGFjYzVhNDqABJVvAwAAAAAAAH2UKIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjARjb2RllIwEazVtcZSMB3NfcHJpY2WUR0A5AAAAAAAAjANsb2eUjAsxMjM0NTY3ODkxMZSMBWxvZ2lulIwCb2uUjAdvcmRlcmlklIoGM9PZ9GoBjAdqaWVzdWFulIwBMZSMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZSMCGNhcnRJdGVtlF2UjAxzaG9wYXBwLmNhcnSUjAhDYXJ0SXRlbZSTlCmBlH2UKIwGc3RhdHVzlEsBjAZhbW91bnSUSwGMBGJvb2uUjBVkamFuZ28uZGIubW9kZWxzLmJhc2WUjA5tb2RlbF91bnBpY2tsZZSTlIwHdXNlcmFwcJSMBVRCb29rlIaUhZRSlH2UKIwMcHVzaGlzaF90aW1llIwIZGF0ZXRpbWWUjAhkYXRldGltZZSTlEMKB+MEHREnDgAAAJSFlFKUjAZfc3RhdGWUaBmMCk1vZGVsU3RhdGWUk5QpgZR9lCiMBmFkZGluZ5SJjAJkYpSMB2RlZmF1bHSUdWKMB3N0b3JhZ2WUS2SMAmlklEsTjARwaWNzlIwSYm9va19wcmljZS9kZDIuanBnlIwGYW50aG9ylIwJ5YiY5oWI5qyjlIwJYm9va19uYW1llIwn56ys5YWr5pys5pWZ6IKy5YiG57G75LiL55qE5pWZ5p2Q5Zu+5LmmlIwPX2RqYW5nb192ZXJzaW9ulIwFMi4wLjaUjAVzYWxlc5RLcYwOZWRpdGVyX2NvbW1vbmSUTowLY2F0ZWdvcnlfaWSUSwGMDG1hcmtldF9wcmljZZRHQF/AAAAAAACMDmRhbmdkYW5nX3ByaWNllEdAWYAAAAAAAHVidWJhjAd0X3ByaWNllEdAWYAAAAAAAIwEbmFtZZSMCeadjumjnumYs5SMBGV4aXSUaAyMC3R4dFVzZXJuYW1llGgHjARjYXJ0lGgRjARDYXJ0lJOUKYGUfZQojAt0b3RhbF9wcmljZZRHQFmAAAAAAACMCnNhdmVfcHJpY2WUR0A5AAAAAAAAjAhjYXJ0SXRlbZRoEHVijARmZmZmlE51Lg==', '2019-06-09 15:58:19');
INSERT INTO `django_session` VALUES ('7f4kon1x7ugdkwfgxshvonqv24lr0r52', 'OTEwYWQ3NTQ4NzgxYTg3N2Y5ODI5YzA5MDEyOTQyNjUzMzgyNmYxZjqABJXMAAAAAAAAAH2UKIwEY29kZZSMBElYMnOUjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMBGV4aXSUjAExlIwFbG9naW6UjAJva5SMC3R4dFVzZXJuYW1llIwLMTIzNDU2Nzg5MTGUjANsb2eUjAsxMjM0NTY3ODkxMZR1Lg==', '2019-06-09 08:52:28');
INSERT INTO `django_session` VALUES ('8krom437s3gx3fjupwqj6c3aao04jdc7', 'ZjY5ZDQzNWQ1NTZiYjQyYWY4Y2FkOTZkNDk5NWM5NWY3NGI2NjhhZTqABJWtAAAAAAAAAH2UKIwEZmZmZpSMA2NhcpSMBXBhc3N3lIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkRnBzeFBETFZDQ0N5JEt3a3lESXBPVGhubmRCWHJSMDBBaTBRL1hUWHFyUmVDbHZqKy96RmQ2RDA9lIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMBGNvZGWUjARodDVulHUu', '2019-06-09 15:12:40');
INSERT INTO `django_session` VALUES ('9e9ezqo6hnab90ba0ecrlsvadufxubh3', 'ZWY5MjEyNWQ4OGZlYjY0YjYzNjIzNjgwZDAyY2E3NmVhZmRhMjU2ZjqABJU1AwAAAAAAAH2UKIwIY2FydEl0ZW2UXZSMDHNob3BhcHAuY2FydJSMCENhcnRJdGVtlJOUKYGUfZQojAZhbW91bnSUSwGMBGJvb2uUjBVkamFuZ28uZGIubW9kZWxzLmJhc2WUjA5tb2RlbF91bnBpY2tsZZSTlIwHdXNlcmFwcJSMBVRCb29rlIaUhZRSlH2UKIwJYm9va19uYW1llIwn56ys5LiD5pys5pWZ6IKy5YiG57G75LiL55qE5pWZ5p2Q5Zu+5LmmlIwOZWRpdGVyX2NvbW1vbmSUTowPX2RqYW5nb192ZXJzaW9ulIwFMi4wLjaUjARwaWNzlIwSYm9va19wcmljZS9kZDEuanBnlIwOZGFuZ2RhbmdfcHJpY2WUR0BawAAAAAAAjAtjYXRlZ29yeV9pZJRLA4wMbWFya2V0X3ByaWNllEdAX8AAAAAAAIwCaWSUSxKMBmFudGhvcpSMBumprOS6kZSMDHB1c2hpc2hfdGltZZSMCGRhdGV0aW1llIwIZGF0ZXRpbWWUk5RDCgfjBB4RJwsAAACUhZRSlIwFc2FsZXOUS3CMB3N0b3JhZ2WUS2SMBl9zdGF0ZZRoCowKTW9kZWxTdGF0ZZSTlCmBlH2UKIwGYWRkaW5nlImMAmRilIwHZGVmYXVsdJR1YnVijAZzdGF0dXOUSwF1YmGMBGNvZGWUjARNdURzlIwHdF9wcmljZZRHQFrAAAAAAACMB3NfcHJpY2WUR0A0AAAAAAAAjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMBGZmZmaUjANjYXKUjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjARjYXJ0lGgDjARDYXJ0lJOUKYGUfZQojAt0b3RhbF9wcmljZZRHQFrAAAAAAACMCGNhcnRJdGVtlGgCjApzYXZlX3ByaWNllEdANAAAAAAAAHVijANsb2eUjAsxMjM0NTY3ODkxMZSMC3R4dFVzZXJuYW1llGhFjAVsb2dpbpSMAm9rlHUu', '2019-06-10 00:53:59');
INSERT INTO `django_session` VALUES ('9vsssw1mwrzctv9ny8cxwfzdk5pzcmv0', 'ZDAxZmU1NDc3NDEyZDMwODUyYzUzNzUzOWY4OTA4MTRmZDNlYWU3NDqABJUVBAAAAAAAAH2UKIwHdF9wcmljZZRHQGmgAAAAAACMBHN0YXSUjAEylIwFbG9naW6UjAJva5SMCGNhcnRJdGVtlF2UKIwMc2hvcGFwcC5jYXJ0lIwIQ2FydEl0ZW2Uk5QpgZR9lCiMBGJvb2uUjBVkamFuZ28uZGIubW9kZWxzLmJhc2WUjA5tb2RlbF91bnBpY2tsZZSTlIwHdXNlcmFwcJSMBVRCb29rlIaUhZRSlH2UKIwHc3RvcmFnZZRLZIwOZWRpdGVyX2NvbW1vbmSUTowMbWFya2V0X3ByaWNllEdAZgAAAAAAAIwEcGljc5SMEmJvb2tfcHJpY2UvZGQzLmpwZ5SMD19kamFuZ29fdmVyc2lvbpSMBTIuMC42lIwLY2F0ZWdvcnlfaWSUSz+MBXNhbGVzlE3qA4wCaWSUS1uMBl9zdGF0ZZRoDowKTW9kZWxTdGF0ZZSTlCmBlH2UKIwCZGKUjAdkZWZhdWx0lIwGYWRkaW5nlIl1YowJYm9va19uYW1llIwq56ys5Y2B5LqU5pys5pWZ6IKy5YiG57G75LiL55qE5pWZ5p2Q5Zu+5LmmlIwMcHVzaGlzaF90aW1llIwIZGF0ZXRpbWWUjAhkYXRldGltZZSTlEMKB+MEHgAAAAAAAJSFlFKUjA5kYW5nZGFuZ19wcmljZZRHQFnAAAAAAACMBmFudGhvcpSMCeWImOaFiOaso5R1YowGYW1vdW50lEsBjAZzdGF0dXOUSwF1YmgKKYGUfZQoaA1oEGgRaBKGlIWUUpR9lCiMB3N0b3JhZ2WUS2SMDmVkaXRlcl9jb21tb25klE6MDG1hcmtldF9wcmljZZRHQF/AAAAAAACMBHBpY3OUjBJib29rX3ByaWNlL2RkMi5qcGeUjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuNpSMC2NhdGVnb3J5X2lklEsBjAVzYWxlc5RLcYwCaWSUSxOMBl9zdGF0ZZRoIymBlH2UKGgmjAdkZWZhdWx0lGgoiXVijAlib29rX25hbWWUjCfnrKzlhavmnKzmlZnogrLliIbnsbvkuIvnmoTmlZnmnZDlm77kuaaUjAxwdXNoaXNoX3RpbWWUaC5DCgfjBB0RJw4AAACUhZRSlIwOZGFuZ2RhbmdfcHJpY2WUR0BZgAAAAAAAjAZhbnRob3KUjAnliJjmhYjmrKOUdWJoNUsBaDZLAXViZYwHc19wcmljZZRHQFiAAAAAAACMBGNvZGWUjARQRWhWlIwDbG9nlIwLMTUwMzc2OTM4ODWUjARjYXJ0lGgIjARDYXJ0lJOUKYGUfZQojAt0b3RhbF9wcmljZZRHQGmgAAAAAACMCnNhdmVfcHJpY2WUR0BYgAAAAAAAjAhjYXJ0SXRlbZRoB3VidS4=', '2019-06-08 18:10:49');
INSERT INTO `django_session` VALUES ('ane6j1pi9dvi621g00ym7pbaw5loud1t', 'N2FmYWE5NmMxZGEyZGYyMzUzZmEyYWI5ZjY5MGNmM2U5NGQyNWZjNDqABJXMAAAAAAAAAH2UKIwFbG9naW6UjAJva5SMBGV4aXSUjAExlIwEY29kZZSMBGtqdUaUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZSMC3R4dFVzZXJuYW1llIwLMTIzNDU2Nzg5MTGUjANsb2eUjAsxMjM0NTY3ODkxMZR1Lg==', '2019-06-09 08:47:11');
INSERT INTO `django_session` VALUES ('b2jarr20kk6glyn5rtnfwu1jfmwdn1b8', 'N2FmOWJhOTgyMzg5ZjViNTY2NjAyNWRhZDQzYmRlMDgyZDdmNTI3MDqABJVKAwAAAAAAAH2UKIwIY2FydEl0ZW2UXZSMDHNob3BhcHAuY2FydJSMCENhcnRJdGVtlJOUKYGUfZQojAZhbW91bnSUSwGMBnN0YXR1c5RLAYwEYm9va5SMFWRqYW5nby5kYi5tb2RlbHMuYmFzZZSMDm1vZGVsX3VucGlja2xllJOUjAd1c2VyYXBwlIwFVEJvb2uUhpSFlFKUfZQojAVzYWxlc5RLcYwLY2F0ZWdvcnlfaWSUSwGMBl9zdGF0ZZRoC4wKTW9kZWxTdGF0ZZSTlCmBlH2UKIwGYWRkaW5nlImMAmRilIwHZGVmYXVsdJR1YowCaWSUSxOMBHBpY3OUjBJib29rX3ByaWNlL2RkMi5qcGeUjAxtYXJrZXRfcHJpY2WUR0BfwAAAAAAAjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuNpSMDmVkaXRlcl9jb21tb25klE6MDHB1c2hpc2hfdGltZZSMCGRhdGV0aW1llIwIZGF0ZXRpbWWUk5RDCgfjBB0RJw4AAACUhZRSlIwHc3RvcmFnZZRLZIwOZGFuZ2RhbmdfcHJpY2WUR0BZgAAAAAAAjAlib29rX25hbWWUjCfnrKzlhavmnKzmlZnogrLliIbnsbvkuIvnmoTmlZnmnZDlm77kuaaUjAZhbnRob3KUjAnliJjmhYjmrKOUdWJ1YmGMBGNvZGWUjARQUzB1lIwFbG9naW6UjAJva5SMBGV4aXSUjAExlIwHc19wcmljZZRHQDkAAAAAAACMBGNhcnSUaAOMBENhcnSUk5QpgZR9lCiMCGNhcnRJdGVtlGgCjAt0b3RhbF9wcmljZZRHQFmAAAAAAACMCnNhdmVfcHJpY2WUR0A5AAAAAAAAdWKMA2xvZ5SMCzEyMzQ1Njc4OTExlIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwLdHh0VXNlcm5hbWWUaEKMB3RfcHJpY2WUR0BZgAAAAAAAjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMB2ppZXN1YW6UaDeMBGZmZmaUTnUu', '2019-06-10 00:47:49');
INSERT INTO `django_session` VALUES ('bh91uawfddtha1oud5mbagng8bgzqz07', 'YmVkNDUyNTc1MDFkN2RlOGI5OGZkM2I3YzJjNzE2ZjkyMTQ3MzJlMDqABJWzAAAAAAAAAH2UKIwEZXhpdJSMATGUjAt0eHRVc2VybmFtZZSMCzEyMzQ1Njc4OTExlIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjANsb2eUaASMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZSMBGNvZGWUjARZTWFFlHUu', '2019-06-09 06:36:20');
INSERT INTO `django_session` VALUES ('bm3e6cq6078kkcwjuzc7kgyazopmbats', 'YjQ2ZTE2ZDYzMDE1YjQ5MzQxNzQ2ODRhN2RkNzM5MDdmZjk0ODVhMzqABJVKAwAAAAAAAH2UKIwEY2FydJSMDHNob3BhcHAuY2FydJSMBENhcnSUk5QpgZR9lCiMCnNhdmVfcHJpY2WUR0A5AAAAAAAAjAt0b3RhbF9wcmljZZRHQFmAAAAAAACMCGNhcnRJdGVtlF2UaAKMCENhcnRJdGVtlJOUKYGUfZQojAZhbW91bnSUSwGMBGJvb2uUjBVkamFuZ28uZGIubW9kZWxzLmJhc2WUjA5tb2RlbF91bnBpY2tsZZSTlIwHdXNlcmFwcJSMBVRCb29rlIaUhZRSlH2UKIwPX2RqYW5nb192ZXJzaW9ulIwFMi4wLjaUjAZhbnRob3KUjAnliJjmhYjmrKOUjAxwdXNoaXNoX3RpbWWUjAhkYXRldGltZZSMCGRhdGV0aW1llJOUQwoH4wQdEScOAAAAlIWUUpSMCWJvb2tfbmFtZZSMJ+esrOWFq+acrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMDmRhbmdkYW5nX3ByaWNllEdAWYAAAAAAAIwEcGljc5SMEmJvb2tfcHJpY2UvZGQyLmpwZ5SMDG1hcmtldF9wcmljZZRHQF/AAAAAAACMBl9zdGF0ZZRoEYwKTW9kZWxTdGF0ZZSTlCmBlH2UKIwCZGKUjAdkZWZhdWx0lIwGYWRkaW5nlIl1YowHc3RvcmFnZZRLZIwFc2FsZXOUS3GMC2NhdGVnb3J5X2lklEsBjA5lZGl0ZXJfY29tbW9uZJROjAJpZJRLE3VijAZzdGF0dXOUSwF1YmF1YowHamllc3VhbpSMATGUjAdzX3ByaWNllEdAOQAAAAAAAIwHdF9wcmljZZRHQFmAAAAAAACMBGNvZGWUjARHVEVklIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMBXBhc3N3lIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkRnBzeFBETFZDQ0N5JEt3a3lESXBPVGhubmRCWHJSMDBBaTBRL1hUWHFyUmVDbHZqKy96RmQ2RDA9lIwEZmZmZpROjARleGl0lGg6jAVsb2dpbpSMAm9rlIwIY2FydEl0ZW2UaAqMA2xvZ5RoQnUu', '2019-06-10 00:46:00');
INSERT INTO `django_session` VALUES ('cf674tuotwd5tli7jd17ocdedr02cdzc', 'OWNlYjQ3NzRkMDc0ZjAxOTMyNjdkYWYyNzBhY2RkM2U5OTAyZmEzZDqABJXOAAAAAAAAAH2UKIwDbG9nlIwLMTIzNDU2Nzg5MTGUjAt0eHRVc2VybmFtZZSMCzEyMzQ1Njc4OTExlIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjARjb2RllIwEOGltRpSMBWxvZ2lulIwCb2uUjARmZmZmlIwDY2FylIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlHUu', '2019-06-09 15:13:58');
INSERT INTO `django_session` VALUES ('cqgg0smxy9d79vonjg44jhssjql7k8i7', 'OTc2YmE0MDVjNjcwOTI4YTZhNjhlYjA0MzE2NGEzZDMxY2FhMWJjMjqABJWoAAAAAAAAAH2UKIwDbG9nlIwLMTIzNDU2Nzg5MTGUjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjARjb2RllIwEZWE4SJSMC3R4dFVzZXJuYW1llGgCjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZR1Lg==', '2019-06-09 06:30:53');
INSERT INTO `django_session` VALUES ('dhv6j0nw50b885ws397oe9aq5qq33jrj', 'ZGY1MzczMWZkYWU4ZWYzOTgzMjYzNzI0YzJmN2QyMDM5NzJhZDMzMzqABJXMAAAAAAAAAH2UKIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMBGV4aXSUjAExlIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwEY29kZZSMBDlKMjOUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMA2xvZ5SMCzEyMzQ1Njc4OTExlIwFbG9naW6UjAJva5R1Lg==', '2019-06-09 14:58:58');
INSERT INTO `django_session` VALUES ('e2qwmu5luudvr68wzhal1tem95s4p0vv', 'MTk5NjZjMjg0NTI2OWE3ODBmOWY5MjU0Mjc1MDBlNDFkMGI3Mzk4Mzp7ImxvZ2luIjoib2siLCJsb2ciOiIxNTAzNzY5Mzg4NSIsImNvZGUiOiJSeEVIIn0=', '2019-06-07 12:00:02');
INSERT INTO `django_session` VALUES ('eolem7e0pmxfg70m7564nsvgyb5w934x', 'ZTUwMjA2NWUwNDE3NjUzNjVmM2I5NDc4MzhlMDNiZDA2ZDU3NDY1NjqABJUnAAAAAAAAAH2UKIwDbG9nlIwLMTIzNDU2Nzg5MTGUjARjb2RllIwEUG00cZR1Lg==', '2019-06-09 07:37:04');
INSERT INTO `django_session` VALUES ('fy124ohe8bgsovxruoxeil6n271qf4fd', 'ZTA1OTgyMWFhZDlhM2Y2YzViODk2YjU4NDVkZmNmMDg4ODhlMGQ0NzqABJW0AAAAAAAAAH2UKIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwEY29kZZSMBGNuOWuUjAVsb2dpbpSMAm9rlIwDbG9nlE6MBXBhc3N3lIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkRnBzeFBETFZDQ0N5JEt3a3lESXBPVGhubmRCWHJSMDBBaTBRL1hUWHFyUmVDbHZqKy96RmQ2RDA9lIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZR1Lg==', '2019-06-09 06:27:20');
INSERT INTO `django_session` VALUES ('g46z52kpcfxxi0de0358ombpzj658elb', 'OGJhNDc4MjZlZWViZWZiMGMxYjEwMTBiMzM1MWNlZTFiMTliZDE1YTqABJWzAAAAAAAAAH2UKIwEZXhpdJSMATGUjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMBGNvZGWUjAQ3ODBilIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMA2xvZ5RoCnUu', '2019-06-09 06:51:36');
INSERT INTO `django_session` VALUES ('hffhiewoour008akdvvvkfp8wigrzrny', 'NjViYzU4ZmQwYTIyMWIwOWNhODZiNzg3NjAyMGIwN2FmZmVmNjQ4MTqABJXAAAAAAAAAAH2UKIwEZXhpdJSMATGUjARjb2RllIwEMlpla5SMC3R4dFVzZXJuYW1llIwLMTIzNDU2Nzg5MTGUjAVsb2dpbpSMAm9rlIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwDbG9nlGgGjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZR1Lg==', '2019-06-09 07:15:07');
INSERT INTO `django_session` VALUES ('hqugc9bbsxfy9wzs2wrponopx51n5d9t', 'MTVjOThlOTQ1MzE2NzVhZGIxNmIxMzA5ZjRiMTQ0ZjZjODdiMTczZTqABJW4AAAAAAAAAH2UKIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMBGV4aXSUjAExlIwFbG9naW6UjAJva5SMBXBhc3N3lIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkRnBzeFBETFZDQ0N5JEt3a3lESXBPVGhubmRCWHJSMDBBaTBRL1hUWHFyUmVDbHZqKy96RmQ2RDA9lIwEY29kZZSMBElSNWmUjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUdS4=', '2019-06-09 06:49:37');
INSERT INTO `django_session` VALUES ('ipso2mp562y4uhhtl7ijykq4n1lli23r', 'MDY3MjAwMGJjMTE3MWNhZTdiYzE0ZTk4Yjk3YzNkYmVlMjdkMjIyYzqABJXMAAAAAAAAAH2UKIwFbG9naW6UjAJva5SMBGNvZGWUjAR5dEk0lIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjANsb2eUjAsxMjM0NTY3ODkxMZSMBGV4aXSUjAExlIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZR1Lg==', '2019-06-09 15:03:36');
INSERT INTO `django_session` VALUES ('ipt8i9pr2b1pl98n0chc3youae6ow87i', 'YzY2NDY3NDM5YWQwOWVkZDcyOTE2NzcxMWQ0MThhMzUwYzIxNzkwNzqABJXAAAAAAAAAAH2UKIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwEY29kZZSMBHp0TDOUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMBWxvZ2lulIwCb2uUjARleGl0lIwBMZSMC3R4dFVzZXJuYW1llIwLMTIzNDU2Nzg5MTGUjANsb2eUaAx1Lg==', '2019-06-09 07:01:15');
INSERT INTO `django_session` VALUES ('j8xfdf0yw4nc26nhx8dpjhd107kezojn', 'NTc3MmIzZGMyMzhkNTkxMDRkZDM0NGM3MzVmYjQ0MDk4N2VmOTE3ZDp7ImxvZ2luIjoib2siLCJjb2RlIjoid1pFdSJ9', '2019-06-05 16:01:25');
INSERT INTO `django_session` VALUES ('jugrzxabuq93jkbsvduu9tbkn9xhdrlh', 'Y2E2ZjQwMmQwN2EzMGVlNGU5YWFjYzM3YjU5MTQ1Yjg2YmMzNDk2ZDqABJUnAwAAAAAAAH2UjARjYXJ0lIwMc2hvcGFwcC5jYXJ0lIwEQ2FydJSTlCmBlH2UKIwLdG90YWxfcHJpY2WUR0BqQAAAAAAAjAhjYXJ0SXRlbZRdlChoAowIQ2FydEl0ZW2Uk5QpgZR9lCiMBmFtb3VudJSMATGUjARib29rlIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMB3VzZXJhcHCUjAVUQm9va5SGlIWUUpR9lCiMAmlklEtFjAdzdG9yYWdllEtkjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuNpSMCWJvb2tfbmFtZZSMKuesrOWNgeS4ieacrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMDHB1c2hpc2hfdGltZZSMCGRhdGV0aW1llIwIZGF0ZXRpbWWUk5RDCgfjBB4DAAAAAACUhZRSlIwGX3N0YXRllGgRjApNb2RlbFN0YXRllJOUKYGUfZQojAJkYpSMB2RlZmF1bHSUjAZhZGRpbmeUiXVijAZhbnRob3KUjAbpqazkupGUjAtjYXRlZ29yeV9pZJRLKYwEcGljc5SMEmJvb2tfcHJpY2UvZGQxLmpwZ5SMDmVkaXRlcl9jb21tb25klE6MDG1hcmtldF9wcmljZZRHQF5AAAAAAACMBXNhbGVzlEt5jA5kYW5nZGFuZ19wcmljZZRHQFrAAAAAAAB1YowGc3RhdHVzlEsBdWJoCymBlH2UKGgOSwFoEGgTaBRoFYaUhZRSlH2UKGgaS1toG0tkaByMBTIuMC42lGgejCrnrKzljYHkupTmnKzmlZnogrLliIbnsbvkuIvnmoTmlZnmnZDlm77kuaaUaCBoI0MKB+MEHgAAAAAAAJSFlFKUaCdoKSmBlH2UKGgsjAdkZWZhdWx0lGguiXViaC+MCeWImOaFiOaso5RoMUs/aDKMEmJvb2tfcHJpY2UvZGQzLmpwZ5RoNE5oNUdAZgAAAAAAAGg2TeoDaDdHQFnAAAAAAAB1Ymg4SwF1YmWMCnNhdmVfcHJpY2WUR0BVwAAAAAAAdWJzLg==', '2019-06-07 15:26:03');
INSERT INTO `django_session` VALUES ('korywmeyajw0y89c2zektfoxo1xor5q0', 'NTdhNDNjNWFhYjRlZDc2NGM4OWFiMDllYWMzZjUxNmZiMmE5ODNiYTqABJXMAAAAAAAAAH2UKIwEZXhpdJSMATGUjARjb2RllIwEWFFEdZSMBWxvZ2lulIwCb2uUjAt0eHRVc2VybmFtZZSMCzEyMzQ1Njc4OTExlIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjANsb2eUjAsxMjM0NTY3ODkxMZR1Lg==', '2019-06-09 07:26:51');
INSERT INTO `django_session` VALUES ('krbce564qvjqurp7ltdro1emd9wq7mtx', 'ODhlMDg4NmY3YjdlZWE2MGRhN2I3YTc2YjM0NWUxN2FhODdjYTI3NDqABJXMAAAAAAAAAH2UKIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZSMA2xvZ5SMCzEyMzQ1Njc4OTExlIwEY29kZZSMBGhVdDGUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMBWxvZ2lulIwCb2uUjARleGl0lIwBMZR1Lg==', '2019-06-09 07:31:53');
INSERT INTO `django_session` VALUES ('kw1p97ki3go76kx8cq3wfr9vomr402u8', 'NTAwYzk0NzE1NjBiOTYyYWM0NTUzMWUxODkxNTRkNDBmOTllNGY4NzqABJWzAAAAAAAAAH2UKIwEZXhpdJSMATGUjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjARjb2RllIwEbmpCSpSMBXBhc3N3lIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkRnBzeFBETFZDQ0N5JEt3a3lESXBPVGhubmRCWHJSMDBBaTBRL1hUWHFyUmVDbHZqKy96RmQ2RDA9lIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMA2xvZ5RoCnUu', '2019-06-09 06:39:23');
INSERT INTO `django_session` VALUES ('lgn4jigz8az94ptk6gf1n7cx7hcywbj1', 'YjZhZjQwZjZiN2Y3NDdlZWViZjYxYzA3MTc4OGZmNGFjMWFiOGM0NDqABJUSAAAAAAAAAH2UjARjb2RllIwEM29qdpRzLg==', '2019-06-09 08:07:54');
INSERT INTO `django_session` VALUES ('lkvr6j9m0hzqactmd297acnxupc2kxjf', 'NWNhNTRiM2ZlMDk4NTNiNGE3YWVkMjIzMGQ5MGM1MDk2NGE3Zjc5YzqABJXMAAAAAAAAAH2UKIwFbG9naW6UjAJva5SMBGV4aXSUjAExlIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjANsb2eUjAsxMjM0NTY3ODkxMZSMC3R4dFVzZXJuYW1llIwLMTIzNDU2Nzg5MTGUjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjARjb2RllIwEbVdzOJR1Lg==', '2019-06-09 08:59:29');
INSERT INTO `django_session` VALUES ('lme4oci4p6nry681xnv01kwm6u16773z', 'ZTQ2ZDExN2ExODk1ZWIxNTc4Y2Y5ZDgwMTFhNzhkNmRmNjVjOGU5OTqABJVEAwAAAAAAAH2UKIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwEY29kZZSMBFl6YXmUjAd0X3ByaWNllEdAWsAAAAAAAIwHc19wcmljZZRHQCwAAAAAAACMBXBhc3N3lIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkRnBzeFBETFZDQ0N5JEt3a3lESXBPVGhubmRCWHJSMDBBaTBRL1hUWHFyUmVDbHZqKy96RmQ2RDA9lIwEZmZmZpSMA2NhcpSMCGNhcnRJdGVtlF2UjAxzaG9wYXBwLmNhcnSUjAhDYXJ0SXRlbZSTlCmBlH2UKIwGYW1vdW50lEsBjARib29rlIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMB3VzZXJhcHCUjAVUQm9va5SGlIWUUpR9lCiMCWJvb2tfbmFtZZSMKuesrOWNgeS4ieacrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMDmVkaXRlcl9jb21tb25klE6MD19kamFuZ29fdmVyc2lvbpSMBTIuMC42lIwEcGljc5SMEmJvb2tfcHJpY2UvZGQxLmpwZ5SMDmRhbmdkYW5nX3ByaWNllEdAWsAAAAAAAIwLY2F0ZWdvcnlfaWSUSymMDG1hcmtldF9wcmljZZRHQF5AAAAAAACMAmlklEtFjAZhbnRob3KUjAbpqazkupGUjAxwdXNoaXNoX3RpbWWUjAhkYXRldGltZZSMCGRhdGV0aW1llJOUQwoH4wQeAwAAAAAAlIWUUpSMBXNhbGVzlEt5jAdzdG9yYWdllEtkjAZfc3RhdGWUaBSMCk1vZGVsU3RhdGWUk5QpgZR9lCiMBmFkZGluZ5SJjAJkYpSMB2RlZmF1bHSUdWJ1YowGc3RhdHVzlEsBdWJhjARjYXJ0lGgNjARDYXJ0lJOUKYGUfZQojAt0b3RhbF9wcmljZZRHQFrAAAAAAACMCGNhcnRJdGVtlGgMjApzYXZlX3ByaWNllEdALAAAAAAAAHVijANsb2eUjAsxMjM0NTY3ODkxMZSMC3R4dFVzZXJuYW1llIwLMTIzNDU2Nzg5MTGUjAVsb2dpbpSMAm9rlHUu', '2019-06-10 00:58:52');
INSERT INTO `django_session` VALUES ('lrnciagjpiooyu7pzb96zqszkkmpx977', 'ZWVmYWRmYjU1ZGRiY2NiNzg4M2FiM2E1ZmRkNzQ2ZTI1ZGIwMzkxNzqABJUSAAAAAAAAAH2UjARjb2RllIwEcjA5V5RzLg==', '2019-06-09 07:24:50');
INSERT INTO `django_session` VALUES ('m30o9lzmnrlm2vlemeq4mjzhx3ant6ef', 'YjBlN2VmYmE2MjdlMzVlZTRjZDQ4ZjkwZDFjNDc5OGFkZjRhNmVmNzqABJXMAAAAAAAAAH2UKIwFbG9naW6UjAJva5SMC3R4dFVzZXJuYW1llIwLMTIzNDU2Nzg5MTGUjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjANsb2eUjAsxMjM0NTY3ODkxMZSMBGNvZGWUjAREaXVHlIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjARleGl0lIwBMZR1Lg==', '2019-06-09 08:56:09');
INSERT INTO `django_session` VALUES ('mhawlpj52f1j8al6ukojvz0gx27ps4mp', 'MTM1Mzc5YzdmNDAwMjViYzk2OWFlODhlYjc5NWM2YzBjMzZmZjllMzqABJXGAAAAAAAAAH2UKIwFbG9naW6UjAJva5SMBnJlX3B3ZJSMTnBia2RmMl9zaGEyNTYkMTAwMDAwJGZzSGp0alE2QW5iRiRJVlZBRkFnVDZ3MDZ1L1lWOUtLaUZER1JCWEtWNWxkdHhtUEd4Wk9SYm5zPZSMA2xvZ5SMCzEzNTI2OTQ2NDUzlIwHdXNlcm51bZRoBowHcmVfbmFtZZRoBowDZmxhlIwDY2FylIwEY29kZZSMBFd5SmqUjAd1c2VycGFzlIwHMTIzNDU2cZR1Lg==', '2019-06-09 08:43:38');
INSERT INTO `django_session` VALUES ('mtoy9ovx62wyy6uvs90s17em2feyb6rb', 'NzAxNzU1ZjUwMDgxYjFjOTI5Zjg3MjkwM2JlNmMxMzM3YzVkMTQ1NDqABJW0AAAAAAAAAH2UKIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMBXBhc3N3lIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkRnBzeFBETFZDQ0N5JEt3a3lESXBPVGhubmRCWHJSMDBBaTBRL1hUWHFyUmVDbHZqKy96RmQ2RDA9lIwFbG9naW6UjAJva5SMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZSMA2xvZ5ROjARjb2RllIwEYmZSTJR1Lg==', '2019-06-09 06:25:58');
INSERT INTO `django_session` VALUES ('nzrpex7ji4htrqmkua2sorq8pg2mc7hv', 'MjdiNTc4YTJhMzM5NmZlNjhiN2I1ZjMwOGQ2ZTU5YjYxMzlmYjJhZjqABJXAAAAAAAAAAH2UKIwDbG9nlIwLMTIzNDU2Nzg5MTGUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZSMC3R4dFVzZXJuYW1llGgCjARjb2RllIwEMlNIUJSMBGV4aXSUjAExlIwFbG9naW6UjAJva5R1Lg==', '2019-06-09 07:18:52');
INSERT INTO `django_session` VALUES ('ooj4qrhyc71e3yp64dmhbyk45os66zv2', 'YTE4ZjFlMzQ1MWE1ZDQ5MjEyOThiMDUxMzI3MTQ2ODM1ZTM3NmQ5YjqABJUgBAAAAAAAAH2UKIwEY29kZZSMBGhENFmUjAd0X3ByaWNllEdAWYAAAAAAAIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRCd1dlWUJpSGVIQjAkb3dTNkFZYkFNb0l2RG4rOFcwWCtORndVZ3JwRzF3QmdrRGxWbVk3NGVFbz2UjANmbGGUTowEY2FydJSMDHNob3BhcHAuY2FydJSMBENhcnSUk5QpgZR9lCiMC3RvdGFsX3ByaWNllEdAWYAAAAAAAIwIY2FydEl0ZW2UXZRoCIwIQ2FydEl0ZW2Uk5QpgZR9lCiMBmFtb3VudJRLAYwGc3RhdHVzlEsBjARib29rlIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMB3VzZXJhcHCUjAVUQm9va5SGlIWUUpR9lCiMBXNhbGVzlEtxjAJpZJRLE4wPX2RqYW5nb192ZXJzaW9ulIwFMi4wLjaUjAtjYXRlZ29yeV9pZJRLAYwOZWRpdGVyX2NvbW1vbmSUTowMcHVzaGlzaF90aW1llIwIZGF0ZXRpbWWUjAhkYXRldGltZZSTlEMKB+MEHREnDgAAAJSFlFKUjAlib29rX25hbWWUjCfnrKzlhavmnKzmlZnogrLliIbnsbvkuIvnmoTmlZnmnZDlm77kuaaUjA5kYW5nZGFuZ19wcmljZZRHQFmAAAAAAACMBmFudGhvcpSMCeWImOaFiOaso5SMBl9zdGF0ZZRoF4wKTW9kZWxTdGF0ZZSTlCmBlH2UKIwCZGKUjAdkZWZhdWx0lIwGYWRkaW5nlIl1YowEcGljc5SMEmJvb2tfcHJpY2UvZGQyLmpwZ5SMB3N0b3JhZ2WUS2SMDG1hcmtldF9wcmljZZRHQF/AAAAAAAB1YnViYYwKc2F2ZV9wcmljZZRHQDkAAAAAAAB1YowHc19wcmljZZRHQDkAAAAAAACMB3VzZXJwYXOUjAcxMjM0NTZxlIwHdXNlcm51bZSMFWxpMTMwMTg5OTY1NkBzaW5hLmNvbZSMBGV4aXSUjAExlIwIY2FydEl0ZW2UaA+MBG5hbWWUjAnmnY7po57pmLOUjAdyZV9uYW1llGhDjAdvcmRlcmlklIoGj2I1+GoBjARmZmZmlIwFaW5kZXiUjANsb2eUjBVsaTEzMDE4OTk2NTZAc2luYS5jb22UjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjAZyZV9wd2SUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRCd1dlWUJpSGVIQjAkb3dTNkFZYkFNb0l2RG4rOFcwWCtORndVZ3JwRzF3QmdrRGxWbVk3NGVFbz2UjAt0eHRVc2VybmFtZZSMFWxpMTMwMTg5OTY1NkBzaW5hLmNvbZR1Lg==', '2019-06-10 07:34:28');
INSERT INTO `django_session` VALUES ('oxjqzqlk5fqqd7bbosdq21xnkl01ofe7', 'ZmM0ZTgwYTYzOGRhOGIwOTBmYmQzNmVkZjEwMDAyNjg2MmQxOTkxYTqABJUVAwAAAAAAAH2UKIwFbG9naW6UjAJva5SMB3RfcHJpY2WUR0BZgAAAAAAAjANsb2eUjAsxNTAzNzY5Mzg4NZSMBGNhcnSUjAxzaG9wYXBwLmNhcnSUjARDYXJ0lJOUKYGUfZQojApzYXZlX3ByaWNllEdAOQAAAAAAAIwLdG90YWxfcHJpY2WUR0BZgAAAAAAAjAhjYXJ0SXRlbZRdlGgHjAhDYXJ0SXRlbZSTlCmBlH2UKIwEYm9va5SMFWRqYW5nby5kYi5tb2RlbHMuYmFzZZSMDm1vZGVsX3VucGlja2xllJOUjAd1c2VyYXBwlIwFVEJvb2uUhpSFlFKUfZQojARwaWNzlIwSYm9va19wcmljZS9kZDIuanBnlIwOZWRpdGVyX2NvbW1vbmSUTowCaWSUSxOMCWJvb2tfbmFtZZSMJ+esrOWFq+acrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMDHB1c2hpc2hfdGltZZSMCGRhdGV0aW1llIwIZGF0ZXRpbWWUk5RDCgfjBB0RJw4AAACUhZRSlIwHc3RvcmFnZZRLZIwLY2F0ZWdvcnlfaWSUSwGMBmFudGhvcpSMCeWImOaFiOaso5SMDG1hcmtldF9wcmljZZRHQF/AAAAAAACMBXNhbGVzlEtxjA5kYW5nZGFuZ19wcmljZZRHQFmAAAAAAACMBl9zdGF0ZZRoFYwKTW9kZWxTdGF0ZZSTlCmBlH2UKIwCZGKUjAdkZWZhdWx0lIwGYWRkaW5nlIl1YowPX2RqYW5nb192ZXJzaW9ulIwFMi4wLjaUdWKMBmFtb3VudJRLAYwGc3RhdHVzlEsBdWJhdWKMB3NfcHJpY2WUR0A5AAAAAAAAjAd1c2VybnVtlIwLMTIzNDU2Nzg5MTGUjAhjYXJ0SXRlbZRoD4wLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwEc3RhdJSMATKUjAd1c2VycGFzlIwHMTIzNDU2cZSMBGNvZGWUjARISktjlIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZR1Lg==', '2019-06-09 03:43:08');
INSERT INTO `django_session` VALUES ('p2t4enay9xzhaphcabet6731ht63xd0p', 'ZDBiYzk3NjFmZGJjNGRkNGI4MTAyOGEzZjc3MzViMzU4OGY5YmViZTp7ImNvZGUiOiJQUldxIiwibG9naW4iOiJvayJ9', '2019-06-05 15:36:30');
INSERT INTO `django_session` VALUES ('p6wl74cu53bd0iaonco27h136be55z5k', 'YmIxZjA4YjA4NDY0YjY4Y2RmYzBiMDc2ZjBlNzczYzRkZTQzN2IyNjqABJWwAAAAAAAAAH2UKIwEY29kZZSMBHhoTW6UjAd1c2VycGFzlIwHMTIzNDU2cZSMBGV4aXSUjAExlIwHdXNlcm51bZSMCzEzNzA3Njk5NDYzlIwGcmVfcHdklIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkY2pzZ0V4cnh1VHNSJEdDOG56ZEN3dHhZWGZTYmNnejFjcTNpaGdDdWNta0RNeWpFZlNDT1Mrajg9lIwHcmVfbmFtZZRoCHUu', '2019-06-09 08:07:09');
INSERT INTO `django_session` VALUES ('p9cvdydivtj4017p9o9iiz9hqvw3royv', 'N2Q4YjI5YzRjMTQyZTY4ZTNjZDhmYWZjYmUwMGViN2U0MjQ1NmU4YTqABJUSAAAAAAAAAH2UjARjb2RllIwEYk4wWpRzLg==', '2019-06-09 07:12:19');
INSERT INTO `django_session` VALUES ('p9g0t3rh6gtdhf353pz3ad4gxqjbolf2', 'NjY5YmMxZDcwMmE4OGQ0OTIxODI5M2E2ODRiMDM5ZjhkMTBjYTNkOTqABJXMAAAAAAAAAH2UKIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwDbG9nlIwLMTIzNDU2Nzg5MTGUjARjb2RllIwEUjUxQpSMBGV4aXSUjAExlIwFbG9naW6UjAJva5SMC3R4dFVzZXJuYW1llIwLMTIzNDU2Nzg5MTGUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZR1Lg==', '2019-06-09 09:04:41');
INSERT INTO `django_session` VALUES ('pew58zvjgz9qx97cuj8mv50chdc9t45s', 'OWVlYTZhMzYyMDVjOGJjOWYzMjE2ZTdmZjQ3YTE2MTlmNjI1ODI0MzqABJVKAwAAAAAAAH2UKIwEZmZmZpROjARleGl0lIwBMZSMBGNhcnSUjAxzaG9wYXBwLmNhcnSUjARDYXJ0lJOUKYGUfZQojApzYXZlX3ByaWNllEdAOQAAAAAAAIwLdG90YWxfcHJpY2WUR0BZgAAAAAAAjAhjYXJ0SXRlbZRdlGgFjAhDYXJ0SXRlbZSTlCmBlH2UKIwEYm9va5SMFWRqYW5nby5kYi5tb2RlbHMuYmFzZZSMDm1vZGVsX3VucGlja2xllJOUjAd1c2VyYXBwlIwFVEJvb2uUhpSFlFKUfZQojA5kYW5nZGFuZ19wcmljZZRHQFmAAAAAAACMCWJvb2tfbmFtZZSMJ+esrOWFq+acrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMB3N0b3JhZ2WUS2SMDHB1c2hpc2hfdGltZZSMCGRhdGV0aW1llIwIZGF0ZXRpbWWUk5RDCgfjBB0RJw4AAACUhZRSlIwEcGljc5SMEmJvb2tfcHJpY2UvZGQyLmpwZ5SMDG1hcmtldF9wcmljZZRHQF/AAAAAAACMBXNhbGVzlEtxjA5lZGl0ZXJfY29tbW9uZJROjAtjYXRlZ29yeV9pZJRLAYwCaWSUSxOMBmFudGhvcpSMCeWImOaFiOaso5SMBl9zdGF0ZZRoE4wKTW9kZWxTdGF0ZZSTlCmBlH2UKIwCZGKUjAdkZWZhdWx0lIwGYWRkaW5nlIl1YowPX2RqYW5nb192ZXJzaW9ulIwFMi4wLjaUdWKMBmFtb3VudJRLAYwGc3RhdHVzlEsBdWJhdWKMCGNhcnRJdGVtlGgNjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMB3RfcHJpY2WUR0BZgAAAAAAAjAVsb2dpbpSMAm9rlIwHc19wcmljZZRHQDkAAAAAAACMA2xvZ5SMCzEyMzQ1Njc4OTExlIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMBGNvZGWUjARsUll4lHUu', '2019-06-09 15:39:21');
INSERT INTO `django_session` VALUES ('pfxe3b7mw2sxrg37pypjknr40egg6788', 'M2RlYzU1OGU3ZDRjYWUyMmMyZDE3ZmVmOTM0MGIyNjkxNDJjNzU4YjqABJXdAAAAAAAAAH2UKIwEY29kZZSMBGc3anCUjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJG9RTE9FenB2YlVsWiQxUTNnQzkwcENhbDNBcE5TWStucW9WYXp4QlBodC9rUk1RVXVoRXdWWU5rPZSMC3R4dFVzZXJuYW1llIwVbGkxMzAxODk5NjU2QHNpbmEuY29tlIwFbG9naW6UjAJva5SMBGZmZmaUTowDbG9nlIwVbGkxMzAxODk5NjU2QHNpbmEuY29tlHUu', '2019-06-10 08:55:38');
INSERT INTO `django_session` VALUES ('pytouh4sdmz5k0bmphopbhk36jczuo10', 'MjYwMDJhNmI2MTM5ZDEzM2ZkZDI2ODRmODk3MjY3ZDE4YjNiODM4ODqABJW0AAAAAAAAAH2UKIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMBXBhc3N3lIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkRnBzeFBETFZDQ0N5JEt3a3lESXBPVGhubmRCWHJSMDBBaTBRL1hUWHFyUmVDbHZqKy96RmQ2RDA9lIwFbG9naW6UjAJva5SMC3R4dFBhc3N3b3JklIwHMTIzNDU2cZSMA2xvZ5ROjARjb2RllIwEaGdMWpR1Lg==', '2019-06-09 06:25:22');
INSERT INTO `django_session` VALUES ('q99w8eot26dnkww3jihgtvhzqgu2at06', 'MWFkMWY2NWY5NWVmNzE4Y2I1Y2U2MzVlNmVhNzAwMTNkZmYyODhkNDqABJXaAAAAAAAAAH2UKIwDbG9nlIwLMTIzNDU2Nzg5MTGUjAVsb2dpbpSMAm9rlIwEZmZmZpSMBGNhcnOUjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjARleGl0lIwBMZSMBGNvZGWUjARvaG5nlIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjAt0eHRVc2VybmFtZZSMCzEyMzQ1Njc4OTExlHUu', '2019-06-10 01:32:34');
INSERT INTO `django_session` VALUES ('qu6dqvhldojegld95du75fg2ygc9esfg', 'Y2FlMDQzYWEwMGQ4MzdiM2M3Y2FjMDgyNzdiYjJiM2Q1ZTA3Mzc0MjqABJU4AAAAAAAAAH2UKIwEY29kZZSMBFNneDSUjAVsb2dpbpSMAm9rlIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlHUu', '2019-06-09 04:13:29');
INSERT INTO `django_session` VALUES ('sfheh9h02tko297ip5vzywgxvn0bn98b', 'YjIwOGM3NzQ1N2RjMzk4YTU0NGE5Y2U2NTFmOGE4NzA5NmFlZmZkNjqABJUxAAAAAAAAAH2UKIwDbG9nlIwLMTIzNDU2Nzg5MTGUjARleGl0lIwBMZSMBWxvZ2lulIwCb2uUdS4=', '2019-06-09 07:39:01');
INSERT INTO `django_session` VALUES ('sk6wakv8kb11v8m9dgb93g1s8a13xipv', 'Y2JmMjc2MjVjZjJmMGQzZjdkYjc1Y2UzYWQ3ZTBjMmFjZmM5ZTgwYTqABJU5AwAAAAAAAH2UKIwHdF9wcmljZZRHQFmAAAAAAACMCGNhcnRJdGVtlF2UjAxzaG9wYXBwLmNhcnSUjAhDYXJ0SXRlbZSTlCmBlH2UKIwGYW1vdW50lEsBjAZzdGF0dXOUSwGMBGJvb2uUjBVkamFuZ28uZGIubW9kZWxzLmJhc2WUjA5tb2RlbF91bnBpY2tsZZSTlIwHdXNlcmFwcJSMBVRCb29rlIaUhZRSlH2UKIwLY2F0ZWdvcnlfaWSUSwGMD19kamFuZ29fdmVyc2lvbpSMBTIuMC42lIwFc2FsZXOUS3GMDmVkaXRlcl9jb21tb25klE6MDHB1c2hpc2hfdGltZZSMCGRhdGV0aW1llIwIZGF0ZXRpbWWUk5RDCgfjBB0RJw4AAACUhZRSlIwHc3RvcmFnZZRLZIwEcGljc5SMEmJvb2tfcHJpY2UvZGQyLmpwZ5SMDG1hcmtldF9wcmljZZRHQF/AAAAAAACMAmlklEsTjAZfc3RhdGWUaAyMCk1vZGVsU3RhdGWUk5QpgZR9lCiMAmRilIwHZGVmYXVsdJSMBmFkZGluZ5SJdWKMBmFudGhvcpSMCeWImOaFiOaso5SMDmRhbmdkYW5nX3ByaWNllEdAWYAAAAAAAIwJYm9va19uYW1llIwn56ys5YWr5pys5pWZ6IKy5YiG57G75LiL55qE5pWZ5p2Q5Zu+5LmmlHVidWJhjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMA2xvZ5SMCzEyMzQ1Njc4OTExlIwEZXhpdJSMATGUjAdzX3ByaWNllEdAOQAAAAAAAIwFbG9naW6UjAJva5SMC3R4dFVzZXJuYW1llIwLMTIzNDU2Nzg5MTGUjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjARjYXJ0lGgEjARDYXJ0lJOUKYGUfZQoaAJoA4wKc2F2ZV9wcmljZZRHQDkAAAAAAACMC3RvdGFsX3ByaWNllEdAWYAAAAAAAHVijARjb2RllIwEcDRtNpR1Lg==', '2019-06-09 09:26:21');
INSERT INTO `django_session` VALUES ('ssiccmztr6x4j8gfy23inuwhtntux3c2', 'YmVkYWViYzYzNjIxZmNhZjQyMTY5YmM0MjAwYTA0YmM2NWZkZGU1ZDqABJUSAAAAAAAAAH2UjARjb2RllIwEaTNGd5RzLg==', '2019-06-09 08:09:32');
INSERT INTO `django_session` VALUES ('tkmidxo0inpk6ww88iipq2ds4a1ygmns', 'Y2FkNTNjOTM2NDdhM2U2MjE4ZjI1ZjYyNmZmYzgyZjhhMDJhZWQ2NDqABJUIBAAAAAAAAH2UKIwEY2FydJSMDHNob3BhcHAuY2FydJSMBENhcnSUk5QpgZR9lCiMC3RvdGFsX3ByaWNllEdAc3AAAAAAAIwIY2FydEl0ZW2UXZQoaAKMCENhcnRJdGVtlJOUKYGUfZQojARib29rlIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMB3VzZXJhcHCUjAVUQm9va5SGlIWUUpR9lCiMBXNhbGVzlEtxjARwaWNzlIwSYm9va19wcmljZS9kZDIuanBnlIwOZWRpdGVyX2NvbW1vbmSUTowCaWSUSxOMBmFudGhvcpSMCeWImOaFiOaso5SMBl9zdGF0ZZRoD4wKTW9kZWxTdGF0ZZSTlCmBlH2UKIwGYWRkaW5nlImMAmRilIwHZGVmYXVsdJR1YowMbWFya2V0X3ByaWNllEdAX8AAAAAAAIwOZGFuZ2RhbmdfcHJpY2WUR0BZgAAAAAAAjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuNpSMB3N0b3JhZ2WUS2SMCWJvb2tfbmFtZZSMJ+esrOWFq+acrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMC2NhdGVnb3J5X2lklEsBjAxwdXNoaXNoX3RpbWWUjAhkYXRldGltZZSMCGRhdGV0aW1llJOUQwoH4wQdEScOAAAAlIWUUpR1YowGc3RhdHVzlEsBjAZhbW91bnSUjAEylHViaAspgZR9lChoDmgRaBJoE4aUhZRSlH2UKIwEcGljc5SMEmJvb2tfcHJpY2UvZGQxLmpwZ5SMDHB1c2hpc2hfdGltZZRoMkMKB+MEHgMAAAAAAJSFlFKUjA5lZGl0ZXJfY29tbW9uZJROjAJpZJRLRYwGYW50aG9ylIwG6ams5LqRlIwGX3N0YXRllGghKYGUfZQoaCSJaCWMB2RlZmF1bHSUdWKMDG1hcmtldF9wcmljZZRHQF5AAAAAAACMDmRhbmdkYW5nX3ByaWNllEdAWsAAAAAAAIwPX2RqYW5nb192ZXJzaW9ulIwFMi4wLjaUjAVzYWxlc5RLeYwJYm9va19uYW1llIwq56ys5Y2B5LiJ5pys5pWZ6IKy5YiG57G75LiL55qE5pWZ5p2Q5Zu+5LmmlIwLY2F0ZWdvcnlfaWSUSymMB3N0b3JhZ2WUS2R1Ymg2SwFoN0sBdWJljApzYXZlX3ByaWNllEdAUAAAAAAAAHVijAdzX3ByaWNllEdAUAAAAAAAAIwEY29kZZSMBDdseWiUjAhjYXJ0SXRlbZRoCYwFbG9naW6UjAJva5SMB3RfcHJpY2WUR0BzcAAAAAAAjANsb2eUjAsxNTAzNzY5Mzg4NZR1Lg==', '2019-06-08 12:45:01');
INSERT INTO `django_session` VALUES ('u677gbhjg0vdp0may4s6i44u2w36guda', 'MDdhNGI3YWQ2ZTczNWM2NzA3NTEyYTdjZDI3M2UyYzc1YTZlN2Q1Mjp7InVzZXJudW0iOiIxMjM0NTY3ODkxMSIsImxvZyI6IjE1MDM3NjkzODg1IiwibG9naW4iOiJvayIsImNvZGUiOiJOY2dWIiwidXNlcnBhcyI6IjEyMyJ9', '2019-06-06 11:35:51');
INSERT INTO `django_session` VALUES ('ue2oirksh3dl7f9hx8kajoe9db5mziqj', 'YWJjYTk4YTQ5ZDhiMzM5NmMxODM4NWY5NTUwZmY1MDk1ZWNkMWI4MTqABJXEAAAAAAAAAH2UKIwDbG9nlE6MBGNvZGWUjAR6V1FTlIwHdXNlcnBhc5SMBzEyMzQ1NnGUjARleGl0lIwBMZSMB3JlX25hbWWUjAsxMzcwNzY5OTQ2M5SMBnJlX3B3ZJSMTnBia2RmMl9zaGEyNTYkMTAwMDAwJE52dTJha2k4SjA4ViRTcitLc3orWklIM3hyN1dyNnlxWmJyb2huZk9jUnk4Q24wVi9ESFFQOWxVPZSMBWxvZ2lulIwCb2uUjAd1c2VybnVtlGgJdS4=', '2019-06-09 08:10:00');
INSERT INTO `django_session` VALUES ('v86y73c6ief6l81dqwvucyulnnzjsoib', 'MTMyNjhkOGNlYzRkMWI1NzAxYTdjYjIzZWY4MDkwNGZlNTYxNjI4MzqABJXMAAAAAAAAAH2UKIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwDbG9nlIwLMTIzNDU2Nzg5MTGUjARjb2RllIwEVmtnd5SMC3R4dFVzZXJuYW1llIwLMTIzNDU2Nzg5MTGUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMBGV4aXSUjAExlIwFbG9naW6UjAJva5R1Lg==', '2019-06-09 15:07:31');
INSERT INTO `django_session` VALUES ('vflr537nyunaula7r9sjije3q3av16so', 'ODIyNGNhNDM3ZDU2YzQ1OWMzMjg5OGVkYTdkNjBjNmNjMWY3NWVmYzqABJUSAAAAAAAAAH2UjARjb2RllIwEek9oNJRzLg==', '2019-06-09 07:30:42');
INSERT INTO `django_session` VALUES ('w3i9hgpy71dgla936ic4qcr5rdqiki1q', 'MDdkNzJhOGQ5YTg4N2I1MTcyNTI5MmUxZjc4OWQ1MTkwZjRkZTAxZDqABJWzAAAAAAAAAH2UKIwEZXhpdJSMATGUjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMBGNvZGWUjARvNWxNlIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMA2xvZ5RoCnUu', '2019-06-09 06:38:39');
INSERT INTO `django_session` VALUES ('wduiuqzakgar1bropfkjdk8ap7azvfqc', 'NTg1MjVlOGFiZTdlZmJkNzcwYmQyYTg5YzUwMTUwZTZiYjdiYjdhYjqABJXNAAAAAAAAAH2UKIwFbG9naW6UjAJva5SMBGNvZGWUjARoSkYzlIwDbG9nlIwLMTIzNDU2Nzg5MTGUjARmZmZmlIwDY2FylIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwLdHh0VXNlcm5hbWWUaAaMBGV4aXSUjAExlIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UdS4=', '2019-06-09 15:33:11');
INSERT INTO `django_session` VALUES ('wy7gptc37gc7d1dqt9zrmwtnl3frjoj8', 'M2U1OTkxMGExMjEzNDU4Y2E1MGVlNmEyYWViYjU4ZjBlMTg3NTIyMDqABJXMAAAAAAAAAH2UKIwHdXNlcm51bZSMETEzMDE4OTk2NTZAcXEuY29tlIwHcmVfbmFtZZRoAowFbG9naW6UjAJva5SMA2ZsYZSMA2NhcpSMBnJlX3B3ZJSMTnBia2RmMl9zaGEyNTYkMTAwMDAwJHZFR25YQlFzRmhXcCR3SnpVZWtEQWRjbTVFNWZ3WktmczloN2xBeDFYekp4TVJITjN6dmFvY0lJPZSMBGNvZGWUjAR0S3kwlIwDbG9nlGgCjAd1c2VycGFzlIwHMTIzNDU2cZR1Lg==', '2019-06-09 15:01:47');
INSERT INTO `django_session` VALUES ('wzfz6nhcpff1ztznjdacahad7yicdjs5', 'ODJjMDRlNGZhMmNiYjc2NWFiZmQ0ODliYWY2OThmZjU0OGI3MDlhZjp7ImNvZGUiOiJzeUxkIiwibG9naW4iOiJvayJ9', '2019-06-06 01:39:15');
INSERT INTO `django_session` VALUES ('x41e1kvipu1p9ojouwk7u7x0rq68kybo', 'OGFiM2U4MjYyYmM2MzZjZDZmOGFmNTU3NjhmMGRkNDIyODBjY2VmOTqABJWwAAAAAAAAAH2UKIwEY29kZZSMBEppZWqUjAdyZV9uYW1llIwLMTM3MDc2OTk0NjOUjAd1c2VycGFzlIwHMTIzNDU2cZSMBnJlX3B3ZJSMTnBia2RmMl9zaGEyNTYkMTAwMDAwJFFwNVhUT2xvMWttayRUdERmNVFpbjNldFhuRHRHMXkyL1JyaFNYZStiWXhyK3V6MDdlMlQxU1pnPZSMB3VzZXJudW2UaASMBGV4aXSUjAExlHUu', '2019-06-09 08:08:40');
INSERT INTO `django_session` VALUES ('x80h7p7zdn35apv8wna7j0i5qmbkkh7y', 'Yjk1NDkzZTY5YzgzNThjNzI2NDg2NDAwYTA1N2MyMWM1MDI4OTJmNDqABJVXAAAAAAAAAH2UjARjYXJ0lIwMc2hvcGFwcC5jYXJ0lIwEQ2FydJSTlCmBlH2UKIwKc2F2ZV9wcmljZZRLAIwIY2FydEl0ZW2UXZSMC3RvdGFsX3ByaWNllEsAdWJzLg==', '2019-06-07 15:43:19');
INSERT INTO `django_session` VALUES ('xlz531ddbj94w1aila8860nse7690whi', 'NjE4YWI5NDc0MTlhNjIzNGNjZWY5N2M1ZTJjYjMxYmU4M2JjNmU2OTqABJV3AgAAAAAAAH2UKIwFbG9naW6UjAJva5SMA2xvZ5SMCzE1MDM3NjkzODg1lIwEY29kZZSMBDBBVkWUjARjYXJ0lIwMc2hvcGFwcC5jYXJ0lIwEQ2FydJSTlCmBlH2UKIwKc2F2ZV9wcmljZZRHQDkAAAAAAACMCGNhcnRJdGVtlF2UaAiMCENhcnRJdGVtlJOUKYGUfZQojAZzdGF0dXOUSwGMBGJvb2uUjBVkamFuZ28uZGIubW9kZWxzLmJhc2WUjA5tb2RlbF91bnBpY2tsZZSTlIwHdXNlcmFwcJSMBVRCb29rlIaUhZRSlH2UKIwMcHVzaGlzaF90aW1llIwIZGF0ZXRpbWWUjAhkYXRldGltZZSTlEMKB+MEHREnDgAAAJSFlFKUjA5kYW5nZGFuZ19wcmljZZRHQFmAAAAAAACMBHBpY3OUjBJib29rX3ByaWNlL2RkMi5qcGeUjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuNpSMBmFudGhvcpSMCeWImOaFiOaso5SMBl9zdGF0ZZRoFowKTW9kZWxTdGF0ZZSTlCmBlH2UKIwGYWRkaW5nlImMAmRilIwHZGVmYXVsdJR1YowCaWSUSxOMBXNhbGVzlEtxjAtjYXRlZ29yeV9pZJRLAYwJYm9va19uYW1llIwn56ys5YWr5pys5pWZ6IKy5YiG57G75LiL55qE5pWZ5p2Q5Zu+5LmmlIwHc3RvcmFnZZRLZIwMbWFya2V0X3ByaWNllEdAX8AAAAAAAIwOZWRpdGVyX2NvbW1vbmSUTnVijAZhbW91bnSUSwF1YmGMC3RvdGFsX3ByaWNllEdAWYAAAAAAAHVidS4=', '2019-06-08 12:16:58');
INSERT INTO `django_session` VALUES ('xqrshk4n73cccl62qf51joyxbzjvl77j', 'YTNkN2U0OTBjMjdjMGFjZWNhYjA1YmYxMjgwZTFhYWIzM2VhZTU2YzqABJVSAQAAAAAAAH2UKIwDbG9nlIwLMTM1MjY5NDY0NTOUjAt0eHRVc2VybmFtZZSMCzEzNzA3Njk5NDYzlIwHcmVfbmFtZZSMCzEzNTI2OTQ2NDUzlIwGcmVfcHdklIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkM1ZOWlE4WnJ3ZUt2JGEzS1g1d21ISUVHQUdIUVNWQVpVeDBydXBHVjdBRU9JbHJOMEQ1dGYyL009lIwFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCR2SWFnVkxCbDdoRDAkSkRtZDY5Q1JOMTl6elh0WjZ5WTZ1K1hyR084WUtCZVJnN2FUZzRXMU9uaz2UjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjANmbGGUjANjYXKUjAd1c2VycGFzlIwHMTIzNDU2cZSMBGNvZGWUjARvS09JlIwHdXNlcm51bZRoBnUu', '2019-06-09 08:39:53');
INSERT INTO `django_session` VALUES ('xxn1kkt7gdz7t4tq8cw9743cpnhst7pk', 'MjZlMWQ3N2EwMmE0YTgwZTQzNTkyMGRhNzQ2YzgzYTVkNzg4MGNjMTp7ImNvZGUiOiJhaHd6IiwibG9nIjoiMTUwMzc2OTM4ODUiLCJsb2dpbiI6Im9rIn0=', '2019-06-07 03:18:34');
INSERT INTO `django_session` VALUES ('z19gtj9wk1p5u00qvaknwheq7ems3y4k', 'ZTRmNGY4YjdiZWIzOWJkYjRhMjBjYzM2YjRiMTY4YzJkNzVlOTY5MjqABJVKAwAAAAAAAH2UKIwHamllc3VhbpSMATGUjAVsb2dpbpSMAm9rlIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZSMBGZmZmaUTowDbG9nlGgGjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjAhjYXJ0SXRlbZRdlIwMc2hvcGFwcC5jYXJ0lIwIQ2FydEl0ZW2Uk5QpgZR9lCiMBmFtb3VudJRLAYwEYm9va5SMFWRqYW5nby5kYi5tb2RlbHMuYmFzZZSMDm1vZGVsX3VucGlja2xllJOUjAd1c2VyYXBwlIwFVEJvb2uUhpSFlFKUfZQojAxwdXNoaXNoX3RpbWWUjAhkYXRldGltZZSMCGRhdGV0aW1llJOUQwoH4wQdEScOAAAAlIWUUpSMAmlklEsTjARwaWNzlIwSYm9va19wcmljZS9kZDIuanBnlIwHc3RvcmFnZZRLZIwPX2RqYW5nb192ZXJzaW9ulIwFMi4wLjaUjA5lZGl0ZXJfY29tbW9uZJROjAZfc3RhdGWUaBSMCk1vZGVsU3RhdGWUk5QpgZR9lCiMBmFkZGluZ5SJjAJkYpSMB2RlZmF1bHSUdWKMDG1hcmtldF9wcmljZZRHQF/AAAAAAACMBmFudGhvcpSMCeWImOaFiOaso5SMC2NhdGVnb3J5X2lklEsBjA5kYW5nZGFuZ19wcmljZZRHQFmAAAAAAACMCWJvb2tfbmFtZZSMJ+esrOWFq+acrOaVmeiCsuWIhuexu+S4i+eahOaVmeadkOWbvuS5ppSMBXNhbGVzlEtxdWKMBnN0YXR1c5RLAXViYYwEY2FydJRoDYwEQ2FydJSTlCmBlH2UKIwKc2F2ZV9wcmljZZRHQDkAAAAAAACMCGNhcnRJdGVtlGgMjAt0b3RhbF9wcmljZZRHQFmAAAAAAAB1YowFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRGcHN4UERMVkNDQ3kkS3dreURJcE9UaG5uZEJYclIwMEFpMFEvWFRYcXJSZUNsdmorL3pGZDZEMD2UjAd0X3ByaWNllEdAWYAAAAAAAIwHc19wcmljZZRHQDkAAAAAAACMBGV4aXSUaAKMBGNvZGWUjARCd0k4lHUu', '2019-06-09 15:43:02');
INSERT INTO `django_session` VALUES ('zdzip47hs4ni16kuwu0bmok1jvdz22v0', 'NjRkNWI2MmVmZWU3OWVlN2NmOTY3ODExMTAzYzY3MGUwYmIxNTdiZjqABJU/AAAAAAAAAH2UKIwDbG9nlIwLMTIzNDU2Nzg5MTGUjAVsb2dpbpSMAm9rlIwEY29kZZSMBG9ocEqUjARleGl0lIwBMZR1Lg==', '2019-06-09 07:34:06');
INSERT INTO `django_session` VALUES ('zo2g7vbj0npp5w9uvs729pw6vyf4xtht', 'Mzg5OTA5M2VmNzdkNDZjYWM4ODQ1ZWNhN2Q1MGI5ZDMyMGFiZjdkNDqABJWEBQAAAAAAAH2UKIwEZmZmZpROjAd0X3ByaWNllEdAhngAAAAAAIwHcmVfbmFtZZSMFWxpMTMwMTg5OTY1NkBzaW5hLmNvbZSMBGNhcnSUjAxzaG9wYXBwLmNhcnSUjARDYXJ0lJOUKYGUfZQojApzYXZlX3ByaWNllEdAZIAAAAAAAIwIY2FydEl0ZW2UXZQoaAaMCENhcnRJdGVtlJOUKYGUfZQojAZzdGF0dXOUSwGMBGJvb2uUjBVkamFuZ28uZGIubW9kZWxzLmJhc2WUjA5tb2RlbF91bnBpY2tsZZSTlIwHdXNlcmFwcJSMBVRCb29rlIaUhZRSlH2UKIwEcGljc5SMEmJvb2tfcHJpY2UvZGQyLmpwZ5SMDHB1c2hpc2hfdGltZZSMCGRhdGV0aW1llIwIZGF0ZXRpbWWUk5RDCgfjBB0RJw4AAACUhZRSlIwFc2FsZXOUS3GMB3N0b3JhZ2WUS2SMDmVkaXRlcl9jb21tb25klE6MBl9zdGF0ZZRoFIwKTW9kZWxTdGF0ZZSTlCmBlH2UKIwGYWRkaW5nlImMAmRilIwHZGVmYXVsdJR1YowMbWFya2V0X3ByaWNllEdAX8AAAAAAAIwPX2RqYW5nb192ZXJzaW9ulIwFMi4wLjaUjAZhbnRob3KUjAnliJjmhYjmrKOUjAtjYXRlZ29yeV9pZJRLAYwJYm9va19uYW1llIwn56ys5YWr5pys5pWZ6IKy5YiG57G75LiL55qE5pWZ5p2Q5Zu+5LmmlIwCaWSUSxOMDmRhbmdkYW5nX3ByaWNllEdAWYAAAAAAAHVijAZhbW91bnSUjAE2lHViaA8pgZR9lChoEksBaBNoFmgXaBiGlIWUUpR9lCiMBHBpY3OUjBJib29rX3ByaWNlL2RkMS5qcGeUjAxwdXNoaXNoX3RpbWWUaCJDCgfjBB4DAAAAAACUhZRSlIwFc2FsZXOUS3mMB3N0b3JhZ2WUS2SMDmVkaXRlcl9jb21tb25klE6MBl9zdGF0ZZRoKymBlH2UKGguiWgvjAdkZWZhdWx0lHVijAxtYXJrZXRfcHJpY2WUR0BeQAAAAAAAjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuNpSMBmFudGhvcpSMBumprOS6kZSMC2NhdGVnb3J5X2lklEspjAlib29rX25hbWWUjCrnrKzljYHkuInmnKzmlZnogrLliIbnsbvkuIvnmoTmlZnmnZDlm77kuaaUjAJpZJRLRYwOZGFuZ2RhbmdfcHJpY2WUR0BawAAAAAAAdWJoO0sBdWJljAt0b3RhbF9wcmljZZRHQIZ4AAAAAAB1YowFcGFzc3eUjE5wYmtkZjJfc2hhMjU2JDEwMDAwMCRBVGN2bGFOMlBMWHEkOGRZaFVBeTFZWVRLZzNtNzNXTjNoUHBGaUZZa0N6OHlRbWQ2T2JrZWdmQT2UjANmbGGUTowGcmVfcHdklIxOcGJrZGYyX3NoYTI1NiQxMDAwMDAkQVRjdmxhTjJQTFhxJDhkWWhVQXkxWVlUS2czbTczV04zaFBwRmlGWWtDejh5UW1kNk9ia2VnZkE9lIwDbG9nlIwVbGkxMzAxODk5NjU2QHNpbmEuY29tlIwEY29kZZSMBDhOVkGUjAdvcmRlcmlklIoGxzeD+GoBjAd1c2VybnVtlGgEjAt0eHRQYXNzd29yZJSMBzEyMzQ1NnGUjAt0eHRVc2VybmFtZZSMFWxpMTMwMTg5OTY1NkBzaW5hLmNvbZSMB3VzZXJwYXOUjAcxMjM0NTZxlIwFbG9naW6UjAJva5SMB3NfcHJpY2WUR0BkgAAAAAAAjARuYW1llIwJ5p2c5a2Y6ImvlIwEZXhpdJSMATGUjAhjYXJ0SXRlbZRoDXUu', '2019-06-10 08:58:50');
INSERT INTO `django_session` VALUES ('zqakuk8o9ncvzm2v0trfeahgulbsv794', 'MTYwYTkyYzNiZDYxOTcxN2MzMzVhYjYxYzg4NjFmOWRhZjY5NTllZDqABJXMAAAAAAAAAH2UKIwLdHh0UGFzc3dvcmSUjAcxMjM0NTZxlIwEY29kZZSMBFZkSXKUjAVsb2dpbpSMAm9rlIwDbG9nlIwLMTIzNDU2Nzg5MTGUjAVwYXNzd5SMTnBia2RmMl9zaGEyNTYkMTAwMDAwJEZwc3hQRExWQ0NDeSRLd2t5RElwT1Robm5kQlhyUjAwQWkwUS9YVFhxclJlQ2x2aisvekZkNkQwPZSMBGV4aXSUjAExlIwLdHh0VXNlcm5hbWWUjAsxMjM0NTY3ODkxMZR1Lg==', '2019-06-09 08:48:17');
INSERT INTO `django_session` VALUES ('ztvpatcfsjwum1wlmlnlyx0ky0u7ua4a', 'YzY0YzQ5NDc0MTVhMGM0ZWFmZmMzNGZhMGY0NDE0NmFjMTNjMDIzMjp7ImNvZGUiOiI3b1hXIiwibG9naW4iOiJvayJ9', '2019-06-05 15:39:56');
INSERT INTO `django_session` VALUES ('zvrgxdjns0a0eu8yrocwvatwtjvxkqmd', 'NTMyMjk2YTUwOGNkYjJiNTI5YmNjYjIzODg1ZTZjOTk4ZTdjZDU5NjqABJUSAAAAAAAAAH2UjARjb2RllIwENE5UOZRzLg==', '2019-06-09 07:10:30');

-- ----------------------------
-- Table structure for `t_address`
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recever` varchar(40) DEFAULT NULL,
  `receve_address` varchar(40) DEFAULT NULL,
  `zip_code` varchar(6) DEFAULT NULL,
  `tel` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_1` (`user_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_address
-- ----------------------------
INSERT INTO `t_address` VALUES ('5', '李飞阳', '北京', '1000', null, '15037693885', '1');
INSERT INTO `t_address` VALUES ('8', '', '', '', null, '', '1');
INSERT INTO `t_address` VALUES ('9', '李飞阳', '北京市中关村', '10000', null, '12345678911', '47');
INSERT INTO `t_address` VALUES ('11', '杜存良', '北京市昌平区', '10000', null, '19992732133', '87');

-- ----------------------------
-- Table structure for `t_book`
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(40) DEFAULT NULL,
  `dangdang_price` float DEFAULT NULL,
  `market_price` float DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `storage` bigint(20) DEFAULT NULL,
  `pushish_time` datetime DEFAULT NULL,
  `editer_commond` int(11) DEFAULT NULL,
  `anthor` varchar(40) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `pics` varchar(100) DEFAULT NULL,
  `book_publish` varchar(20) DEFAULT NULL,
  `revision` int(10) DEFAULT NULL,
  `book_isbn` int(20) DEFAULT NULL,
  `word_count` int(20) DEFAULT NULL,
  `page_count` int(20) DEFAULT NULL,
  `open_type` varchar(20) DEFAULT NULL,
  `book_paper` varchar(10) DEFAULT NULL,
  `book_wrapper` varchar(10) DEFAULT NULL,
  `adds2` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_3` (`category_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`category_id`) REFERENCES `t_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('8', '第七本教育分类下的教材图书', '107', '127', '101', '100', '2019-05-16 17:37:42', null, '马云', '1', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, '11');
INSERT INTO `t_book` VALUES ('9', '第八本教育分类下的教材图书', '102', '127', '104', '100', '2019-05-01 17:37:46', null, '刘慈欣', '1', 'book_price/dd2.jpg', null, null, null, null, null, null, null, null, '211');
INSERT INTO `t_book` VALUES ('10', '第九本教育分类下的教材图书', '103', '127', '106', '100', '2019-05-05 17:37:49', null, '马云', '4', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, '2321');
INSERT INTO `t_book` VALUES ('11', '第十本教育分类下的教材图书', '106', '127', '52', '100', '2019-05-04 17:37:52', null, '马云', '1', 'book_price/dd4.jpg', null, null, null, null, null, null, null, null, '213');
INSERT INTO `t_book` VALUES ('12', '第十一本教育分类下的教材图书', '101', '127', '51', '100', '2019-05-07 17:37:55', null, '马云', '2', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, '5623');
INSERT INTO `t_book` VALUES ('13', '第七本教育分类下的教材图书', '107', '127', '103', '100', '2019-05-08 17:38:56', null, '马云', '2', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, '25667');
INSERT INTO `t_book` VALUES ('14', '第八本教育分类下的教材图书', '102', '127', '89', '100', '2019-05-04 17:39:00', null, '刘慈欣', '2', 'book_price/dd2.jpg', null, null, null, null, null, null, null, null, '3125');
INSERT INTO `t_book` VALUES ('15', '第九本教育分类下的教材图书', '103', '127', '109', '100', '2019-05-13 17:39:02', null, '马云', '4', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, '7832');
INSERT INTO `t_book` VALUES ('16', '第十本教育分类下的教材图书', '106', '127', '110', '100', '2019-05-19 17:39:06', null, '马云', '3', 'book_price/dd4.jpg', null, null, null, null, null, null, null, null, '213');
INSERT INTO `t_book` VALUES ('17', '第十一本教育分类下的教材图书', '101', '127', '111', '100', '2019-05-04 17:39:08', null, '马云', '3', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, '3534');
INSERT INTO `t_book` VALUES ('18', '第七本教育分类下的教材图书', '107', '127', '112', '100', '2019-04-30 17:39:11', null, '马云', '3', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, '2312');
INSERT INTO `t_book` VALUES ('19', '第八本教育分类下的教材图书', '102', '127', '113', '100', '2019-04-29 17:39:14', null, '刘慈欣', '1', 'book_price/dd2.jpg', null, null, null, null, null, null, null, null, '31');
INSERT INTO `t_book` VALUES ('20', '第九本教育分类下的教材图书', '103', '127', '114', '100', '2019-05-08 17:39:18', null, '马云', '1', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, '5562');
INSERT INTO `t_book` VALUES ('21', '第十本教育分类下的教材图书', '106', '127', '115', '100', '2019-05-11 17:39:22', null, '马云', '3', 'book_price/dd4.jpg', null, null, null, null, null, null, null, null, '312');
INSERT INTO `t_book` VALUES ('22', '第十一本教育分类下的教材图书', '101', '127', '116', '100', '2019-05-03 00:00:00', null, '马云', '1', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, '3123');
INSERT INTO `t_book` VALUES ('23', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-16 00:00:00', null, '马云', '5', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('24', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-05 00:00:00', null, '刘慈欣', '5', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('25', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-01 00:00:00', null, '刘慈欣', '6', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('26', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-21 00:00:00', null, '马云', '6', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('27', '第十一本教育分类下的教材图书', '123', '641', '10210', '100', '2019-05-06 00:00:00', null, '刘慈欣', '7', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('28', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-01 00:00:00', null, '马云', '8', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('29', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-22 04:00:00', null, '刘慈欣', '8', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('30', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-11 04:00:00', null, '刘慈欣', '9', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('31', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-15 21:00:00', null, '马云', '9', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('32', '第十一本教育分类下的教材图书', '123', '641', '10210', '100', '2019-05-16 00:00:00', null, '刘慈欣', '7', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('33', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-08 00:00:00', null, '马云', '10', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('34', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-08 00:00:00', null, '刘慈欣', '10', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('35', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-07 00:00:00', null, '刘慈欣', '11', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('36', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-08 00:00:00', null, '马云', '11', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('37', '第十一本教育分类下的教材图书', '123', '641', '10210', '100', '2019-05-14 00:00:00', null, '刘慈欣', '12', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('38', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-05 00:00:00', null, '马云', '57', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('39', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-15 00:00:00', null, '刘慈欣', '13', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('40', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-09 00:00:00', null, '刘慈欣', '16', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('41', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-22 00:00:00', null, '马云', '14', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('42', '第十一本教育分类下的教材图书', '123', '641', '10210', '100', '2019-05-05 00:00:00', null, '刘慈欣', '64', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('43', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-07 00:00:00', null, '马云', '16', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('44', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-17 00:00:00', null, '刘慈欣', '17', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('45', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-09 00:00:00', null, '刘慈欣', '18', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('46', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-14 00:00:00', null, '马云', '19', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('47', '第十一本教育分类下的教材图书', '123', '641', '10210', '100', '2019-05-08 00:00:00', null, '刘慈欣', '20', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('48', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-23 00:00:00', null, '马云', '21', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('49', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-23 00:00:00', null, '刘慈欣', '22', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('50', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-07 00:00:00', null, '刘慈欣', '23', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('51', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-07 00:00:00', null, '马云', '24', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('52', '第十一本教育分类下的教材图书', '123', '641', '10210', '100', '2019-05-14 00:00:00', null, '刘慈欣', '25', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('53', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-23 00:00:00', null, '马云', '26', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('54', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-23 00:00:00', null, '刘慈欣', '27', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('55', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-12 00:00:00', null, '刘慈欣', '28', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('56', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-01 00:00:00', null, '马云', '29', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('57', '第十一本教育分类下的教材图书', '123', '641', '10210', '100', '2019-05-21 00:00:00', null, '刘慈欣', '30', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('58', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-06 00:00:00', null, '马云', '31', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('59', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-21 00:00:00', null, '刘慈欣', '32', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('60', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-18 23:00:00', null, '刘慈欣', '33', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('61', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-14 23:00:00', null, '马云', '34', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('62', '第十一本教育分类下的教材图书', '123', '641', '10210', '100', '2019-05-16 01:00:00', null, '刘慈欣', '35', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('64', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-14 01:00:00', null, '马云', '36', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('65', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-14 01:00:00', null, '刘慈欣', '37', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('66', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-14 21:00:00', null, '刘慈欣', '38', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('67', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-14 00:00:00', null, '马云', '39', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('68', '第十一本教育分类下的教材图书', '121', '641', '10210', '100', '2019-05-14 00:00:00', null, '刘慈欣', '40', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('69', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-04-30 03:00:00', null, '马云', '41', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('70', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-14 22:00:00', null, '刘慈欣', '42', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('71', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-13 22:00:00', null, '刘慈欣', '43', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('72', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-27 22:00:00', null, '马云', '44', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('73', '第十一本教育分类下的教材图书', '123', '641', '10210', '100', '2019-05-15 00:00:00', null, '刘慈欣', '45', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('74', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-23 03:00:00', null, '马云', '46', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('75', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-27 22:00:00', null, '刘慈欣', '47', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('76', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-08 00:00:00', null, '刘慈欣', '48', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('77', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-22 00:00:00', null, '马云', '49', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('78', '第十一本教育分类下的教材图书', '123', '641', '10210', '100', '2019-05-06 20:00:00', null, '刘慈欣', '50', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('79', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-14 19:00:00', null, '马云', '51', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('80', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-22 19:00:00', null, '刘慈欣', '52', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('81', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-15 00:00:00', null, '刘慈欣', '53', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('82', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-07 00:00:00', null, '马云', '54', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('83', '第十一本教育分类下的教材图书', '123', '641', '10210', '100', '2019-06-02 02:00:00', null, '刘慈欣', '55', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('84', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-07 00:00:00', null, '马云', '56', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('85', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-08 00:00:00', null, '刘慈欣', '57', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('86', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-08 00:00:00', null, '刘慈欣', '58', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('87', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-23 00:00:00', null, '马云', '59', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('88', '第十一本教育分类下的教材图书', '123', '641', '10210', '100', '2019-05-07 00:00:00', null, '刘慈欣', '60', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('89', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-01 00:00:00', null, '马云', '61', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('90', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-02 00:00:00', null, '刘慈欣', '62', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('91', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-04-30 00:00:00', null, '刘慈欣', '63', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('92', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-21 00:00:00', null, '马云', '64', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('93', '第十一本教育分类下的教材图书', '126', '641', '10210', '100', '2019-05-14 00:00:00', null, '刘慈欣', '64', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('94', '第十三本教育分类下的教材图书', '107', '121', '121', '100', '2019-05-21 00:00:00', null, '马云', '56', 'book_price/dd1.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('95', '第十四本教育分类下的教材图书', '102', '122', '123', '100', '2019-05-19 00:00:00', null, '刘慈欣', '34', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('96', '第十五本教育分类下的教材图书', '103', '176', '1002', '100', '2019-05-21 00:00:00', null, '刘慈欣', '18', 'book_price/dd3.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('97', '第十六本教育分类下的教材图书', '106', '151', '1040', '100', '2019-05-14 00:00:00', null, '马云', '35', 'book_price/dd6.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_book` VALUES ('98', '第十一本教育分类下的教材图书', '125', '641', '10210', '100', '2019-05-07 00:00:00', null, '刘慈欣', '46', 'book_price/dd5.jpg', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(40) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('1', '教育', '0');
INSERT INTO `t_category` VALUES ('2', '电子书/当当阅读器', '0');
INSERT INTO `t_category` VALUES ('3', '小说', '0');
INSERT INTO `t_category` VALUES ('4', '文艺', '0');
INSERT INTO `t_category` VALUES ('5', '青春文学/动漫·幽默', '0');
INSERT INTO `t_category` VALUES ('6', '童书', '0');
INSERT INTO `t_category` VALUES ('7', '生活', '0');
INSERT INTO `t_category` VALUES ('8', '人文社科', '0');
INSERT INTO `t_category` VALUES ('9', '经营', '0');
INSERT INTO `t_category` VALUES ('10', '励志/成功', '0');
INSERT INTO `t_category` VALUES ('11', '科技', '0');
INSERT INTO `t_category` VALUES ('12', '英文原版书', '0');
INSERT INTO `t_category` VALUES ('13', '当当出版', '0');
INSERT INTO `t_category` VALUES ('14', '期刊', '0');
INSERT INTO `t_category` VALUES ('16', '教材', '1');
INSERT INTO `t_category` VALUES ('17', '外语', '1');
INSERT INTO `t_category` VALUES ('18', '考试', '1');
INSERT INTO `t_category` VALUES ('19', '中小学教辅', '1');
INSERT INTO `t_category` VALUES ('20', '工具书', '1');
INSERT INTO `t_category` VALUES ('21', '文学', '4');
INSERT INTO `t_category` VALUES ('22', '传记', '4');
INSERT INTO `t_category` VALUES ('23', '艺术', '4');
INSERT INTO `t_category` VALUES ('24', '摄影', '4');
INSERT INTO `t_category` VALUES ('25', '0-2', '6');
INSERT INTO `t_category` VALUES ('26', '3-6', '6');
INSERT INTO `t_category` VALUES ('27', '7-10', '6');
INSERT INTO `t_category` VALUES ('28', '11-14', '6');
INSERT INTO `t_category` VALUES ('29', '科普/百科', '6');
INSERT INTO `t_category` VALUES ('30', '绘本', '6');
INSERT INTO `t_category` VALUES ('31', '文学', '6');
INSERT INTO `t_category` VALUES ('32', '英语', '6');
INSERT INTO `t_category` VALUES ('33', '孕期', '7');
INSERT INTO `t_category` VALUES ('34', '两性', '7');
INSERT INTO `t_category` VALUES ('35', '育儿/早教', '7');
INSERT INTO `t_category` VALUES ('36', '亲子/家教', '7');
INSERT INTO `t_category` VALUES ('37', '保健', '7');
INSERT INTO `t_category` VALUES ('38', '运动', '7');
INSERT INTO `t_category` VALUES ('39', '美妆', '7');
INSERT INTO `t_category` VALUES ('40', '手工/DIY', '7');
INSERT INTO `t_category` VALUES ('41', '美食', '7');
INSERT INTO `t_category` VALUES ('42', '旅游', '7');
INSERT INTO `t_category` VALUES ('43', '休闲', '7');
INSERT INTO `t_category` VALUES ('44', '家庭/家居', '7');
INSERT INTO `t_category` VALUES ('45', '风水/占卜', '7');
INSERT INTO `t_category` VALUES ('46', '历史', '8');
INSERT INTO `t_category` VALUES ('47', '古籍', '8');
INSERT INTO `t_category` VALUES ('48', '哲学/宗教', '8');
INSERT INTO `t_category` VALUES ('49', '文化', '8');
INSERT INTO `t_category` VALUES ('50', '政治/军事', '8');
INSERT INTO `t_category` VALUES ('51', '法律', '8');
INSERT INTO `t_category` VALUES ('52', '社会科学', '8');
INSERT INTO `t_category` VALUES ('53', '心理学', '8');
INSERT INTO `t_category` VALUES ('54', '管理', '9');
INSERT INTO `t_category` VALUES ('55', '投资理财', '9');
INSERT INTO `t_category` VALUES ('56', '经济', '9');
INSERT INTO `t_category` VALUES ('57', '音像', '9');
INSERT INTO `t_category` VALUES ('58', '科普', '11');
INSERT INTO `t_category` VALUES ('59', '建筑', '11');
INSERT INTO `t_category` VALUES ('60', '医学', '11');
INSERT INTO `t_category` VALUES ('61', '计算机', '11');
INSERT INTO `t_category` VALUES ('62', '农林', '11');
INSERT INTO `t_category` VALUES ('63', '自然科学', '11');
INSERT INTO `t_category` VALUES ('64', '工业', '11');

-- ----------------------------
-- Table structure for `t_confirm_string`
-- ----------------------------
DROP TABLE IF EXISTS `t_confirm_string`;
CREATE TABLE `t_confirm_string` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `code_time` datetime DEFAULT NULL,
  `user_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `t_confirm_string_user_id_id_5a9e1dad_fk_t_user_id` (`user_id_id`),
  CONSTRAINT `t_confirm_string_user_id_id_5a9e1dad_fk_t_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_confirm_string
-- ----------------------------

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_price` float DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `order_id` bigint(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receive_address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_2` (`user_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('8', '311', '2019-05-26 00:58:34', '1558803514391', '1', '北京');
INSERT INTO `t_order` VALUES ('9', '102', '2019-05-26 23:54:37', '1558886077235', '47', '北京市中关村');
INSERT INTO `t_order` VALUES ('10', '102', '2019-05-27 08:50:25', '1558918225554', '47', '北京市中关村');
INSERT INTO `t_order` VALUES ('12', '102', '2019-05-27 16:58:30', '1558947510215', '87', '北京市昌平区');

-- ----------------------------
-- Table structure for `t_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(40) DEFAULT NULL,
  `sub_total` float DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_4` (`order_id`),
  KEY `FK_Reference_5` (`book_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`id`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`book_id`) REFERENCES `t_book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `status` varchar(40) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '15037693885', '李飞阳', '123456', null);
INSERT INTO `t_user` VALUES ('47', '12345678911', null, 'pbkdf2_sha256$100000$FpsxPDLVCCCy$KwkyDIpOThnndBXrR00Ai0Q/XTXqrReClvj+/zFd6D0=', null);
INSERT INTO `t_user` VALUES ('58', '13707699463', null, 'pbkdf2_sha256$100000$vIagVLBl7hD0$JDmd69CRN19zzXtZ6yY6u+XrGO8YKBeRg7aTg4W1Onk=', null);
INSERT INTO `t_user` VALUES ('65', '13526946453', null, 'pbkdf2_sha256$100000$fsHjtjQ6AnbF$IVVAFAgT6w06u/YV9KKiFDGRBXKV5ldtxmPGxZORbns=', null);
INSERT INTO `t_user` VALUES ('67', '1301899656@qq.com', null, 'pbkdf2_sha256$100000$vEGnXBQsFhWp$wJzUekDAdcm5E5fwZKfs9h7lAx1XzJxMRHN3zvaocII=', null);
INSERT INTO `t_user` VALUES ('87', 'li1301899656@sina.com', null, 'pbkdf2_sha256$100000$ATcvlaN2PLXq$8dYhUAy1YYTKg3m73WN3hPpFiFYkCz8yQmd6ObkegfA=', '1');
