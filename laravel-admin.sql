/*

Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : laravel-admin

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-06-10 16:28:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, '2019-04-15 07:16:59');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '系统管理', 'fa-tasks', null, null, '2019-04-15 07:15:03');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '管理员管理', 'fa-users', 'auth/users', null, '2019-04-15 07:15:26');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色管理', 'fa-user', 'auth/roles', null, '2019-04-15 07:15:42');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限管理', 'fa-ban', 'auth/permissions', null, '2019-04-15 07:15:54');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单管理', 'fa-bars', 'auth/menu', null, '2019-04-15 07:16:34');
INSERT INTO `admin_menu` VALUES ('7', '0', '0', '配置管理', 'fa-cog', null, '2019-04-15 07:37:17', '2019-04-15 07:37:17');
INSERT INTO `admin_menu` VALUES ('8', '7', '0', '系统配置', 'fa-wrench', '/config/system', '2019-04-15 07:38:38', '2019-04-15 07:47:17');
INSERT INTO `admin_menu` VALUES ('9', '0', '0', '用户管理', 'fa-user-md', null, '2019-04-17 02:03:45', '2019-04-17 02:05:40');
INSERT INTO `admin_menu` VALUES ('10', '9', '0', '用户列表', 'fa-hand-stop-o', 'users', '2019-06-06 06:53:08', '2019-06-10 02:52:27');
INSERT INTO `admin_menu` VALUES ('11', '9', '0', '测试', 'fa-bars', 'ceshi/index', '2019-06-10 02:46:44', '2019-06-10 02:46:44');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=955 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-28 03:05:37', '2018-09-28 03:05:37');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-28 03:05:49', '2018-09-28 03:05:49');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 03:05:50', '2018-09-28 03:05:50');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 03:05:56', '2018-09-28 03:05:56');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 03:05:57', '2018-09-28 03:05:57');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 03:05:58', '2018-09-28 03:05:58');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 03:06:00', '2018-09-28 03:06:00');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 03:06:05', '2018-09-28 03:06:05');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 03:06:08', '2018-09-28 03:06:08');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 03:06:08', '2018-09-28 03:06:08');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 03:06:09', '2018-09-28 03:06:09');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-28 03:08:55', '2018-09-28 03:08:55');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-11 06:57:06', '2018-10-11 06:57:06');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:57:16', '2018-10-11 06:57:16');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:57:20', '2018-10-11 06:57:20');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:57:21', '2018-10-11 06:57:21');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:57:25', '2018-10-11 06:57:25');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:57:26', '2018-10-11 06:57:26');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:57:27', '2018-10-11 06:57:27');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:57:28', '2018-10-11 06:57:28');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:57:29', '2018-10-11 06:57:29');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:57:44', '2018-10-11 06:57:44');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-11 06:58:52', '2018-10-11 06:58:52');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-11 06:58:53', '2018-10-11 06:58:53');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:58:54', '2018-10-11 06:58:54');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-11 06:58:54', '2018-10-11 06:58:54');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:58:59', '2018-10-11 06:58:59');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-11 06:58:59', '2018-10-11 06:58:59');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-11 06:59:05', '2018-10-11 06:59:05');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:59:07', '2018-10-11 06:59:07');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:59:29', '2018-10-11 06:59:29');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:59:30', '2018-10-11 06:59:30');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:59:31', '2018-10-11 06:59:31');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-10-11 06:59:42', '2018-10-11 06:59:42');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:59:45', '2018-10-11 06:59:45');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:59:48', '2018-10-11 06:59:48');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:59:48', '2018-10-11 06:59:48');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:59:49', '2018-10-11 06:59:49');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 06:59:50', '2018-10-11 06:59:50');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:01', '2018-10-11 07:00:01');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:02', '2018-10-11 07:00:02');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:03', '2018-10-11 07:00:03');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:05', '2018-10-11 07:00:05');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/menu/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"x2dQVNlx3cvTxCHM0JYQXrlb58QpZ6CFIQbecMQr\"}', '2018-10-11 07:00:10', '2018-10-11 07:00:10');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:10', '2018-10-11 07:00:10');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:13', '2018-10-11 07:00:13');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:14', '2018-10-11 07:00:14');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:15', '2018-10-11 07:00:15');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:16', '2018-10-11 07:00:16');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:18', '2018-10-11 07:00:18');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-11 07:00:19', '2018-10-11 07:00:19');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:25', '2018-10-11 07:00:25');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:26', '2018-10-11 07:00:26');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:27', '2018-10-11 07:00:27');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:27', '2018-10-11 07:00:27');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:28', '2018-10-11 07:00:28');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:29', '2018-10-11 07:00:29');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:30', '2018-10-11 07:00:30');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:30', '2018-10-11 07:00:30');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:31', '2018-10-11 07:00:31');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:32', '2018-10-11 07:00:32');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:00:33', '2018-10-11 07:00:33');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:08:42', '2018-10-11 07:08:42');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:08:43', '2018-10-11 07:08:43');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:08:44', '2018-10-11 07:08:44');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-11 07:08:45', '2018-10-11 07:08:45');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-09 03:07:49', '2019-04-09 03:07:49');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:07:52', '2019-04-09 03:07:52');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:08:02', '2019-04-09 03:08:02');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:08:53', '2019-04-09 03:08:53');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:08:55', '2019-04-09 03:08:55');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:09:06', '2019-04-09 03:09:06');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:09:08', '2019-04-09 03:09:08');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:09:15', '2019-04-09 03:09:15');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:09:24', '2019-04-09 03:09:24');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:09:27', '2019-04-09 03:09:27');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"test\",\"name\":\"123456\",\"permissions\":[\"5\",\"2\",null],\"_token\":\"Lz9h31irKAf6wnJEF1jVU9vg6Q2lHW5NWGwXSlHU\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/roles\"}', '2019-04-09 03:10:29', '2019-04-09 03:10:29');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-09 03:10:29', '2019-04-09 03:10:29');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-09 03:11:01', '2019-04-09 03:11:01');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-09 03:12:27', '2019-04-09 03:12:27');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:12:35', '2019-04-09 03:12:35');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:12:43', '2019-04-09 03:12:43');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:12:47', '2019-04-09 03:12:47');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:12:53', '2019-04-09 03:12:53');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:12:56', '2019-04-09 03:12:56');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"test\",\"name\":\"test\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"1\",\"2\",null],\"permissions\":[\"3\",\"4\",null],\"_token\":\"gsWs3fP86dtYEzB1LhWIr9g0vnarOCV1ibjmVdzv\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/users\"}', '2019-04-09 03:13:58', '2019-04-09 03:13:58');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-04-09 03:13:59', '2019-04-09 03:13:59');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:14:15', '2019-04-09 03:14:15');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:14:16', '2019-04-09 03:14:16');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-04-09 03:14:19', '2019-04-09 03:14:19');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-04-09 03:14:21', '2019-04-09 03:14:21');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:29', '2019-04-09 03:15:29');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:33', '2019-04-09 03:15:33');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:35', '2019-04-09 03:15:35');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:37', '2019-04-09 03:15:37');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:38', '2019-04-09 03:15:38');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:38', '2019-04-09 03:15:38');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:39', '2019-04-09 03:15:39');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:39', '2019-04-09 03:15:39');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:40', '2019-04-09 03:15:40');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:40', '2019-04-09 03:15:40');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:41', '2019-04-09 03:15:41');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:42', '2019-04-09 03:15:42');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:42', '2019-04-09 03:15:42');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:43', '2019-04-09 03:15:43');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:52', '2019-04-09 03:15:52');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:53', '2019-04-09 03:15:53');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:54', '2019-04-09 03:15:54');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:55', '2019-04-09 03:15:55');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:55', '2019-04-09 03:15:55');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:56', '2019-04-09 03:15:56');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:58', '2019-04-09 03:15:58');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-09 03:15:59', '2019-04-09 03:15:59');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-09 08:02:28', '2019-04-09 08:02:28');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-09 08:02:32', '2019-04-09 08:02:32');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-09 08:02:33', '2019-04-09 08:02:33');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\",\"id\":\"100\"}', '2019-04-09 08:02:45', '2019-04-09 08:02:45');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"id\":\"100\"}', '2019-04-09 08:07:43', '2019-04-09 08:07:43');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-15 01:41:03', '2019-04-15 01:41:03');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:41:13', '2019-04-15 01:41:13');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:41:17', '2019-04-15 01:41:17');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:41:20', '2019-04-15 01:41:20');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:41:24', '2019-04-15 01:41:24');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:41:27', '2019-04-15 01:41:27');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"UTuQf5VDES27Jv3kp9aomUXwxdopU9qRPA9uFFuU\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6}]}]\"}', '2019-04-15 01:41:45', '2019-04-15 01:41:45');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:41:45', '2019-04-15 01:41:45');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:41:50', '2019-04-15 01:41:50');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:49:37', '2019-04-15 01:49:37');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 02:04:52', '2019-04-15 02:04:52');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 02:31:15', '2019-04-15 02:31:15');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 02:31:17', '2019-04-15 02:31:17');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 02:31:21', '2019-04-15 02:31:21');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-15 07:04:17', '2019-04-15 07:04:17');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:04:28', '2019-04-15 07:04:28');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:04:31', '2019-04-15 07:04:31');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:04:32', '2019-04-15 07:04:32');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:04:33', '2019-04-15 07:04:33');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:04:36', '2019-04-15 07:04:36');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:04:41', '2019-04-15 07:04:41');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:04:45', '2019-04-15 07:04:45');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2019-04-15 07:04:53', '2019-04-15 07:04:53');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2019-04-15 07:07:55', '2019-04-15 07:07:55');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:08:02', '2019-04-15 07:08:02');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-15 07:09:01', '2019-04-15 07:09:01');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:09:05', '2019-04-15 07:09:05');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:09:08', '2019-04-15 07:09:08');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:09:28', '2019-04-15 07:09:28');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-15 07:11:53', '2019-04-15 07:11:53');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-15 07:11:55', '2019-04-15 07:11:55');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-15 07:11:58', '2019-04-15 07:11:58');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:12:11', '2019-04-15 07:12:11');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:12:14', '2019-04-15 07:12:14');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:12:18', '2019-04-15 07:12:18');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:05', '2019-04-15 07:14:05');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:06', '2019-04-15 07:14:06');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:07', '2019-04-15 07:14:07');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:08', '2019-04-15 07:14:08');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:08', '2019-04-15 07:14:08');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:09', '2019-04-15 07:14:09');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:11', '2019-04-15 07:14:11');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:15', '2019-04-15 07:14:15');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:17', '2019-04-15 07:14:17');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:18', '2019-04-15 07:14:18');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:19', '2019-04-15 07:14:19');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:20', '2019-04-15 07:14:20');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:28', '2019-04-15 07:14:28');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"oZnWGjezTL3ksh73SX24eeStm4Yw0xUa7zV290E8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/menu\"}', '2019-04-15 07:14:43', '2019-04-15 07:14:43');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:14:43', '2019-04-15 07:14:43');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:14:53', '2019-04-15 07:14:53');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"oZnWGjezTL3ksh73SX24eeStm4Yw0xUa7zV290E8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/menu\"}', '2019-04-15 07:15:03', '2019-04-15 07:15:03');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:15:04', '2019-04-15 07:15:04');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:15:07', '2019-04-15 07:15:07');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"_token\":\"oZnWGjezTL3ksh73SX24eeStm4Yw0xUa7zV290E8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/menu\"}', '2019-04-15 07:15:26', '2019-04-15 07:15:26');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:15:26', '2019-04-15 07:15:26');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:15:29', '2019-04-15 07:15:29');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"_token\":\"oZnWGjezTL3ksh73SX24eeStm4Yw0xUa7zV290E8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/menu\"}', '2019-04-15 07:15:42', '2019-04-15 07:15:42');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:15:43', '2019-04-15 07:15:43');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:15:46', '2019-04-15 07:15:46');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"_token\":\"oZnWGjezTL3ksh73SX24eeStm4Yw0xUa7zV290E8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/menu\"}', '2019-04-15 07:15:54', '2019-04-15 07:15:54');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:15:54', '2019-04-15 07:15:54');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:15:56', '2019-04-15 07:15:56');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:15:57', '2019-04-15 07:15:57');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:16:24', '2019-04-15 07:16:24');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"_token\":\"oZnWGjezTL3ksh73SX24eeStm4Yw0xUa7zV290E8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/menu\"}', '2019-04-15 07:16:34', '2019-04-15 07:16:34');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:16:34', '2019-04-15 07:16:34');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:16:39', '2019-04-15 07:16:39');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:16:47', '2019-04-15 07:16:47');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:16:50', '2019-04-15 07:16:50');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"oZnWGjezTL3ksh73SX24eeStm4Yw0xUa7zV290E8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/menu\"}', '2019-04-15 07:16:59', '2019-04-15 07:16:59');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:16:59', '2019-04-15 07:16:59');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:17:34', '2019-04-15 07:17:34');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-15 07:20:51', '2019-04-15 07:20:51');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-15 07:21:27', '2019-04-15 07:21:27');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:21:50', '2019-04-15 07:21:50');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:21:53', '2019-04-15 07:21:53');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:21:54', '2019-04-15 07:21:54');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:21:55', '2019-04-15 07:21:55');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:21:56', '2019-04-15 07:21:56');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:22:45', '2019-04-15 07:22:45');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:22:47', '2019-04-15 07:22:47');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-15 07:26:04', '2019-04-15 07:26:04');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:26:09', '2019-04-15 07:26:09');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:26:12', '2019-04-15 07:26:12');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:26:13', '2019-04-15 07:26:13');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:26:14', '2019-04-15 07:26:14');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:26:15', '2019-04-15 07:26:15');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:26:17', '2019-04-15 07:26:17');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:28:51', '2019-04-15 07:28:51');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u914d\\u7f6e\\u7ba1\\u7406\",\"icon\":\"fa-cog\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"oZnWGjezTL3ksh73SX24eeStm4Yw0xUa7zV290E8\"}', '2019-04-15 07:37:17', '2019-04-15 07:37:17');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:37:17', '2019-04-15 07:37:17');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:37:20', '2019-04-15 07:37:20');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:37:27', '2019-04-15 07:37:27');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:37:31', '2019-04-15 07:37:31');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:37:41', '2019-04-15 07:37:41');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:37:48', '2019-04-15 07:37:48');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:37:52', '2019-04-15 07:37:52');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:37:56', '2019-04-15 07:37:56');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:38:00', '2019-04-15 07:38:00');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:38:09', '2019-04-15 07:38:09');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"7\",\"title\":\"\\u7cfb\\u7edf\\u914d\\u7f6e\",\"icon\":\"fa-bars\",\"uri\":\"\\/admin\\/config\\/system\",\"roles\":[null],\"_token\":\"oZnWGjezTL3ksh73SX24eeStm4Yw0xUa7zV290E8\"}', '2019-04-15 07:38:38', '2019-04-15 07:38:38');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:38:38', '2019-04-15 07:38:38');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:38:42', '2019-04-15 07:38:42');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"7\",\"title\":\"\\u7cfb\\u7edf\\u914d\\u7f6e\",\"icon\":\"fa-bars\",\"uri\":\"\\/config\\/system\",\"roles\":[null],\"_token\":\"oZnWGjezTL3ksh73SX24eeStm4Yw0xUa7zV290E8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/menu\"}', '2019-04-15 07:38:48', '2019-04-15 07:38:48');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:38:48', '2019-04-15 07:38:48');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:38:55', '2019-04-15 07:38:55');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:39:04', '2019-04-15 07:39:04');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:39:13', '2019-04-15 07:39:13');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"7\",\"title\":\"\\u7cfb\\u7edf\\u914d\\u7f6e\",\"icon\":\"fa-bars\",\"uri\":\"\\/config\\/system\",\"roles\":[\"1\",null],\"_token\":\"oZnWGjezTL3ksh73SX24eeStm4Yw0xUa7zV290E8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/menu\"}', '2019-04-15 07:39:19', '2019-04-15 07:39:19');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:39:19', '2019-04-15 07:39:19');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:39:25', '2019-04-15 07:39:25');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:44:52', '2019-04-15 07:44:52');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-15 07:45:07', '2019-04-15 07:45:07');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-15 07:45:16', '2019-04-15 07:45:16');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:45:30', '2019-04-15 07:45:30');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:45:34', '2019-04-15 07:45:34');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"7\",\"title\":\"\\u7cfb\\u7edf\\u914d\\u7f6e\",\"icon\":\"fa-wrench\",\"uri\":\"\\/config\\/system\",\"roles\":[\"1\",null],\"_token\":\"oZnWGjezTL3ksh73SX24eeStm4Yw0xUa7zV290E8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/menu\"}', '2019-04-15 07:47:17', '2019-04-15 07:47:17');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:47:17', '2019-04-15 07:47:17');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:47:22', '2019-04-15 07:47:22');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-15 07:47:28', '2019-04-15 07:47:28');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:52:01', '2019-04-15 07:52:01');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:52:06', '2019-04-15 07:52:06');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:52:08', '2019-04-15 07:52:08');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-04-15 07:54:18', '2019-04-15 07:54:18');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-04-15 07:55:10', '2019-04-15 07:55:10');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:55:14', '2019-04-15 07:55:14');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-15 07:55:38', '2019-04-15 07:55:38');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-15 07:56:05', '2019-04-15 07:56:05');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-15 07:57:05', '2019-04-15 07:57:05');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-15 07:57:13', '2019-04-15 07:57:13');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-15 07:57:25', '2019-04-15 07:57:25');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 08:03:05', '2019-04-15 08:03:05');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-16 06:14:56', '2019-04-16 06:14:56');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 06:14:58', '2019-04-16 06:14:58');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 06:15:01', '2019-04-16 06:15:01');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-16 06:15:01', '2019-04-16 06:15:01');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 06:15:15', '2019-04-16 06:15:15');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-16 06:15:15', '2019-04-16 06:15:15');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-16 06:15:26', '2019-04-16 06:15:26');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 06:15:29', '2019-04-16 06:15:29');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:31:04', '2019-04-16 06:31:04');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:32:04', '2019-04-16 06:32:04');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:32:23', '2019-04-16 06:32:23');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:32:31', '2019-04-16 06:32:31');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:32:52', '2019-04-16 06:32:52');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:32:57', '2019-04-16 06:32:57');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:33:04', '2019-04-16 06:33:04');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:34:39', '2019-04-16 06:34:39');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:34:53', '2019-04-16 06:34:53');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:42:27', '2019-04-16 06:42:27');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:42:55', '2019-04-16 06:42:55');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:43:20', '2019-04-16 06:43:20');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:43:22', '2019-04-16 06:43:22');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:43:34', '2019-04-16 06:43:34');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:44:09', '2019-04-16 06:44:09');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:59:02', '2019-04-16 06:59:02');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:59:28', '2019-04-16 06:59:28');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:59:41', '2019-04-16 06:59:41');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 06:59:48', '2019-04-16 06:59:48');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:00:28', '2019-04-16 07:00:28');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:01:54', '2019-04-16 07:01:54');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:02:01', '2019-04-16 07:02:01');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:03:30', '2019-04-16 07:03:30');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:03:40', '2019-04-16 07:03:40');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:04:02', '2019-04-16 07:04:02');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:30:47', '2019-04-16 07:30:47');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:31:03', '2019-04-16 07:31:03');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:31:17', '2019-04-16 07:31:17');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:32:59', '2019-04-16 07:32:59');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:33:02', '2019-04-16 07:33:02');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:39:41', '2019-04-16 07:39:41');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:39:50', '2019-04-16 07:39:50');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:41:54', '2019-04-16 07:41:54');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:47:00', '2019-04-16 07:47:00');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 07:54:23', '2019-04-16 07:54:23');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 07:57:29', '2019-04-16 07:57:29');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 07:57:32', '2019-04-16 07:57:32');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"\\u6c34\\u7535\\u8d39\",\"name\":\"\\u6c34\\u7535\\u8d39\",\"permissions\":[\"2\",null],\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/roles\"}', '2019-04-16 07:57:39', '2019-04-16 07:57:39');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-16 07:57:40', '2019-04-16 07:57:40');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/auth/roles/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 07:57:55', '2019-04-16 07:57:55');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 07:57:56', '2019-04-16 07:57:56');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 07:58:43', '2019-04-16 07:58:43');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 08:06:10', '2019-04-16 08:06:10');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-16 08:06:10', '2019-04-16 08:06:10');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 08:06:15', '2019-04-16 08:06:15');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-16 08:06:16', '2019-04-16 08:06:16');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-16 08:06:41', '2019-04-16 08:06:41');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 08:06:44', '2019-04-16 08:06:44');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-16 08:06:44', '2019-04-16 08:06:44');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-16 08:06:55', '2019-04-16 08:06:55');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 08:06:57', '2019-04-16 08:06:57');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-16 08:06:57', '2019-04-16 08:06:57');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-16 08:07:05', '2019-04-16 08:07:05');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 08:07:08', '2019-04-16 08:07:08');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-16 08:07:08', '2019-04-16 08:07:08');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-16 08:12:43', '2019-04-16 08:12:43');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 08:12:45', '2019-04-16 08:12:45');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:23:18', '2019-04-16 08:23:18');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:23:21', '2019-04-16 08:23:21');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:23:44', '2019-04-16 08:23:44');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:28:29', '2019-04-16 08:28:29');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:28:31', '2019-04-16 08:28:31');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:29:04', '2019-04-16 08:29:04');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:29:15', '2019-04-16 08:29:15');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:31:42', '2019-04-16 08:31:42');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:31:43', '2019-04-16 08:31:43');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:32:57', '2019-04-16 08:32:57');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:33:00', '2019-04-16 08:33:00');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:33:00', '2019-04-16 08:33:00');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:33:42', '2019-04-16 08:33:42');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:33:44', '2019-04-16 08:33:44');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:33:44', '2019-04-16 08:33:44');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:33:48', '2019-04-16 08:33:48');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:33:49', '2019-04-16 08:33:49');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:35:07', '2019-04-16 08:35:07');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:35:08', '2019-04-16 08:35:08');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:35:08', '2019-04-16 08:35:08');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:35:19', '2019-04-16 08:35:19');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:35:21', '2019-04-16 08:35:21');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:35:22', '2019-04-16 08:35:22');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:35:35', '2019-04-16 08:35:35');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:35:36', '2019-04-16 08:35:36');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:35:36', '2019-04-16 08:35:36');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:35:38', '2019-04-16 08:35:38');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:35:38', '2019-04-16 08:35:38');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:35:55', '2019-04-16 08:35:55');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:35:57', '2019-04-16 08:35:57');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:37:03', '2019-04-16 08:37:03');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:37:03', '2019-04-16 08:37:03');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:37:05', '2019-04-16 08:37:05');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:37:07', '2019-04-16 08:37:07');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:37:07', '2019-04-16 08:37:07');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:37:17', '2019-04-16 08:37:17');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:37:19', '2019-04-16 08:37:19');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:37:19', '2019-04-16 08:37:19');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:38:56', '2019-04-16 08:38:56');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:38:58', '2019-04-16 08:38:58');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:38:58', '2019-04-16 08:38:58');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:38:59', '2019-04-16 08:38:59');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:38:59', '2019-04-16 08:38:59');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:39:05', '2019-04-16 08:39:05');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:39:06', '2019-04-16 08:39:06');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:39:06', '2019-04-16 08:39:06');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:42:09', '2019-04-16 08:42:09');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:42:10', '2019-04-16 08:42:10');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:42:23', '2019-04-16 08:42:23');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:42:25', '2019-04-16 08:42:25');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:42:29', '2019-04-16 08:42:29');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:42:35', '2019-04-16 08:42:35');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:42:48', '2019-04-16 08:42:48');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:42:51', '2019-04-16 08:42:51');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:42:54', '2019-04-16 08:42:54');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:46:12', '2019-04-16 08:46:12');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:46:13', '2019-04-16 08:46:13');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:46:16', '2019-04-16 08:46:16');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:46:18', '2019-04-16 08:46:18');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:46:19', '2019-04-16 08:46:19');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-16 08:46:23', '2019-04-16 08:46:23');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 08:46:25', '2019-04-16 08:46:25');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:46:25', '2019-04-16 08:46:25');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:46:37', '2019-04-16 08:46:37');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:54:10', '2019-04-16 08:54:10');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:54:30', '2019-04-16 08:54:30');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:54:34', '2019-04-16 08:54:34');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:54:43', '2019-04-16 08:54:43');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:54:49', '2019-04-16 08:54:49');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:55:10', '2019-04-16 08:55:10');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:55:12', '2019-04-16 08:55:12');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:56:10', '2019-04-16 08:56:10');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:56:13', '2019-04-16 08:56:13');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:56:13', '2019-04-16 08:56:13');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:56:15', '2019-04-16 08:56:15');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:56:17', '2019-04-16 08:56:17');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:56:17', '2019-04-16 08:56:17');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:56:24', '2019-04-16 08:56:24');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:58:23', '2019-04-16 08:58:23');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:58:25', '2019-04-16 08:58:25');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:58:25', '2019-04-16 08:58:25');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:59:12', '2019-04-16 08:59:12');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 08:59:14', '2019-04-16 08:59:14');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 08:59:14', '2019-04-16 08:59:14');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:01:52', '2019-04-16 09:01:52');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:03:24', '2019-04-16 09:03:24');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:03:26', '2019-04-16 09:03:26');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:03:54', '2019-04-16 09:03:54');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:03:56', '2019-04-16 09:03:56');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:04:05', '2019-04-16 09:04:05');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:04:07', '2019-04-16 09:04:07');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-16 09:04:09', '2019-04-16 09:04:09');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:04:12', '2019-04-16 09:04:12');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:04:16', '2019-04-16 09:04:16');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:04:18', '2019-04-16 09:04:18');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:05:06', '2019-04-16 09:05:06');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:05:09', '2019-04-16 09:05:09');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:05:12', '2019-04-16 09:05:12');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:05:14', '2019-04-16 09:05:14');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:05:56', '2019-04-16 09:05:56');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:06:04', '2019-04-16 09:06:04');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:06:06', '2019-04-16 09:06:06');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:06:07', '2019-04-16 09:06:07');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:09:07', '2019-04-16 09:09:07');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:09:12', '2019-04-16 09:09:12');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:09:19', '2019-04-16 09:09:19');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:13:05', '2019-04-16 09:13:05');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:17:33', '2019-04-16 09:17:33');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:18:09', '2019-04-16 09:18:09');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:18:38', '2019-04-16 09:18:38');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:18:45', '2019-04-16 09:18:45');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:18:46', '2019-04-16 09:18:46');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:18:54', '2019-04-16 09:18:54');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-16 09:18:57', '2019-04-16 09:18:57');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:18:59', '2019-04-16 09:18:59');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:19:02', '2019-04-16 09:19:02');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:19:07', '2019-04-16 09:19:07');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:21:43', '2019-04-16 09:21:43');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:21:51', '2019-04-16 09:21:51');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:14', '2019-04-16 09:22:14');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:48', '2019-04-16 09:22:48');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:49', '2019-04-16 09:22:49');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:49', '2019-04-16 09:22:49');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:50', '2019-04-16 09:22:50');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:50', '2019-04-16 09:22:50');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:50', '2019-04-16 09:22:50');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:50', '2019-04-16 09:22:50');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:51', '2019-04-16 09:22:51');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:51', '2019-04-16 09:22:51');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:52', '2019-04-16 09:22:52');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:52', '2019-04-16 09:22:52');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:53', '2019-04-16 09:22:53');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:53', '2019-04-16 09:22:53');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:53', '2019-04-16 09:22:53');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:54', '2019-04-16 09:22:54');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:54', '2019-04-16 09:22:54');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:54', '2019-04-16 09:22:54');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:55', '2019-04-16 09:22:55');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:55', '2019-04-16 09:22:55');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:56', '2019-04-16 09:22:56');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:56', '2019-04-16 09:22:56');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:56', '2019-04-16 09:22:56');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:22:56', '2019-04-16 09:22:56');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:23:14', '2019-04-16 09:23:14');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:24:36', '2019-04-16 09:24:36');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:24:38', '2019-04-16 09:24:38');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:24:39', '2019-04-16 09:24:39');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:24:39', '2019-04-16 09:24:39');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:24:39', '2019-04-16 09:24:39');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:08', '2019-04-16 09:25:08');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:09', '2019-04-16 09:25:09');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:09', '2019-04-16 09:25:09');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:10', '2019-04-16 09:25:10');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:10', '2019-04-16 09:25:10');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:10', '2019-04-16 09:25:10');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:11', '2019-04-16 09:25:11');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:11', '2019-04-16 09:25:11');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:11', '2019-04-16 09:25:11');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:12', '2019-04-16 09:25:12');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:12', '2019-04-16 09:25:12');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:12', '2019-04-16 09:25:12');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:13', '2019-04-16 09:25:13');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:22', '2019-04-16 09:25:22');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:23', '2019-04-16 09:25:23');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:24', '2019-04-16 09:25:24');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:24', '2019-04-16 09:25:24');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:25', '2019-04-16 09:25:25');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:25', '2019-04-16 09:25:25');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:25', '2019-04-16 09:25:25');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:25:25', '2019-04-16 09:25:25');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:28:35', '2019-04-16 09:28:35');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:28:42', '2019-04-16 09:28:42');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:28:44', '2019-04-16 09:28:44');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:28:46', '2019-04-16 09:28:46');
INSERT INTO `admin_operation_log` VALUES ('491', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:28:48', '2019-04-16 09:28:48');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:28:50', '2019-04-16 09:28:50');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:28:52', '2019-04-16 09:28:52');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:28:53', '2019-04-16 09:28:53');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:28:59', '2019-04-16 09:28:59');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:29:00', '2019-04-16 09:29:00');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:29:03', '2019-04-16 09:29:03');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:29:14', '2019-04-16 09:29:14');
INSERT INTO `admin_operation_log` VALUES ('499', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:29:49', '2019-04-16 09:29:49');
INSERT INTO `admin_operation_log` VALUES ('500', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:34:56', '2019-04-16 09:34:56');
INSERT INTO `admin_operation_log` VALUES ('501', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 09:39:34', '2019-04-16 09:39:34');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:39:36', '2019-04-16 09:39:36');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:39:57', '2019-04-16 09:39:57');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:39:57', '2019-04-16 09:39:57');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:40:14', '2019-04-16 09:40:14');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:40:19', '2019-04-16 09:40:19');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:40:19', '2019-04-16 09:40:19');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:40:39', '2019-04-16 09:40:39');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:40:41', '2019-04-16 09:40:41');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:40:41', '2019-04-16 09:40:41');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:41:16', '2019-04-16 09:41:16');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:41:19', '2019-04-16 09:41:19');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:41:19', '2019-04-16 09:41:19');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:41:21', '2019-04-16 09:41:21');
INSERT INTO `admin_operation_log` VALUES ('515', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:41:21', '2019-04-16 09:41:21');
INSERT INTO `admin_operation_log` VALUES ('516', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:41:23', '2019-04-16 09:41:23');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:41:32', '2019-04-16 09:41:32');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:41:33', '2019-04-16 09:41:33');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:41:33', '2019-04-16 09:41:33');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:48:40', '2019-04-16 09:48:40');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:48:40', '2019-04-16 09:48:40');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:48:43', '2019-04-16 09:48:43');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:48:48', '2019-04-16 09:48:48');
INSERT INTO `admin_operation_log` VALUES ('524', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:48:48', '2019-04-16 09:48:48');
INSERT INTO `admin_operation_log` VALUES ('525', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 09:57:03', '2019-04-16 09:57:03');
INSERT INTO `admin_operation_log` VALUES ('526', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"appName\":\"\\u7684\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:57:06', '2019-04-16 09:57:06');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"appName\":\"\\u7684\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:57:08', '2019-04-16 09:57:08');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"appName\":\"\\u8bf4\\u6cd5\\u662f\\u5426\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:57:15', '2019-04-16 09:57:15');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"appName\":\"\\u8bf4\\u6cd5\\u662f\\u5426\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 09:57:27', '2019-04-16 09:57:27');
INSERT INTO `admin_operation_log` VALUES ('530', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"appName\":\"\\u8bf4\\u6cd5\\u662f\\u5426\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:12:46', '2019-04-16 10:12:46');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 10:12:46', '2019-04-16 10:12:46');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-16 10:12:49', '2019-04-16 10:12:49');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"name\":\"\\u80dc\\u591a\\u8d1f\\u5c11\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:12:56', '2019-04-16 10:12:56');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"name\":\"\\u80dc\\u591a\\u8d1f\\u5c11\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:13:32', '2019-04-16 10:13:32');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"name\":\"\\u80dc\\u591a\\u8d1f\\u5c11\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:13:35', '2019-04-16 10:13:35');
INSERT INTO `admin_operation_log` VALUES ('536', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-16 10:13:41', '2019-04-16 10:13:41');
INSERT INTO `admin_operation_log` VALUES ('537', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:13:44', '2019-04-16 10:13:44');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"admin\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:13:49', '2019-04-16 10:13:49');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"admin\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:15:24', '2019-04-16 10:15:24');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"admin\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:15:27', '2019-04-16 10:15:27');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"admin\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:21:05', '2019-04-16 10:21:05');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"admin\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:21:19', '2019-04-16 10:21:19');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"admin\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:21:42', '2019-04-16 10:21:42');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"admin\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:21:45', '2019-04-16 10:21:45');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"admin\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:21:53', '2019-04-16 10:21:53');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"admin\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:22:08', '2019-04-16 10:22:08');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"admin\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:22:10', '2019-04-16 10:22:10');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"admin\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:22:13', '2019-04-16 10:22:13');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"admin\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:22:43', '2019-04-16 10:22:43');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"\\u6c99\\u53d1\\u53d1\\u653e\\u65f6\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:22:46', '2019-04-16 10:22:46');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"\\u6c99\\u53d1\\u53d1\\u653e\\u65f6\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:22:49', '2019-04-16 10:22:49');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"\\u6c99\\u53d1\\u53d1\\u653e\\u65f6\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:22:53', '2019-04-16 10:22:53');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"app\",\"name\":\"\\u6c99\\u53d1\\u53d1\\u653e\\u65f6\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:25:18', '2019-04-16 10:25:18');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"admin\",\"name\":\"\\u540e\\u53f0\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:25:40', '2019-04-16 10:25:40');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:02', '2019-04-16 10:26:02');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:04', '2019-04-16 10:26:04');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:05', '2019-04-16 10:26:05');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:05', '2019-04-16 10:26:05');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:06', '2019-04-16 10:26:06');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:07', '2019-04-16 10:26:07');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:07', '2019-04-16 10:26:07');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:08', '2019-04-16 10:26:08');
INSERT INTO `admin_operation_log` VALUES ('563', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:09', '2019-04-16 10:26:09');
INSERT INTO `admin_operation_log` VALUES ('564', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:09', '2019-04-16 10:26:09');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:10', '2019-04-16 10:26:10');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:11', '2019-04-16 10:26:11');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:13', '2019-04-16 10:26:13');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-16 10:26:14', '2019-04-16 10:26:14');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"admin\",\"name\":\"xiaoyukarl\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:26:17', '2019-04-16 10:26:17');
INSERT INTO `admin_operation_log` VALUES ('570', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"admin\",\"name\":\"xiaoyukarl\",\"_token\":\"C39b1eq0UfG0r9Lg5mxk1dtrdUZ5czRNRLFCAWyx\"}', '2019-04-16 10:26:21', '2019-04-16 10:26:21');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-17 01:45:39', '2019-04-17 01:45:39');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-17 01:45:52', '2019-04-17 01:45:52');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-17 01:46:13', '2019-04-17 01:46:13');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 01:51:13', '2019-04-17 01:51:13');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"admin\",\"name\":null,\"_token\":\"saJBdZmpkuy0VayhGvg5dT6E8ytDns91IuCr9TSN\"}', '2019-04-17 01:51:16', '2019-04-17 01:51:16');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 01:51:17', '2019-04-17 01:51:17');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 01:51:22', '2019-04-17 01:51:22');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 01:58:54', '2019-04-17 01:58:54');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2019-04-17 01:59:11', '2019-04-17 01:59:11');
INSERT INTO `admin_operation_log` VALUES ('580', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null}', '2019-04-17 01:59:54', '2019-04-17 01:59:54');
INSERT INTO `admin_operation_log` VALUES ('581', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 02:00:35', '2019-04-17 02:00:35');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 02:00:38', '2019-04-17 02:00:38');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 02:00:44', '2019-04-17 02:00:44');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 02:00:56', '2019-04-17 02:00:56');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"saJBdZmpkuy0VayhGvg5dT6E8ytDns91IuCr9TSN\"}', '2019-04-17 02:03:45', '2019-04-17 02:03:45');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-17 02:03:45', '2019-04-17 02:03:45');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-17 02:03:56', '2019-04-17 02:03:56');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 02:04:00', '2019-04-17 02:04:00');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"saJBdZmpkuy0VayhGvg5dT6E8ytDns91IuCr9TSN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/menu\"}', '2019-04-17 02:04:08', '2019-04-17 02:04:08');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-17 02:04:08', '2019-04-17 02:04:08');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-17 02:04:13', '2019-04-17 02:04:13');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 02:04:54', '2019-04-17 02:04:54');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user-md\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"saJBdZmpkuy0VayhGvg5dT6E8ytDns91IuCr9TSN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-admin.a.com\\/admin\\/auth\\/menu\"}', '2019-04-17 02:05:40', '2019-04-17 02:05:40');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-17 02:05:40', '2019-04-17 02:05:40');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-17 02:53:34', '2019-04-17 02:53:34');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-17 06:17:55', '2019-04-17 06:17:55');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 06:18:03', '2019-04-17 06:18:03');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 06:21:55', '2019-04-17 06:21:55');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 06:22:06', '2019-04-17 06:22:06');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 06:23:58', '2019-04-17 06:23:58');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 06:24:32', '2019-04-17 06:24:32');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 06:25:23', '2019-04-17 06:25:23');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 06:25:42', '2019-04-17 06:25:42');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 06:25:49', '2019-04-17 06:25:49');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 06:25:55', '2019-04-17 06:25:55');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 06:26:01', '2019-04-17 06:26:01');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 06:26:27', '2019-04-17 06:26:27');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 06:27:47', '2019-04-17 06:27:47');
INSERT INTO `admin_operation_log` VALUES ('609', '1', 'admin/config/system', 'POST', '127.0.0.1', '{\"file\":\"admin\",\"name\":\"\\u54ce\\u5440\\u5440\",\"logo\":\"<b>Laravel<\\/b> admin\",\"miniLogo\":\"<b>La<\\/b>\",\"_token\":\"hRHHovxMKxMvGeMUdsw1BslHQvFRhFoNewNO1sHw\"}', '2019-04-17 06:28:48', '2019-04-17 06:28:48');
INSERT INTO `admin_operation_log` VALUES ('610', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 06:29:01', '2019-04-17 06:29:01');
INSERT INTO `admin_operation_log` VALUES ('611', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 06:29:03', '2019-04-17 06:29:03');
INSERT INTO `admin_operation_log` VALUES ('612', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 06:29:08', '2019-04-17 06:29:08');
INSERT INTO `admin_operation_log` VALUES ('613', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-04-17 06:29:41', '2019-04-17 06:29:41');
INSERT INTO `admin_operation_log` VALUES ('614', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 06:40:51', '2019-04-17 06:40:51');
INSERT INTO `admin_operation_log` VALUES ('615', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 06:40:53', '2019-04-17 06:40:53');
INSERT INTO `admin_operation_log` VALUES ('616', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 06:40:54', '2019-04-17 06:40:54');
INSERT INTO `admin_operation_log` VALUES ('617', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 06:40:54', '2019-04-17 06:40:54');
INSERT INTO `admin_operation_log` VALUES ('618', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 06:40:55', '2019-04-17 06:40:55');
INSERT INTO `admin_operation_log` VALUES ('619', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 06:40:56', '2019-04-17 06:40:56');
INSERT INTO `admin_operation_log` VALUES ('620', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-17 06:40:56', '2019-04-17 06:40:56');
INSERT INTO `admin_operation_log` VALUES ('621', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-04 01:38:39', '2019-06-04 01:38:39');
INSERT INTO `admin_operation_log` VALUES ('622', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-04 01:38:43', '2019-06-04 01:38:43');
INSERT INTO `admin_operation_log` VALUES ('623', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-04 01:38:44', '2019-06-04 01:38:44');
INSERT INTO `admin_operation_log` VALUES ('624', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-04 01:38:45', '2019-06-04 01:38:45');
INSERT INTO `admin_operation_log` VALUES ('625', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-04 01:38:46', '2019-06-04 01:38:46');
INSERT INTO `admin_operation_log` VALUES ('626', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-04 01:38:46', '2019-06-04 01:38:46');
INSERT INTO `admin_operation_log` VALUES ('627', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-04 01:38:47', '2019-06-04 01:38:47');
INSERT INTO `admin_operation_log` VALUES ('628', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-04 01:38:48', '2019-06-04 01:38:48');
INSERT INTO `admin_operation_log` VALUES ('629', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-04 01:38:51', '2019-06-04 01:38:51');
INSERT INTO `admin_operation_log` VALUES ('630', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-04 01:38:53', '2019-06-04 01:38:53');
INSERT INTO `admin_operation_log` VALUES ('631', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-04 01:38:54', '2019-06-04 01:38:54');
INSERT INTO `admin_operation_log` VALUES ('632', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-04 01:38:55', '2019-06-04 01:38:55');
INSERT INTO `admin_operation_log` VALUES ('633', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-04 01:38:57', '2019-06-04 01:38:57');
INSERT INTO `admin_operation_log` VALUES ('634', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-05 08:23:09', '2019-06-05 08:23:09');
INSERT INTO `admin_operation_log` VALUES ('635', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:13', '2019-06-05 08:23:13');
INSERT INTO `admin_operation_log` VALUES ('636', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:14', '2019-06-05 08:23:14');
INSERT INTO `admin_operation_log` VALUES ('637', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:15', '2019-06-05 08:23:15');
INSERT INTO `admin_operation_log` VALUES ('638', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:18', '2019-06-05 08:23:18');
INSERT INTO `admin_operation_log` VALUES ('639', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:18', '2019-06-05 08:23:18');
INSERT INTO `admin_operation_log` VALUES ('640', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:19', '2019-06-05 08:23:19');
INSERT INTO `admin_operation_log` VALUES ('641', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:20', '2019-06-05 08:23:20');
INSERT INTO `admin_operation_log` VALUES ('642', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:21', '2019-06-05 08:23:21');
INSERT INTO `admin_operation_log` VALUES ('643', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:21', '2019-06-05 08:23:21');
INSERT INTO `admin_operation_log` VALUES ('644', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:22', '2019-06-05 08:23:22');
INSERT INTO `admin_operation_log` VALUES ('645', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:23', '2019-06-05 08:23:23');
INSERT INTO `admin_operation_log` VALUES ('646', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:24', '2019-06-05 08:23:24');
INSERT INTO `admin_operation_log` VALUES ('647', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:25', '2019-06-05 08:23:25');
INSERT INTO `admin_operation_log` VALUES ('648', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:25', '2019-06-05 08:23:25');
INSERT INTO `admin_operation_log` VALUES ('649', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:26', '2019-06-05 08:23:26');
INSERT INTO `admin_operation_log` VALUES ('650', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:26', '2019-06-05 08:23:26');
INSERT INTO `admin_operation_log` VALUES ('651', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:26', '2019-06-05 08:23:26');
INSERT INTO `admin_operation_log` VALUES ('652', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:26', '2019-06-05 08:23:26');
INSERT INTO `admin_operation_log` VALUES ('653', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:27', '2019-06-05 08:23:27');
INSERT INTO `admin_operation_log` VALUES ('654', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:27', '2019-06-05 08:23:27');
INSERT INTO `admin_operation_log` VALUES ('655', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:34', '2019-06-05 08:23:34');
INSERT INTO `admin_operation_log` VALUES ('656', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:35', '2019-06-05 08:23:35');
INSERT INTO `admin_operation_log` VALUES ('657', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:23:35', '2019-06-05 08:23:35');
INSERT INTO `admin_operation_log` VALUES ('658', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:26:23', '2019-06-05 08:26:23');
INSERT INTO `admin_operation_log` VALUES ('659', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:26:24', '2019-06-05 08:26:24');
INSERT INTO `admin_operation_log` VALUES ('660', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:26:48', '2019-06-05 08:26:48');
INSERT INTO `admin_operation_log` VALUES ('661', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:26:50', '2019-06-05 08:26:50');
INSERT INTO `admin_operation_log` VALUES ('662', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:26:51', '2019-06-05 08:26:51');
INSERT INTO `admin_operation_log` VALUES ('663', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:26:55', '2019-06-05 08:26:55');
INSERT INTO `admin_operation_log` VALUES ('664', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:26:57', '2019-06-05 08:26:57');
INSERT INTO `admin_operation_log` VALUES ('665', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:26:58', '2019-06-05 08:26:58');
INSERT INTO `admin_operation_log` VALUES ('666', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:27:01', '2019-06-05 08:27:01');
INSERT INTO `admin_operation_log` VALUES ('667', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2019-06-05 08:27:29', '2019-06-05 08:27:29');
INSERT INTO `admin_operation_log` VALUES ('668', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:27:36', '2019-06-05 08:27:36');
INSERT INTO `admin_operation_log` VALUES ('669', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:33:17', '2019-06-05 08:33:17');
INSERT INTO `admin_operation_log` VALUES ('670', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:33:34', '2019-06-05 08:33:34');
INSERT INTO `admin_operation_log` VALUES ('671', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:33:38', '2019-06-05 08:33:38');
INSERT INTO `admin_operation_log` VALUES ('672', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:34:14', '2019-06-05 08:34:14');
INSERT INTO `admin_operation_log` VALUES ('673', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:34:18', '2019-06-05 08:34:18');
INSERT INTO `admin_operation_log` VALUES ('674', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:34:21', '2019-06-05 08:34:21');
INSERT INTO `admin_operation_log` VALUES ('675', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:34:23', '2019-06-05 08:34:23');
INSERT INTO `admin_operation_log` VALUES ('676', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:34:26', '2019-06-05 08:34:26');
INSERT INTO `admin_operation_log` VALUES ('677', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:34:28', '2019-06-05 08:34:28');
INSERT INTO `admin_operation_log` VALUES ('678', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:34:34', '2019-06-05 08:34:34');
INSERT INTO `admin_operation_log` VALUES ('679', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null}', '2019-06-05 08:34:51', '2019-06-05 08:34:51');
INSERT INTO `admin_operation_log` VALUES ('680', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:34:55', '2019-06-05 08:34:55');
INSERT INTO `admin_operation_log` VALUES ('681', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:35:02', '2019-06-05 08:35:02');
INSERT INTO `admin_operation_log` VALUES ('682', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:35:16', '2019-06-05 08:35:16');
INSERT INTO `admin_operation_log` VALUES ('683', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:36:09', '2019-06-05 08:36:09');
INSERT INTO `admin_operation_log` VALUES ('684', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:36:12', '2019-06-05 08:36:12');
INSERT INTO `admin_operation_log` VALUES ('685', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:36:14', '2019-06-05 08:36:14');
INSERT INTO `admin_operation_log` VALUES ('686', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:40:28', '2019-06-05 08:40:28');
INSERT INTO `admin_operation_log` VALUES ('687', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:40:31', '2019-06-05 08:40:31');
INSERT INTO `admin_operation_log` VALUES ('688', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:40:33', '2019-06-05 08:40:33');
INSERT INTO `admin_operation_log` VALUES ('689', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null}', '2019-06-05 08:40:36', '2019-06-05 08:40:36');
INSERT INTO `admin_operation_log` VALUES ('690', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null}', '2019-06-05 08:40:40', '2019-06-05 08:40:40');
INSERT INTO `admin_operation_log` VALUES ('691', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:40:45', '2019-06-05 08:40:45');
INSERT INTO `admin_operation_log` VALUES ('692', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:40:53', '2019-06-05 08:40:53');
INSERT INTO `admin_operation_log` VALUES ('693', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:42:22', '2019-06-05 08:42:22');
INSERT INTO `admin_operation_log` VALUES ('694', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:42:24', '2019-06-05 08:42:24');
INSERT INTO `admin_operation_log` VALUES ('695', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 08:42:26', '2019-06-05 08:42:26');
INSERT INTO `admin_operation_log` VALUES ('696', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-05 09:05:05', '2019-06-05 09:05:05');
INSERT INTO `admin_operation_log` VALUES ('697', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-05 09:10:10', '2019-06-05 09:10:10');
INSERT INTO `admin_operation_log` VALUES ('698', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-06 01:27:17', '2019-06-06 01:27:17');
INSERT INTO `admin_operation_log` VALUES ('699', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 01:30:41', '2019-06-06 01:30:41');
INSERT INTO `admin_operation_log` VALUES ('700', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 01:30:45', '2019-06-06 01:30:45');
INSERT INTO `admin_operation_log` VALUES ('701', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 01:30:46', '2019-06-06 01:30:46');
INSERT INTO `admin_operation_log` VALUES ('702', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 01:30:47', '2019-06-06 01:30:47');
INSERT INTO `admin_operation_log` VALUES ('703', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 01:30:48', '2019-06-06 01:30:48');
INSERT INTO `admin_operation_log` VALUES ('704', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 01:35:16', '2019-06-06 01:35:16');
INSERT INTO `admin_operation_log` VALUES ('705', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 01:38:41', '2019-06-06 01:38:41');
INSERT INTO `admin_operation_log` VALUES ('706', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 01:38:44', '2019-06-06 01:38:44');
INSERT INTO `admin_operation_log` VALUES ('707', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 01:39:34', '2019-06-06 01:39:34');
INSERT INTO `admin_operation_log` VALUES ('708', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-06 06:02:30', '2019-06-06 06:02:30');
INSERT INTO `admin_operation_log` VALUES ('709', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 06:04:10', '2019-06-06 06:04:10');
INSERT INTO `admin_operation_log` VALUES ('710', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-06 06:04:15', '2019-06-06 06:04:15');
INSERT INTO `admin_operation_log` VALUES ('711', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 06:04:20', '2019-06-06 06:04:20');
INSERT INTO `admin_operation_log` VALUES ('712', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-06 06:05:00', '2019-06-06 06:05:00');
INSERT INTO `admin_operation_log` VALUES ('713', '1', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2019-06-06 06:05:02', '2019-06-06 06:05:02');
INSERT INTO `admin_operation_log` VALUES ('714', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-06 06:05:02', '2019-06-06 06:05:02');
INSERT INTO `admin_operation_log` VALUES ('715', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 06:05:05', '2019-06-06 06:05:05');
INSERT INTO `admin_operation_log` VALUES ('716', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-06 06:05:28', '2019-06-06 06:05:28');
INSERT INTO `admin_operation_log` VALUES ('717', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 06:43:37', '2019-06-06 06:43:37');
INSERT INTO `admin_operation_log` VALUES ('718', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 06:46:18', '2019-06-06 06:46:18');
INSERT INTO `admin_operation_log` VALUES ('719', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 06:46:21', '2019-06-06 06:46:21');
INSERT INTO `admin_operation_log` VALUES ('720', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 06:46:25', '2019-06-06 06:46:25');
INSERT INTO `admin_operation_log` VALUES ('721', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 06:46:31', '2019-06-06 06:46:31');
INSERT INTO `admin_operation_log` VALUES ('722', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '[]', '2019-06-06 06:46:44', '2019-06-06 06:46:44');
INSERT INTO `admin_operation_log` VALUES ('723', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 06:46:45', '2019-06-06 06:46:45');
INSERT INTO `admin_operation_log` VALUES ('724', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-hand-stop-o\",\"uri\":\"\\/admin\\/member\\/users\",\"roles\":[\"1\",null],\"_token\":\"3d3LfjADKsVFEy6aUeehdtyh6KPup2ldYVfKBxuY\"}', '2019-06-06 06:53:08', '2019-06-06 06:53:08');
INSERT INTO `admin_operation_log` VALUES ('725', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 06:53:09', '2019-06-06 06:53:09');
INSERT INTO `admin_operation_log` VALUES ('726', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 06:53:17', '2019-06-06 06:53:17');
INSERT INTO `admin_operation_log` VALUES ('727', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 06:53:18', '2019-06-06 06:53:18');
INSERT INTO `admin_operation_log` VALUES ('728', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 06:53:21', '2019-06-06 06:53:21');
INSERT INTO `admin_operation_log` VALUES ('729', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-06 06:53:22', '2019-06-06 06:53:22');
INSERT INTO `admin_operation_log` VALUES ('730', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-06 06:53:28', '2019-06-06 06:53:28');
INSERT INTO `admin_operation_log` VALUES ('731', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 07:13:31', '2019-06-06 07:13:31');
INSERT INTO `admin_operation_log` VALUES ('732', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-06-06 07:18:04', '2019-06-06 07:18:04');
INSERT INTO `admin_operation_log` VALUES ('733', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 07:18:11', '2019-06-06 07:18:11');
INSERT INTO `admin_operation_log` VALUES ('734', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 07:18:13', '2019-06-06 07:18:13');
INSERT INTO `admin_operation_log` VALUES ('735', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-hand-stop-o\",\"uri\":\"member\\/users\",\"roles\":[\"1\",null],\"_token\":\"3d3LfjADKsVFEy6aUeehdtyh6KPup2ldYVfKBxuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laraveladmin.a.com\\/admin\\/auth\\/menu\"}', '2019-06-06 07:18:27', '2019-06-06 07:18:27');
INSERT INTO `admin_operation_log` VALUES ('736', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:18:27', '2019-06-06 07:18:27');
INSERT INTO `admin_operation_log` VALUES ('737', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:18:29', '2019-06-06 07:18:29');
INSERT INTO `admin_operation_log` VALUES ('738', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:18:35', '2019-06-06 07:18:35');
INSERT INTO `admin_operation_log` VALUES ('739', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:20:46', '2019-06-06 07:20:46');
INSERT INTO `admin_operation_log` VALUES ('740', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:20:48', '2019-06-06 07:20:48');
INSERT INTO `admin_operation_log` VALUES ('741', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:25:29', '2019-06-06 07:25:29');
INSERT INTO `admin_operation_log` VALUES ('742', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:25:40', '2019-06-06 07:25:40');
INSERT INTO `admin_operation_log` VALUES ('743', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 07:25:45', '2019-06-06 07:25:45');
INSERT INTO `admin_operation_log` VALUES ('744', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-06-06 07:30:10', '2019-06-06 07:30:10');
INSERT INTO `admin_operation_log` VALUES ('745', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-06-06 07:30:37', '2019-06-06 07:30:37');
INSERT INTO `admin_operation_log` VALUES ('746', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-06-06 07:31:29', '2019-06-06 07:31:29');
INSERT INTO `admin_operation_log` VALUES ('747', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-06 07:38:16', '2019-06-06 07:38:16');
INSERT INTO `admin_operation_log` VALUES ('748', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-06 07:38:17', '2019-06-06 07:38:17');
INSERT INTO `admin_operation_log` VALUES ('749', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-06 07:38:22', '2019-06-06 07:38:22');
INSERT INTO `admin_operation_log` VALUES ('750', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 07:38:29', '2019-06-06 07:38:29');
INSERT INTO `admin_operation_log` VALUES ('751', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 07:39:38', '2019-06-06 07:39:38');
INSERT INTO `admin_operation_log` VALUES ('752', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-hand-stop-o\",\"uri\":\"users\\/list\",\"roles\":[\"1\",null],\"_token\":\"3d3LfjADKsVFEy6aUeehdtyh6KPup2ldYVfKBxuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laraveladmin.a.com\\/admin\\/auth\\/menu\"}', '2019-06-06 07:39:58', '2019-06-06 07:39:58');
INSERT INTO `admin_operation_log` VALUES ('753', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:39:58', '2019-06-06 07:39:58');
INSERT INTO `admin_operation_log` VALUES ('754', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 07:41:28', '2019-06-06 07:41:28');
INSERT INTO `admin_operation_log` VALUES ('755', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-hand-stop-o\",\"uri\":\"users\\/index\",\"roles\":[\"1\",null],\"_token\":\"3d3LfjADKsVFEy6aUeehdtyh6KPup2ldYVfKBxuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laraveladmin.a.com\\/admin\\/auth\\/menu\"}', '2019-06-06 07:41:35', '2019-06-06 07:41:35');
INSERT INTO `admin_operation_log` VALUES ('756', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:41:35', '2019-06-06 07:41:35');
INSERT INTO `admin_operation_log` VALUES ('757', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:41:48', '2019-06-06 07:41:48');
INSERT INTO `admin_operation_log` VALUES ('758', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:45:11', '2019-06-06 07:45:11');
INSERT INTO `admin_operation_log` VALUES ('759', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:45:31', '2019-06-06 07:45:31');
INSERT INTO `admin_operation_log` VALUES ('760', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:45:33', '2019-06-06 07:45:33');
INSERT INTO `admin_operation_log` VALUES ('761', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:47:18', '2019-06-06 07:47:18');
INSERT INTO `admin_operation_log` VALUES ('762', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-06 07:47:25', '2019-06-06 07:47:25');
INSERT INTO `admin_operation_log` VALUES ('763', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 07:47:26', '2019-06-06 07:47:26');
INSERT INTO `admin_operation_log` VALUES ('764', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-06-06 07:47:32', '2019-06-06 07:47:32');
INSERT INTO `admin_operation_log` VALUES ('765', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2019-06-06 07:47:37', '2019-06-06 07:47:37');
INSERT INTO `admin_operation_log` VALUES ('766', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"per_page\":\"100\"}', '2019-06-06 07:47:41', '2019-06-06 07:47:41');
INSERT INTO `admin_operation_log` VALUES ('767', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"per_page\":\"100\"}', '2019-06-06 07:57:59', '2019-06-06 07:57:59');
INSERT INTO `admin_operation_log` VALUES ('768', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"per_page\":\"100\"}', '2019-06-06 07:58:03', '2019-06-06 07:58:03');
INSERT INTO `admin_operation_log` VALUES ('769', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 07:58:10', '2019-06-06 07:58:10');
INSERT INTO `admin_operation_log` VALUES ('770', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-06-06 07:58:15', '2019-06-06 07:58:15');
INSERT INTO `admin_operation_log` VALUES ('771', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-06-06 08:01:00', '2019-06-06 08:01:00');
INSERT INTO `admin_operation_log` VALUES ('772', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-06-06 08:02:29', '2019-06-06 08:02:29');
INSERT INTO `admin_operation_log` VALUES ('773', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-06-06 08:03:13', '2019-06-06 08:03:13');
INSERT INTO `admin_operation_log` VALUES ('774', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-06-06 08:08:33', '2019-06-06 08:08:33');
INSERT INTO `admin_operation_log` VALUES ('775', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:08:34', '2019-06-06 08:08:34');
INSERT INTO `admin_operation_log` VALUES ('776', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"per_page\":\"100\"}', '2019-06-06 08:08:37', '2019-06-06 08:08:37');
INSERT INTO `admin_operation_log` VALUES ('777', '1', 'admin/config/system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:08:40', '2019-06-06 08:08:40');
INSERT INTO `admin_operation_log` VALUES ('778', '1', 'admin/config/system', 'GET', '127.0.0.1', '[]', '2019-06-06 08:09:53', '2019-06-06 08:09:53');
INSERT INTO `admin_operation_log` VALUES ('779', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:10:03', '2019-06-06 08:10:03');
INSERT INTO `admin_operation_log` VALUES ('780', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-06 08:11:14', '2019-06-06 08:11:14');
INSERT INTO `admin_operation_log` VALUES ('781', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-06 08:33:02', '2019-06-06 08:33:02');
INSERT INTO `admin_operation_log` VALUES ('782', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-06 08:34:41', '2019-06-06 08:34:41');
INSERT INTO `admin_operation_log` VALUES ('783', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-06 08:34:54', '2019-06-06 08:34:54');
INSERT INTO `admin_operation_log` VALUES ('784', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-06 08:35:08', '2019-06-06 08:35:08');
INSERT INTO `admin_operation_log` VALUES ('785', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:35:08', '2019-06-06 08:35:08');
INSERT INTO `admin_operation_log` VALUES ('786', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-06 08:35:11', '2019-06-06 08:35:11');
INSERT INTO `admin_operation_log` VALUES ('787', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:35:11', '2019-06-06 08:35:11');
INSERT INTO `admin_operation_log` VALUES ('788', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:35:24', '2019-06-06 08:35:24');
INSERT INTO `admin_operation_log` VALUES ('789', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-06 08:35:32', '2019-06-06 08:35:32');
INSERT INTO `admin_operation_log` VALUES ('790', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-06 08:35:51', '2019-06-06 08:35:51');
INSERT INTO `admin_operation_log` VALUES ('791', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-06 08:36:37', '2019-06-06 08:36:37');
INSERT INTO `admin_operation_log` VALUES ('792', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:36:51', '2019-06-06 08:36:51');
INSERT INTO `admin_operation_log` VALUES ('793', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:36:53', '2019-06-06 08:36:53');
INSERT INTO `admin_operation_log` VALUES ('794', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2019-06-06 08:37:55', '2019-06-06 08:37:55');
INSERT INTO `admin_operation_log` VALUES ('795', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2019-06-06 08:38:06', '2019-06-06 08:38:06');
INSERT INTO `admin_operation_log` VALUES ('796', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2019-06-06 08:38:16', '2019-06-06 08:38:16');
INSERT INTO `admin_operation_log` VALUES ('797', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:38:36', '2019-06-06 08:38:36');
INSERT INTO `admin_operation_log` VALUES ('798', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2019-06-06 08:38:44', '2019-06-06 08:38:44');
INSERT INTO `admin_operation_log` VALUES ('799', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:38:52', '2019-06-06 08:38:52');
INSERT INTO `admin_operation_log` VALUES ('800', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2019-06-06 08:38:54', '2019-06-06 08:38:54');
INSERT INTO `admin_operation_log` VALUES ('801', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-06 08:39:53', '2019-06-06 08:39:53');
INSERT INTO `admin_operation_log` VALUES ('802', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_export_\":\"page:1\"}', '2019-06-06 08:39:57', '2019-06-06 08:39:57');
INSERT INTO `admin_operation_log` VALUES ('803', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-06 08:49:16', '2019-06-06 08:49:16');
INSERT INTO `admin_operation_log` VALUES ('804', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:49:18', '2019-06-06 08:49:18');
INSERT INTO `admin_operation_log` VALUES ('805', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '[]', '2019-06-06 08:50:10', '2019-06-06 08:50:10');
INSERT INTO `admin_operation_log` VALUES ('806', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '[]', '2019-06-06 08:50:18', '2019-06-06 08:50:18');
INSERT INTO `admin_operation_log` VALUES ('807', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:50:21', '2019-06-06 08:50:21');
INSERT INTO `admin_operation_log` VALUES ('808', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:50:24', '2019-06-06 08:50:24');
INSERT INTO `admin_operation_log` VALUES ('809', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '[]', '2019-06-06 08:58:12', '2019-06-06 08:58:12');
INSERT INTO `admin_operation_log` VALUES ('810', '1', 'admin/users/index', 'POST', '127.0.0.1', '{\"name\":\"rwerwer\",\"email\":\"wewr\",\"password\":\"ewwerwe\",\"_token\":\"3d3LfjADKsVFEy6aUeehdtyh6KPup2ldYVfKBxuY\"}', '2019-06-06 08:58:24', '2019-06-06 08:58:24');
INSERT INTO `admin_operation_log` VALUES ('811', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-06 08:58:29', '2019-06-06 08:58:29');
INSERT INTO `admin_operation_log` VALUES ('812', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:58:31', '2019-06-06 08:58:31');
INSERT INTO `admin_operation_log` VALUES ('813', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 08:58:32', '2019-06-06 08:58:32');
INSERT INTO `admin_operation_log` VALUES ('814', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '[]', '2019-06-06 09:00:00', '2019-06-06 09:00:00');
INSERT INTO `admin_operation_log` VALUES ('815', '1', 'admin/users/index', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"email\":\"2323323\",\"password\":\"2232323\",\"_token\":\"3d3LfjADKsVFEy6aUeehdtyh6KPup2ldYVfKBxuY\",\"_previous_\":\"http:\\/\\/laraveladmin.a.com\\/admin\\/users\\/index\"}', '2019-06-06 09:00:07', '2019-06-06 09:00:07');
INSERT INTO `admin_operation_log` VALUES ('816', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:00:56', '2019-06-06 09:00:56');
INSERT INTO `admin_operation_log` VALUES ('817', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:00:59', '2019-06-06 09:00:59');
INSERT INTO `admin_operation_log` VALUES ('818', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:01:01', '2019-06-06 09:01:01');
INSERT INTO `admin_operation_log` VALUES ('819', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:02:17', '2019-06-06 09:02:17');
INSERT INTO `admin_operation_log` VALUES ('820', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:02:19', '2019-06-06 09:02:19');
INSERT INTO `admin_operation_log` VALUES ('821', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:02:20', '2019-06-06 09:02:20');
INSERT INTO `admin_operation_log` VALUES ('822', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-06-06 09:16:22', '2019-06-06 09:16:22');
INSERT INTO `admin_operation_log` VALUES ('823', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-06-06 09:16:25', '2019-06-06 09:16:25');
INSERT INTO `admin_operation_log` VALUES ('824', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:16:52', '2019-06-06 09:16:52');
INSERT INTO `admin_operation_log` VALUES ('825', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:16:54', '2019-06-06 09:16:54');
INSERT INTO `admin_operation_log` VALUES ('826', '1', 'admin/users/index', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"email\":\"yc_1224@163.com\",\"password\":\"ewwerwe\",\"_token\":\"3d3LfjADKsVFEy6aUeehdtyh6KPup2ldYVfKBxuY\",\"_previous_\":\"http:\\/\\/laraveladmin.a.com\\/admin\\/users\\/index\"}', '2019-06-06 09:16:59', '2019-06-06 09:16:59');
INSERT INTO `admin_operation_log` VALUES ('827', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:17:02', '2019-06-06 09:17:02');
INSERT INTO `admin_operation_log` VALUES ('828', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '[]', '2019-06-06 09:22:00', '2019-06-06 09:22:00');
INSERT INTO `admin_operation_log` VALUES ('829', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:22:12', '2019-06-06 09:22:12');
INSERT INTO `admin_operation_log` VALUES ('830', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:22:13', '2019-06-06 09:22:13');
INSERT INTO `admin_operation_log` VALUES ('831', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:27:54', '2019-06-06 09:27:54');
INSERT INTO `admin_operation_log` VALUES ('832', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:29:57', '2019-06-06 09:29:57');
INSERT INTO `admin_operation_log` VALUES ('833', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-06 09:29:58', '2019-06-06 09:29:58');
INSERT INTO `admin_operation_log` VALUES ('834', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '[]', '2019-06-06 09:31:14', '2019-06-06 09:31:14');
INSERT INTO `admin_operation_log` VALUES ('835', '1', 'admin/users/index', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":\"we\",\"password_confirmation\":\"we\",\"_token\":\"3d3LfjADKsVFEy6aUeehdtyh6KPup2ldYVfKBxuY\"}', '2019-06-06 09:31:18', '2019-06-06 09:31:18');
INSERT INTO `admin_operation_log` VALUES ('836', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 02:16:15', '2019-06-10 02:16:15');
INSERT INTO `admin_operation_log` VALUES ('837', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:16:20', '2019-06-10 02:16:20');
INSERT INTO `admin_operation_log` VALUES ('838', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:16:22', '2019-06-10 02:16:22');
INSERT INTO `admin_operation_log` VALUES ('839', '1', 'admin/users/index', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/users\\/index\"}', '2019-06-10 02:16:25', '2019-06-10 02:16:25');
INSERT INTO `admin_operation_log` VALUES ('840', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:16:32', '2019-06-10 02:16:32');
INSERT INTO `admin_operation_log` VALUES ('841', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:21:21', '2019-06-10 02:21:21');
INSERT INTO `admin_operation_log` VALUES ('842', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-10 02:21:24', '2019-06-10 02:21:24');
INSERT INTO `admin_operation_log` VALUES ('843', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-10 02:21:37', '2019-06-10 02:21:37');
INSERT INTO `admin_operation_log` VALUES ('844', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-10 02:21:39', '2019-06-10 02:21:39');
INSERT INTO `admin_operation_log` VALUES ('845', '1', 'admin/users/index/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:21:41', '2019-06-10 02:21:41');
INSERT INTO `admin_operation_log` VALUES ('846', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-10 02:21:41', '2019-06-10 02:21:41');
INSERT INTO `admin_operation_log` VALUES ('847', '1', 'admin/users/index/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:22:48', '2019-06-10 02:22:48');
INSERT INTO `admin_operation_log` VALUES ('848', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:30:40', '2019-06-10 02:30:40');
INSERT INTO `admin_operation_log` VALUES ('849', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:30:44', '2019-06-10 02:30:44');
INSERT INTO `admin_operation_log` VALUES ('850', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:30:44', '2019-06-10 02:30:44');
INSERT INTO `admin_operation_log` VALUES ('851', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:30:48', '2019-06-10 02:30:48');
INSERT INTO `admin_operation_log` VALUES ('852', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:30:50', '2019-06-10 02:30:50');
INSERT INTO `admin_operation_log` VALUES ('853', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:30:52', '2019-06-10 02:30:52');
INSERT INTO `admin_operation_log` VALUES ('854', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:30:54', '2019-06-10 02:30:54');
INSERT INTO `admin_operation_log` VALUES ('855', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-10 02:30:58', '2019-06-10 02:30:58');
INSERT INTO `admin_operation_log` VALUES ('856', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:30:59', '2019-06-10 02:30:59');
INSERT INTO `admin_operation_log` VALUES ('857', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:31:02', '2019-06-10 02:31:02');
INSERT INTO `admin_operation_log` VALUES ('858', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:31:06', '2019-06-10 02:31:06');
INSERT INTO `admin_operation_log` VALUES ('859', '1', 'admin/users/index', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/users\\/index\"}', '2019-06-10 02:31:08', '2019-06-10 02:31:08');
INSERT INTO `admin_operation_log` VALUES ('860', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:31:09', '2019-06-10 02:31:09');
INSERT INTO `admin_operation_log` VALUES ('861', '1', 'admin/users/index', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 02:31:11', '2019-06-10 02:31:11');
INSERT INTO `admin_operation_log` VALUES ('862', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:31:14', '2019-06-10 02:31:14');
INSERT INTO `admin_operation_log` VALUES ('863', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:31:14', '2019-06-10 02:31:14');
INSERT INTO `admin_operation_log` VALUES ('864', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:31:15', '2019-06-10 02:31:15');
INSERT INTO `admin_operation_log` VALUES ('865', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:31:15', '2019-06-10 02:31:15');
INSERT INTO `admin_operation_log` VALUES ('866', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:32:39', '2019-06-10 02:32:39');
INSERT INTO `admin_operation_log` VALUES ('867', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:32:40', '2019-06-10 02:32:40');
INSERT INTO `admin_operation_log` VALUES ('868', '1', 'admin/users/index', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/users\\/index\"}', '2019-06-10 02:32:41', '2019-06-10 02:32:41');
INSERT INTO `admin_operation_log` VALUES ('869', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:32:44', '2019-06-10 02:32:44');
INSERT INTO `admin_operation_log` VALUES ('870', '1', 'admin/users/index', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/users\\/index\"}', '2019-06-10 02:32:45', '2019-06-10 02:32:45');
INSERT INTO `admin_operation_log` VALUES ('871', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-10 02:35:44', '2019-06-10 02:35:44');
INSERT INTO `admin_operation_log` VALUES ('872', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:35:45', '2019-06-10 02:35:45');
INSERT INTO `admin_operation_log` VALUES ('873', '1', 'admin/users/index', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/users\\/index\"}', '2019-06-10 02:35:47', '2019-06-10 02:35:47');
INSERT INTO `admin_operation_log` VALUES ('874', '1', 'admin/users/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:35:55', '2019-06-10 02:35:55');
INSERT INTO `admin_operation_log` VALUES ('875', '1', 'admin/users/index', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/users\\/index\"}', '2019-06-10 02:35:56', '2019-06-10 02:35:56');
INSERT INTO `admin_operation_log` VALUES ('876', '1', 'admin/users/index/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:35:58', '2019-06-10 02:35:58');
INSERT INTO `admin_operation_log` VALUES ('877', '1', 'admin/users/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:36:05', '2019-06-10 02:36:05');
INSERT INTO `admin_operation_log` VALUES ('878', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-10 02:37:51', '2019-06-10 02:37:51');
INSERT INTO `admin_operation_log` VALUES ('879', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-10 02:38:01', '2019-06-10 02:38:01');
INSERT INTO `admin_operation_log` VALUES ('880', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-10 02:39:15', '2019-06-10 02:39:15');
INSERT INTO `admin_operation_log` VALUES ('881', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-10 02:39:45', '2019-06-10 02:39:45');
INSERT INTO `admin_operation_log` VALUES ('882', '1', 'admin/users/index', 'GET', '127.0.0.1', '[]', '2019-06-10 02:39:50', '2019-06-10 02:39:50');
INSERT INTO `admin_operation_log` VALUES ('883', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:46:27', '2019-06-10 02:46:27');
INSERT INTO `admin_operation_log` VALUES ('884', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-bars\",\"uri\":\"ceshi\\/index\",\"roles\":[\"1\",null],\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 02:46:44', '2019-06-10 02:46:44');
INSERT INTO `admin_operation_log` VALUES ('885', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-10 02:46:44', '2019-06-10 02:46:44');
INSERT INTO `admin_operation_log` VALUES ('886', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-10 02:46:48', '2019-06-10 02:46:48');
INSERT INTO `admin_operation_log` VALUES ('887', '1', 'admin/ceshi/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:46:50', '2019-06-10 02:46:50');
INSERT INTO `admin_operation_log` VALUES ('888', '1', 'admin/ceshi/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:47:33', '2019-06-10 02:47:33');
INSERT INTO `admin_operation_log` VALUES ('889', '1', 'admin/ceshi/index/create', 'GET', '127.0.0.1', '[]', '2019-06-10 02:48:05', '2019-06-10 02:48:05');
INSERT INTO `admin_operation_log` VALUES ('890', '1', 'admin/ceshi/index', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/ceshi\\/index\"}', '2019-06-10 02:48:09', '2019-06-10 02:48:09');
INSERT INTO `admin_operation_log` VALUES ('891', '1', 'admin/ceshi/index/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:48:16', '2019-06-10 02:48:16');
INSERT INTO `admin_operation_log` VALUES ('892', '1', 'admin/ceshi/index', 'POST', '127.0.0.1', '{\"name\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/ceshi\\/index\"}', '2019-06-10 02:48:17', '2019-06-10 02:48:17');
INSERT INTO `admin_operation_log` VALUES ('893', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 02:52:06', '2019-06-10 02:52:06');
INSERT INTO `admin_operation_log` VALUES ('894', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:52:14', '2019-06-10 02:52:14');
INSERT INTO `admin_operation_log` VALUES ('895', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:52:21', '2019-06-10 02:52:21');
INSERT INTO `admin_operation_log` VALUES ('896', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-hand-stop-o\",\"uri\":\"users\",\"roles\":[\"1\",null],\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/auth\\/menu\"}', '2019-06-10 02:52:27', '2019-06-10 02:52:27');
INSERT INTO `admin_operation_log` VALUES ('897', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-10 02:52:27', '2019-06-10 02:52:27');
INSERT INTO `admin_operation_log` VALUES ('898', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-10 02:53:26', '2019-06-10 02:53:26');
INSERT INTO `admin_operation_log` VALUES ('899', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:53:31', '2019-06-10 02:53:31');
INSERT INTO `admin_operation_log` VALUES ('900', '1', 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:53:35', '2019-06-10 02:53:35');
INSERT INTO `admin_operation_log` VALUES ('901', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2019-06-10 02:53:35', '2019-06-10 02:53:35');
INSERT INTO `admin_operation_log` VALUES ('902', '1', 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 02:54:22', '2019-06-10 02:54:22');
INSERT INTO `admin_operation_log` VALUES ('903', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/users\"}', '2019-06-10 02:54:25', '2019-06-10 02:54:25');
INSERT INTO `admin_operation_log` VALUES ('904', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2019-06-10 02:54:25', '2019-06-10 02:54:25');
INSERT INTO `admin_operation_log` VALUES ('905', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 03:00:35', '2019-06-10 03:00:35');
INSERT INTO `admin_operation_log` VALUES ('906', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2019-06-10 03:00:36', '2019-06-10 03:00:36');
INSERT INTO `admin_operation_log` VALUES ('907', '1', 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:00:39', '2019-06-10 03:00:39');
INSERT INTO `admin_operation_log` VALUES ('908', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/users\"}', '2019-06-10 03:00:40', '2019-06-10 03:00:40');
INSERT INTO `admin_operation_log` VALUES ('909', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2019-06-10 03:00:40', '2019-06-10 03:00:40');
INSERT INTO `admin_operation_log` VALUES ('910', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2019-06-10 03:00:55', '2019-06-10 03:00:55');
INSERT INTO `admin_operation_log` VALUES ('911', '1', 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:00:56', '2019-06-10 03:00:56');
INSERT INTO `admin_operation_log` VALUES ('912', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/users\"}', '2019-06-10 03:00:58', '2019-06-10 03:00:58');
INSERT INTO `admin_operation_log` VALUES ('913', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2019-06-10 03:00:58', '2019-06-10 03:00:58');
INSERT INTO `admin_operation_log` VALUES ('914', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2019-06-10 03:01:08', '2019-06-10 03:01:08');
INSERT INTO `admin_operation_log` VALUES ('915', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 03:01:09', '2019-06-10 03:01:09');
INSERT INTO `admin_operation_log` VALUES ('916', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2019-06-10 03:01:10', '2019-06-10 03:01:10');
INSERT INTO `admin_operation_log` VALUES ('917', '1', 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:01:12', '2019-06-10 03:01:12');
INSERT INTO `admin_operation_log` VALUES ('918', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:01:13', '2019-06-10 03:01:13');
INSERT INTO `admin_operation_log` VALUES ('919', '1', 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:01:15', '2019-06-10 03:01:15');
INSERT INTO `admin_operation_log` VALUES ('920', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/users\"}', '2019-06-10 03:01:16', '2019-06-10 03:01:16');
INSERT INTO `admin_operation_log` VALUES ('921', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2019-06-10 03:01:16', '2019-06-10 03:01:16');
INSERT INTO `admin_operation_log` VALUES ('922', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 03:02:57', '2019-06-10 03:02:57');
INSERT INTO `admin_operation_log` VALUES ('923', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2019-06-10 03:02:58', '2019-06-10 03:02:58');
INSERT INTO `admin_operation_log` VALUES ('924', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 03:03:18', '2019-06-10 03:03:18');
INSERT INTO `admin_operation_log` VALUES ('925', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2019-06-10 03:03:18', '2019-06-10 03:03:18');
INSERT INTO `admin_operation_log` VALUES ('926', '1', 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:03:29', '2019-06-10 03:03:29');
INSERT INTO `admin_operation_log` VALUES ('927', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2019-06-10 03:09:36', '2019-06-10 03:09:36');
INSERT INTO `admin_operation_log` VALUES ('928', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 03:09:37', '2019-06-10 03:09:37');
INSERT INTO `admin_operation_log` VALUES ('929', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2019-06-10 03:09:37', '2019-06-10 03:09:37');
INSERT INTO `admin_operation_log` VALUES ('930', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"success\",\"email\":\"yc_1222sdf@163.com\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 03:10:44', '2019-06-10 03:10:44');
INSERT INTO `admin_operation_log` VALUES ('931', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:10:50', '2019-06-10 03:10:50');
INSERT INTO `admin_operation_log` VALUES ('932', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 03:10:54', '2019-06-10 03:10:54');
INSERT INTO `admin_operation_log` VALUES ('933', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:10:56', '2019-06-10 03:10:56');
INSERT INTO `admin_operation_log` VALUES ('934', '1', 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:10:58', '2019-06-10 03:10:58');
INSERT INTO `admin_operation_log` VALUES ('935', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"adminxiaoyukarl\",\"email\":\"a@@@1\",\"password\":\"###...\",\"password_confirmation\":\"123456\",\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/users\"}', '2019-06-10 03:11:15', '2019-06-10 03:11:15');
INSERT INTO `admin_operation_log` VALUES ('936', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 03:11:32', '2019-06-10 03:11:32');
INSERT INTO `admin_operation_log` VALUES ('937', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:11:41', '2019-06-10 03:11:41');
INSERT INTO `admin_operation_log` VALUES ('938', '1', 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:11:43', '2019-06-10 03:11:43');
INSERT INTO `admin_operation_log` VALUES ('939', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\",\"_previous_\":\"http:\\/\\/hunlian.a.com\\/admin\\/users\"}', '2019-06-10 03:11:44', '2019-06-10 03:11:44');
INSERT INTO `admin_operation_log` VALUES ('940', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2019-06-10 03:11:45', '2019-06-10 03:11:45');
INSERT INTO `admin_operation_log` VALUES ('941', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"adminxiaoyukarl\",\"email\":\"eac@163.com\",\"password\":\"123456789\",\"password_confirmation\":\"12345678\",\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 03:12:07', '2019-06-10 03:12:07');
INSERT INTO `admin_operation_log` VALUES ('942', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2019-06-10 03:12:07', '2019-06-10 03:12:07');
INSERT INTO `admin_operation_log` VALUES ('943', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"adminxiaoyukarl\",\"email\":\"eac@163.com\",\"password\":\"123456789\",\"password_confirmation\":\"123456789\",\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 03:12:12', '2019-06-10 03:12:12');
INSERT INTO `admin_operation_log` VALUES ('944', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2019-06-10 03:12:12', '2019-06-10 03:12:12');
INSERT INTO `admin_operation_log` VALUES ('945', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"adminxiaoyukarl\",\"email\":\"eac@163.com\",\"password\":\"123456789\",\"password_confirmation\":\"123456789\",\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 03:19:12', '2019-06-10 03:19:12');
INSERT INTO `admin_operation_log` VALUES ('946', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2019-06-10 03:19:12', '2019-06-10 03:19:12');
INSERT INTO `admin_operation_log` VALUES ('947', '1', 'admin/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:19:18', '2019-06-10 03:19:18');
INSERT INTO `admin_operation_log` VALUES ('948', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 03:19:24', '2019-06-10 03:19:24');
INSERT INTO `admin_operation_log` VALUES ('949', '1', 'admin/users/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 03:19:28', '2019-06-10 03:19:28');
INSERT INTO `admin_operation_log` VALUES ('950', '1', 'admin/users/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"v1DzJaAhCCpEfNXL6ez9lVvbHllFEY3ah1mlLf42\"}', '2019-06-10 03:20:21', '2019-06-10 03:20:21');
INSERT INTO `admin_operation_log` VALUES ('951', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2019-06-10 03:20:26', '2019-06-10 03:20:26');
INSERT INTO `admin_operation_log` VALUES ('952', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2019-06-10 06:01:00', '2019-06-10 06:01:00');
INSERT INTO `admin_operation_log` VALUES ('953', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2019-06-10 06:57:59', '2019-06-10 06:57:59');
INSERT INTO `admin_operation_log` VALUES ('954', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 08:13:14', '2019-06-10 08:13:14');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '7', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '10', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '11', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '5', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-09-28 03:03:27', '2018-09-28 03:03:27');
INSERT INTO `admin_roles` VALUES ('2', '123456', 'test', '2019-04-09 03:10:29', '2019-04-09 03:10:29');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$hhLpIwUg/rmbauNUjjV0bOhZLe60F6U2oStKpAoPTgVG75Ix15odW', 'Administrator', null, 'FzRhtQG20cOSNXPQFnyXtIOgq21708VK4WRNpY0nXxMjyaRuseguZJyP0ITm', '2018-09-28 03:03:27', '2018-09-28 03:03:27');

-- ----------------------------
-- Table structure for ceshi
-- ----------------------------
DROP TABLE IF EXISTS `ceshi`;
CREATE TABLE `ceshi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ceshi
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for sms_code
-- ----------------------------
DROP TABLE IF EXISTS `sms_code`;
CREATE TABLE `sms_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` char(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `code` char(6) NOT NULL,
  `send_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `status` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sms_code
-- ----------------------------
INSERT INTO `sms_code` VALUES ('1', '17620342520', '【云付通】尊敬的客户您好，欢迎使用云付通平台，您的手机验证码是：123456，若非本人操作，请忽略！', '123456', '1560150067', '1560150367', '1');





-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` char(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `stature` float DEFAULT NULL COMMENT '身高',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '个性签名',
  `constellation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '星座',
  `job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职业',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地区',
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'user', '12', '$2y$10$hhLpIwUg/rmbauNUjjV0bOhZLe60F6U2oStKpAoPTgVG75Ix15odW', null, '2019-06-06 16:38:03', '2019-06-10 07:03:33', '17620342520', null, null, null, null, null, null, '2019-06-10 07:03:33');
