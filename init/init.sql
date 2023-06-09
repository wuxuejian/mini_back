/*
 Navicat Premium Data Transfer

 Source Server         : mini-new
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : sh-cynosdbmysql-grp-2g618yuq.sql.tencentcdb.com:21245
 Source Schema         : dev_mini_chongyeapp_20220823

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 15/04/2023 22:34:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_extension_histories
-- ----------------------------
DROP TABLE IF EXISTS `admin_extension_histories`;
CREATE TABLE `admin_extension_histories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_extension_histories_name_index`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_extension_histories
-- ----------------------------
INSERT INTO `admin_extension_histories` VALUES (10, 'lty5240.dcat-easy-sku', 1, '1.0.0', 'Initialize extension.', '2022-01-10 12:03:01', '2022-01-10 12:03:01');
INSERT INTO `admin_extension_histories` VALUES (11, 'lty5240.dcat-easy-sku', 1, '1.0.1', '修复attrs超过两个会不显示的问题', '2022-01-10 12:03:01', '2022-01-10 12:03:01');
INSERT INTO `admin_extension_histories` VALUES (12, 'lty5240.dcat-easy-sku', 1, '1.0.1', '更新了上传图片样式', '2022-01-10 12:03:01', '2022-01-10 12:03:01');
INSERT INTO `admin_extension_histories` VALUES (13, 'lty5240.dcat-easy-sku', 1, '1.1.0', '新增快速批量插入输入框的数值', '2022-01-10 12:03:01', '2022-01-10 12:03:01');
INSERT INTO `admin_extension_histories` VALUES (14, 'dcat-admin.form-step', 1, '1.0.0', 'Initialize extension.', '2022-09-07 00:46:33', '2022-09-07 00:46:33');
INSERT INTO `admin_extension_histories` VALUES (15, 'sparkinzy.dcat-viewer', 1, '1.0.0', '基于 神级插件 viewerjs 做的一个封装，提升Dcat Admin 图片预览效果，实现放大、缩小、翻转、旋转等效果.', '2022-09-15 14:25:29', '2022-09-15 14:25:29');
INSERT INTO `admin_extension_histories` VALUES (16, 'sparkinzy.dcat-viewer', 1, '1.0.2', '提升viewer的zindex为8个9,方便在modal实现图片预览', '2022-09-15 14:25:29', '2022-09-15 14:25:29');
INSERT INTO `admin_extension_histories` VALUES (20, 'jyil.crontab', 2, '1.0.0', 'create_crontab_table.php', '2023-03-06 18:38:49', '2023-03-06 18:38:49');
INSERT INTO `admin_extension_histories` VALUES (21, 'jyil.crontab', 1, '1.0.0', '定时任务.', '2023-03-06 18:38:51', '2023-03-06 18:38:51');

-- ----------------------------
-- Table structure for admin_extensions
-- ----------------------------
DROP TABLE IF EXISTS `admin_extensions`;
CREATE TABLE `admin_extensions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_extensions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_extensions
-- ----------------------------
INSERT INTO `admin_extensions` VALUES (10, 'lty5240.dcat-easy-sku', '1.1.0', 1, NULL, '2022-01-10 12:03:01', '2022-01-10 12:03:04');
INSERT INTO `admin_extensions` VALUES (11, 'dcat-admin.form-step', '1.0.0', 1, NULL, '2022-09-07 00:46:33', '2022-09-07 00:46:43');
INSERT INTO `admin_extensions` VALUES (12, 'sparkinzy.dcat-viewer', '1.0.2', 1, NULL, '2022-09-15 14:25:29', '2022-09-15 14:25:39');
INSERT INTO `admin_extensions` VALUES (16, 'jyil.crontab', '1.0.0', 1, NULL, '2023-03-06 18:38:51', '2023-03-06 18:38:57');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `show` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Index', 'feather icon-bar-chart-2', '/', '', 1, '2021-01-26 03:40:33', NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 999, '开发配置', 'feather icon-settings', NULL, '', 1, '2021-01-26 03:40:33', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (3, 2, 46, '团队', NULL, 'auth/users', '', 1, '2021-01-26 03:40:33', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (4, 2, 47, 'Roles', '', 'auth/roles', '', 1, '2021-01-26 03:40:33', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (5, 2, 48, 'Permission', '', 'auth/permissions', '', 1, '2021-01-26 03:40:33', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (6, 2, 49, 'Menu', '', 'auth/menu', '', 1, '2021-01-26 03:40:33', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (8, 0, 2, '全局配置', 'fa-cog', NULL, '', 1, '2021-01-26 07:51:49', '2022-09-16 15:49:28');
INSERT INTO `admin_menu` VALUES (9, 8, 3, '常规', NULL, '/settings', '', 1, '2021-01-26 07:52:17', '2022-09-16 15:49:28');
INSERT INTO `admin_menu` VALUES (10, 8, 5, '上传', NULL, 'settings/oss', '', 1, '2021-01-28 10:03:47', '2022-09-16 15:49:28');
INSERT INTO `admin_menu` VALUES (11, 18, 14, '轮播图', NULL, 'slideshow', '', 1, '2021-01-29 03:31:39', '2022-09-16 15:50:05');
INSERT INTO `admin_menu` VALUES (12, 22, 40, '用户', NULL, '/users', '', 1, '2021-02-20 10:09:07', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (13, 14, 25, '圈子', NULL, 'circle', '', 1, '2021-02-21 10:38:05', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (14, 0, 22, '文章管理', 'fa-leanpub', 'posts', '', 1, '2021-02-21 10:50:17', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (15, 14, 26, '板块', NULL, 'plate', '', 1, '2021-02-21 10:54:01', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (16, 14, 24, '文章', NULL, 'posts/index', '', 1, '2021-02-22 03:57:54', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (17, 8, 6, '附件', NULL, 'attachment', '', 1, '2021-02-23 07:12:02', '2022-09-16 15:49:28');
INSERT INTO `admin_menu` VALUES (18, 0, 13, '运营管理', 'fa-pie-chart', NULL, '', 1, '2021-03-16 10:57:25', '2022-09-16 15:50:05');
INSERT INTO `admin_menu` VALUES (19, 18, 16, '搜索', NULL, 'search', '', 1, '2021-03-16 10:58:27', '2022-09-19 16:24:47');
INSERT INTO `admin_menu` VALUES (20, 22, 43, '反馈', NULL, '/feedback', '', 1, '2021-04-09 03:59:33', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (21, 18, 20, '通知', NULL, '/notice', '', 1, '2021-04-10 03:52:40', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (22, 0, 39, '用户管理', 'fa-group', NULL, '', 1, '2021-04-15 02:10:41', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (23, 22, 42, '认证', NULL, 'authentication', '', 1, '2021-04-17 03:21:38', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (24, 18, 21, '条款', NULL, '/clause', '', 1, '2021-04-23 03:21:47', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (25, 14, 27, '评论', NULL, 'commen', '', 1, '2021-04-28 10:17:58', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (26, 22, 44, '资料', NULL, 'usertemp', '', 1, '2021-04-28 15:48:06', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (27, 14, 28, '标签', NULL, 'tags', '', 1, '2021-05-05 10:19:30', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (28, 18, 18, '订单', NULL, '/order', '', 1, '2021-05-16 19:03:35', '2022-09-19 16:24:47');
INSERT INTO `admin_menu` VALUES (30, 18, 19, '充电', NULL, '/exceptional', '', 1, '2021-05-29 10:10:37', '2022-09-19 16:24:47');
INSERT INTO `admin_menu` VALUES (31, 18, 17, '提现', NULL, '/withdrawal', '', 1, '2021-05-29 10:35:55', '2022-09-19 16:24:47');
INSERT INTO `admin_menu` VALUES (32, 22, 41, '金融', NULL, '/financial', '', 1, '2021-05-29 10:37:00', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (36, 0, 29, '商城管理', 'fa-shopping-cart', NULL, '', 1, '2022-01-09 22:06:25', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (37, 36, 30, '分类', NULL, '/shop/classify', '', 1, '2022-01-09 22:07:06', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (38, 36, 31, '商品', NULL, '/shop/goods', '', 1, '2022-01-09 22:07:53', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (39, 36, 33, '订单', NULL, '/shop/order', '', 1, '2022-01-09 22:08:17', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (40, 36, 37, '服务', NULL, '/shop/service', '', 1, '2022-01-09 22:08:35', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (41, 36, 38, '通知', NULL, '/shop/notice', '', 1, '2022-01-11 11:21:54', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (42, 36, 32, '购物袋', NULL, '/shop/cart', '', 1, '2022-01-15 18:28:07', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (43, 36, 36, '地址', NULL, '/shop/address', '', 1, '2022-01-16 19:45:44', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (44, 36, 34, '订单', NULL, '/shop/orderGoods', '', 1, '2022-01-18 17:59:35', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (45, 36, 35, '售后', NULL, '/shop/orderAfter', '', 1, '2022-01-18 23:09:54', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (48, 14, 23, '发文章', NULL, '/posts/publish', '', 1, '2022-09-06 13:42:57', '2022-09-19 13:45:56');
INSERT INTO `admin_menu` VALUES (51, 0, 9, 'PC端配置', 'fa-simplybuilt', NULL, '', 1, '2022-09-08 11:44:40', '2022-09-16 15:50:05');
INSERT INTO `admin_menu` VALUES (52, 51, 11, '导航', NULL, 'settings/navigation', '', 1, '2022-09-08 11:55:47', '2022-09-16 15:50:05');
INSERT INTO `admin_menu` VALUES (53, 51, 12, '导航分类', NULL, 'settings/navigation/plate', '', 1, '2022-09-08 11:57:22', '2022-09-16 15:50:05');
INSERT INTO `admin_menu` VALUES (54, 51, 10, '常规', NULL, 'settings/pc', '', 1, '2022-09-15 10:11:45', '2022-09-16 15:50:05');
INSERT INTO `admin_menu` VALUES (59, 8, 4, '菜单', NULL, 'settings/menu', '', 1, '2022-09-16 00:26:17', '2022-09-16 15:49:28');
INSERT INTO `admin_menu` VALUES (60, 0, 7, '移动端', 'fa-wechat', NULL, '', 1, '2022-09-16 00:38:14', '2023-03-06 17:37:14');
INSERT INTO `admin_menu` VALUES (61, 60, 8, '常规', NULL, 'settings/miniprogram', '', 1, '2022-09-16 00:40:44', '2022-09-16 15:50:05');
INSERT INTO `admin_menu` VALUES (63, 36, 52, '退款', NULL, '/shop/refund', '', 1, '2023-03-06 17:37:14', '2023-03-06 17:37:14');
INSERT INTO `admin_menu` VALUES (64, 8, 53, '支付', NULL, '/settings/pay', '', 1, '2023-03-06 17:37:14', '2023-03-06 17:37:14');
INSERT INTO `admin_menu` VALUES (65, 60, 54, 'App', NULL, '/settings/app', '', 1, '2023-03-06 17:37:14', '2023-03-06 17:37:14');
INSERT INTO `admin_menu` VALUES (66, 0, 55, '图集管理', 'fa-picture-o', NULL, '', 1, '2023-03-06 17:37:14', '2023-03-06 17:37:14');
INSERT INTO `admin_menu` VALUES (67, 66, 56, '主题', NULL, '/wallpaper/subject', '', 1, '2023-03-06 17:37:14', '2023-03-06 17:37:14');
INSERT INTO `admin_menu` VALUES (68, 66, 57, '图集', NULL, '/wallpaper/item', '', 1, '2023-03-06 17:37:14', '2023-03-06 17:37:14');
INSERT INTO `admin_menu` VALUES (69, 22, 58, '帮助', NULL, '/qa/question', '', 1, '2023-03-06 17:37:14', '2023-03-06 17:37:14');
INSERT INTO `admin_menu` VALUES (70, 14, 59, '投票', NULL, '/vote', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (71, 22, 60, '投票', NULL, '/user/vote', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (72, 22, 61, '抽奖', NULL, '/user/luckdraw', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (73, 22, 62, '签到', NULL, '/user/sign', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (74, 0, 63, '任务系统', 'fa-check-square-o', NULL, '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (75, 74, 64, '每日', NULL, '/tasks/day', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (76, 74, 65, '成长', NULL, '/tasks/once', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (77, 74, 66, '用户', NULL, '/user/task', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (78, 8, 67, '安全', NULL, '/settings/safe', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (79, 8, 68, 'API', NULL, '/settings/api', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (80, 8, 69, '图标', NULL, '/settings/icons', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (81, 22, 70, '举报', NULL, '/user/report', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (82, 18, 71, '活动', NULL, '/activity', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (83, 0, 72, '页面模板', 'fa-coffee', '/pages', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (84, 60, 73, '淘客', NULL, '/settings/taoke', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (85, 60, 1000, '首页', NULL, '/settings/pageindex', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (86, 0, 1001, '扩展模块', 'fa-certificate', '/extension', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (87, 51, 1002, 'SEO', NULL, '/settings/seo', '', 1, '2023-03-06 17:37:15', '2023-03-06 17:37:15');
INSERT INTO `admin_menu` VALUES (112, 0, 1003, '定时任务', 'fa-gears', '', 'jyil.crontab', 1, '2023-03-06 18:38:51', '2023-03-06 18:38:51');
INSERT INTO `admin_menu` VALUES (113, 112, 1004, '任务列表', 'fa-tasks', 'auth/crontabs', 'jyil.crontab', 1, '2023-03-06 18:38:51', '2023-03-06 18:38:51');
INSERT INTO `admin_menu` VALUES (114, 112, 1005, '日志列表', 'fa-file-text-o', 'auth/crontab-logs', 'jyil.crontab', 1, '2023-03-06 18:38:51', '2023-03-06 18:38:51');
INSERT INTO `admin_menu` VALUES (115, 0, 1006, '活跃系统', 'fa-paw', 'settings/robot', '', 1, '2023-03-08 15:22:38', '2023-03-08 15:22:38');
INSERT INTO `admin_menu` VALUES (116, 60, 1007, '发布', NULL, 'settings/publish', '', 1, '2023-03-12 16:09:45', '2023-03-12 16:09:45');
INSERT INTO `admin_menu` VALUES (117, 8, 1008, '内容源', NULL, 'settings/contents', '', 1, '2023-03-12 16:09:45', '2023-03-12 16:09:45');
INSERT INTO `admin_menu` VALUES (118, 60, 1009, '管理端', NULL, '/settings/admin', '', 1, '2023-03-22 23:34:57', '2023-03-22 23:34:57');
INSERT INTO `admin_menu` VALUES (119, 60, 1010, '圈子', NULL, '/settings/circle', '', 1, '2023-03-22 23:34:57', '2023-03-22 23:34:57');
INSERT INTO `admin_menu` VALUES (120, 0, 1011, '实时热榜', 'fa-bomb', NULL, '', 1, '2023-03-22 23:34:57', '2023-03-22 23:34:57');
INSERT INTO `admin_menu` VALUES (121, 120, 1012, '帖子', NULL, '/realtime/post', '', 1, '2023-03-22 23:34:57', '2023-03-22 23:34:57');
INSERT INTO `admin_menu` VALUES (122, 120, 1013, '话题', NULL, '/realtime/topic', '', 1, '2023-03-22 23:34:57', '2023-03-22 23:34:57');
INSERT INTO `admin_menu` VALUES (123, 120, 1014, '圈子', NULL, '/realtime/circle', '', 1, '2023-03-22 23:34:57', '2023-03-22 23:34:57');
INSERT INTO `admin_menu` VALUES (124, 120, 1015, '用户', NULL, '/realtime/user', '', 1, '2023-03-22 23:34:57', '2023-03-22 23:34:57');
INSERT INTO `admin_menu` VALUES (125, 120, 1016, '板块', NULL, '/realtime/plate', '', 0, '2023-03-22 23:34:57', '2023-03-22 23:34:57');
INSERT INTO `admin_menu` VALUES (126, 120, 1017, '商品', NULL, '/realtime/goods', '', 0, '2023-03-22 23:34:57', '2023-03-22 23:34:57');
INSERT INTO `admin_menu` VALUES (127, 60, 1018, '广告', NULL, '/settings/ad', '', 1, '2023-04-03 14:03:48', '2023-04-03 14:03:48');
INSERT INTO `admin_menu` VALUES (128, 60, 1019, '我的', NULL, '/settings/pagemine', '', 1, '2023-04-09 20:32:33', '2023-04-09 20:32:33');

-- ----------------------------
-- Table structure for admin_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_menu`;
CREATE TABLE `admin_permission_menu`  (
  `permission_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_permission_menu_permission_id_menu_id_unique`(`permission_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permission_menu
-- ----------------------------
INSERT INTO `admin_permission_menu` VALUES (1, 51, '2022-09-08 11:44:40', '2022-09-08 11:44:40');
INSERT INTO `admin_permission_menu` VALUES (2, 13, '2021-02-21 10:38:05', '2021-02-21 10:38:05');
INSERT INTO `admin_permission_menu` VALUES (2, 14, '2021-02-21 10:52:24', '2021-02-21 10:52:24');
INSERT INTO `admin_permission_menu` VALUES (2, 15, '2021-02-21 10:54:01', '2021-02-21 10:54:01');
INSERT INTO `admin_permission_menu` VALUES (2, 16, '2021-02-22 03:57:54', '2021-02-22 03:57:54');
INSERT INTO `admin_permission_menu` VALUES (2, 17, '2021-02-23 07:12:03', '2021-02-23 07:12:03');
INSERT INTO `admin_permission_menu` VALUES (2, 18, '2021-03-16 10:57:25', '2021-03-16 10:57:25');
INSERT INTO `admin_permission_menu` VALUES (2, 19, '2021-03-16 10:58:27', '2021-03-16 10:58:27');
INSERT INTO `admin_permission_menu` VALUES (2, 20, '2021-04-09 03:59:33', '2021-04-09 03:59:33');
INSERT INTO `admin_permission_menu` VALUES (2, 21, '2021-04-10 03:52:40', '2021-04-10 03:52:40');
INSERT INTO `admin_permission_menu` VALUES (2, 23, '2021-04-17 03:21:38', '2021-04-17 03:21:38');
INSERT INTO `admin_permission_menu` VALUES (2, 28, '2021-05-16 19:03:35', '2021-05-16 19:03:35');
INSERT INTO `admin_permission_menu` VALUES (2, 30, '2021-05-29 10:10:37', '2021-05-29 10:10:37');
INSERT INTO `admin_permission_menu` VALUES (2, 31, '2021-05-29 10:35:55', '2021-05-29 10:35:55');
INSERT INTO `admin_permission_menu` VALUES (2, 32, '2021-05-29 10:37:00', '2021-05-29 10:37:00');
INSERT INTO `admin_permission_menu` VALUES (2, 33, '2021-07-04 14:30:26', '2021-07-04 14:30:26');
INSERT INTO `admin_permission_menu` VALUES (2, 34, '2021-07-04 14:34:36', '2021-07-04 14:34:36');
INSERT INTO `admin_permission_menu` VALUES (2, 35, '2021-07-04 14:35:19', '2021-07-04 14:35:19');
INSERT INTO `admin_permission_menu` VALUES (2, 36, '2022-01-09 22:06:25', '2022-01-09 22:06:25');
INSERT INTO `admin_permission_menu` VALUES (2, 37, '2022-01-09 22:07:06', '2022-01-09 22:07:06');
INSERT INTO `admin_permission_menu` VALUES (2, 38, '2022-01-09 22:07:53', '2022-01-09 22:07:53');
INSERT INTO `admin_permission_menu` VALUES (2, 39, '2022-01-09 22:08:17', '2022-01-09 22:08:17');
INSERT INTO `admin_permission_menu` VALUES (2, 40, '2022-01-09 22:08:35', '2022-01-09 22:08:35');
INSERT INTO `admin_permission_menu` VALUES (3, 13, '2021-02-21 10:38:05', '2021-02-21 10:38:05');
INSERT INTO `admin_permission_menu` VALUES (3, 14, '2021-02-21 10:52:24', '2021-02-21 10:52:24');
INSERT INTO `admin_permission_menu` VALUES (3, 15, '2021-02-21 10:54:01', '2021-02-21 10:54:01');
INSERT INTO `admin_permission_menu` VALUES (3, 16, '2021-02-22 03:57:54', '2021-02-22 03:57:54');
INSERT INTO `admin_permission_menu` VALUES (3, 17, '2021-02-23 07:12:03', '2021-02-23 07:12:03');
INSERT INTO `admin_permission_menu` VALUES (3, 18, '2021-03-16 10:57:25', '2021-03-16 10:57:25');
INSERT INTO `admin_permission_menu` VALUES (3, 19, '2021-03-16 10:58:27', '2021-03-16 10:58:27');
INSERT INTO `admin_permission_menu` VALUES (3, 20, '2021-04-09 03:59:33', '2021-04-09 03:59:33');
INSERT INTO `admin_permission_menu` VALUES (3, 21, '2021-04-10 03:52:40', '2021-04-10 03:52:40');
INSERT INTO `admin_permission_menu` VALUES (3, 23, '2021-04-17 03:21:38', '2021-04-17 03:21:38');
INSERT INTO `admin_permission_menu` VALUES (3, 28, '2021-05-16 19:03:35', '2021-05-16 19:03:35');
INSERT INTO `admin_permission_menu` VALUES (3, 30, '2021-05-29 10:10:37', '2021-05-29 10:10:37');
INSERT INTO `admin_permission_menu` VALUES (3, 31, '2021-05-29 10:35:55', '2021-05-29 10:35:55');
INSERT INTO `admin_permission_menu` VALUES (3, 32, '2021-05-29 10:37:00', '2021-05-29 10:37:00');
INSERT INTO `admin_permission_menu` VALUES (3, 33, '2021-07-04 14:30:26', '2021-07-04 14:30:26');
INSERT INTO `admin_permission_menu` VALUES (3, 34, '2021-07-04 14:34:36', '2021-07-04 14:34:36');
INSERT INTO `admin_permission_menu` VALUES (3, 35, '2021-07-04 14:35:19', '2021-07-04 14:35:19');
INSERT INTO `admin_permission_menu` VALUES (3, 36, '2022-01-09 22:06:25', '2022-01-09 22:06:25');
INSERT INTO `admin_permission_menu` VALUES (3, 37, '2022-01-09 22:07:06', '2022-01-09 22:07:06');
INSERT INTO `admin_permission_menu` VALUES (3, 38, '2022-01-09 22:07:53', '2022-01-09 22:07:53');
INSERT INTO `admin_permission_menu` VALUES (3, 39, '2022-01-09 22:08:17', '2022-01-09 22:08:17');
INSERT INTO `admin_permission_menu` VALUES (3, 40, '2022-01-09 22:08:35', '2022-01-09 22:08:35');
INSERT INTO `admin_permission_menu` VALUES (4, 13, '2021-02-21 10:38:06', '2021-02-21 10:38:06');
INSERT INTO `admin_permission_menu` VALUES (4, 14, '2021-02-21 10:52:24', '2021-02-21 10:52:24');
INSERT INTO `admin_permission_menu` VALUES (4, 15, '2021-02-21 10:54:02', '2021-02-21 10:54:02');
INSERT INTO `admin_permission_menu` VALUES (4, 16, '2021-02-22 03:57:54', '2021-02-22 03:57:54');
INSERT INTO `admin_permission_menu` VALUES (4, 17, '2021-02-23 07:12:03', '2021-02-23 07:12:03');
INSERT INTO `admin_permission_menu` VALUES (4, 18, '2021-03-16 10:57:25', '2021-03-16 10:57:25');
INSERT INTO `admin_permission_menu` VALUES (4, 19, '2021-03-16 10:58:27', '2021-03-16 10:58:27');
INSERT INTO `admin_permission_menu` VALUES (4, 20, '2021-04-09 03:59:33', '2021-04-09 03:59:33');
INSERT INTO `admin_permission_menu` VALUES (4, 21, '2021-04-10 03:52:40', '2021-04-10 03:52:40');
INSERT INTO `admin_permission_menu` VALUES (4, 23, '2021-04-17 03:21:38', '2021-04-17 03:21:38');
INSERT INTO `admin_permission_menu` VALUES (4, 28, '2021-05-16 19:03:35', '2021-05-16 19:03:35');
INSERT INTO `admin_permission_menu` VALUES (4, 30, '2021-05-29 10:10:37', '2021-05-29 10:10:37');
INSERT INTO `admin_permission_menu` VALUES (4, 31, '2021-05-29 10:35:55', '2021-05-29 10:35:55');
INSERT INTO `admin_permission_menu` VALUES (4, 32, '2021-05-29 10:37:00', '2021-05-29 10:37:00');
INSERT INTO `admin_permission_menu` VALUES (4, 33, '2021-07-04 14:30:26', '2021-07-04 14:30:26');
INSERT INTO `admin_permission_menu` VALUES (4, 34, '2021-07-04 14:34:36', '2021-07-04 14:34:36');
INSERT INTO `admin_permission_menu` VALUES (4, 35, '2021-07-04 14:35:19', '2021-07-04 14:35:19');
INSERT INTO `admin_permission_menu` VALUES (4, 36, '2022-01-09 22:06:25', '2022-01-09 22:06:25');
INSERT INTO `admin_permission_menu` VALUES (4, 37, '2022-01-09 22:07:06', '2022-01-09 22:07:06');
INSERT INTO `admin_permission_menu` VALUES (4, 38, '2022-01-09 22:07:53', '2022-01-09 22:07:53');
INSERT INTO `admin_permission_menu` VALUES (4, 39, '2022-01-09 22:08:17', '2022-01-09 22:08:17');
INSERT INTO `admin_permission_menu` VALUES (4, 40, '2022-01-09 22:08:35', '2022-01-09 22:08:35');
INSERT INTO `admin_permission_menu` VALUES (5, 13, '2021-02-21 10:38:06', '2021-02-21 10:38:06');
INSERT INTO `admin_permission_menu` VALUES (5, 14, '2021-02-21 10:52:24', '2021-02-21 10:52:24');
INSERT INTO `admin_permission_menu` VALUES (5, 15, '2021-02-21 10:54:02', '2021-02-21 10:54:02');
INSERT INTO `admin_permission_menu` VALUES (5, 16, '2021-02-22 03:57:54', '2021-02-22 03:57:54');
INSERT INTO `admin_permission_menu` VALUES (5, 17, '2021-02-23 07:12:03', '2021-02-23 07:12:03');
INSERT INTO `admin_permission_menu` VALUES (5, 18, '2021-03-16 10:57:25', '2021-03-16 10:57:25');
INSERT INTO `admin_permission_menu` VALUES (5, 19, '2021-03-16 10:58:27', '2021-03-16 10:58:27');
INSERT INTO `admin_permission_menu` VALUES (5, 20, '2021-04-09 03:59:33', '2021-04-09 03:59:33');
INSERT INTO `admin_permission_menu` VALUES (5, 21, '2021-04-10 03:52:40', '2021-04-10 03:52:40');
INSERT INTO `admin_permission_menu` VALUES (5, 23, '2021-04-17 03:21:38', '2021-04-17 03:21:38');
INSERT INTO `admin_permission_menu` VALUES (5, 28, '2021-05-16 19:03:35', '2021-05-16 19:03:35');
INSERT INTO `admin_permission_menu` VALUES (5, 30, '2021-05-29 10:10:37', '2021-05-29 10:10:37');
INSERT INTO `admin_permission_menu` VALUES (5, 31, '2021-05-29 10:35:55', '2021-05-29 10:35:55');
INSERT INTO `admin_permission_menu` VALUES (5, 32, '2021-05-29 10:37:00', '2021-05-29 10:37:00');
INSERT INTO `admin_permission_menu` VALUES (5, 33, '2021-07-04 14:30:26', '2021-07-04 14:30:26');
INSERT INTO `admin_permission_menu` VALUES (5, 34, '2021-07-04 14:34:36', '2021-07-04 14:34:36');
INSERT INTO `admin_permission_menu` VALUES (5, 35, '2021-07-04 14:35:19', '2021-07-04 14:35:19');
INSERT INTO `admin_permission_menu` VALUES (5, 36, '2022-01-09 22:06:25', '2022-01-09 22:06:25');
INSERT INTO `admin_permission_menu` VALUES (5, 37, '2022-01-09 22:07:06', '2022-01-09 22:07:06');
INSERT INTO `admin_permission_menu` VALUES (5, 38, '2022-01-09 22:07:53', '2022-01-09 22:07:53');
INSERT INTO `admin_permission_menu` VALUES (5, 39, '2022-01-09 22:08:17', '2022-01-09 22:08:17');
INSERT INTO `admin_permission_menu` VALUES (5, 40, '2022-01-09 22:08:35', '2022-01-09 22:08:35');
INSERT INTO `admin_permission_menu` VALUES (6, 13, '2021-02-21 10:38:06', '2021-02-21 10:38:06');
INSERT INTO `admin_permission_menu` VALUES (6, 14, '2021-02-21 10:52:24', '2021-02-21 10:52:24');
INSERT INTO `admin_permission_menu` VALUES (6, 15, '2021-02-21 10:54:02', '2021-02-21 10:54:02');
INSERT INTO `admin_permission_menu` VALUES (6, 16, '2021-02-22 03:57:54', '2021-02-22 03:57:54');
INSERT INTO `admin_permission_menu` VALUES (6, 17, '2021-02-23 07:12:03', '2021-02-23 07:12:03');
INSERT INTO `admin_permission_menu` VALUES (6, 18, '2021-03-16 10:57:25', '2021-03-16 10:57:25');
INSERT INTO `admin_permission_menu` VALUES (6, 19, '2021-03-16 10:58:27', '2021-03-16 10:58:27');
INSERT INTO `admin_permission_menu` VALUES (6, 20, '2021-04-09 03:59:33', '2021-04-09 03:59:33');
INSERT INTO `admin_permission_menu` VALUES (6, 21, '2021-04-10 03:52:40', '2021-04-10 03:52:40');
INSERT INTO `admin_permission_menu` VALUES (6, 23, '2021-04-17 03:21:38', '2021-04-17 03:21:38');
INSERT INTO `admin_permission_menu` VALUES (6, 28, '2021-05-16 19:03:35', '2021-05-16 19:03:35');
INSERT INTO `admin_permission_menu` VALUES (6, 30, '2021-05-29 10:10:37', '2021-05-29 10:10:37');
INSERT INTO `admin_permission_menu` VALUES (6, 31, '2021-05-29 10:35:55', '2021-05-29 10:35:55');
INSERT INTO `admin_permission_menu` VALUES (6, 32, '2021-05-29 10:37:00', '2021-05-29 10:37:00');
INSERT INTO `admin_permission_menu` VALUES (6, 33, '2021-07-04 14:30:26', '2021-07-04 14:30:26');
INSERT INTO `admin_permission_menu` VALUES (6, 34, '2021-07-04 14:34:36', '2021-07-04 14:34:36');
INSERT INTO `admin_permission_menu` VALUES (6, 35, '2021-07-04 14:35:19', '2021-07-04 14:35:19');
INSERT INTO `admin_permission_menu` VALUES (6, 36, '2022-01-09 22:06:25', '2022-01-09 22:06:25');
INSERT INTO `admin_permission_menu` VALUES (6, 37, '2022-01-09 22:07:06', '2022-01-09 22:07:06');
INSERT INTO `admin_permission_menu` VALUES (6, 38, '2022-01-09 22:07:53', '2022-01-09 22:07:53');
INSERT INTO `admin_permission_menu` VALUES (6, 39, '2022-01-09 22:08:17', '2022-01-09 22:08:17');
INSERT INTO `admin_permission_menu` VALUES (6, 40, '2022-01-09 22:08:35', '2022-01-09 22:08:35');
INSERT INTO `admin_permission_menu` VALUES (7, 11, '2022-09-08 06:33:45', '2022-09-08 06:33:45');
INSERT INTO `admin_permission_menu` VALUES (8, 31, '2022-09-08 06:35:17', '2022-09-08 06:35:17');
INSERT INTO `admin_permission_menu` VALUES (9, 28, '2022-09-08 06:37:21', '2022-09-08 06:37:21');
INSERT INTO `admin_permission_menu` VALUES (10, 1, '2022-09-08 06:37:53', '2022-09-08 06:37:53');
INSERT INTO `admin_permission_menu` VALUES (11, 30, '2022-09-08 06:40:19', '2022-09-08 06:40:19');
INSERT INTO `admin_permission_menu` VALUES (12, 19, '2022-09-08 06:41:00', '2022-09-08 06:41:00');
INSERT INTO `admin_permission_menu` VALUES (13, 21, '2022-09-08 06:41:38', '2022-09-08 06:41:38');
INSERT INTO `admin_permission_menu` VALUES (14, 24, '2022-09-08 06:42:39', '2022-09-08 06:42:39');
INSERT INTO `admin_permission_menu` VALUES (15, 48, '2022-09-08 07:18:21', '2022-09-08 07:18:21');
INSERT INTO `admin_permission_menu` VALUES (17, 13, '2022-09-08 06:45:56', '2022-09-08 06:45:56');
INSERT INTO `admin_permission_menu` VALUES (18, 15, '2022-09-08 06:46:52', '2022-09-08 06:46:52');
INSERT INTO `admin_permission_menu` VALUES (19, 25, '2022-09-08 06:47:27', '2022-09-08 06:47:27');
INSERT INTO `admin_permission_menu` VALUES (20, 27, '2022-09-08 06:47:55', '2022-09-08 06:47:55');
INSERT INTO `admin_permission_menu` VALUES (21, 37, '2022-09-08 06:48:49', '2022-09-08 06:48:49');
INSERT INTO `admin_permission_menu` VALUES (22, 38, '2022-09-08 06:49:41', '2022-09-08 06:49:41');
INSERT INTO `admin_permission_menu` VALUES (23, 42, '2022-09-08 06:50:39', '2022-09-08 06:50:39');
INSERT INTO `admin_permission_menu` VALUES (24, 39, '2022-09-08 06:51:31', '2022-09-08 06:51:31');
INSERT INTO `admin_permission_menu` VALUES (25, 44, '2022-09-08 06:52:35', '2022-09-08 06:52:35');
INSERT INTO `admin_permission_menu` VALUES (26, 45, '2022-09-08 06:55:38', '2022-09-08 06:55:38');
INSERT INTO `admin_permission_menu` VALUES (27, 43, '2022-09-08 06:56:40', '2022-09-08 06:56:40');
INSERT INTO `admin_permission_menu` VALUES (28, 40, '2022-09-08 06:58:16', '2022-09-08 06:58:16');
INSERT INTO `admin_permission_menu` VALUES (29, 41, '2022-09-08 06:59:14', '2022-09-08 06:59:14');
INSERT INTO `admin_permission_menu` VALUES (30, 12, '2022-09-08 07:00:35', '2022-09-08 07:00:35');
INSERT INTO `admin_permission_menu` VALUES (31, 32, '2022-09-08 07:01:17', '2022-09-08 07:01:17');
INSERT INTO `admin_permission_menu` VALUES (32, 23, '2022-09-08 07:01:46', '2022-09-08 07:01:46');
INSERT INTO `admin_permission_menu` VALUES (33, 20, '2022-09-08 07:02:33', '2022-09-08 07:02:33');
INSERT INTO `admin_permission_menu` VALUES (34, 26, '2022-09-08 07:03:08', '2022-09-08 07:03:08');
INSERT INTO `admin_permission_menu` VALUES (35, 9, '2022-09-08 07:07:13', '2022-09-08 07:07:13');
INSERT INTO `admin_permission_menu` VALUES (36, 10, '2022-09-08 07:08:17', '2022-09-08 07:08:17');
INSERT INTO `admin_permission_menu` VALUES (37, 17, '2022-09-08 07:09:03', '2022-09-08 07:09:03');
INSERT INTO `admin_permission_menu` VALUES (38, 59, '2022-09-27 10:45:25', '2022-09-27 10:45:25');
INSERT INTO `admin_permission_menu` VALUES (39, 61, '2022-09-27 10:51:42', '2022-09-27 10:51:42');
INSERT INTO `admin_permission_menu` VALUES (40, 54, '2022-09-27 10:58:26', '2022-09-27 10:58:26');
INSERT INTO `admin_permission_menu` VALUES (41, 52, '2022-09-27 11:01:01', '2022-09-27 11:01:01');
INSERT INTO `admin_permission_menu` VALUES (41, 53, '2022-09-27 11:01:01', '2022-09-27 11:01:01');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, '开发配置相关（勿care）', 'auth-management', '', '', 1, 0, '2021-01-26 03:40:33', '2022-09-08 07:03:55');
INSERT INTO `admin_permissions` VALUES (2, 'Users', 'users', '', '/auth/users*', 2, 1, '2021-01-26 03:40:33', NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Roles', 'roles', '', '/auth/roles*', 3, 1, '2021-01-26 03:40:33', NULL);
INSERT INTO `admin_permissions` VALUES (4, 'Permissions', 'permissions', '', '/auth/permissions*', 4, 1, '2021-01-26 03:40:33', NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Menu', 'menu', '', '/auth/menu*', 5, 1, '2021-01-26 03:40:33', NULL);
INSERT INTO `admin_permissions` VALUES (6, 'Extension', 'extension', '', '/auth/extensions*', 6, 1, '2021-01-26 03:40:33', NULL);
INSERT INTO `admin_permissions` VALUES (7, '运营管理-轮播图', 'slideshow', '', '/slideshow*', 8, 0, '2022-09-08 06:33:45', '2022-09-08 07:31:26');
INSERT INTO `admin_permissions` VALUES (8, '运营管理-提现', 'withdrawal', '', '/withdrawal*', 9, 0, '2022-09-08 06:35:17', '2022-09-27 10:46:49');
INSERT INTO `admin_permissions` VALUES (9, '运营管理-订单', 'order', '', '/order*', 10, 0, '2022-09-08 06:37:21', '2022-09-27 10:46:40');
INSERT INTO `admin_permissions` VALUES (10, '主页', 'index', '', '', 7, 0, '2022-09-08 06:37:53', '2022-09-08 06:38:10');
INSERT INTO `admin_permissions` VALUES (11, '运营管理-打赏', 'exceptional', '', '/exceptional*', 11, 0, '2022-09-08 06:40:19', '2022-09-27 10:46:58');
INSERT INTO `admin_permissions` VALUES (12, '运营管理-搜索', 'search', '', '/search*', 12, 0, '2022-09-08 06:41:00', '2022-09-27 10:47:06');
INSERT INTO `admin_permissions` VALUES (13, '运营管理-通知', 'notice', '', '/notice*', 13, 0, '2022-09-08 06:41:38', '2022-09-27 10:47:13');
INSERT INTO `admin_permissions` VALUES (14, '运营管理-条款', 'clause', '', '/clause*', 14, 0, '2022-09-08 06:42:39', '2022-09-27 10:47:23');
INSERT INTO `admin_permissions` VALUES (15, '文章管理-发文章', 'posts_publish', '', '/posts/publish*', 15, 0, '2022-09-08 06:43:52', '2022-09-08 07:30:01');
INSERT INTO `admin_permissions` VALUES (16, '文章管理-文章', 'posts_index', '', '/posts/index*', 16, 0, '2022-09-08 06:44:45', '2022-09-08 07:32:53');
INSERT INTO `admin_permissions` VALUES (17, '文章管理-圈子', 'circle', '', '/circle*', 17, 0, '2022-09-08 06:45:56', '2022-09-08 07:33:03');
INSERT INTO `admin_permissions` VALUES (18, '文章管理-板块', 'plate', '', '/plate*', 18, 0, '2022-09-08 06:46:52', '2022-09-08 07:33:15');
INSERT INTO `admin_permissions` VALUES (19, '文章管理-评论', 'commen', '', '/commen*', 19, 0, '2022-09-08 06:47:27', '2022-09-08 07:33:24');
INSERT INTO `admin_permissions` VALUES (20, '文章管理-标签', 'tags', '', '/tags*', 20, 0, '2022-09-08 06:47:55', '2022-09-08 07:33:33');
INSERT INTO `admin_permissions` VALUES (21, '商城管理-分类', 'shop_classify', '', '/shop/classify*', 21, 0, '2022-09-08 06:48:49', '2022-09-08 07:33:42');
INSERT INTO `admin_permissions` VALUES (22, '商城管理-商品', 'shop_goods', '', '/shop/goods*', 22, 0, '2022-09-08 06:49:41', '2022-09-08 07:33:53');
INSERT INTO `admin_permissions` VALUES (23, '商城管理-购物袋', 'shop_cart', '', '/shop/cart*', 23, 0, '2022-09-08 06:50:39', '2022-09-08 07:34:02');
INSERT INTO `admin_permissions` VALUES (24, '商城管理-订单', 'shop_order', '', '/shop/order*', 24, 0, '2022-09-08 06:51:31', '2022-09-08 07:34:12');
INSERT INTO `admin_permissions` VALUES (25, '商城管理-订单', 'shop_order_goods', '', '/shop/orderGoods*', 25, 0, '2022-09-08 06:52:35', '2022-09-27 10:47:49');
INSERT INTO `admin_permissions` VALUES (26, '商城管理-售后', 'shop_order_after', '', '/shop/orderAfter*', 26, 0, '2022-09-08 06:55:38', '2022-09-27 10:47:59');
INSERT INTO `admin_permissions` VALUES (27, '商城管理-地址', 'shop_address', '', '/shop/address*', 27, 0, '2022-09-08 06:56:40', '2022-09-27 10:48:09');
INSERT INTO `admin_permissions` VALUES (28, '商城管理-服务', 'shop_service', '', '/shop/service*', 28, 0, '2022-09-08 06:58:16', '2022-09-08 07:35:20');
INSERT INTO `admin_permissions` VALUES (29, '商城管理-通知', 'shop_notice', '', '/shop/notice*', 29, 0, '2022-09-08 06:59:14', '2022-09-08 07:35:31');
INSERT INTO `admin_permissions` VALUES (30, '用户管理-用户', 'user', '', '/user*', 30, 0, '2022-09-08 07:00:35', '2022-09-27 10:49:00');
INSERT INTO `admin_permissions` VALUES (31, '用户管理-金融', 'financial', '', '/financial*', 31, 0, '2022-09-08 07:01:17', '2022-09-27 10:48:23');
INSERT INTO `admin_permissions` VALUES (32, '用户管理-认证', 'authentication', '', '/authentication*', 32, 0, '2022-09-08 07:01:46', '2022-09-27 10:48:31');
INSERT INTO `admin_permissions` VALUES (33, '用户管理-反馈', 'feedback', '', '/feedback*', 33, 0, '2022-09-08 07:02:33', '2022-09-27 10:48:39');
INSERT INTO `admin_permissions` VALUES (34, '用户管理-资料', 'usertemp', '', '/usertemp*', 34, 0, '2022-09-08 07:03:08', '2022-09-27 10:48:48');
INSERT INTO `admin_permissions` VALUES (35, '全局配置-常规', 'settings', '', '/settings*,/settings/wx*', 35, 0, '2022-09-08 07:07:13', '2022-09-27 10:56:56');
INSERT INTO `admin_permissions` VALUES (36, '全局配置-上传', 'settings_oss', '', '/settings/oss*', 36, 0, '2022-09-08 07:08:17', '2022-09-27 10:49:40');
INSERT INTO `admin_permissions` VALUES (37, '全局配置-附件', 'attachment', '', '/attachment*', 37, 0, '2022-09-08 07:09:03', '2022-09-08 07:37:26');
INSERT INTO `admin_permissions` VALUES (38, '全局配置-菜单', 'settings_menu', '', '/settings/menu*', 38, 0, '2022-09-27 10:45:25', '2022-09-27 10:45:50');
INSERT INTO `admin_permissions` VALUES (39, '小程序端-常规', 'settings_miniprogram', '', '/settings/miniprogram*,/settings/action/miniprogram*', 39, 0, '2022-09-27 10:51:42', '2022-09-27 10:51:42');
INSERT INTO `admin_permissions` VALUES (40, 'PC端配置-常规', 'settings_pc', '', '/settings/pc*,/settings/action/pc*', 40, 0, '2022-09-27 10:58:26', '2022-09-27 10:58:26');
INSERT INTO `admin_permissions` VALUES (41, 'PC端配置_导航&分类', 'settings_navigation', '', '/settings/navigation/plate*,/settings/navigation*', 41, 0, '2022-09-27 11:01:01', '2022-09-27 11:01:01');
INSERT INTO `admin_permissions` VALUES (42, '商城管理-退款', 'shop_refund', NULL, '/shop/refund*', 42, 0, '2023-03-06 17:37:14', '2023-03-06 17:37:14');
INSERT INTO `admin_permissions` VALUES (43, '全局配置-支付', 'settings_pay', NULL, '/settings/pay*,/settings/action/pay*', 43, 0, '2023-03-06 17:37:14', '2023-03-06 17:37:14');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_role_menu_role_id_menu_id_unique`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 1, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 2, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 3, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 4, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 5, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 6, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 7, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 8, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 9, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 10, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 11, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 12, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 13, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 14, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 15, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 16, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 17, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 18, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 19, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 20, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 21, '2021-04-10 03:52:40', '2021-04-10 03:52:40');
INSERT INTO `admin_role_menu` VALUES (1, 22, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 23, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 24, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 25, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 26, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 27, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 28, '2021-05-16 19:03:35', '2021-05-16 19:03:35');
INSERT INTO `admin_role_menu` VALUES (1, 29, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 30, '2021-05-29 10:10:37', '2021-05-29 10:10:37');
INSERT INTO `admin_role_menu` VALUES (1, 31, '2021-05-29 10:35:55', '2021-05-29 10:35:55');
INSERT INTO `admin_role_menu` VALUES (1, 32, '2021-05-29 10:37:00', '2021-05-29 10:37:00');
INSERT INTO `admin_role_menu` VALUES (1, 36, '2022-01-09 22:06:25', '2022-01-09 22:06:25');
INSERT INTO `admin_role_menu` VALUES (1, 37, '2022-01-09 22:07:06', '2022-01-09 22:07:06');
INSERT INTO `admin_role_menu` VALUES (1, 38, '2022-01-09 22:07:53', '2022-01-09 22:07:53');
INSERT INTO `admin_role_menu` VALUES (1, 39, '2022-01-09 22:08:17', '2022-01-09 22:08:17');
INSERT INTO `admin_role_menu` VALUES (1, 40, '2022-01-09 22:08:35', '2022-01-09 22:08:35');
INSERT INTO `admin_role_menu` VALUES (1, 41, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 42, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 43, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 44, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 45, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 48, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_menu` VALUES (1, 51, '2022-09-08 11:44:40', '2022-09-08 11:44:40');
INSERT INTO `admin_role_menu` VALUES (1, 52, '2022-09-08 11:55:47', '2022-09-08 11:55:47');
INSERT INTO `admin_role_menu` VALUES (1, 53, '2022-09-08 11:57:22', '2022-09-08 11:57:22');
INSERT INTO `admin_role_menu` VALUES (1, 54, '2022-09-15 10:11:45', '2022-09-15 10:11:45');
INSERT INTO `admin_role_menu` VALUES (1, 59, '2022-09-16 00:26:17', '2022-09-16 00:26:17');
INSERT INTO `admin_role_menu` VALUES (1, 60, '2022-09-16 00:38:14', '2022-09-16 00:38:14');
INSERT INTO `admin_role_menu` VALUES (1, 61, '2022-09-16 00:40:44', '2022-09-16 00:40:44');
INSERT INTO `admin_role_menu` VALUES (1, 62, '2022-09-19 13:45:44', '2022-09-19 13:45:44');
INSERT INTO `admin_role_menu` VALUES (2, 1, '2022-09-08 05:35:13', '2022-09-08 05:35:13');
INSERT INTO `admin_role_menu` VALUES (2, 13, '2022-09-08 05:34:45', '2022-09-08 05:34:45');
INSERT INTO `admin_role_menu` VALUES (2, 14, '2022-09-08 05:34:34', '2022-09-08 05:34:34');
INSERT INTO `admin_role_menu` VALUES (2, 16, '2022-09-08 05:34:45', '2022-09-08 05:34:45');
INSERT INTO `admin_role_menu` VALUES (2, 25, '2022-09-08 05:34:45', '2022-09-08 05:34:45');
INSERT INTO `admin_role_menu` VALUES (2, 27, '2022-09-08 05:34:45', '2022-09-08 05:34:45');
INSERT INTO `admin_role_menu` VALUES (2, 48, '2022-09-08 05:34:45', '2022-09-08 05:34:45');
INSERT INTO `admin_role_menu` VALUES (3, 18, '2022-09-08 08:02:10', '2022-09-08 08:02:10');
INSERT INTO `admin_role_menu` VALUES (3, 20, '2022-09-08 05:40:51', '2022-09-08 05:40:51');
INSERT INTO `admin_role_menu` VALUES (3, 21, '2022-09-08 05:40:51', '2022-09-08 05:40:51');
INSERT INTO `admin_role_menu` VALUES (3, 22, '2022-09-08 08:02:10', '2022-09-08 08:02:10');
INSERT INTO `admin_role_menu` VALUES (3, 24, '2022-09-08 05:40:51', '2022-09-08 05:40:51');
INSERT INTO `admin_role_menu` VALUES (3, 31, '2022-09-08 05:40:51', '2022-09-08 05:40:51');
INSERT INTO `admin_role_menu` VALUES (3, 36, '2022-09-08 08:02:10', '2022-09-08 08:02:10');
INSERT INTO `admin_role_menu` VALUES (3, 40, '2022-09-08 05:40:51', '2022-09-08 05:40:51');
INSERT INTO `admin_role_menu` VALUES (3, 41, '2022-09-08 05:40:51', '2022-09-08 05:40:51');
INSERT INTO `admin_role_menu` VALUES (4, 1, '2022-09-08 05:40:01', '2022-09-08 05:40:01');
INSERT INTO `admin_role_menu` VALUES (4, 36, '2022-09-08 08:01:43', '2022-09-08 08:01:43');
INSERT INTO `admin_role_menu` VALUES (4, 38, '2022-09-08 05:40:01', '2022-09-08 05:40:01');
INSERT INTO `admin_role_menu` VALUES (4, 45, '2022-09-08 05:40:01', '2022-09-08 05:40:01');
INSERT INTO `admin_role_menu` VALUES (5, 1, '2022-09-08 05:39:25', '2022-09-08 05:39:25');
INSERT INTO `admin_role_menu` VALUES (5, 11, '2022-09-08 05:39:25', '2022-09-08 05:39:25');
INSERT INTO `admin_role_menu` VALUES (5, 13, '2022-09-08 05:39:25', '2022-09-08 05:39:25');
INSERT INTO `admin_role_menu` VALUES (5, 14, '2022-09-08 06:02:31', '2022-09-08 06:02:31');
INSERT INTO `admin_role_menu` VALUES (5, 16, '2022-09-08 05:39:25', '2022-09-08 05:39:25');
INSERT INTO `admin_role_menu` VALUES (5, 18, '2022-09-08 05:39:25', '2022-09-08 05:39:25');
INSERT INTO `admin_role_menu` VALUES (5, 19, '2022-09-08 05:39:25', '2022-09-08 05:39:25');
INSERT INTO `admin_role_menu` VALUES (5, 25, '2022-09-08 05:39:25', '2022-09-08 05:39:25');
INSERT INTO `admin_role_menu` VALUES (5, 27, '2022-09-08 05:39:25', '2022-09-08 05:39:25');
INSERT INTO `admin_role_menu` VALUES (5, 48, '2022-09-08 05:39:25', '2022-09-08 05:39:25');
INSERT INTO `admin_role_menu` VALUES (6, 1, '2022-09-08 08:00:45', '2022-09-08 08:00:45');
INSERT INTO `admin_role_menu` VALUES (6, 13, '2022-09-08 05:38:16', '2022-09-08 05:38:16');
INSERT INTO `admin_role_menu` VALUES (6, 14, '2022-09-08 08:00:45', '2022-09-08 08:00:45');
INSERT INTO `admin_role_menu` VALUES (6, 16, '2022-09-08 05:38:16', '2022-09-08 05:38:16');
INSERT INTO `admin_role_menu` VALUES (6, 22, '2022-09-08 08:00:45', '2022-09-08 08:00:45');
INSERT INTO `admin_role_menu` VALUES (6, 23, '2022-09-08 05:38:16', '2022-09-08 05:38:16');
INSERT INTO `admin_role_menu` VALUES (6, 25, '2022-09-08 05:38:16', '2022-09-08 05:38:16');

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_role_permissions_role_id_permission_id_unique`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 2, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_permissions` VALUES (1, 3, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_permissions` VALUES (1, 4, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_permissions` VALUES (1, 5, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_permissions` VALUES (1, 6, '2022-09-08 05:25:29', '2022-09-08 05:25:29');
INSERT INTO `admin_role_permissions` VALUES (1, 7, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 8, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 9, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 10, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 11, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 12, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 13, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 14, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 15, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 16, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 17, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 18, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 19, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 20, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 21, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 22, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 23, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 24, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 25, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 26, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 27, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 28, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 29, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 30, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 31, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 32, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 33, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 34, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 35, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 36, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (1, 37, '2022-09-08 07:15:59', '2022-09-08 07:15:59');
INSERT INTO `admin_role_permissions` VALUES (2, 10, '2022-09-08 07:50:28', '2022-09-08 07:50:28');
INSERT INTO `admin_role_permissions` VALUES (2, 15, '2022-09-08 07:50:28', '2022-09-08 07:50:28');
INSERT INTO `admin_role_permissions` VALUES (2, 16, '2022-09-08 07:50:28', '2022-09-08 07:50:28');
INSERT INTO `admin_role_permissions` VALUES (2, 17, '2022-09-08 07:50:28', '2022-09-08 07:50:28');
INSERT INTO `admin_role_permissions` VALUES (2, 19, '2022-09-08 07:50:28', '2022-09-08 07:50:28');
INSERT INTO `admin_role_permissions` VALUES (2, 20, '2022-09-08 07:50:28', '2022-09-08 07:50:28');
INSERT INTO `admin_role_permissions` VALUES (3, 8, '2022-09-08 07:56:45', '2022-09-08 07:56:45');
INSERT INTO `admin_role_permissions` VALUES (3, 28, '2022-09-08 07:56:45', '2022-09-08 07:56:45');
INSERT INTO `admin_role_permissions` VALUES (3, 29, '2022-09-08 07:56:45', '2022-09-08 07:56:45');
INSERT INTO `admin_role_permissions` VALUES (3, 33, '2022-09-08 07:56:45', '2022-09-08 07:56:45');
INSERT INTO `admin_role_permissions` VALUES (4, 22, '2022-09-08 07:57:16', '2022-09-08 07:57:16');
INSERT INTO `admin_role_permissions` VALUES (4, 26, '2022-09-08 07:57:16', '2022-09-08 07:57:16');
INSERT INTO `admin_role_permissions` VALUES (5, 7, '2022-09-08 07:11:25', '2022-09-08 07:11:25');
INSERT INTO `admin_role_permissions` VALUES (5, 12, '2022-09-08 07:11:25', '2022-09-08 07:11:25');
INSERT INTO `admin_role_permissions` VALUES (5, 15, '2022-09-08 07:11:25', '2022-09-08 07:11:25');
INSERT INTO `admin_role_permissions` VALUES (5, 16, '2022-09-08 07:11:25', '2022-09-08 07:11:25');
INSERT INTO `admin_role_permissions` VALUES (5, 17, '2022-09-08 07:11:25', '2022-09-08 07:11:25');
INSERT INTO `admin_role_permissions` VALUES (5, 19, '2022-09-08 07:11:25', '2022-09-08 07:11:25');
INSERT INTO `admin_role_permissions` VALUES (5, 20, '2022-09-08 07:11:25', '2022-09-08 07:11:25');
INSERT INTO `admin_role_permissions` VALUES (6, 16, '2022-09-08 07:58:27', '2022-09-08 07:58:27');
INSERT INTO `admin_role_permissions` VALUES (6, 17, '2022-09-08 07:58:27', '2022-09-08 07:58:27');
INSERT INTO `admin_role_permissions` VALUES (6, 19, '2022-09-08 07:58:27', '2022-09-08 07:58:27');
INSERT INTO `admin_role_permissions` VALUES (6, 32, '2022-09-08 07:58:27', '2022-09-08 07:58:27');

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_role_users_role_id_user_id_unique`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, '2021-01-26 03:40:34', '2021-01-26 03:40:34');
INSERT INTO `admin_role_users` VALUES (2, 2, '2022-09-08 05:47:03', '2022-09-08 05:47:03');
INSERT INTO `admin_role_users` VALUES (5, 3, '2022-09-08 06:01:55', '2022-09-08 06:01:55');
INSERT INTO `admin_role_users` VALUES (6, 4, '2022-09-08 07:59:38', '2022-09-08 07:59:38');

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, '超级管理员', 'administrator', '2021-01-26 03:40:33', '2022-09-08 05:25:29');
INSERT INTO `admin_roles` VALUES (2, '编辑', 'edit', '2022-09-08 05:26:38', '2022-09-08 05:28:08');
INSERT INTO `admin_roles` VALUES (3, '商务', 'business', '2022-09-08 05:27:59', '2022-09-08 05:27:59');
INSERT INTO `admin_roles` VALUES (4, '商家', 'enterprise', '2022-09-08 05:29:59', '2022-09-08 05:29:59');
INSERT INTO `admin_roles` VALUES (5, '运营', 'active', '2022-09-08 05:32:05', '2022-09-08 05:32:05');
INSERT INTO `admin_roles` VALUES (6, '审核员', 'auditor', '2022-09-08 05:38:16', '2022-09-08 07:59:03');

-- ----------------------------
-- Table structure for admin_settings
-- ----------------------------
DROP TABLE IF EXISTS `admin_settings`;
CREATE TABLE `admin_settings`  (
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`slug`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_settings
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$BXQRLfGBUrQcq4XRYx9SAe..KmMyNqa6acUWFY.viIQSFxy6Pe8se', '超级管理员', NULL, 'JgaFEMdceHxG3u7y1TVTGvr7jZVTLwfiChMxq6dxKeugk12A7xdlK2VeLDRM', '2021-01-26 03:40:33', '2022-09-09 00:57:04');
INSERT INTO `admin_users` VALUES (2, 'editor1', '$2y$10$RHpHtX5Z3n0q61euraXwfezh0uQh1nS5IEh4QZPS7WO2vFLz3TwSm', '编辑人员1', NULL, 'tk0p1M402K49nU6R0jBXiPhE4Z9VEDTC6bP3K3ikeFJ3q7uZKUxJiHXfDpIT', '2022-09-08 05:47:03', '2022-09-08 07:49:14');
INSERT INTO `admin_users` VALUES (3, 'active1', '$2y$10$LWPVeizOwCf1V6Yr1ECVy.vgFs226QSpvQ.SBwxY2UW2.rt3srP9y', '运营人员1', NULL, '7t15w6uHX5caiw2BnQZEc6tJYww7l59oaymelt9bXfnN2UXHeAwcMKHH7Rcg', '2022-09-08 06:01:55', '2022-09-08 07:49:21');
INSERT INTO `admin_users` VALUES (4, 'auditor1', '$2y$10$KGdUwOPhm5OrXsOp9p9/.OiBVx0px/kIMEuTF5rKgwHlnbO8MWtPG', '审核员1', NULL, NULL, '2022-09-08 07:59:38', '2022-09-08 07:59:38');

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE INDEX `cache_key_unique`(`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for crontab
-- ----------------------------
DROP TABLE IF EXISTS `crontab`;
CREATE TABLE `crontab`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型',
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `schedule` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cron表达式',
  `sleep` tinyint(4) NOT NULL DEFAULT 0 COMMENT '延迟秒数执行',
  `maximums` int(11) NOT NULL DEFAULT 0 COMMENT '最大执行次数 0为不限',
  `executes` int(11) NULL DEFAULT 0 COMMENT '已经执行的次数',
  `timeout` int(11) NULL DEFAULT 0 COMMENT '超时时间(秒)',
  `begin_at` datetime(0) NOT NULL COMMENT '开始时间',
  `end_at` datetime(0) NOT NULL COMMENT '结束时间',
  `execute_at` datetime(0) NULL DEFAULT NULL COMMENT '最后执行时间',
  `weigh` int(11) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` enum('completed','expired','disable','normal') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crontab
-- ----------------------------

-- ----------------------------
-- Table structure for crontab_log
-- ----------------------------
DROP TABLE IF EXISTS `crontab_log`;
CREATE TABLE `crontab_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型',
  `cid` int(11) NOT NULL COMMENT '任务的ID',
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `remark` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL COMMENT '状态 0:失败 1:成功',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crontab_log
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_09_07_090635_create_admin_settings_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_09_22_015815_create_admin_extensions_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_11_01_083237_update_admin_menu_table', 1);
INSERT INTO `migrations` VALUES (8, '2021_02_03_074022_create_cache_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for runoob_tbl
-- ----------------------------
DROP TABLE IF EXISTS `runoob_tbl`;
CREATE TABLE `runoob_tbl`  (
  `runoob_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `runoob_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `runoob_author` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `submission_date` date NULL DEFAULT NULL,
  `test_v` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qinghang_test` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qinghang_test2` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`runoob_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of runoob_tbl
-- ----------------------------
INSERT INTO `runoob_tbl` VALUES (1, '2', '3', '2021-05-19', '5', '', '');
INSERT INTO `runoob_tbl` VALUES (3, '2', '2', '2021-05-12', '4', '', '');

-- ----------------------------
-- Table structure for user_id
-- ----------------------------
DROP TABLE IF EXISTS `user_id`;
CREATE TABLE `user_id`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  `contact_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式',
  `identity_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份信息证明图片',
  `is_examine` tinyint(1) NOT NULL DEFAULT 0 COMMENT '审核状态(0待审核，1通过，2驳回)',
  `overrule_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '驳回原因',
  `overrule_is_read` tinyint(1) NOT NULL DEFAULT 0 COMMENT '驳回用户是否已读(0未读，1已读)',
  `authentication_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0正常，1用户取消认证，2管理员取消认证)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户认证表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_id
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for wx_activity
-- ----------------------------
DROP TABLE IF EXISTS `wx_activity`;
CREATE TABLE `wx_activity`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '介绍',
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `target_type` tinyint(4) NOT NULL COMMENT '跳转类型',
  `target_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '跳转id',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_activity
-- ----------------------------

-- ----------------------------
-- Table structure for wx_attachment
-- ----------------------------
DROP TABLE IF EXISTS `wx_attachment`;
CREATE TABLE `wx_attachment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store_type` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态（0: 待使用 1：已使用 2:已清理）',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_0`(`domain`, `path`) USING BTREE,
  INDEX `index_1`(`user_id`) USING BTREE,
  INDEX `index_2`(`state`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2132 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_attachment
-- ----------------------------
INSERT INTO `wx_attachment` VALUES (1969, 0, 'https://img.mini.chongyeapp.com', '2022/08/24/35706ce59314d615d29148c7749abb5a.jpg', 'cosv5', 1, '2022-08-24 02:58:23', '2022-08-24 02:58:23');
INSERT INTO `wx_attachment` VALUES (1970, 0, 'https://img.mini.chongyeapp.com', '2022/08/27/26a35e40f2931f71d8c47b2231c6a178.jpg', 'cosv5', 1, '2022-08-27 07:10:31', '2022-08-27 07:10:31');
INSERT INTO `wx_attachment` VALUES (1971, 0, 'https://img.mini.chongyeapp.com', '2022/08/27/3383ce37a210ba7bcc48a09ddabeb988.jpg', 'cosv5', 1, '2022-08-27 07:10:58', '2022-08-27 07:10:58');
INSERT INTO `wx_attachment` VALUES (1972, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/811d8c4fb70a90803cac67caad0334db.png', 'cosv5', 1, '2022-09-02 00:42:08', '2022-09-02 00:42:08');
INSERT INTO `wx_attachment` VALUES (1973, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/53cf1c6737cb77c9e7554e94e3f2484b.jpg', 'cosv5', 1, '2022-09-02 00:47:40', '2022-09-02 00:47:40');
INSERT INTO `wx_attachment` VALUES (1974, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/a5c70b213ce2e54c84c0196a1c55d5a1.jpg', 'cosv5', 1, '2022-09-02 00:48:42', '2022-09-02 00:48:42');
INSERT INTO `wx_attachment` VALUES (1975, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/7b5912c58af62f337630853ed0dc212f.jpg', 'cosv5', 1, '2022-09-02 02:05:52', '2022-09-02 02:05:52');
INSERT INTO `wx_attachment` VALUES (1976, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/45053ab2c1b06c6ffe7183650eec43cf.png', 'cosv5', 1, '2022-09-02 02:07:14', '2022-09-02 02:07:14');
INSERT INTO `wx_attachment` VALUES (1977, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/0c43a4da40b99bcdffeedce6e9941a94.png', 'cosv5', 1, '2022-09-02 02:07:22', '2022-09-02 02:07:22');
INSERT INTO `wx_attachment` VALUES (1978, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/baeaf4d750b16690d76273cd3a78abaa.jpg', 'cosv5', 1, '2022-09-02 02:09:17', '2022-09-02 02:09:17');
INSERT INTO `wx_attachment` VALUES (1979, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/600e3e7c80fbf81db648e9b4f8459d16.jpg', 'cosv5', 1, '2022-09-02 02:10:09', '2022-09-02 02:10:09');
INSERT INTO `wx_attachment` VALUES (1980, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/28ea34e27428fffabaef5252a452c39f.jpg', 'cosv5', 1, '2022-09-02 02:13:16', '2022-09-02 02:13:16');
INSERT INTO `wx_attachment` VALUES (1981, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/f4f2dbcb44a5fc6e39b7fc0fcab8835b.jpg', 'cosv5', 1, '2022-09-02 02:13:24', '2022-09-02 02:13:24');
INSERT INTO `wx_attachment` VALUES (1982, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/172d212c09cdf37606cf704d51e9ef65.jpg', 'cosv5', 1, '2022-09-02 02:17:40', '2022-09-02 02:17:40');
INSERT INTO `wx_attachment` VALUES (1983, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/532d1adfa0c65a65ba97e3fd30c5bc41.jpg', 'cosv5', 1, '2022-09-02 02:17:46', '2022-09-02 02:17:46');
INSERT INTO `wx_attachment` VALUES (1984, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/c553227258f03c97d81ccff8db7b528c.jpg', 'cosv5', 1, '2022-09-02 02:23:19', '2022-09-02 02:23:19');
INSERT INTO `wx_attachment` VALUES (1985, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/cbb064aa323395fe6fd58ef00825bd7f.jpg', 'cosv5', 1, '2022-09-02 02:23:31', '2022-09-02 02:23:31');
INSERT INTO `wx_attachment` VALUES (1986, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/98ee94c222300cd7e2bf0bc86e49df50.jpg', 'cosv5', 1, '2022-09-02 02:25:58', '2022-09-02 02:25:58');
INSERT INTO `wx_attachment` VALUES (1987, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/c593ca87835445bc7fb17857ddbe6492.jpg', 'cosv5', 1, '2022-09-02 02:26:05', '2022-09-02 02:26:05');
INSERT INTO `wx_attachment` VALUES (1988, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/5820d5b2ccf5b24d4778bb2f1120ad0c.jpg', 'cosv5', 1, '2022-09-02 02:29:38', '2022-09-02 02:29:38');
INSERT INTO `wx_attachment` VALUES (1989, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/3740e35660d02e7e4d0ec4f8be496ead.jpg', 'cosv5', 1, '2022-09-02 02:29:44', '2022-09-02 02:29:44');
INSERT INTO `wx_attachment` VALUES (1990, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/d1032254bbffb7d7cfd01eb87b3381c0.jpg', 'cosv5', 1, '2022-09-02 05:46:11', '2022-09-02 05:46:11');
INSERT INTO `wx_attachment` VALUES (1991, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/c529953a74403c80b00a91b623425cca.jpg', 'cosv5', 1, '2022-09-02 05:46:18', '2022-09-02 05:46:18');
INSERT INTO `wx_attachment` VALUES (1992, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/37b90f07ee9120a9611a241ab746693d.jpg', 'cosv5', 1, '2022-09-02 05:49:02', '2022-09-02 05:49:02');
INSERT INTO `wx_attachment` VALUES (1993, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/e6c3ba12916828cafceed1f8e2ebc4f6.jpg', 'cosv5', 1, '2022-09-02 05:49:09', '2022-09-02 05:49:09');
INSERT INTO `wx_attachment` VALUES (1994, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/943757de8944b16fc6217a7601f304f8.jpg', 'cosv5', 1, '2022-09-02 05:51:59', '2022-09-02 05:51:59');
INSERT INTO `wx_attachment` VALUES (1995, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/f78595be19b75b5e8c3bf14b48c4f114.jpg', 'cosv5', 1, '2022-09-02 05:52:05', '2022-09-02 05:52:05');
INSERT INTO `wx_attachment` VALUES (1996, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/64b442700367881d35d337302c98f458.jpg', 'cosv5', 1, '2022-09-02 05:53:31', '2022-09-02 05:53:31');
INSERT INTO `wx_attachment` VALUES (1997, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/89d519bf4465afea71c4b702fbfca096.jpg', 'cosv5', 1, '2022-09-02 05:53:38', '2022-09-02 05:53:38');
INSERT INTO `wx_attachment` VALUES (1998, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/90fcb79141055b1bd1e7544df3521a1f.jpg', 'cosv5', 1, '2022-09-02 05:54:54', '2022-09-02 05:54:54');
INSERT INTO `wx_attachment` VALUES (1999, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/0c9917b6d596714505c361c21791eb48.jpg', 'cosv5', 1, '2022-09-02 05:55:00', '2022-09-02 05:55:00');
INSERT INTO `wx_attachment` VALUES (2000, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/e25391f0c16351c7cbfe4bdd51bb782a.png', 'cosv5', 1, '2022-09-02 13:49:18', '2022-09-02 13:49:18');
INSERT INTO `wx_attachment` VALUES (2001, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/3c6bd5adb3fdc517de7a8d4c80eb4586.png', 'cosv5', 1, '2022-09-02 13:50:01', '2022-09-02 13:50:01');
INSERT INTO `wx_attachment` VALUES (2002, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/bde9d21e1edd189896c231ebdeac9b6c.png', 'cosv5', 1, '2022-09-02 13:51:08', '2022-09-02 13:51:08');
INSERT INTO `wx_attachment` VALUES (2003, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/b9b9577104f31801d9a0e42a744aaa6f.png', 'cosv5', 1, '2022-09-02 13:53:00', '2022-09-02 13:53:00');
INSERT INTO `wx_attachment` VALUES (2004, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/aafe453016b1cf45f0bd393b01958a87.png', 'cosv5', 1, '2022-09-02 13:54:20', '2022-09-02 13:54:20');
INSERT INTO `wx_attachment` VALUES (2005, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/1aab38a386fa377e9a4a5c4386bcac5c.png', 'cosv5', 1, '2022-09-02 13:54:56', '2022-09-02 13:54:56');
INSERT INTO `wx_attachment` VALUES (2006, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/abfa71859e35995d7174200fc61d87f7.png', 'cosv5', 1, '2022-09-02 13:56:15', '2022-09-02 13:56:15');
INSERT INTO `wx_attachment` VALUES (2007, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/0a39cb666273d176d86f4e9d1bc41972.png', 'cosv5', 1, '2022-09-02 13:56:58', '2022-09-02 13:56:58');
INSERT INTO `wx_attachment` VALUES (2008, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/cde7e08249511d7dbfe205cae34dfe21.png', 'cosv5', 1, '2022-09-02 13:57:37', '2022-09-02 13:57:37');
INSERT INTO `wx_attachment` VALUES (2009, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/0aa263bd654355f6aedc1ed03c0a268a.png', 'cosv5', 1, '2022-09-02 13:59:54', '2022-09-02 13:59:54');
INSERT INTO `wx_attachment` VALUES (2010, 0, 'https://img.mini.chongyeapp.com', '2022/09/02/2501d9f642b753289c17c0c0a681da0d.png', 'cosv5', 1, '2022-09-02 14:00:39', '2022-09-02 14:00:39');
INSERT INTO `wx_attachment` VALUES (2011, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/86dbce6a1b55f8064f8367de31bebcc0.jpg', 'cosv5', 1, '2022-09-03 01:07:31', '2022-09-03 01:07:31');
INSERT INTO `wx_attachment` VALUES (2012, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/cd0bbb317c3be55881a37f02e0d28312.jpg', 'cosv5', 1, '2022-09-03 01:10:33', '2022-09-03 01:10:33');
INSERT INTO `wx_attachment` VALUES (2013, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/f42fb41ce50de788c9386200b7ac3eea.jpg', 'cosv5', 1, '2022-09-03 01:10:34', '2022-09-03 01:10:34');
INSERT INTO `wx_attachment` VALUES (2014, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/4c857ed0242b81b176e1a7e8a9225bff.jpg', 'cosv5', 1, '2022-09-03 01:10:34', '2022-09-03 01:10:34');
INSERT INTO `wx_attachment` VALUES (2015, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/8db2e0f45a8ffbd3e50972f8a34e50de.jpg', 'cosv5', 1, '2022-09-03 01:10:34', '2022-09-03 01:10:34');
INSERT INTO `wx_attachment` VALUES (2016, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/06d9ca6e57e3c5c99f5a0c471133a445.jpg', 'cosv5', 1, '2022-09-03 01:10:34', '2022-09-03 01:10:34');
INSERT INTO `wx_attachment` VALUES (2017, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/33c2096a23d52a1dcdbd7add66df5cb4.jpg', 'cosv5', 1, '2022-09-03 01:10:34', '2022-09-03 01:10:34');
INSERT INTO `wx_attachment` VALUES (2018, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/41bb6c914635396e82328b473ac71fd5.jpg', 'cosv5', 1, '2022-09-03 01:23:03', '2022-09-03 01:23:03');
INSERT INTO `wx_attachment` VALUES (2019, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/7e70aec509ce2bc36b73f089191130de.jpg', 'cosv5', 1, '2022-09-03 01:23:06', '2022-09-03 01:23:06');
INSERT INTO `wx_attachment` VALUES (2020, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/cbf1f5a5e97e0b96db0bda76bb8976f2.jpg', 'cosv5', 1, '2022-09-03 01:25:51', '2022-09-03 01:25:51');
INSERT INTO `wx_attachment` VALUES (2021, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/c963476eaab80bd8de32e9d82aed5521.jpg', 'cosv5', 1, '2022-09-03 01:25:57', '2022-09-03 01:25:57');
INSERT INTO `wx_attachment` VALUES (2022, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/c793b5ca4a74365ab4670a87ec207c9d.jpg', 'cosv5', 1, '2022-09-03 01:33:54', '2022-09-03 01:33:54');
INSERT INTO `wx_attachment` VALUES (2023, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/c8b488b3f0c973cd9d09e3721adb47d9.jpg', 'cosv5', 1, '2022-09-03 01:34:14', '2022-09-03 01:34:14');
INSERT INTO `wx_attachment` VALUES (2024, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/51e9fca442297c1a395716bf75fc9721.jpg', 'cosv5', 1, '2022-09-03 01:35:21', '2022-09-03 01:35:21');
INSERT INTO `wx_attachment` VALUES (2025, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/27c9a0fbe83597b3587f478590706f6e.jpg', 'cosv5', 1, '2022-09-03 01:35:42', '2022-09-03 01:35:42');
INSERT INTO `wx_attachment` VALUES (2026, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/e1ffa4edfab2c0f55d213c590131c402.jpg', 'cosv5', 1, '2022-09-03 01:36:34', '2022-09-03 01:36:34');
INSERT INTO `wx_attachment` VALUES (2027, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/fdead8fa267263f76e533f093eebb3ab.jpg', 'cosv5', 1, '2022-09-03 01:36:59', '2022-09-03 01:36:59');
INSERT INTO `wx_attachment` VALUES (2028, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/0e18c3d274846c483481663f1f791dd8.jpg', 'cosv5', 1, '2022-09-03 01:38:48', '2022-09-03 01:38:48');
INSERT INTO `wx_attachment` VALUES (2029, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/4e59fab6be7d11b4c37894b9dbc38c39.jpg', 'cosv5', 1, '2022-09-03 01:39:08', '2022-09-03 01:39:08');
INSERT INTO `wx_attachment` VALUES (2030, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/c1ad6fbca42ad5fd9785878aa94d737b.jpg', 'cosv5', 1, '2022-09-03 01:39:29', '2022-09-03 01:39:29');
INSERT INTO `wx_attachment` VALUES (2031, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/6fd5fe2feaa49377a241d16f3c12e3c5.jpg', 'cosv5', 1, '2022-09-03 01:40:09', '2022-09-03 01:40:09');
INSERT INTO `wx_attachment` VALUES (2032, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/1f9338a7ba509078cf342b8b4b24bbea.jpg', 'cosv5', 1, '2022-09-03 01:40:49', '2022-09-03 01:40:49');
INSERT INTO `wx_attachment` VALUES (2033, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/cff4f7eb9a85d4c103e37c7edcf198c8.jpg', 'cosv5', 1, '2022-09-03 01:41:17', '2022-09-03 01:41:17');
INSERT INTO `wx_attachment` VALUES (2034, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/208be6dd1876f19320abcd71001fba4a.jpg', 'cosv5', 1, '2022-09-03 01:41:36', '2022-09-03 01:41:36');
INSERT INTO `wx_attachment` VALUES (2035, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/e9faf34e7a5a36ba40c557470485a50b.jpg', 'cosv5', 1, '2022-09-03 01:42:01', '2022-09-03 01:42:01');
INSERT INTO `wx_attachment` VALUES (2036, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/974e309a15f431db29091d65100e59ed.jpg', 'cosv5', 1, '2022-09-03 01:42:42', '2022-09-03 01:42:42');
INSERT INTO `wx_attachment` VALUES (2037, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/368c74eeed1653876485ac5fe5cb3007.jpg', 'cosv5', 1, '2022-09-03 01:43:14', '2022-09-03 01:43:14');
INSERT INTO `wx_attachment` VALUES (2038, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/79707bb365e802186c200781f4de9d30.jpg', 'cosv5', 1, '2022-09-03 01:43:41', '2022-09-03 01:43:41');
INSERT INTO `wx_attachment` VALUES (2039, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/d48e38b6cb05e9703276fbdcb895efb0.jpg', 'cosv5', 1, '2022-09-03 01:44:11', '2022-09-03 01:44:11');
INSERT INTO `wx_attachment` VALUES (2040, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/07dac3e3c93750b71fd96ff3b309f7e0.jpg', 'cosv5', 1, '2022-09-03 01:45:01', '2022-09-03 01:45:01');
INSERT INTO `wx_attachment` VALUES (2041, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/c875408a2ace24b2d1a3fab0e4260ee0.jpg', 'cosv5', 1, '2022-09-03 11:12:31', '2022-09-03 11:12:31');
INSERT INTO `wx_attachment` VALUES (2042, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/f1f8169a719a80d8fc29cd1bd396ef5b.jpg', 'cosv5', 1, '2022-09-03 11:12:54', '2022-09-03 11:12:54');
INSERT INTO `wx_attachment` VALUES (2043, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/fd2dc8f25f34207e67a822ea54b1a50a.jpg', 'cosv5', 1, '2022-09-03 11:12:54', '2022-09-03 11:12:54');
INSERT INTO `wx_attachment` VALUES (2044, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/c4f1b58e27814d584e166f696d2ac7df.jpg', 'cosv5', 1, '2022-09-03 11:12:54', '2022-09-03 11:12:54');
INSERT INTO `wx_attachment` VALUES (2045, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/8ffd4b6a26c2891282de625c17336812.jpg', 'cosv5', 1, '2022-09-03 11:12:54', '2022-09-03 11:12:54');
INSERT INTO `wx_attachment` VALUES (2046, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/da5b159bb4214520dc3d17156a3220c6.jpg', 'cosv5', 1, '2022-09-03 11:12:54', '2022-09-03 11:12:54');
INSERT INTO `wx_attachment` VALUES (2047, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/1b987cb36f6b10714829bcc022a2064c.jpg', 'cosv5', 1, '2022-09-03 13:44:33', '2022-09-03 13:44:33');
INSERT INTO `wx_attachment` VALUES (2048, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/3c75ca6a05276a5a4184f9f02631995e.jpg', 'cosv5', 1, '2022-09-03 13:44:57', '2022-09-03 13:44:57');
INSERT INTO `wx_attachment` VALUES (2049, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/59e14228e27d83401f52e2ecbdf7c640.jpg', 'cosv5', 1, '2022-09-03 13:45:10', '2022-09-03 13:45:10');
INSERT INTO `wx_attachment` VALUES (2050, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/5654f18c40dcd18195d73df18ac6c423.jpg', 'cosv5', 1, '2022-09-03 13:45:37', '2022-09-03 13:45:37');
INSERT INTO `wx_attachment` VALUES (2051, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/7aa6c1dd7d0422ed1b0d2d4d4c3ec5f1.jpg', 'cosv5', 1, '2022-09-03 13:46:21', '2022-09-03 13:46:21');
INSERT INTO `wx_attachment` VALUES (2052, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/de9a4a1462f3a7647c5953d5600a0ac1.jpg', 'cosv5', 1, '2022-09-03 13:46:39', '2022-09-03 13:46:39');
INSERT INTO `wx_attachment` VALUES (2053, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/69f3f578d5b9d8a4badce22c5788d7b3.jpg', 'cosv5', 1, '2022-09-03 13:46:59', '2022-09-03 13:46:59');
INSERT INTO `wx_attachment` VALUES (2054, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/adc6ea193258fdf1d71aacbac30c693e.jpg', 'cosv5', 1, '2022-09-03 13:47:17', '2022-09-03 13:47:17');
INSERT INTO `wx_attachment` VALUES (2055, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/96af99d4013372cba00bfb74e0565973.jpg', 'cosv5', 1, '2022-09-03 13:47:37', '2022-09-03 13:47:37');
INSERT INTO `wx_attachment` VALUES (2056, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/65e6700b350f4dd771bc29bf1c57ead1.jpg', 'cosv5', 1, '2022-09-03 13:48:02', '2022-09-03 13:48:02');
INSERT INTO `wx_attachment` VALUES (2057, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/b3d19b36382c260b58983b408ec701a9.jpg', 'cosv5', 1, '2022-09-03 13:48:15', '2022-09-03 13:48:15');
INSERT INTO `wx_attachment` VALUES (2058, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/c2d42213d47e296a4243c0caa4034da5.jpg', 'cosv5', 1, '2022-09-03 13:49:03', '2022-09-03 13:49:03');
INSERT INTO `wx_attachment` VALUES (2059, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/87586c766067587a4aa1baf530756bff.jpg', 'cosv5', 1, '2022-09-03 13:49:19', '2022-09-03 13:49:19');
INSERT INTO `wx_attachment` VALUES (2060, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/eb686f79548153589de7ff8b8dd0431c.jpg', 'cosv5', 1, '2022-09-03 13:49:40', '2022-09-03 13:49:40');
INSERT INTO `wx_attachment` VALUES (2061, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/1df5ef5dbcd29fc33a3606eac2fb36db.jpg', 'cosv5', 1, '2022-09-03 13:49:52', '2022-09-03 13:49:52');
INSERT INTO `wx_attachment` VALUES (2062, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/21f968143ce8eb234c1cfa61479c0e2c.jpg', 'cosv5', 1, '2022-09-03 13:50:15', '2022-09-03 13:50:15');
INSERT INTO `wx_attachment` VALUES (2063, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/c4009284af7bef5d6425ab7b00699625.jpg', 'cosv5', 1, '2022-09-03 13:50:27', '2022-09-03 13:50:27');
INSERT INTO `wx_attachment` VALUES (2064, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/6a51dc8e5853a561631f44b6037d5924.jpg', 'cosv5', 1, '2022-09-03 13:50:43', '2022-09-03 13:50:43');
INSERT INTO `wx_attachment` VALUES (2065, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/84f1b358af3c8610d49fa7c07d48ea32.jpg', 'cosv5', 1, '2022-09-03 13:51:03', '2022-09-03 13:51:03');
INSERT INTO `wx_attachment` VALUES (2066, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/5cae10a01ed912272da82608dd924afe.jpg', 'cosv5', 1, '2022-09-03 13:51:15', '2022-09-03 13:51:15');
INSERT INTO `wx_attachment` VALUES (2067, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/59b71f856cfe03c09d7ec38c82b859c2.jpg', 'cosv5', 1, '2022-09-03 13:51:24', '2022-09-03 13:51:24');
INSERT INTO `wx_attachment` VALUES (2068, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/91378c172f7739390a88c0755568769f.jpg', 'cosv5', 1, '2022-09-03 13:51:41', '2022-09-03 13:51:41');
INSERT INTO `wx_attachment` VALUES (2069, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/348448b699cbc738a49c15a18b322d6e.jpg', 'cosv5', 1, '2022-09-03 13:51:59', '2022-09-03 13:51:59');
INSERT INTO `wx_attachment` VALUES (2070, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/548aeb56fc0c0140a8f7d80cbc7e77e0.jpg', 'cosv5', 1, '2022-09-03 15:23:27', '2022-09-03 15:23:27');
INSERT INTO `wx_attachment` VALUES (2071, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/811f97335d596167bdae7317c95a5c10.jpg', 'cosv5', 1, '2022-09-03 15:23:41', '2022-09-03 15:23:41');
INSERT INTO `wx_attachment` VALUES (2072, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/1aad1c58d96d830a4f0fc3053bbeb065.jpg', 'cosv5', 1, '2022-09-03 15:23:55', '2022-09-03 15:23:55');
INSERT INTO `wx_attachment` VALUES (2073, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/2fbdf95633ec7602c4a4a014f97270a6.jpg', 'cosv5', 1, '2022-09-03 15:24:13', '2022-09-03 15:24:13');
INSERT INTO `wx_attachment` VALUES (2074, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/cab6ed34683bc2c08202f45ed231f9ce.jpg', 'cosv5', 1, '2022-09-03 15:24:17', '2022-09-03 15:24:17');
INSERT INTO `wx_attachment` VALUES (2075, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/959b4849fb84f4e34b7eca6b9a49c9e6.jpg', 'cosv5', 1, '2022-09-03 15:24:21', '2022-09-03 15:24:21');
INSERT INTO `wx_attachment` VALUES (2076, 0, 'https://img.mini.chongyeapp.com', '2022/09/03/b817d81559a2da4ad72d171c68983b12.jpg', 'cosv5', 1, '2022-09-03 15:25:21', '2022-09-03 15:25:21');
INSERT INTO `wx_attachment` VALUES (2077, 0, 'https://img.mini.chongyeapp.com', '2022/09/04/f00641e0a0c7f210712e6c9d5a9dea05.jpg', 'cosv5', 1, '2022-09-04 02:17:07', '2022-09-04 02:17:07');
INSERT INTO `wx_attachment` VALUES (2078, 0, 'https://img.mini.chongyeapp.com', '2022/09/04/a2c788a9fbe7a1c5c800637a2f7bb474.mp4', 'cosv5', 1, '2022-09-04 03:16:50', '2022-09-04 03:16:50');
INSERT INTO `wx_attachment` VALUES (2079, 0, 'https://img.mini.chongyeapp.com', '2022/09/04/70bd43a61ff58239f095c05df6262d80.png', 'cosv5', 1, '2022-09-04 03:16:51', '2022-09-04 03:16:51');
INSERT INTO `wx_attachment` VALUES (2080, 0, 'https://img.mini.chongyeapp.com', '2022/09/05/34927e078f019e5f3ec217dc1257eaa8.mp4', 'cosv5', 1, '2022-09-05 09:36:57', '2022-09-05 09:36:57');
INSERT INTO `wx_attachment` VALUES (2081, 0, 'https://img.mini.chongyeapp.com', '2022/09/05/38bba2991a78803faac2ac56010dfb59.png', 'cosv5', 1, '2022-09-05 09:36:58', '2022-09-05 09:36:58');
INSERT INTO `wx_attachment` VALUES (2082, 0, 'https://img.mini.chongyeapp.com', '2022/09/05/83e065f07cecfde6a1433136a3b5fe05.mp4', 'cosv5', 1, '2022-09-05 09:38:22', '2022-09-05 09:38:22');
INSERT INTO `wx_attachment` VALUES (2083, 0, 'https://img.mini.chongyeapp.com', '2022/09/05/4ea03307f5bee8c2433b8b441d7a79e7.png', 'cosv5', 1, '2022-09-05 09:38:22', '2022-09-05 09:38:22');
INSERT INTO `wx_attachment` VALUES (2084, 0, 'https://img.mini.chongyeapp.com', '2022/09/07/80403a2127b3dde5f5d1b53f1b93a3e3.jpg', 'cosv5', 1, '2022-09-07 11:22:06', '2022-09-07 11:22:06');
INSERT INTO `wx_attachment` VALUES (2085, 0, 'https://img.mini.chongyeapp.com', '2022/09/07/8ecfe7eddc5acffd834e77ce4a34217f.jpg', 'cosv5', 1, '2022-09-07 11:22:11', '2022-09-07 11:22:11');
INSERT INTO `wx_attachment` VALUES (2086, 0, 'https://img.mini.chongyeapp.com', '2022/09/07/9a1d4798473bc795011ef72a521eb586.mp4', 'cosv5', 1, '2022-09-07 11:22:25', '2022-09-07 11:22:25');
INSERT INTO `wx_attachment` VALUES (2087, 0, 'https://img.mini.chongyeapp.com', '2022/09/07/65a0c4f2fa5855399587a3e6d0e8e147.jpg', 'cosv5', 1, '2022-09-07 11:24:37', '2022-09-07 11:24:37');
INSERT INTO `wx_attachment` VALUES (2088, 0, 'https://img.mini.chongyeapp.com', '2022/09/07/48579cac707818b44b187c06127f4d4b.jpg', 'cosv5', 1, '2022-09-07 11:24:44', '2022-09-07 11:24:44');
INSERT INTO `wx_attachment` VALUES (2089, 0, 'https://img.mini.chongyeapp.com', '2022/09/07/cee30500fd7692a298c43c92e548cd4e.mp4', 'cosv5', 1, '2022-09-07 11:24:55', '2022-09-07 11:24:55');
INSERT INTO `wx_attachment` VALUES (2090, 0, 'https://img.mini.chongyeapp.com', '2022/09/07/db39a89a7a97c8c3ab20732f8a20f1e2.jpg', 'cosv5', 1, '2022-09-07 12:17:42', '2022-09-07 12:17:42');
INSERT INTO `wx_attachment` VALUES (2091, 0, 'https://img.mini.chongyeapp.com', '2022/09/07/4631ba014409dd8499870029c88e393e.jpg', 'cosv5', 1, '2022-09-07 12:18:04', '2022-09-07 12:18:04');
INSERT INTO `wx_attachment` VALUES (2092, 0, 'https://img.mini.chongyeapp.com', '2022/09/07/03ad6457f4f211ad142f79ea1ee7ae91.jpg', 'cosv5', 1, '2022-09-07 12:20:30', '2022-09-07 12:20:30');
INSERT INTO `wx_attachment` VALUES (2093, 0, 'https://img.mini.chongyeapp.com', '2022/09/07/8c5b890df57e4bbf47dc62c1d0b8d122.mp4', 'cosv5', 1, '2022-09-07 12:22:14', '2022-09-07 12:22:14');
INSERT INTO `wx_attachment` VALUES (2094, 0, 'https://img.mini.chongyeapp.com', '2022/09/07/1e56d98f071dabef007421732183aafe.jpg', 'cosv5', 1, '2022-09-07 12:22:30', '2022-09-07 12:22:30');
INSERT INTO `wx_attachment` VALUES (2095, 0, 'https://img.mini.chongyeapp.com', '2022/09/08/abaf29e5c1f1d8b2da6f228da1ed04ce.png', 'cosv5', 1, '2022-09-08 21:52:12', '2022-09-08 21:52:12');
INSERT INTO `wx_attachment` VALUES (2096, 0, 'https://img.mini.chongyeapp.com', '2022/09/08/34227d6bb2a62c5e56d59632c8001a91.jpg', 'cosv5', 1, '2022-09-08 21:52:38', '2022-09-08 21:52:38');
INSERT INTO `wx_attachment` VALUES (2097, 0, 'https://img.mini.chongyeapp.com', '2022/09/09/e62c3e7492c7fd283b115cf95f6f3789.jpg', 'cosv5', 1, '2022-09-09 00:36:54', '2022-09-09 00:36:54');
INSERT INTO `wx_attachment` VALUES (2098, 0, 'https://img.mini.chongyeapp.com', '2022/09/09/d8e0c035c48d520b02e429c503b41d31.jpg', 'cosv5', 1, '2022-09-09 00:37:21', '2022-09-09 00:37:21');
INSERT INTO `wx_attachment` VALUES (2099, 0, 'https://img.mini.chongyeapp.com', '2022/09/09/a4b767ae46dca2658c6e15d58318e883.jpg', 'cosv5', 1, '2022-09-09 00:38:23', '2022-09-09 00:38:23');
INSERT INTO `wx_attachment` VALUES (2100, 0, 'https://img.mini.chongyeapp.com', '2022/09/09/ef0d63eeee85538d32a07cbace1b8204.jpg', 'cosv5', 1, '2022-09-09 00:38:36', '2022-09-09 00:38:36');
INSERT INTO `wx_attachment` VALUES (2101, 0, 'https://img.mini.chongyeapp.com', '2022/09/09/c91155bf69ad33166f283d9a66a2b370.jpg', 'cosv5', 1, '2022-09-09 00:40:56', '2022-09-09 00:40:56');
INSERT INTO `wx_attachment` VALUES (2102, 0, 'https://img.mini.chongyeapp.com', '2022/09/09/e6f3921629b4ddcfc33d755b6f3d0276.jpg', 'cosv5', 1, '2022-09-09 00:50:14', '2022-09-09 00:50:14');
INSERT INTO `wx_attachment` VALUES (2103, 0, 'https://img.mini.chongyeapp.com', '2022/09/09/5deee818e2b63581caaf32ee1ee44514.jpg', 'cosv5', 1, '2022-09-09 00:52:36', '2022-09-09 00:52:36');
INSERT INTO `wx_attachment` VALUES (2104, 0, 'https://img.mini.chongyeapp.com', '2022/09/09/820f90672f0b84e4af9f8371a713a0ff.jpg', 'cosv5', 1, '2022-09-09 02:34:41', '2022-09-09 02:34:41');
INSERT INTO `wx_attachment` VALUES (2105, 0, 'https://img.mini.chongyeapp.com', '2022/09/09/92919cefbbc07065bef6cfe7f387a792.jpg', 'cosv5', 1, '2022-09-09 08:02:53', '2022-09-09 08:02:53');
INSERT INTO `wx_attachment` VALUES (2106, 0, 'https://img.mini.chongyeapp.com', '2022/09/09/a437933acf1efe3038262d3ae479beb2.jpg', 'cosv5', 1, '2022-09-09 08:03:54', '2022-09-09 08:03:54');
INSERT INTO `wx_attachment` VALUES (2107, 0, 'https://img.mini.chongyeapp.com', '2022/09/11/f0f207ec99ff7a7eb0db3342d92624f1.jpg', 'cosv5', 1, '2022-09-11 16:23:46', '2022-09-11 16:23:46');
INSERT INTO `wx_attachment` VALUES (2108, 0, 'https://img.mini.chongyeapp.com', '2022/09/14/49d451faa52a878d344241efb7312de7.jpg', 'cosv5', 1, '2022-09-14 12:50:30', '2022-09-14 12:50:30');
INSERT INTO `wx_attachment` VALUES (2109, 0, 'https://img.mini.chongyeapp.com', '2022/09/19/0a7ba9f94fe863724368792cbabaea89.jpg', 'cosv5', 1, '2022-09-19 18:07:58', '2022-09-19 18:07:58');
INSERT INTO `wx_attachment` VALUES (2110, 0, 'https://img.mini.chongyeapp.com', '2022/09/19/d9e290d2804475ab450e9279eb4ddca0.jpg', 'cosv5', 1, '2022-09-19 18:08:57', '2022-09-19 18:08:57');
INSERT INTO `wx_attachment` VALUES (2111, 0, 'https://img.mini.chongyeapp.com', '2022/09/19/9f69f0b67a4b419c1d38855dc3ca28f4.jpg', 'cosv5', 1, '2022-09-19 18:09:01', '2022-09-19 18:09:01');
INSERT INTO `wx_attachment` VALUES (2112, 0, 'https://img.mini.chongyeapp.com', '2022/09/19/2b873f9973525a7e46cebfbba23621bc.jpg', 'cosv5', 1, '2022-09-19 22:08:35', '2022-09-19 22:08:35');
INSERT INTO `wx_attachment` VALUES (2113, 0, 'https://img.mini.chongyeapp.com', '2022/09/19/e4007680a1594c448fe45ea3538d05b4.jpg', 'cosv5', 1, '2022-09-19 22:09:17', '2022-09-19 22:09:17');
INSERT INTO `wx_attachment` VALUES (2114, 0, 'https://img.mini.chongyeapp.com', '2022/09/20/9ff61bb10d72a7f2ed885859e84338b3.jpg', 'cosv5', 1, '2022-09-20 01:47:28', '2022-09-20 01:47:28');
INSERT INTO `wx_attachment` VALUES (2115, 0, 'https://img.mini.chongyeapp.com', '2022/09/20/11c0b230490e9df9c23a83b7721f5c58.jpg', 'cosv5', 1, '2022-09-20 01:52:03', '2022-09-20 01:52:03');
INSERT INTO `wx_attachment` VALUES (2116, 0, 'https://img.mini.chongyeapp.com', '2022/09/20/f626865769321f6acac925047b1c69b1.jpg', 'cosv5', 1, '2022-09-20 01:52:45', '2022-09-20 01:52:45');
INSERT INTO `wx_attachment` VALUES (2117, 0, 'https://img.mini.chongyeapp.com', '2022/10/03/facad822b384d96630f815d8f4693757.png', 'cosv5', 1, '2022-10-03 02:00:29', '2022-10-03 02:00:29');
INSERT INTO `wx_attachment` VALUES (2118, 0, 'https://img.mini.chongyeapp.com', '2022/10/03/f5cb1279ad9eeae3db7f5840c44e8d4b.png', 'cosv5', 1, '2022-10-03 02:00:56', '2022-10-03 02:00:56');
INSERT INTO `wx_attachment` VALUES (2119, 0, 'https://img.mini.chongyeapp.com', '2022/10/04/621b3b8c55a7174aa1dc59f362d9a834.png', 'cosv5', 1, '2022-10-04 01:28:19', '2022-10-04 01:28:19');
INSERT INTO `wx_attachment` VALUES (2120, 0, 'https://img.mini.chongyeapp.com', '2022/10/09/1640d4744572114eac728de7c5176edb.png', 'cosv5', 1, '2022-10-09 22:28:53', '2022-10-09 22:28:53');
INSERT INTO `wx_attachment` VALUES (2121, 0, 'https://img.mini.chongyeapp.com', '2022/10/09/c4d7e0586c2ec94b3c6f962d0163c40c.png', 'cosv5', 1, '2022-10-09 22:31:53', '2022-10-09 22:31:53');
INSERT INTO `wx_attachment` VALUES (2122, 0, 'https://img.mini.chongyeapp.com', '2022/10/09/40e0fccc856a6b2a544add2b0db687f6.mp4', 'cosv5', 1, '2022-10-09 22:39:18', '2022-10-09 22:39:18');
INSERT INTO `wx_attachment` VALUES (2123, 0, 'https://img.mini.chongyeapp.com', '2022/10/09/0b225bb763d867456538ac269f7af8a6.png', 'cosv5', 1, '2022-10-09 22:39:19', '2022-10-09 22:39:19');
INSERT INTO `wx_attachment` VALUES (2124, 0, 'https://img.mini.chongyeapp.com', '2022/10/10/7d428e48cf6d7c47304e3a95bbac5a66.png', 'cosv5', 1, '2022-10-10 01:22:11', '2022-10-10 01:22:11');
INSERT INTO `wx_attachment` VALUES (2125, 0, 'https://img.mini.chongyeapp.com', '2022/10/10/2f2842d3c0ce3a16812eb953eda39f92.jpg', 'cosv5', 1, '2022-10-10 22:22:44', '2022-10-10 22:22:44');
INSERT INTO `wx_attachment` VALUES (2126, 0, 'https://img.mini.chongyeapp.com', '2022/10/11/3b0a5caa84c62eab1eb90cef8a0698a0.png', 'cosv5', 1, '2022-10-11 00:57:13', '2022-10-11 00:57:13');
INSERT INTO `wx_attachment` VALUES (2127, 0, 'https://img.mini.chongyeapp.com', '2022/10/11/96c1d1b400d99a493dd33ee8f5321cde.png', 'cosv5', 1, '2022-10-11 00:59:24', '2022-10-11 00:59:24');
INSERT INTO `wx_attachment` VALUES (2128, 0, 'https://img.mini.chongyeapp.com', '2022/10/11/345173cbc1b5c9547427a872b26a3a6a.jpg', 'cosv5', 1, '2022-10-11 01:05:03', '2022-10-11 01:05:03');
INSERT INTO `wx_attachment` VALUES (2129, 0, 'https://img.mini.chongyeapp.com', '2022/10/11/7e6c2c0417d99a970526cce56d3242c7.png', 'cosv5', 1, '2022-10-11 01:09:38', '2022-10-11 01:09:38');
INSERT INTO `wx_attachment` VALUES (2130, 0, 'https://img.mini.chongyeapp.com', '2022/10/11/3f4ce2678ff6874587ece135fa69e8ce.png', 'cosv5', 1, '2022-10-11 01:23:47', '2022-10-11 01:23:47');
INSERT INTO `wx_attachment` VALUES (2131, 0, 'https://img.mini.chongyeapp.com', '2022/10/11/cccb7add07d53608711caccb3916bf21.png', 'cosv5', 1, '2022-10-11 01:37:03', '2022-10-11 01:37:03');

-- ----------------------------
-- Table structure for wx_authentication
-- ----------------------------
DROP TABLE IF EXISTS `wx_authentication`;
CREATE TABLE `wx_authentication`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT 0 COMMENT '用户id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '认证名称',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `contact_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '联系方式',
  `identity_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份信息证明图片',
  `overrule_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '驳回原因',
  `authentication_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0审核中，1审核通过，2驳回)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10002 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'wx_circle' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_authentication
-- ----------------------------
INSERT INTO `wx_authentication` VALUES (22, 10000, '官方大老爷', '官方账号', 'white0804', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/19/f0ba1bfcd338c12c1d64a7ed19f21706.png', NULL, 1, NULL, '2021-04-19 06:45:44', '2021-04-19 06:55:50');
INSERT INTO `wx_authentication` VALUES (23, 10001, 'bilibili UP主认证', '一木一叶造景-老李官方账号', 'uid:674289730', 'https://img.mini.chongyeapp.com/2022/09/04/f00641e0a0c7f210712e6c9d5a9dea05.jpg', NULL, 1, NULL, '2022-09-04 02:27:45', '2022-09-04 02:31:04');

-- ----------------------------
-- Table structure for wx_chat
-- ----------------------------
DROP TABLE IF EXISTS `wx_chat`;
CREATE TABLE `wx_chat`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `object_id` int(20) NOT NULL DEFAULT 0 COMMENT '对象ID',
  `chat_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '聊天内容',
  `chat_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '聊天图片',
  `is_read` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态(0未读，1已读)',
  `chat_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态(0正常，1用户删除)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`object_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 234 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户聊天表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_chat
-- ----------------------------
INSERT INTO `wx_chat` VALUES (148, 10000, 10001, '哈喽', '', 1, 1, NULL, '2021-05-12 18:01:34', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (149, 10000, 10001, '', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/12/e06cefc7204174213ae39a7575d4993b.jpg', 1, 1, NULL, '2021-05-12 18:04:10', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (150, 10001, 10000, NULL, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/12/1b44a7eed87d018ca5eb72a996d1eae4.jpg', 1, 1, NULL, '2021-05-12 18:05:27', '2021-06-22 15:38:59');
INSERT INTO `wx_chat` VALUES (151, 10000, 10001, NULL, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/12/05478eb8f3fbd08661c68692c84f10a0.jpg', 1, 1, NULL, '2021-05-12 18:05:51', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (152, 10000, 10001, '嘿嘿😁', '', 1, 1, NULL, '2021-05-12 19:06:24', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (153, 10001, 10000, '哈哈', '', 1, 1, NULL, '2021-05-12 19:08:20', '2021-06-22 15:38:59');
INSERT INTO `wx_chat` VALUES (154, 10000, 10001, '哈喽', '', 1, 1, NULL, '2021-05-12 19:08:25', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (155, 10001, 10000, NULL, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/12/7a71f4901439d67be6906bdfa1a47092.jpg', 1, 1, NULL, '2021-05-12 19:08:42', '2021-06-22 15:38:59');
INSERT INTO `wx_chat` VALUES (156, 10001, 10000, '和', NULL, 1, 1, NULL, '2021-05-12 19:09:15', '2021-06-22 15:38:59');
INSERT INTO `wx_chat` VALUES (157, 10001, 10000, '哈哈哈', NULL, 1, 1, NULL, '2021-05-12 19:09:41', '2021-06-22 15:38:59');
INSERT INTO `wx_chat` VALUES (158, 10000, 10001, '嘿嘿', '', 1, 1, NULL, '2021-05-12 19:09:55', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (161, 10000, 10001, '哈喽', '', 1, 1, NULL, '2021-05-13 13:30:17', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (162, 10000, 10001, '👌', '', 1, 1, NULL, '2021-05-13 13:31:15', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (163, 10000, 10001, NULL, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/13/c3a755b60bfd708c4b919418ffd053ff.jpg', 1, 1, NULL, '2021-05-13 13:48:22', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (165, 10001, 10000, '111', '', 1, 1, NULL, '2021-05-13 17:14:25', '2021-06-22 15:38:59');
INSERT INTO `wx_chat` VALUES (166, 10001, 10000, '哈喽', '', 1, 1, NULL, '2021-05-14 11:21:17', '2021-06-22 15:38:59');
INSERT INTO `wx_chat` VALUES (167, 10000, 10001, '嘿嘿', '', 1, 1, NULL, '2021-05-14 11:43:46', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (168, 10001, 10000, '啊哈', '', 1, 1, NULL, '2021-05-14 11:49:32', '2021-06-22 15:38:59');
INSERT INTO `wx_chat` VALUES (169, 10001, 10000, '哈哈', '', 1, 1, NULL, '2021-05-14 11:50:13', '2021-06-22 15:38:59');
INSERT INTO `wx_chat` VALUES (170, 10000, 10001, '嘿嘿', '', 1, 1, NULL, '2021-05-14 13:33:51', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (171, 10001, 10000, '哈哈哈', '', 1, 1, NULL, '2021-05-14 18:16:55', '2021-06-22 15:38:59');
INSERT INTO `wx_chat` VALUES (172, 10000, 10001, '傻逼', '', 1, 1, NULL, '2021-05-14 18:17:15', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (173, 10001, 10000, NULL, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/14/cb15fc854589dd9d19a7bbcfc9d99023.jpg', 1, 1, NULL, '2021-05-14 18:17:29', '2021-06-22 15:38:59');
INSERT INTO `wx_chat` VALUES (174, 10000, 10001, NULL, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/14/61133cbf9328b743672a95ab36c7304c.gif', 1, 1, NULL, '2021-05-14 18:17:35', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (175, 10000, 10000, '哈喽', '', 1, 1, NULL, '2021-05-15 17:48:37', '2021-07-31 17:52:10');
INSERT INTO `wx_chat` VALUES (176, 10074, 10001, '买了吗', '', 1, 1, NULL, '2021-05-17 12:56:05', '2021-06-09 15:59:47');
INSERT INTO `wx_chat` VALUES (177, 10074, 10001, '开始买了吗', '', 1, 1, NULL, '2021-05-17 12:56:35', '2021-06-09 15:59:47');
INSERT INTO `wx_chat` VALUES (178, 10011, 10001, '哈喽', '', 1, 1, NULL, '2021-05-18 19:29:38', '2021-05-19 11:40:56');
INSERT INTO `wx_chat` VALUES (179, 10026, 10001, '666', '', 1, 0, NULL, '2021-05-18 20:35:48', '2021-06-23 10:59:09');
INSERT INTO `wx_chat` VALUES (180, 10000, 10001, NULL, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/19/4569906a85ad99e9cfc5955d16daa2d6.jpg', 1, 1, NULL, '2021-05-19 10:12:15', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (181, 10001, 10001, '哈喽', '', 1, 0, NULL, '2021-05-19 10:15:18', '2021-05-20 10:32:22');
INSERT INTO `wx_chat` VALUES (182, 10000, 10000, '哈喽', '', 1, 1, NULL, '2021-05-25 14:23:56', '2021-07-31 17:52:10');
INSERT INTO `wx_chat` VALUES (183, 10000, 10000, '嘿嘿', '', 1, 1, NULL, '2021-05-25 14:58:32', '2021-07-31 17:52:10');
INSERT INTO `wx_chat` VALUES (184, 10000, 10000, '😁', '', 1, 1, NULL, '2021-06-01 19:26:56', '2021-07-31 17:52:10');
INSERT INTO `wx_chat` VALUES (185, 10015, 10015, '先这样', '', 1, 0, NULL, '2021-06-01 20:53:17', '2021-06-01 20:53:25');
INSERT INTO `wx_chat` VALUES (186, 10218, 10000, '这是Q做的', '', 1, 1, NULL, '2021-06-08 07:27:18', '2021-12-29 13:26:34');
INSERT INTO `wx_chat` VALUES (187, 10000, 10218, '不是哦', '', 1, 1, NULL, '2021-06-08 08:19:36', '2021-12-29 13:26:34');
INSERT INTO `wx_chat` VALUES (190, 10272, 10272, 'hi', '', 1, 0, NULL, '2021-06-08 14:00:58', '2021-06-20 02:31:31');
INSERT INTO `wx_chat` VALUES (191, 10389, 10315, 'eee', '', 1, 0, NULL, '2021-06-15 14:42:34', '2021-07-12 14:15:58');
INSERT INTO `wx_chat` VALUES (192, 10000, 10001, '😁', '', 0, 1, NULL, '2021-06-16 14:30:02', '2021-06-16 16:08:32');
INSERT INTO `wx_chat` VALUES (193, 10315, 10315, '？', '', 1, 0, NULL, '2021-06-16 16:49:31', '2021-07-13 13:59:10');
INSERT INTO `wx_chat` VALUES (194, 10439, 10439, '好', '', 1, 0, NULL, '2021-06-17 18:22:59', '2021-06-18 19:51:04');
INSERT INTO `wx_chat` VALUES (195, 10439, 10439, '你好', NULL, 1, 0, NULL, '2021-06-17 18:23:05', '2021-06-18 19:51:04');
INSERT INTO `wx_chat` VALUES (196, 10026, 10001, '你好，有群嘛，我想了解下', '', 1, 0, NULL, '2021-06-21 00:23:40', '2021-06-23 10:59:09');
INSERT INTO `wx_chat` VALUES (197, 10000, 10084, '丸子狗？搁你爹的社区刷存在感？真晦气！hatei~', '', 0, 1, NULL, '2021-06-22 19:52:15', '2021-06-25 17:19:52');
INSERT INTO `wx_chat` VALUES (198, 10500, 10000, '嗨', '', 1, 1, NULL, '2021-06-22 23:10:35', '2021-12-29 13:26:33');
INSERT INTO `wx_chat` VALUES (199, 10000, 10500, '嗨', '', 1, 1, NULL, '2021-06-22 23:34:08', '2021-12-29 13:26:33');
INSERT INTO `wx_chat` VALUES (200, 10500, 10000, '能给我认个证吗ડ🌚ડ', '', 1, 1, NULL, '2021-06-23 01:19:42', '2021-12-29 13:26:33');
INSERT INTO `wx_chat` VALUES (201, 10000, 10500, '好了，有问题可以直接联系我微信：white0804', '', 1, 1, NULL, '2021-06-23 08:34:11', '2021-12-29 13:26:33');
INSERT INTO `wx_chat` VALUES (202, 10500, 10000, '3Q', '', 1, 1, NULL, '2021-06-23 09:02:43', '2021-12-29 13:26:33');
INSERT INTO `wx_chat` VALUES (203, 10500, 10000, 'mini ui是真不错', NULL, 1, 1, NULL, '2021-06-23 09:03:08', '2021-12-29 13:26:33');
INSERT INTO `wx_chat` VALUES (204, 10500, 10000, 'mini 有考虑做app版本吗？', '', 1, 1, NULL, '2021-06-23 09:08:58', '2021-12-29 13:26:33');
INSERT INTO `wx_chat` VALUES (205, 10000, 10500, '在写PC端了，APP只是时间问题吧', '', 1, 1, NULL, '2021-06-23 09:11:54', '2021-12-29 13:26:33');
INSERT INTO `wx_chat` VALUES (206, 10500, 10000, '能问下mini 是用小程序原生写的还是用uniapp写的', '', 1, 1, NULL, '2021-06-23 09:13:07', '2021-12-29 13:26:33');
INSERT INTO `wx_chat` VALUES (207, 10000, 10500, '原生', '', 1, 1, NULL, '2021-06-23 09:19:16', '2021-12-29 13:26:33');
INSERT INTO `wx_chat` VALUES (208, 10001, 10026, '可以联系在线客服', '', 1, 0, NULL, '2021-06-23 10:59:37', '2021-06-24 15:04:51');
INSERT INTO `wx_chat` VALUES (209, 10599, 10569, '123456789哈哈哈', '', 0, 0, NULL, '2021-07-12 10:15:34', '2021-07-12 10:15:34');
INSERT INTO `wx_chat` VALUES (210, 10315, 10315, '？', '', 1, 0, NULL, '2021-07-12 14:15:02', '2021-07-13 13:59:10');
INSERT INTO `wx_chat` VALUES (211, 10706, 10000, '1', '', 1, 1, NULL, '2021-07-23 15:46:59', '2021-12-29 13:26:31');
INSERT INTO `wx_chat` VALUES (212, 10706, 10533, '看资料', '', 1, 0, NULL, '2021-07-23 15:47:19', '2022-02-08 23:32:25');
INSERT INTO `wx_chat` VALUES (213, 10706, 10533, '哈哈', NULL, 1, 0, NULL, '2021-07-23 15:47:24', '2022-02-08 23:32:25');
INSERT INTO `wx_chat` VALUES (214, 10000, 10706, '2', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/24/f2bb66de67c6a7b230ad8aded744da53.jpg', 0, 1, NULL, '2021-07-24 00:06:05', '2021-12-29 13:26:31');
INSERT INTO `wx_chat` VALUES (215, 10322, 10322, '夏季折扣促销', '', 1, 0, NULL, '2021-07-27 16:51:31', '2021-07-27 16:54:35');
INSERT INTO `wx_chat` VALUES (216, 10322, 10322, '待机时间', '', 1, 0, NULL, '2021-07-27 16:51:41', '2021-07-27 16:54:35');
INSERT INTO `wx_chat` VALUES (217, 10322, 10322, '烧开了手机', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/27/bc23d3dc9b43d1cd5ae25a908cb92109.jpg', 1, 0, NULL, '2021-07-27 16:52:09', '2021-07-27 16:54:35');
INSERT INTO `wx_chat` VALUES (218, 10322, 10322, '嘻嘻', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/27/c92ad71b2721c41576b3c46c1b0ad0df.jpg', 1, 0, NULL, '2021-07-27 16:53:24', '2021-07-27 16:54:35');
INSERT INTO `wx_chat` VALUES (219, 10717, 10001, '😀', '', 0, 0, NULL, '2021-07-27 17:17:48', '2021-07-27 17:17:48');
INSERT INTO `wx_chat` VALUES (220, 10717, 10001, '你好', '', 0, 0, NULL, '2021-07-27 17:31:19', '2021-07-27 17:31:19');
INSERT INTO `wx_chat` VALUES (221, 10717, 10000, '你好', '', 1, 1, NULL, '2021-07-27 17:31:43', '2021-12-29 13:26:29');
INSERT INTO `wx_chat` VALUES (222, 10000, 10717, '你好', '', 1, 1, NULL, '2021-07-29 09:25:09', '2021-12-29 13:26:29');
INSERT INTO `wx_chat` VALUES (223, 10737, 10664, '你好👋', '', 0, 0, NULL, '2021-07-31 17:37:19', '2021-07-31 17:37:19');
INSERT INTO `wx_chat` VALUES (224, 11283, 11417, '去', '', 0, 0, NULL, '2022-01-22 14:12:51', '2022-01-22 14:12:51');
INSERT INTO `wx_chat` VALUES (225, 11333, 11333, '你好', '', 0, 0, NULL, '2022-01-24 11:44:15', '2022-01-24 11:44:15');
INSERT INTO `wx_chat` VALUES (226, 10862, 10000, '1', '', 1, 0, NULL, '2022-01-30 22:20:14', '2022-02-07 11:34:02');
INSERT INTO `wx_chat` VALUES (227, 10862, 10000, '好像没有单独的聊天信息页面', '', 1, 0, NULL, '2022-01-30 22:21:30', '2022-02-07 11:34:02');
INSERT INTO `wx_chat` VALUES (228, 10000, 10862, '有了', '', 0, 0, NULL, '2022-02-07 11:34:05', '2022-02-07 11:34:05');
INSERT INTO `wx_chat` VALUES (229, 10221, 11202, '哈哈', '', 0, 0, NULL, '2022-02-08 20:08:04', '2022-02-08 20:08:04');
INSERT INTO `wx_chat` VALUES (230, 11580, 10000, 'hello', '', 0, 0, NULL, '2022-08-27 07:10:18', '2022-08-27 07:10:18');
INSERT INTO `wx_chat` VALUES (231, 11580, 10000, '哈哈哈', 'https://img.mini.chongyeapp.com/2022/08/27/26a35e40f2931f71d8c47b2231c6a178.jpg', 0, 0, NULL, '2022-08-27 07:10:43', '2022-08-27 07:10:43');
INSERT INTO `wx_chat` VALUES (232, 11580, 10000, '哈哈哈哈', 'https://img.mini.chongyeapp.com/2022/08/27/3383ce37a210ba7bcc48a09ddabeb988.jpg', 0, 0, NULL, '2022-08-27 07:10:58', '2022-08-27 07:10:58');
INSERT INTO `wx_chat` VALUES (233, 11585, 10001, 'hello', '', 0, 0, NULL, '2022-09-08 20:36:18', '2022-09-08 20:36:18');

-- ----------------------------
-- Table structure for wx_circle
-- ----------------------------
DROP TABLE IF EXISTS `wx_circle`;
CREATE TABLE `wx_circle`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `circle_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '圈子名称',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `circle_introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '圈子介绍',
  `head_portrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '圈子头像',
  `background_maps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '圈子名称',
  `plate_id` int(1) NULL DEFAULT 0 COMMENT '板块ID',
  `user_id` bigint(20) NULL DEFAULT 0 COMMENT '圈主ID',
  `is_top_recommend` tinyint(1) NULL DEFAULT 0 COMMENT '圈子页顶部推荐(0否，1是)',
  `is_hot` tinyint(1) NULL DEFAULT 0 COMMENT '热门圈子(0否，1是)',
  `circle_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0审核中，1正常，2驳回)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`plate_id`) USING BTREE,
  INDEX `index_2`(`is_hot`) USING BTREE,
  INDEX `index_3`(`is_top_recommend`) USING BTREE,
  FULLTEXT INDEX `index_4`(`circle_name`)
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'wx_circle' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_circle
-- ----------------------------
INSERT INTO `wx_circle` VALUES (2, 'BUG', 0, '小小BUG可笑可笑', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/03/19a6b2112d0ca1b5cc3759eb962e749d.jpg', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/29/b0185299028110e766f3b16b7fc5629c.jpg', 2, 10000, 0, 0, 1, '2021-05-15 19:05:17', '2021-02-23 07:37:07', '2021-05-15 19:05:17');
INSERT INTO `wx_circle` VALUES (3, '家有萌宠', 1, '小猫咪能有什么坏心眼呢', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/08/25/c2cd6a1e1da9b090e536c3bcc2f2558a.png', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/08/25/6811286733658cd4446f5da27767a805.png', 1, 11580, 1, 1, 1, NULL, '2021-02-28 07:56:14', '2022-09-08 23:57:26');
INSERT INTO `wx_circle` VALUES (21, '猫咪好物', 2, '初次养猫，要置办哪些东西呢', 'https://img.mini.chongyeapp.com/2022/09/02/53cf1c6737cb77c9e7554e94e3f2484b.jpg', 'https://img.mini.chongyeapp.com/2022/09/02/a5c70b213ce2e54c84c0196a1c55d5a1.jpg', 1, 11580, 0, 1, 1, NULL, '2021-04-29 15:24:36', '2022-09-08 23:57:38');
INSERT INTO `wx_circle` VALUES (22, '养猫经验谈', 3, '分享猫饭菜谱，让喵吃顿好的', 'https://img.mini.chongyeapp.com/2022/09/02/45053ab2c1b06c6ffe7183650eec43cf.png', 'https://img.mini.chongyeapp.com/2022/09/02/0c43a4da40b99bcdffeedce6e9941a94.png', 1, 11580, 0, 1, 1, NULL, '2021-04-29 15:28:58', '2022-09-08 23:57:47');
INSERT INTO `wx_circle` VALUES (23, '猫咪领养救助', 4, '每个ta，值得一个家', 'https://img.mini.chongyeapp.com/2022/09/02/600e3e7c80fbf81db648e9b4f8459d16.jpg', 'https://img.mini.chongyeapp.com/2022/09/02/baeaf4d750b16690d76273cd3a78abaa.jpg', 1, 11580, 0, 1, 1, NULL, '2021-04-29 15:37:56', '2022-09-08 23:57:58');
INSERT INTO `wx_circle` VALUES (24, '喵生大事', 5, '绝育，配种那些事儿', 'https://img.mini.chongyeapp.com/2022/09/02/28ea34e27428fffabaef5252a452c39f.jpg', 'https://img.mini.chongyeapp.com/2022/09/02/f4f2dbcb44a5fc6e39b7fc0fcab8835b.jpg', 1, 11580, 0, 1, 1, NULL, '2021-04-29 15:54:29', '2022-09-08 23:58:06');
INSERT INTO `wx_circle` VALUES (25, '喵生活仪式感', 6, '一起分享你的发烧之路', 'https://img.mini.chongyeapp.com/2022/09/02/172d212c09cdf37606cf704d51e9ef65.jpg', 'https://img.mini.chongyeapp.com/2022/09/02/532d1adfa0c65a65ba97e3fd30c5bc41.jpg', 1, 11580, 0, 1, 1, NULL, '2021-04-29 16:18:33', '2022-09-08 23:58:14');
INSERT INTO `wx_circle` VALUES (26, '狗子沙雕瞬间', 1, '我家狗子又沙雕了', 'https://img.mini.chongyeapp.com/2022/09/02/c553227258f03c97d81ccff8db7b528c.jpg', 'https://img.mini.chongyeapp.com/2022/09/02/cbb064aa323395fe6fd58ef00825bd7f.jpg', 2, 11580, 1, 1, 1, NULL, '2021-04-29 16:24:15', '2022-09-08 23:58:23');
INSERT INTO `wx_circle` VALUES (27, '狗狗好物', 2, '这玩意劝你别买 🙄', 'https://img.mini.chongyeapp.com/2022/09/02/98ee94c222300cd7e2bf0bc86e49df50.jpg', 'https://img.mini.chongyeapp.com/2022/09/02/c593ca87835445bc7fb17857ddbe6492.jpg', 2, 11580, 0, 1, 1, NULL, '2021-04-29 16:25:24', '2022-09-08 23:58:31');
INSERT INTO `wx_circle` VALUES (28, '养狗经验谈', 3, '狗饭菜谱，训狗一把抓', 'https://img.mini.chongyeapp.com/2022/09/02/5820d5b2ccf5b24d4778bb2f1120ad0c.jpg', 'https://img.mini.chongyeapp.com/2022/09/02/3740e35660d02e7e4d0ec4f8be496ead.jpg', 2, 11580, 1, 1, 1, NULL, '2021-04-29 16:31:28', '2022-09-08 23:58:38');
INSERT INTO `wx_circle` VALUES (29, '狗狗领养', 4, '给它找个能吃饱的家', 'https://img.mini.chongyeapp.com/2022/09/02/d1032254bbffb7d7cfd01eb87b3381c0.jpg', 'https://img.mini.chongyeapp.com/2022/09/02/c529953a74403c80b00a91b623425cca.jpg', 2, 11580, 1, 1, 1, NULL, '2021-05-03 16:16:47', '2022-09-08 23:58:47');
INSERT INTO `wx_circle` VALUES (30, '汪生大师', 5, '相亲，绝育那些事儿', 'https://img.mini.chongyeapp.com/2022/09/02/37b90f07ee9120a9611a241ab746693d.jpg', 'https://img.mini.chongyeapp.com/2022/09/02/e6c3ba12916828cafceed1f8e2ebc4f6.jpg', 2, 10000, 0, 1, 1, NULL, '2021-05-14 11:02:49', '2022-09-02 05:49:14');
INSERT INTO `wx_circle` VALUES (31, '狗生仪式感', 6, '圣诞 ，生日，旅行...', 'https://img.mini.chongyeapp.com/2022/09/02/943757de8944b16fc6217a7601f304f8.jpg', 'https://img.mini.chongyeapp.com/2022/09/02/f78595be19b75b5e8c3bf14b48c4f114.jpg', 2, 10000, 0, 0, 1, NULL, '2021-05-31 18:55:20', '2022-09-02 05:52:09');
INSERT INTO `wx_circle` VALUES (32, '守宫日常', 9999, '属于守宫爱好者的圈子', 'https://img.mini.chongyeapp.com/2022/09/02/64b442700367881d35d337302c98f458.jpg', 'https://img.mini.chongyeapp.com/2022/09/02/89d519bf4465afea71c4b702fbfca096.jpg', 3, 10000, 0, 0, 1, NULL, '2021-06-08 02:52:15', '2022-09-02 05:53:47');
INSERT INTO `wx_circle` VALUES (34, '英雄联盟', 99, '欢迎征战英雄联盟的各位新老召唤师，召唤师峡谷等待着你', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/06/08/dc36015bab32a315117c6015e8104837.png', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/06/08/6d0eb549fd76584c3a41b9cab2de74e4.png', 9, 10000, 0, 0, 1, '2022-09-02 05:56:23', '2021-06-08 17:50:44', '2022-09-02 05:56:23');
INSERT INTO `wx_circle` VALUES (41, '奋斗兔', 0, '兔子铲屎官看这里呀', 'https://img.mini.chongyeapp.com/2022/09/02/90fcb79141055b1bd1e7544df3521a1f.jpg', 'https://img.mini.chongyeapp.com/2022/09/02/0c9917b6d596714505c361c21791eb48.jpg', 22, 11580, 0, 0, 1, NULL, '2022-01-14 22:27:51', '2022-09-08 23:57:11');
INSERT INTO `wx_circle` VALUES (42, 'dribbble', -2, 'dribbble全球优秀UI作品分享，本圈不审贴', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/02/07/73f0a7ac577f67477d87bab9e6bbe185.png', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/02/07/romainbriaux-1100w-e946173753fca7eb4dbd6786ac59e5b66aba2ce29564682b45a074bf0673cff6.png', 13, 9999, 1, 1, 1, '2022-09-02 05:56:11', '2022-02-07 15:44:34', '2022-09-02 05:56:11');
INSERT INTO `wx_circle` VALUES (44, '日常问答', 1, '只要是问题，并且想获得答案，可以发布到这里', 'https://img.mini.chongyeapp.com/2022/10/03/facad822b384d96630f815d8f4693757.png', 'https://img.mini.chongyeapp.com/2022/10/03/f5cb1279ad9eeae3db7f5840c44e8d4b.png', 24, 11583, 0, 0, 1, NULL, '2022-10-03 02:01:08', '2022-10-03 02:01:08');

-- ----------------------------
-- Table structure for wx_circle_meta_num
-- ----------------------------
DROP TABLE IF EXISTS `wx_circle_meta_num`;
CREATE TABLE `wx_circle_meta_num`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `circle_id` bigint(20) NOT NULL COMMENT 'circle_id',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_key',
  `meta_value` bigint(20) NOT NULL COMMENT 'meta_value',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`circle_id`, `meta_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_circle_meta_num
-- ----------------------------

-- ----------------------------
-- Table structure for wx_circle_meta_str
-- ----------------------------
DROP TABLE IF EXISTS `wx_circle_meta_str`;
CREATE TABLE `wx_circle_meta_str`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `circle_id` bigint(20) NOT NULL COMMENT 'circle_id',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_key',
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_value',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`circle_id`, `meta_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_circle_meta_str
-- ----------------------------

-- ----------------------------
-- Table structure for wx_clause
-- ----------------------------
DROP TABLE IF EXISTS `wx_clause`;
CREATE TABLE `wx_clause`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '条款名称',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条款内容',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'wx_clause' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_clause
-- ----------------------------
INSERT INTO `wx_clause` VALUES (20, '圈主协议', '<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\">\r\n<h1 style=\"margin: 0cm; text-align: center; line-height: 70.4px; break-after: avoid; font-size: 22pt; font-family: Calibri, sans-serif; background: white;\" align=\"center\"><span style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\">宠也圈主协议</span></h1>\r\n<h4 style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-family: PingFangSC-Regular, \'Microsoft YaHei\', \'\\微软雅黑\', Tahoma, Helvetica, sans-serif; color: #343a40; font-size: 12px; letter-spacing: 0.5px; background-color: #ffffff; text-align: center;\" align=\"center\" data-v-2daed986=\"\" data-spm-anchor-id=\"a214ky.13184207.0.i2.79b12437WzQ4lN\"><span style=\"font-size: 9pt; line-height: 18.72px; font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\">最新版本生效日期：<span lang=\"EN-US\">2021</span>年<span lang=\"EN-US\">04</span>月<span lang=\"EN-US\">28</span>日</span></h4>\r\n</div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>欢迎您使用宠也，《圈主协议》（下称<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>本协议<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>）是由<span style=\"font-size: 13.3333px;\">宠也</span>团队（以下或称<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>我们<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>）与您基于《用户协议》就您在<span style=\"font-size: 13.3333px;\">宠也</span>应用的<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">Atexttext</span>应用软件、官方网站、微信小程序或者其他平台<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">/</span>载体（统称<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span><span style=\"font-size: 13.3333px;\">宠也</span>应用<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>）中，利用我们提供的技术工具创设并运营您的在线活动社区<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\"><span style=\"font-family: 宋体; font-size: 13.3333px;\">宠也</span>&rdquo;</span>的相关事宜所订立的有效协议。本协议是《用户协议》的组成部分，请仔细阅读。</span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>您同意本协议的方式包括但不限于：<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">1)</span>通过点击<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>我同意<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>或者其他方式接受；<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">2)</span>通过电子邮件、电话、传真、即时通信等方式所作的口头或书面表示；<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">3)</span>您使用了<span style=\"font-size: 13.3333px;\">宠也</span>应用的服务的；<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">4)</span>其他您与我们均认可的方式。<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>一、圈主准入协议及创建<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>的要求<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>圈主应当确保其具有向其他<span style=\"font-size: 13.3333px;\">宠也</span>应用的用户提供相关服务的资质，并应按照<span style=\"font-size: 13.3333px;\">宠也</span>团队的要求在首次创建<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>或提现前及时向<span style=\"font-size: 13.3333px;\">宠也</span>团队提交包括但不限于下述主体证明材料及联系方式（该等信息将视为审核资料的一部分），以完成圈主真实身份审核和登记：<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>真实姓名；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: \'Segoe UI\', sans-serif;\">&nbsp;</span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>身份证号；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>有效联系手机号码；其他<span style=\"font-size: 13.3333px;\">宠也</span>团队认为必要的信息、材料。<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>圈主可以为其<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>创建名称，但名称应当符合下列规范，我们有权要求您就此提供相关书面材料以证实您所创建的名称的合规性，相应的书面材料将被作为审核资料的组成部分：<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span lang=\"EN-US\" style=\"font-size: 10pt; font-family: \'Segoe UI\', sans-serif;\">&nbsp;</span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>名称不得仅使用中国的国家名称、国旗、国徽、军旗、勋章以及中央国家机关所在地特定地点的名称或者标志性建筑物的名称，除非企业名称中本身包含前述内容的；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>名称不得仅使用外国的国家名称；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>名称不得仅使用县级以上行政区划的地名或者公众知晓的外国地名；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>名称中不得含有带有民族歧视、种族歧视、仇恨、性和淫秽信息的语言或其他令人反感的文字；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>名称不得具有夸大宣传并带有欺骗性的情形；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>名称内容不得包含有害于社会主义道德风尚或者有其他不良影响；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>名称不得存在歧义，足以误导用户或侵犯其他用户、第三方合法权益；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>名称内容存在侵犯他人注册商标权的情形的；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>圈主为自然人，但其创建的<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>名称包含<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>公司<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">/</span>集团<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>或其他字样，可能误导用户认为该<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>的圈主为企业或其他组织，或者可能误导用户认为该<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>是受企业或其他组织控制的；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>名称内容不得存在其他违反法律法规、规范性文件，及<span style=\"font-size: 13.3333px;\">宠也</span>应用《用户协议》等约定或服务协议（以下统称<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span><span style=\"font-size: 13.3333px;\">宠也</span>协议<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>）要求的情形。<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>圈主应确保其向<span style=\"font-size: 13.3333px;\">宠也</span>团队提交的审核资料真实、准确、有效、完整，如有任何变更，圈主应在相关变更发生后五（<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">5</span>）日内书面通知<span style=\"font-size: 13.3333px;\">宠也</span>团队。<span style=\"font-size: 13.3333px;\">宠也</span>团队有权根据具体情况，请您补充提交相关资料。<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>圈主完成所有审核流程后，由<span style=\"font-size: 13.3333px;\">宠也</span>团队做出是否审核成功的判断。您理解并认可<span style=\"font-size: 13.3333px;\">宠也</span>团队对圈主身份的审核和登记行为并不能免除圈主就其自身信息、资质及服务质量等向其他用户承担的责任。若圈主提供的身份证明资料存在不实、虚假、伪造、过期、不完整或其他方面瑕疵的，圈主应全额赔偿<span style=\"font-size: 13.3333px;\">宠也</span>团队及其他用户因此遭受的全部损失，且<span style=\"font-size: 13.3333px;\">宠也</span>团队有权立即终止向该圈主提供服务，并有权依据本协议及<span style=\"font-size: 13.3333px;\">宠也</span>协议对圈主进行处罚。<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>圈主同意在所创建的<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>内且在<span style=\"font-size: 13.3333px;\">宠也</span>团队指定的位置公开圈主的有效联系方式。圈主理解并同意，<span style=\"font-size: 13.3333px;\">宠也</span>有权依据您填写和提交的审核材料，在法律允许的范围内向其他用户展示、提供您的审核资料。<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>二、圈主行为规范<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>信息内容规范<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>本协议所述信息内容是指<span style=\"font-size: 13.3333px;\">宠也</span>应用内，圈主和其<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>内成员在使用我们的服务过程中所制作、复制、发布、传播的任何内容，包括但不限于圈子账号头像、昵称、<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>介绍、<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>内交流分享过程中以网页、文字、图片、音频、视频、图表、电子文件等形式在<span style=\"font-size: 13.3333px;\">宠也</span>应用内发布、传送、传播的全部内容。<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>圈主应保证其对所制作、复制、发布、传播的信息内容拥有完整有效的知识产权或已取得完整、合法、有效的知识产权授权，且圈主理解并同意为保障文明、健康、和谐的互联网环境，圈主应在其制作、复制、发布、传播信息内容过程中遵从如下规定，并就其创建的<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>内成员制作、复制、发布、传播信息内容的行为符合下述规定承担监管责任：<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>禁止发布法律、法规明确禁止的信息内容，包括但不限于：<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>反对宪法确定的基本原则的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>危害国家统一、主权和领土完整的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>泄露国家秘密、危害国家安全或者损害国家荣誉和利益的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>煽动民族仇恨、民族歧视，破坏民族团结，或者侵害民族风俗、习惯的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>宣扬邪教、迷信的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>发布散布谣言，扰乱社会秩序，破坏社会稳定的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>发布宣扬淫秽、赌博、暴力或者教唆犯罪的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>发布侮辱或者诽谤他人，侵害他人合法权益的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>发布危害社会公德或者民族优秀文化传统的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>发布不符合国家相关法律法规规定的广告，包括但不限于发布国家禁止发布的广告内容，未事先经过有关部门的审查但法律法规要求审查的广告内容等；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>发布其他法律、行政法规和国家规定禁止的内容。<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>禁止发布任何涉嫌侵权或易引起公众反感的内容，包括但不限于：<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>任何恶意抹黑<span style=\"font-size: 13.3333px;\">宠也</span>应用、<span style=\"font-size: 13.3333px;\">宠也</span>团队或<span style=\"font-size: 13.3333px;\">宠也</span>用户或其他第三方的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>对内容来源进行误导的内容，包括但不限于假冒<span style=\"font-size: 13.3333px;\">宠也</span>团队的工作人员或冒用<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">/</span>利用其他企业、组织或个人名义发布内容等；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>任何未经核实的，可能对公众构成误导的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>任何涉及个人隐私或未经授权的个人信息的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>任何涉嫌侵犯他人名誉权、肖像权、著作权、商标权等合法权益的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>强制、诱导、雇佣其他用户关注<span style=\"font-size: 13.3333px;\">宠也</span>、提问、赞赏、点赞、点击链接页面或分享信息的内容。<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>其他<span style=\"font-size: 13.3333px;\">宠也</span>团队认为不适合在<span style=\"font-size: 13.3333px;\">宠也</span>应用内展示的信息内容。<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>禁止发布不符合<span style=\"font-size: 13.3333px;\">宠也</span>协议的内容，包括但不限于：<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>频繁发布重复的内容，利用包括但不限于特殊文字、符号等恶意刷屏的内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>任何<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>垃圾邮件<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>形式的内容，包括但不限于广告、任何其他网站和活动的推广信息，以及一些指向其他网站的链接以及加盟代码等；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>恶意不履行<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">/</span>不完全履行与圈主设立的<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>内成员达成的服务约定或提供虚假服务内容以骗取资金的；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>冒充<span style=\"font-size: 13.3333px;\">宠也</span>团队的工作人员或他人名义向圈主设立的<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>内成员或其他用户提供服务的；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>利用技术手段批量建立虚假账号的；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>利用<span style=\"font-size: 13.3333px;\">宠也</span>应用账号发布违法和不良信息或从事其他违法犯罪活动的；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>发布时政新闻相关内容；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>其他违反法律法规规定、<span style=\"font-size: 13.3333px;\">宠也</span>协议，侵犯<span style=\"font-size: 13.3333px;\">宠也</span>团队、<span style=\"font-size: 13.3333px;\">宠也</span>其他用户合法权益的情形。<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>三、违约行为<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>如果我们发现或收到他人举报或投诉您违反法律、法规、规范性文件或本协议约定（统称<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>违约行为<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>）的，或者我们有合理理由怀疑您存在前述情况的，我们有权不通知您而随时对相关内容或行为进行审查（包括但不限于审查用户全部信息和资料、聊天记录等），并视情节单方决定暂停或终止对您提供服务，或限制您使用我们所提供服务的部分或全部功能，包括予以警告、删除、屏蔽、封禁<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>、封禁账号、注销账号等（我们有权决定同时采取前述一项或多项措施），并有权公告处理结果。而由此给您带来的损失（包括通信中断，用户资料、个人信息、聊天记录及相关数据等的清空或限制访问等）由您自行承担。<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>在下述情况下，<span style=\"font-size: 13.3333px;\">宠也</span>团队有权单方决定立即终止向圈主提供服务、将圈主所创建的<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>封禁并注销圈主账号；如因此造成<span style=\"font-size: 13.3333px;\">宠也</span>团队、其他用户或<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>内成员损失的（包括但不限于财产及声誉损失），圈主应予以赔偿：<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>圈主未按<span style=\"font-size: 13.3333px;\">宠也</span>团队的要求提供或更新相应审核资料和信息的；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>圈主未遵从<span style=\"font-size: 13.3333px;\">宠也</span>协议约定的圈主行为规范或者其他条款的；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>圈主违反其<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>的内部协议遭到成员投诉达三（<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">3</span>）次以上的；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>圈主在向其成员提供服务过程中，因圈主原因导致成员人身<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">/</span>财产损失或隐私泄漏的；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp; </span>其他导致<span style=\"font-size: 13.3333px;\">宠也</span>设立的<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&ldquo;</span>圈子<span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&rdquo;</span>成员或<span style=\"font-size: 13.3333px;\">宠也</span>团队权益受到损害的情形；<span lang=\"EN-US\" style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></span></div>\r\n<div style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; font-family: 宋体; text-indent: 27pt;\"><span style=\"font-size: 10pt;\"><span lang=\"EN-US\" style=\"font-family: \'Segoe UI\', sans-serif;\">&nbsp; &nbsp;&nbsp;</span><span style=\"font-size: 13.3333px;\">宠也</span>协议约定的其他情况。</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br /><br /></span></div>', NULL, '2021-04-23 03:25:05', '2022-09-02 14:15:23');
INSERT INTO `wx_clause` VALUES (21, '用户协议', '<h1 style=\"margin: 0cm; text-align: center; line-height: 70.4px; break-after: avoid; font-size: 22pt; font-family: Calibri, sans-serif; background: white;\" align=\"center\"><span style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\">宠也用户协议</span></h1>\r\n<h4 style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-family: PingFangSC-Regular, \'Microsoft YaHei\', \'\\微软雅黑\', Tahoma, Helvetica, sans-serif; color: #343a40; font-size: 12px; letter-spacing: 0.5px; background-color: #ffffff; text-align: center;\" align=\"center\" data-v-2daed986=\"\" data-spm-anchor-id=\"a214ky.13184207.0.i2.79b12437WzQ4lN\"><span style=\"font-size: 9pt; line-height: 18.72px; font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\">最新版本生效日期：<span lang=\"EN-US\">2021</span>年<span lang=\"EN-US\">04</span>月<span lang=\"EN-US\">28</span>日</span></h4>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; background: white;\"><span lang=\"EN-US\" style=\"font-size: 9pt; line-height: 20.64px; font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><br style=\"margin: 0px; padding: 0px; box-sizing: border-box;\" data-v-2daed986=\"\" /></span><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.25pt;\">一、使用协议的接受与修改</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">东莞市东城友看网络工作室（以下简称&ldquo;友看网络&rdquo;或&ldquo;我方&rdquo;）同意按照本协议的规定及其不时发布的操作规则提供基于互联网以及移动网（包括电脑、手机、平板电脑等终端）的客户端应用软件（以下简称&ldquo;宠也&rdquo;），供客户端使用人（以下简称&ldquo;用户&rdquo;）在线下载、安装、注册、使用、复制本软件。本协议是用户与我方之间的协议，我方依据本协议为用户提供服务。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">本协议是用户与我方之间的协议，我方依据本协议为用户提供服务。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">　请用户务必审慎阅读、充分理解各条款内容，特别是免除或者限制责任的条款、法律适用和争议解决条款。免除或者限制责任的条款将以粗体下划线标识，用户应重点阅读。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">本协议服务条款构成用户（无论是个人或者单位）使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>所提供服务之先决条件。如用户不同意本协议服务条款或其随时对其的修改，用户应不使用或主动取消<span style=\"letter-spacing: -0.266667px;\">宠也</span>提供的服务。用户的使用行为将被视为其对本协议服务条款及其随时修改版本的完全接受；阅读本协议的过程中，如果用户不同意本协议或其中任何条款约定，应立即停止注册程序。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">如果用户在本协议生效前已成为<span style=\"letter-spacing: -0.266667px;\">宠也</span>的注册用户，则用户通过访问和<span lang=\"EN-US\">/</span>或使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>，即视为用户表示同意接受本协议的全部内容。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">4.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">　我方的《<span style=\"letter-spacing: -0.266667px;\">宠也</span>隐私政策》以及其他相关规则均为本协议的补充协议，与本协议不可分割且具有同等法律效力。如用户不同意《<span style=\"letter-spacing: -0.266667px;\">宠也</span>隐私政策》，则视为不同意本协议，用户应立即停止使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>提供的服务。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">5. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">上述条款我方可能会随时更新，我方会将更新后的用户协议、隐私政策及相关规则（统称&ldquo;用户协议&rdquo;）通过系统提示、信息推送和／或用户在<span style=\"letter-spacing: -0.266667px;\">宠也</span>留下的联系方式通知和提醒用户注意。修改后的服务条款的主要内容会在协议顶部予以展示，一旦在<span style=\"letter-spacing: -0.266667px;\">宠也</span>上公布即取代替原来的服务条款，并构成本条款整体之一部分。用户协议变更后，如用户继续使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>服务，即意味着用户同意接受。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">如用户不同意变更后的用户协议，应停止使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>的服务。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; background: white; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.25pt;\">二、用户注册</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">用户确认其具备中华人民共和国法律规定的与用户行为相适应的民事行为能力。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">若用户不具备前述与其行为相适应的民事行为能力，则应获得监护人的同意。特别地，如果用户是未成年人，应使用&ldquo;青少年模式&rdquo;并在监护人的同意和指导下访问和<span lang=\"EN-US\">/</span>或使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>。用户及用户的监护人应依照法律规定承担因此而导致的相应的责任。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">如果用户使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>进行内容的上载、传播服务，用户需要注册一个帐号、密码，并确保注册信息的真实性、正确性及完整性，如果上述注册信息发生变化，用户应及时更改。在安全完成本服务的登记程序并收到一个密码及帐号后，用户应维持密码及帐号的机密安全。用户应对任何人利用用户的密码及帐号所进行的活动负完全的责任，我方无法对非法或未经用户授权使用用户帐号及密码的行为做出甄别，因此我方不承担任何责任。在此，用户同意并承诺做到：</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">经<span style=\"letter-spacing: -0.266667px;\">宠也</span>注册系统完成注册程序并获得<span style=\"letter-spacing: -0.266667px;\">宠也</span>帐号的用户即为<span style=\"letter-spacing: -0.266667px;\">宠也</span>的正式用户，即获得<span style=\"letter-spacing: -0.266667px;\">宠也</span>规定用户所应享有的一切权限；我方有权对其正式用户的权限设计进行变更。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">在用户填写注册资料时，用户要确保所填写的信息是真实有效的。如用户提供的信息存在明显不实的，用户将承担因此造成的全部损失与不利后果。我方只在法律有明确规定的情况下承担相应的责任。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">用户注册帐号时不得以下列内容作为帐号名称，如发现用户帐号中含有不雅文字或不恰当名称的，我方将拒绝注册，已经注册的，将保留取消其用户资格的权利。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">除本协议注明之服务条款外，其他一切因使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>而引致之任何意外、疏忽、合约毁坏、诽谤、版权或其他知识产权侵犯及其所造成的损失（包括但不限于因下载而感染电脑病毒），我方概不负责，亦不承担任何法律责任。</span></p>\r\n<p style=\"margin: 0cm; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">(1)</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">请勿以党和国家领导人或其他社会名人的真实姓名、字号、艺名、笔名注册；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br />(2)</span>请勿以国家机构或其他机构的名称注册；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br />(3)</span>请勿注册不文明、不健康名字，或包含歧视、侮辱、猥亵类词语的帐号；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br />(4)</span>请勿注册易产生歧义、引起他人误解或其它不符合法律法规、规章制度等规定的帐号。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">帐号所有权归我方，用户完成申请注册手续后，获得帐号的有限使用权。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">帐号使用权仅属于初始申请注册人，禁止赠与、借用、租用、转让或售卖，否则由此产生的一切责任均由用户承担，同时我方保留追究上述行为人法律责任的权利。如果发现使用者并非帐号初始注册人，我方有权在未经通知的情况下回收该帐号而无需向该帐号使用人承担法律责任，由此带来的包括并不限于用户资料等清空等损失由用户自行承担。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">4. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">用户承担<span style=\"letter-spacing: -0.266667px;\">宠也</span>帐号与密码的保管责任，并就其帐号及密码项下之一切活动负全部责任。用户须重视<span style=\"letter-spacing: -0.266667px;\">宠也</span>帐号密码和公开邮箱的密码保护。用户同意如发现他人未经许可使用其帐号时立即通知我方。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">5.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">用户帐号在丢失或遗忘密码后，须遵照<span style=\"letter-spacing: -0.266667px;\">宠也</span>的申诉途径及时申诉请求找回帐号。用户应提供能增加帐号安全性的个人密码保护资料。用户可以凭初始注册资料及个人密码保护资料填写申诉单向我方申请找回帐号，<span style=\"letter-spacing: -0.266667px;\">宠也</span>的密码找回机制仅负责识别申诉单上所填资料与系统记录资料的正确性，而无法识别申诉人是否系真正帐号权使用人。对用户因被他人冒名申诉而致的任何损失，我方不承担任何责任，用户知晓<span style=\"letter-spacing: -0.266667px;\">宠也</span>帐号及密码保管责任在于用户，我方并不承诺帐号丢失或遗忘密码后用户一定能通过申诉找回帐号。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">帐户因用户主动泄露或遭受他人攻击、诈骗等行为导致的损失及后果，依据法律规定双方各自承担风险及责任。我方在法律有明确规定的情况下承担相应的责任。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">6. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">如用户已注册<span style=\"letter-spacing: -0.266667px;\">宠也</span>帐号，但尚未进行实名认证，则用户应尽快绑定个人手机号进行认证。如用户不进行实名认证，则我方保留停止该帐号在<span style=\"letter-spacing: -0.266667px;\">宠也</span>使用的权利。如果不进行实名认证，用户仍可浏览<span style=\"letter-spacing: -0.266667px;\">宠也</span>的内容，但可能无法使用评论、跟帖、弹幕等功能或者其他相关权利和服务。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">7. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">本着有效利用<span style=\"letter-spacing: -0.266667px;\">宠也</span>帐号资源，保障更多合法用户权益为目的，对于以下恶意注册或者长期未登录的帐号，我方有权回收，由此带来的损失由用户自行承担。我方在对此类帐户进行清理前，将以包括但不限于网站公告、站内消息、客户端推送信息等方式通知用户。</span></p>\r\n<p style=\"margin: 0cm; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">(1)</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">未进行实名制认证的帐号；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br />(2)</span>连续<span lang=\"EN-US\">6</span>个月未登录的帐号；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br />(3)</span>其他具有恶意注册情况的帐号。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">8. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">用户注销帐号时，我方将参照《<span style=\"letter-spacing: -0.266667px;\">宠也</span>隐私政策》相关内容进行个人信息的删除。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; background: white; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.25pt;\">三、服务内容</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">用户可使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>服务上传动画、文字、图片、视频等（以下简称&ldquo;内容&rdquo;），并在此明确陈述并保证对其上载、传播到<span style=\"letter-spacing: -0.266667px;\">宠也</span>上的所有内容，拥有或取得了所有必要的权利并承担全部的法律责任，包括但不限于：用户有权或已取得必要的许可、授权、准许使用或授权<span style=\"letter-spacing: -0.266667px;\">宠也</span>使用所有与上传内容有关的专利、商标、著作权、商业秘密、表演者权等相关专有权利和利益。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">我方并不担保用户上传的所有内容能够通过<span style=\"letter-spacing: -0.266667px;\">宠也</span>服务为其他用户所获取、浏览，<span style=\"letter-spacing: -0.266667px;\">宠也</span>客观上无法实现对所有用户上载、传播的内容进行实时监测；但我方保留根据国家法律、法规的要求对上载、传播的内容进行不定时抽查的权利，并有权在不事先通知的情况下移除或断开链接违法、侵权的内容。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">用户同意我方在提供服务的过程中以各种方式投放商业性广告或其他任何类型的商业信息（包括但不限于在<span style=\"letter-spacing: -0.266667px;\">宠也</span>的任何位置上投放广告，在用户上传、传播的内容中投放广告）。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">4.&nbsp;</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><span style=\"letter-spacing: -0.266667px;\">宠也</span>通过&ldquo;消息&ldquo;为用户提供即时通讯功能。<span style=\"letter-spacing: -0.266667px;\">宠也</span>通过用户在<span style=\"letter-spacing: -0.266667px;\">宠也</span>发布内容、移动设备的信息对具有一定共识的用户进行模糊匹配，该服务为娱乐性质的陌生人社交，</span><span style=\"color: #242529; font-family: \'PingFang SC\', sans-serif; font-size: 12px; letter-spacing: -0.266667px;\">宠也</span><span style=\"color: #242529; font-family: \'PingFang SC\', sans-serif; font-size: 9pt; letter-spacing: -0.2pt;\">仅提供平台服务。用户应对对方提出的转账、借款或要求线下见面等引起警惕，避免不必要的财产损失和其他损失，如用户因此遭受损失的，</span><span style=\"color: #242529; font-family: \'PingFang SC\', sans-serif; font-size: 12px; letter-spacing: -0.266667px;\">宠也</span><span style=\"color: #242529; font-family: \'PingFang SC\', sans-serif; font-size: 9pt; letter-spacing: -0.2pt;\">对此不承担责任。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">5.&nbsp;</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><span style=\"letter-spacing: -0.266667px;\">宠也</span>用户应当遵守《<span style=\"letter-spacing: -0.266667px;\">宠也</span>社区管理规范》，<span style=\"letter-spacing: -0.266667px;\">宠也</span>鼓励用户通过站内私信、电子邮件、官方微博<span lang=\"EN-US\">/</span>微信公众号留言的形式向我方举报或投诉用户上传的不良信息或者侵权信息。有志于与<span style=\"letter-spacing: -0.266667px;\">宠也</span>一道维护<span style=\"letter-spacing: -0.266667px;\">宠也</span>有趣有爱有态度的文明社区环境的用户，可以按照&ldquo;审核专区&rdquo;的要求申请成为审贴员、神评审核员、广告治理员、攻击引战治理员，与<span style=\"letter-spacing: -0.266667px;\">宠也</span>一起维护网络环境。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">6.&nbsp;</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><span style=\"letter-spacing: -0.266667px;\">宠也</span>对符合条件的用户，可以申请<span style=\"letter-spacing: -0.266667px;\">宠也</span>勋章，用户获得的勋章只作为用户在<span style=\"letter-spacing: -0.266667px;\">宠也</span>平台的身份标识，用户不得以此冒充<span style=\"letter-spacing: -0.266667px;\">宠也</span>从事未经<span style=\"letter-spacing: -0.266667px;\">宠也</span>许可的任何活动。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">7. 用户在<span style=\"letter-spacing: -0.266667px;\">宠也</span>内使用打赏功能，代表已认真阅读并同意</span><span style=\"color: #242529; font-family: \'PingFang SC\', sans-serif; font-size: 12px; letter-spacing: -0.266667px;\"><span style=\"letter-spacing: -0.266667px;\">宠也</span>《</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">打赏声明</span><span style=\"color: #242529; font-family: \'PingFang SC\', sans-serif; font-size: 12px; letter-spacing: -0.266667px;\">》</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">条款</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">8. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">用户成为<span lang=\"EN-US\"><span style=\"letter-spacing: -0.266667px;\">宠也</span>VIP</span>的，根据相关的协议享有<span lang=\"EN-US\">VIP</span>服务，具体以《<span style=\"letter-spacing: -0.266667px;\">宠也</span>会员服务协议》为准。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; background: white; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.25pt;\">四、知识产权及相关权利</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">　酥怦君科技是<span style=\"letter-spacing: -0.266667px;\">宠也</span>的所有权及知识产权权利人，包括但不限于程序代码、界面设计、版面框架、数据资料、帐号、文字、图片、图形、图标、音频、视频等，除按照法律法规规定应由相关权利人享有权利和用户自行上载的内容以外。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">　我方为提供服务而使用的任何软件（包括但不限于软件中所含的任何图像、照片、动画、录像、录音、音乐、文字和附加程序、随附的帮助材料）的一切权利均属于该软件的著作权人，未经该软件的著作权人许可，用户不得对该软件进行反向工程、反向编译或反汇编，或以其他方式发现其原始编码。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">　用户上传的内容是指用户在<span style=\"letter-spacing: -0.266667px;\">宠也</span>上上载、传播的文字、图片、视频、音频或其它任何形式的内容。用户在<span style=\"letter-spacing: -0.266667px;\">宠也</span>上传或发布内容的，用户应保证其对该等内容享有合法著作权<span lang=\"EN-US\">/</span>版权或者相应授权，对于用户无权利且未获得授权的作品，请勿上传至<span style=\"letter-spacing: -0.266667px;\">宠也</span>。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">4. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">除双方另有约定外，用户使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>上传、发布或传输内容即代表了用户有权且同意在全世界范围内，永久性的（除非用户主动删除或书面要求<span style=\"letter-spacing: -0.266667px;\">宠也</span>下线上述视频）、免费的授权我方：</span></p>\r\n<p style=\"margin: 0cm; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">（<span lang=\"EN-US\">1</span>）对该内容的存储、使用、发布、复制、修改、改编、出版、翻译、据以创作衍生作品、传播、表演和展示等权利；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">2</span>）将内容的全部或部分编入其他任何形式的作品、媒体、技术中的权利；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">3</span>）对用户的上传、发布的内容进行商业开发的权利；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">4</span>）通过有线或无线网络向用户的计算机终端、移动通讯终端（包括但不限于便携式通讯设备如手机和智能平板电脑等）、手持数字影音播放设备、电视接收设备等提供信息的下载、点播、数据传输、移动视频业务、及其相关的宣传和推广等服务的权利；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">5</span>）以及在先告知并征求用户的明示同意的情况下，将相关上传的内容再授权给其他第三方以上述方式使用的权利。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">5.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">　我方在此郑重提请用户注意，任何经由<span style=\"letter-spacing: -0.266667px;\">宠也</span>上载、公告、发送电子邮件或任何其它方式传送的内容，无论系公开还是私下传送，均由内容提供者、上传者承担责任，我方不承担任何责任。当发生第三方对用户上传内容发生争议，或者因用户进行上述内容在<span style=\"letter-spacing: -0.266667px;\">宠也</span>的上载、传播而导致任何第三方提出索赔要求或衍生的任何损害或损失的，由用户承担全部责任。我方有权向第三方披露用户的联系方式，用户应自行与第三方协商解决。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; background: white; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.25pt;\">五、第三方链接</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">为方便用户使用，我方可能会提供与第三方国际互联网网站或资源进行链接。除非另有声明，我方无法对第三方网站服务进行控制，无权审查前述网站对用户个人信息及上传内容的使用情况。除法律有明确规定外，用户因使用或依赖上述网站或资源所产生的损失或损害，我方不负担任何责任。我方建议用户在离开<span style=\"letter-spacing: -0.266667px;\">宠也</span>访问其他网站或资源前仔细阅读该第三方的服务条款和隐私政策。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; background: white; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.25pt;\">六、用户行为</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">　用户理解并保证在<span style=\"letter-spacing: -0.266667px;\">宠也</span>上传、发布或传输的内容（包括帐户名称等信息）应当遵守宪法、法律和行政法规，坚持正确舆论导向，符合积极健康、向上向善的网络文化，自觉维护国家利益和公共利益。我方有权对用户上传、发布或传输的信息进行管理，发现法律、行政法规禁止发布或者传输的信息的，或含有以下内容的，我方将立即传输该信息，采取消除等处置措施，防止信息扩散，保存有关记录，并向有关主管部门报告：</span></p>\r\n<p style=\"margin: 0cm; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">（<span lang=\"EN-US\">1</span>）反对宪法确定的基本原则的；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">2</span>）危害国家统一、主权和领土完整的；　　<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">3</span>）泄露国家秘密、危害国家安全或者损害国家荣誉和利益的；　<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">4</span>）煽动民族仇恨、民族歧视，破坏民族团结，或者侵害民族风俗、习惯的；　　<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">5</span>）宣扬邪教、迷信的；　<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">6</span>）扰乱社会秩序，破坏社会稳定的；　<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">7</span>）诱导未成年人违法犯罪和渲染暴力、色情、赌博、恐怖活动的；　<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">8</span>）侮辱或者诽谤他人，侵害公民个人名誉、隐私、知识产权和其他合法权益的；　<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">9</span>）危害社会公德，损害民族优秀文化传统的；　　<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">10</span>）有关法律、行政法规和国家规定禁止的其他内容。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">如果用户上传、发布或传输内容含有以上违反政策法律法规的信息或内容的，或者侵犯任何第三方的合法权益，用户应直接承担以上导致的一切不利后果。如因此给我方造成不利后果的，用户应负责消除影响，并且赔偿我方因此导致的一切损失，包括且不限于财产损害赔偿、名誉损害赔偿、律师费、交通费等因维权而产生的合理费用或其他所有平台要求的合理费用。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">　 用户理解并保证不在<span style=\"letter-spacing: -0.266667px;\">宠也</span>进行下列的禁止的行为，也不允许任何人利用用户的帐户进行下列行为：<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span></span></p>\r\n<p style=\"margin: 0cm; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">（<span lang=\"EN-US\">1) </span>发送任何未获邀约或未经授权的垃圾电邮、广告或宣传资料，或任何其他商业通讯；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">2) </span>未经我方明确许可，使用我方平台服务用于任何商业用途或为任何第三方的利益；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">3) </span>使用或利用我方知识产权（包括我们的商标、品牌、标志、任何其他专有数据或任何网页的布局或设计），或以其他形式侵犯我方任何知识产权； 或使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>标识等使第三方误认为是<span style=\"letter-spacing: -0.266667px;\">宠也</span>行为。<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">4) </span>通过使用任何自动化程序、软件、引擎、网络爬虫、网页分析工具、数据挖掘工具或类似工具，接入<span style=\"letter-spacing: -0.266667px;\">宠也</span>服务，收集或处理通过<span style=\"letter-spacing: -0.266667px;\">宠也</span>服务所提供的内容；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">5) </span>故意散播病毒、网络蠕虫、木马病毒或其他恶意代码；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">6) </span>攻击或者规避<span style=\"letter-spacing: -0.266667px;\">宠也</span>服系统的任何安全功能；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">7) </span>为破坏或滥用的目的开设多个帐户，或恶意上传重复的、无效的大容量数据和信息；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">8) </span>利用网络从事侵害他人名誉、隐私、知识产权和其他合法权益等活动；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">9) </span>违反任何相关的中国法律、法规、规章、条例等其他具有法律效力的规范；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">10</span>）对<span style=\"letter-spacing: -0.266667px;\">宠也</span>服务及相关功能进行修改、篡改、屏蔽或部分屏蔽广告；<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span><span lang=\"EN-US\"><br /></span>（<span lang=\"EN-US\">11</span>）破坏<span style=\"letter-spacing: -0.266667px;\">宠也</span>的版权技术保护措施，未经许可盗用<span style=\"letter-spacing: -0.266667px;\">宠也</span>内容。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">除用户与我方另有约定外，用户同意<span style=\"letter-spacing: -0.266667px;\">宠也</span>的服务仅供用户个人非商业性质的使用，用户不可对<span style=\"letter-spacing: -0.266667px;\">宠也</span>服务的任何部分或服务之使用或获得进行复制、拷贝、出售，或利用<span style=\"letter-spacing: -0.266667px;\">宠也</span>进行调查、广告或其他商业目的，但我方对特定服务另有适用指引或规定的除外。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">4.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">我方无法预先知晓并合理控制经由<span style=\"letter-spacing: -0.266667px;\">宠也</span>传送之内容，亦无法准确判定内容上传者的真实身份。有鉴于此，用户已预知使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>时，可能会接触到令人不快、不适当或令人厌恶之内容，用户在此同意放弃由此而产生的针对我方的任何追索权。但我方有权依法停止传输任何前述内容并采取相应行动，包括但不限于暂停用户使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>的全部或部分功能，保存有关记录，并向有关机关报告。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">5.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">用户需独立对自己在<span style=\"letter-spacing: -0.266667px;\">宠也</span>上实施的行为承担法律责任。若用户使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>服务的行为不符合本协议，我方有权做出独立判断，且在无需事先通知的情况下立即取消用户的帐号。用户若在<span style=\"letter-spacing: -0.266667px;\">宠也</span>上散布和传播反动、色情或其他违反国家法律的信息，<span style=\"letter-spacing: -0.266667px;\">宠也</span>的系统记录有可能作为用户违反法律的证据。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">6. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">对于上传不良信息或者侵权信息等违反<span style=\"letter-spacing: -0.266667px;\">宠也</span>社区治理相关规则的用户，<span style=\"letter-spacing: -0.266667px;\">宠也</span>有权视情节严重程度对您采取警告、封号等惩罚措施。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">7.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">在法律法规允许的范围内，用户同意并授权微博运营方就侵犯用户合法权益的行为（包括但不限于私自复制、使用、编辑、抄袭等行为）采取任何形式的法律行动，包括但不限于投诉、诉讼等必要的维权措施。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; background: white; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.25pt;\">七、隐私权政策</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">我方非常重视用户个人信息的保护，根据有关法律法规要求，网络产品、服务具有收集用户信息功能的，其提供者应当向用户明示并取得同意。我方特此通过单独明示的《<span style=\"letter-spacing: -0.266667px;\">宠也</span>隐私政策》明确向用户告知收集、使用用户个人信息的目的、方式和范围，查询、更正信息的渠道以及拒绝提供信息的后果。我方希望通过隐私政策向用户清楚地介绍我方对个人信息的处理方式，因此用户在使用我方提供的服务前，应当完整地阅读《<span style=\"letter-spacing: -0.266667px;\">宠也</span>隐私政策》。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">如果用户不同意《<span style=\"letter-spacing: -0.266667px;\">宠也</span>隐私政策》的任何内容，应立即停止使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>服务。当用户使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>提供的任一服务时，即表示其已同意我方按照《<span style=\"letter-spacing: -0.266667px;\">宠也</span>隐私政策》来合法收集、使用和保护用户的个人信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">《<span style=\"letter-spacing: -0.266667px;\">宠也</span>隐私政策》中所指个人信息是指以电子或者其他方式记录的能够单独或者与其他信息结合识别自然人个人身份的各种信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">当《<span style=\"letter-spacing: -0.266667px;\">宠也</span>隐私政策》所载事项发生变化时，我方会及时更新，会通过系统提示、信息推送和／或用户在我方平台留下的联系方式向用户告知。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">如用户对<span style=\"letter-spacing: -0.266667px;\">宠也</span>隐私政策有任何疑问或对用户个人信息保护有任何投诉，可以通过我方公布的联系方式<span lang=\"EN-US\">xcfeedback@xiaochuankeji.cn</span>与我方联系。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; background: white; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.25pt;\">八、青少年用户特别提示</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><span style=\"letter-spacing: -0.266667px;\">宠也</span>非常重视未成年人的保护。<span style=\"letter-spacing: -0.266667px;\">宠也</span>将依赖用户提供的个人信息判断用户是否为未成年人。若用户为未成年人的，应当在监护人监护、指导下阅读本协议，并在取得监护人的同意后使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>。使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>时，请打开&ldquo;青少年模式&rdquo;。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">如您未满<span lang=\"EN-US\">14</span>周岁，请勿注册使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>；如您未满<span lang=\"EN-US\">18</span>岁，请在监护人指导和监督下注册使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">青少年用户在使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>服务时，要注意区分网络与现实的区别，避免沉迷于网络而影响了日常的学习生活。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">监护人应指导青少年注意网络安全问题，防患于未然；青少年用户应增强自我保护意思，避免陌生网友会面或参与联谊活动，以免为不法分子所乘，危及自身。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">4. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">青少年用户要维护网络安全，不破坏网络秩序，如有违法行为，我方保留配合公安和电信部门追查的权利。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">5. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">对于青少年用户的隐私保护，<span style=\"letter-spacing: -0.266667px;\">宠也</span>将严格按照平台公布的《<span style=\"letter-spacing: -0.266667px;\">宠也</span>隐私政策》中阐述予以执行。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; background: white; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.25pt;\">九、出口与国际使用</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">我方通过中华人民共和国境内的设施提供和控制服务，我方不担保所提供或控制之服务在其他国家或地区是适当的、可行的，任何在其他司法管辖区使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>的用户应自行确保遵守当地的法律、法规，我方对此不负任何责任。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; background: white; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.25pt;\">十、免责声明</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">为了改善用户体验、保证产品、服务的安全性及产品功能的一致性，我方可能会对产品进行升级或者更新，我方无法保证在此期间用户能正常使用<span style=\"letter-spacing: -0.266667px;\">宠也</span>。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">我方负责<span lang=\"EN-US\">\"</span>按现状<span lang=\"EN-US\">\"</span>和<span lang=\"EN-US\">\"</span>可得到<span lang=\"EN-US\">\"</span>的状态向用户提供服务。我方依法律规定承担相应义务，但对由于信息网络设备维护、连接故障，电脑、通讯或其他系统的故障，黑客活动、计算机病毒、电力故障，罢工，暴乱，火灾，洪水，风暴，爆炸，战争，政府行为，司法行政机关的命令或因第三方原因而给用户造成的损害结果，我方不承担法律有明确规定之外的责任。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">我方提供的客户端下载可通过网络途径下载、传播，因此对于非<span style=\"letter-spacing: -0.266667px;\">宠也</span>官方站点的下载，我方无法保证其是否感染病毒，是否隐藏有伪装的黑客软件，因此不承担用户因此遭受的一切直接或间接损失。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">4. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">我方会努力提升服务质量和服务水平，提升产品性能。但不对<span style=\"letter-spacing: -0.266667px;\">宠也</span>的安全性、可靠性及其他性能提供担保。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; background: white; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.25pt;\">十一、服务终止</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">　用户在<span style=\"letter-spacing: -0.266667px;\">宠也</span>实施的行为对<span style=\"letter-spacing: -0.266667px;\">宠也</span>及其用户产生影响，构成对本协议的违反的，我方可依据相应规则采取对用户的帐户执行限制、中止向用户提供部分或全部服务，扣划违约金等措施。如用户的行为构成根本违约的，我方可终止向用户提供服务。<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span></span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">如果用户在<span style=\"letter-spacing: -0.266667px;\">宠也</span>的行为违反相关的法律法规，我方可依法向相关主管机关报告并提交用户的使用记录和其他信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">用户同意若<span style=\"letter-spacing: -0.266667px;\">宠也</span>的服务之使用被中断、终止或用户的帐号及相关信息和文件被关闭、删除，我方对用户或任何第三人均不承担任何责任。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">4. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">如用户的行为使我方及<span lang=\"EN-US\">/</span>或其关联公司遭受损失（包括自身的直接经济损失、商誉损失及对外支付的赔偿金、和解款、律师费、诉讼费等间接经济损失），用户应赔偿我方及<span lang=\"EN-US\">/</span>或其关联公司的上述全部损失。<span class=\"apple-converted-space\"><span lang=\"EN-US\">&nbsp;</span></span></span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">5. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">如用户的行为使我方及<span lang=\"EN-US\">/</span>或其关联公司遭受第三人主张权利，我方及<span lang=\"EN-US\">/</span>或其关联公司可在对第三人承担金钱给付等义务后就全部损失向用户追偿。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; background: white; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.25pt;\">十二、法律适用和管辖</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">　本协议的生效、履行、解释及争议的解决均适用中华人民共和国法律。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2.</span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">　如就本协议内容或其执行发生任何争议，应尽量友好协商解决；协商不成时，则争议各方均可向北京市海淀区人民法院提起诉讼。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; color: #000000; font-weight: 400; letter-spacing: normal; text-align: justify; line-height: 14.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; caret-color: #242529; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); text-size-adjust: auto;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3. </span><span style=\"font-size: 9pt; font-family: \'PingFang SC\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">本协议任一条款被视为废止、无效或不可执行，该条应视为可分的且并不影响本协议其余条款的有效性及可执行性。</span></p>', NULL, '2021-04-25 09:04:03', '2022-09-02 14:22:28');
INSERT INTO `wx_clause` VALUES (22, '隐私政策', '<h1 style=\"margin: 0cm; text-align: center; line-height: 70.4px; break-after: avoid; font-size: 22pt; font-family: Calibri, sans-serif; background: white;\" align=\"center\"><span style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\">宠也隐私政策</span></h1>\r\n<h4 style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-family: PingFangSC-Regular, \'Microsoft YaHei\', \'\\微软雅黑\', Tahoma, Helvetica, sans-serif; color: #343a40; font-size: 12px; letter-spacing: 0.5px; background-color: #ffffff; text-align: center;\" align=\"center\" data-v-2daed986=\"\" data-spm-anchor-id=\"a214ky.13184207.0.i2.79b12437WzQ4lN\"><span style=\"font-size: 9pt; line-height: 18.72px; font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\">最新版本生效日期：<span lang=\"EN-US\">2021</span>年<span lang=\"EN-US\">04</span>月<span lang=\"EN-US\">28</span>日</span></h4>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; text-align: justify; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: 宋体; color: #242529; letter-spacing: -0.25pt;\">提示条款</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\"><span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>是由东莞市东城友看网络工作室（下称</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我们</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">/</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我方</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）提供服务的产品。我们深知个人信息对您的重要性，我们将按法律法规要求，采取相应的安全保护措施，尽力保护您的个人信息安全可控。鉴此，我们制定本《<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>隐私政策》（下称</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">本政策</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">/</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">本隐私政策</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">），并提醒您：</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1. </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">在您使用<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>服务时，<u style=\"-webkit-tap-highlight-color: transparent;\">请您勾选确认同意本政策，在您同意前我们不会收集您的任何隐私信息。</u>您同意<u style=\"-webkit-tap-highlight-color: transparent;\">本政策并使用<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>的，</u>我方<u style=\"-webkit-tap-highlight-color: transparent;\">将</u>按照本政策收集、存储、使用、披露和保护您的个人信息。我方希望通过本政策清楚地向您介绍对您个人信息的处理方式。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2. </span></u><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">根据有关法律法规要求，网络产品、服务具有收集用户信息功能的，其提供者应当向用户明示并取得同意。我方特此通过本政策向您告知收集、使用用户个人信息的目的、方式和范围，查询、更正信息的渠道以及拒绝提供信息的影响。</span></u></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3. </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">本政策不适用于其他第三方向您提供的服务，例如我方平台上的第三方依托我方平台向您提供服务时（如第三方支付渠道），您向第三方提供的个人信息不适用于本政策，除非法律有明确规定，我方对任何第三方使用由您提供的信息不承担任何责任。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">4. </span></u><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">在使用宠也</span></u><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">各项产品或服务前，请您务必仔细阅读并理解本政策，在确认充分理解并同意后使用相关产品或服务。当您使用宠也</span></u><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">提供的任一服务时，即表示您已同意我们按照本政策来合法收集、使用和保护您的个人信息。如对本政策内容有任何疑问、意见或建议，您可通过电子邮箱</span></u><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">863627472@qq.com</span></u><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">与我们联系。</span></u></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">本隐私政策部分将帮助您了解以下内容：</span></strong><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">一、我们如何收集您的信息</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">二、我们如何使用信息</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">三、您发布的共享信息或公开信息</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">四、我们如何共享、转让、披露信息</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">五、我们如何存储信息</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">六、我们如何保护您的个人信息安全</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">七、未成年人保护</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">八、您如何管理自己的信息</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">九、您的个人信息如何在全球范围转移</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">十、本隐私政策的修订和更新</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">十一、如何联系我们</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: 宋体; color: #242529; letter-spacing: -0.25pt;\">一、我们如何收集您的信息</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">为向您提供文字、图片及视听内容的展示或播放等服务，并提供更好、更优、更个性化的服务，我们将根据您使用的服务收集您的如下信息：</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（一）收集方式为您向我们提供的信息</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">如果您下载<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>未注册的，您可以使用<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>浏览、搜索、下载资源、分享帖子、关注话题、功能，但您无法使用发帖、发评论、点赞、发送动态等注册用户可使用的功能。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">您可以通过本人微信授权的方式注册成为<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>用户，也可以通过本人手机号码注册成为<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>用户，<u style=\"-webkit-tap-highlight-color: transparent;\">或者经您授权通过本机号码一键登录</u>。注册过程中，根据您选择的注册方式，<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>可能收集您的</span><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">QQ/</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">微信用户名、头像、性别、年龄、手机号码</span></u></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">等个人信息，注册成功后请妥善处理您的个人账户密码等信息。注册成为<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>用户的，可以使用<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>提供的关注、搜索、浏览、发布内容、评论、站内留言等功能。<u style=\"-webkit-tap-highlight-color: transparent;\">注册时，我们会通过弹窗提示您允许访问</u></span><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span></u><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">设备上的照片、媒体内容和文件</span></u><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span></u><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">及</span></u><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span></u><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">设备信息</span></u><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span></u><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">，如选择</span></u><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span></u><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">禁止</span></u><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span></u><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">的会影响您查看或下载宠也的视频、图片等内容。注册后您可以编辑在平台中的个人资料，根据您编辑的内容，宠也可能会收集您编辑的<strong style=\"-webkit-tap-highlight-color: transparent;\">昵称、头像、签名、性别、生日、学校、城市</strong>。</span></u></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">注册用户使用<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span><strong>下载</strong>内容的，需要您授权访问您的<strong style=\"-webkit-tap-highlight-color: transparent;\">存储<u style=\"-webkit-tap-highlight-color: transparent;\">信息（即需要您同意修改</u></strong></span><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">/</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">删除</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">SD</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">卡内容、读外部存储权限）</span></u></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">。如您尚未授权的，我们会通过弹窗的形式提示您给予授权，在获得您的授权后，您可以在<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>中下载视频、音频、图片、<u style=\"-webkit-tap-highlight-color: transparent;\">复制文字</u>等。如未授权的，您将无法使用相关功能。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">注册用户使用<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>发布语音帖、录制小视频、发送语音评论、发送语音私信，以及在直播中申请上麦等业务的，我们需要您授权开通<strong style=\"-webkit-tap-highlight-color: transparent;\">相机和录音器</strong>访问权限；使用<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>神配音功能的，我们需要您授权开通<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">录音</u></strong>访问权限。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">注册用户使用同城服务的，还需您开通个人<strong style=\"-webkit-tap-highlight-color: transparent;\">位置信息</strong>，开通后您可以获取同城的信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">所有注册用户根据在<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>平台注册时间、发帖及粉丝数等条件的不同，可以向我方申请获得<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>勋章。申请获得</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">达人认证</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">话题小管家</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">勋章和申请加入</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">审核护卫队</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">的，<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>需要您提供<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">手机号码</u></strong>进行认证；申请获得</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">原创认证</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">勋章的，<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>需要您提供您运营的<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">账户名称、微信号</u></strong>等个人信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\"><span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>会不定期向获得勋章用户发送奖品，或者通过抽奖活动向获奖用户发送奖品。该功能下，您需向<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>提供您的<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">姓名、联系电话和地址</u></strong>以便为您寄送奖品，否则无法获得奖品。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">如您成为宠也会员享受会员服务的，我方会根据您的授权收集成为宠也会员的交易信息。</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（二）采集方式为在您使用服务过程中自动采集的信息</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">为了<strong style=\"-webkit-tap-highlight-color: transparent;\">提供并优化您需要的服务，提供个性化服务需要（第二条中具体描述）</strong>。我们会根据您在软件安装及使用中授予的具体权限，接收并记录的您的浏览器和计算机上、移动设备等上设备相关信息，这些信息包括：</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1.</span></strong><strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">浏览、搜索、播放内容功能，<u style=\"-webkit-tap-highlight-color: transparent;\">所收集的个人信息为设备基本信息（包括设备型号、操作系统类型及版本号、屏幕密度及分辨率、国际移动设备识别码（</u></span></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">IMEI/IDFA</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）、网络设备硬件地址（</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">MAC</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）。下同）、设备位置（包括通过</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">gps</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">、</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">wifi</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">信号接入点和基站传感器信息获得的位置信息）、</span></u></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">日志信息<strong style=\"-webkit-tap-highlight-color: transparent;\">（包括您的搜索查询内容、浏览记录、播放记录、播放时长、</strong></span><strong><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">IP</span></strong><strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">地址）<u style=\"-webkit-tap-highlight-color: transparent;\">设备安装列表、网络类型</u></span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">。从您的各种设备上收集到的信息之间的关联关系，以保持我们能在这些设备上为您提供一致的服务。<strong style=\"-webkit-tap-highlight-color: transparent;\">如上信息的收集，都为了在使用推荐技术为您提供更符合您喜好或者习惯的服务，<u style=\"-webkit-tap-highlight-color: transparent;\">以及提示您网络流量使用情况</u></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">请注意，单独的设备信息、日志信息等是无法识别特定自然人身份的信息。</span></u></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">如果我们将这类非个人信息与其他信息结合用于识别特定自然人身份，或者将其与个人信息结合使用，则在结合使用期间，这类非个人信息将被视为个人信息，除取得您授权或法律法规另有规定外，我们会将该类个人信息做匿名化、去标识化处理。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">上述信息为我方平台向您提供核心功能所必须。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2.</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">您在<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>上传图文、音频、视频的，您上传内容本身包含的信息，包括拍摄或上传的共享照片或录像的日期、时间和地点。该等信息为您在我方平台上传视频所必须，如您无需在我方平台上传视频可无需提供上述信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3.</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">您使用<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>的用户服务功能的，您提供的<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">联系方式及您与我方客服人员的沟通记录</u></strong>将会被我们收集，用于与您联系和帮助您解决问题，或记录相关问题的处理方案及结果。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">4.</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">当您使用我们的私信功能时，所有信息会经过我们的反垃圾系统进行过滤。涉及色情、广告、涉暴恐类的有害信息会被我们的反垃圾系统进行屏蔽。系统不会收集您的私信记录。</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（三）通过间接获得的方式收集的信息</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">您使用我方的关联方、我方合作伙伴的产品和服务，与我方产品服务之间交互的行为信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">为了给您提供更好、更优、更加个性化的服务，或共同为您提供服务，或为了预防互联网欺诈的目的，我方可能会通过与第三方合作或达成其他方式的合作，我们的关联方、合作伙伴会在合作的范围内，依据法律的规定及与您的约定的前提下，向我方分享或者我方向对方分享您的个人信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">当您通过我们产品或服务使用上述服务时，您授权我们根据实际业务及合作需要，从我们关联公司处接收、汇总、分析我们确认其来源合法或您授权同意其向我们提供的您的个人信息或交易信息。我们承诺，我们已对上述个人信息的来源的合法性进行了确认。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（四）使用</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"> Cookie </span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">等技术收集的信息</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">Cookie</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">：为使您获得更轻松的访问体验，您访问我方平台网站或使用我方平台提供的服务时，我们可能会通过小型数据文件识别您的身份，以帮您省去重复输入注册信息的步骤，或者帮助判断您的账户安全。这些数据文件可能是</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">Cookie</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">，</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">Flash Cookie</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">，或您的浏览器或关联应用程序提供的其他本地存储（统称</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;Cookie&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">请您理解，我们的某些服务只能通过使用</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;Cookie&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">才可得到实现。如果您的浏览器或浏览器附加服务允许，<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">您可以修改对</u></strong></span><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">Cookie</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">的接受程度或者拒绝我方的</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">Cookie</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">，但这一举动在某些情况下可能会影响您安全访问我方平台相关网站和使用我方平台提供的服务。</span></u></strong></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: 宋体; color: #242529; letter-spacing: -0.25pt;\">二、我们如何使用信息</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我们会出于本政策所述的以下目的，收集和使用您的个人信息：</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1.</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">帮助您成为我们的会员或帮助您成为可进行发帖、评论等交互行为的用户。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2.</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">服务提供：向您提供各项服务（内容浏览、推荐、搜索、弹幕），并设计、维护、改进这些服务。服务提供中仅限于我方相关运营服务人员可以访问您的个人信息，并形成用户画像，目的是为了向您推送您喜欢话题或者内容，提升客户体验。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3.</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">个性化服务：包括向您展示、推荐内容和广告定向投放，推送消息，具体包括向您推荐您可能感兴趣的内容，向您发出产品和服务信息、内容推荐信息、合作信息，或通过系统向您展示个性化的第三方推广信息，或者向您提供与您更加相关的广告、个性化消息等以替代普遍投放的广告和消息。为向您提供个性化的信息搜索和浏览服务，我们会根据您的<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">浏览及搜索记录、必要的设备信息、位置信息（获得您的授权），提取您的浏览、搜索偏好、行为习惯、位置信息</u></strong>特征，基于特征标签进行间接人群画像并展示、推送信息，提供与您更加相关的广告。你可以通过</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><u style=\"-webkit-tap-highlight-color: transparent; outline: none;\" tabindex=\"-1\" role=\"link\"><span style=\"font-size: 9pt; color: #149eff; letter-spacing: -0.2pt;\">推荐设置</span></u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">或者屏蔽话题或用户的方式进行服务更改。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我们收集、使用您的上述信息时进行了去标识化处理，数据分析仅对应特定、无法直接关联用户身份的编码，无法与您的真实身份相关联。</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">4.</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">风险识别：我们可能使用您的个人信息以预防、发现、调查欺诈、危害安全、非法或违反与我们或其关联方协议、政策或规则的行为，如账号活动异常、多端登录、流量异常等，以保护您、我们其他用户，或我们及其关联方的合法权益。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">5.</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">调查及活动：<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>勋章的部分用户赢取奖品或者参与有关我们的抽奖活动。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">6.</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">安全保障功能</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">为提高我们及合作伙伴提供服务的安全性，确保操作环境安全与识别账号异常状态，保护您或其他用户或公众的人身财产安全免遭侵害，更好地预防计算机病毒、钓鱼网站、网络攻击等安全风险，我们可能使用或整合您的会员信息、交易信息、设备信息、有关网络日志以及我们的合作伙伴取得您授权或依据法律共享的信息，来综合判断您账户及交易风险、进行身份验证、检测及防范安全事件，并依法采取必要的记录、审计、分析、处置措施。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">上述</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2-6</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">项业务场景中未产生新的个人信息，如您认为上述自动化决策机制对您产生了实质性不利影响，您可以通过站内私信、电子邮件与我们联系，我们将在合理范围内为您提供干预。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">7.</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">公共利益维护为目的的使用</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">特殊情况下，我们将有权使用您的个人信息而无需征得您的同意，该等特殊情况包括：</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />1</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）与国家安全、国防安全直接相关；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />2</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）与公共安全、公共卫生、重大公共利益直接相关；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />3</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）于犯罪侦查、起诉、审判和判决执行等直接相关；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />4</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）出于维护您或其他个人的生命、财产等重大合法权益但又很难得到您或其他个人本人同意；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />5</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）所收集个人信息时您本人自行向社会公开的；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />6</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）其他法律法规规定的情形。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">除上述场景所涵盖目的外，如需将您的个人信息用于其他目的，我们将通过公告方式向您发出通知，以重新征得您的明示同意。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: 宋体; color: #242529; letter-spacing: -0.25pt;\">三、您发布的共享信息或公开信息</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">您可以通过我们的服务发布内容、建立联系和相互分享。当您通过我们的服务发布内容时，可能会被其他<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>用户或者游客看到您的<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">头像、用户名、性别、您的宠也勋章、您参与的话题、点赞数、关注数、粉丝数。</u></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">在使用<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify; caret-color: #242529;\">宠也</span>进行浏览、发布内容、发表评论和交流时，可能会披露个人信息。<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">请您妥善保护自己的个人信息，仅在必要的情形下向他人提供、展示自己的信息。</u></strong>如您发现自己的个人信息泄密，尤其是您的账户或密码发生泄露，请您立即联系我方平台网站客服，采取相应措施。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">公开信息是指<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">您公开分享的任何信息，如您发布的内容、发表的评论，您的头像、昵称、用户名称等。</u></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">请注意，您在使用我们的服务时所共享的内容和信息，可能会涉及您的个人敏感信息。请您更加谨慎地考虑，是否在使用我们的服务时披露甚至公开分享相关个人敏感信息。</span></u></strong></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: 宋体; color: #242529; letter-spacing: -0.25pt;\">四、我们如何共享、转让、披露信息</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（一）共享和披露</span></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我们对您的信息承担保密义务，除下列情形外，我们不会与任何其他第三方共享您的个人信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1. </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">在获得您的明确同意或授权或您主动选择的情况下共享。获得您的授权或明确同意后，我们会与其他公司、组织和个人分享您的个人信息。例如，如果我们委托第三方向您提供产品或服务（如用户活动、抽奖奖品寄送、积分兑换奖品时），我们会在征得您同意后将上述信息共享给第三方，如果您拒绝提供此类信息，我们将无法完成相关交付服务。只有您选择同意，我们才会共享您的个人敏感信息。<strong style=\"-webkit-tap-highlight-color: transparent;\">获得您明确同意或基于您的主动选择，我们可能会公开披露您的个人信息。</strong></span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2. </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">在法定情形下的共享和披露。我们可能会根据<strong style=\"-webkit-tap-highlight-color: transparent;\">法律法规规定、诉讼争议解决需要，或按行政、司法机关依法提出的要求，对外共享您的个人信息。</strong>例如如果您出现违反法律法规或严重违反我方平台相关协议规则的情况，或为保护我方平台网站及其关联公司用户或公众的人身财产安全免遭侵害，我们可能依据法律法规或我方平台相关协议规则披露关于您的个人信息，包括相关违规行为以及我方平台已对您采取的措施。例如，若您或您使用的账号上传违规内容而严重违反我方平台规则、触犯法律法规和</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">/</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">或违背公序良俗，造成重大社会影响，给我方平台造成声誉损失，我们可能会公开披露您的信息与处罚情况。<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">（此处应说明公开披露可能会包括的个人敏感信息的类型，以及将采取的安全措施）</u></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3. </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">为便于我们基于关联账号共同向您提供服务（如<strong style=\"-webkit-tap-highlight-color: transparent;\">通过</strong></span><strong><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">SDK</span></strong><strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">、</span></strong><strong><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">API</span></strong><strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">的技术方式与第三方进行合作</span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">），推荐您可能感兴趣的信息或保护我方关联公司或其他用户或公众的人身财产安全免遭侵害，您的个人信息可能会与我们的关联公司共享。我们只会共享<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">必要的个人信息</u></strong>（如为便于您使用我方账号登录并使用我们关联公司产品或服务，我们会向关联公司共享您必要的个人信息），且受本隐私政策中所声明目的的约束。如果我们共享您的个人敏感信息或关联公司改变个人信息的使用及处理目的，将再次征求您的授权同意。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">4. </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">与授权合作伙伴共享。我们会委托授权合作伙伴为您提供某些服务或代表我们履行职能，<strong style=\"-webkit-tap-highlight-color: transparent;\">我们仅会出于合法、正当、必要、特定、明确的目的共享您的信息，授权合作伙伴只能接触到为其履行职责所需信息，且不能将此信息用于任何其他目的。</strong></span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">目前，我们的授权合作伙伴包括以下类型：</span></strong><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（</span></strong><strong><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">1</span></strong><strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）广告、分析服务类的授权合作伙伴。</span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">除非得到您的许可，否则我们不会将您的个人身份信息（指可以识别您身份的信息，例如手机号码，通过这些信息可以联系到您或识别您的身份）与提供广告、分析服务的合作伙伴共享。我们仅会向这些合作伙伴提供不能识别个人身份的统计信息，帮助他们了解其受众或客户。</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">受限于基于合作的技术能力，根据您所使用的硬件设施不同，部分合作方可能会获取您的</span><span class=\"apple-converted-space\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&nbsp;</span></span><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">设备型号、操作系统类型及版本号、屏幕密度及分辨率、国际移动设备识别码（</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">IMEI/IDFA</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）、网络设备硬件地址（</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">MAC</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）等设备信息。但我们会要求合作方对信息进行技术保护，并不得用于任何非法的目的。</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（</span></strong><strong><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">2</span></strong><strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）供应商、服务提供商和其他合作伙伴。</span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">。我们将信息发送给支持我们业务的供应商、服务提供商和其他合作伙伴<strong style=\"-webkit-tap-highlight-color: transparent;\">（如硬件厂商、电信运营商等）</strong>，这些支持包括提供技术基础设施服务、分析我们服务的使用方式、衡量广告和服务的有效性、提供客户服务、支付便利或进行学术研究和调查。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">对我们与之共享个人信息的公司、组织和个人，我们会与其签署严格的数据保护协议，要求他们按照我们的说明、本政策以及其他任何相关的保密和安全措施来处理个人信息。</span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">如果我们共享您的个人敏感信息或授权合作伙伴改变个人信息的使用及处理目的，将再次征求您的授权同意。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">3</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）第三方</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">SDK</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">类服务商：我们的产品中可能会包含第三方</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">SDK</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">或其他类似的应用程序，如您在我们平台上使用这类由第三方提供的服务时，您同意将由其直接收集和处理您的信息（如以嵌入代码、插件等形式）。</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">前述服务商收集和处理信息等行为遵守其自身的隐私条款，而不适用于本政策。为了最大程度保障您的信息安全，我们建议您在使用任何第三方</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">SDK</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">类服务前先行查看其隐私条款。为保障您的合法权益，如您发现这等</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">SDK</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">或其他类似的应用程序存在风险时，建议您立即终止相关操作并及时与我们取得联系。</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">5. </span></strong><strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">协助处理争议。</span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">如因您发布的内容造成对第三方侵权，投诉一方、司法机构或行政执法机构提出信息披露请求的，我方会视情况向该上述机构提供被投诉用户的联系方式等必要信息，以促成交纠纷的解决。我方平台仅在法律有明确规定的情况下承担相应的法律责任。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（二）转让</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我们不会将您的个人信息转让给任何公司、组织和个人，但以下情况除外：</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />1. </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">在获取明确同意的情况下转让：获得您的明确同意后，我们会向其他方转让您的个人信息；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />2.</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">在我方平台服务提供者发生合并、收购或破产清算情形，或其他涉及合并、收购或破产清算情形时，如涉及到个人信息转让，我们会要求新的持有您个人信息的公司、组织继续受本政策的约束，否则我们将要求该公司、组织和个人重新向您征求授权同意。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（三）共享、转让、披露个人信息时事先征得授权同意的例外</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">以下情形中，共享、转让、公开披露您的个人信息无需事先征得您的授权同意：</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />1</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）与国家安全、国防安全有关的；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />2</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）与公共安全、公共卫生、重大公共利益有关的；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />3</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）与犯罪侦查、起诉、审判和判决执行等有关的；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />4</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）出于维护您或其他个人的生命、财产等重大合法权益但又很难得到本人同意的；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />5</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）您自行向社会公众公开的个人信息；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />6</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）从合法公开披露的信息中收集个人信息的，如合法的新闻报道、政府信息公开等渠道。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">根据法律规定，共享、转让经去标识化处理的个人信息，且确保数据接收方无法复原并重新识别个人信息主体的，不属于个人信息的对外共享、转让及公开披露行为，对此类数据的保存及处理将无需另行向您通知并征得您的同意。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">如您不同意我们按照上述条款向第三方提供您的个人信息，请您立即停止使用我方平台服务。</span></strong></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: 宋体; color: #242529; letter-spacing: -0.25pt;\">五、我们如何存储信息</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我方收集的有关您的信息和资料将保存在我方及（或）我方关联公司所控制、使用、租赁的服务器上，我方对您相关资料信息会进行严格的保密和使用控制。这些信息和资料可能传送至您所在国家、地区或我方收集信息和资料所在地并在该地被访问、存储和展示。关于您的个人信息的存储和跨境转移规则请见第十条。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">数据保留期限：</span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我们会采取合理可行的措施避免收集无关的个人信息。一般情况下我们会将您的个人信息保存三年。<strong style=\"-webkit-tap-highlight-color: transparent;\">上述保存期限为达成本政策所述目的所需的最短期限，除非您同意延长保留期或受到法律的允许。保存期限到期后，我们将对您的个人信息进行删除或匿名化处理。</strong></span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">如本平台服务决定停止运营时，我们将在相关服务停止运营后停止继续收集您的个人信息。我们将以公告形式将停止运营通知向您送达。对已持有的您的个人信息将进行删除或匿名化处理。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: 宋体; color: #242529; letter-spacing: -0.25pt;\">六、我们如何保护您的个人信息安全</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">为确保我们所收集的您的个人信息安全，我们承诺将努力达到合理的安全水平，现将具体安全措施和安全能力陈述如下：</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">一</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">.<span class=\"apple-converted-space\">&nbsp;</span></span><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">技术保护：</span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（一）为保障您的信息安全，我们努力采取各种符合业界标准的合理的物理、电子和管理方面的安全措施来保护您的信息，使您的信息不会被泄漏、毁损或者丢失，包括但不限于</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">SSL</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">、信息加密存储、数据中心的访问控制。我们会使用加密技术提高个人信息的安全性；我们会使用受信赖的保护机制防止个人信息遭到恶意攻击；我们会部署访问控制机制，尽力确保只有授权人员才可访问个人信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">二</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">.<span class=\"apple-converted-space\">&nbsp;</span></span><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">安全体系保证：</span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我们有行业先进的以数据为核心，围绕数据生命周期进行的数据安全管理体系，从组织建设、制度设计、人员管理、产品技术等方面多维度提升整个系统的安全性。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">三</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">.<span class=\"apple-converted-space\">&nbsp;</span></span><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">人员安全管理：</span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（三）我们对可能接触到您的信息的员工或外包人员也采取了严格管理，包括但不限于根据岗位的不同采取不同的权限控制，与他们签署保密协议，监控他们的操作情况等措施。我方会按现有技术提供相应的安全措施来保护您的信息，提供合理的安全保障，我方将尽力做到使您的信息不被泄漏、毁损或丢失。我们会举办安全和隐私保护培训课程，加强员工对于保护个人信息重要性的认识。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">四</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">.<span class=\"apple-converted-space\">&nbsp;</span></span><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">敏感信息及密码保护提示：</span></strong><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />&emsp;a)</span><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">个人敏感信息保护注意：</span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">您在使用我们服务时自愿共享甚至公开分享的信息，可能会涉及您或他人的个人信息甚至个人敏感信息，例如您的头像图片上传，例如如您在评论、发帖、发弹幕时选择上传包含个人信息的图片。请您更加谨慎地考虑，是否在使用我们的服务时共享甚至公开分享相关信息。</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />&emsp;b)<span class=\"apple-converted-space\">&nbsp;</span></span><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">请使用复杂密码或使用动态验证码</span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">，协助我们保证您的账号安全。我们将尽力保障您发送给我们的任何信息的安全性。如果我们的物理、技术或管理防护设施遭到破坏，导致信息被非授权访问、公开披露、篡改或毁坏，导致您的合法权益受损，我们将承担相应的法律责任。</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />&emsp;c)<span class=\"apple-converted-space\">&nbsp;</span></span><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">您的账户均有安全保护功能，请妥善保管您的账户及密码信息。</span></u></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我方将通过向其它服务器备份、对用户密码进行加密等安全措施确保您的信息不丢失，不被滥用和变造。尽管有前述安全措施，但同时也请您理解在信息网络上不存在</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">完善的安全措施</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">五</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">.<span class=\"apple-converted-space\">&nbsp;</span></span><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">信息披露提示及密码泄露处理：</span></strong><span class=\"apple-converted-space\"><strong><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&nbsp;</span></strong></span><strong><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">请注意互联网并非绝对安全的环境。在使用我方平台某些服务时，您不可避免的要向交易对方或潜在的交易对方披露自己的个人信息，如银行账户信息、联络方式或者邮政地址。</span></u></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（五）请您妥善保护自己的个人信息，仅在必要的情形下向他人提供。如您发现自己的个人信息泄密，尤其是你的账户及密码发生泄露，请您立即联络我方客服，以便我方采取相应措施。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">六</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">.<span class=\"apple-converted-space\">&nbsp;</span></span><strong style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">信息安全事件处理：</span></strong><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">在不幸发生个人信息安全事件后，我们将按照法律法规的要求向您告知：安全事件的基本情况和可能的影响、我们已采取或将要采取的处置措施、您可自主防范和降低风险的建议、对您的补救措施等。事件相关情况我们将以邮件、信函、电话、推送通知等方式告知您，难以逐一告知个人信息主体时，我们会采取合理、有效的方式发布公告。同时，我们还将按照监管部门要求，上报个人信息安全事件的处置情况。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: 宋体; color: #242529; letter-spacing: -0.25pt;\">七、未成年人保护</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我们重视未成年人的个人信息保护，如您为未成年人，<strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\">建议您请您的监护人仔细阅读本隐私政策，并在征得您的监护人同意的前提下使用我们的服务或向我们提供信息，使用时应当打开</u></strong></span><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">青少年模式</span></u></strong><strong><u><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span></u></strong><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">。</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">对于经父母或监护人同意使用我们的产品或服务而收集未成年人个人信息的情况，我们只会在法律法规允许、父母或监护人明确同意或者保护未成年人所必要的情况下使用、共享、转让或披露此信息。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: 宋体; color: #242529; letter-spacing: -0.25pt;\">八、您如何管理自己的信息</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我们按《中华人民共和国网络安全法》的要求，通过提供便捷的方法，让您可以访问、更正及删除自己的账户信息或使用我们的服务时您提供的其他个人信息。您可以通过如下方式访问及管理您的个人信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（一）访问您的个人信息</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">您有权访问您的个人信息，法律法规规定的例外情况除外。您可以通过以下方式自行访问您的个人信息：</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">您可以通过</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我的</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">查看您的个人资料。通过</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">编辑资料</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">及</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">设置</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">对您的个人信息进行编辑和管理。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（二）更正或补充您的个人信息</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">当您发现我们处理的关于您的个人信息有错误时，您有权要求我们做出更正或补充。您可以通过</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（一）访问您的个人信息</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">中列明的方式提出更正或补充申请。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><strong style=\"-webkit-tap-highlight-color: transparent;\"><u style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（三）删除您的个人信息</span></u></strong></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">您可以通过</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（一）访问您的个人信息</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">中列明的方式删除您的部分个人信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">若我们决定响应您的删除请求，我们还将同时尽可能通知从我们处获得您的个人信息的主体，要求其及时删除，除非法律法规另有规定，或这些主体获得您的独立授权。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">当您从我们的服务中删除信息后，我们可能不会立即从备份系统中删除相应的信息，但会在备份更新时删除这些信息。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（四）改变您授权同意的范围</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">每个业务功能需要一些基本的个人信息才能得以完成。除此之外，对于额外个人信息的收集和使用，您可以在</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&ldquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">设置</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&rdquo;</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">中或与我方平台客服联系给予或收回您的授权同意。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">当您收回同意后，我们将不再处理相应的个人信息。<strong style=\"-webkit-tap-highlight-color: transparent;\">但您收回同意的决定，不会影响此前基于您的授权而开展的个人信息处理。</strong></span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（五）个人信息主体注销账户</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">如您需要注销的话，也可联系我方平台客服，客服在核实用户身份后，会进行释放用户的手机和邮箱，达到注销的效果。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">在您主动注销账户之后，我们将停止为您提供产品或服务，根据适用法律的要求删除您的个人信息，或使其匿名化处理。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（六）约束信息系统自动决策</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">在某些业务功能中，我们可能仅依据信息系统、算法等在内的非人工自动决策机制做出决定。如果这些决定显著影响您的合法权益，您有权要求我们做出解释，我们也将在不侵害我方平台商业秘密或其他用户权益、社会公共利益的前提下提供申诉方法。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（七）响应您的上述请求</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">为保障安全，您可能需要提供书面请求，或以其他方式证明您的身份。我们可能会先要求您验证自己的身份，然后再处理您的请求。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我们将在</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">15</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">天内做出答复。如您不满意，还可以通过我方平台客服发起投诉。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">对于您合理的请求，我们原则上不收取费用，但对多次重复、超出合理限度的请求，我们将视情收取一定成本费用。对于那些无端重复、需要过多技术手段（例如，需要开发新系统或从根本上改变现行惯例）、给他人合法权益带来风险或者非常不切实际的请求，我们可能会予以拒绝。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">在以下情形中，按照法律法规要求，我们将无法响应您的请求：</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />&emsp;1) </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">与国家安全、国防安全有关的；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />&emsp;2) </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">与公共安全、公共卫生、重大公共利益有关的；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />&emsp;3) </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">与犯罪侦查、起诉、审判和执行判决等有关的；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />&emsp;4) </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">有充分证据表明个人信息主体存在主观恶意或滥用权利的；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />&emsp;5) </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">响应您的请求将导致您或其他个人、组织的合法权益受到严重损害的；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />&emsp;6) </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">涉及商业秘密的。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: 宋体; color: #242529; letter-spacing: -0.25pt;\">九、您的个人信息如何在全球范围转移</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我们在中华人民共和国境内运营中收集和产生的个人信息，存储在中国境内，以下情形除外：</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />1. </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">法律法规有明确规定；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />2. </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">获得您的明确授权；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">针对以上情形，我们会确保依据本隐私政策对您的个人信息提供足够的保护。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: 宋体; color: #242529; letter-spacing: -0.25pt;\">十、本隐私政策的修订和更新</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">我方平台有权修改隐私政策并在修订生效前通过我方平台公告或以其他适当方式通知您。该等情况下，若您继续使用我们的服务，即表示同意受经修订的我方平台隐私政策的约束。</span></p>\r\n<h3 style=\"margin: 0cm 0cm 11.25pt; line-height: 36.6933px; break-after: avoid; font-size: 16pt; font-family: Calibri, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 10.5pt; line-height: 24.08px; font-family: 宋体; color: #242529; letter-spacing: -0.25pt;\">十一、如何联系我们</span></h3>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（一）宠也运营主体及个人信息保护负责人：</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">名称：东莞市东城友看网络工作室</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">注册地：广东省深圳市龙岗区</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">（二）您可以通过以下方式与我们联系，我们将在十五（</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">15</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">）个工作日内回复您的请求；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />1. </span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">如对本政策内容有任何疑问、意见或建议，您可通过发送电子邮件至</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">863627472@qq.com</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">与我们联系；</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" />2.</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">如果您认为我们的个人信息处理行为损害了您的合法权益，您还可以通过向被告住所地有管辖权的法院提起诉讼来寻求解决。</span></p>', NULL, '2021-04-25 09:07:00', '2022-09-02 14:24:53');
INSERT INTO `wx_clause` VALUES (23, '免责声明', '<h1 style=\"margin: 0cm; text-align: center; line-height: 70.4px; break-after: avoid; font-size: 22pt; font-family: Calibri, sans-serif; background: white;\" align=\"center\"><span style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\">免责声明</span></h1>\r\n<h4 style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-family: PingFangSC-Regular, \'Microsoft YaHei\', \'\\微软雅黑\', Tahoma, Helvetica, sans-serif; color: #343a40; font-size: 12px; letter-spacing: 0.5px; background-color: #ffffff; text-align: center;\" align=\"center\" data-v-2daed986=\"\" data-spm-anchor-id=\"a214ky.13184207.0.i2.79b12437WzQ4lN\"><span style=\"font-size: 9pt; line-height: 18.72px; font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\">最新版本生效日期：<span lang=\"EN-US\">2021</span>年<span lang=\"EN-US\">04</span>月<span lang=\"EN-US\">28</span>日</span></h4>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\">&nbsp;</p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\"><span style=\"letter-spacing: -0.266667px;\">一</span>、</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\"><span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify;\">宠也</span>不对用户发表的内容的正确性进行保证。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">二、</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">用户在<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify;\">宠也</span>发表的内容仅表明其个人的立场和观点，并不代表<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify;\">宠也</span>的立场或观点。作为内容的发表者，需自行对所发表内容负责，因所发表内容引发的一切纠纷，由该内容的发表者承担全部法律及连带责任。<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify;\">宠也</span>不承担任何法律及连带责任。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">三、</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\"><span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify;\">宠也</span>不保证服务一定能满足用户的要求，也不保证服务不会中断，对服务中断的及时性、安全性和准确性也不做保证。</span></p>\r\n<p><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">&nbsp;</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\">&nbsp;</p>', NULL, '2021-05-14 16:40:52', '2022-09-02 14:19:26');
INSERT INTO `wx_clause` VALUES (24, '充电声明', '<h1 style=\"margin: 0cm; text-align: center; line-height: 70.4px; break-after: avoid; font-size: 22pt; font-family: Calibri, sans-serif; background: white;\" align=\"center\"><span style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\">充电声明</span></h1>\r\n<h4 style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-family: PingFangSC-Regular, \'Microsoft YaHei\', \'\\微软雅黑\', Tahoma, Helvetica, sans-serif; color: #343a40; font-size: 12px; letter-spacing: 0.5px; background-color: #ffffff; text-align: center;\" align=\"center\" data-v-2daed986=\"\" data-spm-anchor-id=\"a214ky.13184207.0.i2.79b12437WzQ4lN\"><span style=\"font-size: 9pt; line-height: 18.72px; font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\">最新版本生效日期：<span lang=\"EN-US\">2021</span>年<span lang=\"EN-US\">05</span>月<span lang=\"EN-US\">28</span>日</span></h4>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\">&nbsp;</p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\"><br style=\"-webkit-tap-highlight-color: transparent;\" /></span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\"><span style=\"letter-spacing: -0.266667px;\">一</span>、用户在</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">对</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\"><span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify;\">宠也</span>小程序的内容进行充电，</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">因充电行为属于捐赠行为，</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">充电成功（支付成功）后<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify;\">宠也</span>不支持退款服务</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">，望各位<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify;\">宠也</span>用户</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">根据自身经济实力酌情充电</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">二、</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">用户在</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">对</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\"><span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify;\">宠也</span>小程序的内容进行充电，充电的金额（实际支付金额）将会</span><strong><u><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">全部</span></u></strong><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">给到被充电内容所属的用户账号，<span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify;\">宠也</span>官方承诺不会从中收取（</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">或扣除</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">）任何费用。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">三、</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\"><span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify;\">宠也</span>不保证服务一定能满足用户的要求，也不保证服务不会中断，对服务中断的及时性、安全性和准确性也不做保证，望各位</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\"><span style=\"font-family: \'PingFang SC\', sans-serif; letter-spacing: -0.266667px; text-align: justify;\">宠也</span>用户给予理解</span><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">。</span></p>\r\n<p><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">&nbsp;</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\">&nbsp;</p>', NULL, '2021-05-28 14:03:53', '2022-09-18 22:18:48');

-- ----------------------------
-- Table structure for wx_collect
-- ----------------------------
DROP TABLE IF EXISTS `wx_collect`;
CREATE TABLE `wx_collect`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `posts_id` bigint(20) NOT NULL COMMENT '帖子ID',
  `posts_user_id` bigint(20) NOT NULL COMMENT '帖子用户id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`posts_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_collect
-- ----------------------------
INSERT INTO `wx_collect` VALUES (28, 101, 10001, 10000, NULL, '2021-05-16 14:48:37', '2021-05-16 14:48:37');
INSERT INTO `wx_collect` VALUES (29, 151, 10000, 10000, NULL, '2021-05-16 15:00:12', '2021-05-16 15:00:12');
INSERT INTO `wx_collect` VALUES (30, 141, 10000, 10000, NULL, '2021-05-16 15:01:44', '2021-05-16 15:01:44');
INSERT INTO `wx_collect` VALUES (35, 153, 10001, 10000, NULL, '2021-05-26 10:24:57', '2021-05-26 10:24:57');
INSERT INTO `wx_collect` VALUES (117, 384, 11584, 11598, NULL, '2022-09-09 02:34:41', '2022-09-09 02:34:41');
INSERT INTO `wx_collect` VALUES (118, 385, 11584, 11603, NULL, '2022-09-19 18:07:57', '2022-09-19 18:07:57');

-- ----------------------------
-- Table structure for wx_comment
-- ----------------------------
DROP TABLE IF EXISTS `wx_comment`;
CREATE TABLE `wx_comment`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `posts_id` bigint(20) NOT NULL COMMENT '文章ID',
  `posts_user_id` bigint(20) NOT NULL COMMENT '文章用户id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名称',
  `user_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户头像',
  `comment_agent_id` bigint(20) NULL DEFAULT NULL COMMENT '回复用户ID',
  `comment_agent_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '回复用户名称',
  `comment_agent_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '回复用户头像',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '评论内容',
  `comment_img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论图片',
  `comment_id` bigint(20) NULL DEFAULT NULL COMMENT '评论的评论ID',
  `is_sticky` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否置顶',
  `comment_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态：0:审核中，1:审核通过，2:驳回',
  `device` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '客户端',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`posts_id`) USING BTREE,
  INDEX `index_2`(`posts_user_id`) USING BTREE,
  INDEX `index_3`(`comment_id`) USING BTREE,
  INDEX `index_4`(`comment_agent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 262 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '帖子评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_comment
-- ----------------------------
INSERT INTO `wx_comment` VALUES (260, 385, 11584, 11592, '神经蛙', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM7bdUpibTTYyPw2JLDuT1ZGtwl12ibFtQzyWQbzJroiczLEibyKtUNcSGUhXlyatF6iaZIFauOiaDib4EAzA/132', NULL, NULL, NULL, '哈哈哈', 'https://img.mini.chongyeapp.com/2022/09/08/abaf29e5c1f1d8b2da6f228da1ed04ce.png', NULL, 0, 1, NULL, NULL, '2022-09-08 21:58:34', '2022-09-27 10:10:18');
INSERT INTO `wx_comment` VALUES (261, 385, 11584, 11599, '明祥', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM4B3P676wS2amBicEFPSo1icuBdwAJzTicBmYWouJCXk8oib7qzJZ9zTOqG8dicMwhbXGnLeic8kxEibR7xg/132', NULL, NULL, NULL, 'gvv', NULL, NULL, 0, 1, NULL, NULL, '2022-09-11 16:14:24', '2022-09-27 09:46:20');

-- ----------------------------
-- Table structure for wx_comment_like
-- ----------------------------
DROP TABLE IF EXISTS `wx_comment_like`;
CREATE TABLE `wx_comment_like`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `comment_id` bigint(20) NOT NULL COMMENT '评论id',
  `comment_user_id` bigint(20) NOT NULL COMMENT '评论用户id',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`comment_id`) USING BTREE,
  INDEX `index_2`(`comment_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户评论点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_comment_like
-- ----------------------------

-- ----------------------------
-- Table structure for wx_comment_meta_num
-- ----------------------------
DROP TABLE IF EXISTS `wx_comment_meta_num`;
CREATE TABLE `wx_comment_meta_num`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) NOT NULL COMMENT 'comment_id',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_key',
  `meta_value` bigint(20) NOT NULL COMMENT 'meta_value',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`comment_id`, `meta_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_comment_meta_num
-- ----------------------------

-- ----------------------------
-- Table structure for wx_comment_meta_str
-- ----------------------------
DROP TABLE IF EXISTS `wx_comment_meta_str`;
CREATE TABLE `wx_comment_meta_str`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) NOT NULL COMMENT 'comment_id',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_key',
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_value',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`comment_id`, `meta_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_comment_meta_str
-- ----------------------------

-- ----------------------------
-- Table structure for wx_degree_increment
-- ----------------------------
DROP TABLE IF EXISTS `wx_degree_increment`;
CREATE TABLE `wx_degree_increment`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) NOT NULL COMMENT '目标id',
  `type` tinyint(4) NOT NULL COMMENT '类型（1:帖子 2:圈子 3:商品 4:用户 5:标签）',
  `degree_increment` decimal(8, 2) NOT NULL COMMENT '热度增量',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`object_id`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_degree_increment
-- ----------------------------

-- ----------------------------
-- Table structure for wx_exceptional
-- ----------------------------
DROP TABLE IF EXISTS `wx_exceptional`;
CREATE TABLE `wx_exceptional`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `posts_id` bigint(20) NOT NULL COMMENT '帖子ID',
  `posts_user_id` bigint(20) NOT NULL COMMENT '帖子用户ID',
  `exceptional_price` decimal(10, 2) UNSIGNED NOT NULL COMMENT '打赏金额',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`posts_id`) USING BTREE,
  INDEX `index_2`(`posts_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '打赏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_exceptional
-- ----------------------------
INSERT INTO `wx_exceptional` VALUES (47, 10000, 135, 10000, 0.10, NULL, '2021-05-27 16:59:55', '2021-05-27 16:59:55');
INSERT INTO `wx_exceptional` VALUES (48, 10000, 133, 10000, 0.10, NULL, '2021-05-27 16:59:55', '2021-05-27 16:59:55');
INSERT INTO `wx_exceptional` VALUES (49, 10000, 101, 10001, 0.10, NULL, '2021-05-27 17:01:11', '2021-05-27 17:01:11');
INSERT INTO `wx_exceptional` VALUES (50, 10000, 132, 10000, 0.10, NULL, '2021-05-27 17:01:41', '2021-05-27 17:01:41');
INSERT INTO `wx_exceptional` VALUES (51, 10001, 135, 10000, 0.10, NULL, '2021-05-27 19:10:19', '2021-05-27 19:10:19');

-- ----------------------------
-- Table structure for wx_feedback
-- ----------------------------
DROP TABLE IF EXISTS `wx_feedback`;
CREATE TABLE `wx_feedback`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `feedback_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '反馈类型',
  `feedback_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '反馈内容',
  `feedback_reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '受理回复',
  `feedback_imgs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片',
  `feedback_contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系',
  `is_solve` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否解决（0，待处理）',
  `feedback_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0未受理，1已受理)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '反馈表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_feedback
-- ----------------------------
INSERT INTO `wx_feedback` VALUES (1, 10000, '功能问题', '测试反馈', '我们已经为您处理反馈。', '', '', 0, 1, NULL, '2021-04-09 06:36:16', '2021-04-11 03:27:33');
INSERT INTO `wx_feedback` VALUES (7, 11580, '功能问题', '在学校', NULL, '', '', 0, 0, NULL, '2022-08-27 07:07:52', '2022-08-27 07:07:52');

-- ----------------------------
-- Table structure for wx_files
-- ----------------------------
DROP TABLE IF EXISTS `wx_files`;
CREATE TABLE `wx_files`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件名称',
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件大小',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件地址',
  `post_id` bigint(20) NOT NULL COMMENT '帖子id',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_files
-- ----------------------------

-- ----------------------------
-- Table structure for wx_forward
-- ----------------------------
DROP TABLE IF EXISTS `wx_forward`;
CREATE TABLE `wx_forward`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `posts_id` bigint(20) NOT NULL COMMENT '帖子ID',
  `posts_user_id` bigint(20) NOT NULL COMMENT '帖子用户id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `is_read` tinyint(11) NOT NULL DEFAULT 0 COMMENT '读(0未读，1已读)',
  `forward_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0未受理，1已受理)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`posts_id`) USING BTREE,
  INDEX `index_1`(`posts_user_id`) USING BTREE,
  INDEX `index_2`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转发表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_forward
-- ----------------------------

-- ----------------------------
-- Table structure for wx_icons
-- ----------------------------
DROP TABLE IF EXISTS `wx_icons`;
CREATE TABLE `wx_icons`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名字',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'icon',
  `unicode16` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `type` int(11) NOT NULL COMMENT '类型',
  `target_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '跳转id',
  `is_admin` tinyint(4) NOT NULL DEFAULT 0 COMMENT '仅管理可见',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_icons
-- ----------------------------

-- ----------------------------
-- Table structure for wx_like
-- ----------------------------
DROP TABLE IF EXISTS `wx_like`;
CREATE TABLE `wx_like`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `posts_id` bigint(20) NOT NULL COMMENT '文章ID',
  `posts_user_id` bigint(20) NOT NULL COMMENT '文章用户id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`posts_id`) USING BTREE,
  INDEX `index_1`(`posts_user_id`) USING BTREE,
  INDEX `index_2`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 832 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '点赞（喜欢）表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_like
-- ----------------------------
INSERT INTO `wx_like` VALUES (44, 103, 10001, 10001, NULL, '2021-04-26 02:19:38', '2021-04-26 02:19:38');
INSERT INTO `wx_like` VALUES (45, 102, 10001, 10000, NULL, '2021-04-26 02:28:25', '2021-04-26 02:28:25');
INSERT INTO `wx_like` VALUES (816, 343, 10000, 11581, NULL, '2022-08-23 23:36:40', '2022-08-23 23:36:40');
INSERT INTO `wx_like` VALUES (817, 344, 10000, 11581, NULL, '2022-08-23 23:36:40', '2022-08-23 23:36:40');
INSERT INTO `wx_like` VALUES (818, 342, 10000, 11581, NULL, '2022-08-23 23:36:40', '2022-08-23 23:36:40');
INSERT INTO `wx_like` VALUES (819, 135, 10000, 11581, NULL, '2022-08-23 23:36:40', '2022-08-23 23:36:40');
INSERT INTO `wx_like` VALUES (820, 134, 10000, 11581, NULL, '2022-08-23 23:36:40', '2022-08-23 23:36:40');
INSERT INTO `wx_like` VALUES (821, 385, 11584, 11598, NULL, '2022-09-09 02:34:41', '2022-09-09 02:34:41');
INSERT INTO `wx_like` VALUES (822, 384, 11584, 11598, NULL, '2022-09-09 02:34:41', '2022-09-09 02:34:41');
INSERT INTO `wx_like` VALUES (823, 388, 11592, 11601, NULL, '2022-09-18 15:48:57', '2022-09-18 15:48:57');
INSERT INTO `wx_like` VALUES (825, 388, 11592, 11603, NULL, '2022-09-19 18:07:57', '2022-09-19 18:07:57');
INSERT INTO `wx_like` VALUES (826, 387, 11581, 11603, NULL, '2022-09-19 18:07:57', '2022-09-19 18:07:57');
INSERT INTO `wx_like` VALUES (827, 385, 11584, 11603, NULL, '2022-09-19 18:07:57', '2022-09-19 18:07:57');
INSERT INTO `wx_like` VALUES (828, 386, 10001, 11603, NULL, '2022-09-19 18:07:57', '2022-09-19 18:07:57');
INSERT INTO `wx_like` VALUES (829, 385, 11584, 11584, NULL, '2022-09-19 20:11:08', '2022-09-19 20:11:08');
INSERT INTO `wx_like` VALUES (830, 389, 11600, 11604, NULL, '2022-09-20 01:52:03', '2022-09-20 01:52:03');
INSERT INTO `wx_like` VALUES (831, 388, 11592, 11604, NULL, '2022-09-20 01:52:03', '2022-09-20 01:52:03');

-- ----------------------------
-- Table structure for wx_menu
-- ----------------------------
DROP TABLE IF EXISTS `wx_menu`;
CREATE TABLE `wx_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '父级菜单ID',
  `order` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '菜单',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图标',
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'URL',
  `depth` tinyint(4) NOT NULL DEFAULT 1 COMMENT '层级',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '全局菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_menu
-- ----------------------------
INSERT INTO `wx_menu` VALUES (1, 0, 1, 'PC导航头部菜单', NULL, NULL, 1, '2022-09-16 09:31:57', '2022-09-16 15:44:57');
INSERT INTO `wx_menu` VALUES (2, 0, 8, '认证&合作', NULL, NULL, 1, '2022-09-16 09:52:06', '2022-09-17 15:20:22');
INSERT INTO `wx_menu` VALUES (3, 0, 14, '赞助商&技术支持', NULL, NULL, 1, '2022-09-16 09:52:49', '2022-09-17 15:20:40');
INSERT INTO `wx_menu` VALUES (4, 0, 15, '菜单4', NULL, NULL, 1, '2022-09-16 09:54:25', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (5, 0, 16, '菜单5', NULL, NULL, 1, '2022-09-16 09:54:50', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (6, 0, 17, '菜单6', NULL, NULL, 1, '2022-09-16 09:55:10', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (7, 0, 18, '菜单7', NULL, NULL, 1, '2022-09-16 09:55:31', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (8, 0, 19, '菜单8', NULL, NULL, 1, '2022-09-16 09:55:51', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (9, 0, 20, '菜单9', NULL, NULL, 1, '2022-09-16 09:56:25', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (10, 0, 21, '菜单10', NULL, NULL, 1, '2022-09-16 09:56:48', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (11, 0, 22, '菜单11', NULL, '', 1, '2022-09-16 15:13:24', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (12, 0, 23, '菜单12', NULL, '', 1, '2022-09-16 15:14:50', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (13, 0, 24, '菜单13', NULL, '', 1, '2022-09-16 15:15:11', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (14, 0, 25, '菜单14', NULL, '', 1, '2022-09-16 15:15:32', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (15, 0, 26, '菜单15', NULL, NULL, 1, '2022-09-16 15:39:41', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (16, 0, 27, '菜单16', NULL, NULL, 1, '2022-09-16 15:40:00', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (17, 0, 28, '菜单17', NULL, NULL, 1, '2022-09-16 15:41:02', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (18, 0, 29, '菜单18', NULL, NULL, 1, '2022-09-16 15:41:17', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (19, 0, 30, '菜单19', NULL, NULL, 1, '2022-09-16 15:41:30', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (20, 0, 31, '菜单20', NULL, NULL, 1, '2022-09-16 15:41:42', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (21, 0, 32, '菜单21', NULL, NULL, 1, '2022-09-16 15:41:53', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (22, 0, 33, '菜单22', NULL, NULL, 1, '2022-09-16 15:42:03', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (23, 0, 34, '菜单23', NULL, NULL, 1, '2022-09-16 15:42:12', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (24, 0, 35, '菜单24', NULL, NULL, 1, '2022-09-16 15:42:23', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (25, 0, 36, '菜单25', NULL, NULL, 1, '2022-09-16 15:42:33', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (26, 0, 37, '菜单26', NULL, NULL, 1, '2022-09-16 15:42:43', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (27, 0, 38, '菜单27', NULL, NULL, 1, '2022-09-16 15:42:52', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (28, 0, 39, '菜单28', NULL, NULL, 1, '2022-09-16 15:43:02', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (29, 0, 40, '菜单29', NULL, NULL, 1, '2022-09-16 15:43:13', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (30, 0, 41, '菜单30', NULL, NULL, 1, '2022-09-16 15:43:34', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (31, 1, 2, '首页', 'fa-address-card', '/', 1, '2022-09-16 15:43:57', '2022-09-16 19:58:13');
INSERT INTO `wx_menu` VALUES (32, 1, 3, '热榜', NULL, '/hot', 1, '2022-09-16 15:44:08', '2022-09-16 17:21:45');
INSERT INTO `wx_menu` VALUES (33, 1, 4, '圈子', NULL, '/circles', 1, '2022-09-16 15:44:15', '2022-09-16 18:16:59');
INSERT INTO `wx_menu` VALUES (34, 1, 5, '标签', NULL, '/tag', 1, '2022-09-16 15:46:02', '2022-09-16 15:46:09');
INSERT INTO `wx_menu` VALUES (35, 1, 6, '神器导航', 'fa-angellist', '/tool', 1, '2022-09-16 19:22:13', '2022-09-16 19:53:06');
INSERT INTO `wx_menu` VALUES (36, 35, 7, '设计', NULL, '/tool/21', 1, '2022-09-16 19:25:05', '2022-09-16 19:53:06');
INSERT INTO `wx_menu` VALUES (37, 2, 9, '账号认证', NULL, NULL, 1, '2022-09-17 14:59:41', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (38, 2, 10, '广告/赞助', NULL, NULL, 1, '2022-09-17 15:00:06', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (39, 2, 11, '创作者入驻', NULL, NULL, 1, '2022-09-17 15:00:19', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (40, 2, 12, '成为运营者', NULL, NULL, 1, '2022-09-17 15:00:37', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (41, 2, 13, '提供技术支持', NULL, NULL, 1, '2022-09-17 15:00:48', '2022-09-17 15:00:57');
INSERT INTO `wx_menu` VALUES (42, 3, 42, '宠也', NULL, NULL, 1, '2022-09-17 18:22:17', '2022-09-17 18:22:17');
INSERT INTO `wx_menu` VALUES (43, 3, 43, '腾讯云', NULL, NULL, 1, '2022-09-17 18:22:36', '2022-09-17 18:22:36');
INSERT INTO `wx_menu` VALUES (44, 3, 44, 'Dcat-admin', NULL, NULL, 1, '2022-09-17 18:23:09', '2022-09-17 18:23:09');
INSERT INTO `wx_menu` VALUES (45, 3, 45, 'Laravel', NULL, NULL, 1, '2022-09-17 18:23:21', '2022-09-17 18:23:21');
INSERT INTO `wx_menu` VALUES (46, 3, 46, 'Linui', NULL, NULL, 1, '2022-09-17 18:23:31', '2022-09-17 18:23:42');
INSERT INTO `wx_menu` VALUES (47, 3, 47, 'Bootstrap', NULL, NULL, 1, '2022-09-17 18:24:14', '2022-09-17 18:24:14');
INSERT INTO `wx_menu` VALUES (48, 3, 48, '宝塔Linux面板', NULL, NULL, 1, '2022-09-17 18:24:32', '2022-09-17 18:24:32');

-- ----------------------------
-- Table structure for wx_minicode
-- ----------------------------
DROP TABLE IF EXISTS `wx_minicode`;
CREATE TABLE `wx_minicode`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'app_id',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'path',
  `scene` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'scene',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'code img',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`app_id`, `path`, `scene`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_minicode
-- ----------------------------

-- ----------------------------
-- Table structure for wx_navigation
-- ----------------------------
DROP TABLE IF EXISTS `wx_navigation`;
CREATE TABLE `wx_navigation`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `np_id` int(11) NULL DEFAULT 0 COMMENT '所属板块ID',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图标接',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '介绍',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `type` tinyint(1) NULL DEFAULT 0 COMMENT '	(0资源库，1工具利器) ',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '	状态(0正常，1管理员隐藏)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`np_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 194 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '导航栏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_navigation
-- ----------------------------
INSERT INTO `wx_navigation` VALUES (21, 25, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/04/a45fbc4ca2ba0c754c87cbfb4c0cc23e.png', 'https://www.designspiration.com/', 'Designspiration', '创意设计作品分享社区', 1, 0, 0, NULL, '2021-07-04 15:24:44', '2021-07-04 15:41:05');
INSERT INTO `wx_navigation` VALUES (22, 23, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/04/ded8f3d1e85907440d9ccca27be693ed.webp', 'https://lanhuapp.com/', '蓝湖', '高效的产品设计协作平台', 1, 1, 0, NULL, '2021-07-04 17:15:42', '2021-07-04 17:15:42');
INSERT INTO `wx_navigation` VALUES (23, 25, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/560abb7aad75e6acc6c1add5c464f81b.png', 'https://muz.li/', 'Muzli', '设计师的秘密武器', 1, 0, 0, NULL, '2021-07-08 11:58:28', '2021-07-08 11:58:28');
INSERT INTO `wx_navigation` VALUES (24, 25, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/33786b6ea6db12dc07d49db7f9d9a97e.png', 'https://ello.co/discover/design', 'ELLO', '设计发现与分享平台', 1, 0, 0, NULL, '2021-07-08 12:01:06', '2021-07-08 12:01:06');
INSERT INTO `wx_navigation` VALUES (25, 25, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/62b90631d1dc1e7ed52f73bf881f14cb.png', 'https://airbnb.design/', 'Airbnb Design', '创建一套自己的设计规范', 1, 0, 0, NULL, '2021-07-08 12:02:18', '2021-07-08 12:02:18');
INSERT INTO `wx_navigation` VALUES (26, 25, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/ebcd1ab40c319d8035e0bfe003dfca7f.png', 'https://www.ndc.co.jp/cn/works/category/web-app/', 'NDC', '优秀品牌设计灵感', 1, 0, 0, NULL, '2021-07-08 12:04:31', '2021-07-08 12:04:31');
INSERT INTO `wx_navigation` VALUES (27, 25, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/120f222c1a96fabc6181703602e1e833.png', 'https://www.skinnyships.com/', 'skinnyships', '创意扁平插画设计', 1, 0, 0, NULL, '2021-07-08 12:05:53', '2021-07-08 12:05:53');
INSERT INTO `wx_navigation` VALUES (28, 25, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/4b0781d0a3e02265da0ef8952becd1ef.png', 'https://io3000.com/', 'I/O 3000', '优秀Web设计灵感', 1, 0, 0, NULL, '2021-07-08 12:08:20', '2021-07-08 12:08:20');
INSERT INTO `wx_navigation` VALUES (29, 25, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/3708b79c7db266085a71c215a17e9c58.png', 'https://designcollector.net/likes', 'Designcokkector', '创意3D与数字艺术设计', 1, 0, 0, NULL, '2021-07-08 12:13:19', '2021-07-08 13:35:19');
INSERT INTO `wx_navigation` VALUES (30, 25, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/72b955e77e809babb39d7934a1004020.png', 'https://tgideas.qq.com/index.html', 'TGideas', '腾讯游戏官方设计团队', 1, 0, 0, NULL, '2021-07-08 13:34:53', '2021-07-08 13:34:53');
INSERT INTO `wx_navigation` VALUES (31, 25, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/9103490182479bdcb24963a9753b6e8a.ico', 'https://500px.com.cn/', '500px', '摄影师作品分享交流平台', 1, 0, 0, NULL, '2021-07-08 13:37:34', '2021-07-08 13:37:34');
INSERT INTO `wx_navigation` VALUES (32, 25, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/200190ee584eb6aec0c0c902f1136bec.ico', 'https://www.topys.cn/', 'TOPYS', '创意内容平台', 1, 0, 0, NULL, '2021-07-08 13:38:50', '2021-07-08 13:38:50');
INSERT INTO `wx_navigation` VALUES (33, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/cffd3abf25a241602d7c2fdc459770c9.ico', 'https://color.adobe.com/zh/create/color-wheel', 'Adobe Color', '强大的配色引擎', 1, 0, 0, NULL, '2021-07-08 14:00:36', '2021-07-08 14:00:36');
INSERT INTO `wx_navigation` VALUES (34, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/e9f173b215b60bae9230e7aa220602d1.ico', 'https://colors.eva.design/', 'EVA', '设计系统色彩梯度', 1, 0, 0, NULL, '2021-07-08 14:04:01', '2021-07-08 14:04:01');
INSERT INTO `wx_navigation` VALUES (35, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/69b71cd8d69d57e51766de8a0e44b242.png', 'https://tilda.cc/colors/#gradients', 'Tilda', '友好细致的渐变色', 1, 0, 0, NULL, '2021-07-08 14:05:25', '2021-07-08 14:05:25');
INSERT INTO `wx_navigation` VALUES (36, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/dc2558a877061af26d4d1d3cd66b0037.png', 'http://colormind.io/', 'Colormind', '上传图片提取颜色进行配色', 1, 0, 0, NULL, '2021-07-08 14:13:07', '2021-07-08 14:13:07');
INSERT INTO `wx_navigation` VALUES (37, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/56af6ed5e44423965022d62e8d559c4b.png', 'https://www.coocolors.com/browseCollocation', '炫酷配色', '流行的配色方案', 1, 0, 0, NULL, '2021-07-08 14:16:10', '2021-07-08 14:16:10');
INSERT INTO `wx_navigation` VALUES (38, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/93d694df323f4c62620557a10a816308.png', 'https://www.palettable.io/C1F7D3-0DE278', 'PALETTABLE', '随机的配色方案', 1, 0, 0, NULL, '2021-07-08 14:20:24', '2021-07-08 14:20:24');
INSERT INTO `wx_navigation` VALUES (39, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/c001369a299682f8c672b14f1db83d43.png', 'https://www.happyhues.co/', 'Happy Hues', '网页实时预览配色方案', 1, 0, 0, NULL, '2021-07-08 14:21:36', '2021-07-08 14:21:36');
INSERT INTO `wx_navigation` VALUES (40, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/5bdb0cde1384952fef5d2e053b2ab273.png', 'https://imagehues.com/', 'Image Hues', '随机图片提取颜色进行配色', 1, 0, 0, NULL, '2021-07-08 14:24:37', '2021-07-08 14:24:37');
INSERT INTO `wx_navigation` VALUES (41, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/843e696095a9380edd643ddc02826095.png', 'https://material.io/resources/color/#!/?view.left=0&view.right=0&primary.color=2962FF', 'MD Color Tool', 'Material Design预览配色', 1, 0, 0, NULL, '2021-07-08 14:26:13', '2021-07-08 14:26:13');
INSERT INTO `wx_navigation` VALUES (42, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/f3add9cb0da4a864ea16124ab4da2388.png', 'https://htmlcolorcodes.com/', 'HTML Color Codes', 'HTML安全色彩调节器', 1, 0, 0, NULL, '2021-07-08 14:28:32', '2021-07-08 14:28:32');
INSERT INTO `wx_navigation` VALUES (43, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/406261a70b9ab3a098069cbf8bb2ed65.png', 'https://picular.co/', 'Picular', '搜索流行的颜色', 1, 0, 0, NULL, '2021-07-08 14:30:44', '2021-07-08 14:30:44');
INSERT INTO `wx_navigation` VALUES (44, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/92a8172a47a8fff67dbe1b3426d471a2.png', 'https://colorcollect.cn/inspiration', '色采', '按主题展示配色方案', 1, 0, 0, NULL, '2021-07-08 14:32:44', '2021-07-08 14:32:44');
INSERT INTO `wx_navigation` VALUES (45, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/b7cb60ab8a9d37a1996c5e7e3f00d219.png', 'https://color.hailpixel.com/', 'Colordot', '鼠标控制随机颜色', 1, 0, 0, NULL, '2021-07-08 14:34:13', '2021-07-08 14:34:13');
INSERT INTO `wx_navigation` VALUES (46, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/7a1cf46cb4b5c4540e7f9e7d804a5266.png', 'https://uigradients.com/#Sulphur', 'uiGradients', '随机生成渐变色', 1, 0, 0, NULL, '2021-07-08 14:35:37', '2021-07-08 14:36:28');
INSERT INTO `wx_navigation` VALUES (47, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/d8f84e81aed18099210b73969460ac92.png', 'http://zhongguose.com/#chunmeihong', '中国色', '中国传统颜色及名称', 1, 0, 0, NULL, '2021-07-08 14:37:43', '2021-07-08 14:37:43');
INSERT INTO `wx_navigation` VALUES (48, 26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/cfd1cdb6a97c7e547b1165258194d558.png', 'https://colors.ichuantong.cn/', 'ichuantong', '中国传统颜色手册', 1, 0, 0, NULL, '2021-07-08 14:40:18', '2021-07-08 14:40:18');
INSERT INTO `wx_navigation` VALUES (49, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/267a1c95e3a1ae66edfbef54ea90c394.svg', 'https://www.awwwards.com/', 'awwwards', 'Web界的奥斯卡', 1, 0, 0, NULL, '2021-07-08 14:42:10', '2021-07-08 14:44:03');
INSERT INTO `wx_navigation` VALUES (50, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/01cdd805b920407baa637320da39c4f5.png', 'https://cssdesignawards.com/', 'CSSDesignAwards', 'CSS设计奖项提名网', 1, 0, 0, NULL, '2021-07-08 14:45:27', '2021-07-08 14:45:27');
INSERT INTO `wx_navigation` VALUES (51, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/ada22e35e2735260918a83f0cbc0b3d8.png', 'https://land-book.com/', 'Land-book', '互联网优秀Web设计灵感', 1, 0, 0, NULL, '2021-07-08 14:47:20', '2021-07-08 14:47:20');
INSERT INTO `wx_navigation` VALUES (52, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/09f60ab398f03a66b0f15fb41edb35b0.png', 'https://www.saasframe.io/latest', 'SaaSFrame', 'SaaS系统页面设计灵感', 1, 0, 0, NULL, '2021-07-08 14:48:41', '2021-07-08 14:48:41');
INSERT INTO `wx_navigation` VALUES (53, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/ade678ea1f13f2131a78b6b07aae07b3.png', 'https://onepagelove.com/inspiration', 'One Page Love', '收集网页截屏灵感', 1, 0, 0, NULL, '2021-07-08 14:50:02', '2021-07-08 14:50:02');
INSERT INTO `wx_navigation` VALUES (54, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/29f397a49673ebc06954475b1a573a64.png', 'https://sitesee.co/', 'SiteSee', '精选现代Web设计', 1, 0, 0, NULL, '2021-07-08 14:52:22', '2021-07-08 14:52:22');
INSERT INTO `wx_navigation` VALUES (55, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/32ba97a3df411a0bec621edeb0dbc303.png', 'http://reeoo.com/', 'Reeoo', '精选优秀Web设计', 1, 0, 0, NULL, '2021-07-08 14:54:01', '2021-07-08 14:54:01');
INSERT INTO `wx_navigation` VALUES (56, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/92ce8eb634a0d59a0b20c69450791197.png', 'https://thegallery.io/', 'thegallery', '欧美Web设计风格', 1, 0, 0, NULL, '2021-07-08 14:55:09', '2021-07-08 14:55:09');
INSERT INTO `wx_navigation` VALUES (57, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/f707037c4637f15ce36ea7045fd1e2a4.jpg', 'https://81-web.com/', '81-web-com', '日本Web设计风格', 1, 0, 0, NULL, '2021-07-08 14:56:47', '2021-07-08 14:56:47');
INSERT INTO `wx_navigation` VALUES (58, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/f6696ed549e77b15a08759bf1ad748da.png', 'https://muuuuu.org/', 'MUUUUU.ORG', '日本Web设计风格', 1, 0, 0, NULL, '2021-07-08 14:58:37', '2021-07-08 14:58:37');
INSERT INTO `wx_navigation` VALUES (59, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/bcb3403f01b85454e218892a619ca7c1.ico', 'https://www.webdesignmuseum.org/', 'Museum', '世界知名公司官网进化史', 1, 0, 0, NULL, '2021-07-08 14:59:55', '2021-07-08 14:59:55');
INSERT INTO `wx_navigation` VALUES (60, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/fe4f7c9d8ae1df0b9cd16c0a4df3c921.png', 'https://www.siteinspire.com/websites', 'siteinspire', '交互Web设计灵感', 1, 0, 0, NULL, '2021-07-08 15:02:15', '2021-07-08 15:02:15');
INSERT INTO `wx_navigation` VALUES (61, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/0202a10e7cb049e700847cb1ba3d92d9.png', 'https://mediaqueri.es/', 'Media Queries', '响应式Web设计灵感', 1, 0, 0, NULL, '2021-07-08 15:03:21', '2021-07-08 15:03:21');
INSERT INTO `wx_navigation` VALUES (63, 28, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/560abb7aad75e6acc6c1add5c464f81b.png', 'https://muz.li/', 'Muzli', '设计师的秘密武器', 1, 0, 0, NULL, '2021-07-08 11:58:28', '2021-07-08 11:58:28');
INSERT INTO `wx_navigation` VALUES (64, 27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/4b0781d0a3e02265da0ef8952becd1ef.png', 'https://io3000.com/', 'I/O 3000', '优秀Web设计灵感', 1, 0, 0, NULL, '2021-07-08 12:08:20', '2021-07-08 12:08:20');
INSERT INTO `wx_navigation` VALUES (65, 28, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/ab70a59a6a4836ca34cba8d064b86ab2.png', 'https://screenlane.com/', 'Screenlane', '获取最新UI设计灵感和趋势', 1, 0, 0, NULL, '2021-07-08 15:08:47', '2021-07-08 15:08:47');
INSERT INTO `wx_navigation` VALUES (66, 28, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/9f223f5c3c6f09085cabde0ce5a8c5cb.png', 'https://collectui.com/', 'Collect UI', '每日UI设计灵感', 1, 0, 0, NULL, '2021-07-08 15:09:57', '2021-07-08 15:09:57');
INSERT INTO `wx_navigation` VALUES (67, 28, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/47c5d182887be05bf54dfb8d7ba2c6f8.png', 'https://search.muz.li/', 'Muzli Search', '搜索设计灵感', 1, 0, 0, NULL, '2021-07-08 15:11:07', '2021-07-08 15:11:07');
INSERT INTO `wx_navigation` VALUES (68, 28, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/d6061236cd5550418dce502abe3d8ced.png', 'https://www.iosicongallery.com/', 'iOS Icon Gallery', 'iOS应用图标设计灵感', 1, 0, 0, NULL, '2021-07-08 15:12:01', '2021-07-08 15:12:01');
INSERT INTO `wx_navigation` VALUES (69, 28, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/1528f0d67f272583cc9736b3551b4686.png', 'https://www.bestfolios.com/home', 'Bestfolios', '收集优质UI/UX设计作品', 1, 0, 0, NULL, '2021-07-08 15:14:04', '2021-07-08 15:14:04');
INSERT INTO `wx_navigation` VALUES (70, 28, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/ca10500ca315c1ae8b1d822526c1add8.png', 'https://scrnshts.club/', 'scrnshts', 'APP UI设计灵感', 1, 0, 0, NULL, '2021-07-08 15:16:27', '2021-07-08 15:16:27');
INSERT INTO `wx_navigation` VALUES (71, 28, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/33786b6ea6db12dc07d49db7f9d9a97e.png', 'https://ello.co/discover/design', 'ELLO', '设计发现与分享平台', 1, 0, 0, NULL, '2021-07-08 12:01:06', '2021-07-08 12:01:06');
INSERT INTO `wx_navigation` VALUES (72, 28, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/04/a45fbc4ca2ba0c754c87cbfb4c0cc23e.png', 'https://www.designspiration.com/', 'Designspiration', '创意设计作品分享社区', 1, 0, 0, NULL, '2021-07-04 15:24:44', '2021-07-04 15:41:05');
INSERT INTO `wx_navigation` VALUES (73, 28, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/120f222c1a96fabc6181703602e1e833.png', 'https://www.skinnyships.com/', 'skinnyships', '创意扁平插画设计', 1, 0, 0, NULL, '2021-07-08 12:05:53', '2021-07-08 12:05:53');
INSERT INTO `wx_navigation` VALUES (74, 29, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/2af1e2e9619b189634a6cc0a546751c5.png', 'https://www.h5anli.com/', 'H5案例分享', '分享创意H5案例', 1, 0, 0, NULL, '2021-07-08 15:23:08', '2021-07-08 15:23:28');
INSERT INTO `wx_navigation` VALUES (75, 29, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/d287829693619ec33291f323dc510610.png', 'http://www.iguoguo.net/html5', '爱果果', '最美H5案例欣赏', 1, 0, 0, NULL, '2021-07-08 15:27:20', '2021-07-08 15:27:20');
INSERT INTO `wx_navigation` VALUES (76, 29, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/bfd2ddc4406d466706ad3a9984ad1bca.ico', 'https://www.h6app.com/', '未来应用', '收集优秀H5案例', 1, 0, 0, NULL, '2021-07-08 15:29:35', '2021-07-08 15:29:35');
INSERT INTO `wx_navigation` VALUES (77, 29, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/5fddca774ec64092bc94b16b91f1db16.png', 'https://cases.aotu.io/', '京东凹凸实验室', '分享优秀H5案例', 1, 0, 0, NULL, '2021-07-08 15:30:54', '2021-07-08 15:30:54');
INSERT INTO `wx_navigation` VALUES (78, 30, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/d95479eeaa60e227d3787e01aa4e3068.png', 'http://arting365.com/', 'Arting365', '中国艺术设计联盟', 1, 0, 0, NULL, '2021-07-08 15:35:08', '2021-07-08 15:35:08');
INSERT INTO `wx_navigation` VALUES (79, 30, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/9ea9947617174b2bb1a675a038e2588f.png', 'https://artemperor.tw/', '非池中', '台湾非池中艺术网', 1, 0, 0, NULL, '2021-07-08 15:37:02', '2021-07-08 15:37:02');
INSERT INTO `wx_navigation` VALUES (80, 30, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/ebcd1ab40c319d8035e0bfe003dfca7f.png', 'https://www.ndc.co.jp/cn/works/category/web-app/', 'NDC', '优秀品牌设计灵感', 1, 0, 0, NULL, '2021-07-08 12:04:31', '2021-07-08 12:04:31');
INSERT INTO `wx_navigation` VALUES (81, 30, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/aa881cf4dbefe5234c30b86735961bad.png', 'https://logopond.com/', 'logopond', '收集全球优秀Logo设计', 1, 0, 0, NULL, '2021-07-08 15:40:08', '2021-07-08 15:40:08');
INSERT INTO `wx_navigation` VALUES (83, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/e153a169b2d72032e17b873ce01ae001.png', 'https://www.humaaans.com/', 'humaaans', '免费商用无脸插画', 1, 0, 0, NULL, '2021-07-08 15:52:50', '2021-07-08 15:52:50');
INSERT INTO `wx_navigation` VALUES (84, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/23966dc44cd3f474f73f7d8779441048.png', 'https://www.getillustrations.com/illustration-packs/freebie', 'Getillustrations', '可编辑的优质插画', 1, 0, 0, NULL, '2021-07-08 15:54:17', '2021-07-08 15:54:17');
INSERT INTO `wx_navigation` VALUES (85, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/8c05d06b13b359e6ea8b84eece481c85.png', 'https://icons8.com/mega-creator', 'VECTOR CREATOR', '矢量插画合成器', 1, 0, 0, NULL, '2021-07-08 15:55:59', '2021-07-08 15:55:59');
INSERT INTO `wx_navigation` VALUES (86, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/46ef65293b5eec7984f1db4478a5ee56.png', 'https://www.drawkit.io/', 'DrawKit', '免费商用手绘矢量插画', 1, 0, 0, NULL, '2021-07-08 15:57:16', '2021-07-08 15:57:16');
INSERT INTO `wx_navigation` VALUES (87, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/8b46952a720f2bedb92b84b512a18756.png', 'https://undraw.co/illustrations', 'unDraw', '自定义颜色免费插画', 1, 0, 0, NULL, '2021-07-08 15:58:47', '2021-07-08 15:58:47');
INSERT INTO `wx_navigation` VALUES (88, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/f9b6c305ce67b71b59a0aba504a82c56.svg', 'https://www.manypixels.co/gallery', 'manypixels', '自定义渐变免费插画', 1, 0, 0, NULL, '2021-07-08 16:01:11', '2021-07-08 16:01:11');
INSERT INTO `wx_navigation` VALUES (89, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/ab77910861d8ef0de7fa2c65547803cb.png', 'https://delesign.com/free-designs/graphics', 'DELESIGN', '免费商用优质插画', 1, 0, 0, NULL, '2021-07-08 16:03:18', '2021-07-08 16:03:18');
INSERT INTO `wx_navigation` VALUES (90, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/cfee0b44e6ddaba52a65c03c0be9d943.png', 'https://illlustrations.co/', 'designletter', '免费商用开源插画套件', 1, 0, 0, NULL, '2021-07-08 16:05:22', '2021-07-08 16:05:22');
INSERT INTO `wx_navigation` VALUES (91, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/01e476ab942cafb4560fd475bfcd498a.png', 'https://icons8.cn/illustrations', 'OUCH', '免费商用分类插画', 1, 0, 0, NULL, '2021-07-08 16:06:25', '2021-07-08 16:06:25');
INSERT INTO `wx_navigation` VALUES (92, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/538d1510e438e5880280fd9544838aa8.png', 'https://iconscout.com/illustration-pack/ecommerce-153', 'Ecommerce', '电子商务插图包', 1, 0, 0, NULL, '2021-07-08 16:07:24', '2021-07-08 16:07:24');
INSERT INTO `wx_navigation` VALUES (93, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/823aa22f0ca9c3618e28bf39618e7bb7.png', 'https://products.ls.graphics/wrrooom/', 'Wrrooom', '自定义插画编辑器', 1, 0, 0, NULL, '2021-07-08 16:10:31', '2021-07-08 16:14:10');
INSERT INTO `wx_navigation` VALUES (94, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/8db1bde4b8a8c07443764ec7ae8b7d22.png', 'https://sleekbundle.com/', 'sleekbundle', '高质量的矢量图形插画', 1, 0, 0, NULL, '2021-07-08 16:17:12', '2021-07-08 16:17:12');
INSERT INTO `wx_navigation` VALUES (95, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/3f9defacd5db208f8cdb0f164e9c7060.png', 'https://www.ls.graphics/illustrations/whoosh', 'whoosh', '一组免费精美的插画套件', 1, 0, 0, NULL, '2021-07-08 16:17:53', '2021-07-08 16:17:53');
INSERT INTO `wx_navigation` VALUES (96, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/02e7242725c51309aab3c564e6dde1c0.png', 'https://craftwork.design/downloads/category/illustrations/', 'craftwork', '多种主题的插画素材', 1, 0, 0, NULL, '2021-07-08 16:19:55', '2021-07-08 16:19:55');
INSERT INTO `wx_navigation` VALUES (97, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/81375bf0bca1ed15c727f377cec6cbfd.png', 'https://iradesign.io/gallery/illustrations', 'IRA Design', '自定义5种颜色的渐变插画', 1, 0, 0, NULL, '2021-07-08 16:21:11', '2021-07-08 16:21:11');
INSERT INTO `wx_navigation` VALUES (98, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/365f186c5f53c82fbab05311dd781ab0.png', 'https://webpixels.io/illustrations', 'webpixels', '清新多彩的开源矢量图插画', 1, 0, 0, NULL, '2021-07-08 16:22:25', '2021-07-08 16:22:25');
INSERT INTO `wx_navigation` VALUES (99, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/0f97bbfee474bed635010bcd53add342.png', 'https://www.opendoodles.com/', 'OpenDoodles', '一组涂鸦式插画', 1, 0, 0, NULL, '2021-07-08 16:24:57', '2021-07-08 16:24:57');
INSERT INTO `wx_navigation` VALUES (100, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/be02a45d7f8b04955a5884ec57238cbc.png', 'https://avataaars.com/', 'avataaars', '免费Sketch头像插画', 1, 0, 0, NULL, '2021-07-08 16:26:41', '2021-07-08 16:26:41');
INSERT INTO `wx_navigation` VALUES (101, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/2f7c2a7b464fd1f0ced59275c5b829c2.png', 'https://mixkit.co/free-stock-art/', 'mixkit', '插画、音视频、图库素材', 1, 0, 0, NULL, '2021-07-08 16:27:53', '2021-07-08 16:27:53');
INSERT INTO `wx_navigation` VALUES (102, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/c4553e6fd0c1fae0b674234a4a12c550.ico', 'https://lukaszadam.com/illustrations', 'LUKASZADAM', '免费商用矢量插画', 1, 0, 0, NULL, '2021-07-08 16:29:08', '2021-07-08 16:29:08');
INSERT INTO `wx_navigation` VALUES (103, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/a9bb29c62086d7e3d4348f8c314836a6.png', 'https://outlane.co/topics/freebie/', 'OUTLANE', '免费商用插画套件', 1, 0, 0, NULL, '2021-07-08 16:30:17', '2021-07-08 16:30:17');
INSERT INTO `wx_navigation` VALUES (104, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/79a52ef24f23c1e782e4e5b1bab18ec1.png', 'https://app.streamlinehq.com/illustrations/illustrations-multicolor', 'Streamline', '插画形式图标', 1, 0, 0, NULL, '2021-07-08 16:32:12', '2021-07-08 16:32:12');
INSERT INTO `wx_navigation` VALUES (105, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/8010e08cfd9219ec25ad74c0a563050c.png', 'https://app.itg.digital/', 'builder', '在线定制插画素材', 1, 0, 0, NULL, '2021-07-08 16:33:12', '2021-07-08 16:33:44');
INSERT INTO `wx_navigation` VALUES (106, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/004d2c7aa0c6866d651dea347db6952c.png', 'https://www.openpeeps.com/', 'Open Peeps', '定制手绘插画', 1, 0, 0, NULL, '2021-07-08 16:35:37', '2021-07-08 16:35:37');
INSERT INTO `wx_navigation` VALUES (107, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/36d7a517f01e3e5dfbd928d863970912.png', 'https://www.manuelalangella.com/retroooo-folks/', 'Retroooo Folks', 'AI、Sketch和AD手绘插画', 1, 0, 0, NULL, '2021-07-08 16:36:48', '2021-07-08 16:36:48');
INSERT INTO `wx_navigation` VALUES (108, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/3a5f094b4719a04c1eb6be431203ac9b.png', 'https://www.abstrakt.design/', 'abstrakt', '特别的抽象插图', 1, 0, 0, NULL, '2021-07-08 16:38:27', '2021-07-08 16:38:27');
INSERT INTO `wx_navigation` VALUES (109, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/95e2baf623513c704d3706c892ef31a1.png', 'https://www.scribbbles.design/', 'scribbbles', '优秀的涂鸦插画', 1, 0, 0, NULL, '2021-07-08 16:39:50', '2021-07-08 16:39:50');
INSERT INTO `wx_navigation` VALUES (110, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/04f6db91a057807ba977785c161d7a6e.ico', 'https://woobro.design/', 'woobro', '支持多种格式的的免费插图', 1, 0, 0, NULL, '2021-07-08 16:43:50', '2021-07-08 16:43:50');
INSERT INTO `wx_navigation` VALUES (111, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/f90cc1d01d128c7a70cf84b63c738ed5.png', 'https://craftwork.design/', 'error404', '404页面免费商用插画', 1, 0, 0, NULL, '2021-07-08 16:50:00', '2021-07-08 16:50:00');
INSERT INTO `wx_navigation` VALUES (112, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/6905cb06c1cb40f93e98affd99919b99.png', 'https://growwwkit.com/', 'growwwkit', '不同主题插画素材', 1, 0, 0, NULL, '2021-07-08 16:52:17', '2021-07-08 16:52:17');
INSERT INTO `wx_navigation` VALUES (113, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/d780f75ab7bb9e6dece5be1d6b267f9e.png', 'https://wannathis.one/humans', 'Humans', 'Figma和Blender 3D角色集', 1, 0, 0, NULL, '2021-07-08 16:54:01', '2021-07-08 16:54:01');
INSERT INTO `wx_navigation` VALUES (114, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/71e597f3855a7a2a00153bc5778e6ac1.png', 'https://www.figma.com/community/file/890095002328610853', 'SALY', '一组Figma优质免费3D插画', 1, 0, 0, NULL, '2021-07-08 16:55:00', '2021-07-08 16:55:00');
INSERT INTO `wx_navigation` VALUES (115, 32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/c90b9e963fe7e3197090ef586820232f.png', 'https://www.handz.design/', 'HANDZ', '多种格式免费3D手势插画', 1, 0, 0, NULL, '2021-07-08 16:56:15', '2021-07-08 16:56:15');
INSERT INTO `wx_navigation` VALUES (116, 33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/e80c923e8d824792b27f7ca951911fb0.png', 'https://unsplash.com/', 'Unsplash', '高清无版权图库', 1, 0, 0, NULL, '2021-07-08 17:00:45', '2021-07-08 17:00:45');
INSERT INTO `wx_navigation` VALUES (117, 33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/746300e967ba0d7501d68e25f58fcc34.png', 'https://pixabay.com/zh/', 'pixabay', '免费正版高清图片', 1, 0, 0, NULL, '2021-07-08 17:02:35', '2021-07-08 17:02:35');
INSERT INTO `wx_navigation` VALUES (118, 33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/551cd6bf84d11cb4335ee422ee16577b.png', 'https://picography.co/', 'PICOGRAPHY', '免费绚丽高分辨率照片', 1, 0, 0, NULL, '2021-07-08 17:04:00', '2021-07-08 17:04:00');
INSERT INTO `wx_navigation` VALUES (119, 33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/6ac46bfb4dd0915b41e6e48086ed2682.png', 'https://www.everypixel.com/', 'everypixel', 'AI图片搜索引擎', 1, 0, 0, NULL, '2021-07-08 17:05:41', '2021-07-08 17:05:41');
INSERT INTO `wx_navigation` VALUES (120, 33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/8215fac2d086f1f3243bc2a0a58ed72a.ico', 'https://negativespace.co/', 'NegativeSpace', '免费商用高清图库', 1, 0, 0, NULL, '2021-07-08 17:07:25', '2021-07-08 17:07:25');
INSERT INTO `wx_navigation` VALUES (121, 33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/eef0e0d382eab2c6c7432851023067c9.png', 'https://www.pexels.com/zh-cn/', 'Pexels', '摄影师分享免费优先高清图', 1, 0, 0, NULL, '2021-07-08 17:09:02', '2021-07-08 17:09:02');
INSERT INTO `wx_navigation` VALUES (122, 33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/d74375d87890ca06261ce3e194b93edc.ico', 'https://www.foodiesfeed.com/', 'Foodiesfeed', '美食主题高清图库', 1, 0, 0, NULL, '2021-07-08 17:10:32', '2021-07-08 17:10:32');
INSERT INTO `wx_navigation` VALUES (123, 33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/d070f517e52f6ab783c4555a5ba91787.png', 'https://freephotos.cc/zh', 'freephotos.cc', '每日一张免费即时高清图', 1, 0, 0, NULL, '2021-07-08 17:12:48', '2021-07-08 17:12:48');
INSERT INTO `wx_navigation` VALUES (124, 33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/5891d469d63d8f8b5c8447927630f1cd.png', 'https://burst.shopify.com/', 'BURST', '分类下载免费商用高清图', 1, 0, 0, NULL, '2021-07-08 17:13:50', '2021-07-08 17:13:50');
INSERT INTO `wx_navigation` VALUES (125, 33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/1f729c3066c31fc1b3fa81169bbc66c5.png', 'https://kaboompics.com/', 'kaboompics', '发现免费摄影照片', 1, 0, 0, NULL, '2021-07-08 17:14:52', '2021-07-08 17:14:52');
INSERT INTO `wx_navigation` VALUES (126, 33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/e64dc531df8c41ffe4f0978b25704844.png', 'https://stocksnap.io/', 'StockSnap.io', '免费商用图片素材', 1, 0, 0, NULL, '2021-07-08 17:15:52', '2021-07-08 17:15:52');
INSERT INTO `wx_navigation` VALUES (127, 33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/f7bf351f59c046caec926eebdabb6bd2.png', 'https://isorepublic.com/', 'ISO', '大量的免费高清图和视频', 1, 0, 0, NULL, '2021-07-08 17:17:20', '2021-07-08 17:17:20');
INSERT INTO `wx_navigation` VALUES (128, 34, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/83d6fb7de5ec16459dd7b9d8f89a6830.png', 'https://coverr.co/', 'coverr', '免费商用高清背景视频', 1, 0, 0, NULL, '2021-07-08 17:18:37', '2021-07-08 17:18:37');
INSERT INTO `wx_navigation` VALUES (129, 34, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/ae38bcf9f2808b959decba09b6bc1f53.png', 'https://mixkit.co/', 'mixkit', '免费音视频素材', 1, 0, 0, NULL, '2021-07-08 17:19:26', '2021-07-08 17:19:26');
INSERT INTO `wx_navigation` VALUES (130, 34, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/1c52db13e5db7c9eef00a7f035fe6475.ico', 'https://www.videvo.net/', 'videvo', '免费4K音视频库', 1, 0, 0, NULL, '2021-07-08 17:21:57', '2021-07-08 17:21:57');
INSERT INTO `wx_navigation` VALUES (131, 34, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/b5d115206d0f2c58fca3fdb099774bfb.png', 'https://isorepublic.com/videos/', 'ISO VIDEOS', '免费商用视频素材', 1, 0, 0, NULL, '2021-07-08 17:22:35', '2021-07-08 17:22:35');
INSERT INTO `wx_navigation` VALUES (132, 35, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/4283f2e08f1f4cc37d906a01d77a6b99.png', 'https://www.svgbackgrounds.com/', 'SVG Backgrounds', '快速自定义背景', 1, 0, 0, NULL, '2021-07-08 17:28:26', '2021-07-08 17:28:26');
INSERT INTO `wx_navigation` VALUES (133, 35, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/e3d9a42264394de4a3216a40242fee49.png', 'http://thepatternlibrary.com/', 'thepatternlibrary', '有趣的背景图案', 1, 0, 0, NULL, '2021-07-08 17:29:51', '2021-07-08 17:29:51');
INSERT INTO `wx_navigation` VALUES (134, 35, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/113519e721c3be6e4c8ebe21dfe10916.svg', 'https://patterninja.com/', 'Patterninja', '可编辑的背景图案', 1, 0, 0, NULL, '2021-07-08 17:31:24', '2021-07-08 17:31:24');
INSERT INTO `wx_navigation` VALUES (135, 35, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/5011e378b92d200bc4dc240ea2201d57.png', 'https://coolbackgrounds.io/', 'Cool Backgrounds', '5个优质背景图案', 1, 0, 0, NULL, '2021-07-08 17:32:11', '2021-07-08 17:32:11');
INSERT INTO `wx_navigation` VALUES (136, 35, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/cfcd7b1299044e13eb15bf40b4e83f33.png', 'https://glitchart.io/', 'Glitch Art', '故障艺术背景生成器', 1, 0, 0, NULL, '2021-07-08 17:35:08', '2021-07-08 17:35:08');
INSERT INTO `wx_navigation` VALUES (137, 35, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/0cceef94ae197160d5c1e7ab15757c7a.png', 'https://doodad.dev/pattern-generator/#beautiful-dingbats', 'Pattern Generator', '可编辑的图案背景', 1, 0, 0, NULL, '2021-07-08 17:37:21', '2021-07-08 17:37:21');
INSERT INTO `wx_navigation` VALUES (138, 35, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/4aa97f03b302f293f973aa02e6117459.png', 'https://www.hituyu.com/', '图鱼', '中国风背景图案', 1, 0, 0, NULL, '2021-07-08 17:38:15', '2021-07-08 17:38:15');
INSERT INTO `wx_navigation` VALUES (139, 35, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/af46e569dfa7b0f6de18166abdc971d2.png', 'https://trianglify.io/', 'Trianglify.io', '低多边形背景生成器', 1, 0, 0, NULL, '2021-07-08 17:39:20', '2021-07-08 17:39:20');
INSERT INTO `wx_navigation` VALUES (140, 35, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/035266651115a66fc71711328e15a223.png', 'https://pattern.monster/', 'PATTERN MONSTER', '几何形背景图案', 1, 0, 0, NULL, '2021-07-08 17:40:52', '2021-07-08 17:40:52');
INSERT INTO `wx_navigation` VALUES (141, 36, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/923e1969d3b57f184a04914c6c5076d1.png', 'https://www.uplabs.com/ui-kits', 'UpLabs', '大量的优质UI套件', 1, 0, 0, NULL, '2021-07-08 17:42:13', '2021-07-08 17:42:13');
INSERT INTO `wx_navigation` VALUES (142, 36, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/713c8db326731247e05db5148862eefb.ico', 'https://developer.apple.com/design/resources/', 'Developer', 'Apple官方UI设计套件', 1, 0, 0, NULL, '2021-07-08 17:43:13', '2021-07-08 17:43:13');
INSERT INTO `wx_navigation` VALUES (143, 36, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/98e54044059bceb79e642f02036831f3.png', 'https://contrauikit.com/', 'contra', '一套免费开源线框UI套件', 1, 0, 0, NULL, '2021-07-08 17:44:17', '2021-07-08 17:44:17');
INSERT INTO `wx_navigation` VALUES (144, 36, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/49068bf91a05361cd62c437f3166604f.png', 'https://rootwireframekit.com/', 'Root', '具有创新性的UI套件', 1, 0, 0, NULL, '2021-07-08 17:45:04', '2021-07-08 17:45:04');
INSERT INTO `wx_navigation` VALUES (145, 36, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/2cf2ff60d8cebd76504261c9d78b2922.png', 'https://www.ui8.net/category/freebies', 'UI8', '免费优质的UI套件', 1, 0, 0, NULL, '2021-07-08 17:47:00', '2021-07-08 17:47:00');
INSERT INTO `wx_navigation` VALUES (146, 36, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/2e519f20d84bc9d58ea2deff5d03428c.png', 'https://files.design/', 'DESIGN FILES', '优质的UI设计套件', 1, 0, 0, NULL, '2021-07-08 17:48:10', '2021-07-08 17:48:10');
INSERT INTO `wx_navigation` VALUES (147, 36, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/361ea22243ea688e64e8b30b3926f0a2.png', 'https://craftwork.design/downloads/category/ui-kits/', 'Craftwork', 'Web与APP UI设计套件', 1, 0, 0, NULL, '2021-07-08 17:49:59', '2021-07-08 17:49:59');
INSERT INTO `wx_navigation` VALUES (148, 36, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/ebdc36860c557a4e80fe359c81efb7c8.png', 'https://uiplace.com/', 'UI PLACE', '初创企业UI套件', 1, 0, 0, NULL, '2021-07-08 17:51:01', '2021-07-08 17:51:01');
INSERT INTO `wx_navigation` VALUES (149, 36, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/db18397c227917e95a0a766bb56a8f00.png', 'https://files.design/templates/ios14gui', 'iOS Native', '免费的Figma等格式UI套件', 1, 0, 0, NULL, '2021-07-08 17:52:07', '2021-07-08 17:52:07');
INSERT INTO `wx_navigation` VALUES (150, 36, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/50e5c12f2d14b2434b9811d4fb85aa38.png', 'https://products.ls.graphics/macos/', 'Big Sur', '免费优质的MacOS UI套件', 1, 0, 0, NULL, '2021-07-08 17:55:24', '2021-07-08 17:55:24');
INSERT INTO `wx_navigation` VALUES (151, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/b55af2f6d552b744e186ff7235b9b11d.ico', 'https://www.mokupframes.com/', 'Mokup Frames', '一键创建GIF或视频展示', 1, 0, 0, NULL, '2021-07-08 17:56:57', '2021-07-08 17:56:57');
INSERT INTO `wx_navigation` VALUES (152, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/bb7b53bb42071716ed0ce362a7c23973.png', 'https://www.ls.graphics/free-mockups', 'ls.graphics', '免费优先样机', 1, 0, 0, NULL, '2021-07-08 17:58:13', '2021-07-08 17:58:13');
INSERT INTO `wx_navigation` VALUES (153, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/5f0cbe863d0bb676c65ae32334301435.png', 'https://mockup.ceacle.com/?kind=all&view=all&order=popular', 'c.mockup', '产品与VIS样机', 1, 0, 0, NULL, '2021-07-08 18:00:19', '2021-07-08 18:00:19');
INSERT INTO `wx_navigation` VALUES (154, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/5c214ae70fddcd4c4f8c6f741f727e89.png', 'https://www.bemore.graphics/', 'bemore.graphics', '40个iPhone 3D样机', 1, 0, 0, NULL, '2021-07-08 18:01:40', '2021-07-08 18:01:40');
INSERT INTO `wx_navigation` VALUES (155, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/72a860b84a4a06d916588468c2c45b77.png', 'https://uiprint.co/', 'UIPRINT', '线框iPhone样机', 1, 0, 0, NULL, '2021-07-08 18:02:38', '2021-07-08 18:02:38');
INSERT INTO `wx_navigation` VALUES (156, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/9ba426b755b18e62dc7857ac90b87e53.png', 'https://cleanmock.com/', 'Cleanmock', '简单有效的设计图模型', 1, 0, 0, NULL, '2021-07-08 18:04:42', '2021-07-08 18:04:42');
INSERT INTO `wx_navigation` VALUES (157, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/88eb5306bfe801b74c35b0fe3d1dc1a7.png', 'https://mockuuups.studio/', 'Mockuuups Studio', '即时模型生成器', 1, 0, 0, NULL, '2021-07-08 18:05:39', '2021-07-08 18:05:39');
INSERT INTO `wx_navigation` VALUES (158, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/6f0664eed3c31ca01440d49fc37b392b.png', 'https://threed.io/', 'threed.io', '免费3D模型设计图展示', 1, 0, 0, NULL, '2021-07-08 18:06:43', '2021-07-08 18:06:43');
INSERT INTO `wx_navigation` VALUES (159, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/6b554893ad50a50ac343a85bca37d117.png', 'https://www.screenspace.io/', 'screenspace', '业界领先的视频展示模型', 1, 0, 0, NULL, '2021-07-08 18:08:07', '2021-07-08 18:08:07');
INSERT INTO `wx_navigation` VALUES (160, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/376521086ce76ff731b8afaba3878048.png', 'https://shotsnapp.com/', 'Shotsnapp', '创建漂亮的设备模型', 1, 0, 0, NULL, '2021-07-08 18:09:43', '2021-07-08 18:09:43');
INSERT INTO `wx_navigation` VALUES (161, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/bfc83d1aa58ba3e11458980c743f9d22.png', 'https://www.rotato.app/mockups', 'mrmockup', '优质精美实体图片展示', 1, 0, 0, NULL, '2021-07-08 18:10:53', '2021-07-08 18:10:53');
INSERT INTO `wx_navigation` VALUES (162, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/b635b5607b3b582815ee03438d4a3dbd.png', 'https://mockupsforfree.com/', 'MOCKUPSFORFREE', '免费VIS等模型', 1, 0, 0, NULL, '2021-07-08 18:13:02', '2021-07-08 18:13:02');
INSERT INTO `wx_navigation` VALUES (163, 37, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/6f7e14ba37029aca61abca0198a1b6dc.png', 'https://www.figma.com/community/file/775789888359782610', 'Device Mockups', '免费的多种设备样机', 1, 0, 0, NULL, '2021-07-08 18:13:46', '2021-07-08 18:13:46');
INSERT INTO `wx_navigation` VALUES (164, 38, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/ae5329d38666046154a90222989deee6.png', 'http://ziti.cndesign.com/', 'CND设计网', '中文字体设计灵感', 1, 0, 0, NULL, '2021-07-08 18:15:06', '2021-07-08 18:15:06');
INSERT INTO `wx_navigation` VALUES (165, 38, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/3e189502efc1d2501a085e504709a496.png', 'http://www.zfont.cn/', 'Zfont.cn', '免费商用中文字体', 1, 0, 0, NULL, '2021-07-08 18:16:10', '2021-07-08 18:16:10');
INSERT INTO `wx_navigation` VALUES (166, 38, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/5c9fcf91ff8cb31fe8041c00b09efce7.png', 'https://51ifonts.com/client', 'iFonts', '字体管理神器', 1, 0, 0, NULL, '2021-07-08 18:17:05', '2021-07-08 18:17:05');
INSERT INTO `wx_navigation` VALUES (167, 38, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/55855d7b774f07d262f59a4e0a58fb27.ico', 'https://www.zitijia.com/', '字体家', '大量的免费商用字体', 1, 0, 0, NULL, '2021-07-08 18:17:57', '2021-07-08 18:17:57');
INSERT INTO `wx_navigation` VALUES (168, 38, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/37ea361d91671915ce98038847727b93.png', 'http://sicangziti.com/', '私藏字体', '收集整理中英日字体', 1, 0, 0, NULL, '2021-07-08 18:18:57', '2021-07-08 18:20:39');
INSERT INTO `wx_navigation` VALUES (169, 38, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/48402a4d904f57d8174ae24cdaac369f.png', 'https://www.hellofont.cn/', '字由', '设计师必备利器', 1, 0, 0, NULL, '2021-07-08 18:20:10', '2021-07-08 18:20:10');
INSERT INTO `wx_navigation` VALUES (170, 38, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/c666ffb325c99ff2fd5db1b746a717de.png', 'https://www.qiuziti.com/', 'Qiuziti', '在线识别字体', 1, 0, 0, NULL, '2021-07-08 18:22:53', '2021-07-08 18:22:53');
INSERT INTO `wx_navigation` VALUES (171, 38, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/d4aec2d1b68d757a6ad379fe468102c7.png', 'https://fonts.adobe.com/fonts', 'Adobe Fonts', 'Adobe网络字体', 1, 0, 0, NULL, '2021-07-08 18:24:52', '2021-07-08 18:24:52');
INSERT INTO `wx_navigation` VALUES (172, 39, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/2d2711191fbd2707adca4f86b99e9fbc.ico', 'https://www.iconfont.cn/', 'iconfont', '阿里巴巴矢量图标库', 1, 0, 0, NULL, '2021-07-08 18:27:34', '2021-07-08 18:27:34');
INSERT INTO `wx_navigation` VALUES (173, 39, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/50208a8c100dcbe00e5255d0eff1a2e9.png', 'https://www.iconfinder.com/', 'ICONFINDER', '在线编辑SVG图标', 1, 0, 0, NULL, '2021-07-08 18:28:24', '2021-07-08 18:28:24');
INSERT INTO `wx_navigation` VALUES (174, 39, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/63f88dc053ab55c9e01d40972cf557e2.png', 'https://css.gg/', 'css.gg', '700+SVG和Figma Icons', 1, 0, 0, NULL, '2021-07-08 18:29:31', '2021-07-08 18:29:31');
INSERT INTO `wx_navigation` VALUES (175, 39, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/628c1e0c87803fe0685cee27c4e3b5fc.png', 'iconshock', 'iconshock', '1200+时尚3D风格图标', 1, 0, 0, NULL, '2021-07-08 18:30:39', '2021-07-08 18:30:39');
INSERT INTO `wx_navigation` VALUES (176, 39, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/55c6541e8e61f972e819c0905c363001.png', 'https://icons8.cn/icons', 'Icons8', '下载免费PNG、SVG图标', 1, 0, 0, NULL, '2021-07-08 18:31:39', '2021-07-08 18:31:39');
INSERT INTO `wx_navigation` VALUES (177, 39, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/09afff420d7d0421102b067b10247439.png', 'https://iconstore.co/', 'iconstore', '一流设计师提供的免费图标', 1, 0, 0, NULL, '2021-07-08 18:32:33', '2021-07-08 18:32:33');
INSERT INTO `wx_navigation` VALUES (178, 39, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/3b0c752cadf7d1607204b3a52c9b054e.ico', 'https://iconmonstr.com/', 'iconmonstr', '4496+免费图标下载', 1, 0, 0, NULL, '2021-07-08 18:33:53', '2021-07-08 18:33:53');
INSERT INTO `wx_navigation` VALUES (179, 40, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/5c6d301b43032f8927234f299a0d7eb5.png', 'https://eva.design/', 'Eva Design', 'Eva设计系统', 1, 0, 0, NULL, '2021-07-08 18:36:22', '2021-07-08 18:36:22');
INSERT INTO `wx_navigation` VALUES (180, 40, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/818365821d4b0f7cca555a4df19d0886.png', 'https://developer.apple.com/design/human-interface-guidelines/', 'Apple Design', '人机界面准则', 1, 0, 0, NULL, '2021-07-08 18:37:39', '2021-07-08 18:37:39');
INSERT INTO `wx_navigation` VALUES (181, 40, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/f947502bb5d97ae0c0d8ce8b22cb76de.png', 'https://screensiz.es/phone', 'SCREEN SIZ.ES', '各种设备设计尺寸', 1, 0, 0, NULL, '2021-07-08 18:38:29', '2021-07-08 18:38:29');
INSERT INTO `wx_navigation` VALUES (182, 40, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/c2e1faa3529eed89d8d11ccacfedab72.png', 'https://developers.weixin.qq.com/miniprogram/design/', '小程序', '微信小程序设计指南', 1, 0, 0, NULL, '2021-07-08 18:39:26', '2021-07-08 18:39:26');
INSERT INTO `wx_navigation` VALUES (183, 39, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/9826fad5dbc00eba5cc35c6b51234467.png', 'https://iconpark.oceanengine.com/home', 'IcoPark', '2000+高质量图标库', 1, 0, 0, NULL, '2021-07-08 18:41:04', '2021-07-08 18:41:04');
INSERT INTO `wx_navigation` VALUES (184, 21, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/ff6520487a7fecf4d922ce86f424b11a.png', 'https://design.alipay.com/emotion', '犸良', '让动效更简单', 1, 1, 0, NULL, '2021-07-08 18:51:01', '2021-07-08 18:51:01');
INSERT INTO `wx_navigation` VALUES (185, 21, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/3677445598b310c6f1265f1be1b793c2.png', 'https://luban.aliyun.com/', '鹿班', '让设计更美好', 1, 1, 1, NULL, '2021-07-08 18:54:28', '2021-07-10 14:49:08');
INSERT INTO `wx_navigation` VALUES (186, 22, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/86228d308b8546fc9907452e46292458.png', 'https://www.dcloud.io/hbuilderx.html', 'HBuilderX', '为极客，为懒人，为你', 1, 1, 0, NULL, '2021-07-08 18:58:01', '2021-07-08 18:59:30');
INSERT INTO `wx_navigation` VALUES (187, 24, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/0afb2105270d87c93af4109e364bfb72.png', 'https://yiban.io/', '壹伴', '更好用的微信编辑器，但不止于此', 1, 1, 0, NULL, '2021-07-08 19:01:25', '2021-07-08 19:01:25');
INSERT INTO `wx_navigation` VALUES (188, 21, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/29f80850c3b4f2401db06b4e621b47ec.png', 'https://www.blobmaker.app/', 'Blobmaker', '在线随机形状生成器', 1, 1, 0, NULL, '2021-07-08 19:08:01', '2021-07-08 19:08:01');
INSERT INTO `wx_navigation` VALUES (189, 21, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/3a8ada88eeb45e3b2c143c5a02436d16.png', 'https://www.remove.bg/zh', 'remove bg', '在线AI抠图神器', 1, 1, 0, NULL, '2021-07-08 19:13:49', '2021-07-08 19:13:49');
INSERT INTO `wx_navigation` VALUES (190, 21, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/08/9ea6d73296e635570e7fb1d92f1ecb2c.png', 'https://squoosh.app/', 'Squoosh', 'Google出品在线图片压缩', 1, 1, 0, NULL, '2021-07-08 19:18:22', '2021-07-08 19:18:22');
INSERT INTO `wx_navigation` VALUES (191, 23, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/09/b06278d09e85852295259a6e71f25033.png', 'https://boardos.online/', 'BoardOS', '在线实时白板协作系统', 1, 1, 0, NULL, '2021-07-09 10:03:48', '2021-07-09 10:04:41');
INSERT INTO `wx_navigation` VALUES (192, 23, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/07/09/aad4f04fea36e13d4bb47162b94c255d.png', 'https://u.tools/', 'uTools', '你的生产力工具集', 1, 1, 0, NULL, '2021-07-09 16:46:57', '2021-07-09 16:46:57');
INSERT INTO `wx_navigation` VALUES (193, 22, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/08/24/7ac3be0df300a4f47331a9a103a69a1a.png', 'https://neumorphism.io/#e0e0e0', 'Neumorphism', '自动生成 CSS 代码的调试神器', 1, 1, 0, NULL, '2021-08-24 10:33:24', '2021-08-24 10:35:08');

-- ----------------------------
-- Table structure for wx_navigation_plate
-- ----------------------------
DROP TABLE IF EXISTS `wx_navigation_plate`;
CREATE TABLE `wx_navigation_plate`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '简介',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `superior_id` int(11) NULL DEFAULT NULL COMMENT '上级板块ID',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '	(0一级板块，1二级板块) ',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '	状态(0正常，1管理员隐藏)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`superior_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '导航栏板块表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_navigation_plate
-- ----------------------------
INSERT INTO `wx_navigation_plate` VALUES (21, '设计', 'design', 1, NULL, 1, 0, NULL, '2021-07-04 14:41:22', '2021-07-04 14:50:05');
INSERT INTO `wx_navigation_plate` VALUES (22, '前端', 'Develop', 1, NULL, 1, 0, NULL, '2021-07-04 14:43:48', '2021-07-04 14:50:11');
INSERT INTO `wx_navigation_plate` VALUES (23, '产品1', 'Product', 1, NULL, 1, 0, NULL, '2021-07-04 14:44:49', '2022-09-08 12:01:40');
INSERT INTO `wx_navigation_plate` VALUES (24, '运营', 'Operate', 1, NULL, 1, 0, NULL, '2021-07-04 14:47:52', '2021-07-04 14:50:23');
INSERT INTO `wx_navigation_plate` VALUES (25, '开拓眼界', 'The vision', 0, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `wx_navigation_plate` VALUES (26, '色彩搭配', 'Colour is tie-in', 0, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `wx_navigation_plate` VALUES (27, 'Web灵感', 'Web inspiration', 0, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `wx_navigation_plate` VALUES (28, 'UI 灵感', 'UI inspiration', 0, NULL, 0, 0, NULL, NULL, '2021-07-04 15:59:54');
INSERT INTO `wx_navigation_plate` VALUES (29, 'H5灵感', 'H5 inspiration', 0, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `wx_navigation_plate` VALUES (30, '品牌灵感', 'Brand inspiration', 0, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `wx_navigation_plate` VALUES (31, '电商视觉', 'Electrical business vision', 0, NULL, 0, 0, '2021-07-08 15:45:23', NULL, '2021-07-08 15:45:23');
INSERT INTO `wx_navigation_plate` VALUES (32, '插画素材', 'Illustration material', 0, NULL, 0, 0, NULL, NULL, '2021-07-08 15:50:04');
INSERT INTO `wx_navigation_plate` VALUES (33, '免费图库', 'Free gallery', 0, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `wx_navigation_plate` VALUES (34, '背景视频', 'Background video', 0, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `wx_navigation_plate` VALUES (35, '背景图案', 'background', 0, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `wx_navigation_plate` VALUES (36, 'UI套件', 'UI suite', 0, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `wx_navigation_plate` VALUES (37, '样机模型', 'Prototype model', 0, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `wx_navigation_plate` VALUES (38, '字体设计', 'Font design', 0, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `wx_navigation_plate` VALUES (39, '图标设计', 'Icon design', 0, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `wx_navigation_plate` VALUES (40, '设计规范', 'design specification', 0, NULL, 0, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wx_notice
-- ----------------------------
DROP TABLE IF EXISTS `wx_notice`;
CREATE TABLE `wx_notice`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `posts_id` bigint(20) NULL DEFAULT 0 COMMENT '帖子ID',
  `order_id` int(11) NULL DEFAULT 0 COMMENT '订单ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `is_read` tinyint(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0 COMMENT '是否已读(0未读，1已读)',
  `notice_type` tinyint(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0 COMMENT '类型(0系统通知，1活动通知，2帖子点赞通知，3帖子收藏通知，4帖子评论通知，5评论点赞通知，6打赏通知，7帖子审核通知，8订单通知)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`posts_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2033 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_notice
-- ----------------------------
INSERT INTO `wx_notice` VALUES (1966, 11580, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通mini 大会员。', 1, 1, NULL, '2022-08-23 23:05:03', '2022-08-27 07:09:06');
INSERT INTO `wx_notice` VALUES (1967, 10000, 343, 0, '收到了一个喜欢', '您的动态收到了「蓝色妖姬」的喜欢。', 0, 2, NULL, '2022-08-23 23:36:40', '2022-08-23 23:36:40');
INSERT INTO `wx_notice` VALUES (1968, 10000, 344, 0, '收到了一个喜欢', '您的动态收到了「蓝色妖姬」的喜欢。', 0, 2, NULL, '2022-08-23 23:36:40', '2022-08-23 23:36:40');
INSERT INTO `wx_notice` VALUES (1969, 10000, 342, 0, '收到了一个喜欢', '您的动态收到了「蓝色妖姬」的喜欢。', 0, 2, NULL, '2022-08-23 23:36:40', '2022-08-23 23:36:40');
INSERT INTO `wx_notice` VALUES (1970, 10000, 134, 0, '收到了一个喜欢', '您的动态收到了「蓝色妖姬」的喜欢。', 0, 2, NULL, '2022-08-23 23:36:40', '2022-08-23 23:36:40');
INSERT INTO `wx_notice` VALUES (1971, 10000, 135, 0, '收到了一个喜欢', '您的动态收到了「蓝色妖姬」的喜欢。', 0, 2, NULL, '2022-08-23 23:36:40', '2022-08-23 23:36:40');
INSERT INTO `wx_notice` VALUES (1972, 11582, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通mini 大会员。', 0, 1, NULL, '2022-08-24 02:46:21', '2022-08-24 02:46:21');
INSERT INTO `wx_notice` VALUES (1973, 11583, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通mini 大会员。', 0, 1, NULL, '2022-08-31 10:41:48', '2022-08-31 10:41:48');
INSERT INTO `wx_notice` VALUES (1974, 11585, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通mini 大会员。', 1, 1, NULL, '2022-08-31 19:41:11', '2022-09-09 20:09:42');
INSERT INTO `wx_notice` VALUES (1975, 11584, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通mini 大会员。', 1, 1, NULL, '2022-09-03 14:11:51', '2022-09-19 19:58:04');
INSERT INTO `wx_notice` VALUES (1976, 10000, 0, 0, '创建的圈子收获粉丝', 'Shinawatra关注了你创建的「家有萌宠」圈子。', 0, 0, NULL, '2022-09-03 15:24:21', '2022-09-03 15:24:21');
INSERT INTO `wx_notice` VALUES (1977, 10000, 384, 0, '有新的内容待审核', '您创建的圈子「守宫日常」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-09-04 03:19:29', '2022-09-04 03:19:29');
INSERT INTO `wx_notice` VALUES (1978, 11584, 0, 0, '帖子审核通知', '您的发表的帖子已经审核通过啦', 1, 0, NULL, '2022-09-04 03:37:25', '2022-09-19 19:58:04');
INSERT INTO `wx_notice` VALUES (1979, 11589, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通mini 大会员。', 0, 1, NULL, '2022-09-04 23:07:14', '2022-09-04 23:07:14');
INSERT INTO `wx_notice` VALUES (1980, 10000, 385, 0, '有新的内容待审核', '您创建的圈子「奋斗兔」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-09-05 09:39:13', '2022-09-05 09:39:13');
INSERT INTO `wx_notice` VALUES (1981, 11584, 0, 0, '帖子审核通知', '审核通过，您的发表的帖子已经审核通过', 1, 0, NULL, '2022-09-06 13:41:35', '2022-09-19 19:58:04');
INSERT INTO `wx_notice` VALUES (1982, 11591, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通mini 大会员。', 0, 1, NULL, '2022-09-07 10:22:49', '2022-09-07 10:22:49');
INSERT INTO `wx_notice` VALUES (1983, 10000, 386, 0, '有新的内容待审核', '您创建的圈子「喵生大事」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-09-07 12:18:20', '2022-09-07 12:18:20');
INSERT INTO `wx_notice` VALUES (1984, 10001, 0, 0, '帖子审核通知', '审核通过，您的发表的帖子已经审核通过', 0, 0, NULL, '2022-09-07 12:20:47', '2022-09-07 12:20:47');
INSERT INTO `wx_notice` VALUES (1985, 10000, 387, 0, '有新的内容待审核', '您创建的圈子「喵生活仪式感」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-09-07 12:22:50', '2022-09-07 12:22:50');
INSERT INTO `wx_notice` VALUES (1986, 11581, 0, 0, '帖子审核通知', '审核通过，您的发表的帖子已经审核通过', 0, 0, NULL, '2022-09-07 12:23:19', '2022-09-07 12:23:19');
INSERT INTO `wx_notice` VALUES (1987, 11592, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通mini 大会员。', 1, 1, NULL, '2022-09-07 12:47:47', '2022-09-07 12:54:04');
INSERT INTO `wx_notice` VALUES (1988, 10000, 388, 0, '有新的内容待审核', '您创建的圈子「狗子沙雕瞬间」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-09-08 21:53:24', '2022-09-08 21:53:24');
INSERT INTO `wx_notice` VALUES (1989, 11595, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通宠也大会员。', 0, 1, NULL, '2022-09-08 21:58:09', '2022-09-08 21:58:09');
INSERT INTO `wx_notice` VALUES (1990, 11584, 385, 0, '收到了一个评论快去看看吧', '神经蛙评论了您的动态。', 1, 4, NULL, '2022-09-08 21:58:34', '2022-09-14 10:38:51');
INSERT INTO `wx_notice` VALUES (1991, 11596, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通宠也大会员。', 0, 1, NULL, '2022-09-08 21:58:51', '2022-09-08 21:58:51');
INSERT INTO `wx_notice` VALUES (1992, 11597, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通宠也大会员。', 0, 1, NULL, '2022-09-08 23:19:03', '2022-09-08 23:19:03');
INSERT INTO `wx_notice` VALUES (1993, 11584, 385, 0, '收到了一个喜欢', '您的动态收到了「魏剑帆」的喜欢。', 1, 2, NULL, '2022-09-09 02:34:41', '2022-09-19 20:11:15');
INSERT INTO `wx_notice` VALUES (1994, 11584, 384, 0, '收到了一个喜欢', '您的动态收到了「魏剑帆」的喜欢。', 1, 2, NULL, '2022-09-09 02:34:41', '2022-09-19 20:11:15');
INSERT INTO `wx_notice` VALUES (1995, 11584, 384, 0, '收到了一个收藏', '您的动态被「魏剑帆」收藏啦！', 1, 3, NULL, '2022-09-09 02:34:41', '2022-09-19 20:11:15');
INSERT INTO `wx_notice` VALUES (1996, 11584, 385, 0, '收到了一个评论快去看看吧', '明祥评论了您的动态。', 1, 4, NULL, '2022-09-11 16:14:24', '2022-09-14 10:38:51');
INSERT INTO `wx_notice` VALUES (1997, 11600, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通宠也大会员。', 1, 1, NULL, '2022-09-13 09:47:55', '2022-09-15 07:09:23');
INSERT INTO `wx_notice` VALUES (1998, 11580, 389, 0, '有新的内容待审核', '您创建的圈子「奋斗兔」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-09-13 10:08:08', '2022-09-13 10:08:08');
INSERT INTO `wx_notice` VALUES (1999, 11600, 0, 0, '帖子审核通知', '审核通过，您的发表的帖子已经审核通过', 1, 0, NULL, '2022-09-14 15:32:55', '2022-09-15 07:09:23');
INSERT INTO `wx_notice` VALUES (2000, 11592, 0, 0, '帖子审核通知', '审核通过，您的发表的帖子已经审核通过', 0, 0, NULL, '2022-09-14 15:33:05', '2022-09-14 15:33:05');
INSERT INTO `wx_notice` VALUES (2001, 11592, 388, 0, '收到了一个喜欢', '您的动态收到了「Michael Eason」的喜欢。', 0, 2, NULL, '2022-09-18 15:48:57', '2022-09-18 15:48:57');
INSERT INTO `wx_notice` VALUES (2003, 11592, 388, 0, '收到了一个喜欢', '您的动态收到了「低调」的喜欢。', 0, 2, NULL, '2022-09-19 18:07:57', '2022-09-19 18:07:57');
INSERT INTO `wx_notice` VALUES (2004, 11581, 387, 0, '收到了一个喜欢', '您的动态收到了「低调」的喜欢。', 0, 2, NULL, '2022-09-19 18:07:57', '2022-09-19 18:07:57');
INSERT INTO `wx_notice` VALUES (2005, 10001, 386, 0, '收到了一个喜欢', '您的动态收到了「低调」的喜欢。', 0, 2, NULL, '2022-09-19 18:07:57', '2022-09-19 18:07:57');
INSERT INTO `wx_notice` VALUES (2006, 11584, 385, 0, '收到了一个收藏', '您的动态被「低调」收藏啦！', 1, 3, NULL, '2022-09-19 18:07:57', '2022-09-19 20:11:15');
INSERT INTO `wx_notice` VALUES (2007, 11584, 385, 0, '收到了一个喜欢', '您的动态收到了「低调」的喜欢。', 1, 2, NULL, '2022-09-19 18:07:57', '2022-09-19 20:11:15');
INSERT INTO `wx_notice` VALUES (2008, 11584, 0, 0, '帖子审核通知', '审核通过，您的发表的帖子已经审核通过', 1, 0, NULL, '2022-09-19 19:55:55', '2022-09-19 19:58:04');
INSERT INTO `wx_notice` VALUES (2009, 11584, 0, 0, '帖子审核通知', '审核通过，您的发表的帖子已经审核通过', 1, 0, NULL, '2022-09-19 19:56:01', '2022-09-19 19:58:04');
INSERT INTO `wx_notice` VALUES (2010, 11584, 385, 0, '收到了一个喜欢', '您的动态收到了「tomlofter」的喜欢。', 1, 2, NULL, '2022-09-19 20:11:08', '2022-09-19 20:11:15');
INSERT INTO `wx_notice` VALUES (2011, 11600, 389, 0, '收到了一个喜欢', '您的动态收到了「超_越梦想」的喜欢。', 0, 2, NULL, '2022-09-20 01:52:03', '2022-09-20 01:52:03');
INSERT INTO `wx_notice` VALUES (2012, 11592, 388, 0, '收到了一个喜欢', '您的动态收到了「超_越梦想」的喜欢。', 0, 2, NULL, '2022-09-20 01:52:03', '2022-09-20 01:52:03');
INSERT INTO `wx_notice` VALUES (2013, 11602, 0, 0, '限时活动领取大会员', '您成功参与分享领大会员活动，领取成功已为您开通宠也大会员。', 0, 1, NULL, '2022-09-20 09:41:49', '2022-09-20 09:41:49');
INSERT INTO `wx_notice` VALUES (2014, 11592, 0, 0, '评论审核通知', '审核通过，您的发表的评论已经审核通过', 0, 0, NULL, '2022-09-27 10:10:01', '2022-09-27 10:10:01');
INSERT INTO `wx_notice` VALUES (2015, 11580, 390, 0, '有新的内容待审核', '您创建的圈子「奋斗兔」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-01 22:19:23', '2022-10-01 22:19:23');
INSERT INTO `wx_notice` VALUES (2016, 10000, 391, 0, '有新的内容待审核', '您创建的圈子「守宫日常」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-03 01:52:57', '2022-10-03 01:52:57');
INSERT INTO `wx_notice` VALUES (2017, 11583, 392, 0, '有新的内容待审核', '您创建的圈子「日常问答」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-03 02:08:29', '2022-10-03 02:08:29');
INSERT INTO `wx_notice` VALUES (2018, 11583, 393, 0, '有新的内容待审核', '您创建的圈子「日常问答」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-03 02:08:29', '2022-10-03 02:08:29');
INSERT INTO `wx_notice` VALUES (2019, 11605, 0, 0, '帖子审核通知', '审核通过，您的发表的帖子已经审核通过', 0, 0, NULL, '2022-10-03 02:09:01', '2022-10-03 02:09:01');
INSERT INTO `wx_notice` VALUES (2020, 11583, 394, 0, '有新的内容待审核', '您创建的圈子「日常问答」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-03 02:29:07', '2022-10-03 02:29:07');
INSERT INTO `wx_notice` VALUES (2021, 11583, 395, 0, '有新的内容待审核', '您创建的圈子「日常问答」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-03 02:30:57', '2022-10-03 02:30:57');
INSERT INTO `wx_notice` VALUES (2022, 11583, 396, 0, '有新的内容待审核', '您创建的圈子「日常问答」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-03 02:33:15', '2022-10-03 02:33:15');
INSERT INTO `wx_notice` VALUES (2023, 11583, 398, 0, '您的圈子有新的内容发布', '您创建的圈子「日常问答」有一篇新的内容发布，您要好好把关哦。', 0, 7, NULL, '2022-10-03 03:08:52', '2022-10-03 03:08:52');
INSERT INTO `wx_notice` VALUES (2024, 11583, 399, 0, '您的圈子有新的内容发布', '您创建的圈子「日常问答」有一篇新的内容发布，您要好好把关哦。', 0, 7, NULL, '2022-10-03 03:32:26', '2022-10-03 03:32:26');
INSERT INTO `wx_notice` VALUES (2025, 11605, 396, 0, '收到了一个评论快去看看吧', 'test_81评论了您的动态。', 0, 4, NULL, '2022-10-03 03:43:09', '2022-10-03 03:43:09');
INSERT INTO `wx_notice` VALUES (2026, 11580, 389, 0, '有新的内容待审核', '您创建的圈子「家有萌宠」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-10 01:22:15', '2022-10-10 01:22:15');
INSERT INTO `wx_notice` VALUES (2027, 11583, 390, 0, '有新的内容待审核', '您创建的圈子「日常问答」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-11 01:23:50', '2022-10-11 01:23:50');
INSERT INTO `wx_notice` VALUES (2028, 11583, 391, 0, '有新的内容待审核', '您创建的圈子「日常问答」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-11 01:31:01', '2022-10-11 01:31:01');
INSERT INTO `wx_notice` VALUES (2029, 11583, 392, 0, '有新的内容待审核', '您创建的圈子「日常问答」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-11 01:37:05', '2022-10-11 01:37:05');
INSERT INTO `wx_notice` VALUES (2030, 11583, 393, 0, '有新的内容待审核', '您创建的圈子「日常问答」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-11 01:38:48', '2022-10-11 01:38:48');
INSERT INTO `wx_notice` VALUES (2031, 11583, 394, 0, '有新的内容待审核', '您创建的圈子「日常问答」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-11 01:42:29', '2022-10-11 01:42:29');
INSERT INTO `wx_notice` VALUES (2032, 11583, 395, 0, '有新的内容待审核', '您创建的圈子「日常问答」有一篇新的内容等待您去审核哦，请务必在24小时内进行处理。', 0, 7, NULL, '2022-10-11 01:44:08', '2022-10-11 01:44:08');

-- ----------------------------
-- Table structure for wx_order
-- ----------------------------
DROP TABLE IF EXISTS `wx_order`;
CREATE TABLE `wx_order`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `order_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '订单类型',
  `order_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品信息',
  `order_price` decimal(10, 2) UNSIGNED NOT NULL COMMENT '订单金额',
  `order_pay_price` decimal(10, 2) UNSIGNED NOT NULL COMMENT '支付金额',
  `order_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `order_serial_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支付流水号',
  `parame` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '附属参数',
  `order_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0未付款，1已付款，1已退款)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 399 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_order
-- ----------------------------
INSERT INTO `wx_order` VALUES (5, 10000, '1', '开通会员', 0.10, 0.10, '16210625539072', '', NULL, 0, NULL, '2021-05-15 15:09:13', '2021-05-15 15:09:13');
INSERT INTO `wx_order` VALUES (6, 10000, '1', '开通会员', 0.10, 0.10, '16210626385292', '4200001038202105155714446376', NULL, 1, NULL, '2021-05-15 15:10:38', '2021-05-15 15:24:54');
INSERT INTO `wx_order` VALUES (396, 11584, '1', '开通会员', 9.90, 9.90, '16619317241969', '', '', 0, NULL, '2022-08-31 15:42:04', '2022-08-31 15:42:04');
INSERT INTO `wx_order` VALUES (397, 11589, '2', '打赏', 2.00, 2.00, '16623074096690', '', 'a:3:{s:11:\"rewardPrice\";s:1:\"2\";s:7:\"postsId\";i:384;s:11:\"postsUserId\";i:11584;}', 0, NULL, '2022-09-05 00:03:29', '2022-09-05 00:03:29');
INSERT INTO `wx_order` VALUES (398, 11592, '2', '打赏', 2.00, 2.00, '16625263997884', '', 'a:3:{s:11:\"rewardPrice\";s:1:\"2\";s:7:\"postsId\";i:384;s:11:\"postsUserId\";i:11584;}', 0, NULL, '2022-09-07 12:53:19', '2022-09-07 12:53:19');

-- ----------------------------
-- Table structure for wx_pages
-- ----------------------------
DROP TABLE IF EXISTS `wx_pages`;
CREATE TABLE `wx_pages`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '页面标题',
  `right` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '右上角图标',
  `type` tinyint(4) NOT NULL COMMENT '模板类型',
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '页面配置',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_pages
-- ----------------------------

-- ----------------------------
-- Table structure for wx_plate
-- ----------------------------
DROP TABLE IF EXISTS `wx_plate`;
CREATE TABLE `wx_plate`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `plate_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '板块名称',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `plate_introduce` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '板块介绍',
  `plate_state` tinyint(1) NULL DEFAULT 0 COMMENT '	状态(0正常，1管理员隐藏)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '板块表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_plate
-- ----------------------------
INSERT INTO `wx_plate` VALUES (1, '猫咪', 1, '猫咪的原来有这么好玩…', 1, NULL, '2021-02-21 11:01:47', '2022-08-31 17:47:48');
INSERT INTO `wx_plate` VALUES (2, '狗狗', 2, '以前的狗子:牛逼哄哄；', 1, NULL, '2021-02-22 07:14:54', '2022-08-31 17:49:54');
INSERT INTO `wx_plate` VALUES (3, '蜥蜴', 3, '物以“蜥”为贵', 1, NULL, '2021-02-22 07:15:09', '2022-08-31 17:50:23');
INSERT INTO `wx_plate` VALUES (4, '蛇类', 4, '全村吃饭，我坐小孩一桌', 1, NULL, '2021-02-22 07:15:48', '2022-08-31 18:01:11');
INSERT INTO `wx_plate` VALUES (5, '鱼类', 5, '有一只深海鱼在游泳', 1, NULL, '2021-02-22 07:16:00', '2022-08-31 17:52:01');
INSERT INTO `wx_plate` VALUES (6, '龟类', 6, '你妈和你女朋友同时掉水', 1, NULL, '2021-02-22 07:16:13', '2022-08-31 17:53:30');
INSERT INTO `wx_plate` VALUES (7, '鸟类', 7, '在吗？鸟我一下', 1, NULL, '2021-02-22 07:16:24', '2022-08-31 17:54:42');
INSERT INTO `wx_plate` VALUES (8, '蜘蛛', 8, '活捉一只蜘蛛侠', 1, NULL, '2021-02-22 07:16:36', '2022-08-31 17:55:45');
INSERT INTO `wx_plate` VALUES (9, '蝶类', 9, '蝴蝶象征了自由、美丽。', 1, NULL, '2021-02-22 07:16:50', '2022-08-31 17:58:57');
INSERT INTO `wx_plate` VALUES (10, '虫类', 10, '来展示一下你的稀奇古怪', 1, NULL, '2021-02-22 07:17:05', '2022-08-31 18:00:54');
INSERT INTO `wx_plate` VALUES (11, '美食', 0, '美食', 1, '2022-08-31 18:01:59', '2021-02-23 09:24:51', '2022-08-31 18:01:59');
INSERT INTO `wx_plate` VALUES (12, '居家生活', 0, '居家生活', 1, '2022-08-31 18:01:18', '2021-02-23 09:25:33', '2022-08-31 18:01:18');
INSERT INTO `wx_plate` VALUES (13, '兴趣学习', 0, '兴趣学习', 1, '2022-08-31 18:01:51', '2021-02-23 09:26:23', '2022-08-31 18:01:51');
INSERT INTO `wx_plate` VALUES (14, '文化创作', 0, '文化创作', 1, '2022-08-31 18:01:46', '2021-02-23 09:26:55', '2022-08-31 18:01:46');
INSERT INTO `wx_plate` VALUES (15, '书影音', 0, '书影音', 1, '2022-08-31 18:01:42', '2021-02-23 09:27:21', '2022-08-31 18:01:42');
INSERT INTO `wx_plate` VALUES (16, 'DIY', 0, 'DIY', 1, '2022-08-31 18:01:39', '2021-02-23 09:27:36', '2022-08-31 18:01:39');
INSERT INTO `wx_plate` VALUES (17, '潮玩', 0, '潮玩', 1, '2022-08-31 18:01:34', '2021-02-23 09:28:08', '2022-08-31 18:01:34');
INSERT INTO `wx_plate` VALUES (19, '测试', 0, '111', 0, '2021-05-05 14:09:46', '2021-05-05 14:09:41', '2021-05-05 14:09:46');
INSERT INTO `wx_plate` VALUES (20, '测试', 0, '111', 0, '2021-05-05 14:10:10', '2021-05-05 14:10:01', '2021-05-05 14:10:10');
INSERT INTO `wx_plate` VALUES (21, '花草', 11, '今晚月色真美', 1, NULL, '2022-08-31 18:03:59', '2022-08-31 18:03:59');
INSERT INTO `wx_plate` VALUES (22, '兔类', 12, '兔兔在撒娇吗', 1, NULL, '2022-09-01 04:02:55', '2022-09-01 04:02:55');
INSERT INTO `wx_plate` VALUES (23, '鼠类', 13, '人的本质是仓鼠,只要去', 1, NULL, '2022-09-01 04:03:54', '2022-09-01 04:03:54');
INSERT INTO `wx_plate` VALUES (24, '所有', 14, '我干了，你随意', 1, NULL, '2022-10-03 01:57:40', '2022-10-03 01:57:40');

-- ----------------------------
-- Table structure for wx_post_meta_num
-- ----------------------------
DROP TABLE IF EXISTS `wx_post_meta_num`;
CREATE TABLE `wx_post_meta_num`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL COMMENT 'post_id',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_key',
  `meta_value` bigint(20) NOT NULL COMMENT 'meta_value',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`post_id`, `meta_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_post_meta_num
-- ----------------------------

-- ----------------------------
-- Table structure for wx_post_meta_str
-- ----------------------------
DROP TABLE IF EXISTS `wx_post_meta_str`;
CREATE TABLE `wx_post_meta_str`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL COMMENT 'post_id',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_key',
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_value',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`post_id`, `meta_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_post_meta_str
-- ----------------------------

-- ----------------------------
-- Table structure for wx_posts
-- ----------------------------
DROP TABLE IF EXISTS `wx_posts`;
CREATE TABLE `wx_posts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `posts_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '帖子内容',
  `user_id` bigint(20) NULL DEFAULT 0 COMMENT '用户ID',
  `pay_content_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '付费id',
  `circle_id` int(20) NULL DEFAULT 0 COMMENT '圈子ID',
  `circle_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '圈子名称',
  `address_id` int(1) NULL DEFAULT 0 COMMENT '位置ID',
  `tags_id` int(1) NULL DEFAULT 0 COMMENT '标签ID（可多标签用,隔开）',
  `img_count` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '图片数量',
  `is_information` tinyint(1) NULL DEFAULT 0 COMMENT '热榜(0否，1是)',
  `is_examine` tinyint(1) NULL DEFAULT 0 COMMENT '审核状态(0待审核，1审核通过，2驳回)',
  `overrule_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '驳回原因',
  `overrule_is_read` tinyint(1) NULL DEFAULT 0 COMMENT '驳回用户是否已读(0未读，1已读)',
  `posts_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0正常，1用户删除，2管理员下架)',
  `device` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '客户端',
  `is_sticky` tinyint(3) NULL DEFAULT 0 COMMENT '是否置顶',
  `is_reward` tinyint(1) NULL DEFAULT 1 COMMENT '是否开启打赏',
  `is_blur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '图片高斯模糊',
  `weight` timestamp(0) NOT NULL DEFAULT '2022-12-09 14:18:00' COMMENT '计算热度',
  `degree` double(8, 2) NOT NULL DEFAULT 0.00 COMMENT '实时热度',
  `last_reply_at` timestamp(0) NOT NULL DEFAULT '2022-12-09 14:18:00' COMMENT '最后回复时间',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`circle_id`) USING BTREE,
  INDEX `index_2`(`pay_content_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 396 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '帖子(动态)表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_posts
-- ----------------------------
INSERT INTO `wx_posts` VALUES (384, '<a href=\"https://chongyeapp.com\">测试</a> <a href=\"https://asdf\">asf</a>哈哈哈测试', 11584, 0, 32, '守宫日常', 33, 0, 0, 1, 1, '0', 0, 0, NULL, 0, 1, '0', '2022-12-09 14:18:00', 0.00, '2022-12-09 14:18:00', NULL, '2022-09-04 03:19:29', '2022-10-10 01:56:57');
INSERT INTO `wx_posts` VALUES (385, '111', 11584, 0, 41, '奋斗兔', 0, 0, 0, 1, 1, '0', 0, 0, NULL, 0, 1, '0', '2022-12-09 14:18:00', 0.00, '2022-12-09 14:18:00', NULL, '2022-09-05 09:39:13', '2022-10-10 01:56:57');
INSERT INTO `wx_posts` VALUES (386, 'asdfsadsfasdfasdfsdf', 10001, 0, 24, '喵生大事', 20, 0, 0, 0, 1, '0', 0, 0, NULL, 0, 1, '0', '2022-12-09 14:18:00', 0.00, '2022-12-09 14:18:00', NULL, '2022-09-07 12:18:20', '2022-10-10 01:56:57');
INSERT INTO `wx_posts` VALUES (387, 'dsfasdfasd', 11581, 0, 25, '喵生活仪式感', 8, 0, 0, 0, 1, '0', 0, 0, NULL, 0, 1, '0', '2022-12-09 14:18:00', 0.00, '2022-12-09 14:18:00', NULL, '2022-09-07 12:22:50', '2022-10-10 01:56:57');
INSERT INTO `wx_posts` VALUES (390, '哈哈哈哈哈哈，终于完成了', 11583, 0, 44, '日常问答', 0, 0, 0, 0, 0, '0', 0, 0, NULL, 0, 1, '0', '2022-12-09 14:18:00', 0.00, '2022-12-09 14:18:00', NULL, '2022-10-11 01:23:50', '2022-10-11 01:23:50');
INSERT INTO `wx_posts` VALUES (391, '真的完成了吗', 11583, 0, 44, '日常问答', 0, 0, 0, 0, 0, '0', 0, 0, NULL, 0, 1, '0', '2022-12-09 14:18:00', 0.00, '2022-12-09 14:18:00', NULL, '2022-10-11 01:31:01', '2022-10-11 01:31:01');
INSERT INTO `wx_posts` VALUES (392, '打扫房间奥斯卡了的疯狂拉水电费', 11583, 0, 44, '日常问答', 0, 0, 0, 0, 0, '0', 0, 0, NULL, 0, 1, '0', '2022-12-09 14:18:00', 0.00, '2022-12-09 14:18:00', NULL, '2022-10-11 01:37:05', '2022-10-11 01:37:05');
INSERT INTO `wx_posts` VALUES (393, '打赏了会计法啥地方叫阿斯拉达', 11583, 0, 44, '日常问答', 0, 0, 0, 0, 0, '0', 0, 0, NULL, 0, 1, '0', '2022-12-09 14:18:00', 0.00, '2022-12-09 14:18:00', NULL, '2022-10-11 01:38:48', '2022-10-11 01:38:48');
INSERT INTO `wx_posts` VALUES (394, '大飞机阿克苏砥砺奋进奥斯卡劳动法', 11583, 0, 44, '日常问答', 0, 0, 0, 0, 0, '0', 0, 0, NULL, 0, 1, '0', '2022-12-09 14:18:00', 0.00, '2022-12-09 14:18:00', NULL, '2022-10-11 01:42:29', '2022-10-11 01:42:29');
INSERT INTO `wx_posts` VALUES (395, '挂号费还很多风格的观点看看', 11583, 0, 44, '日常问答', 0, 0, 0, 0, 0, '0', 0, 0, NULL, 0, 1, '0', '2022-12-09 14:18:00', 0.00, '2022-12-09 14:18:00', NULL, '2022-10-11 01:44:08', '2022-10-11 01:44:08');

-- ----------------------------
-- Table structure for wx_posts_address
-- ----------------------------
DROP TABLE IF EXISTS `wx_posts_address`;
CREATE TABLE `wx_posts_address`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `address_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '位置名称',
  `address_detailed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `latitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `longitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `address_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态(0正常，2管理员隐藏)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帖子位置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_posts_address
-- ----------------------------
INSERT INTO `wx_posts_address` VALUES (3, '广东省深圳市福田区福民路123号', '深圳市福田区人民政府', '22.52291', '114.05454', 0, '2021-03-09 10:37:18', '2021-02-27 08:13:00', '2021-03-09 10:37:18');
INSERT INTO `wx_posts_address` VALUES (4, '广东省深圳市福田区福民路123号', '深圳市福田区人民政府', '22.52291', '114.05454', 0, NULL, '2021-02-27 08:16:38', '2021-02-27 08:16:38');
INSERT INTO `wx_posts_address` VALUES (5, '广东省深圳市福田区福民路', '石厦深圳市福田区人民政府(福民路)', '22.52291', '114.05454', 0, NULL, '2021-03-06 06:41:58', '2021-03-06 06:41:58');
INSERT INTO `wx_posts_address` VALUES (6, '广东省深圳市福田区振兴路126号', '如家快捷酒店(华强北店)', '22.54689', '114.08849', 0, NULL, '2021-04-19 11:29:55', '2021-04-19 11:29:55');
INSERT INTO `wx_posts_address` VALUES (7, '广东省深圳市福田区福民路123号', '深圳市福田区人民政府', '22.52291', '114.05454', 0, NULL, '2021-04-23 03:31:53', '2021-04-23 03:31:53');
INSERT INTO `wx_posts_address` VALUES (8, '广东省深圳市福田区福民路石厦街与福民路交叉口向南130米路西', '新天世纪商务中心A座', '22.521676', '114.05305', 0, NULL, '2021-04-28 15:00:34', '2021-04-28 15:00:34');
INSERT INTO `wx_posts_address` VALUES (9, '山东省菏泽市牡丹区长江路', '颐和佳园(菏泽市牡丹区长江路)', '35.226665', '115.48183', 0, NULL, '2021-05-07 08:30:03', '2021-05-07 08:30:03');
INSERT INTO `wx_posts_address` VALUES (10, '广东省深圳市宝安区', '深圳宝安国际机场T3航站楼(福永镇)', '22.629641908452', '113.81080481384', 0, NULL, '2021-05-21 08:59:45', '2021-05-21 08:59:45');
INSERT INTO `wx_posts_address` VALUES (11, '浙江省绍兴市诸暨市', '下园(绍兴市诸暨市)', '29.787357', '120.393875', 0, NULL, '2021-06-08 07:20:35', '2021-06-08 07:20:35');
INSERT INTO `wx_posts_address` VALUES (12, '湖南省长沙市雨花区曙光中路136号', '狗子的猫腻宠物店', '28.178646087646', '113.00115966797', 0, NULL, '2021-06-08 09:28:26', '2021-06-08 09:28:26');
INSERT INTO `wx_posts_address` VALUES (13, '云南省昆明市官渡区付家营路', '红万家购物广场(中营店)', '24.946604', '102.73876', 0, NULL, '2021-06-13 13:06:07', '2021-06-13 13:06:07');
INSERT INTO `wx_posts_address` VALUES (14, '北京市北京市顺义区顺平路南辅线', '旭辉·空港中心A座(北京市顺义区)', '40.1156016915', '116.61148693746', 0, NULL, '2021-06-15 21:59:28', '2021-06-15 21:59:28');
INSERT INTO `wx_posts_address` VALUES (15, '山西省大同市平城区永泰南路', '星茂汇VovoPark(大同市平城区)', '40.071484', '113.30104', 0, NULL, '2021-06-17 16:53:18', '2021-06-17 16:53:18');
INSERT INTO `wx_posts_address` VALUES (16, '广东省广州市花都区风神大道8号', '东风日产乘用车公司', '23.379408', '113.16375', 0, NULL, '2021-06-29 08:40:44', '2021-06-29 08:40:44');
INSERT INTO `wx_posts_address` VALUES (17, '江苏省南京市雨花台区大周路88号中国(南京)软件谷', '软件谷·科创城', '31.939093', '118.74312', 0, NULL, '2021-07-02 17:28:26', '2021-07-02 17:28:26');
INSERT INTO `wx_posts_address` VALUES (18, '广东省广州市天河区上社车站大街', '上社', '23.136605298338', '113.37019423319', 0, NULL, '2021-07-18 00:36:46', '2021-07-18 00:36:46');
INSERT INTO `wx_posts_address` VALUES (19, '广东省深圳市南山区科技中三路', '科兴科学园(深圳市南山区科苑路15号)', '22.548901928618', '113.94200753381', 0, NULL, '2021-08-10 21:02:37', '2021-08-10 21:02:37');
INSERT INTO `wx_posts_address` VALUES (20, '湖南省衡阳市蒸湘区解放大道21号', '步步高广场(衡阳店)', '26.892042', '112.56743', 0, NULL, '2021-08-29 09:49:02', '2021-08-29 09:49:02');
INSERT INTO `wx_posts_address` VALUES (21, '湖北省武汉市洪山区民族大道', '中南民族大学(洪山区民族大道182号)', '30.487051374692', '114.39550886101', 0, NULL, '2021-09-06 13:21:29', '2021-09-06 13:21:29');
INSERT INTO `wx_posts_address` VALUES (22, '上海市静安区吴江路31号', '东方有线大厦', '31.230327606201', '121.46338653564', 0, NULL, '2021-09-08 14:56:42', '2021-09-08 14:56:42');
INSERT INTO `wx_posts_address` VALUES (23, '广东省深圳市南山区科技南一路', '深投控创智天地大厦', '22.538084', '113.94418', 0, NULL, '2021-09-29 16:44:07', '2021-09-29 16:44:07');
INSERT INTO `wx_posts_address` VALUES (24, '广东省深圳市龙岗区坂雪岗大道', '谭鸭血老火锅(龙岗店)', '22.65886', '114.072365', 0, NULL, '2021-09-30 10:39:32', '2021-09-30 10:39:32');
INSERT INTO `wx_posts_address` VALUES (25, '北京市东城区东长安街', '北京天安门广场', '39.903739929199', '116.39782714844', 0, NULL, '2021-10-14 13:51:02', '2021-10-14 13:51:02');
INSERT INTO `wx_posts_address` VALUES (26, '北京市海淀区永腾南路', '用友软件园西区1C', '40.067501068115', '116.23435974121', 0, NULL, '2021-11-02 13:04:35', '2021-11-02 13:04:35');
INSERT INTO `wx_posts_address` VALUES (27, '河南省郑州市金水区文化路17-2号', '文化路', '34.769685342401', '113.66701503294', 0, NULL, '2021-11-16 12:49:24', '2021-11-16 12:49:24');
INSERT INTO `wx_posts_address` VALUES (28, '江西省南昌市青山湖区西一环路', '江西农业大学东校区教学大楼(青山湖区)', '28.751741', '115.85128', 0, NULL, '2021-11-19 21:38:10', '2021-11-19 21:38:10');
INSERT INTO `wx_posts_address` VALUES (29, '江西省南昌市青山湖区经济技术开发区庐山中大道668号(财大西门口对面)', '7天酒店(昌北江西财经大学二店)', '28.747936', '115.851875', 0, NULL, '2021-11-19 21:39:15', '2021-11-19 21:39:15');
INSERT INTO `wx_posts_address` VALUES (30, '江苏省常州市溧阳市昆仑南路', '东城宾馆(昆仑南路店)', '31.430602682855', '119.49993979301', 0, NULL, '2021-11-24 20:06:10', '2021-11-24 20:06:10');
INSERT INTO `wx_posts_address` VALUES (31, '广东省深圳市福田区福华三路', '深圳会展中心', '22.530797958374', '114.05989074707', 0, NULL, '2022-01-22 13:24:58', '2022-01-22 13:24:58');
INSERT INTO `wx_posts_address` VALUES (32, '北京市昌平区龙锦三街', '龙锦苑6区', '40.082313537598', '116.3468170166', 0, NULL, '2022-02-10 17:18:19', '2022-02-10 17:18:19');
INSERT INTO `wx_posts_address` VALUES (33, '江苏省苏州市姑苏区三香路979号中翔经贸大楼1层', '川福楼(三香路店)', '31.296693', '120.586462', 0, NULL, '2022-09-04 03:19:29', '2022-09-04 03:19:29');
INSERT INTO `wx_posts_address` VALUES (34, '贵州省贵阳市云岩区黔东社区服务中心文昌北路(诺威驿站旁)华宫巷', '同辉·经典大厦', '26.585299', '106.718765', 0, NULL, '2022-09-08 21:53:24', '2022-09-08 21:53:24');

-- ----------------------------
-- Table structure for wx_posts_goods
-- ----------------------------
DROP TABLE IF EXISTS `wx_posts_goods`;
CREATE TABLE `wx_posts_goods`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `posts_id` bigint(20) NOT NULL COMMENT '帖子ID',
  `goods_id` bigint(20) NOT NULL COMMENT '商品ID',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '类型（0：words 1:single）',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`posts_id`) USING BTREE,
  INDEX `index_1`(`goods_id`) USING BTREE,
  INDEX `index_2`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帖子商品关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_posts_goods
-- ----------------------------
INSERT INTO `wx_posts_goods` VALUES (5, 342, 1034, 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_goods` VALUES (6, 343, 1018, 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_goods` VALUES (7, 343, 1019, 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_goods` VALUES (8, 344, 1018, 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_goods` VALUES (9, 350, 1043, 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_goods` VALUES (10, 355, 1043, 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_goods` VALUES (11, 358, 1033, 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_goods` VALUES (12, 384, 1044, 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_goods` VALUES (13, 384, 1045, 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_goods` VALUES (14, 386, 1044, 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_goods` VALUES (15, 387, 1044, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wx_posts_img
-- ----------------------------
DROP TABLE IF EXISTS `wx_posts_img`;
CREATE TABLE `wx_posts_img`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `posts_id` bigint(20) NOT NULL COMMENT '帖子id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片地址',
  `posts_img_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0正常，1用户删除，2管理员下架)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`posts_id`) USING BTREE,
  INDEX `index_1`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 382 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帖子图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_posts_img
-- ----------------------------
INSERT INTO `wx_posts_img` VALUES (373, 386, 10001, 'https://img.mini.chongyeapp.com/2022/09/07/db39a89a7a97c8c3ab20732f8a20f1e2.jpg', 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_img` VALUES (374, 386, 10001, 'https://img.mini.chongyeapp.com/2022/09/07/4631ba014409dd8499870029c88e393e.jpg', 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_img` VALUES (380, 390, 11583, 'https://img.mini.chongyeapp.com/2022/10/11/3f4ce2678ff6874587ece135fa69e8ce.png', 0, NULL, NULL, NULL);
INSERT INTO `wx_posts_img` VALUES (381, 392, 11583, 'https://img.mini.chongyeapp.com/2022/10/11/cccb7add07d53608711caccb3916bf21.png', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wx_posts_pay_content
-- ----------------------------
DROP TABLE IF EXISTS `wx_posts_pay_content`;
CREATE TABLE `wx_posts_pay_content`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL COMMENT '帖子id',
  `words_percent` tinyint(4) NOT NULL DEFAULT 100 COMMENT '字数百分比',
  `is_file` tinyint(4) NOT NULL DEFAULT 0 COMMENT '附件付费',
  `is_sound` tinyint(4) NOT NULL DEFAULT 0 COMMENT '音频付费',
  `hidden` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '隐藏内容',
  `price` double(8, 2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `credit_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0：金币 1：余额',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_0`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_posts_pay_content
-- ----------------------------

-- ----------------------------
-- Table structure for wx_posts_tags
-- ----------------------------
DROP TABLE IF EXISTS `wx_posts_tags`;
CREATE TABLE `wx_posts_tags`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `posts_id` bigint(20) NOT NULL COMMENT '帖子ID',
  `tags_id` bigint(20) NOT NULL COMMENT '标签ID',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`posts_id`) USING BTREE,
  INDEX `index_1`(`tags_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 324 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帖子标签关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_posts_tags
-- ----------------------------
INSERT INTO `wx_posts_tags` VALUES (311, 384, 73, NULL, NULL, NULL);
INSERT INTO `wx_posts_tags` VALUES (312, 386, 71, NULL, NULL, NULL);
INSERT INTO `wx_posts_tags` VALUES (313, 386, 72, NULL, NULL, NULL);
INSERT INTO `wx_posts_tags` VALUES (314, 387, 70, NULL, NULL, NULL);
INSERT INTO `wx_posts_tags` VALUES (315, 387, 71, NULL, NULL, NULL);
INSERT INTO `wx_posts_tags` VALUES (318, 390, 71, NULL, NULL, NULL);
INSERT INTO `wx_posts_tags` VALUES (319, 391, 71, NULL, NULL, NULL);
INSERT INTO `wx_posts_tags` VALUES (320, 392, 71, NULL, NULL, NULL);
INSERT INTO `wx_posts_tags` VALUES (321, 393, 71, NULL, NULL, NULL);
INSERT INTO `wx_posts_tags` VALUES (322, 394, 71, NULL, NULL, NULL);
INSERT INTO `wx_posts_tags` VALUES (323, 395, 71, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wx_posts_video
-- ----------------------------
DROP TABLE IF EXISTS `wx_posts_video`;
CREATE TABLE `wx_posts_video`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `posts_id` bigint(20) NOT NULL COMMENT '帖子id',
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  `video_thumb_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频封面',
  `posts_video_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0正常，1用户删除，2管理员下架)',
  `video_width` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宽',
  `video_height` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '高',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`posts_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帖子视频表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_posts_video
-- ----------------------------
INSERT INTO `wx_posts_video` VALUES (1, 10000, 51, 'https://qingniuhr-oss.qingniuhr.com/2021/02/27/SVFhjzCbkS8ZAylxKgxtO4dSDXchWlhRswMw6pIB.mp4', NULL, 0, NULL, NULL, NULL, '2021-02-27 08:16:38', '2021-02-27 08:16:38');
INSERT INTO `wx_posts_video` VALUES (2, 10000, 104, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/27/5fcce7fc147d2293fe1940b27505fd72.mp4', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/27/5fcce7fc147d2293fe1940b27505fd72.mp4', 0, NULL, NULL, NULL, '2021-04-27 02:56:47', '2021-04-27 02:56:47');
INSERT INTO `wx_posts_video` VALUES (3, 10000, 105, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/27/9ef55fc774345197d5a5fa4a0f4fd4f0.mp4', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/27/9ef55fc774345197d5a5fa4a0f4fd4f0.mp4', 0, NULL, NULL, NULL, '2021-04-27 02:59:09', '2021-04-27 02:59:09');
INSERT INTO `wx_posts_video` VALUES (4, 10000, 106, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/27/5414b6df1369dea8b266ad41dd6fb832.mp4', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/27/15e2c44a95245119c5803246c7b05188.png', 0, NULL, NULL, NULL, '2021-04-27 03:01:21', '2021-04-27 03:01:21');
INSERT INTO `wx_posts_video` VALUES (5, 10000, 107, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/27/d334dce99f6be65a6c1f3bbd0f0bd0ed.mp4', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/27/e45b621b9b65be2ccb217d8447e68836.png', 0, '540', '960', NULL, '2021-04-27 03:39:27', '2021-04-27 03:39:27');
INSERT INTO `wx_posts_video` VALUES (6, 10000, 108, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/27/14358eb4adcc66deda1ccfd85740a47e.mp4', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/27/7d3e4d58f02b26b98574a051ad2635fd.png', 0, '540', '960', NULL, '2021-04-27 11:43:24', '2021-04-27 11:43:24');
INSERT INTO `wx_posts_video` VALUES (8, 10000, 141, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/06/9991dc91b94d3d2fd6e0b067b747beae.mp4', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/06/b11efa09265ccea8a375948509cf6f04.jpg', 0, '960', '544', NULL, '2021-05-06 18:08:51', '2021-05-06 18:08:51');
INSERT INTO `wx_posts_video` VALUES (9, 10000, 142, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/06/56e338cf155d5c7ad6ef7bcc12c52cb7.mp4', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/06/6f706f275d787fc7ea8212ee03adc2c5.png', 0, '540', '960', '2021-05-06 18:17:58', '2021-05-06 18:17:33', '2021-05-06 18:17:58');
INSERT INTO `wx_posts_video` VALUES (10, 10000, 143, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/06/52137fd1d6ba220376b9def15657fd46.mp4', NULL, 0, '960', '544', '2021-05-06 18:21:22', '2021-05-06 18:19:28', '2021-05-06 18:21:22');
INSERT INTO `wx_posts_video` VALUES (12, 10000, 150, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/14/aa07d8ca98b1bf6ddff6cb6674f0b4d7.mp4', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/14/93ce23e1ee86e1f02250b074ff11c0c2.jpg', 0, '1280', '720', '2021-05-15 14:10:02', '2021-05-14 10:40:51', '2021-05-15 14:10:02');
INSERT INTO `wx_posts_video` VALUES (13, 10000, 151, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/14/ebfce1e44186ab165f2040a01cb26ff7.mp4', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/05/14/5fd0143faa57311f6791f044ecb41d60.jpg', 0, '540', '960', NULL, '2021-05-14 11:04:48', '2021-05-14 11:04:48');
INSERT INTO `wx_posts_video` VALUES (30, 11584, 384, 'https://img.mini.chongyeapp.com/2022/09/04/a2c788a9fbe7a1c5c800637a2f7bb474.mp4', 'https://img.mini.chongyeapp.com/2022/09/04/70bd43a61ff58239f095c05df6262d80.png', 0, '720', '1280', NULL, '2022-09-04 03:19:29', '2022-09-04 03:19:29');
INSERT INTO `wx_posts_video` VALUES (31, 11584, 385, 'https://img.mini.chongyeapp.com/2022/09/05/83e065f07cecfde6a1433136a3b5fe05.mp4', 'https://img.mini.chongyeapp.com/2022/09/05/4ea03307f5bee8c2433b8b441d7a79e7.png', 0, '1920', '1080', NULL, '2022-09-05 09:39:13', '2022-09-05 09:39:13');
INSERT INTO `wx_posts_video` VALUES (32, 11581, 387, 'https://img.mini.chongyeapp.com/2022/09/07/8c5b890df57e4bbf47dc62c1d0b8d122.mp4', 'https://img.mini.chongyeapp.com/2022/09/07/1e56d98f071dabef007421732183aafe.jpg', 0, NULL, NULL, NULL, '2022-09-07 12:22:50', '2022-09-07 12:22:50');

-- ----------------------------
-- Table structure for wx_posts_vote
-- ----------------------------
DROP TABLE IF EXISTS `wx_posts_vote`;
CREATE TABLE `wx_posts_vote`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL COMMENT '内容id',
  `option1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '选项1',
  `num1` bigint(20) NOT NULL DEFAULT 0 COMMENT '选项1投票数',
  `option2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '选项2',
  `num2` bigint(20) NOT NULL DEFAULT 0 COMMENT '选项2投票数',
  `option3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '选项3',
  `num3` bigint(20) NOT NULL DEFAULT 0 COMMENT '选项3投票数',
  `option4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '选项4',
  `num4` bigint(20) NOT NULL DEFAULT 0 COMMENT '选项4投票数',
  `option5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '选项5',
  `num5` bigint(20) NOT NULL DEFAULT 0 COMMENT '选项5投票数',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_posts_vote
-- ----------------------------

-- ----------------------------
-- Table structure for wx_questions
-- ----------------------------
DROP TABLE IF EXISTS `wx_questions`;
CREATE TABLE `wx_questions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '类别',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_questions
-- ----------------------------

-- ----------------------------
-- Table structure for wx_refund
-- ----------------------------
DROP TABLE IF EXISTS `wx_refund`;
CREATE TABLE `wx_refund`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '退款用户',
  `order_good_id` bigint(20) NOT NULL COMMENT '订单商品id',
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `product_id` bigint(20) NOT NULL COMMENT '规格id',
  `amount` decimal(10, 2) NOT NULL COMMENT '退回金额',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `wx_refund_order_good_id_unique`(`order_good_id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_refund
-- ----------------------------

-- ----------------------------
-- Table structure for wx_search
-- ----------------------------
DROP TABLE IF EXISTS `wx_search`;
CREATE TABLE `wx_search`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `search_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '搜索内容',
  `is_hot` tinyint(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '是否热门',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`is_hot`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2099 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '搜索表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_search
-- ----------------------------
INSERT INTO `wx_search` VALUES (476, 0, '在这里写下你想寻找的', 0, NULL, '2021-05-20 17:57:42', '2021-12-20 10:19:47');
INSERT INTO `wx_search` VALUES (477, 0, '搜索动态/圈子/用户', 0, NULL, '2021-05-20 17:57:49', '2021-12-20 10:20:17');
INSERT INTO `wx_search` VALUES (898, 10000, 'UI', 0, NULL, '2021-06-02 17:24:44', '2022-09-19 14:58:53');
INSERT INTO `wx_search` VALUES (899, 10000, '样机', 0, NULL, '2021-06-02 17:25:52', '2022-09-19 14:58:52');
INSERT INTO `wx_search` VALUES (900, 10000, '宇航员', 0, NULL, '2021-06-02 17:26:00', '2022-09-19 14:58:52');
INSERT INTO `wx_search` VALUES (901, 10000, '插画', 0, NULL, '2021-06-02 17:26:34', '2022-09-19 14:58:51');
INSERT INTO `wx_search` VALUES (902, 10000, '图标', 0, NULL, '2021-06-02 17:26:45', '2022-09-19 14:58:50');
INSERT INTO `wx_search` VALUES (2013, 0, 'UI', 0, NULL, '2022-08-27 04:36:14', '2022-08-27 04:36:14');
INSERT INTO `wx_search` VALUES (2014, 0, '样机', 0, NULL, '2022-08-27 04:36:31', '2022-08-27 04:36:31');
INSERT INTO `wx_search` VALUES (2015, 0, '样机', 0, NULL, '2022-08-27 06:54:21', '2022-08-27 06:54:21');
INSERT INTO `wx_search` VALUES (2016, 0, '插画', 0, NULL, '2022-08-27 06:54:27', '2022-08-27 06:54:27');
INSERT INTO `wx_search` VALUES (2017, 0, '样机', 0, NULL, '2022-08-27 08:07:01', '2022-08-27 08:07:01');
INSERT INTO `wx_search` VALUES (2018, 0, 'UI', 0, NULL, '2022-08-30 14:17:56', '2022-08-30 14:17:56');
INSERT INTO `wx_search` VALUES (2019, 0, 'UI', 0, NULL, '2022-08-30 14:18:00', '2022-08-30 14:18:00');
INSERT INTO `wx_search` VALUES (2020, 0, 'UI', 0, NULL, '2022-08-30 14:27:36', '2022-08-30 14:27:36');
INSERT INTO `wx_search` VALUES (2021, 0, '样机', 0, NULL, '2022-08-30 20:09:09', '2022-08-30 20:09:09');
INSERT INTO `wx_search` VALUES (2022, 11584, 'UI', 0, NULL, '2022-09-03 15:15:09', '2022-09-03 15:15:09');
INSERT INTO `wx_search` VALUES (2023, 11584, 'UI', 0, NULL, '2022-09-03 15:15:12', '2022-09-03 15:15:12');
INSERT INTO `wx_search` VALUES (2024, 11586, '图标', 0, NULL, '2022-09-03 15:24:30', '2022-09-03 15:24:30');
INSERT INTO `wx_search` VALUES (2025, 11586, '样机', 0, NULL, '2022-09-03 15:24:30', '2022-09-03 15:24:30');
INSERT INTO `wx_search` VALUES (2026, 11586, '宇航员', 0, NULL, '2022-09-03 15:24:30', '2022-09-03 15:24:30');
INSERT INTO `wx_search` VALUES (2027, 11586, '插画', 0, NULL, '2022-09-03 15:24:30', '2022-09-03 15:24:30');
INSERT INTO `wx_search` VALUES (2028, 11586, 'UI', 0, NULL, '2022-09-03 15:24:30', '2022-09-03 15:24:30');
INSERT INTO `wx_search` VALUES (2029, 0, '冒险家', 0, NULL, '2022-09-04 14:08:48', '2022-09-04 14:08:48');
INSERT INTO `wx_search` VALUES (2030, 0, '卡尔特', 0, NULL, '2022-09-06 23:54:43', '2022-09-06 23:54:43');
INSERT INTO `wx_search` VALUES (2031, 0, '多娜多娜', 0, NULL, '2022-09-07 18:20:59', '2022-09-07 18:20:59');
INSERT INTO `wx_search` VALUES (2032, 0, '圣剑勇者', 0, NULL, '2022-09-08 13:31:53', '2022-09-08 13:31:53');
INSERT INTO `wx_search` VALUES (2033, 0, '圣剑勇者', 0, NULL, '2022-09-08 13:31:56', '2022-09-08 13:31:56');
INSERT INTO `wx_search` VALUES (2034, 11592, 'UI', 0, NULL, '2022-09-08 21:49:39', '2022-09-08 21:49:39');
INSERT INTO `wx_search` VALUES (2035, 11596, '样机', 0, NULL, '2022-09-08 21:59:41', '2022-09-08 21:59:41');
INSERT INTO `wx_search` VALUES (2036, 0, '镜花水月', 0, NULL, '2022-09-09 01:14:14', '2022-09-09 01:14:14');
INSERT INTO `wx_search` VALUES (2037, 0, 'glass', 0, NULL, '2022-09-09 01:14:22', '2022-09-09 01:14:22');
INSERT INTO `wx_search` VALUES (2038, 0, '宇航员', 0, NULL, '2022-09-09 02:33:48', '2022-09-09 02:33:48');
INSERT INTO `wx_search` VALUES (2039, 0, '图标', 0, NULL, '2022-09-09 02:33:48', '2022-09-09 02:33:48');
INSERT INTO `wx_search` VALUES (2040, 0, '插画', 0, NULL, '2022-09-09 02:33:48', '2022-09-09 02:33:48');
INSERT INTO `wx_search` VALUES (2041, 0, '样机', 0, NULL, '2022-09-09 02:33:48', '2022-09-09 02:33:48');
INSERT INTO `wx_search` VALUES (2042, 0, 'UI', 0, NULL, '2022-09-09 02:33:48', '2022-09-09 02:33:48');
INSERT INTO `wx_search` VALUES (2043, 0, 'IC in paradise', 0, NULL, '2022-09-10 14:02:04', '2022-09-10 14:02:04');
INSERT INTO `wx_search` VALUES (2044, 0, 'undefined', 0, NULL, '2022-09-10 15:17:17', '2022-09-10 15:17:17');
INSERT INTO `wx_search` VALUES (2045, 11584, '样机', 0, NULL, '2022-09-14 16:22:41', '2022-09-14 16:22:41');
INSERT INTO `wx_search` VALUES (2046, 11584, '11', 0, NULL, '2022-09-14 16:22:47', '2022-09-14 16:22:47');
INSERT INTO `wx_search` VALUES (2047, 11584, '11', 0, NULL, '2022-09-14 16:30:53', '2022-09-14 16:30:53');
INSERT INTO `wx_search` VALUES (2048, 11584, '11', 0, NULL, '2022-09-14 16:51:37', '2022-09-14 16:51:37');
INSERT INTO `wx_search` VALUES (2049, 11584, '11', 0, NULL, '2022-09-14 16:58:46', '2022-09-14 16:58:46');
INSERT INTO `wx_search` VALUES (2050, 11584, '11', 0, NULL, '2022-09-14 16:59:43', '2022-09-14 16:59:43');
INSERT INTO `wx_search` VALUES (2051, 11584, '11', 0, NULL, '2022-09-14 17:01:11', '2022-09-14 17:01:11');
INSERT INTO `wx_search` VALUES (2052, 11584, '11', 0, NULL, '2022-09-14 17:12:11', '2022-09-14 17:12:11');
INSERT INTO `wx_search` VALUES (2053, 11584, '11', 0, NULL, '2022-09-14 17:13:28', '2022-09-14 17:13:28');
INSERT INTO `wx_search` VALUES (2054, 10000, '主子丑照', 1, NULL, '2022-09-19 16:32:44', '2022-09-19 16:32:44');
INSERT INTO `wx_search` VALUES (2055, 10000, '猫饭制作', 0, NULL, '2022-09-19 16:32:54', '2022-09-19 16:32:54');
INSERT INTO `wx_search` VALUES (2056, 10000, '沙雕图', 1, NULL, '2022-09-19 16:33:17', '2022-09-19 16:33:17');
INSERT INTO `wx_search` VALUES (2057, 10000, '相亲角', 0, NULL, '2022-09-19 16:33:31', '2022-09-19 16:33:31');
INSERT INTO `wx_search` VALUES (2058, 10000, '茶艺课', 0, NULL, '2022-09-19 16:33:45', '2022-09-19 16:33:45');
INSERT INTO `wx_search` VALUES (2059, 10000, '表情包', 0, NULL, '2022-09-19 16:33:54', '2022-09-19 16:33:54');
INSERT INTO `wx_search` VALUES (2060, 10000, '穿搭秀', 0, NULL, '2022-09-19 16:34:08', '2022-09-19 16:34:08');
INSERT INTO `wx_search` VALUES (2061, 10000, '眼神杀', 0, NULL, '2022-09-19 16:34:21', '2022-09-19 16:34:21');
INSERT INTO `wx_search` VALUES (2062, 10000, '撒狗粮', 1, NULL, '2022-09-19 16:34:31', '2022-09-19 16:34:31');
INSERT INTO `wx_search` VALUES (2063, 10000, '主子内心OS', 0, NULL, '2022-09-19 16:34:45', '2022-09-19 16:34:45');
INSERT INTO `wx_search` VALUES (2064, 10000, '吃播秀', 1, NULL, '2022-09-19 16:35:04', '2022-09-19 16:35:04');
INSERT INTO `wx_search` VALUES (2065, 10000, '最暖宝贝', 0, NULL, '2022-09-19 16:35:25', '2022-09-19 16:35:25');
INSERT INTO `wx_search` VALUES (2066, 10000, '当我生气了', 0, NULL, '2022-09-19 16:35:48', '2022-09-19 16:35:48');
INSERT INTO `wx_search` VALUES (2067, 10000, '拍照我是认真的', 0, NULL, '2022-09-19 16:36:28', '2022-09-19 16:36:28');
INSERT INTO `wx_search` VALUES (2068, 11584, '11', 0, NULL, '2022-09-19 16:40:48', '2022-09-19 16:40:48');
INSERT INTO `wx_search` VALUES (2069, 11584, '11', 0, NULL, '2022-09-19 16:40:53', '2022-09-19 16:40:53');
INSERT INTO `wx_search` VALUES (2070, 11584, '主子丑照', 0, NULL, '2022-09-19 17:54:00', '2022-09-19 17:54:00');
INSERT INTO `wx_search` VALUES (2071, 11584, '主子内心OS', 0, NULL, '2022-09-19 17:54:07', '2022-09-19 17:54:07');
INSERT INTO `wx_search` VALUES (2072, 11585, '撒狗粮', 0, NULL, '2022-09-19 18:04:07', '2022-09-19 18:04:07');
INSERT INTO `wx_search` VALUES (2073, 11585, '主子丑照', 0, NULL, '2022-09-19 18:04:10', '2022-09-19 18:04:10');
INSERT INTO `wx_search` VALUES (2074, 0, '主子丑照', 0, NULL, '2022-09-19 18:07:04', '2022-09-19 18:07:04');
INSERT INTO `wx_search` VALUES (2075, 0, '猫饭制作', 0, NULL, '2022-09-19 18:07:04', '2022-09-19 18:07:04');
INSERT INTO `wx_search` VALUES (2076, 0, '沙雕图', 0, NULL, '2022-09-19 18:07:04', '2022-09-19 18:07:04');
INSERT INTO `wx_search` VALUES (2077, 0, '相亲角', 0, NULL, '2022-09-19 18:07:04', '2022-09-19 18:07:04');
INSERT INTO `wx_search` VALUES (2078, 0, '茶艺课', 0, NULL, '2022-09-19 18:07:04', '2022-09-19 18:07:04');
INSERT INTO `wx_search` VALUES (2079, 0, '表情包', 0, NULL, '2022-09-19 18:07:04', '2022-09-19 18:07:04');
INSERT INTO `wx_search` VALUES (2080, 11585, '当我生气了', 0, NULL, '2022-09-19 19:39:48', '2022-09-19 19:39:48');
INSERT INTO `wx_search` VALUES (2081, 11585, '主子丑照', 0, NULL, '2022-09-19 19:39:52', '2022-09-19 19:39:52');
INSERT INTO `wx_search` VALUES (2082, 10000, '主子丑照', 0, NULL, '2022-09-19 20:00:54', '2022-09-19 20:00:54');
INSERT INTO `wx_search` VALUES (2083, 11585, '主子内心OS', 0, NULL, '2022-09-19 20:17:56', '2022-09-19 20:17:56');
INSERT INTO `wx_search` VALUES (2084, 11585, '猫饭制作', 0, NULL, '2022-09-19 20:17:59', '2022-09-19 20:17:59');
INSERT INTO `wx_search` VALUES (2085, 11585, '撒狗粮', 0, NULL, '2022-09-19 20:18:02', '2022-09-19 20:18:02');
INSERT INTO `wx_search` VALUES (2086, 11585, '主子丑照', 0, NULL, '2022-09-19 20:18:05', '2022-09-19 20:18:05');
INSERT INTO `wx_search` VALUES (2087, 11585, '主子内心OS', 0, NULL, '2022-09-19 20:23:36', '2022-09-19 20:23:36');
INSERT INTO `wx_search` VALUES (2088, 11585, '撒狗粮', 0, NULL, '2022-09-19 20:23:38', '2022-09-19 20:23:38');
INSERT INTO `wx_search` VALUES (2089, 0, '沙雕图', 0, NULL, '2022-09-19 22:07:28', '2022-09-19 22:07:28');
INSERT INTO `wx_search` VALUES (2090, 0, '猫饭制作', 0, NULL, '2022-09-19 22:07:28', '2022-09-19 22:07:28');
INSERT INTO `wx_search` VALUES (2091, 0, '相亲角', 0, NULL, '2022-09-19 22:07:28', '2022-09-19 22:07:28');
INSERT INTO `wx_search` VALUES (2092, 0, '主子丑照', 0, NULL, '2022-09-19 22:07:28', '2022-09-19 22:07:28');
INSERT INTO `wx_search` VALUES (2093, 0, '茶艺课', 0, NULL, '2022-09-19 22:07:28', '2022-09-19 22:07:28');
INSERT INTO `wx_search` VALUES (2094, 11584, '主子内心OS', 0, NULL, '2022-09-20 01:28:17', '2022-09-20 01:28:17');
INSERT INTO `wx_search` VALUES (2095, 0, '主子丑照', 0, NULL, '2022-09-20 01:50:56', '2022-09-20 01:50:56');
INSERT INTO `wx_search` VALUES (2096, 11585, '猫饭制作', 0, NULL, '2022-09-20 11:20:57', '2022-09-20 11:20:57');
INSERT INTO `wx_search` VALUES (2097, 11585, '拍照我是认真的', 0, NULL, '2022-09-20 11:21:01', '2022-09-20 11:21:01');
INSERT INTO `wx_search` VALUES (2098, 11585, '主子丑照', 0, NULL, '2022-09-20 11:21:05', '2022-09-20 11:21:05');

-- ----------------------------
-- Table structure for wx_settings
-- ----------------------------
DROP TABLE IF EXISTS `wx_settings`;
CREATE TABLE `wx_settings`  (
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设置项 key',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '设置项 value',
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_settings
-- ----------------------------
INSERT INTO `wx_settings` VALUES ('_system_inited', '-1');
INSERT INTO `wx_settings` VALUES ('--color-danger', '#E3363E');
INSERT INTO `wx_settings` VALUES ('--color-dark', '#000C2D');
INSERT INTO `wx_settings` VALUES ('--color-grey', '#F7F8F9');
INSERT INTO `wx_settings` VALUES ('--color-info', '#4DA7D4');
INSERT INTO `wx_settings` VALUES ('--color-light', '#F8F9F9');
INSERT INTO `wx_settings` VALUES ('--color-muted', '#687385');
INSERT INTO `wx_settings` VALUES ('--color-primary', '#FB7299');
INSERT INTO `wx_settings` VALUES ('--color-secondary', '#FB7299');
INSERT INTO `wx_settings` VALUES ('--color-success', '#09815C');
INSERT INTO `wx_settings` VALUES ('--color-warning', '#E38836');
INSERT INTO `wx_settings` VALUES ('--color-white', '#FFFFFF');
INSERT INTO `wx_settings` VALUES ('--mutted-border-color', '#EAECEE');
INSERT INTO `wx_settings` VALUES ('--primary-border-color', '#9B9B9B');
INSERT INTO `wx_settings` VALUES ('--secondary-border-color', '#F0F8FF');
INSERT INTO `wx_settings` VALUES ('about_address', '上海市');
INSERT INTO `wx_settings` VALUES ('about_adjunct_word', NULL);
INSERT INTO `wx_settings` VALUES ('about_copyright', 'Copyright © 2020 - 现在，上海市宠也科技有限公司');
INSERT INTO `wx_settings` VALUES ('about_icp', '粤ICP备2022011211号-1');
INSERT INTO `wx_settings` VALUES ('about_logo', 'https://img.mini.chongyeapp.com/icons/logo.png');
INSERT INTO `wx_settings` VALUES ('about_phone', '176-xxxx-8804（同微信）');
INSERT INTO `wx_settings` VALUES ('about_qq', '863627472');
INSERT INTO `wx_settings` VALUES ('about_sms', '863627472@qq.com');
INSERT INTO `wx_settings` VALUES ('about_title', '宠也 - 养宠上宠也');
INSERT INTO `wx_settings` VALUES ('about_user_called', '铲屎官');
INSERT INTO `wx_settings` VALUES ('admin_auth_code', 'asldfafksdzodfansdkfjhashfas');
INSERT INTO `wx_settings` VALUES ('admin_auth_map', '[{\"id\":\"map001\",\"circleMap\":{\"44\":\"139\"},\"goodsClassMap\":{\"1\":\"198,197\",\"2\":\"205,199\",\"4\":\"206,200\",\"5\":\"925,923,207,201\",\"6\":\"208,202\",\"9\":\"209,203\",\"10\":\"210,204\",\"11\":\"761,762,924\",\"12\":\"764,763\"}}]');
INSERT INTO `wx_settings` VALUES ('admin_content_source1', '[{\"url\":\"https:\\/\\/test.chongyeapp.com\",\"safe\":\"shaowen=meinanzi999\",\"needSync\":\"1\",\"map\":\"map001\"}]');
INSERT INTO `wx_settings` VALUES ('admin_content_source2', '');
INSERT INTO `wx_settings` VALUES ('admin_sync_ls_safe', NULL);
INSERT INTO `wx_settings` VALUES ('admin_sync_ls_url', NULL);
INSERT INTO `wx_settings` VALUES ('app_app_code', 'https://img.chongyeapp.com/qrcode/app.png');
INSERT INTO `wx_settings` VALUES ('app_circles_banner', NULL);
INSERT INTO `wx_settings` VALUES ('app_douyin_code', 'https://img.chongyeapp.com/qrcode/app.png');
INSERT INTO `wx_settings` VALUES ('app_h5_home', 'https://mini.h5.chongyeapp.com');
INSERT INTO `wx_settings` VALUES ('app_hot_search', '2054,2055,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067');
INSERT INTO `wx_settings` VALUES ('app_hot_tags', '70,71,72,73');
INSERT INTO `wx_settings` VALUES ('app_id', 'wx36f527a9499ca325');
INSERT INTO `wx_settings` VALUES ('app_intro', '超多有趣的铲屎官聚集在这里自由表达和分享养宠的快乐。');
INSERT INTO `wx_settings` VALUES ('app_login_bg', 'https://img.mini.chongyeapp.com/icons/login.jpg');
INSERT INTO `wx_settings` VALUES ('app_mini_code', 'https://img.chongyeapp.com/qrcode/minipro.jpg');
INSERT INTO `wx_settings` VALUES ('app_mp_code', 'https://img.chongyeapp.com/pc/gzh_code.jpg');
INSERT INTO `wx_settings` VALUES ('app_report_safe_times_comment', '0');
INSERT INTO `wx_settings` VALUES ('app_report_safe_times_goods', '0');
INSERT INTO `wx_settings` VALUES ('app_report_safe_times_post', '0');
INSERT INTO `wx_settings` VALUES ('app_report_safe_times_user', '0');
INSERT INTO `wx_settings` VALUES ('app_search_carousel', '搜索动态/圈子/用户|分享你的养宠生活');
INSERT INTO `wx_settings` VALUES ('app_secret', 'c1526ee26a4674f021ace99e53f45648');
INSERT INTO `wx_settings` VALUES ('app_share_author', '[author_name] - 宠也用户');
INSERT INTO `wx_settings` VALUES ('app_share_button', '[content] - 宠也');
INSERT INTO `wx_settings` VALUES ('app_share_circle', '[circle_name] - 宠也圈子');
INSERT INTO `wx_settings` VALUES ('app_share_good', '[good_name] - 宠也商品');
INSERT INTO `wx_settings` VALUES ('app_share_post', '[post_content] - [author_name] - 宠也');
INSERT INTO `wx_settings` VALUES ('app_share_right', '宠也 - 养宠上宠也');
INSERT INTO `wx_settings` VALUES ('app_share_search', '[search_content] - 宠也搜索');
INSERT INTO `wx_settings` VALUES ('app_share_tag', '[tag_name] - 宠也');
INSERT INTO `wx_settings` VALUES ('app_share_user', '[user_name] - 我的主页');
INSERT INTO `wx_settings` VALUES ('app_share_vip', '我在宠也领取了一个永久大会员，你要不要试试');
INSERT INTO `wx_settings` VALUES ('app_share_vip_img', 'https://img.mini.chongyeapp.com/icons/share.jpg');
INSERT INTO `wx_settings` VALUES ('app_shop_banner', '30,32');
INSERT INTO `wx_settings` VALUES ('app_title', '宠也');
INSERT INTO `wx_settings` VALUES ('authentication_popup_poster', 'https://img.mini.chongyeapp.com/icons/auth.png');
INSERT INTO `wx_settings` VALUES ('browser_favicon_ico', 'https://img.mini.chongyeapp.com/icons/favicon.ico');
INSERT INTO `wx_settings` VALUES ('cosv5', '{\"bucket\":\"mini-chongyeapp\",\"region\":\"ap-nanjing\",\"appId\":\"1309223604\",\"secretId\":\"AKIDSr30jEUUFl23pNl25uUpvlMipgIgppgK\",\"secretKey\":\"e9SWN1U\",\"domain\":\"https:\\/\\/img.mini.chongyeapp.com\"}');
INSERT INTO `wx_settings` VALUES ('img_default', 'https://img.mini.chongyeapp.com/icons/dafault.png');
INSERT INTO `wx_settings` VALUES ('img_default_avatar', 'https://img.mini.chongyeapp.com/images/avatar.png');
INSERT INTO `wx_settings` VALUES ('img_default_circle_bg', 'https://img.mini.chongyeapp.com/images/topci/bg.jpg');
INSERT INTO `wx_settings` VALUES ('img_default_topic_avatar', 'https://img.mini.chongyeapp.com/images/topci/avatar.png');
INSERT INTO `wx_settings` VALUES ('img_default_topic_bg', 'https://img.mini.chongyeapp.com/images/topci/bg.jpg');
INSERT INTO `wx_settings` VALUES ('img_default_topic_pc_bg', 'https://img.mini.chongyeapp.com/images/topci/bg.jpg');
INSERT INTO `wx_settings` VALUES ('img_empty', 'https://img.mini.chongyeapp.com/icons/abp.png');
INSERT INTO `wx_settings` VALUES ('img_share_default', 'https://img.mini.chongyeapp.com/icons/dafault.png');
INSERT INTO `wx_settings` VALUES ('img_sounds_default', NULL);
INSERT INTO `wx_settings` VALUES ('img_style', '');
INSERT INTO `wx_settings` VALUES ('img_video_default', 'https://img.mini.chongyeapp.com/images/video/video_thumbel.png');
INSERT INTO `wx_settings` VALUES ('is_audit_comment', '0');
INSERT INTO `wx_settings` VALUES ('is_audit_create_cirlce', '0');
INSERT INTO `wx_settings` VALUES ('is_audit_create_tag', '0');
INSERT INTO `wx_settings` VALUES ('is_audit_posts', '0');
INSERT INTO `wx_settings` VALUES ('is_audit_user_info', '0');
INSERT INTO `wx_settings` VALUES ('is_auto_back_upgrade', '1');
INSERT INTO `wx_settings` VALUES ('is_examine_mode', '0');
INSERT INTO `wx_settings` VALUES ('is_reward', '0');
INSERT INTO `wx_settings` VALUES ('is_user_center_show_posts', '0');
INSERT INTO `wx_settings` VALUES ('is_withdrawal', '1');
INSERT INTO `wx_settings` VALUES ('mch_id', '1604282191');
INSERT INTO `wx_settings` VALUES ('mch_secret', '1234567891011121314151617');
INSERT INTO `wx_settings` VALUES ('members_popup_poster', 'https://img.mini.chongyeapp.com/icons/vip.png');
INSERT INTO `wx_settings` VALUES ('members_poster', 'https://img.mini.chongyeapp.com/icons/vip_introduce.png');
INSERT INTO `wx_settings` VALUES ('members_price', '0.01');
INSERT INTO `wx_settings` VALUES ('official_popup_poster', 'https://img.mini.chongyeapp.com/icons/official.png');
INSERT INTO `wx_settings` VALUES ('ossType', 'cosv5');
INSERT INTO `wx_settings` VALUES ('pc_index_contributors', '10000,10001,11580,11581,11583');
INSERT INTO `wx_settings` VALUES ('pc_index_effect_character', '我想真正的幸福只有一种，|就是自己拥有爱的能力，|珍重爱的人或它。|既不攀比，也很努力，|一觉醒来，面对暂新的生活与爱的ta。');
INSERT INTO `wx_settings` VALUES ('pc_index_right_banner', 'https://img.mini.chongyeapp.com/icons/pc_login_bg.png');
INSERT INTO `wx_settings` VALUES ('pc_login_bg', 'https://img.mini.chongyeapp.com/icons/pc_login_bg.png');
INSERT INTO `wx_settings` VALUES ('pc_search_hot_keywords', '第一次养宠物,拉肚子,挑食');
INSERT INTO `wx_settings` VALUES ('pc_search_input_placeholder', '在这里写下你想寻找的');
INSERT INTO `wx_settings` VALUES ('template_message_notice_id', NULL);
INSERT INTO `wx_settings` VALUES ('test', '{\"a\":1,\"b\":\"c\"}');
INSERT INTO `wx_settings` VALUES ('user_background_maps', 'https://img.mini.chongyeapp.com/icons/back.jpg');
INSERT INTO `wx_settings` VALUES ('version', '1.1.2');

-- ----------------------------
-- Table structure for wx_shop_address
-- ----------------------------
DROP TABLE IF EXISTS `wx_shop_address`;
CREATE TABLE `wx_shop_address`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货人',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '联系方式',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '市',
  `county` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '区/县',
  `adds` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '详细地址',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `is_check` tinyint(1) NULL DEFAULT 1 COMMENT '是否默认',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0正常，1用户删除)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收货地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_shop_address
-- ----------------------------
INSERT INTO `wx_shop_address` VALUES (1, '李先生', '17674188804', '北京市', '北京市', '东城区', '朝阳小区A栋101', 10000, 0, 0, NULL, '2022-01-17 13:43:21', '2022-01-18 17:25:56');
INSERT INTO `wx_shop_address` VALUES (8, '邵闻', '16710855236', '北京市', '北京市', '东城区', '新疆大家觉得', 11583, 1, 0, NULL, '2022-08-31 10:44:11', '2022-08-31 10:44:11');
INSERT INTO `wx_shop_address` VALUES (9, 'cs', '19999999999', '江西省', '九江市', '浔阳区', '1w~q22!', 11602, 0, 0, NULL, '2022-09-20 09:46:17', '2022-09-20 09:46:17');

-- ----------------------------
-- Table structure for wx_shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `wx_shop_cart`;
CREATE TABLE `wx_shop_cart`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品图',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '商品名称',
  `goods_product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '商品规格',
  `vip_price` decimal(10, 2) NOT NULL COMMENT 'vip价格',
  `price` decimal(10, 2) NOT NULL COMMENT '价格',
  `num` int(11) NULL DEFAULT NULL COMMENT '数量',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `goods_id` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `product_id` bigint(20) NULL DEFAULT NULL COMMENT '商品规格id',
  `is_check` tinyint(1) NULL DEFAULT 1 COMMENT '是否勾选',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0正常，1用户删除，2已下单，3商品下架)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`goods_id`) USING BTREE,
  INDEX `index_1`(`user_id`) USING BTREE,
  INDEX `index_2`(`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物袋表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_shop_cart
-- ----------------------------
INSERT INTO `wx_shop_cart` VALUES (88, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/4d6ab927974dd9b8b0113e3dc7a47d55.jpg', '泡芙懒人沙发', '黑胡桃木+皮艺_单人', 7900.00, 8900.00, 1, 11580, 1032, 212, 1, 0, NULL, '2022-08-27 07:06:42', '2022-08-27 07:06:42');
INSERT INTO `wx_shop_cart` VALUES (89, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/bd00e06342a621151554c9e7b7f5cab2.png', '供客户测试商品', '测试规格', 0.10, 8888.88, 1, 11583, 1043, 235, 1, 2, NULL, '2022-08-31 10:43:41', '2022-08-31 10:44:16');
INSERT INTO `wx_shop_cart` VALUES (90, 'https://img.mini.chongyeapp.com/2022/09/03/65e6700b350f4dd771bc29bf1c57ead1.jpg', '爬宠饲养盒', '大号白透饲养盒+爬台', 26.80, 26.80, 1, 11585, 1045, 300, 0, 1, NULL, '2022-09-03 14:05:29', '2022-09-09 01:06:42');
INSERT INTO `wx_shop_cart` VALUES (91, 'https://img.mini.chongyeapp.com/2022/09/03/7aa6c1dd7d0422ed1b0d2d4d4c3ec5f1.jpg', '爬宠饲养盒', '中号黑透饲养盒送食盆', 13.80, 13.80, 1, 11602, 1045, 319, 1, 2, NULL, '2022-09-20 09:45:41', '2022-09-20 09:46:51');

-- ----------------------------
-- Table structure for wx_shop_classify
-- ----------------------------
DROP TABLE IF EXISTS `wx_shop_classify`;
CREATE TABLE `wx_shop_classify`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类名称',
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类介绍',
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类图',
  `bg_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '背景图',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父级id',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `is_hot` tinyint(1) NULL DEFAULT 0 COMMENT '热榜',
  `is_highlight` tinyint(1) NULL DEFAULT 0 COMMENT '高亮',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0正常，1管理员隐藏)',
  `in_mp` tinyint(4) NOT NULL DEFAULT 1 COMMENT '小程序',
  `in_app` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'app',
  `in_h5` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'h5',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`parent_id`) USING BTREE,
  INDEX `index_1`(`is_hot`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_shop_classify
-- ----------------------------
INSERT INTO `wx_shop_classify` VALUES (1, '干粮', '主粮在这选', 'https://img.mini.chongyeapp.com/2022/09/02/e25391f0c16351c7cbfe4bdd51bb782a.png', NULL, 0, 1, 1, 1, 0, 1, 1, 1, NULL, '2022-01-10 09:21:33', '2022-09-03 10:59:05');
INSERT INTO `wx_shop_classify` VALUES (2, '零食', '罐头啥的', 'https://img.mini.chongyeapp.com/2022/09/02/3c6bd5adb3fdc517de7a8d4c80eb4586.png', NULL, 0, 2, 1, 1, 0, 1, 1, 1, NULL, '2022-01-10 09:22:20', '2022-09-03 10:59:06');
INSERT INTO `wx_shop_classify` VALUES (3, '百货', '百货', NULL, NULL, 0, 33, 0, 0, 1, 1, 1, 1, '2022-01-11 12:08:45', '2022-01-10 09:22:42', '2022-01-11 12:08:45');
INSERT INTO `wx_shop_classify` VALUES (4, '玩具', '给它个球，玩一整天', 'https://img.mini.chongyeapp.com/2022/09/02/bde9d21e1edd189896c231ebdeac9b6c.png', NULL, 0, 3, 1, 1, 0, 1, 1, 1, NULL, '2022-01-10 09:23:20', '2022-09-03 10:59:06');
INSERT INTO `wx_shop_classify` VALUES (5, '日用', '窝总要有一个吧', 'https://img.mini.chongyeapp.com/2022/09/02/b9b9577104f31801d9a0e42a744aaa6f.png', NULL, 0, 4, 1, 1, 0, 1, 1, 1, NULL, '2022-01-10 09:24:29', '2022-09-03 10:59:06');
INSERT INTO `wx_shop_classify` VALUES (6, '药品', '普通宠物药品啥的', 'https://img.mini.chongyeapp.com/2022/09/02/aafe453016b1cf45f0bd393b01958a87.png', NULL, 0, 5, 1, 1, 0, 1, 1, 1, NULL, '2022-01-10 09:24:44', '2022-09-03 10:59:07');
INSERT INTO `wx_shop_classify` VALUES (8, '食品生鲜', '食品生鲜', NULL, NULL, 0, 55, 0, 0, 1, 1, 1, 1, '2022-01-12 00:46:02', '2022-01-11 11:58:11', '2022-01-12 00:46:02');
INSERT INTO `wx_shop_classify` VALUES (9, '美容', '宠物美容工具', 'https://img.mini.chongyeapp.com/2022/09/02/1aab38a386fa377e9a4a5c4386bcac5c.png', NULL, 0, 6, 1, 1, 0, 1, 1, 1, NULL, '2022-01-11 12:06:38', '2022-09-03 10:59:08');
INSERT INTO `wx_shop_classify` VALUES (10, '出行', '宠物出行经验谈', 'https://img.mini.chongyeapp.com/2022/09/02/abfa71859e35995d7174200fc61d87f7.png', NULL, 0, 7, 1, 1, 0, 1, 1, 1, NULL, '2022-01-11 12:07:23', '2022-09-03 10:59:09');
INSERT INTO `wx_shop_classify` VALUES (11, '书籍', '科学的更多的了解ta们', 'https://img.mini.chongyeapp.com/2022/09/02/0a39cb666273d176d86f4e9d1bc41972.png', NULL, 0, 8, 1, 1, 0, 1, 1, 1, NULL, '2022-01-13 10:04:27', '2022-09-03 10:59:10');
INSERT INTO `wx_shop_classify` VALUES (12, '家装', '有宠物的家当怎么选', 'https://img.mini.chongyeapp.com/2022/09/02/cde7e08249511d7dbfe205cae34dfe21.png', NULL, 0, 9, 1, 1, 0, 1, 1, 1, NULL, '2022-01-13 10:05:47', '2022-09-03 10:59:10');
INSERT INTO `wx_shop_classify` VALUES (13, '活体', '小的宠物活体', 'https://img.mini.chongyeapp.com/2022/09/02/2501d9f642b753289c17c0c0a681da0d.png', NULL, 0, 10, 1, 1, 1, 1, 1, 1, NULL, '2022-09-02 13:59:59', '2022-09-03 10:58:42');

-- ----------------------------
-- Table structure for wx_shop_good_meta_num
-- ----------------------------
DROP TABLE IF EXISTS `wx_shop_good_meta_num`;
CREATE TABLE `wx_shop_good_meta_num`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `good_id` bigint(20) NOT NULL COMMENT 'good_id',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_key',
  `meta_value` bigint(20) NOT NULL COMMENT 'meta_value',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`good_id`, `meta_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_shop_good_meta_num
-- ----------------------------

-- ----------------------------
-- Table structure for wx_shop_good_meta_str
-- ----------------------------
DROP TABLE IF EXISTS `wx_shop_good_meta_str`;
CREATE TABLE `wx_shop_good_meta_str`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `good_id` bigint(20) NOT NULL COMMENT 'good_id',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_key',
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_value',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`good_id`, `meta_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_shop_good_meta_str
-- ----------------------------

-- ----------------------------
-- Table structure for wx_shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `wx_shop_goods`;
CREATE TABLE `wx_shop_goods`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tk_platform_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '售卖电商平台id',
  `dtk_id` bigint(20) NULL DEFAULT NULL COMMENT '大淘客商品id',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '商品类型',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `pic` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '商品图',
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品标签',
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '介绍',
  `vip_price` decimal(10, 2) NOT NULL COMMENT 'vip价格',
  `price` decimal(10, 2) NOT NULL COMMENT '价格',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '详情',
  `paid_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '付费内容',
  `views` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '点击数',
  `buys` int(11) NULL DEFAULT 0 COMMENT '购买数',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `sku` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT 'sku',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '链接',
  `classify_id` int(11) NULL DEFAULT 0 COMMENT '分类id',
  `service_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务id',
  `is_inspiration` tinyint(1) NULL DEFAULT 0 COMMENT '灵感',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '	状态(0正常，1管理员隐藏)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_2`(`dtk_id`) USING BTREE,
  UNIQUE INDEX `index_3`(`tk_platform_id`) USING BTREE,
  INDEX `index_0`(`classify_id`) USING BTREE,
  INDEX `index_1`(`service_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1046 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_shop_goods
-- ----------------------------
INSERT INTO `wx_shop_goods` VALUES (1018, NULL, NULL, 0, '兔偶', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/8dbe07c9aedccdacb30c4e84270210ba.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/72a0c4b7fde02cc9b71d5f3b74a533b8.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/8a23255f4707cab5624d7b6410cdcdb8.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/462bb239d4b56e5faf603add48c24928.jpg', '[\"\\u4e0a\\u65b0\",\"\\u594b\\u6597\"]', '问童子 奋斗系列 陪伴玩偶可爱兔子公仔毛绒玩具创意礼物', 299.00, 598.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/981d7eb35052d4007596a6323e2bd8a761dd94557fa3e.jpg\" alt=\"\" width=\"1500\" height=\"12867\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/e357d25940d28b1b6f7412b7a73134dd61dd94692871c.jpg\" alt=\"\" width=\"1500\" height=\"4597\" /></p>', NULL, 56, 12, 100, '{\"attrs\":{\"颜色\":[\"白色\"],\"高度\":[\"70厘米（含耳）\"]},\"sku\":[{\"颜色\":\"白色\",\"高度\":\"70厘米（含耳）\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/b9b0cf4f4d7e565a6d5c50b0d6a318ae.jpg\",\"stock\":\"99\",\"vip_price\":\"299\",\"price\":\"598\"}]}', NULL, 10, '[\"1\",\"3\",null]', 0, 1, '2022-09-02 06:03:57', '2022-01-11 20:28:29', '2022-09-02 06:03:57');
INSERT INTO `wx_shop_goods` VALUES (1019, NULL, NULL, 0, '兔偶熬夜特别版', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/28f07a4af6bfa9e19f7d14b8d627b4fa.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/b97d093ea264c7eea9617bec26abe88b.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/a07a6dfc1a7f92723a66d99591486f28.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/fd63616db2bbff9ed8b922cbe53aacb3.jpg', '[\"\\u4e0a\\u65b0\",\"\\u594b\\u6597\"]', '问童子 奋斗系列 陪伴玩偶兔子公仔告白礼物', 369.00, 738.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/bf321122e7b5a9bea54a7387d067c54b61dd96a53f524.jpg\" alt=\"\" width=\"790\" height=\"8216\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/b9e45f2b13bb52f2e80e07e40de9045b61dd96b25a1e1.jpg\" alt=\"\" /></p>', NULL, 11, 0, 101, '{\"attrs\":{\"颜色\":[\"熬夜黑特别版\"]},\"sku\":[{\"颜色\":\"熬夜黑特别版\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/14d03680f7604c9edb87d0874dec129f.jpg\",\"stock\":\"99\",\"vip_price\":\"369\",\"price\":\"738\"}]}', NULL, 10, '[\"1\",\"3\",null]', 0, 1, '2022-09-02 06:03:57', '2022-01-11 20:32:46', '2022-09-02 06:03:57');
INSERT INTO `wx_shop_goods` VALUES (1020, NULL, NULL, 0, 'GUCCI大衣', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/e40ab2a4cbe0431f3eb139d21fe49d7d.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/ca2249695d16797eaa8c2e656bbcc2d8.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/0f1fbc06c5c0d82b270116034832ee7b.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/41b9632e79b2627cb9354157020bd973.jpg', '[\"\\u65b0\\u54c1\",\"\\u5962\\u54c1\"]', 'GUCCI古驰加大互扣式双G双面可穿大衣', 37000.00, 39000.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/c5a2f21dd51603d784bc9f36b096293e61de2900aa9a2.jpg\" alt=\"\" width=\"790\" height=\"6331\" /></p>', NULL, 3, 0, 999, '{\"attrs\":{\"颜色\":[\"黑色\"],\"尺码\":[\"34\",\"36\",\"38\",\"40\",\"42\",\"44\",\"46\",\"48\",\"50\"]},\"sku\":[{\"颜色\":\"黑色\",\"尺码\":\"34\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/13011b8264f1a7ff244a1dd0f705f8d7.jpg\",\"stock\":\"10\",\"vip_price\":\"99999\",\"price\":\"99999\"},{\"颜色\":\"黑色\",\"尺码\":\"36\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/b52a675ace5722685c5bd0fbf172cc6c.jpg\",\"stock\":\"10\",\"vip_price\":\"37000\",\"price\":\"39000\"},{\"颜色\":\"黑色\",\"尺码\":\"38\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/5020b294efe03db6c623e4995f7e174d.jpg\",\"stock\":\"10\",\"vip_price\":\"99999\",\"price\":\"99999\"},{\"颜色\":\"黑色\",\"尺码\":\"40\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/fb534aec89ae219df7dcd036ccf9707a.jpg\",\"stock\":\"10\",\"vip_price\":\"99999\",\"price\":\"99999\"},{\"颜色\":\"黑色\",\"尺码\":\"42\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/9becdcbfa5979a6de619fa6dbe68550b.jpg\",\"stock\":\"10\",\"vip_price\":\"99999\",\"price\":\"99999\"},{\"颜色\":\"黑色\",\"尺码\":\"44\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/ffe7c4b9028ad188d316829b141b1d04.jpg\",\"stock\":\"10\",\"vip_price\":\"99999\",\"price\":\"99999\"},{\"颜色\":\"黑色\",\"尺码\":\"46\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/51029508c9910453dc3b71a4dec2f123.jpg\",\"stock\":\"10\",\"vip_price\":\"99999\",\"price\":\"99999\"},{\"颜色\":\"黑色\",\"尺码\":\"48\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7fc8c340381d18aa9b14a6ab56f4a9b8.jpg\",\"stock\":\"10\",\"vip_price\":\"99999\",\"price\":\"99999\"},{\"颜色\":\"黑色\",\"尺码\":\"50\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/e833e617858f7d7c480f93eed8dfa60e.jpg\",\"stock\":\"10\",\"vip_price\":\"99999\",\"price\":\"99999\"}]}', NULL, 9, '[\"1\",\"4\",null]', 0, 1, '2022-09-02 06:03:57', '2022-01-12 08:58:48', '2022-09-02 06:03:57');
INSERT INTO `wx_shop_goods` VALUES (1021, NULL, NULL, 0, 'BALENCIAGA夹克', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/433893244618e2166d207c48ea73cb9b.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/3a59083481f368b0b2e3a8f03de4ca72.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/d13a664b81cbe2f55ae64e1d732d087d.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/fecc74e168c4534293ab4491fa05a93b.jpg', '[\"\\u793c\\u7269\",\"\\u5962\\u54c1\"]', 'BALENCIAGA巴黎世家NASA男士亮面飞行员时尚夹克', 25300.00, 29900.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/c13b4cca18ce341a384e9b980c57cba461de2b43a638f.jpg\" alt=\"\" /></p>', NULL, 0, 0, 999, '{\"attrs\":{\"颜色\":[\"黑色\"],\"尺码\":[\"44\",\"46\",\"48\"]},\"sku\":[{\"颜色\":\"黑色\",\"尺码\":\"44\",\"pic\":\"\",\"stock\":\"10\",\"vip_price\":\"25300\",\"price\":\"29999\"},{\"颜色\":\"黑色\",\"尺码\":\"46\",\"pic\":\"\",\"stock\":\"10\",\"vip_price\":\"25300\",\"price\":\"29999\"},{\"颜色\":\"黑色\",\"尺码\":\"48\",\"pic\":\"\",\"stock\":\"10\",\"vip_price\":\"99999\",\"price\":\"99999\"}]}', NULL, 9, '[\"1\",\"4\",null]', 0, 1, '2022-09-02 06:03:57', '2022-01-12 09:08:58', '2022-09-02 06:03:57');
INSERT INTO `wx_shop_goods` VALUES (1022, NULL, NULL, 0, 'Dior精华油', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/18acebe49db4fdbd429dade4c4ff3120.jpg', '[\"\\u793c\\u7269\",\"\\u5962\\u54c1\"]', 'Dior迪奥花秘瑰萃滋养精华油 滋养修护', 2800.00, 3900.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/15f07c5e2caba71f6af8a72c993fd6a561de30a472b64.jpg\" alt=\"\" width=\"1500\" height=\"6891\" /></p>', NULL, 2, 0, 888, '{\"attrs\":{\"净含量\":[\"30ml\"]},\"sku\":[{\"净含量\":\"30ml\",\"pic\":\"\",\"stock\":\"10\",\"vip_price\":\"2800\",\"price\":\"3900\"}]}', NULL, 1, '[\"1\",\"3\",null]', 0, 1, '2022-09-02 06:03:57', '2022-01-12 09:35:06', '2022-09-02 06:03:57');
INSERT INTO `wx_shop_goods` VALUES (1023, NULL, NULL, 0, 'Hermes凯莉凯来诗淡香水', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/457a6aac145502abd2fe37262b1da683.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/107f11d94d8beeff6a1686de2d3b46b7.jpg', '[\"\\u793c\\u7269\",\"\\u5962\\u54c1\"]', 'Hermes爱马仕香水凯莉凯来诗持久留香淡香水', 1590.00, 2900.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/a7f7728856b74b506d9052bae8871dcc61de321e2d5a8.jpg\" alt=\"\" width=\"750\" height=\"3215\" /></p>', NULL, 1, 0, 888, '{\"attrs\":{\"颜色\":[\"爱马仕凯莉凯来诗淡香水\",\"爱马仕凯莉凯来诗淡香精\"],\"净含量\":[\"100ml\"]},\"sku\":[{\"颜色\":\"爱马仕凯莉凯来诗淡香水\",\"净含量\":\"100ml\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/a12a13d3275893933acc80a311b827e5.jpg\",\"stock\":\"10\",\"vip_price\":\"1590\",\"price\":\"2900\"},{\"颜色\":\"爱马仕凯莉凯来诗淡香精\",\"净含量\":\"100ml\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/be49254912f99d3fbc6b0feef3fcc7f6.jpg\",\"stock\":\"10\",\"vip_price\":\"1590\",\"price\":\"2900\"}]}', NULL, 1, '[\"1\",\"3\"]', 0, 1, '2022-09-02 06:03:48', '2022-01-12 09:44:41', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1024, NULL, NULL, 0, '罗罗诺亚·索隆手办', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/a67b138b906c5af60910f1339afb4f87.jpg', '[\"\\u6d77\\u6dd8\",\"\\u6d77\\u8d3c\\u738b\"]', 'P.O.P.海贼王系列再次出航罗罗诺亚·索隆模型玩具手办', 1049.00, 1999.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/d5afe51f46290ca27712fdb7578dd71061de346169207.jpg\" alt=\"\" width=\"1000\" height=\"9161\" /></p>', NULL, 4, 0, 777, '{\"attrs\":{\"颜色\":[\"Not Specified\"],\"规格\":[\"外包装尺寸：AUG121937\"]},\"sku\":[{\"颜色\":\"Not Specified\",\"规格\":\"外包装尺寸：AUG121937\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/8e598cdfd7847e9d94f369343fedd54d.jpg\",\"stock\":\"10\",\"vip_price\":\"1049\",\"price\":\"1999\"}]}', NULL, 5, '[\"1\",\"4\"]', 0, 1, '2022-09-02 06:03:48', '2022-01-12 09:52:38', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1025, NULL, NULL, 0, '游戏机', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/1825bee0c858e8c5b3d3a643fdf8ad95.jpg', '[\"\\u6e38\\u620f\\u673a\"]', 'NIntendo/任天堂switch NS OLED屏幕 7寸掌机游戏机家用日版进口64G续航增强版', 2999.99, 4999.99, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/423b0787f209d21f4993a9f74e19eee061de410cbb56f.jpg\" alt=\"\" width=\"1021\" height=\"3328\" /></p>', NULL, 7, 1, 777, '{\"attrs\":{\"颜色\":[\"彩色\",\"白色\"]},\"sku\":[{\"颜色\":\"彩色\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/977c4f7488d852c42ee0b973d5ccfc3e.jpg\",\"stock\":\"10\",\"vip_price\":\"2999.99\",\"price\":\"4999.99\"},{\"颜色\":\"白色\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/e8a9d3023fc1fa554a15f4891c2fdfe9.jpg\",\"stock\":\"10\",\"vip_price\":\"2999.99\",\"price\":\"4999.99\"}]}', NULL, 5, '[\"1\",\"3\",null]', 0, 1, '2022-09-02 06:03:48', '2022-01-12 10:46:41', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1026, NULL, NULL, 0, '笑脸迷彩熊热水袋', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/074fc279f66da9d80e3db5cffc8c603c.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/99d7fc819bb708af955e46cfd67e204a.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/ef531d5e300e898b3a44ecc3c196eb9e.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/09de95fdd585488b574cb013402f69d1.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/9a4f406c9f17a12467c209bca6761dac.jpg', '[\"\\u4e0a\\u65b0\",\"\\u793c\\u7269\"]', 'GOC IN C 可爱充电式暖宝防爆暖手袋电暖宝', 328.00, 399.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/90ee35b6c97869308b815d93661ba89c61de422fe1d4c.jpg\" alt=\"\" width=\"1500\" height=\"14361\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/32450f0a963b0e05026a4eb97acc6ab261de423f61ffb.jpg\" alt=\"\" width=\"1400\" height=\"15714\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/80bb69b77a4d4260e7034502503d08b461de42526a8f7.jpg\" alt=\"\" width=\"1400\" height=\"12020\" /></p>', NULL, 3, 0, 666, '{\"attrs\":{\"颜色\":[\"笑脸迷彩熊\"]},\"sku\":[{\"颜色\":\"笑脸迷彩熊\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/ab79e6f1e3b3c2d5631169ece4d73095.jpg\",\"stock\":\"10\",\"vip_price\":\"328\",\"price\":\"399\"}]}', NULL, 2, '[\"1\",\"3\",null]', 1, 1, '2022-09-02 06:03:48', '2022-01-12 10:52:09', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1027, NULL, NULL, 0, '抱抱熊充电宝', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/0f44148b22e3d8728e3979240d249357.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/493e8d24540dd820d3c8bc4f739554c9.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/da2a0b93a0daff98c1601ea24c7a5727.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/0cf220e6fe7d855bd18c6dd526e273ea.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/4549bacd304a6bd84fa09bd888678af5.jpg', '[\"\\u4e0a\\u65b0\",\"\\u793c\\u7269\"]', 'goc in c 可爱 超萌迷你10000毫安移动电源便携款', 599.00, 699.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/a660e6f2417ba9c46d2e20638f7cbf5d61de43397f2c6.jpg\" alt=\"\" width=\"790\" height=\"10778\" /></p>', NULL, 3, 0, 666, '{\"attrs\":{\"颜色\":[\"抱抱熊充电宝\"]},\"sku\":[{\"颜色\":\"抱抱熊充电宝\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/41abf569ec2a6215058f1a1c669a7ec9.jpg\",\"stock\":\"10\",\"vip_price\":\"599\",\"price\":\"699\"}]}', NULL, 2, '[\"1\",\"3\",null]', 0, 1, '2022-09-02 06:03:48', '2022-01-12 10:56:00', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1029, NULL, NULL, 0, '创意实木牙签筒', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/71c056a496ebe60fab1c05fd29c0421d.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/ea57f46b86ddafee6f909765902e443a.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/ce06c389cb3c2b7ff19e63212bbf5e21.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/98aebd3eabf54e450ca1dd3b09a19964.jpg', '[\"\\u4e0a\\u65b0\",\"\\u4f4e\\u4ef7\"]', '家用高档牙签盒胡桃木质可爱蘑菇新中式原木牙签罐', 19.80, 99.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/db3ba9656172995c19e66f01cfdb20bc61de44dd7e99a.jpg\" alt=\"\" width=\"1500\" height=\"11430\" /></p>', NULL, 17, 7, 100, '{\"attrs\":{\"颜色\":[\"蘑菇牙签筒\"]},\"sku\":[{\"颜色\":\"蘑菇牙签筒\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/db1e148e57e37cf5272bbff844e154bc.jpg\",\"stock\":\"100\",\"vip_price\":\"19.80\",\"price\":\"99\"}]}', NULL, 4, '[\"2\",\"3\"]', 1, 1, '2022-09-02 06:03:48', '2022-01-12 11:02:58', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1030, NULL, NULL, 0, '矮床头柜', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/601db35f06a4ffe6dcaab525df5a211b.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/1ca91f2ff2637c3846c250e39678b555.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/d80152bb461cd02d4d6dfd1a06330863.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/18e6d4c757c1e288981ad0e85ea13001.jpg', '[\"\\u4e0a\\u65b0\",\"\\u5b9e\\u6728\"]', 'MUMO木墨 红橡木樱桃木黑胡桃木卧室客厅储物实木家具', 1390.00, 2900.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/46c861abf4bd29285da9ca7784724e6d61de472203f2d.jpg\" alt=\"\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/580ddc64ac6894ca2cdd1239a4e5d5e461de473080c03.jpg\" alt=\"\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/a95fbe3151332cd8c987e3696c43519361de47496967a.jpg\" alt=\"\" width=\"1500\" height=\"8388\" /></p>', NULL, 15, 1, 99, '{\"attrs\":{\"颜色\":[\"红橡木45×38×H60cm\",\"樱桃木45×38×H60cm\",\"黑胡桃木45×38×H60cm\"]},\"sku\":[{\"颜色\":\"红橡木45×38×H60cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/0892fd7e35e1b280cda86d39cfbe075e.jpg\",\"stock\":\"10\",\"vip_price\":\"1390\",\"price\":\"2900\"},{\"颜色\":\"樱桃木45×38×H60cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/ce21e19e4164f080b6123c5ef33a23b7.jpg\",\"stock\":\"10\",\"vip_price\":\"1490\",\"price\":\"2900\"},{\"颜色\":\"黑胡桃木45×38×H60cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/de772de2a63e1cb409d302fc01f35f11.jpg\",\"stock\":\"10\",\"vip_price\":\"1890\",\"price\":\"2900\"}]}', NULL, 4, '[\"1\",\"4\",null]', 1, 1, '2022-09-02 06:03:48', '2022-01-12 11:13:59', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1031, NULL, NULL, 0, '木马', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/cc47e1730c4e2094e8f316327f62feb3.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/b1263d9806a4c40a5f0673a08b326f2f.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/2e94066d2d786d572fcfa0c54eaa3b75.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/b1f7be521fff19c112e3be0aeaf23127.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/25e5e7eb166f9719c3a233c03cd2d223.jpg', '[\"\\u4e0a\\u65b0\",\"\\u5b9e\\u6728\",\"\\u7ae5\\u5e74\"]', 'MUMO木墨 红橡黑胡桃原木实木大小儿童摇马木马客厅摆件', 1390.00, 1900.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/e61650ad739d280203926ea912483cf561de497449f02.jpg\" alt=\"\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/103e36fd7a86d9ca41e51303140adcf861de4982a16a7.jpg\" alt=\"\" width=\"1281\" height=\"9961\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/929e8472a6d9a8e91f510a9068dc9cae61de499291def.jpg\" alt=\"\" width=\"1500\" height=\"7292\" /></p>', NULL, 18, 1, 98, '{\"attrs\":{\"颜色\":[\"大木马93×43.3×H76.9cm\",\"小木马85.7×32.6×H56.1cm\"]},\"sku\":[{\"颜色\":\"大木马93×43.3×H76.9cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/e0d6ea325755258a88fd0873692789fa.jpg\",\"stock\":\"10\",\"vip_price\":\"1390\",\"price\":\"1900\"},{\"颜色\":\"小木马85.7×32.6×H56.1cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/946f478b694828a457b50dc4c55dba9a.jpg\",\"stock\":\"10\",\"vip_price\":\"2180\",\"price\":\"2900\"}]}', NULL, 4, '[\"1\",\"4\",null]', 1, 1, '2022-09-02 06:03:48', '2022-01-12 11:23:02', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1032, NULL, NULL, 0, '泡芙懒人沙发', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/4b8f688b51da32800d67bea4d2cb0016.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/9b2fda5b56b7e5dba890b7facad9b078.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/9b939dabbcc1c44e63e3280ef2b61ca4.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/f3431dcc8bc954acd42fa4ca36c2d817.jpg', '[\"\\u4e0a\\u65b0\",\"\\u5e03\\u827a\",\"\\u76ae\\u827a\"]', 'MUMO木墨 实木沙发皮艺布艺沙发客厅单人三人沙发', 4290.00, 4990.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/d239192bf9ced93c8e38eb2feca6fce661de52383745a.jpg\" alt=\"\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/a47488c1633b06c23c18e4a3f6e59a4861de524577dec.jpg\" alt=\"\" width=\"1500\" height=\"10115\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/f601f6bb5ea9e6562346abf52dc6ce8961de5254c53e4.jpg\" alt=\"\" width=\"1281\" height=\"9917\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/cbc999e9448d7847b43bfc1923d3e70b61de52668f66f.jpg\" alt=\"\" width=\"1500\" height=\"9632\" /></p>', NULL, 39, 4, 80, '{\"attrs\":{\"颜色材料\":[\"红橡木+布艺\",\"黑胡桃木+布艺\",\"红橡木+皮艺\",\"黑胡桃木+皮艺\"],\"适用人数\":[\"单人\",\"三人\",\"四人\"]},\"sku\":[{\"颜色材料\":\"红橡木+布艺\",\"适用人数\":\"单人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6c5ae8f13ea66531489e0a8defc6f958.jpg\",\"stock\":\"10\",\"vip_price\":\"4290\",\"price\":\"4990\"},{\"颜色材料\":\"红橡木+布艺\",\"适用人数\":\"三人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/87f7b2b575a6f4fda3bf2b3998478e3b.jpg\",\"stock\":\"10\",\"vip_price\":\"8900\",\"price\":\"9800\"},{\"颜色材料\":\"红橡木+布艺\",\"适用人数\":\"四人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/b635b55ef0f4a972fe5d52b0c6ac8564.jpg\",\"stock\":\"10\",\"vip_price\":\"12500\",\"price\":\"13500\"},{\"颜色材料\":\"黑胡桃木+布艺\",\"适用人数\":\"单人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/e0f0f38aeb41c3be44ec130a04e033ef.jpg\",\"stock\":\"10\",\"vip_price\":\"5290\",\"price\":\"5990\"},{\"颜色材料\":\"黑胡桃木+布艺\",\"适用人数\":\"三人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/0bbd3cf80d62ad1f9a77657cc04c82be.jpg\",\"stock\":\"10\",\"vip_price\":\"12200\",\"price\":\"13200\"},{\"颜色材料\":\"黑胡桃木+布艺\",\"适用人数\":\"四人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7c5c3ab69a7fadaf0d08149b2eb51cec.jpg\",\"stock\":\"10\",\"vip_price\":\"15900\",\"price\":\"16900\"},{\"颜色材料\":\"红橡木+皮艺\",\"适用人数\":\"单人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/45104a0f45e53fc47c5f149165804258.jpg\",\"stock\":\"10\",\"vip_price\":\"6950\",\"price\":\"7950\"},{\"颜色材料\":\"红橡木+皮艺\",\"适用人数\":\"三人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7378232f097c0bc9cfac1cd547b41068.jpg\",\"stock\":\"10\",\"vip_price\":\"17200\",\"price\":\"18900\"},{\"颜色材料\":\"红橡木+皮艺\",\"适用人数\":\"四人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/60e0945e268db2817aa26feda7432c86.jpg\",\"stock\":\"10\",\"vip_price\":\"22800\",\"price\":\"23800\"},{\"颜色材料\":\"黑胡桃木+皮艺\",\"适用人数\":\"单人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/4d6ab927974dd9b8b0113e3dc7a47d55.jpg\",\"stock\":\"10\",\"vip_price\":\"7900\",\"price\":\"8900\"},{\"颜色材料\":\"黑胡桃木+皮艺\",\"适用人数\":\"三人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/fe0b93b30baf9d04d9fba342be74ae5e.jpg\",\"stock\":\"10\",\"vip_price\":\"19800\",\"price\":\"20800\"},{\"颜色材料\":\"黑胡桃木+皮艺\",\"适用人数\":\"四人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/8f21f07d2dc6465aac23be6948a7bd0a.jpg\",\"stock\":\"10\",\"vip_price\":\"26400\",\"price\":\"27400\"}]}', NULL, 4, '[\"1\",\"4\",null]', 1, 1, '2022-09-02 06:03:48', '2022-01-12 11:55:29', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1033, NULL, NULL, 0, '平躺沙发', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/59d7e5adfad414b915acf716adc97a48.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/dd2ee1f8cc1b9678288a30b9bfe25f82.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/303bf55384b975ee431fb53b518aa33f.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/8b46caff9b1f80cf5631559e78eb1fde.jpg', '[\"\\u4e0a\\u65b0\",\"\\u5b9e\\u6728\",\"\\u7eaf\\u68c9\"]', 'MUMO木墨 布艺沙发 客厅 拆装可进电梯 实木家具', 6490.00, 6690.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/4cabcf156ac58e8015049091eef709ba61de608e45814.jpg\" alt=\"\" width=\"1500\" height=\"12361\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/49604760e95ab168a04213fd4a6594fa61de609bc0247.jpg\" alt=\"\" width=\"1500\" height=\"12704\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/56819b47410b0747d7b8aa8562be948261de60ab8dff8.jpg\" alt=\"\" width=\"1500\" height=\"11949\" /></p>', NULL, 54, 4, 90, '{\"attrs\":{\"颜色\":[\"白蜡木 - 纯棉浅绿\",\"白蜡木 - 纯棉深灰\",\"白蜡木 - 纯棉深绿\",\"白蜡木 - 羊毛深咖\",\"黑胡桃木 - 纯棉浅绿\",\"黑胡桃木 - 纯棉深灰\",\"黑胡桃木 - 纯棉深绿\",\"黑胡桃木 - 羊毛深咖\"],\"几人坐\":[\"单人\",\"三人\"]},\"sku\":[{\"颜色\":\"白蜡木 - 纯棉浅绿\",\"几人坐\":\"单人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/81708d098ddcddc0b640ecb437237b7d.jpg\",\"stock\":\"10\",\"vip_price\":\"6490\",\"price\":\"6690\"},{\"颜色\":\"白蜡木 - 纯棉浅绿\",\"几人坐\":\"三人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7ed39833973c09a91908bec7da18f2a1.jpg\",\"stock\":\"10\",\"vip_price\":\"11490\",\"price\":\"12490\"},{\"颜色\":\"白蜡木 - 纯棉深灰\",\"几人坐\":\"单人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/edb4db6265cb88ce1210b7ac63963d49.jpg\",\"stock\":\"10\",\"vip_price\":\"6490\",\"price\":\"6690\"},{\"颜色\":\"白蜡木 - 纯棉深灰\",\"几人坐\":\"三人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7899bba31c02b22df0bf3a093bf57aa8.jpg\",\"stock\":\"10\",\"vip_price\":\"11490\",\"price\":\"12490\"},{\"颜色\":\"白蜡木 - 纯棉深绿\",\"几人坐\":\"单人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/5384c5da1f36f9c58e5433497fef6197.jpg\",\"stock\":\"10\",\"vip_price\":\"6490\",\"price\":\"6690\"},{\"颜色\":\"白蜡木 - 纯棉深绿\",\"几人坐\":\"三人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/34cd7cb7f682e61db27db2a0733a90f9.jpg\",\"stock\":\"10\",\"vip_price\":\"11490\",\"price\":\"12490\"},{\"颜色\":\"白蜡木 - 羊毛深咖\",\"几人坐\":\"单人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/b572860844fd19cf586bf6d0f21c7a50.jpg\",\"stock\":\"10\",\"vip_price\":\"7490\",\"price\":\"8690\"},{\"颜色\":\"白蜡木 - 羊毛深咖\",\"几人坐\":\"三人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/c7aff6235ec0d785a537b531dcc258c5.jpg\",\"stock\":\"10\",\"vip_price\":\"12490\",\"price\":\"13490\"},{\"颜色\":\"黑胡桃木 - 纯棉浅绿\",\"几人坐\":\"单人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/319e8a978bef408595cf09e420f8fd45.jpg\",\"stock\":\"10\",\"vip_price\":\"8890\",\"price\":\"9090\"},{\"颜色\":\"黑胡桃木 - 纯棉浅绿\",\"几人坐\":\"三人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/65cc3fd05ddd7295c9fdf792b5f10c5f.jpg\",\"stock\":\"10\",\"vip_price\":\"14750\",\"price\":\"16750\"},{\"颜色\":\"黑胡桃木 - 纯棉深灰\",\"几人坐\":\"单人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/8b008555952fc3582d9073915b8fda90.jpg\",\"stock\":\"10\",\"vip_price\":\"8890\",\"price\":\"9090\"},{\"颜色\":\"黑胡桃木 - 纯棉深灰\",\"几人坐\":\"三人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/b39ff3be4db9b7e9fffd9ef944bbdd57.jpg\",\"stock\":\"10\",\"vip_price\":\"14750\",\"price\":\"16750\"},{\"颜色\":\"黑胡桃木 - 纯棉深绿\",\"几人坐\":\"单人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/cd364e4a76327d34871e45f616f2a5f7.jpg\",\"stock\":\"10\",\"vip_price\":\"8890\",\"price\":\"9090\"},{\"颜色\":\"黑胡桃木 - 纯棉深绿\",\"几人坐\":\"三人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/335395a05833b958c19a1b332a85b056.jpg\",\"stock\":\"10\",\"vip_price\":\"14750\",\"price\":\"16750\"},{\"颜色\":\"黑胡桃木 - 羊毛深咖\",\"几人坐\":\"单人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/28559b935ff7fcddb15ada93eee0c708.jpg\",\"stock\":\"10\",\"vip_price\":\"9980\",\"price\":\"1080\"},{\"颜色\":\"黑胡桃木 - 羊毛深咖\",\"几人坐\":\"三人\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/9d7be2f5333018c9d1c55c577fb478b2.jpg\",\"stock\":\"10\",\"vip_price\":\"16180\",\"price\":\"16880\"}]}', NULL, 4, '[\"1\",\"4\",null]', 1, 1, '2022-09-02 06:03:48', '2022-01-12 13:01:37', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1034, NULL, NULL, 0, '组合框', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7cd7c9d478e19e521ff08d92f2b1d140.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/8671e78e5386e8c1d7364526062f58f4.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/35b720926834f121e10a59c50278ccc8.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/9d872335c29aac0f1e96e27bbba5cdaa.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/82e11a2ba99f5772d29ec4f31a5804bf.jpg', '[\"\\u4e0a\\u65b0\",\"\\u5b9e\\u6728\"]', 'MUMO木墨 可自由组合柜 实木木框 原木书架', 380.00, 418.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/8a8bb20459b48cec942cc6290900fc3961de64cc9e8b0.jpg\" alt=\"\" width=\"1500\" height=\"13558\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/e0ff58ce176a4fbb49c6a3f6bb7d377a61de64da99fa6.jpg\" alt=\"\" width=\"1500\" height=\"13839\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/189fa92e8198334f671f2e7f9460beb261de64e98140b.jpg\" alt=\"\" width=\"1280\" height=\"3511\" /></p>', NULL, 97, 9, 60, '{\"attrs\":{\"颜色\":[\"红橡木小框30×30×H30cm\",\"红橡木中框60×30×H30cm\",\"红橡木中框+1黑胡桃抽屉 60×30×H30cm\",\"黑胡桃木小框30×30×H30cm\",\"黑胡桃木中框60×30×H30cm\",\"黑胡桃木大框60×30×H60cm\",\"红橡木大框60×30×H60cm\"]},\"sku\":[{\"颜色\":\"红橡木小框30×30×H30cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/043ed8b87ded21021eb50f4127ee9916.jpg\",\"stock\":\"10\",\"vip_price\":\"380\",\"price\":\"418\"},{\"颜色\":\"红橡木中框60×30×H30cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/0723b6783100eb80c5989448feb6ea1e.jpg\",\"stock\":\"10\",\"vip_price\":\"480\",\"price\":\"520\"},{\"颜色\":\"红橡木中框+1黑胡桃抽屉 60×30×H30cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/b066b3c635a13ff03f884a79f0f530f5.jpg\",\"stock\":\"10\",\"vip_price\":\"980\",\"price\":\"1080\"},{\"颜色\":\"黑胡桃木小框30×30×H30cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/c4abab68c241488af678ff4259b05afa.jpg\",\"stock\":\"10\",\"vip_price\":\"380\",\"price\":\"418\"},{\"颜色\":\"黑胡桃木中框60×30×H30cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/f1bb2b854be1531868a46f6315344da1.jpg\",\"stock\":\"10\",\"vip_price\":\"580\",\"price\":\"640\"},{\"颜色\":\"黑胡桃木大框60×30×H60cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6d59e1d48ee1a85bf2a7b03f85ff3dfa.jpg\",\"stock\":\"10\",\"vip_price\":\"1085\",\"price\":\"1185\"},{\"颜色\":\"红橡木大框60×30×H60cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7141ed421681c1c1240f90eb901b5157.jpg\",\"stock\":\"10\",\"vip_price\":\"640\",\"price\":\"680\"}]}', NULL, 4, '[\"1\",\"3\",null]', 1, 1, '2022-09-02 06:03:48', '2022-01-12 13:19:41', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1035, NULL, NULL, 0, '布老虎玩偶', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/4009de1af6d3344895d0f74c4c246fb5.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/0f707a41085c201b2c52e45214061696.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/48ef57589f7c134c6218d52e86d3095c.jpg', '[\"\\u4e0a\\u65b0\",\"\\u65b0\\u5e74\\u793c\\u7269\"]', '问童子 虎年吉祥物本命年陪伴玩偶创意礼物', 520.00, 998.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/532c4d67c63f7308f163ee35cdb6212c61dee3e2f3cdc.jpg\" alt=\"\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/672608e78ba9d6a6d1561005c08586b161dee3f51af24.jpg\" alt=\"\" /></p>', NULL, 25, 2, 100, '{\"attrs\":{\"颜色\":[\"布老虎玩偶\"],\"高度\":[\"52cm\"]},\"sku\":[{\"颜色\":\"布老虎玩偶\",\"高度\":\"52cm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/24e05755b2a235e1ae7f2808fdae9962.jpg\",\"stock\":\"10\",\"vip_price\":\"520\",\"price\":\"998\"}]}', NULL, 10, '[\"1\",\"3\",null]', 0, 1, '2022-09-02 06:03:48', '2022-01-12 22:20:17', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1036, NULL, NULL, 0, '蓝丝绸熊热水袋', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/c75f593fd25c28ac8d5712f7e533fe15.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/fd34552e904162e6129994460a667ae8.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/24a8a22d0879621de9ed4a0f48a3dd38.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/c5e9ff10f0daeaa070add42bae025dcb.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/4bc05d9d6167b469b8fe384240e09340.jpg', '[\"\\u4e0a\\u65b0\",\"\\u6696\\u51ac\"]', 'GOC IN C 可爱充电式暖宝防爆暖手袋毛绒暖宝', 299.00, 699.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/4c2619dfd7c7698f52d50696198ae33561dee52447310.jpg\" alt=\"\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/848e2693f34b595ce3452d20096a9ae961dee53460154.jpg\" alt=\"\" /></p>\r\n<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/dce22590a63b151a8b0cfd7c05210de161dee546e8c96.jpg\" alt=\"\" width=\"1400\" height=\"3182\" /></p>', NULL, 3, 0, 666, '{\"attrs\":{\"颜色\":[\"蓝丝绸熊\"]},\"sku\":[{\"颜色\":\"蓝丝绸熊\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/d25349784b726fc42596b04c32ec5fe4.jpg\",\"stock\":\"10\",\"vip_price\":\"299\",\"price\":\"699\"}]}', NULL, 2, '[\"1\",\"3\",null]', 0, 1, '2022-09-02 06:03:48', '2022-01-12 22:25:17', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1037, NULL, NULL, 0, '蓝色机械表', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/7842b20ea187eac44e6fee43712f47ec.jpg', '[\"\\u5962\\u54c1\",\"\\u770b\\u4e2a\\u51c6\"]', 'ROLEX劳力士宇宙计型迪通拿系列40毫米自动机械表 蓝盘钢带栗棕色表圈m116506- -0002', 1288888.00, 1888888.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/1d82b02d2bc8eec2ed8074e4bf74d47b61df7b628c118.jpg\" alt=\"\" width=\"1284\" height=\"9212\" /></p>', NULL, 0, 0, 1000, '{\"attrs\":{\"颜色\":[\"蓝色\"],\"尺寸\":[\"40mm\"]},\"sku\":[{\"颜色\":\"蓝色\",\"尺寸\":\"40mm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/b4362d3d7ba9acdb3d59d04cc4528364.jpg\",\"stock\":\"10\",\"vip_price\":\"1288888\",\"price\":\"1888888\"}]}', NULL, 6, '[\"1\",\"4\",null]', 0, 1, '2022-09-02 06:03:48', '2022-01-13 08:56:52', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1038, NULL, NULL, 0, '黄金机械表', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/53312bad737cceb0de8adceb82ba0abf.jpg', '[\"\\u5962\\u54c1\",\"\\u770b\\u4e2a\\u51c6\"]', 'ROLEX劳力士宇宙计型迪通拿系列金表40mm绿盘全黄金机械男士腕表116508', 688888.00, 888888.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/d3c9db279c4d375c2636634243debac761df7969ab1ac.jpg\" alt=\"\" width=\"1284\" height=\"5220\" /></p>', NULL, 5, 0, 1000, '{\"attrs\":{\"颜色\":[\"金色\"],\"尺寸\":[\"40mm\"]},\"sku\":[{\"颜色\":\"金色\",\"尺寸\":\"40mm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/3297275e5213143fae7f5349fda43269.jpg\",\"stock\":\"10\",\"vip_price\":\"688888\",\"price\":\"888888\"}]}', NULL, 6, '[\"1\",\"4\",null]', 0, 1, '2022-09-02 06:03:48', '2022-01-13 08:59:26', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1039, NULL, NULL, 0, 'McLaren 迈凯轮 New GT', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/3c33b7de591c9666eea7d7e764aff128.jpg', '[\"\\u8dd1\\u8f66\"]', '【意向金】期货-6月到店 武汉', 8000.00, 9000.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/a6e937f736ffb4c13dd7010393db559261df8ef289b41.jpg\" alt=\"\" width=\"1284\" height=\"12022\" /></p>', NULL, 11, 1, 1001, '{\"attrs\":{\"颜色\":[\"Vega Blue\"]},\"sku\":[{\"颜色\":\"Vega Blue\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/3252ae3bb5e4f78be335e2518d3ed816.jpg\",\"stock\":\"1\",\"vip_price\":\"8000\",\"price\":\"9000\"}]}', NULL, 12, '[\"1\",\"3\",null]', 0, 1, '2022-09-02 06:03:48', '2022-01-13 10:31:18', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1040, NULL, NULL, 0, '劳斯莱斯 曜影', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/f9f92c43f04e159cf8549e1679f06c10.jpg', '[\"\\u8dd1\\u8f66\"]', '【意向金】Rolls-Royce 劳斯莱斯 曜影 BLACK BADGE版', 5000.00, 8000.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/9eaa41a7d48f909ee01eade2da19c53861df902662af6.jpg\" alt=\"\" width=\"1284\" height=\"8731\" /></p>', NULL, 5, 1, 1001, '{\"attrs\":{\"版本\":[\"曜影 BLACK BADGE版\"]},\"sku\":[{\"版本\":\"曜影 BLACK BADGE版\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/03b39ee5f7801b89f7c965ff2323d564.jpg\",\"stock\":\"1\",\"vip_price\":\"5000\",\"price\":\"8000\"}]}', NULL, 12, '[\"1\",\"3\",null]', 0, 1, '2022-09-02 06:03:48', '2022-01-13 10:36:25', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1041, NULL, NULL, 0, '宇航员 雕像', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/05e0706370dac8f7fa4a8f42de7d4c9a.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/f779b3f77fea30b67c5bf5c41ee91374.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/6b360537b7ddfb13a1a0b36975629ab1.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/dc0c388cb326b903d953a7e15d9a2593.jpg,https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/9ba328d67a0c3b9c6dbfbf45502bbe40.jpg', '[\"\\u96d5\\u50cf\",\"\\u6446\\u4ef6\",\"NFC\"]', 'Z19 TAIKONAUT 宇航员 雕像', 11990.00, 19990.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/8ac7fe60ede5efd78dcb9e1d75c29eae61dfbb38c7878.jpg\" alt=\"\" width=\"1284\" height=\"3610\" /></p>', NULL, 83, 2, 10, '{\"attrs\":{\"规格\":[\"典藏版\"]},\"sku\":[{\"规格\":\"典藏版\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/600eb9d554a9c9e0322a35580fa01d67.jpg\",\"stock\":\"10\",\"vip_price\":\"11990\",\"price\":\"19990\"}]}', NULL, 11, '[\"1\",\"3\"]', 0, 1, '2022-09-02 06:03:48', '2022-01-13 13:40:14', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1042, NULL, NULL, 0, '宇航员2.0 阿波罗11号 B社雕像', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/93cc3de90952042f1f496719ea3e638a.jpg', '[\"\\u4e0a\\u65b0\",\"\\u96d5\\u50cf\",\"\\u6446\\u4ef6\"]', 'BLITZWAY BW-SS-21101 1/4 宇航员2.0 阿波罗11号 B社雕像', 8800.00, 9800.00, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/5e531e9d7cec63692ca84638afd9fb8c61dfc1d40490f.jpg\" alt=\"\" width=\"1440\" height=\"3240\" /></p>', NULL, 29, 3, 11, '{\"attrs\":{\"规格\":[\"781mm×566mm\"]},\"sku\":[{\"规格\":\"781mm×566mm\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/2b38d39f8f154cbfb43db8cc052e335a.jpg\",\"stock\":\"10\",\"vip_price\":\"8800\",\"price\":\"9800\"}]}', NULL, 11, '[\"1\",\"3\",null]', 0, 1, '2022-09-02 06:03:48', '2022-01-13 14:07:00', '2022-09-02 06:03:48');
INSERT INTO `wx_shop_goods` VALUES (1043, NULL, NULL, 0, '供客户测试商品', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/f0748c8efd6c6928e5d95018b8d56f1b.png,https://img.mini.chongyeapp.com/2022/10/04/621b3b8c55a7174aa1dc59f362d9a834.png', '[\"\\u6d4b\\u8bd5\"]', '测试商品购买后不支持退款不发货，请谨慎购买', 0.10, 8888.88, '<p><img src=\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/tinymce/images/7361e9e86dec765c05863fb696576c6f61e8c2bfb5948.png\" alt=\"\" width=\"1400\" height=\"1400\" /></p>', NULL, 172, 39, 0, '{\"attrs\":{\"规格\":[\"测试规格\"]},\"sku\":[{\"规格\":\"测试规格\",\"pic\":\"https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/bd00e06342a621151554c9e7b7f5cab2.png\",\"stock\":\"999\",\"vip_price\":\"0.1\",\"price\":\"8888.88\"}]}', NULL, 11, '[\"1\",null]', 0, 1, NULL, '2022-01-20 10:02:50', '2022-10-04 01:28:33');
INSERT INTO `wx_shop_goods` VALUES (1044, NULL, NULL, 0, '豹纹守宫活体宠物', 'https://img.mini.chongyeapp.com/2022/09/03/86dbce6a1b55f8064f8367de31bebcc0.jpg,https://img.mini.chongyeapp.com/2022/09/03/cd0bbb317c3be55881a37f02e0d28312.jpg,https://img.mini.chongyeapp.com/2022/09/03/f42fb41ce50de788c9386200b7ac3eea.jpg,https://img.mini.chongyeapp.com/2022/09/03/4c857ed0242b81b176e1a7e8a9225bff.jpg,https://img.mini.chongyeapp.com/2022/09/03/8db2e0f45a8ffbd3e50972f8a34e50de.jpg,https://img.mini.chongyeapp.com/2022/09/03/06d9ca6e57e3c5c99f5a0c471133a445.jpg,https://img.mini.chongyeapp.com/2022/09/03/33c2096a23d52a1dcdbd7add66df5cb4.jpg', '[\"\\u4e0a\\u65b0\"]', '豹纹守宫活体宠物/活物蜥蜴/懒人可爱小宠物/爬宠苗子/入门级爬宠守宫', 197.00, 197.00, '<p><img src=\"https://img.mini.chongyeapp.com/tinymce/images/f3ccdd27d2000e3f9255a7e3e2c48800631239b702ef2.jpg\" alt=\"\" width=\"750\" height=\"410\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/156005c5baf40ff51a327f1c34f2975b631239c84f021.jpg\" alt=\"\" width=\"750\" height=\"1079\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/799bad5a3b514f096e69bbc4a7896cd9631239d51baaa.jpg\" alt=\"\" width=\"750\" height=\"1080\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/d0096ec6c83575373e3a21d129ff8fef631239e376de8.jpg\" alt=\"\" width=\"750\" height=\"1080\" /></p>', NULL, 36, 0, 0, '{\"attrs\":{\"颜色\":[\"豹纹守宫苗子随机值250以下\",\"豹纹守宫苗子随机值250元以上\",\"豹纹守宫亚成体随机14cm-16cm左右\",\"豹纹守宫成体随机发22-25cm\",\"橘子亚成适合新手14cm-16cm\",\"雪花亚成适合新手14cm-16cm\",\"橘子（发苗子8cm左右）\",\"橘子白化（发苗子8cm左右）\",\"雪花（发苗子8cm左右）\",\"雪花白化（发苗子8cm左右）\",\"萝卜（发苗子8cm左右）\",\"雷达（发苗子8cm左右）\",\"暴龙（发苗子8cm左右）\",\"柠檬霜（发苗子8cm左右）\",\"红眼暴龙（发苗子8cm左右）\",\"雪花雷达（发苗子8cm左右）\",\"蜜桔子代（发苗子8cm左右）\",\"阳光（发苗子8cm左右）\",\"土匪（发苗子8cm左右）\",\"翡翠（发苗子8cm左右）\",\"暴风雪（发苗子8cm左右）\",\"无纹RA（发苗子8cm左右）\",\"超级暴风雪（发苗子8cm左右）\",\"超级雪花（发苗子8cm左右）\",\"超级雪花白化（发苗子8cm左右）\"]},\"sku\":[{\"颜色\":\"豹纹守宫苗子随机值250以下\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/c793b5ca4a74365ab4670a87ec207c9d.jpg\",\"stock\":\"999\",\"vip_price\":\"197\",\"price\":\"197\"},{\"颜色\":\"豹纹守宫苗子随机值250元以上\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/c8b488b3f0c973cd9d09e3721adb47d9.jpg\",\"stock\":\"999\",\"vip_price\":\"257\",\"price\":\"257\"},{\"颜色\":\"豹纹守宫亚成体随机14cm-16cm左右\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/51e9fca442297c1a395716bf75fc9721.jpg\",\"stock\":\"999\",\"vip_price\":\"297\",\"price\":\"297\"},{\"颜色\":\"豹纹守宫成体随机发22-25cm\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/27c9a0fbe83597b3587f478590706f6e.jpg\",\"stock\":\"999\",\"vip_price\":\"337\",\"price\":\"337\"},{\"颜色\":\"橘子亚成适合新手14cm-16cm\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/e1ffa4edfab2c0f55d213c590131c402.jpg\",\"stock\":\"999\",\"vip_price\":\"307\",\"price\":\"307\"},{\"颜色\":\"雪花亚成适合新手14cm-16cm\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/fdead8fa267263f76e533f093eebb3ab.jpg\",\"stock\":\"999\",\"vip_price\":\"317\",\"price\":\"317\"},{\"颜色\":\"橘子（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/0e18c3d274846c483481663f1f791dd8.jpg\",\"stock\":\"999\",\"vip_price\":\"227\",\"price\":\"227\"},{\"颜色\":\"橘子白化（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/4e59fab6be7d11b4c37894b9dbc38c39.jpg\",\"stock\":\"999\",\"vip_price\":\"237\",\"price\":\"237\"},{\"颜色\":\"雪花（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/c1ad6fbca42ad5fd9785878aa94d737b.jpg\",\"stock\":\"999\",\"vip_price\":\"257\",\"price\":\"257\"},{\"颜色\":\"雪花白化（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/6fd5fe2feaa49377a241d16f3c12e3c5.jpg\",\"stock\":\"999\",\"vip_price\":\"267\",\"price\":\"267\"},{\"颜色\":\"萝卜（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/1f9338a7ba509078cf342b8b4b24bbea.jpg\",\"stock\":\"999\",\"vip_price\":\"277\",\"price\":\"277\"},{\"颜色\":\"雷达（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/cff4f7eb9a85d4c103e37c7edcf198c8.jpg\",\"stock\":\"999\",\"vip_price\":\"287\",\"price\":\"287\"},{\"颜色\":\"暴龙（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/208be6dd1876f19320abcd71001fba4a.jpg\",\"stock\":\"999\",\"vip_price\":\"297\",\"price\":\"297\"},{\"颜色\":\"柠檬霜（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/e9faf34e7a5a36ba40c557470485a50b.jpg\",\"stock\":\"999\",\"vip_price\":\"297\",\"price\":\"297\"},{\"颜色\":\"红眼暴龙（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/974e309a15f431db29091d65100e59ed.jpg\",\"stock\":\"999\",\"vip_price\":\"307\",\"price\":\"307\"},{\"颜色\":\"雪花雷达（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/368c74eeed1653876485ac5fe5cb3007.jpg\",\"stock\":\"999\",\"vip_price\":\"307\",\"price\":\"307\"},{\"颜色\":\"蜜桔子代（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/79707bb365e802186c200781f4de9d30.jpg\",\"stock\":\"999\",\"vip_price\":\"337\",\"price\":\"337\"},{\"颜色\":\"阳光（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/d48e38b6cb05e9703276fbdcb895efb0.jpg\",\"stock\":\"999\",\"vip_price\":\"337\",\"price\":\"337\"},{\"颜色\":\"土匪（发苗子8cm左右）\",\"pic\":\"\",\"stock\":\"0\",\"vip_price\":\"0\",\"price\":\"0\"},{\"颜色\":\"翡翠（发苗子8cm左右）\",\"pic\":\"\",\"stock\":\"0\",\"vip_price\":\"0\",\"price\":\"0\"},{\"颜色\":\"暴风雪（发苗子8cm左右）\",\"pic\":\"\",\"stock\":\"0\",\"vip_price\":\"0\",\"price\":\"0\"},{\"颜色\":\"无纹RA（发苗子8cm左右）\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/07dac3e3c93750b71fd96ff3b309f7e0.jpg\",\"stock\":\"999\",\"vip_price\":\"337\",\"price\":\"337\"},{\"颜色\":\"超级暴风雪（发苗子8cm左右）\",\"pic\":\"\",\"stock\":\"0\",\"vip_price\":\"0\",\"price\":\"0\"},{\"颜色\":\"超级雪花（发苗子8cm左右）\",\"pic\":\"\",\"stock\":\"0\",\"vip_price\":\"0\",\"price\":\"0\"},{\"颜色\":\"超级雪花白化（发苗子8cm左右）\",\"pic\":\"\",\"stock\":\"0\",\"vip_price\":\"0\",\"price\":\"0\"}]}', NULL, 13, '[\"1\",null]', 1, 1, NULL, '2022-09-03 01:14:25', '2022-10-09 01:01:38');
INSERT INTO `wx_shop_goods` VALUES (1045, NULL, NULL, 0, '爬宠饲养盒', 'https://img.mini.chongyeapp.com/2022/09/03/c875408a2ace24b2d1a3fab0e4260ee0.jpg,https://img.mini.chongyeapp.com/2022/09/03/f1f8169a719a80d8fc29cd1bd396ef5b.jpg,https://img.mini.chongyeapp.com/2022/09/03/fd2dc8f25f34207e67a822ea54b1a50a.jpg,https://img.mini.chongyeapp.com/2022/09/03/c4f1b58e27814d584e166f696d2ac7df.jpg,https://img.mini.chongyeapp.com/2022/09/03/8ffd4b6a26c2891282de625c17336812.jpg,https://img.mini.chongyeapp.com/2022/09/03/da5b159bb4214520dc3d17156a3220c6.jpg', '[\"\\u4e0a\\u65b0\"]', '爬宠饲养盒/乌龟缸/带晒台躲避/蜘蛛螃蟹角蛙守宫盒/蜗牛爬宠饲养箱', 7.60, 7.60, '<p><img src=\"https://img.mini.chongyeapp.com/tinymce/images/8cda81fc7ad906927144235dda5fdf156312c666e4831.jpg\" alt=\"\" width=\"750\" height=\"844\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/62bf1edb36141f114521ec4bb41755796312c685aa180.jpg\" alt=\"\" width=\"695\" height=\"1498\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/ae566253288191ce5d879e51dae1d8c36312c6a620c2d.jpg\" alt=\"\" width=\"575\" height=\"1498\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/30e62fddc14c05988b44e7c02788e1876312c6c58b43b.jpg\" alt=\"\" width=\"750\" height=\"914\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/edab7ba7e203cd7576d1200465194ea86312c6ddb9ec8.jpg\" alt=\"\" width=\"750\" height=\"890\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/9414a8f5b810972c3c9a0e2860c075326312c6f9e6845.jpg\" alt=\"\" width=\"750\" height=\"984\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/8df7b73a7820f4aef47864f2a6c5fccf6312c713f1be8.jpg\" alt=\"\" width=\"652\" height=\"1498\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/64b8299d1597b8a5c7b9cb9c88642f6c6312c737f421b.jpg\" alt=\"\" width=\"750\" height=\"1038\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/85b6f89b41cae26786ac72365fff771b6312c7505bc8d.jpg\" alt=\"\" width=\"750\" height=\"1340\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/db3a17f7bcac837ecc1fe2bc630a54736312c784cc268.jpg\" alt=\"\" width=\"750\" height=\"1361\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/ca538c343179bf0fbdfab6cd10469afd6312c7b671fbe.jpg\" alt=\"\" width=\"790\" height=\"604\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/e89666feb714ab9c3946f28f00c5d8c46312c7d441802.jpg\" alt=\"\" width=\"750\" height=\"1166\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/a269962fe1424e1ca3e68c328b9fed616312c7ebc8313.jpg\" alt=\"\" width=\"750\" height=\"1014\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/134ce63057f068a219a0df338fb0b7236312c800b0abf.jpg\" alt=\"\" width=\"750\" height=\"832\" /><img src=\"https://img.mini.chongyeapp.com/tinymce/images/030d7e8e966169ab4c7f67c291c333f46312c81030db6.jpg\" alt=\"\" width=\"750\" height=\"976\" /></p>', NULL, 17, 2, 0, '{\"attrs\":{\"尺寸\":[\"小号白透饲养盒\",\"中号白透饲养盒送食盆\",\"大号白透饲养盒送食盆\",\"加大号白透饲养盒送食盆\",\"小号黑透饲养盒\",\"中号黑透饲养盒送食盆\",\"大号黑透饲养盒送食盆\",\"加大号黑透饲养盒送食盆\",\"小号白透饲养盒+爬台\",\"中号白透饲养盒+爬台\",\"大号白透饲养盒+爬台\",\"加大号白透饲养盒+爬台\",\"中号黑透饲养盒+爬台\",\"大号黑透饲养盒+爬台\",\"加大号黑透饲养盒+爬台\",\"加大号蓝透饲养盒+爬台\",\"中号白透饲养盒+躲避\",\"大号白透饲养盒+躲避\",\"加大号白透饲养盒+躲避\",\"中号黑透饲养盒+躲避\",\"大号黑透饲养盒+躲避\",\"加大号黑透饲养盒+躲避\",\"树栖\",\"小号正方形饲养盒\"]},\"sku\":[{\"尺寸\":\"小号白透饲养盒\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/1b987cb36f6b10714829bcc022a2064c.jpg\",\"stock\":\"999\",\"vip_price\":\"7.8\",\"price\":\"7.8\"},{\"尺寸\":\"中号白透饲养盒送食盆\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/3c75ca6a05276a5a4184f9f02631995e.jpg\",\"stock\":\"999\",\"vip_price\":\"13.8\",\"price\":\"13.8\"},{\"尺寸\":\"大号白透饲养盒送食盆\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/59e14228e27d83401f52e2ecbdf7c640.jpg\",\"stock\":\"999\",\"vip_price\":\"17.8\",\"price\":\"17.8\"},{\"尺寸\":\"加大号白透饲养盒送食盆\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/5654f18c40dcd18195d73df18ac6c423.jpg\",\"stock\":\"999\",\"vip_price\":\"24.8\",\"price\":\"24.8\"},{\"尺寸\":\"小号黑透饲养盒\",\"pic\":\"\",\"stock\":\"0\",\"vip_price\":\"7.8\",\"price\":\"7.8\"},{\"尺寸\":\"中号黑透饲养盒送食盆\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/7aa6c1dd7d0422ed1b0d2d4d4c3ec5f1.jpg\",\"stock\":\"999\",\"vip_price\":\"13.8\",\"price\":\"13.8\"},{\"尺寸\":\"大号黑透饲养盒送食盆\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/de9a4a1462f3a7647c5953d5600a0ac1.jpg\",\"stock\":\"999\",\"vip_price\":\"17.8\",\"price\":\"17.8\"},{\"尺寸\":\"加大号黑透饲养盒送食盆\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/69f3f578d5b9d8a4badce22c5788d7b3.jpg\",\"stock\":\"999\",\"vip_price\":\"24.8\",\"price\":\"24.8\"},{\"尺寸\":\"小号白透饲养盒+爬台\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/adc6ea193258fdf1d71aacbac30c693e.jpg\",\"stock\":\"999\",\"vip_price\":\"8.8\",\"price\":\"8.8\"},{\"尺寸\":\"中号白透饲养盒+爬台\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/96af99d4013372cba00bfb74e0565973.jpg\",\"stock\":\"999\",\"vip_price\":\"20.8\",\"price\":\"20.8\"},{\"尺寸\":\"大号白透饲养盒+爬台\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/65e6700b350f4dd771bc29bf1c57ead1.jpg\",\"stock\":\"999\",\"vip_price\":\"26.8\",\"price\":\"26.8\"},{\"尺寸\":\"加大号白透饲养盒+爬台\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/b3d19b36382c260b58983b408ec701a9.jpg\",\"stock\":\"999\",\"vip_price\":\"32.8\",\"price\":\"32.8\"},{\"尺寸\":\"中号黑透饲养盒+爬台\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/c2d42213d47e296a4243c0caa4034da5.jpg\",\"stock\":\"999\",\"vip_price\":\"20.8\",\"price\":\"20.8\"},{\"尺寸\":\"大号黑透饲养盒+爬台\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/87586c766067587a4aa1baf530756bff.jpg\",\"stock\":\"999\",\"vip_price\":\"26.8\",\"price\":\"26.8\"},{\"尺寸\":\"加大号黑透饲养盒+爬台\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/eb686f79548153589de7ff8b8dd0431c.jpg\",\"stock\":\"999\",\"vip_price\":\"32.8\",\"price\":\"32.8\"},{\"尺寸\":\"加大号蓝透饲养盒+爬台\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/1df5ef5dbcd29fc33a3606eac2fb36db.jpg\",\"stock\":\"999\",\"vip_price\":\"32.8\",\"price\":\"32.8\"},{\"尺寸\":\"中号白透饲养盒+躲避\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/21f968143ce8eb234c1cfa61479c0e2c.jpg\",\"stock\":\"999\",\"vip_price\":\"19.8\",\"price\":\"19.8\"},{\"尺寸\":\"大号白透饲养盒+躲避\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/c4009284af7bef5d6425ab7b00699625.jpg\",\"stock\":\"999\",\"vip_price\":\"26.8\",\"price\":\"26.8\"},{\"尺寸\":\"加大号白透饲养盒+躲避\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/6a51dc8e5853a561631f44b6037d5924.jpg\",\"stock\":\"999\",\"vip_price\":\"29.8\",\"price\":\"29.8\"},{\"尺寸\":\"中号黑透饲养盒+躲避\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/84f1b358af3c8610d49fa7c07d48ea32.jpg\",\"stock\":\"999\",\"vip_price\":\"19.8\",\"price\":\"19.8\"},{\"尺寸\":\"大号黑透饲养盒+躲避\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/5cae10a01ed912272da82608dd924afe.jpg\",\"stock\":\"999\",\"vip_price\":\"26.8\",\"price\":\"26.8\"},{\"尺寸\":\"加大号黑透饲养盒+躲避\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/59b71f856cfe03c09d7ec38c82b859c2.jpg\",\"stock\":\"999\",\"vip_price\":\"29.8\",\"price\":\"29.8\"},{\"尺寸\":\"树栖\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/91378c172f7739390a88c0755568769f.jpg\",\"stock\":\"999\",\"vip_price\":\"17.8\",\"price\":\"17.8\"},{\"尺寸\":\"小号正方形饲养盒\",\"pic\":\"https://img.mini.chongyeapp.com/2022/09/03/348448b699cbc738a49c15a18b322d6e.jpg\",\"stock\":\"999\",\"vip_price\":\"7.6\",\"price\":\"7.6\"}]}', NULL, 5, '[\"1\",null]', 1, 1, NULL, '2022-09-03 14:03:53', '2022-09-20 11:22:12');

-- ----------------------------
-- Table structure for wx_shop_goods_product
-- ----------------------------
DROP TABLE IF EXISTS `wx_shop_goods_product`;
CREATE TABLE `wx_shop_goods_product`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类图',
  `param_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '规格',
  `vip_price` decimal(10, 2) NOT NULL COMMENT 'vip价格',
  `price` decimal(10, 2) NOT NULL COMMENT '价格',
  `stock` int(11) NULL DEFAULT NULL COMMENT '库存',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `goods_id` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0正常，1管理员隐藏)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 339 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品产品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_shop_goods_product
-- ----------------------------
INSERT INTO `wx_shop_goods_product` VALUES (5, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/2fac9bd1355be8d2933e14c4fbdb3aea.png', '白色_一件', 1888.80, 1999.90, 2, 0, 1016, 0, NULL, '2022-01-11 09:49:23', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (6, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/cc20e99025d9285bd25ed9a02305043a.png', '白色_两件', 1888.80, 1999.90, 2, 0, 1016, 0, NULL, '2022-01-11 09:49:23', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (7, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/410066b91dd2b14a33868c938e70d441.png', '白色_一件', 488.90, 588.90, 70, 0, 1017, 0, NULL, '2022-01-11 09:49:42', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (8, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/b7389b6135e3ba6313f6b9d737d71e29.png', '黑色_一件', 488.90, 588.90, 70, 0, 1017, 0, NULL, '2022-01-11 09:49:42', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (51, '', '黑色_44', 25300.00, 29999.00, 10, 0, 1021, 0, NULL, '2022-01-12 09:14:24', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (52, '', '黑色_46', 25300.00, 29999.00, 10, 0, 1021, 0, NULL, '2022-01-12 09:14:24', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (53, '', '黑色_48', 99999.00, 99999.00, 10, 0, 1021, 0, NULL, '2022-01-12 09:14:24', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (54, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/13011b8264f1a7ff244a1dd0f705f8d7.jpg', '黑色_34', 99999.00, 99999.00, 10, 0, 1020, 0, NULL, '2022-01-12 09:17:42', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (55, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/b52a675ace5722685c5bd0fbf172cc6c.jpg', '黑色_36', 37000.00, 39000.00, 10, 0, 1020, 0, NULL, '2022-01-12 09:17:42', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (56, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/5020b294efe03db6c623e4995f7e174d.jpg', '黑色_38', 99999.00, 99999.00, 10, 0, 1020, 0, NULL, '2022-01-12 09:17:42', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (57, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/fb534aec89ae219df7dcd036ccf9707a.jpg', '黑色_40', 99999.00, 99999.00, 10, 0, 1020, 0, NULL, '2022-01-12 09:17:42', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (58, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/9becdcbfa5979a6de619fa6dbe68550b.jpg', '黑色_42', 99999.00, 99999.00, 10, 0, 1020, 0, NULL, '2022-01-12 09:17:42', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (59, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/ffe7c4b9028ad188d316829b141b1d04.jpg', '黑色_44', 99999.00, 99999.00, 10, 0, 1020, 0, NULL, '2022-01-12 09:17:42', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (60, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/51029508c9910453dc3b71a4dec2f123.jpg', '黑色_46', 99999.00, 99999.00, 10, 0, 1020, 0, NULL, '2022-01-12 09:17:42', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (61, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7fc8c340381d18aa9b14a6ab56f4a9b8.jpg', '黑色_48', 99999.00, 99999.00, 10, 0, 1020, 0, NULL, '2022-01-12 09:17:42', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (62, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/e833e617858f7d7c480f93eed8dfa60e.jpg', '黑色_50', 99999.00, 99999.00, 10, 0, 1020, 0, NULL, '2022-01-12 09:17:42', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (65, '', '30ml', 2800.00, 3900.00, 10, 0, 1022, 0, NULL, '2022-01-12 09:36:39', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (68, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/a12a13d3275893933acc80a311b827e5.jpg', '爱马仕凯莉凯来诗淡香水_100ml', 1590.00, 2900.00, 10, 0, 1023, 0, NULL, '2022-01-12 09:44:41', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (69, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/be49254912f99d3fbc6b0feef3fcc7f6.jpg', '爱马仕凯莉凯来诗淡香精_100ml', 1590.00, 2900.00, 10, 0, 1023, 0, NULL, '2022-01-12 09:44:41', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (70, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/8e598cdfd7847e9d94f369343fedd54d.jpg', 'Not Specified_外包装尺寸：AUG121937', 1049.00, 1999.00, 10, 0, 1024, 0, NULL, '2022-01-12 09:52:38', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (75, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/db1e148e57e37cf5272bbff844e154bc.jpg', '蘑菇牙签筒', 19.80, 99.00, 97, 0, 1029, 0, NULL, '2022-01-12 11:02:58', '2022-01-24 12:33:57');
INSERT INTO `wx_shop_goods_product` VALUES (142, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/24e05755b2a235e1ae7f2808fdae9962.jpg', '布老虎玩偶_52cm', 520.00, 998.00, 6, 0, 1035, 0, NULL, '2022-01-12 22:22:30', '2022-02-09 13:59:23');
INSERT INTO `wx_shop_goods_product` VALUES (143, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/d25349784b726fc42596b04c32ec5fe4.jpg', '蓝丝绸熊', 299.00, 699.00, 10, 0, 1036, 0, NULL, '2022-01-12 22:27:23', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (144, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/043ed8b87ded21021eb50f4127ee9916.jpg', '红橡木小框30×30×H30cm', 380.00, 418.00, 4, 0, 1034, 0, NULL, '2022-01-12 22:28:37', '2022-02-10 13:35:21');
INSERT INTO `wx_shop_goods_product` VALUES (145, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/0723b6783100eb80c5989448feb6ea1e.jpg', '红橡木中框60×30×H30cm', 480.00, 520.00, 9, 0, 1034, 0, NULL, '2022-01-12 22:28:37', '2022-01-27 17:04:17');
INSERT INTO `wx_shop_goods_product` VALUES (146, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/b066b3c635a13ff03f884a79f0f530f5.jpg', '红橡木中框+1黑胡桃抽屉 60×30×H30cm', 980.00, 1080.00, 10, 0, 1034, 0, NULL, '2022-01-12 22:28:37', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (147, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/c4abab68c241488af678ff4259b05afa.jpg', '黑胡桃木小框30×30×H30cm', 380.00, 418.00, 9, 0, 1034, 0, NULL, '2022-01-12 22:28:37', '2022-01-22 18:01:11');
INSERT INTO `wx_shop_goods_product` VALUES (148, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/f1bb2b854be1531868a46f6315344da1.jpg', '黑胡桃木中框60×30×H30cm', 580.00, 640.00, 9, 0, 1034, 0, NULL, '2022-01-12 22:28:37', '2022-02-07 05:57:05');
INSERT INTO `wx_shop_goods_product` VALUES (149, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6d59e1d48ee1a85bf2a7b03f85ff3dfa.jpg', '黑胡桃木大框60×30×H60cm', 1085.00, 1185.00, 8, 0, 1034, 0, NULL, '2022-01-12 22:28:37', '2022-01-24 21:03:33');
INSERT INTO `wx_shop_goods_product` VALUES (150, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7141ed421681c1c1240f90eb901b5157.jpg', '红橡木大框60×30×H60cm', 640.00, 680.00, 9, 0, 1034, 0, NULL, '2022-01-12 22:28:37', '2022-02-08 20:21:01');
INSERT INTO `wx_shop_goods_product` VALUES (181, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/0892fd7e35e1b280cda86d39cfbe075e.jpg', '红橡木45×38×H60cm', 1390.00, 2900.00, 9, 0, 1030, 0, NULL, '2022-01-12 22:29:49', '2022-02-10 21:54:06');
INSERT INTO `wx_shop_goods_product` VALUES (182, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/ce21e19e4164f080b6123c5ef33a23b7.jpg', '樱桃木45×38×H60cm', 1490.00, 2900.00, 10, 0, 1030, 0, NULL, '2022-01-12 22:29:49', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (183, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/de772de2a63e1cb409d302fc01f35f11.jpg', '黑胡桃木45×38×H60cm', 1890.00, 2900.00, 10, 0, 1030, 0, NULL, '2022-01-12 22:29:49', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (184, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/41abf569ec2a6215058f1a1c669a7ec9.jpg', '抱抱熊充电宝', 599.00, 699.00, 10, 0, 1027, 0, NULL, '2022-01-12 22:30:07', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (185, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/ab79e6f1e3b3c2d5631169ece4d73095.jpg', '笑脸迷彩熊', 328.00, 399.00, 10, 0, 1026, 0, NULL, '2022-01-12 22:30:22', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (186, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/977c4f7488d852c42ee0b973d5ccfc3e.jpg', '彩色', 2999.99, 4999.99, 9, 0, 1025, 0, NULL, '2022-01-12 22:30:55', '2022-02-13 17:17:46');
INSERT INTO `wx_shop_goods_product` VALUES (187, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/e8a9d3023fc1fa554a15f4891c2fdfe9.jpg', '白色', 2999.99, 4999.99, 10, 0, 1025, 0, NULL, '2022-01-12 22:30:55', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (188, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/14d03680f7604c9edb87d0874dec129f.jpg', '熬夜黑特别版', 369.00, 738.00, 99, 0, 1019, 0, NULL, '2022-01-12 22:31:16', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (189, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/11/b9b0cf4f4d7e565a6d5c50b0d6a318ae.jpg', '白色_70厘米（含耳）', 299.00, 598.00, 90, 0, 1018, 0, NULL, '2022-01-12 22:31:49', '2022-02-13 10:38:21');
INSERT INTO `wx_shop_goods_product` VALUES (198, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/600eb9d554a9c9e0322a35580fa01d67.jpg', '典藏版', 11990.00, 19990.00, 39, 0, 1041, 0, NULL, '2022-01-13 13:40:14', '2022-02-10 14:20:34');
INSERT INTO `wx_shop_goods_product` VALUES (200, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/2b38d39f8f154cbfb43db8cc052e335a.jpg', '781mm×566mm', 8800.00, 9800.00, 6, 0, 1042, 0, NULL, '2022-01-13 14:08:25', '2022-02-08 14:34:54');
INSERT INTO `wx_shop_goods_product` VALUES (201, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/e0d6ea325755258a88fd0873692789fa.jpg', '大木马93×43.3×H76.9cm', 1390.00, 1900.00, 8, 0, 1031, 0, NULL, '2022-01-13 14:09:50', '2022-01-20 14:47:16');
INSERT INTO `wx_shop_goods_product` VALUES (202, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/946f478b694828a457b50dc4c55dba9a.jpg', '小木马85.7×32.6×H56.1cm', 2180.00, 2900.00, 9, 0, 1031, 0, NULL, '2022-01-13 14:09:50', '2022-01-19 14:51:36');
INSERT INTO `wx_shop_goods_product` VALUES (203, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6c5ae8f13ea66531489e0a8defc6f958.jpg', '红橡木+布艺_单人', 4290.00, 4990.00, 9, 0, 1032, 0, NULL, '2022-01-13 14:10:23', '2022-01-19 13:47:49');
INSERT INTO `wx_shop_goods_product` VALUES (204, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/87f7b2b575a6f4fda3bf2b3998478e3b.jpg', '红橡木+布艺_三人', 8900.00, 9800.00, 7, 0, 1032, 0, NULL, '2022-01-13 14:10:23', '2022-02-11 22:36:47');
INSERT INTO `wx_shop_goods_product` VALUES (205, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/b635b55ef0f4a972fe5d52b0c6ac8564.jpg', '红橡木+布艺_四人', 12500.00, 13500.00, 10, 0, 1032, 0, NULL, '2022-01-13 14:10:23', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (206, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/e0f0f38aeb41c3be44ec130a04e033ef.jpg', '黑胡桃木+布艺_单人', 5290.00, 5990.00, 10, 0, 1032, 0, NULL, '2022-01-13 14:10:23', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (207, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/0bbd3cf80d62ad1f9a77657cc04c82be.jpg', '黑胡桃木+布艺_三人', 12200.00, 13200.00, 10, 0, 1032, 0, NULL, '2022-01-13 14:10:23', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (208, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7c5c3ab69a7fadaf0d08149b2eb51cec.jpg', '黑胡桃木+布艺_四人', 15900.00, 16900.00, 10, 0, 1032, 0, NULL, '2022-01-13 14:10:23', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (209, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/45104a0f45e53fc47c5f149165804258.jpg', '红橡木+皮艺_单人', 6950.00, 7950.00, 10, 0, 1032, 0, NULL, '2022-01-13 14:10:23', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (210, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7378232f097c0bc9cfac1cd547b41068.jpg', '红橡木+皮艺_三人', 17200.00, 18900.00, 10, 0, 1032, 0, NULL, '2022-01-13 14:10:23', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (211, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/60e0945e268db2817aa26feda7432c86.jpg', '红橡木+皮艺_四人', 22800.00, 23800.00, 10, 0, 1032, 0, NULL, '2022-01-13 14:10:23', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (212, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/4d6ab927974dd9b8b0113e3dc7a47d55.jpg', '黑胡桃木+皮艺_单人', 7900.00, 8900.00, 9, 0, 1032, 0, NULL, '2022-01-13 14:10:23', '2022-08-27 07:06:42');
INSERT INTO `wx_shop_goods_product` VALUES (213, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/fe0b93b30baf9d04d9fba342be74ae5e.jpg', '黑胡桃木+皮艺_三人', 19800.00, 20800.00, 9, 0, 1032, 0, NULL, '2022-01-13 14:10:23', '2022-02-05 21:59:56');
INSERT INTO `wx_shop_goods_product` VALUES (214, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/8f21f07d2dc6465aac23be6948a7bd0a.jpg', '黑胡桃木+皮艺_四人', 26400.00, 27400.00, 10, 0, 1032, 0, NULL, '2022-01-13 14:10:23', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (215, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/81708d098ddcddc0b640ecb437237b7d.jpg', '白蜡木 - 纯棉浅绿_单人', 6490.00, 6690.00, 10, 0, 1033, 0, NULL, '2022-01-13 14:10:52', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (216, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7ed39833973c09a91908bec7da18f2a1.jpg', '白蜡木 - 纯棉浅绿_三人', 11490.00, 12490.00, 10, 0, 1033, 0, NULL, '2022-01-13 14:10:52', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (217, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/edb4db6265cb88ce1210b7ac63963d49.jpg', '白蜡木 - 纯棉深灰_单人', 6490.00, 6690.00, 10, 0, 1033, 0, NULL, '2022-01-13 14:10:52', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (218, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/7899bba31c02b22df0bf3a093bf57aa8.jpg', '白蜡木 - 纯棉深灰_三人', 11490.00, 12490.00, 10, 0, 1033, 0, NULL, '2022-01-13 14:10:52', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (219, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/5384c5da1f36f9c58e5433497fef6197.jpg', '白蜡木 - 纯棉深绿_单人', 6490.00, 6690.00, 10, 0, 1033, 0, NULL, '2022-01-13 14:10:52', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (220, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/34cd7cb7f682e61db27db2a0733a90f9.jpg', '白蜡木 - 纯棉深绿_三人', 11490.00, 12490.00, 10, 0, 1033, 0, NULL, '2022-01-13 14:10:52', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (221, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/b572860844fd19cf586bf6d0f21c7a50.jpg', '白蜡木 - 羊毛深咖_单人', 7490.00, 8690.00, 10, 0, 1033, 0, NULL, '2022-01-13 14:10:52', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (222, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/c7aff6235ec0d785a537b531dcc258c5.jpg', '白蜡木 - 羊毛深咖_三人', 12490.00, 13490.00, 10, 0, 1033, 0, NULL, '2022-01-13 14:10:52', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (223, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/319e8a978bef408595cf09e420f8fd45.jpg', '黑胡桃木 - 纯棉浅绿_单人', 8890.00, 9090.00, 9, 0, 1033, 0, NULL, '2022-01-13 14:10:52', '2022-01-20 14:47:35');
INSERT INTO `wx_shop_goods_product` VALUES (224, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/65cc3fd05ddd7295c9fdf792b5f10c5f.jpg', '黑胡桃木 - 纯棉浅绿_三人', 14750.00, 16750.00, 10, 0, 1033, 0, NULL, '2022-01-13 14:10:52', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (225, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/8b008555952fc3582d9073915b8fda90.jpg', '黑胡桃木 - 纯棉深灰_单人', 8890.00, 9090.00, 10, 0, 1033, 0, NULL, '2022-01-13 14:10:52', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (226, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/b39ff3be4db9b7e9fffd9ef944bbdd57.jpg', '黑胡桃木 - 纯棉深灰_三人', 14750.00, 16750.00, 9, 0, 1033, 0, NULL, '2022-01-13 14:10:52', '2022-01-27 20:02:50');
INSERT INTO `wx_shop_goods_product` VALUES (227, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/cd364e4a76327d34871e45f616f2a5f7.jpg', '黑胡桃木 - 纯棉深绿_单人', 8890.00, 9090.00, 10, 0, 1033, 0, NULL, '2022-01-13 14:10:52', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (228, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/335395a05833b958c19a1b332a85b056.jpg', '黑胡桃木 - 纯棉深绿_三人', 14750.00, 16750.00, 9, 0, 1033, 0, NULL, '2022-01-13 14:10:52', '2022-01-22 18:04:01');
INSERT INTO `wx_shop_goods_product` VALUES (229, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/28559b935ff7fcddb15ada93eee0c708.jpg', '黑胡桃木 - 羊毛深咖_单人', 9980.00, 1080.00, 10, 0, 1033, 0, NULL, '2022-01-13 14:10:52', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (230, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/9d7be2f5333018c9d1c55c577fb478b2.jpg', '黑胡桃木 - 羊毛深咖_三人', 16180.00, 16880.00, 9, 0, 1033, 0, NULL, '2022-01-13 14:10:52', '2022-01-23 11:02:25');
INSERT INTO `wx_shop_goods_product` VALUES (231, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/b4362d3d7ba9acdb3d59d04cc4528364.jpg', '蓝色_40mm', 1288888.00, 1888888.00, 10, 0, 1037, 0, NULL, '2022-01-13 17:47:07', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (232, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/3297275e5213143fae7f5349fda43269.jpg', '金色_40mm', 688888.00, 888888.00, 10, 0, 1038, 0, NULL, '2022-01-13 17:47:17', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (236, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/03b39ee5f7801b89f7c965ff2323d564.jpg', '曜影 BLACK BADGE版', 5000.00, 8000.00, 1, 0, 1040, 0, NULL, '2022-02-09 09:16:41', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (237, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/3252ae3bb5e4f78be335e2518d3ed816.jpg', 'Vega Blue', 8000.00, 9000.00, 1, 0, 1039, 0, NULL, '2022-02-09 09:17:28', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (265, 'https://img.mini.chongyeapp.com/2022/09/03/c793b5ca4a74365ab4670a87ec207c9d.jpg', '豹纹守宫苗子随机值250以下', 197.00, 197.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (266, 'https://img.mini.chongyeapp.com/2022/09/03/c8b488b3f0c973cd9d09e3721adb47d9.jpg', '豹纹守宫苗子随机值250元以上', 257.00, 257.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (267, 'https://img.mini.chongyeapp.com/2022/09/03/51e9fca442297c1a395716bf75fc9721.jpg', '豹纹守宫亚成体随机14cm-16cm左右', 297.00, 297.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (268, 'https://img.mini.chongyeapp.com/2022/09/03/27c9a0fbe83597b3587f478590706f6e.jpg', '豹纹守宫成体随机发22-25cm', 337.00, 337.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (269, 'https://img.mini.chongyeapp.com/2022/09/03/e1ffa4edfab2c0f55d213c590131c402.jpg', '橘子亚成适合新手14cm-16cm', 307.00, 307.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (270, 'https://img.mini.chongyeapp.com/2022/09/03/fdead8fa267263f76e533f093eebb3ab.jpg', '雪花亚成适合新手14cm-16cm', 317.00, 317.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (271, 'https://img.mini.chongyeapp.com/2022/09/03/0e18c3d274846c483481663f1f791dd8.jpg', '橘子（发苗子8cm左右）', 227.00, 227.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (272, 'https://img.mini.chongyeapp.com/2022/09/03/4e59fab6be7d11b4c37894b9dbc38c39.jpg', '橘子白化（发苗子8cm左右）', 237.00, 237.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (273, 'https://img.mini.chongyeapp.com/2022/09/03/c1ad6fbca42ad5fd9785878aa94d737b.jpg', '雪花（发苗子8cm左右）', 257.00, 257.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (274, 'https://img.mini.chongyeapp.com/2022/09/03/6fd5fe2feaa49377a241d16f3c12e3c5.jpg', '雪花白化（发苗子8cm左右）', 267.00, 267.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (275, 'https://img.mini.chongyeapp.com/2022/09/03/1f9338a7ba509078cf342b8b4b24bbea.jpg', '萝卜（发苗子8cm左右）', 277.00, 277.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (276, 'https://img.mini.chongyeapp.com/2022/09/03/cff4f7eb9a85d4c103e37c7edcf198c8.jpg', '雷达（发苗子8cm左右）', 287.00, 287.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (277, 'https://img.mini.chongyeapp.com/2022/09/03/208be6dd1876f19320abcd71001fba4a.jpg', '暴龙（发苗子8cm左右）', 297.00, 297.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (278, 'https://img.mini.chongyeapp.com/2022/09/03/e9faf34e7a5a36ba40c557470485a50b.jpg', '柠檬霜（发苗子8cm左右）', 297.00, 297.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (279, 'https://img.mini.chongyeapp.com/2022/09/03/974e309a15f431db29091d65100e59ed.jpg', '红眼暴龙（发苗子8cm左右）', 307.00, 307.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (280, 'https://img.mini.chongyeapp.com/2022/09/03/368c74eeed1653876485ac5fe5cb3007.jpg', '雪花雷达（发苗子8cm左右）', 307.00, 307.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (281, 'https://img.mini.chongyeapp.com/2022/09/03/79707bb365e802186c200781f4de9d30.jpg', '蜜桔子代（发苗子8cm左右）', 337.00, 337.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (282, 'https://img.mini.chongyeapp.com/2022/09/03/d48e38b6cb05e9703276fbdcb895efb0.jpg', '阳光（发苗子8cm左右）', 337.00, 337.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (283, '', '土匪（发苗子8cm左右）', 0.00, 0.00, 0, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (284, '', '翡翠（发苗子8cm左右）', 0.00, 0.00, 0, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (285, '', '暴风雪（发苗子8cm左右）', 0.00, 0.00, 0, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (286, 'https://img.mini.chongyeapp.com/2022/09/03/07dac3e3c93750b71fd96ff3b309f7e0.jpg', '无纹RA（发苗子8cm左右）', 337.00, 337.00, 999, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (287, '', '超级暴风雪（发苗子8cm左右）', 0.00, 0.00, 0, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (288, '', '超级雪花（发苗子8cm左右）', 0.00, 0.00, 0, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (289, '', '超级雪花白化（发苗子8cm左右）', 0.00, 0.00, 0, 0, 1044, 0, NULL, '2022-09-03 01:48:15', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (314, 'https://img.mini.chongyeapp.com/2022/09/03/1b987cb36f6b10714829bcc022a2064c.jpg', '小号白透饲养盒', 7.80, 7.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (315, 'https://img.mini.chongyeapp.com/2022/09/03/3c75ca6a05276a5a4184f9f02631995e.jpg', '中号白透饲养盒送食盆', 13.80, 13.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (316, 'https://img.mini.chongyeapp.com/2022/09/03/59e14228e27d83401f52e2ecbdf7c640.jpg', '大号白透饲养盒送食盆', 17.80, 17.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (317, 'https://img.mini.chongyeapp.com/2022/09/03/5654f18c40dcd18195d73df18ac6c423.jpg', '加大号白透饲养盒送食盆', 24.80, 24.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (318, '', '小号黑透饲养盒', 7.80, 7.80, 0, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (319, 'https://img.mini.chongyeapp.com/2022/09/03/7aa6c1dd7d0422ed1b0d2d4d4c3ec5f1.jpg', '中号黑透饲养盒送食盆', 13.80, 13.80, 998, 0, 1045, 0, NULL, '2022-09-04 00:03:05', '2022-09-20 09:45:41');
INSERT INTO `wx_shop_goods_product` VALUES (320, 'https://img.mini.chongyeapp.com/2022/09/03/de9a4a1462f3a7647c5953d5600a0ac1.jpg', '大号黑透饲养盒送食盆', 17.80, 17.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (321, 'https://img.mini.chongyeapp.com/2022/09/03/69f3f578d5b9d8a4badce22c5788d7b3.jpg', '加大号黑透饲养盒送食盆', 24.80, 24.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (322, 'https://img.mini.chongyeapp.com/2022/09/03/adc6ea193258fdf1d71aacbac30c693e.jpg', '小号白透饲养盒+爬台', 8.80, 8.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (323, 'https://img.mini.chongyeapp.com/2022/09/03/96af99d4013372cba00bfb74e0565973.jpg', '中号白透饲养盒+爬台', 20.80, 20.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (324, 'https://img.mini.chongyeapp.com/2022/09/03/65e6700b350f4dd771bc29bf1c57ead1.jpg', '大号白透饲养盒+爬台', 26.80, 26.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (325, 'https://img.mini.chongyeapp.com/2022/09/03/b3d19b36382c260b58983b408ec701a9.jpg', '加大号白透饲养盒+爬台', 32.80, 32.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (326, 'https://img.mini.chongyeapp.com/2022/09/03/c2d42213d47e296a4243c0caa4034da5.jpg', '中号黑透饲养盒+爬台', 20.80, 20.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (327, 'https://img.mini.chongyeapp.com/2022/09/03/87586c766067587a4aa1baf530756bff.jpg', '大号黑透饲养盒+爬台', 26.80, 26.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (328, 'https://img.mini.chongyeapp.com/2022/09/03/eb686f79548153589de7ff8b8dd0431c.jpg', '加大号黑透饲养盒+爬台', 32.80, 32.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (329, 'https://img.mini.chongyeapp.com/2022/09/03/1df5ef5dbcd29fc33a3606eac2fb36db.jpg', '加大号蓝透饲养盒+爬台', 32.80, 32.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (330, 'https://img.mini.chongyeapp.com/2022/09/03/21f968143ce8eb234c1cfa61479c0e2c.jpg', '中号白透饲养盒+躲避', 19.80, 19.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (331, 'https://img.mini.chongyeapp.com/2022/09/03/c4009284af7bef5d6425ab7b00699625.jpg', '大号白透饲养盒+躲避', 26.80, 26.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (332, 'https://img.mini.chongyeapp.com/2022/09/03/6a51dc8e5853a561631f44b6037d5924.jpg', '加大号白透饲养盒+躲避', 29.80, 29.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (333, 'https://img.mini.chongyeapp.com/2022/09/03/84f1b358af3c8610d49fa7c07d48ea32.jpg', '中号黑透饲养盒+躲避', 19.80, 19.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (334, 'https://img.mini.chongyeapp.com/2022/09/03/5cae10a01ed912272da82608dd924afe.jpg', '大号黑透饲养盒+躲避', 26.80, 26.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (335, 'https://img.mini.chongyeapp.com/2022/09/03/59b71f856cfe03c09d7ec38c82b859c2.jpg', '加大号黑透饲养盒+躲避', 29.80, 29.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (336, 'https://img.mini.chongyeapp.com/2022/09/03/91378c172f7739390a88c0755568769f.jpg', '树栖', 17.80, 17.80, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (337, 'https://img.mini.chongyeapp.com/2022/09/03/348448b699cbc738a49c15a18b322d6e.jpg', '小号正方形饲养盒', 7.60, 7.60, 999, 0, 1045, 0, NULL, '2022-09-04 00:03:05', NULL);
INSERT INTO `wx_shop_goods_product` VALUES (338, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/bd00e06342a621151554c9e7b7f5cab2.png', '测试规格', 0.10, 8888.88, 999, 0, 1043, 0, NULL, '2022-10-04 01:28:33', NULL);

-- ----------------------------
-- Table structure for wx_shop_notice
-- ----------------------------
DROP TABLE IF EXISTS `wx_shop_notice`;
CREATE TABLE `wx_shop_notice`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `state` tinyint(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0 COMMENT '状态(0正常，1下线)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1534 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SHOP通知表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_shop_notice
-- ----------------------------
INSERT INTO `wx_shop_notice` VALUES (1533, '宠物活体售后必须是快递当天12小时内的开箱视频', '<h1 style=\"margin: 0cm; text-align: center; line-height: 70.4px; break-after: avoid; font-size: 22pt; font-family: Calibri, sans-serif; background: white;\" align=\"center\"><span style=\"font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\">服务通知</span></h1>\r\n<h4 style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-family: PingFangSC-Regular, \'Microsoft YaHei\', \'\\微软雅黑\', Tahoma, Helvetica, sans-serif; color: #343a40; font-size: 12px; letter-spacing: 0.5px; background-color: #ffffff; text-align: center;\" align=\"center\" data-v-2daed986=\"\" data-spm-anchor-id=\"a214ky.13184207.0.i2.79b12437WzQ4lN\"><span style=\"font-size: 9pt; line-height: 18.72px; font-family: PingFangSC-Regular, sans-serif; color: #343a40; letter-spacing: 0.4pt;\"><span lang=\"EN-US\">2022</span>年<span lang=\"EN-US\">09</span>月<span lang=\"EN-US\">02</span>日起疫情影响配送延迟通知</span></h4>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\">&nbsp;</p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: \'Segoe UI\', sans-serif; color: #242529; letter-spacing: -0.2pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"letter-spacing: -0.266667px;\">一</span><span style=\"font-family: 宋体; letter-spacing: -0.2pt; font-size: 9pt;\">、高风险地区请您自行确保可以正常收发快递。</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\"><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\">二、宠物活体售后必须是快递当天12小时内的开箱视频</span><span style=\"font-size: 9pt; color: #242529; letter-spacing: -0.2pt;\"><span style=\"font-family: pingfang SC, Microsoft YaHei, 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif;\">。</span></span></p>\r\n<p><span style=\"background-color: #ffffff; color: #242529; font-family: \'pingfang SC\', \'Microsoft YaHei\', 微软雅黑, helvetica, arial, verdana, tahoma, sans-serif; font-size: 12px; letter-spacing: -0.29px; caret-color: #242529;\">官方选品，值得信赖！&nbsp;</span></p>\r\n<p style=\"margin: 0cm 0cm 11.25pt; font-size: 12pt; font-family: 宋体; line-height: 14.25pt; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-size-adjust: 100%;\">&nbsp;</p>', 1, NULL, '2022-01-11 11:30:38', '2022-09-02 14:11:03');

-- ----------------------------
-- Table structure for wx_shop_order
-- ----------------------------
DROP TABLE IF EXISTS `wx_shop_order`;
CREATE TABLE `wx_shop_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单号',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `goods_amount` decimal(10, 2) UNSIGNED NOT NULL COMMENT '商品总价',
  `discounts_amount` decimal(10, 2) UNSIGNED NULL COMMENT '优惠金额',
  `order_amount` decimal(10, 2) UNSIGNED NOT NULL COMMENT '订单总额',
  `payed` decimal(10, 2) UNSIGNED NULL COMMENT '已支付的金额',
  `serial_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付流水号',
  `pay_status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '支付状态 1=未付款 2=已付款 3=已退款',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '状态 0=正常 1=未发货 2=已发货 3=确认收货 4=已退货 5=取消 6=用户删除',
  `cost_freight` decimal(6, 2) UNSIGNED NULL COMMENT '配送费用',
  `adds_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人姓名',
  `adds_mobile` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人电话',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货详细地址',
  `express` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流名称',
  `express_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `has_virtual` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否存在虚拟商品',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商家备注',
  `user_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户备注',
  `payment_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付时间',
  `ship_at` timestamp(0) NULL DEFAULT NULL COMMENT '发货时间',
  `confirm_time` timestamp(0) NULL DEFAULT NULL COMMENT '确认收货时间',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`order_id`) USING BTREE,
  INDEX `index_1`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wx_shop_order
-- ----------------------------
INSERT INTO `wx_shop_order` VALUES (7, '16424304601754', 10000, 125774.04, 48781.47, 76992.57, 0.00, NULL, 1, 5, 0.00, '李先生', '17674188804', '北京市北京市东城区朝阳小区A栋101', NULL, NULL, 0, NULL, '快点发货哈', NULL, NULL, NULL, '2022-09-02 14:11:49', '2022-01-17 15:41:00', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (8, '16424306779892', 10000, 125774.04, 48781.47, 76992.57, 0.00, NULL, 1, 5, 0.00, '李先生', '17674188804', '北京市北京市东城区朝阳小区A栋101', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-09-02 14:11:49', '2022-01-17 22:44:37', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (9, '16424681096453', 10000, 125774.04, 48781.47, 76992.57, 0.00, NULL, 1, 5, 0.00, '李先生', '17674188804', '北京市北京市东城区朝阳小区A栋101', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-09-02 14:11:49', '2022-01-18 09:08:29', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (10, '16424698807802', 10000, 5828.10, 777.45, 5050.65, 0.00, NULL, 1, 5, 0.00, '李先生', '17674188804', '北京市北京市东城区朝阳小区A栋101', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-09-02 14:11:49', '2022-01-18 09:38:00', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (11, '16424699882535', 10000, 5828.10, 777.45, 5050.65, 0.00, NULL, 1, 5, 0.00, '李先生', '17674188804', '北京市北京市东城区朝阳小区A栋101', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-09-02 14:11:49', '2022-01-18 09:39:48', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (12, '16424705218131', 10000, 5828.10, 777.45, 5050.65, 0.00, NULL, 1, 6, 0.00, '李先生', '17674188804', '北京市北京市东城区朝阳小区A栋101', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-09-02 14:11:49', '2022-01-18 09:48:41', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (13, '16424715580178', 10000, 837.34, 77.14, 760.20, 10.00, '4200001323202201183343234689', 2, 1, 0.00, '李先生', '17674188804', '北京市北京市东城区朝阳小区A栋101', NULL, NULL, 0, NULL, NULL, '20220118100611', NULL, NULL, '2022-09-02 14:11:49', '2022-01-18 10:05:58', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (14, '16424717765536', 10000, 4990.76, 700.31, 4290.45, 10.00, '4200001326202201184196318915', 2, 1, 0.00, '李先生', '17674188804', '北京市北京市东城区朝阳小区A栋101', NULL, NULL, 0, NULL, NULL, '20220118100949', NULL, NULL, '2022-09-02 14:11:49', '2022-01-18 10:09:36', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (15, '16424719353814', 10000, 4990.76, 700.31, 4290.45, 0.10, '4200001305202201182560420010', 3, 4, 0.00, '李先生', '17674188804', '北京市北京市东城区朝阳小区A栋101', NULL, NULL, 0, NULL, NULL, '20220118101228', NULL, NULL, '2022-09-02 14:11:49', '2022-01-18 10:12:15', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (16, '16424722412178', 10000, 4990.76, 700.31, 4290.45, 0.10, '4200001309202201186631189135', 2, 2, 0.00, '李先生', '17674188804', '北京市北京市东城区朝阳小区A栋101', '中通速运', '78249862083063', 0, '测试发货', NULL, '2022-01-18 10:17:32', '2022-01-19 20:45:11', NULL, '2022-09-02 14:11:49', '2022-01-18 10:17:21', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (17, '16424973669567', 10000, 418.00, 38.00, 380.00, 0.00, NULL, 1, 5, 0.00, '李梓晨', '17674188804', '广东省深圳市龙岗区麟恒中心广场D2栋', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-09-02 14:11:49', '2022-01-18 17:16:06', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (18, '16424976980826', 10000, 19990.00, 8000.00, 11990.00, 0.00, NULL, 1, 6, 0.00, '李先生', '17674188804', '北京市北京市东城区朝阳小区A栋101', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-09-02 14:11:49', '2022-01-18 17:21:38', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (19, '16424979091312', 10000, 19990.00, 8000.00, 11990.00, 0.10, '4200001307202201189220950674', 2, 3, 0.00, '李梓晨', '17674188804', '广东省深圳市龙岗区麟恒中心广场D2栋', '中通速运', '78249862083063', 0, NULL, NULL, '2022-01-18 17:25:20', '2022-01-19 16:02:56', NULL, '2022-09-02 14:11:49', '2022-01-18 17:25:09', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (20, '16424979611042', 10000, 19990.00, 8000.00, 11990.00, 0.10, '4200001352202201181566131274', 2, 2, 0.00, '李梓晨', '17674188804', '广东省深圳市龙岗区麟恒中心广场D2栋', '中通速运', '78249862083063', 0, NULL, NULL, '2022-01-18 17:27:35', '2022-01-19 16:02:49', NULL, '2022-09-02 14:11:49', '2022-01-18 17:26:01', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (21, '16425712770293', 10000, 34780.00, 9600.00, 25180.00, 0.00, NULL, 1, 5, 0.00, '李梓晨', '17674188804', '广东省深圳市龙岗区麟恒中心广场D2栋', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-09-02 14:11:49', '2022-01-19 13:47:57', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (22, '16425751183338', 10000, 22890.00, 8720.00, 14170.00, 0.10, '4200001324202201198899808456', 2, 3, 0.00, '李梓晨', '17674188804', '广东省深圳市龙岗区麟恒中心广场D2栋', '中通速运', '78249862083063', 0, NULL, NULL, '2022-01-19 14:52:11', '2022-01-19 15:57:49', NULL, '2022-09-02 14:11:49', '2022-01-19 14:51:58', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (28, '16619138565826', 11583, 8888.88, 8888.78, 0.10, 0.00, NULL, 1, 0, 0.00, '邵闻', '16710855236', '北京市北京市东城区新疆大家觉得', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-09-02 14:11:49', '2022-08-31 10:44:16', '2022-09-02 14:11:49');
INSERT INTO `wx_shop_order` VALUES (29, '16636384119505', 11602, 13.80, 0.00, 13.80, 0.00, NULL, 1, 0, 0.00, 'cs', '19999999999', '江西省九江市浔阳区1w~q22!', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-20 09:46:51', '2022-09-20 09:46:51');

-- ----------------------------
-- Table structure for wx_shop_order_after
-- ----------------------------
DROP TABLE IF EXISTS `wx_shop_order_after`;
CREATE TABLE `wx_shop_order_after`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '售后标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '售后内容',
  `order_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0未处理，1已处理，2拒绝)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单售后表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_shop_order_after
-- ----------------------------

-- ----------------------------
-- Table structure for wx_shop_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `wx_shop_order_goods`;
CREATE TABLE `wx_shop_order_goods`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品图',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `paid_content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '虚拟发货信息',
  `product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品规格',
  `vip_price` decimal(10, 2) NOT NULL COMMENT 'vip价格',
  `price` decimal(10, 2) NOT NULL COMMENT '价格',
  `recharge` int(11) NULL DEFAULT NULL COMMENT '实付',
  `quantity` int(11) NOT NULL COMMENT '数量',
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `product_id` bigint(20) NULL DEFAULT NULL COMMENT '商品规格id',
  `type` tinyint(1) NULL DEFAULT 0 COMMENT '类型(0正常，1补发，2赠送)',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0正常，1退款中，2退货退款，3已退款，4异常)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`order_id`) USING BTREE,
  INDEX `index_1`(`goods_id`) USING BTREE,
  INDEX `index_2`(`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_shop_order_goods
-- ----------------------------
INSERT INTO `wx_shop_order_goods` VALUES (2, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/600eb9d554a9c9e0322a35580fa01d67.jpg', '宇航员 雕像', NULL, '典藏版', 11990.32, 19990.99, NULL, 6, 7, 1041, NULL, 0, 0, '2022-09-02 14:12:12', NULL, '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (3, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/043ed8b87ded21021eb50f4127ee9916.jpg', '组合框', NULL, '红橡木小框30×30×H30cm', 380.10, 418.67, NULL, 2, 7, 1034, NULL, 0, 0, '2022-09-02 14:12:12', NULL, '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (4, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6c5ae8f13ea66531489e0a8defc6f958.jpg', '泡芙懒人沙发', NULL, '红橡木+布艺_单人', 4290.45, 4990.76, NULL, 1, 7, 1032, NULL, 0, 0, '2022-09-02 14:12:12', NULL, '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (5, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/600eb9d554a9c9e0322a35580fa01d67.jpg', '宇航员 雕像', NULL, '典藏版', 11990.32, 19990.99, NULL, 6, 8, 1041, NULL, 0, 0, '2022-09-02 14:12:12', '2022-01-17 22:44:37', '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (6, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/043ed8b87ded21021eb50f4127ee9916.jpg', '组合框', NULL, '红橡木小框30×30×H30cm', 380.10, 418.67, NULL, 2, 8, 1034, NULL, 0, 0, '2022-09-02 14:12:12', '2022-01-17 22:44:37', '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (7, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6c5ae8f13ea66531489e0a8defc6f958.jpg', '泡芙懒人沙发', NULL, '红橡木+布艺_单人', 4290.45, 4990.76, NULL, 1, 8, 1032, NULL, 0, 0, '2022-09-02 14:12:12', '2022-01-17 22:44:37', '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (8, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/600eb9d554a9c9e0322a35580fa01d67.jpg', '宇航员 雕像', NULL, '典藏版', 11990.32, 19990.99, NULL, 6, 9, 1041, NULL, 0, 0, '2022-09-02 14:12:12', '2022-01-18 09:08:29', '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (9, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/043ed8b87ded21021eb50f4127ee9916.jpg', '组合框', NULL, '红橡木小框30×30×H30cm', 380.10, 418.67, NULL, 2, 9, 1034, NULL, 0, 0, '2022-09-02 14:12:12', '2022-01-18 09:08:29', '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (10, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6c5ae8f13ea66531489e0a8defc6f958.jpg', '泡芙懒人沙发', NULL, '红橡木+布艺_单人', 4290.45, 4990.76, NULL, 1, 9, 1032, NULL, 0, 0, '2022-09-02 14:12:12', '2022-01-18 09:08:29', '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (11, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/043ed8b87ded21021eb50f4127ee9916.jpg', '组合框', NULL, '红橡木小框30×30×H30cm', 380.10, 418.67, NULL, 2, 10, 1034, NULL, 0, 0, '2022-09-02 14:12:12', '2022-01-18 09:38:00', '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (12, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6c5ae8f13ea66531489e0a8defc6f958.jpg', '泡芙懒人沙发', NULL, '红橡木+布艺_单人', 4290.45, 4990.76, NULL, 1, 10, 1032, NULL, 0, 0, '2022-09-02 14:12:12', '2022-01-18 09:38:00', '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (13, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/043ed8b87ded21021eb50f4127ee9916.jpg', '组合框', NULL, '红橡木小框30×30×H30cm', 380.10, 418.67, NULL, 2, 11, 1034, NULL, 0, 0, '2022-09-02 14:12:12', '2022-01-18 09:39:48', '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (14, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6c5ae8f13ea66531489e0a8defc6f958.jpg', '泡芙懒人沙发', NULL, '红橡木+布艺_单人', 4290.45, 4990.76, NULL, 1, 11, 1032, NULL, 0, 0, '2022-09-02 14:12:12', '2022-01-18 09:39:48', '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (15, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/043ed8b87ded21021eb50f4127ee9916.jpg', '组合框', NULL, '红橡木小框30×30×H30cm', 380.10, 418.67, NULL, 2, 12, 1034, NULL, 0, 0, '2022-09-02 14:12:12', '2022-01-18 09:48:41', '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (16, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6c5ae8f13ea66531489e0a8defc6f958.jpg', '泡芙懒人沙发', NULL, '红橡木+布艺_单人', 4290.45, 4990.76, NULL, 1, 12, 1032, NULL, 0, 0, '2022-09-02 14:12:12', '2022-01-18 09:48:41', '2022-09-02 14:12:12');
INSERT INTO `wx_shop_order_goods` VALUES (17, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/043ed8b87ded21021eb50f4127ee9916.jpg', '组合框', NULL, '红橡木小框30×30×H30cm', 380.10, 418.67, NULL, 2, 13, 1034, NULL, 0, 0, '2022-09-02 14:12:04', '2022-01-18 10:05:58', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (18, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6c5ae8f13ea66531489e0a8defc6f958.jpg', '泡芙懒人沙发', NULL, '红橡木+布艺_单人', 4290.45, 4990.76, NULL, 1, 14, 1032, NULL, 0, 0, '2022-09-02 14:12:04', '2022-01-18 10:09:36', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (19, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6c5ae8f13ea66531489e0a8defc6f958.jpg', '泡芙懒人沙发', NULL, '红橡木+布艺_单人', 4290.45, 4990.76, NULL, 1, 15, 1032, NULL, 0, 3, '2022-09-02 14:12:04', '2022-01-18 10:12:15', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (20, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6c5ae8f13ea66531489e0a8defc6f958.jpg', '泡芙懒人沙发', NULL, '红橡木+布艺_单人', 4290.45, 4990.76, NULL, 1, 16, 1032, NULL, 0, 0, '2022-09-02 14:12:04', '2022-01-18 10:17:21', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (21, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/043ed8b87ded21021eb50f4127ee9916.jpg', '组合框', NULL, '红橡木小框30×30×H30cm', 380.00, 418.00, NULL, 1, 17, 1034, NULL, 0, 0, '2022-09-02 14:12:04', '2022-01-18 17:16:06', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (22, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/600eb9d554a9c9e0322a35580fa01d67.jpg', '宇航员 雕像', NULL, '典藏版', 11990.00, 19990.00, NULL, 1, 18, 1041, NULL, 0, 0, '2022-09-02 14:12:04', '2022-01-18 17:21:38', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (23, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/600eb9d554a9c9e0322a35580fa01d67.jpg', '宇航员 雕像', NULL, '典藏版', 11990.00, 19990.00, NULL, 1, 19, 1041, NULL, 0, 0, '2022-09-02 14:12:04', '2022-01-18 17:25:09', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (24, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/600eb9d554a9c9e0322a35580fa01d67.jpg', '宇航员 雕像', NULL, '典藏版', 11990.00, 19990.00, NULL, 1, 20, 1041, NULL, 0, 2, '2022-09-02 14:12:04', '2022-01-18 17:26:01', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (25, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/600eb9d554a9c9e0322a35580fa01d67.jpg', '宇航员 雕像', NULL, '典藏版', 11990.00, 19990.00, NULL, 1, 21, 1041, NULL, 0, 0, '2022-09-02 14:12:04', '2022-01-19 13:47:57', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (26, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/6c5ae8f13ea66531489e0a8defc6f958.jpg', '泡芙懒人沙发', NULL, '红橡木+布艺_单人', 4290.00, 4990.00, NULL, 1, 21, 1032, NULL, 0, 0, '2022-09-02 14:12:04', '2022-01-19 13:47:57', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (27, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/87f7b2b575a6f4fda3bf2b3998478e3b.jpg', '泡芙懒人沙发', NULL, '红橡木+布艺_三人', 8900.00, 9800.00, NULL, 1, 21, 1032, NULL, 0, 0, '2022-09-02 14:12:04', '2022-01-19 13:47:57', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (28, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/13/600eb9d554a9c9e0322a35580fa01d67.jpg', '宇航员 雕像', NULL, '典藏版', 11990.00, 19990.00, NULL, 1, 22, 1041, 198, 0, 3, '2022-09-02 14:12:04', '2022-01-19 14:51:58', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (29, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/946f478b694828a457b50dc4c55dba9a.jpg', '木马', NULL, '小木马85.7×32.6×H56.1cm', 2180.00, 2900.00, NULL, 1, 22, 1031, 202, 0, 0, '2022-09-02 14:12:04', '2022-01-19 14:51:58', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (30, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/bd00e06342a621151554c9e7b7f5cab2.png', '供客户测试商品', NULL, '测试规格', 0.10, 8888.88, NULL, 1, 23, 1043, 235, 0, 0, '2022-09-02 14:12:04', '2022-01-25 10:22:29', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (31, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/12/043ed8b87ded21021eb50f4127ee9916.jpg', '组合框', NULL, '红橡木小框30×30×H30cm', 380.00, 418.00, NULL, 1, 24, 1034, 144, 0, 0, '2022-09-02 14:12:04', '2022-01-27 21:37:41', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (32, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/bd00e06342a621151554c9e7b7f5cab2.png', '供客户测试商品', NULL, '测试规格', 0.10, 8888.88, NULL, 1, 24, 1043, 235, 0, 0, '2022-09-02 14:12:04', '2022-01-27 21:37:41', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (33, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/bd00e06342a621151554c9e7b7f5cab2.png', '供客户测试商品', NULL, '测试规格', 0.10, 8888.88, NULL, 1, 25, 1043, 235, 0, 0, '2022-09-02 14:12:04', '2022-02-08 15:53:09', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (34, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/bd00e06342a621151554c9e7b7f5cab2.png', '供客户测试商品', NULL, '测试规格', 0.10, 8888.88, NULL, 1, 26, 1043, 235, 0, 0, '2022-09-02 14:12:04', '2022-02-09 08:31:33', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (35, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/bd00e06342a621151554c9e7b7f5cab2.png', '供客户测试商品', NULL, '测试规格', 0.10, 8888.88, NULL, 1, 27, 1043, 235, 0, 0, '2022-09-02 14:12:04', '2022-02-13 10:38:51', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (36, 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/bd00e06342a621151554c9e7b7f5cab2.png', '供客户测试商品', NULL, '测试规格', 0.10, 8888.88, NULL, 1, 28, 1043, 235, 0, 0, '2022-09-02 14:12:04', '2022-08-31 10:44:16', '2022-09-02 14:12:04');
INSERT INTO `wx_shop_order_goods` VALUES (37, 'https://img.mini.chongyeapp.com/2022/09/03/7aa6c1dd7d0422ed1b0d2d4d4c3ec5f1.jpg', '爬宠饲养盒', NULL, '中号黑透饲养盒送食盆', 13.80, 13.80, NULL, 1, 29, 1045, 319, 0, 0, NULL, '2022-09-20 09:46:51', NULL);

-- ----------------------------
-- Table structure for wx_shop_service
-- ----------------------------
DROP TABLE IF EXISTS `wx_shop_service`;
CREATE TABLE `wx_shop_service`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '服务名称',
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '服务介绍',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '	状态(0正常，1管理员隐藏)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '服务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_shop_service
-- ----------------------------
INSERT INTO `wx_shop_service` VALUES (1, '不支持7天无理由退货', '不支持7天无理由退货', 1, 1, NULL, '2022-01-10 09:46:01', '2022-01-10 09:46:01');
INSERT INTO `wx_shop_service` VALUES (2, '7天无理由退货', '7天无理由退货', 0, 1, NULL, '2022-01-10 09:46:21', '2022-01-10 09:46:21');
INSERT INTO `wx_shop_service` VALUES (3, '15天保价', '此商品支持15天保价，下单15天内本平台商品售价发生降价可申请价格保护。', 2, 1, NULL, '2022-01-10 09:48:16', '2022-01-10 09:48:16');
INSERT INTO `wx_shop_service` VALUES (4, '30天保价', '此商品支持30天保价，下单30天内本平台商品售价发生降价可申请价格保护。', 1, 1, NULL, '2022-01-10 09:48:36', '2022-01-10 09:48:36');
INSERT INTO `wx_shop_service` VALUES (5, '第三方商品', '商品由第三方提供，宠也仅作展示使用', 0, 1, NULL, '2022-10-04 00:59:07', '2022-10-04 00:59:07');

-- ----------------------------
-- Table structure for wx_slideshow
-- ----------------------------
DROP TABLE IF EXISTS `wx_slideshow`;
CREATE TABLE `wx_slideshow`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `poster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '轮播图',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `target_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '跳转ID',
  `slideshow_type` tinyint(1) NULL DEFAULT 0 COMMENT '类型(0链接，1帖子，2圈子，3商品)',
  `slideshow_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0启用，1关闭)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '首页轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_slideshow
-- ----------------------------
INSERT INTO `wx_slideshow` VALUES (30, 'https://img.mini.chongyeapp.com/2022/09/09/c91155bf69ad33166f283d9a66a2b370.jpg', 1, '384', 1, 1, NULL, '2022-01-11 10:44:13', '2022-09-19 01:39:20');
INSERT INTO `wx_slideshow` VALUES (32, 'https://img.mini.chongyeapp.com/2022/09/09/e6f3921629b4ddcfc33d755b6f3d0276.jpg', 2, '1044', 3, 1, NULL, '2022-01-12 13:49:36', '2022-09-19 01:38:48');

-- ----------------------------
-- Table structure for wx_sounds
-- ----------------------------
DROP TABLE IF EXISTS `wx_sounds`;
CREATE TABLE `wx_sounds`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '音频名称',
  `time` bigint(20) NOT NULL COMMENT '音频时长',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '音频地址',
  `post_id` bigint(20) NOT NULL COMMENT '帖子id',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_sounds
-- ----------------------------

-- ----------------------------
-- Table structure for wx_sync_relation
-- ----------------------------
DROP TABLE IF EXISTS `wx_sync_relation`;
CREATE TABLE `wx_sync_relation`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '域名',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `inner_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内部id',
  `external_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '外部id',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态(1,2,3)',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`domain`, `type`) USING BTREE,
  INDEX `index_1`(`inner_id`) USING BTREE,
  INDEX `index_2`(`external_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_sync_relation
-- ----------------------------
INSERT INTO `wx_sync_relation` VALUES (1, 'test.chongyeapp.com', 'post', '394', '23529', '1', '2022-10-11 01:42:29', '2022-10-11 01:42:29');
INSERT INTO `wx_sync_relation` VALUES (2, 'test.chongyeapp.com', 'user', '11583', '4062', '1', '2022-10-11 01:42:29', '2022-10-11 01:42:29');
INSERT INTO `wx_sync_relation` VALUES (3, 'test.chongyeapp.com', 'post', '395', '23530', '1', '2022-10-11 01:44:08', '2022-10-11 01:44:08');

-- ----------------------------
-- Table structure for wx_tag_meta_num
-- ----------------------------
DROP TABLE IF EXISTS `wx_tag_meta_num`;
CREATE TABLE `wx_tag_meta_num`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) NOT NULL COMMENT 'tag_id',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_key',
  `meta_value` bigint(20) NOT NULL COMMENT 'meta_value',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`tag_id`, `meta_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_tag_meta_num
-- ----------------------------

-- ----------------------------
-- Table structure for wx_tag_meta_str
-- ----------------------------
DROP TABLE IF EXISTS `wx_tag_meta_str`;
CREATE TABLE `wx_tag_meta_str`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) NOT NULL COMMENT 'tag_id',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_key',
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_value',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`tag_id`, `meta_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_tag_meta_str
-- ----------------------------

-- ----------------------------
-- Table structure for wx_tags
-- ----------------------------
DROP TABLE IF EXISTS `wx_tags`;
CREATE TABLE `wx_tags`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `tags_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名称',
  `tag_introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `head_portrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `background_maps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '移动端背景',
  `pc_background_maps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'pc端背景',
  `sort` int(11) NULL DEFAULT 0,
  `tags_number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用次数',
  `tags_state` tinyint(1) NULL DEFAULT 0 COMMENT '	状态(0正常，1管理员隐藏)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_0`(`tags_name`) USING BTREE,
  INDEX `index_1`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_tags
-- ----------------------------
INSERT INTO `wx_tags` VALUES (2, NULL, 'BUG', NULL, NULL, NULL, NULL, 0, '9', 0, '2022-09-02 06:03:25', '2021-02-24 10:53:11', '2022-09-02 06:03:25');
INSERT INTO `wx_tags` VALUES (3, NULL, 'UI', NULL, NULL, NULL, NULL, 0, '31', 0, '2022-09-02 06:03:25', '2021-02-24 10:57:59', '2022-09-02 06:03:25');
INSERT INTO `wx_tags` VALUES (4, NULL, '猫咪', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:25', '2021-02-25 06:19:33', '2022-09-02 06:03:25');
INSERT INTO `wx_tags` VALUES (5, NULL, '旅行', NULL, NULL, NULL, NULL, 0, '12', 0, '2022-09-02 06:03:18', '2021-02-25 06:21:24', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (6, NULL, '漫画', NULL, NULL, NULL, NULL, 0, '12', 0, '2022-09-02 06:03:18', '2021-02-25 06:21:38', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (7, NULL, 'jk', NULL, NULL, NULL, NULL, 0, '9', 0, '2022-09-02 06:03:18', '2021-02-25 06:21:48', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (8, NULL, '爱情', NULL, NULL, NULL, NULL, 0, '2', 0, '2022-09-02 06:03:18', '2021-04-19 11:28:50', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (9, NULL, '动画', NULL, NULL, NULL, NULL, 0, '7', 0, '2022-09-02 06:03:18', '2021-04-19 11:28:56', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (10, NULL, '动漫', NULL, NULL, NULL, NULL, 0, '2', 0, '2022-09-02 06:03:18', '2021-04-19 11:29:11', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (12, NULL, '宇航员', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:18', '2021-05-03 16:19:44', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (13, NULL, '好好吃饭', NULL, NULL, NULL, NULL, 0, '5', 0, '2022-09-02 06:03:18', '2021-05-03 19:32:53', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (14, NULL, '宇宙信号', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:18', '2021-05-04 10:35:20', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (15, NULL, '矮朵', NULL, NULL, NULL, NULL, 0, '10', 0, '2022-09-02 06:03:18', '2021-05-06 18:06:39', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (16, NULL, '刺客伍六七', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:18', '2021-05-14 11:04:42', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (17, NULL, '？', NULL, NULL, NULL, NULL, 0, '0', 0, '2021-05-30 16:17:13', '2021-05-27 10:15:41', '2021-05-30 16:17:13');
INSERT INTO `wx_tags` VALUES (18, NULL, '，', NULL, NULL, NULL, NULL, 0, '0', 0, '2021-05-30 16:17:09', '2021-05-28 15:24:00', '2021-05-30 16:17:09');
INSERT INTO `wx_tags` VALUES (19, NULL, '插画', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:18', '2021-05-30 19:40:59', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (20, NULL, '资源', NULL, NULL, NULL, NULL, 0, '16', 0, '2022-09-02 06:03:18', '2021-05-30 19:41:12', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (21, NULL, '图库', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:18', '2021-05-31 15:39:20', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (22, NULL, '图标', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:18', '2021-05-31 16:19:21', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (23, NULL, '样机', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:18', '2021-05-31 16:39:12', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (24, NULL, '更新', NULL, NULL, NULL, NULL, 0, '9', 0, '2022-09-02 06:03:18', '2021-06-01 14:04:09', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (25, NULL, '美食', NULL, NULL, NULL, NULL, 0, '2', 0, '2022-09-02 06:03:18', '2021-06-01 15:09:25', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (26, NULL, '背景素材', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:18', '2021-06-04 10:17:23', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (27, NULL, '视频素材', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:18', '2021-06-04 10:27:08', '2022-09-02 06:03:18');
INSERT INTO `wx_tags` VALUES (28, NULL, '字体设计', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:09', '2021-06-04 10:38:56', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (29, NULL, '设计灵感', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:09', '2021-06-04 10:47:30', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (30, NULL, '思维导图', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:09', '2021-06-04 11:03:43', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (31, NULL, 'Logo设计', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:09', '2021-06-04 11:12:30', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (32, NULL, '有一', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:09', '2021-06-07 19:11:36', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (33, NULL, '有没有', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:09', '2021-06-07 19:12:06', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (34, NULL, '狗子', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:09', '2021-06-08 09:27:19', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (35, NULL, '头像', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:09', '2021-06-08 09:27:27', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (36, NULL, '打工人', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:09', '2021-06-11 23:56:02', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (37, NULL, '手机摄影', NULL, NULL, NULL, NULL, 0, '9', 0, '2022-09-02 06:03:09', '2021-06-17 16:53:07', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (38, NULL, '网站模板', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:09', '2021-06-20 14:05:29', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (39, NULL, '奥利给', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:09', '2021-06-21 02:02:17', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (40, NULL, 'PC端', NULL, NULL, NULL, NULL, 0, '9', 0, '2022-09-02 06:03:09', '2021-07-09 15:17:33', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (41, NULL, '在家', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:09', '2021-07-17 16:36:41', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (42, NULL, '测试一下', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:09', '2021-07-27 16:04:11', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (43, NULL, '哈哈', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:09', '2021-08-03 13:51:18', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (44, NULL, '哈哈哈', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:09', '2021-08-03 13:51:31', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (45, NULL, '测试', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:09', '2021-08-10 01:46:48', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (46, NULL, '123', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 05:59:26', '2021-08-10 17:24:52', '2022-09-02 05:59:26');
INSERT INTO `wx_tags` VALUES (47, NULL, '我', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:09', '2021-08-10 17:42:52', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (48, NULL, '我想', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:09', '2021-08-10 17:42:59', '2022-09-02 06:03:09');
INSERT INTO `wx_tags` VALUES (49, NULL, '11', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:02', '2021-08-26 23:46:28', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (50, NULL, 'ta', NULL, NULL, NULL, NULL, 0, '4', 0, '2022-09-02 06:03:02', '2021-09-06 00:55:20', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (51, NULL, '耳机', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:02', '2021-09-08 14:55:17', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (52, NULL, '无线耳机', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:02', '2021-09-08 14:56:22', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (53, NULL, '一样', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:02', '2021-10-19 17:30:00', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (54, NULL, '反复', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:02', '2021-10-19 18:09:42', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (55, NULL, '一', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 05:59:16', '2021-10-26 12:19:02', '2022-09-02 05:59:16');
INSERT INTO `wx_tags` VALUES (56, NULL, '笔记', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:02', '2021-11-05 11:14:33', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (57, NULL, '好好', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:02', '2021-11-08 15:16:35', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (58, NULL, '给', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:02', '2021-11-08 15:22:48', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (59, NULL, '给会', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:02', '2021-11-08 15:22:51', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (60, NULL, '1', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:02', '2021-11-10 10:49:32', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (61, NULL, '方法', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:02', '2021-12-07 10:55:54', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (62, NULL, '明年', NULL, NULL, NULL, NULL, 0, '0', 0, '2022-09-02 06:03:02', '2021-12-25 03:53:01', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (63, NULL, '微习惯打卡', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:02', '2021-12-29 07:38:31', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (64, NULL, '生活', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:02', '2022-01-14 22:22:56', '2022-09-02 06:03:02');
INSERT INTO `wx_tags` VALUES (65, NULL, '奋斗', NULL, NULL, NULL, NULL, 0, '1', 0, '2022-09-02 06:03:01', '2022-01-14 22:29:00', '2022-09-02 06:03:01');
INSERT INTO `wx_tags` VALUES (66, NULL, '熬夜', NULL, NULL, NULL, NULL, 0, '2', 0, '2022-09-02 06:03:01', '2022-01-14 22:29:06', '2022-09-02 06:03:01');
INSERT INTO `wx_tags` VALUES (67, NULL, 'SHOP', NULL, NULL, NULL, NULL, 0, '2', 0, '2022-09-02 06:03:01', '2022-01-22 13:23:25', '2022-09-02 06:03:01');
INSERT INTO `wx_tags` VALUES (68, NULL, '日常', NULL, NULL, NULL, NULL, 0, '4', 0, '2022-09-02 06:03:01', '2022-01-24 00:06:53', '2022-09-02 06:03:01');
INSERT INTO `wx_tags` VALUES (69, NULL, 'APP', NULL, NULL, NULL, NULL, 0, '12', 0, '2022-09-02 06:03:01', '2022-02-07 16:13:36', '2022-09-02 06:03:01');
INSERT INTO `wx_tags` VALUES (70, NULL, '我家主子又沙雕了', NULL, NULL, NULL, NULL, 1, '1', 0, NULL, '2022-09-04 03:04:21', '2022-09-07 12:22:50');
INSERT INTO `wx_tags` VALUES (71, NULL, '生日快乐鸭', NULL, NULL, NULL, NULL, 1, '9', 0, NULL, '2022-09-04 03:04:38', '2022-10-11 01:44:08');
INSERT INTO `wx_tags` VALUES (72, NULL, '喵星人相亲角', NULL, NULL, NULL, NULL, 2, '2', 0, NULL, '2022-09-04 03:05:00', '2022-09-07 12:18:20');
INSERT INTO `wx_tags` VALUES (73, NULL, '守宫日常可爱', NULL, NULL, NULL, NULL, 0, '1', 0, NULL, '2022-09-04 03:18:20', '2022-09-04 03:19:29');
INSERT INTO `wx_tags` VALUES (74, NULL, '啦啦啦啦', NULL, NULL, NULL, NULL, 0, '1', 0, NULL, '2022-10-09 22:29:02', '2022-10-10 01:22:15');

-- ----------------------------
-- Table structure for wx_tasks
-- ----------------------------
DROP TABLE IF EXISTS `wx_tasks`;
CREATE TABLE `wx_tasks`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名字',
  `type` int(11) NOT NULL COMMENT '类型',
  `condition_type_0` int(11) NOT NULL DEFAULT 0 COMMENT '条件类型',
  `condition_type_1` int(11) NOT NULL DEFAULT 0 COMMENT '条件类型',
  `condition_num` bigint(20) NOT NULL COMMENT '条件数量',
  `reward_type` int(11) NOT NULL COMMENT '奖励类型',
  `reward_num` bigint(20) NOT NULL COMMENT '奖励数量',
  `target_type` int(11) NULL DEFAULT NULL COMMENT '跳转类型',
  `target_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '跳转id',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_tasks
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user
-- ----------------------------
DROP TABLE IF EXISTS `wx_user`;
CREATE TABLE `wx_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `user_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '头像',
  `user_background_maps` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '封面背景',
  `user_introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '简介',
  `user_birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '生日',
  `user_mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '电话',
  `weixin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信名称',
  `weixin_openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信openid',
  `weixin_app_openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'app端微信openid',
  `weixin_mp_openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公众号端微信openid',
  `weixin_web_openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '网站端微信openid',
  `weixin_shop_openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信小商店端微信openid',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `weixin_unionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信unionid',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '国家',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '城市',
  `authentication_id` bigint(20) NULL DEFAULT NULL COMMENT '认证信息id',
  `is_authentication` tinyint(1) NOT NULL DEFAULT 0 COMMENT '认证(0否，1是)',
  `is_official` tinyint(1) NOT NULL DEFAULT 0 COMMENT '官方(0否，1是)',
  `is_member` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '是否会员',
  `is_robot` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'is robot',
  `gender` tinyint(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '性别',
  `user_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0正常，1用户注销，2管理员封号)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_1`(`weixin_openid`) USING BTREE,
  UNIQUE INDEX `index_14`(`weixin_shop_openid`) USING BTREE,
  UNIQUE INDEX `index_13`(`weixin_web_openid`) USING BTREE,
  UNIQUE INDEX `index_12`(`weixin_mp_openid`) USING BTREE,
  UNIQUE INDEX `index_11`(`weixin_app_openid`) USING BTREE,
  INDEX `index_0`(`user_name`) USING BTREE,
  INDEX `index_2`(`user_mobile`) USING BTREE,
  INDEX `index_3`(`authentication_id`) USING BTREE,
  INDEX `index_4`(`city`) USING BTREE,
  INDEX `index_5`(`province`) USING BTREE,
  INDEX `index_6`(`is_authentication`) USING BTREE,
  INDEX `index_8`(`is_official`) USING BTREE,
  INDEX `index_9`(`gender`) USING BTREE,
  INDEX `index_15`(`email`) USING BTREE,
  INDEX `index_16`(`phone`) USING BTREE,
  INDEX `index_17`(`is_robot`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11606 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user
-- ----------------------------
INSERT INTO `wx_user` VALUES (10000, '管理员', 'https://img.mini.chongyeapp.com/2022/08/28/7777.jpg', 'https://img.mini.chongyeapp.com/2022/08/28/5555.jpg', '官方账号', '请选择', '', '宇航员', 'oi8yL5I8spoqKzPWcpfIi2o5ymY4', NULL, NULL, NULL, NULL, '', '', '', 'Chad', '', '', NULL, 1, 1, '', 0, 1, 0, NULL, '2021-02-27 03:02:37', '2022-09-03 14:10:42');
INSERT INTO `wx_user` VALUES (10001, '一木一叶造景-老李', 'https://img.mini.chongyeapp.com/2022/09/07/03ad6457f4f211ad142f79ea1ee7ae91.jpg', 'images/111.png', '', '请选择', '', '小白', 'oi8yL5AracUYYdTVUxkcg1DyrBqk', NULL, NULL, NULL, NULL, '', '', '', 'China', 'Guangdong', 'Shenzhen', NULL, 1, 0, '', 0, 1, 0, NULL, '2021-03-01 06:47:15', '2022-09-07 12:20:31');
INSERT INTO `wx_user` VALUES (11580, 'tomlofter', 'https://thirdwx.qlogo.cn/mmopen/vi_32/ILBrJqNk3JGHoF2olF9RiaqibwQLM0fkzALQQh3HG1ow89t1ZeZKxee20TGbDQATJyELdCt3sWicsmgV2DV5WjReA/132', 'https://img.mini.chongyeapp.com/2022/09/09/d8e0c035c48d520b02e429c503b41d31.jpg', '', '', '', 'tomlofter', 'oU6eq4l_gnA6F3_ODG8VPSthSR4w', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, 0, 0, '', 0, 0, 0, NULL, '2022-08-23 23:04:54', '2022-09-09 00:37:25');
INSERT INTO `wx_user` VALUES (11581, '蓝色妖姬', 'https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaELAUFvib66c5hENsUIEDEJtJEm3h5tIcU8jGp17qiaBYO7nszd7YDZ4ZZZIPhD1TTKm0e7YarhnLmrg/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', '蓝色妖姬', 'oU6eq4ilCGPjz3oG28nJT-oz1wRw', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, 0, 0, '', 0, 0, 0, NULL, '2022-08-23 23:36:35', '2022-08-23 23:36:35');
INSERT INTO `wx_user` VALUES (11582, 'wxid_79249wvvh5ft12', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKic1HtFiaAFz8EdY13hEztBHZAaQanxpaib4SUknqtiacpb5r2dbHcOG7DuVMgPtWu44xHnKvd9t1wicg/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', 'wxid_79249wvvh5ft12', 'oU6eq4neczKpdCPej9J2rvFEsVc0', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, 0, 0, '', 0, 0, 0, NULL, '2022-08-24 02:46:12', '2022-08-24 02:46:21');
INSERT INTO `wx_user` VALUES (11583, '邵闻', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI34ZlT6HSOtP2J4WKefQUhV12tic8wQ5apaIc2Jz9JXFU8IMGIBiazjCPfovIyUdUm62LTVY5Va8hw/132', 'https://img.mini.chongyeapp.com/2022/09/09/a4b767ae46dca2658c6e15d58318e883.jpg', '', '', '', '邵闻', 'oU6eq4n_i8uRv3M5GzAB6b1d8N0g', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, 0, 1, '', 0, 0, 0, NULL, '2022-08-31 10:41:35', '2022-09-09 00:38:23');
INSERT INTO `wx_user` VALUES (11584, 'tomlofter', 'https://thirdwx.qlogo.cn/mmopen/vi_32/2DhPwmqicONs9PDcZkpzf5SCF0RI1PFLGYYOqGxzPZrORXfxyngYexLfVpTnbF6zxSycp9XzHnJ8HIhK2YnnXjA/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', 'tomlofter', 'oKIZi5EMGE80AYlmR4rQa477en0Q', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, 0, 1, '', 0, 0, 0, NULL, '2022-08-31 15:41:54', '2022-09-14 12:45:44');
INSERT INTO `wx_user` VALUES (11585, '邵闻', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLaPOfdmIVia9zAgaC2ZaaGD6SvYtMIzicav3MUtHmCA2oYqar0ky2ckicbNJg8ZhUiaoFUaMvUQwGhFw/132', 'https://img.mini.chongyeapp.com/2022/09/09/ef0d63eeee85538d32a07cbace1b8204.jpg', '', '', '', '邵闻', 'oKIZi5O-FIqbnUlAb15LOGhh6Ix0', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, 1, 1, '', 0, 0, 0, NULL, '2022-08-31 19:39:46', '2022-09-15 09:45:35');
INSERT INTO `wx_user` VALUES (11586, 'Shinawatra', 'https://thirdwx.qlogo.cn/mmopen/vi_32/dKSf3NibP60NHQqlmbDJwUEv63Abb33ga8s8wTKI3ykrebfFlQJiaGDuNWop3JLC85ibibgXXdt1ODBXUNJ8RNjFvA/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', 'Shinawatra', 'oKIZi5BI9ps1zqL1qj4UwKLcLVI8', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-03 15:23:23', '2022-09-03 15:23:23');
INSERT INTO `wx_user` VALUES (11588, 'chowsom', 'https://thirdwx.qlogo.cn/mmopen/vi_32/UniaxFelbP11KWIHWJo3Rr0nEd5J5d3ueaLs7ZAt5BibN3iaENwkia4oAGrGSic0Yh67GbBke9TqQwuTicToeh7YtLng/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', 'chowsom', 'oKIZi5Ny7P7TTHAkRWWu_6SoyTlk', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-04 17:46:46', '2022-09-04 17:46:46');
INSERT INTO `wx_user` VALUES (11589, 'Deder🤪', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqgeaicmWXH6CCxtMHg3VyJqDgC7GKxo00UTD09xEI4m42UUG9zC2CnFnE4QmgibcIdkvXEp7eSvFuQ/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', 'Deder🤪', 'oKIZi5Cn2bcOKgSTLNLURbPatJfU', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-04 23:07:02', '2022-09-04 23:07:14');
INSERT INTO `wx_user` VALUES (11590, '香芋', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKXMYJOomfp7aaua94fbHYUARZicyUHY83DY8ItndtTsJszEaicpzUW5kPf5UcCwP0bPpnXWC9BKuYA/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', '香芋', 'oKIZi5CfXLu7n0TGINkZ3LfeuxJ0', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-06 01:42:46', '2022-09-06 01:42:46');
INSERT INTO `wx_user` VALUES (11591, '杨懿', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLa6vzvRvAvAZUkP5QkchjDtVlVmLiaMGezCdEZfv2WKlkNMYibG4bmibs1JjLBq08FYCH80iaDkqhATA/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', '杨懿', 'oKIZi5PxLVAOzHUTIIhLEDmwxkm8', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, 1, 0, '', 0, 0, 0, NULL, '2022-09-06 11:07:01', '2022-09-15 09:45:28');
INSERT INTO `wx_user` VALUES (11592, '神经蛙', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM7bdUpibTTYyPw2JLDuT1ZGtwl12ibFtQzyWQbzJroiczLEibyKtUNcSGUhXlyatF6iaZIFauOiaDib4EAzA/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', '神经蛙', 'oKIZi5JkrsmyI_SS9kCDEcuN3ab0', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-07 12:47:25', '2022-09-07 12:47:47');
INSERT INTO `wx_user` VALUES (11593, 'Dear.Mr.Lee', 'https://thirdwx.qlogo.cn/mmopen/vi_32/aobxveuuNpZzFxPAWIhMMVHEEMZO8d5ANzSmoQVLiatnEqzsnnEJILk4G4caxMic67gV1cK0GyQ2otNwUOy455PQ/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', 'Dear.Mr.Lee', 'oKIZi5JCJjSTVMGF3cqDbIT_wcqs', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 1, 0, '', 0, 0, 0, NULL, '2022-09-07 12:55:45', '2022-09-15 09:45:25');
INSERT INTO `wx_user` VALUES (11594, 'C号', 'https://thirdwx.qlogo.cn/mmopen/vi_32/r7dgIkU0tZkiaEEBbEmDUwBIfcKVX75pLCkArhad8DMiaj8Ta3cdfXT7UBo3Q3xc5lUBj3E79iatdV7AyxwiczyWnA/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', 'C号', 'oKIZi5EPZODoJrWoGhc905M7sXRk', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-07 12:59:18', '2022-09-07 12:59:18');
INSERT INTO `wx_user` VALUES (11595, 'M面超人', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erTojm5dqgWVwocViaGdjSQEOYfh3GOg9VAjEjOeETgiaaagSibPlOicZZtxhl2k94aXaVriaoSAgOpKHg/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', 'M面超人', 'oKIZi5Kzlr2tUjIKZHIowVUuE59s', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 1, 0, '', 0, 0, 0, NULL, '2022-09-08 21:58:02', '2022-09-15 09:45:31');
INSERT INTO `wx_user` VALUES (11596, 'momobra', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM5yrvgDVaS9WiacfKIpRoofx7ibJbBKVrgIEyO2JKrhNyE51Dq023s6S83QOKpI8Ric6WdICf9AQOyWA/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', 'momobra', 'oKIZi5JAbMmga7O4QUNguWCbsXXA', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-08 21:58:08', '2022-09-08 21:58:51');
INSERT INTO `wx_user` VALUES (11597, 'x', 'https://thirdwx.qlogo.cn/mmopen/vi_32/L2TaHUdFhSGJVWWctR1KVZOxIC1LgdKcZqbH1rEgoSoYafeu6l40r9Z9tW6lrBF0U3BczPMicYOpK4YzbSCoG7A/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2022/01/20/a6b32e906e65b119f68107ac59900791.jpg', '', '', '', 'x', 'oKIZi5CeWmKiTpOUzYCggdaYOVvE', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-08 23:18:49', '2022-09-08 23:19:03');
INSERT INTO `wx_user` VALUES (11598, '魏剑帆', 'https://thirdwx.qlogo.cn/mmopen/vi_32/CEWufvUZXsWPdhKS2co68tF3Q3HPdicA4ficrr2oYaP0vhtsXZ5EyakblCuAsUJygWwalANQXFsCfcXezA4ogicYQ/132', 'https://img.mini.chongyeapp.com/2022/09/09/e62c3e7492c7fd283b115cf95f6f3789.jpg', '', '', '', '魏剑帆', 'oKIZi5MaGy-73koMEsE7HmS0u2wU', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-09 02:34:36', '2022-09-09 02:34:36');
INSERT INTO `wx_user` VALUES (11599, '明祥', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM4B3P676wS2amBicEFPSo1icuBdwAJzTicBmYWouJCXk8oib7qzJZ9zTOqG8dicMwhbXGnLeic8kxEibR7xg/132', 'https://img.mini.chongyeapp.com/2022/09/09/e62c3e7492c7fd283b115cf95f6f3789.jpg', '', '', '', '明祥', 'oKIZi5G_R4ZHT3C5x253_78dv8OI', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-11 16:08:37', '2022-09-11 16:08:37');
INSERT INTO `wx_user` VALUES (11600, '🐳', 'https://thirdwx.qlogo.cn/mmopen/vi_32/A4Dgzwibc1aUG3iaQcH9zNX87A8EHibn9Mfx8BUjn4JmibqMQtINsc7JnOJNfnBfkDQtxmXkyP5fb37q5FBd4ibZcKQ/132', 'https://img.mini.chongyeapp.com/2022/09/09/e62c3e7492c7fd283b115cf95f6f3789.jpg', '', '', '', '🐳', 'oKIZi5KScJr8sWlPwUroj9Z0IroE', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-13 09:47:48', '2022-09-13 09:47:55');
INSERT INTO `wx_user` VALUES (11601, 'Michael Eason', 'https://thirdwx.qlogo.cn/mmopen/vi_32/jmhKH5KsyLFdWNrKDn0OJJY3THgXnw9uHiaGSRDSI60JTwj1xicXHHNb7HSMRc1JjsadFdjwrLPY8JKWrobaYrbg/132', 'https://img.mini.chongyeapp.com/icons/back.jpg', '', '', '', 'Michael Eason', 'oKIZi5M5Zywxlle4SA64UYfnYj7g', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-17 09:06:54', '2022-09-17 09:06:54');
INSERT INTO `wx_user` VALUES (11602, '夕阳团', 'https://thirdwx.qlogo.cn/mmopen/vi_32/0X5S90fPILRowhgmm3ZLYWxxGKjXzibeRFHPARl9gtLaW6Ake2X7flABJpicczZUBh8varmprI2Zc78RZeYYiadFA/132', 'https://img.mini.chongyeapp.com/icons/back.jpg', '', '', '', '夕阳团', 'oKIZi5AWURjUq6rNX-H5rSflKI8s', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-19 12:08:15', '2022-09-20 09:41:49');
INSERT INTO `wx_user` VALUES (11603, '低调', 'https://thirdwx.qlogo.cn/mmopen/vi_32/dKSf3NibP60NHQqlmbDJwUBbhrtvJ1ocia8JrBaXgYkjbjLm04hZ4pADTtLiahwSK1196JFMPzvArEs7HudJiajQxw/132', 'https://img.mini.chongyeapp.com/icons/back.jpg', '', '', '', '低调', 'oKIZi5OTClBYTqs_hq0GCJSZt6fM', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-19 18:07:52', '2022-09-19 18:07:52');
INSERT INTO `wx_user` VALUES (11604, '超_越梦想', 'https://thirdwx.qlogo.cn/mmopen/vi_32/dKSf3NibP60NHQqlmbDJwUFibFIEGx80XCCGrcpHKMW5XQFQ5pp60x1Lq7bOWZla9HsRj4c9w2sGEN3GnN5PYccw/132', 'https://img.mini.chongyeapp.com/icons/back.jpg', '', '', '', '超_越梦想', 'oKIZi5M0oAu-u-ZjEiflklyo6mBA', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, NULL, '2022-09-20 01:51:58', '2022-09-20 01:51:58');

-- ----------------------------
-- Table structure for wx_user_circle
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_circle`;
CREATE TABLE `wx_user_circle`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `circle_id` bigint(20) NOT NULL COMMENT '圈子ID',
  `is_read` tinyint(1) NOT NULL DEFAULT 0 COMMENT '读(0未读，1已读)',
  `user_circle_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0正常，1用户取消关注)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`circle_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 173 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户关注圈子表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_circle
-- ----------------------------
INSERT INTO `wx_user_circle` VALUES (172, 11586, 3, 0, 0, NULL, '2022-09-03 15:24:21', '2022-09-03 15:24:21');

-- ----------------------------
-- Table structure for wx_user_coin_record
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_coin_record`;
CREATE TABLE `wx_user_coin_record`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `incre` bigint(20) NOT NULL COMMENT '增量',
  `tip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '说明',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_coin_record
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user_financial
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_financial`;
CREATE TABLE `wx_user_financial`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `balance` decimal(10, 2) UNSIGNED NOT NULL COMMENT '用户余额',
  `sum_price` decimal(10, 2) UNSIGNED NOT NULL COMMENT '用户总收益',
  `withdrawal_price` decimal(10, 2) UNSIGNED NULL COMMENT '用户已提现金额',
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '支行名称',
  `bank_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '银行卡号',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户金融表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_financial
-- ----------------------------
INSERT INTO `wx_user_financial` VALUES (1, 10000, 14.38, 14.38, 0.00, '深圳工商银行', '88888888888888888', NULL, '2021-05-27 16:59:55', '2021-11-01 19:18:47');

-- ----------------------------
-- Table structure for wx_user_financial_record
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_financial_record`;
CREATE TABLE `wx_user_financial_record`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `num` bigint(20) NOT NULL COMMENT '增量',
  `type` int(11) NOT NULL COMMENT '类型',
  `object` bigint(20) NULL DEFAULT NULL COMMENT '对象',
  `tip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '说明',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_financial_record
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user_follow
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_follow`;
CREATE TABLE `wx_user_follow`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `user_follow_id` bigint(20) NOT NULL COMMENT '用户关注用户ID',
  `is_read` tinyint(1) NOT NULL DEFAULT 0 COMMENT '读(0未读，1已读)',
  `user_follow_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0正常，1用户取消关注)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`user_follow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 492 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户关注表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_follow
-- ----------------------------
INSERT INTO `wx_user_follow` VALUES (474, 11580, 10000, 0, 0, NULL, '2022-08-27 07:10:11', '2022-08-27 07:10:11');
INSERT INTO `wx_user_follow` VALUES (475, 11585, 10001, 0, 0, NULL, '2022-09-08 20:36:09', '2022-09-08 20:36:09');
INSERT INTO `wx_user_follow` VALUES (476, 11598, 11584, 0, 0, NULL, '2022-09-09 02:34:41', '2022-09-09 02:34:41');
INSERT INTO `wx_user_follow` VALUES (477, 11598, 11584, 0, 0, NULL, '2022-09-09 02:34:41', '2022-09-09 02:34:41');
INSERT INTO `wx_user_follow` VALUES (480, 11599, 11584, 0, 0, NULL, '2022-09-11 16:15:05', '2022-09-11 16:15:05');
INSERT INTO `wx_user_follow` VALUES (483, 11585, 11584, 0, 0, NULL, '2022-09-14 11:41:59', '2022-09-14 11:41:59');
INSERT INTO `wx_user_follow` VALUES (487, 11603, 11592, 0, 0, NULL, '2022-09-19 18:07:57', '2022-09-19 18:07:57');
INSERT INTO `wx_user_follow` VALUES (488, 11603, 10001, 0, 0, NULL, '2022-09-19 18:07:57', '2022-09-19 18:07:57');
INSERT INTO `wx_user_follow` VALUES (489, 11603, 11584, 0, 0, NULL, '2022-09-19 18:07:57', '2022-09-19 18:07:57');
INSERT INTO `wx_user_follow` VALUES (490, 11604, 11600, 0, 0, NULL, '2022-09-20 01:52:03', '2022-09-20 01:52:03');
INSERT INTO `wx_user_follow` VALUES (491, 11604, 11581, 0, 0, NULL, '2022-09-20 01:52:03', '2022-09-20 01:52:03');

-- ----------------------------
-- Table structure for wx_user_luck_draw_record
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_luck_draw_record`;
CREATE TABLE `wx_user_luck_draw_record`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `pay` int(11) NOT NULL COMMENT '付费方式',
  `type` int(11) NOT NULL COMMENT '奖品类型',
  `num` bigint(20) NOT NULL COMMENT '奖品数量',
  `tip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '说明',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_luck_draw_record
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user_meta_num
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_meta_num`;
CREATE TABLE `wx_user_meta_num`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT 'user_id',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_key',
  `meta_value` bigint(20) NOT NULL COMMENT 'meta_value',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`, `meta_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_meta_num
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user_meta_str
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_meta_str`;
CREATE TABLE `wx_user_meta_str`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT 'user_id',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_key',
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meta_value',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`, `meta_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_meta_str
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user_online
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_online`;
CREATE TABLE `wx_user_online`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `online` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '在线时间',
  `device` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '客户端',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user_pay
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_pay`;
CREATE TABLE `wx_user_pay`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `post_id` bigint(20) NOT NULL COMMENT '帖子id',
  `pay_content_id` bigint(20) NOT NULL COMMENT 'pay_content_id',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_3`(`user_id`, `post_id`, `pay_content_id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`post_id`) USING BTREE,
  INDEX `index_2`(`pay_content_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_pay
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user_plate
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_plate`;
CREATE TABLE `wx_user_plate`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `plate_id` bigint(20) NOT NULL COMMENT '板块id',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE,
  INDEX `index_1`(`plate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 551 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户板块关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_plate
-- ----------------------------
INSERT INTO `wx_user_plate` VALUES (534, 11586, 10, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (535, 11586, 5, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (536, 11586, 3, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (537, 11586, 7, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (538, 11586, 6, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (539, 11586, 2, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (540, 11586, 9, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (541, 11586, 4, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (542, 11586, 8, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (543, 11586, 1, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (544, 11586, 22, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (545, 11586, 21, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (546, 11586, 23, 0, NULL, '2022-09-03 15:24:35', '2022-09-03 15:24:35');
INSERT INTO `wx_user_plate` VALUES (547, 11585, 1, 0, NULL, '2022-09-10 09:36:29', '2022-09-10 09:36:29');
INSERT INTO `wx_user_plate` VALUES (548, 11585, 6, 0, NULL, '2022-09-10 09:36:30', '2022-09-10 09:36:30');
INSERT INTO `wx_user_plate` VALUES (549, 11585, 7, 0, NULL, '2022-09-10 09:36:32', '2022-09-10 09:36:32');
INSERT INTO `wx_user_plate` VALUES (550, 11585, 21, 0, NULL, '2022-09-10 09:36:33', '2022-09-10 09:36:33');

-- ----------------------------
-- Table structure for wx_user_report
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_report`;
CREATE TABLE `wx_user_report`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `object_id` bigint(20) NOT NULL COMMENT '对象id',
  `report_type` tinyint(4) NOT NULL COMMENT '举报类型',
  `report_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '举报理由',
  `report_imgs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '举报图片',
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系方式',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`type`, `object_id`, `user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_report
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user_sign_record
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_sign_record`;
CREATE TABLE `wx_user_sign_record`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_sign_record
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user_task
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_task`;
CREATE TABLE `wx_user_task`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `task_id` bigint(20) NOT NULL COMMENT '任务id',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_task
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user_temp
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_temp`;
CREATE TABLE `wx_user_temp`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `user_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '头像',
  `user_background_maps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '封面背景',
  `user_introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `user_birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '生日',
  `user_mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `user_state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0审核中，1:审核通过，2驳回)',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10037 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户临时表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_temp
-- ----------------------------
INSERT INTO `wx_user_temp` VALUES (10006, 10000, '李梓晨', 'https://thirdwx.qlogo.cn/mmopen/vi_32/N5u8OWT5HUMpFicvYO8yE5gfnMzbllv8ica7gqiaT1OYFVdz6NTz0mcIRsmKs06sOkl0spcKl7o0tdb5fYYmXpdibA/132', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/29/c25b4e264f3d265397cf3f525998f549.jpg', '', '请选择', '', 0, '2021-04-29 16:54:22', '2021-04-29 16:51:48', '2021-04-29 16:54:22');
INSERT INTO `wx_user_temp` VALUES (10015, 10001, '🤡✌(̿▀̿ ̿Ĺ̯̿̿▀̿ ̿)✌', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/27/2c259a69c74fbc1ea468a5d25589c0ee.jpg', 'https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/2021/04/23/a507ad9bec8e05716b46c901bb424c08.jpg', '', '请选择', '', 1, NULL, '2021-05-04 17:01:32', '2021-05-04 17:01:56');
INSERT INTO `wx_user_temp` VALUES (10036, 11585, '邵闻', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLaPOfdmIVia9zAgaC2ZaaGD6SvYtMIzicav3MUtHmCA2oYqar0ky2ckicbNJg8ZhUiaoFUaMvUQwGhFw/132', 'https://img.mini.chongyeapp.com/2022/09/09/ef0d63eeee85538d32a07cbace1b8204.jpg', '测试测试', '请选择', '', 0, NULL, '2022-09-09 02:36:29', '2022-09-09 02:36:29');

-- ----------------------------
-- Table structure for wx_user_visit
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_visit`;
CREATE TABLE `wx_user_visit`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型（1:帖子 2:圈子 3:商品 4:用户 5:标签）',
  `object_id` bigint(20) NOT NULL COMMENT '目标id',
  `times` bigint(20) NOT NULL COMMENT '次数',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`, `type`, `object_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_visit
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user_vote
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_vote`;
CREATE TABLE `wx_user_vote`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `vote_id` bigint(20) NOT NULL COMMENT '投票id',
  `vote_option` tinyint(4) NOT NULL COMMENT '投票选项',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`, `vote_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_vote
-- ----------------------------

-- ----------------------------
-- Table structure for wx_user_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_withdrawal`;
CREATE TABLE `wx_user_withdrawal`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `price` decimal(10, 2) UNSIGNED NOT NULL COMMENT '提现金额',
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支行名字',
  `bank_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '银行卡号',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0受理中，1已处理，2异常)',
  `refuse_tip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '异常原因',
  `account_at` timestamp(0) NULL DEFAULT NULL COMMENT '到账时间',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户提现表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user_withdrawal
-- ----------------------------

-- ----------------------------
-- Table structure for wx_wallpapers
-- ----------------------------
DROP TABLE IF EXISTS `wx_wallpapers`;
CREATE TABLE `wx_wallpapers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) NOT NULL COMMENT '主题id',
  `imgs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `user_id` bigint(20) NOT NULL COMMENT '作者id',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_wallpapers
-- ----------------------------

-- ----------------------------
-- Table structure for wx_wallpapers_subject
-- ----------------------------
DROP TABLE IF EXISTS `wx_wallpapers_subject`;
CREATE TABLE `wx_wallpapers_subject`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_wallpapers_subject
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
