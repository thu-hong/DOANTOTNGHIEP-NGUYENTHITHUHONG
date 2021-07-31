/*
 Navicat Premium Data Transfer

 Source Server         : dev_pharma-etrust
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : dev_myshop

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 16/05/2021 23:08:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activations
-- ----------------------------
DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `activations_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activations
-- ----------------------------
INSERT INTO `activations` VALUES (1, 1, 'BU2NT4TmUIOhdJNuwazkAan3WwuZaQ1V', 1, '2021-02-17 08:32:27', '2021-02-17 08:32:27', '2021-02-17 08:32:27');

-- ----------------------------
-- Table structure for audit_histories
-- ----------------------------
DROP TABLE IF EXISTS `audit_histories`;
CREATE TABLE `audit_histories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `audit_histories_user_id_index`(`user_id`) USING BTREE,
  INDEX `audit_histories_module_index`(`module`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of audit_histories
-- ----------------------------
INSERT INTO `audit_histories` VALUES (1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-05-13 14:15:24', '2021-05-13 14:15:24');
INSERT INTO `audit_histories` VALUES (2, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-05-15 17:10:52', '2021-05-15 17:10:52');
INSERT INTO `audit_histories` VALUES (3, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-05-16 02:58:01', '2021-05-16 02:58:01');
INSERT INTO `audit_histories` VALUES (4, 1, 'page', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"name\":\"Trang ch\\u1ee7\",\"slug\":\"trang-chu\",\"slug_id\":\"0\",\"model\":\"Platform\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>test<\\/p>\",\"is_featured\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"home-page\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 10, 'Trang chủ', 'info', '2021-05-16 04:59:41', '2021-05-16 04:59:41');
INSERT INTO `audit_histories` VALUES (5, 1, 'custom-field', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"title\":\"slides\",\"rules\":\"[[{\\\"name\\\":\\\"page_template\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"home-page\\\"}]]\",\"group_items\":\"[{\\\"id\\\":0,\\\"title\\\":\\\"banner\\\",\\\"slug\\\":\\\"banner\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":0,\\\"title\\\":\\\"slide Ch\\u1eef\\\",\\\"slug\\\":\\\"slide_text\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":0,\\\"title\\\":\\\"d\\u00f2ng tr\\u00ean\\\",\\\"slug\\\":\\\"text_top\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":0,\\\"title\\\":\\\"d\\u00f2ng d\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"text_bottom\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]},{\\\"id\\\":0,\\\"title\\\":\\\"slide ch\\u1eef d\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"slide_text_bottom\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":0,\\\"title\\\":\\\"d\\u00f2ng tr\\u00ean\\\",\\\"slug\\\":\\\"text_top\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":0,\\\"title\\\":\\\"D\\u00f2ng D\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"text_bottom\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]},{\\\"id\\\":0,\\\"title\\\":\\\"n\\u00fat\\\",\\\"slug\\\":\\\"button\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":\\\"Th\\u00eam n\\u00fat\\\",\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":0,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 Nh\\u1ea5t\\\",\\\"slug\\\":\\\"button_1\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":0,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 2\\\",\\\"slug\\\":\\\"button_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]}]\",\"deleted_items\":\"[null]\",\"submit\":\"save\",\"status\":\"published\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 1, 'slides', 'info', '2021-05-16 06:26:16', '2021-05-16 06:26:16');
INSERT INTO `audit_histories` VALUES (6, 1, 'page', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"name\":\"Trang ch\\u1ee7\",\"slug\":\"trang-chu\",\"slug_id\":\"82\",\"model\":\"Platform\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>test<\\/p>\",\"is_featured\":\"0\",\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"slides\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"banner\\\",\\\"slug\\\":\\\"banner\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"sliders\\/slide1.jpg\\\"},{\\\"id\\\":2,\\\"title\\\":\\\"slide Ch\\u1eef\\\",\\\"slug\\\":\\\"slide_text\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":3,\\\"title\\\":\\\"d\\u00f2ng tr\\u00ean\\\",\\\"slug\\\":\\\"text_top\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null},{\\\"id\\\":4,\\\"title\\\":\\\"d\\u00f2ng d\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"text_bottom\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null}],\\\"value\\\":[[{\\\"id\\\":3,\\\"title\\\":\\\"d\\u00f2ng tr\\u00ean\\\",\\\"slug\\\":\\\"text_top\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"Ch\\u00fang t\\u00f4i tin r\\u1eb1ng Trang \\u0111i\\u1ec3m l\\u00e0 s\\u1ee9c m\\u1ea1nh Kh\\u00f4ng bao gi\\u1edd l\\u00e0m m\\u1ea5t \\u0111i \\u00e1nh s\\u00e1ng c\\u1ee7a b\\u1ea1n\\\"},{\\\"id\\\":4,\\\"title\\\":\\\"d\\u00f2ng d\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"text_bottom\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"G\\u00ec \\u0110\\u00f3 Ghi ti\\u1ebfp\\\"}]]},{\\\"id\\\":5,\\\"title\\\":\\\"slide ch\\u1eef d\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"slide_text_bottom\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":6,\\\"title\\\":\\\"d\\u00f2ng tr\\u00ean\\\",\\\"slug\\\":\\\"text_top\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null},{\\\"id\\\":7,\\\"title\\\":\\\"D\\u00f2ng D\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"text_bottom\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null}],\\\"value\\\":[]},{\\\"id\\\":8,\\\"title\\\":\\\"n\\u00fat\\\",\\\"slug\\\":\\\"button\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":\\\"Th\\u00eam n\\u00fat\\\",\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":9,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 Nh\\u1ea5t\\\",\\\"slug\\\":\\\"button_1\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null},{\\\"id\\\":10,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 2\\\",\\\"slug\\\":\\\"button_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null}],\\\"value\\\":[[{\\\"id\\\":9,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 Nh\\u1ea5t\\\",\\\"slug\\\":\\\"button_1\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"C\\u1eeda H\\u00e0ng\\\"},{\\\"id\\\":10,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 2\\\",\\\"slug\\\":\\\"button_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"Chi Ti\\u1ebft\\\"}]]}]}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"home-page\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 10, 'Trang chủ', 'primary', '2021-05-16 06:30:09', '2021-05-16 06:30:09');
INSERT INTO `audit_histories` VALUES (7, 1, 'custom-field', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"title\":\"slides\",\"rules\":\"[[{\\\"name\\\":\\\"page_template\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"home-page\\\"}]]\",\"group_items\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"banner\\\",\\\"slug\\\":\\\"banner\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":2,\\\"title\\\":\\\"slide Ch\\u1eef\\\",\\\"slug\\\":\\\"slide_text\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":3,\\\"title\\\":\\\"d\\u00f2ng tr\\u00ean\\\",\\\"slug\\\":\\\"text_top\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":4,\\\"title\\\":\\\"d\\u00f2ng d\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"text_bottom\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]},{\\\"id\\\":8,\\\"title\\\":\\\"n\\u00fat\\\",\\\"slug\\\":\\\"button\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":\\\"Th\\u00eam n\\u00fat\\\",\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":9,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 Nh\\u1ea5t\\\",\\\"slug\\\":\\\"button_1\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":10,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 2\\\",\\\"slug\\\":\\\"button_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]}]\",\"deleted_items\":\"[5]\",\"submit\":\"apply\",\"status\":\"published\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 1, 'slides', 'primary', '2021-05-16 06:58:04', '2021-05-16 06:58:04');
INSERT INTO `audit_histories` VALUES (8, 1, 'custom-field', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"title\":\"slides\",\"rules\":\"[[{\\\"name\\\":\\\"page_template\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"home-page\\\"}]]\",\"group_items\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"banner\\\",\\\"slug\\\":\\\"banner\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":2,\\\"title\\\":\\\"slide Ch\\u1eef\\\",\\\"slug\\\":\\\"slide_text\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":3,\\\"title\\\":\\\"d\\u00f2ng tr\\u00ean\\\",\\\"slug\\\":\\\"text_top\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":4,\\\"title\\\":\\\"d\\u00f2ng d\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"text_bottom\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]},{\\\"id\\\":8,\\\"title\\\":\\\"n\\u00fat\\\",\\\"slug\\\":\\\"button\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":\\\"Th\\u00eam n\\u00fat\\\",\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":9,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 Nh\\u1ea5t\\\",\\\"slug\\\":\\\"button_1\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":10,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 2\\\",\\\"slug\\\":\\\"button_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]},{\\\"id\\\":0,\\\"title\\\":\\\"banner_2\\\",\\\"slug\\\":\\\"banner_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":0,\\\"title\\\":\\\"Slide Ch\\u1eef 2\\\",\\\"slug\\\":\\\"slide_text_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":0,\\\"title\\\":\\\"D\\u00f2ng tr\\u00ean\\\",\\\"slug\\\":\\\"text_top_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":0,\\\"title\\\":\\\"d\\u00f2ng d\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"text_bottom_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]},{\\\"id\\\":0,\\\"title\\\":\\\"N\\u00fat 2\\\",\\\"slug\\\":\\\"button_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":0,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 Nh\\u1ea5t\\\",\\\"slug\\\":\\\"button_one\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":0,\\\"title\\\":\\\"N\\u00fat th\\u1ee9 2\\\",\\\"slug\\\":\\\"button_two\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]}]\",\"deleted_items\":null,\"submit\":\"save\",\"status\":\"published\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 1, 'slides', 'primary', '2021-05-16 07:12:18', '2021-05-16 07:12:18');
INSERT INTO `audit_histories` VALUES (9, 1, 'page', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"name\":\"Trang ch\\u1ee7\",\"slug\":\"trang-chu\",\"slug_id\":\"82\",\"model\":\"Platform\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>test<\\/p>\",\"is_featured\":\"0\",\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"slides\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"banner\\\",\\\"slug\\\":\\\"banner\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"sliders\\/slide1.jpg\\\",\\\"thumb\\\":\\\"https:\\/\\/shopdemo.local\\/storage\\/sliders\\/slide1-150x150.jpg\\\"},{\\\"id\\\":2,\\\"title\\\":\\\"slide Ch\\u1eef\\\",\\\"slug\\\":\\\"slide_text\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":3,\\\"title\\\":\\\"d\\u00f2ng tr\\u00ean\\\",\\\"slug\\\":\\\"text_top\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null},{\\\"id\\\":4,\\\"title\\\":\\\"d\\u00f2ng d\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"text_bottom\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null}],\\\"value\\\":[[{\\\"id\\\":3,\\\"title\\\":\\\"d\\u00f2ng tr\\u00ean\\\",\\\"slug\\\":\\\"text_top\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"Ch\\u00fang t\\u00f4i tin r\\u1eb1ng Trang \\u0111i\\u1ec3m l\\u00e0 s\\u1ee9c m\\u1ea1nh Kh\\u00f4ng bao gi\\u1edd l\\u00e0m m\\u1ea5t \\u0111i \\u00e1nh s\\u00e1ng c\\u1ee7a b\\u1ea1n\\\"},{\\\"id\\\":4,\\\"title\\\":\\\"d\\u00f2ng d\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"text_bottom\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"G\\u00ec \\u0110\\u00f3 Ghi ti\\u1ebfp\\\"}]]},{\\\"id\\\":8,\\\"title\\\":\\\"n\\u00fat\\\",\\\"slug\\\":\\\"button\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":\\\"Th\\u00eam n\\u00fat\\\",\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":9,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 Nh\\u1ea5t\\\",\\\"slug\\\":\\\"button_1\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null},{\\\"id\\\":10,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 2\\\",\\\"slug\\\":\\\"button_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null}],\\\"value\\\":[[{\\\"id\\\":9,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 Nh\\u1ea5t\\\",\\\"slug\\\":\\\"button_1\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"C\\u1eeda H\\u00e0ng\\\"},{\\\"id\\\":10,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 2\\\",\\\"slug\\\":\\\"button_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"Chi Ti\\u1ebft\\\"}]]},{\\\"id\\\":11,\\\"title\\\":\\\"banner_2\\\",\\\"slug\\\":\\\"banner_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"sliders\\/slide1.jpg\\\"},{\\\"id\\\":12,\\\"title\\\":\\\"Slide Ch\\u1eef 2\\\",\\\"slug\\\":\\\"slide_text_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":13,\\\"title\\\":\\\"D\\u00f2ng tr\\u00ean\\\",\\\"slug\\\":\\\"text_top_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null},{\\\"id\\\":14,\\\"title\\\":\\\"d\\u00f2ng d\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"text_bottom_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null}],\\\"value\\\":[[{\\\"id\\\":13,\\\"title\\\":\\\"D\\u00f2ng tr\\u00ean\\\",\\\"slug\\\":\\\"text_top_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"Ngh\\u0129 Ghi Ti\\u1ebfp N\\u00e8\\\"},{\\\"id\\\":14,\\\"title\\\":\\\"d\\u00f2ng d\\u01b0\\u1edbi\\\",\\\"slug\\\":\\\"text_bottom_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"Kh\\u00f4ng bi\\u1ebft n\\u00ean vi\\u1ebft g\\u00ec h\\u1ebft tr\\u01a1n :v :v\\\"}]]},{\\\"id\\\":15,\\\"title\\\":\\\"N\\u00fat 2\\\",\\\"slug\\\":\\\"button_2\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"repeater\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[{\\\"id\\\":16,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 Nh\\u1ea5t\\\",\\\"slug\\\":\\\"button_one\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null},{\\\"id\\\":17,\\\"title\\\":\\\"N\\u00fat th\\u1ee9 2\\\",\\\"slug\\\":\\\"button_two\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":null}],\\\"value\\\":[[{\\\"id\\\":16,\\\"title\\\":\\\"N\\u00fat Th\\u1ee9 Nh\\u1ea5t\\\",\\\"slug\\\":\\\"button_one\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"C\\u1eeda H\\u00e0ng\\\"},{\\\"id\\\":17,\\\"title\\\":\\\"N\\u00fat th\\u1ee9 2\\\",\\\"slug\\\":\\\"button_two\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"Chi Ti\\u1ebft\\\"}]]}]}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"home-page\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 10, 'Trang chủ', 'primary', '2021-05-16 07:18:13', '2021-05-16 07:18:13');
INSERT INTO `audit_histories` VALUES (10, 1, 'product-category', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"name\":\"Television\",\"slug\":\"television\",\"slug_id\":\"8\",\"model\":\"Platform\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"image\":\"brands\\/4-1.png\",\"is_featured\":\"1\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 1, 'Television', 'primary', '2021-05-16 08:44:25', '2021-05-16 08:44:25');
INSERT INTO `audit_histories` VALUES (11, 1, 'product', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"name\":\"Samsung Smart Phone\",\"slug\":\"samsung-smart-phone\",\"slug_id\":\"51\",\"model\":\"Platform\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p>\\r\\n\\r\\n<p>- Casual unisex fit<\\/p>\\r\\n\\r\\n<p>- 64% polyester, 36% polyurethane<\\/p>\\r\\n\\r\\n<p>- Water column pressure: 4000 mm<\\/p>\\r\\n\\r\\n<p>- Model is 187cm tall and wearing a size S \\/ M<\\/p>\\r\\n\\r\\n<p>- Unisex fit<\\/p>\\r\\n\\r\\n<p>- Drawstring hood with built-in cap<\\/p>\\r\\n\\r\\n<p>- Front placket with snap buttons<\\/p>\\r\\n\\r\\n<p>- Ventilation under armpit<\\/p>\\r\\n\\r\\n<p>- Adjustable cuffs<\\/p>\\r\\n\\r\\n<p>- Double welted front pockets<\\/p>\\r\\n\\r\\n<p>- Adjustable elastic string at hempen<\\/p>\\r\\n\\r\\n<p>- Ultrasonically welded seams<\\/p>\\r\\n\\r\\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"variation_default_id\":\"23\",\"attribute_sets\":[\"2\",\"1\",\"6\"],\"sale_type\":\"0\",\"sku\":null,\"price\":\"55\",\"sale_price\":\"49.5\",\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"19\",\"allow_checkout_when_out_of_stock\":\"0\",\"weight\":\"772\",\"length\":\"16\",\"wide\":\"14\",\"height\":\"17\",\"images\":[null,null],\"related_products\":null,\"cross_sale_products\":\"1,6,7,2\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"1\",\"13\",\"14\"],\"brand_id\":\"6\",\"product_collections\":[\"1\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Mobile\\\"},{\\\"value\\\":\\\"Iphone\\\"},{\\\"value\\\":\\\"Office\\\"}]\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 9, 'Samsung Smart Phone', 'primary', '2021-05-16 09:00:14', '2021-05-16 09:00:14');
INSERT INTO `audit_histories` VALUES (12, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 30, 'Smart Televisions', 'danger', '2021-05-16 09:00:31', '2021-05-16 09:00:31');
INSERT INTO `audit_histories` VALUES (13, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 30, 'Smart Televisions', 'danger', '2021-05-16 09:00:31', '2021-05-16 09:00:31');
INSERT INTO `audit_histories` VALUES (14, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 31, 'Smart Televisions', 'danger', '2021-05-16 09:00:35', '2021-05-16 09:00:35');
INSERT INTO `audit_histories` VALUES (15, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 31, 'Smart Televisions', 'danger', '2021-05-16 09:00:35', '2021-05-16 09:00:35');
INSERT INTO `audit_histories` VALUES (16, 1, 'product', '{\"attribute_sets\":{\"2\":\"7\",\"1\":\"1\"},\"sale_type\":\"0\",\"sku\":\"SW-171-A0\",\"price\":\"123\",\"sale_price\":\"86.1\",\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"10\",\"allow_checkout_when_out_of_stock\":\"0\",\"weight\":\"734\",\"length\":\"20\",\"wide\":\"18\",\"height\":\"14\",\"images\":[null,\"brands\\/4-1.png\"]}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 29, 'Smart Televisions', 'primary', '2021-05-16 09:00:52', '2021-05-16 09:00:52');
INSERT INTO `audit_histories` VALUES (17, 1, 'product', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"name\":\"Smart Televisions\",\"slug\":\"smart-televisions\",\"slug_id\":\"50\",\"model\":\"Platform\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p>\\r\\n\\r\\n<p>- Casual unisex fit<\\/p>\\r\\n\\r\\n<p>- 64% polyester, 36% polyurethane<\\/p>\\r\\n\\r\\n<p>- Water column pressure: 4000 mm<\\/p>\\r\\n\\r\\n<p>- Model is 187cm tall and wearing a size S \\/ M<\\/p>\\r\\n\\r\\n<p>- Unisex fit<\\/p>\\r\\n\\r\\n<p>- Drawstring hood with built-in cap<\\/p>\\r\\n\\r\\n<p>- Front placket with snap buttons<\\/p>\\r\\n\\r\\n<p>- Ventilation under armpit<\\/p>\\r\\n\\r\\n<p>- Adjustable cuffs<\\/p>\\r\\n\\r\\n<p>- Double welted front pockets<\\/p>\\r\\n\\r\\n<p>- Adjustable elastic string at hempen<\\/p>\\r\\n\\r\\n<p>- Ultrasonically welded seams<\\/p>\\r\\n\\r\\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"variation_default_id\":\"20\",\"attribute_sets\":[\"2\",\"1\",\"6\"],\"sale_type\":\"0\",\"sku\":null,\"price\":\"123\",\"sale_price\":\"86.1\",\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"10\",\"allow_checkout_when_out_of_stock\":\"0\",\"weight\":\"734\",\"length\":\"20\",\"wide\":\"18\",\"height\":\"14\",\"images\":[null,null],\"related_products\":null,\"cross_sale_products\":\"4,9,3,5\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"1\",\"7\",\"9\"],\"brand_id\":\"4\",\"product_collections\":[\"1\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Electronic\\\"},{\\\"value\\\":\\\"Printer\\\"},{\\\"value\\\":\\\"IT\\\"}]\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 8, 'Smart Televisions', 'primary', '2021-05-16 09:00:58', '2021-05-16 09:00:58');
INSERT INTO `audit_histories` VALUES (18, 1, 'page', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"name\":\"V\\u1ec1 Ch\\u00fang T\\u00f4i\",\"slug\":\"ve-chung-toi\",\"slug_id\":\"0\",\"model\":\"Platform\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>test<\\/p>\",\"is_featured\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 11, 'Về Chúng Tôi', 'info', '2021-05-16 09:14:18', '2021-05-16 09:14:18');
INSERT INTO `audit_histories` VALUES (19, 1, 'page', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"name\":\"Li\\u00ean H\\u1ec7\",\"slug\":null,\"slug_id\":\"0\",\"model\":\"Platform\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>test<\\/p>\",\"is_featured\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 12, 'Liên Hệ', 'info', '2021-05-16 09:14:52', '2021-05-16 09:14:52');
INSERT INTO `audit_histories` VALUES (20, 1, 'category', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"name\":\"Tin T\\u1ee9c\",\"slug\":\"tin-tuc\",\"slug_id\":\"0\",\"model\":\"Platform\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":null,\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 5, 'Tin Tức', 'info', '2021-05-16 09:19:07', '2021-05-16 09:19:07');
INSERT INTO `audit_histories` VALUES (21, 1, 'category', '{\"_token\":\"szJQBoVw0H31vdm8PpvwcFXRCqIFDnszuSv9KnZE\",\"name\":\"S\\u1ea3n Ph\\u1ea9m\",\"slug\":\"san-pham\",\"slug_id\":\"0\",\"model\":\"Platform\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":null,\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 1, 6, 'Sản Phẩm', 'info', '2021-05-16 09:19:59', '2021-05-16 09:19:59');
INSERT INTO `audit_histories` VALUES (22, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-05-16 15:10:13', '2021-05-16 15:10:13');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Platform\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Ecommerce', 0, NULL, 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `categories` VALUES (2, 'Fashion', 0, NULL, 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `categories` VALUES (3, 'Electronic', 0, NULL, 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `categories` VALUES (4, 'Commercial', 0, NULL, 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `categories` VALUES (5, 'Tin Tức', 0, NULL, 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-05-16 09:19:07', '2021-05-16 09:19:07');
INSERT INTO `categories` VALUES (6, 'Sản Phẩm', 0, NULL, 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-05-16 09:19:59', '2021-05-16 09:19:59');

-- ----------------------------
-- Table structure for contact_replies
-- ----------------------------
DROP TABLE IF EXISTS `contact_replies`;
CREATE TABLE `contact_replies`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for custom_fields
-- ----------------------------
DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE `custom_fields`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `use_for` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` int(10) UNSIGNED NOT NULL,
  `field_item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of custom_fields
-- ----------------------------
INSERT INTO `custom_fields` VALUES (1, 'Platform\\Page\\Models\\Page', 10, 1, 'image', 'banner', 'sliders/slide1.jpg');
INSERT INTO `custom_fields` VALUES (2, 'Platform\\Page\\Models\\Page', 10, 2, 'repeater', 'slide_text', '[[{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"text_top\",\"value\":\"Ch\\u00fang t\\u00f4i tin r\\u1eb1ng Trang \\u0111i\\u1ec3m l\\u00e0 s\\u1ee9c m\\u1ea1nh Kh\\u00f4ng bao gi\\u1edd l\\u00e0m m\\u1ea5t \\u0111i \\u00e1nh s\\u00e1ng c\\u1ee7a b\\u1ea1n\"},{\"field_item_id\":4,\"type\":\"text\",\"slug\":\"text_bottom\",\"value\":\"G\\u00ec \\u0110\\u00f3 Ghi ti\\u1ebfp\"}]]');
INSERT INTO `custom_fields` VALUES (3, 'Platform\\Page\\Models\\Page', 10, 5, 'repeater', 'slide_text_bottom', '[]');
INSERT INTO `custom_fields` VALUES (4, 'Platform\\Page\\Models\\Page', 10, 8, 'repeater', 'button', '[[{\"field_item_id\":9,\"type\":\"text\",\"slug\":\"button_1\",\"value\":\"C\\u1eeda H\\u00e0ng\"},{\"field_item_id\":10,\"type\":\"text\",\"slug\":\"button_2\",\"value\":\"Chi Ti\\u1ebft\"}]]');
INSERT INTO `custom_fields` VALUES (5, 'Platform\\Page\\Models\\Page', 10, 11, 'image', 'banner_2', 'sliders/slide1.jpg');
INSERT INTO `custom_fields` VALUES (6, 'Platform\\Page\\Models\\Page', 10, 12, 'repeater', 'slide_text_2', '[[{\"field_item_id\":13,\"type\":\"text\",\"slug\":\"text_top_2\",\"value\":\"Ngh\\u0129 Ghi Ti\\u1ebfp N\\u00e8\"},{\"field_item_id\":14,\"type\":\"text\",\"slug\":\"text_bottom_2\",\"value\":\"Kh\\u00f4ng bi\\u1ebft n\\u00ean vi\\u1ebft g\\u00ec h\\u1ebft tr\\u01a1n :v :v\"}]]');
INSERT INTO `custom_fields` VALUES (7, 'Platform\\Page\\Models\\Page', 10, 15, 'repeater', 'button_2', '[[{\"field_item_id\":16,\"type\":\"text\",\"slug\":\"button_one\",\"value\":\"C\\u1eeda H\\u00e0ng\"},{\"field_item_id\":17,\"type\":\"text\",\"slug\":\"button_two\",\"value\":\"Chi Ti\\u1ebft\"}]]');

-- ----------------------------
-- Table structure for dashboard_widget_settings
-- ----------------------------
DROP TABLE IF EXISTS `dashboard_widget_settings`;
CREATE TABLE `dashboard_widget_settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dashboard_widget_settings_user_id_index`(`user_id`) USING BTREE,
  INDEX `dashboard_widget_settings_widget_id_index`(`widget_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dashboard_widgets
-- ----------------------------
DROP TABLE IF EXISTS `dashboard_widgets`;
CREATE TABLE `dashboard_widgets`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dashboard_widgets
-- ----------------------------
INSERT INTO `dashboard_widgets` VALUES (1, 'widget_total_themes', '2021-05-13 14:15:25', '2021-05-13 14:15:25');
INSERT INTO `dashboard_widgets` VALUES (2, 'widget_total_users', '2021-05-13 14:15:25', '2021-05-13 14:15:25');
INSERT INTO `dashboard_widgets` VALUES (3, 'widget_total_pages', '2021-05-13 14:15:25', '2021-05-13 14:15:25');
INSERT INTO `dashboard_widgets` VALUES (4, 'widget_total_plugins', '2021-05-13 14:15:25', '2021-05-13 14:15:25');
INSERT INTO `dashboard_widgets` VALUES (5, 'widget_analytics_general', '2021-05-13 14:15:25', '2021-05-13 14:15:25');
INSERT INTO `dashboard_widgets` VALUES (6, 'widget_analytics_page', '2021-05-13 14:15:25', '2021-05-13 14:15:25');
INSERT INTO `dashboard_widgets` VALUES (7, 'widget_analytics_browser', '2021-05-13 14:15:25', '2021-05-13 14:15:25');
INSERT INTO `dashboard_widgets` VALUES (8, 'widget_posts_recent', '2021-05-13 14:15:25', '2021-05-13 14:15:25');
INSERT INTO `dashboard_widgets` VALUES (9, 'widget_analytics_referrer', '2021-05-13 14:15:25', '2021-05-13 14:15:25');
INSERT INTO `dashboard_widgets` VALUES (10, 'widget_audit_logs', '2021-05-13 14:15:25', '2021-05-13 14:15:25');
INSERT INTO `dashboard_widgets` VALUES (11, 'widget_ecommerce_report_general', '2021-05-13 14:15:25', '2021-05-13 14:15:25');

-- ----------------------------
-- Table structure for ec_brands
-- ----------------------------
DROP TABLE IF EXISTS `ec_brands`;
CREATE TABLE `ec_brands`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_brands
-- ----------------------------
INSERT INTO `ec_brands` VALUES (1, 'Fashion live', NULL, NULL, 'brands/1.png', 'published', 0, 1, '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `ec_brands` VALUES (2, 'Hand crafted', NULL, NULL, 'brands/2.png', 'published', 1, 1, '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `ec_brands` VALUES (3, 'Mestonix', NULL, NULL, 'brands/3.png', 'published', 2, 1, '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `ec_brands` VALUES (4, 'Sunshine', NULL, NULL, 'brands/4.png', 'published', 3, 1, '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `ec_brands` VALUES (5, 'Pure', NULL, NULL, 'brands/5.png', 'published', 4, 1, '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `ec_brands` VALUES (6, 'Anfold', NULL, NULL, 'brands/6.png', 'published', 5, 1, '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `ec_brands` VALUES (7, 'Automotive', NULL, NULL, 'brands/7.png', 'published', 6, 1, '2021-02-17 08:32:11', '2021-02-17 08:32:11');

-- ----------------------------
-- Table structure for ec_cart
-- ----------------------------
DROP TABLE IF EXISTS `ec_cart`;
CREATE TABLE `ec_cart`  (
  `identifier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`, `instance`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_currencies
-- ----------------------------
DROP TABLE IF EXISTS `ec_currencies`;
CREATE TABLE `ec_currencies`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_currencies
-- ----------------------------
INSERT INTO `ec_currencies` VALUES (1, 'USD', '$', 1, 2, 0, 1, 1, '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `ec_currencies` VALUES (2, 'EUR', '€', 0, 2, 1, 0, 1.18, '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `ec_currencies` VALUES (3, 'VND', '₫', 0, 0, 2, 0, 23203, '2021-02-17 08:32:11', '2021-02-17 08:32:11');

-- ----------------------------
-- Table structure for ec_customer_addresses
-- ----------------------------
DROP TABLE IF EXISTS `ec_customer_addresses`;
CREATE TABLE `ec_customer_addresses`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_customer_addresses
-- ----------------------------
INSERT INTO `ec_customer_addresses` VALUES (1, 'John Smith', 'john.smith@laravel-cms.gistensal.com', '+1942326329296', 'RW', 'Vermont', 'West Madyson', '17226 Becker Views', 1, 1, '2021-02-17 08:32:19', '2021-02-17 08:32:19', '00063');
INSERT INTO `ec_customer_addresses` VALUES (2, 'John Smith', 'john.smith@laravel-cms.gistensal.com', '+9556668911853', 'MK', 'Iowa', 'Braxtonfort', '68682 Block Motorway', 1, 0, '2021-02-17 08:32:19', '2021-02-17 08:32:19', '32413-2202');
INSERT INTO `ec_customer_addresses` VALUES (3, 'Jordane Kozey I', 'clifton63@example.org', '+8394545652343', 'US', 'Florida', 'South Julia', '64046 Renner Cliffs', 2, 1, '2021-02-17 08:32:20', '2021-02-17 08:32:20', '87024');
INSERT INTO `ec_customer_addresses` VALUES (4, 'Mr. Juwan Leannon', 'nader.chance@example.org', '+1564047176117', 'FM', 'Georgia', 'East Breannaville', '8212 Vesta Ports Apt. 033', 3, 1, '2021-02-17 08:32:20', '2021-02-17 08:32:20', '21301');
INSERT INTO `ec_customer_addresses` VALUES (5, 'Meagan Sanford', 'nsatterfield@example.com', '+4790217869905', 'IM', 'Wyoming', 'Hudsonton', '4318 Remington Cliff Apt. 522', 4, 1, '2021-02-17 08:32:20', '2021-02-17 08:32:20', '14081');
INSERT INTO `ec_customer_addresses` VALUES (6, 'Candido Willms', 'schimmel.elinor@example.org', '+2329758328527', 'MF', 'Alaska', 'Runteview', '22497 Benny Villages', 5, 1, '2021-02-17 08:32:20', '2021-02-17 08:32:20', '40869');
INSERT INTO `ec_customer_addresses` VALUES (7, 'Mrs. Ursula Nienow', 'tyrell55@example.com', '+1929713331265', 'ER', 'Connecticut', 'North Jakobfurt', '6523 Wunsch Oval Apt. 408', 6, 1, '2021-02-17 08:32:21', '2021-02-17 08:32:21', '13742-9761');
INSERT INTO `ec_customer_addresses` VALUES (8, 'Ellis Bartell', 'zweimann@example.net', '+5025002955010', 'ML', 'Massachusetts', 'Port Adahfurt', '65648 Amber Manor', 7, 1, '2021-02-17 08:32:21', '2021-02-17 08:32:21', '65521');
INSERT INTO `ec_customer_addresses` VALUES (9, 'Hermina Waters', 'amelie70@example.net', '+3673793329468', 'SX', 'Pennsylvania', 'Isadoreborough', '4137 Connelly Grove', 8, 1, '2021-02-17 08:32:21', '2021-02-17 08:32:21', '06868');
INSERT INTO `ec_customer_addresses` VALUES (10, 'Candice Schuster', 'alda.streich@example.com', '+5517245643493', 'BQ', 'Pennsylvania', 'Wileyhaven', '10040 Rowena Village Apt. 127', 9, 1, '2021-02-17 08:32:22', '2021-02-17 08:32:22', '81785');
INSERT INTO `ec_customer_addresses` VALUES (11, 'Bonnie Zulauf', 'prosacco.paige@example.net', '+9227579296654', 'MX', 'Nevada', 'New Gideonton', '6583 Emely Ford Apt. 155', 10, 1, '2021-02-17 08:32:22', '2021-02-17 08:32:22', '01065-5551');
INSERT INTO `ec_customer_addresses` VALUES (12, 'Miss Claudia Volkman III', 'carley.johns@example.com', '+7521482230639', 'PA', 'Tennessee', 'Lylamouth', '2942 Hodkiewicz Causeway', 11, 1, '2021-02-17 08:32:22', '2021-02-17 08:32:22', '98992-2821');

-- ----------------------------
-- Table structure for ec_customer_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `ec_customer_password_resets`;
CREATE TABLE `ec_customer_password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `ec_customer_password_resets_email_index`(`email`) USING BTREE,
  INDEX `ec_customer_password_resets_token_index`(`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_customers
-- ----------------------------
DROP TABLE IF EXISTS `ec_customers`;
CREATE TABLE `ec_customers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ec_customers_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_customers
-- ----------------------------
INSERT INTO `ec_customers` VALUES (1, 'John Smith', 'john.smith@laravel-cms.gistensal.com', '$2y$10$Qg4AhikqoAux2E7J/MKqtOVt/O5/F/BwlFvL5G2DOXt.0MpkVCLG6', 'customers/1.jpg', NULL, '+5095513638478', NULL, '2021-02-17 08:32:19', '2021-02-17 08:32:19');
INSERT INTO `ec_customers` VALUES (2, 'Jordane Kozey I', 'clifton63@example.org', '$2y$10$QkuQMhOqwj3UqNW.84WwKuOzGBxM4fqmF.IOD16KgO9PGQqMvbPg2', 'customers/1.jpg', NULL, '+9291716483877', NULL, '2021-02-17 08:32:20', '2021-02-17 08:32:20');
INSERT INTO `ec_customers` VALUES (3, 'Mr. Juwan Leannon', 'nader.chance@example.org', '$2y$10$Th7ApE5yDVCUqwsq1TKjwurl8VZXnB9s3L9glTqubXQROynkj9VZi', 'customers/2.jpg', NULL, '+2956518032914', NULL, '2021-02-17 08:32:20', '2021-02-17 08:32:20');
INSERT INTO `ec_customers` VALUES (4, 'Meagan Sanford', 'nsatterfield@example.com', '$2y$10$oWAS3KRMU.HwBLMI6qMS1e4P3Dg1TMP2EXQTyPese12wzTkIuye1S', 'customers/3.jpg', NULL, '+8466274768331', NULL, '2021-02-17 08:32:20', '2021-02-17 08:32:20');
INSERT INTO `ec_customers` VALUES (5, 'Candido Willms', 'schimmel.elinor@example.org', '$2y$10$GoAwlJFReFKx5w3L1A43AuHihqZr3aaQbRJzjfy2d.NChVrRyDgam', 'customers/4.jpg', NULL, '+2773740179342', NULL, '2021-02-17 08:32:20', '2021-02-17 08:32:20');
INSERT INTO `ec_customers` VALUES (6, 'Mrs. Ursula Nienow', 'tyrell55@example.com', '$2y$10$XROtSECw5VFqoydgup8sP.CuBJQjNfHju.Z0XhoMPAF4lwii70c9a', 'customers/5.jpg', NULL, '+6156036721070', NULL, '2021-02-17 08:32:21', '2021-02-17 08:32:21');
INSERT INTO `ec_customers` VALUES (7, 'Ellis Bartell', 'zweimann@example.net', '$2y$10$oGpMD1.sihFdtPEBX1.x3ueC/BidOzKBwJLtlj7KZAKdHC/ZrkUM6', 'customers/6.jpg', NULL, '+4469987082787', NULL, '2021-02-17 08:32:21', '2021-02-17 08:32:21');
INSERT INTO `ec_customers` VALUES (8, 'Hermina Waters', 'amelie70@example.net', '$2y$10$ESUMhWDMmrBu5IX3xcV0j.o7Qu7pEfQocKpWlhaJNz186t9GJO.VK', 'customers/7.jpg', NULL, '+1912855054622', NULL, '2021-02-17 08:32:21', '2021-02-17 08:32:21');
INSERT INTO `ec_customers` VALUES (9, 'Candice Schuster', 'alda.streich@example.com', '$2y$10$zZuuBjeBNdw9Lev9btgoOuh2p8yMPKYGdF3dHhVhMWTXst6kQgJVG', 'customers/8.jpg', NULL, '+3172932242417', NULL, '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_customers` VALUES (10, 'Bonnie Zulauf', 'prosacco.paige@example.net', '$2y$10$ODPi8h3QS85TgmtYAHNldesizaE6h2zjBcFcCE/6YGVzeVk2WS3wG', 'customers/9.jpg', NULL, '+3918158739770', NULL, '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_customers` VALUES (11, 'Miss Claudia Volkman III', 'carley.johns@example.com', '$2y$10$gEOYLLid3MWETjIQHEUKfeeUzq3dVow0yMKC8YAZe1qlPOkivRMDW', 'customers/10.jpg', NULL, '+4677946066772', NULL, '2021-02-17 08:32:22', '2021-02-17 08:32:22');

-- ----------------------------
-- Table structure for ec_discount_customers
-- ----------------------------
DROP TABLE IF EXISTS `ec_discount_customers`;
CREATE TABLE `ec_discount_customers`  (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`discount_id`, `customer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_discount_product_collections
-- ----------------------------
DROP TABLE IF EXISTS `ec_discount_product_collections`;
CREATE TABLE `ec_discount_product_collections`  (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`discount_id`, `product_collection_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_discount_products
-- ----------------------------
DROP TABLE IF EXISTS `ec_discount_products`;
CREATE TABLE `ec_discount_products`  (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`discount_id`, `product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_discounts
-- ----------------------------
DROP TABLE IF EXISTS `ec_discounts`;
CREATE TABLE `ec_discounts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `start_date` datetime(0) NULL DEFAULT NULL,
  `end_date` datetime(0) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` double NULL DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED NULL DEFAULT NULL,
  `type_option` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15, 2) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ec_discounts_code_unique`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_flash_sale_products
-- ----------------------------
DROP TABLE IF EXISTS `ec_flash_sale_products`;
CREATE TABLE `ec_flash_sale_products`  (
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED NULL DEFAULT NULL,
  `quantity` int(10) UNSIGNED NULL DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_flash_sale_products
-- ----------------------------
INSERT INTO `ec_flash_sale_products` VALUES (1, 1, 37.7496, 10, 1);
INSERT INTO `ec_flash_sale_products` VALUES (1, 2, 28.1556, 10, 5);
INSERT INTO `ec_flash_sale_products` VALUES (1, 3, 5.84, 10, 3);
INSERT INTO `ec_flash_sale_products` VALUES (1, 4, 18.3222, 18, 5);
INSERT INTO `ec_flash_sale_products` VALUES (1, 5, 41.184, 19, 1);
INSERT INTO `ec_flash_sale_products` VALUES (1, 6, 28.0016, 19, 5);
INSERT INTO `ec_flash_sale_products` VALUES (1, 7, 17.7408, 20, 5);
INSERT INTO `ec_flash_sale_products` VALUES (1, 8, 28.413, 7, 1);
INSERT INTO `ec_flash_sale_products` VALUES (1, 9, 33.66, 11, 3);
INSERT INTO `ec_flash_sale_products` VALUES (1, 10, 33.97464, 20, 4);

-- ----------------------------
-- Table structure for ec_flash_sales
-- ----------------------------
DROP TABLE IF EXISTS `ec_flash_sales`;
CREATE TABLE `ec_flash_sales`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime(0) NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_flash_sales
-- ----------------------------
INSERT INTO `ec_flash_sales` VALUES (1, 'Winter Sale', '2021-03-19 00:00:00', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');

-- ----------------------------
-- Table structure for ec_grouped_products
-- ----------------------------
DROP TABLE IF EXISTS `ec_grouped_products`;
CREATE TABLE `ec_grouped_products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_product_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_order_addresses
-- ----------------------------
DROP TABLE IF EXISTS `ec_order_addresses`;
CREATE TABLE `ec_order_addresses`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_order_histories
-- ----------------------------
DROP TABLE IF EXISTS `ec_order_histories`;
CREATE TABLE `ec_order_histories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `extras` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_order_product
-- ----------------------------
DROP TABLE IF EXISTS `ec_order_product`;
CREATE TABLE `ec_order_product`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15, 2) NOT NULL,
  `tax_amount` decimal(15, 2) NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `product_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8, 2) NULL DEFAULT 0,
  `restock_quantity` int(10) UNSIGNED NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_orders
-- ----------------------------
DROP TABLE IF EXISTS `ec_orders`;
CREATE TABLE `ec_orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_option` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `shipping_method` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15, 2) NOT NULL,
  `currency_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `tax_amount` decimal(8, 2) NULL DEFAULT NULL,
  `shipping_amount` decimal(8, 2) NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `coupon_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discount_amount` decimal(15, 2) NULL DEFAULT NULL,
  `sub_total` decimal(15, 2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_finished` tinyint(1) NULL DEFAULT 1,
  `token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_product_attribute_sets
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_attribute_sets`;
CREATE TABLE `ec_product_attribute_sets`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `display_layout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_attribute_sets
-- ----------------------------
INSERT INTO `ec_product_attribute_sets` VALUES (1, 'Color', 'color', 'visual', 1, 1, 1, 'published', 0, '2021-02-17 08:32:18', '2021-02-17 08:32:18');
INSERT INTO `ec_product_attribute_sets` VALUES (2, 'Size', 'size', 'text', 1, 1, 1, 'published', 0, '2021-02-17 08:32:18', '2021-02-17 08:32:18');

-- ----------------------------
-- Table structure for ec_product_attributes
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_attributes`;
CREATE TABLE `ec_product_attributes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_attributes
-- ----------------------------
INSERT INTO `ec_product_attributes` VALUES (1, 1, 'Green', 'green', '#5FB7D4', NULL, 1, 1, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18');
INSERT INTO `ec_product_attributes` VALUES (2, 1, 'Blue', 'blue', '#333333', NULL, 0, 2, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18');
INSERT INTO `ec_product_attributes` VALUES (3, 1, 'Red', 'red', '#DA323F', NULL, 0, 3, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18');
INSERT INTO `ec_product_attributes` VALUES (4, 1, 'Black', 'back', '#2F366C', NULL, 0, 4, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18');
INSERT INTO `ec_product_attributes` VALUES (5, 1, 'Brown', 'brown', '#87554B', NULL, 0, 5, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18');
INSERT INTO `ec_product_attributes` VALUES (6, 2, 'S', 's', NULL, NULL, 1, 1, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18');
INSERT INTO `ec_product_attributes` VALUES (7, 2, 'M', 'm', NULL, NULL, 1, 2, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18');
INSERT INTO `ec_product_attributes` VALUES (8, 2, 'L', 'l', NULL, NULL, 1, 3, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18');
INSERT INTO `ec_product_attributes` VALUES (9, 2, 'XL', 'xl', NULL, NULL, 1, 4, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18');
INSERT INTO `ec_product_attributes` VALUES (10, 2, 'XXL', 'xxl', NULL, NULL, 1, 5, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18');

-- ----------------------------
-- Table structure for ec_product_categories
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_categories`;
CREATE TABLE `ec_product_categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_categories
-- ----------------------------
INSERT INTO `ec_product_categories` VALUES (1, 'Television', 0, NULL, 'published', 0, 'brands/4-1.png', 1, '2021-02-17 08:32:13', '2021-05-16 08:44:24');
INSERT INTO `ec_product_categories` VALUES (2, 'Mobile', 0, NULL, 'published', 1, 'product-categories/p-2.png', 1, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (3, 'Headphone', 0, NULL, 'published', 2, 'product-categories/p-3.png', 1, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (4, 'Watches', 0, NULL, 'published', 3, 'product-categories/p-4.png', 1, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (5, 'Game', 0, NULL, 'published', 4, 'product-categories/p-5.png', 1, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (6, 'Camera', 0, NULL, 'published', 5, 'product-categories/p-6.png', 1, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (7, 'Audio', 0, NULL, 'published', 6, 'product-categories/p-7.png', 1, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (8, 'Mobile & Tablet', 0, NULL, 'published', 7, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (9, 'Accessories', 0, NULL, 'published', 8, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (10, 'Home Audio & Theater', 0, NULL, 'published', 9, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (11, 'Tv & Smart Box', 0, NULL, 'published', 10, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (12, 'Printer', 0, NULL, 'published', 11, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (13, 'Computer', 0, NULL, 'published', 12, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (14, 'Fax Machine', 0, NULL, 'published', 13, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (15, 'Mouse', 0, NULL, 'published', 14, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (16, 'Sed soluta et odio.', 1, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (17, 'Est omnis voluptas ut.', 1, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (18, 'Autem nam quo est.', 1, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (19, 'Est et qui ea ut optio.', 1, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (20, 'Cum voluptas et sit.', 1, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (21, 'Quaerat ab omnis totam.', 2, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (22, 'At similique iusto nemo.', 2, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (23, 'Expedita autem ab illum.', 2, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (24, 'Illo rem eum odit.', 2, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (25, 'Et nemo natus quas.', 2, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (26, 'Veritatis cumque in aut.', 3, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (27, 'Quia hic quia magni.', 3, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (28, 'Non amet eos eligendi.', 3, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (29, 'Quis id nobis quis.', 3, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (30, 'Cum quibusdam et nemo.', 3, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (31, 'Odit aliquid culpa sint.', 4, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (32, 'Ea officiis et sed.', 4, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (33, 'Nihil et ea non.', 4, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (34, 'Ad amet est aliquam.', 4, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `ec_product_categories` VALUES (35, 'Ut ut animi velit quia.', 4, NULL, 'published', 0, NULL, 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13');

-- ----------------------------
-- Table structure for ec_product_category_product
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_category_product`;
CREATE TABLE `ec_product_category_product`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ec_product_category_product_category_id_index`(`category_id`) USING BTREE,
  INDEX `ec_product_category_product_product_id_index`(`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_category_product
-- ----------------------------
INSERT INTO `ec_product_category_product` VALUES (1, 10, 1);
INSERT INTO `ec_product_category_product` VALUES (2, 11, 1);
INSERT INTO `ec_product_category_product` VALUES (3, 4, 2);
INSERT INTO `ec_product_category_product` VALUES (4, 6, 2);
INSERT INTO `ec_product_category_product` VALUES (5, 7, 3);
INSERT INTO `ec_product_category_product` VALUES (6, 11, 3);
INSERT INTO `ec_product_category_product` VALUES (7, 5, 3);
INSERT INTO `ec_product_category_product` VALUES (8, 9, 4);
INSERT INTO `ec_product_category_product` VALUES (9, 6, 4);
INSERT INTO `ec_product_category_product` VALUES (10, 8, 5);
INSERT INTO `ec_product_category_product` VALUES (11, 6, 5);
INSERT INTO `ec_product_category_product` VALUES (12, 1, 5);
INSERT INTO `ec_product_category_product` VALUES (13, 4, 6);
INSERT INTO `ec_product_category_product` VALUES (14, 6, 6);
INSERT INTO `ec_product_category_product` VALUES (15, 9, 6);
INSERT INTO `ec_product_category_product` VALUES (16, 6, 7);
INSERT INTO `ec_product_category_product` VALUES (17, 10, 7);
INSERT INTO `ec_product_category_product` VALUES (18, 7, 8);
INSERT INTO `ec_product_category_product` VALUES (19, 9, 8);
INSERT INTO `ec_product_category_product` VALUES (20, 1, 8);
INSERT INTO `ec_product_category_product` VALUES (21, 13, 9);
INSERT INTO `ec_product_category_product` VALUES (22, 1, 9);
INSERT INTO `ec_product_category_product` VALUES (23, 14, 9);

-- ----------------------------
-- Table structure for ec_product_collection_products
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_collection_products`;
CREATE TABLE `ec_product_collection_products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_collection_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ec_product_collection_products_product_collection_id_index`(`product_collection_id`) USING BTREE,
  INDEX `ec_product_collection_products_product_id_index`(`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_collection_products
-- ----------------------------
INSERT INTO `ec_product_collection_products` VALUES (1, 1, 1);
INSERT INTO `ec_product_collection_products` VALUES (2, 3, 2);
INSERT INTO `ec_product_collection_products` VALUES (3, 1, 3);
INSERT INTO `ec_product_collection_products` VALUES (4, 2, 4);
INSERT INTO `ec_product_collection_products` VALUES (5, 3, 5);
INSERT INTO `ec_product_collection_products` VALUES (6, 1, 6);
INSERT INTO `ec_product_collection_products` VALUES (7, 2, 7);
INSERT INTO `ec_product_collection_products` VALUES (10, 1, 9);
INSERT INTO `ec_product_collection_products` VALUES (11, 1, 8);

-- ----------------------------
-- Table structure for ec_product_collections
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_collections`;
CREATE TABLE `ec_product_collections`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_collections
-- ----------------------------
INSERT INTO `ec_product_collections` VALUES (1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18', 0);
INSERT INTO `ec_product_collections` VALUES (2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18', 0);
INSERT INTO `ec_product_collections` VALUES (3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2021-02-17 08:32:18', '2021-02-17 08:32:18', 0);

-- ----------------------------
-- Table structure for ec_product_cross_sale_relations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
CREATE TABLE `ec_product_cross_sale_relations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ec_product_cross_sale_relations_from_product_id_index`(`from_product_id`) USING BTREE,
  INDEX `ec_product_cross_sale_relations_to_product_id_index`(`to_product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_cross_sale_relations
-- ----------------------------
INSERT INTO `ec_product_cross_sale_relations` VALUES (1, 1, 9);
INSERT INTO `ec_product_cross_sale_relations` VALUES (2, 1, 8);
INSERT INTO `ec_product_cross_sale_relations` VALUES (3, 1, 3);
INSERT INTO `ec_product_cross_sale_relations` VALUES (4, 2, 7);
INSERT INTO `ec_product_cross_sale_relations` VALUES (5, 2, 1);
INSERT INTO `ec_product_cross_sale_relations` VALUES (6, 2, 9);
INSERT INTO `ec_product_cross_sale_relations` VALUES (7, 3, 8);
INSERT INTO `ec_product_cross_sale_relations` VALUES (8, 3, 1);
INSERT INTO `ec_product_cross_sale_relations` VALUES (9, 3, 7);
INSERT INTO `ec_product_cross_sale_relations` VALUES (10, 4, 5);
INSERT INTO `ec_product_cross_sale_relations` VALUES (11, 4, 7);
INSERT INTO `ec_product_cross_sale_relations` VALUES (12, 5, 8);
INSERT INTO `ec_product_cross_sale_relations` VALUES (13, 5, 1);
INSERT INTO `ec_product_cross_sale_relations` VALUES (14, 5, 7);
INSERT INTO `ec_product_cross_sale_relations` VALUES (15, 5, 3);
INSERT INTO `ec_product_cross_sale_relations` VALUES (16, 6, 1);
INSERT INTO `ec_product_cross_sale_relations` VALUES (17, 6, 3);
INSERT INTO `ec_product_cross_sale_relations` VALUES (18, 6, 2);
INSERT INTO `ec_product_cross_sale_relations` VALUES (19, 7, 5);
INSERT INTO `ec_product_cross_sale_relations` VALUES (20, 7, 4);
INSERT INTO `ec_product_cross_sale_relations` VALUES (29, 9, 1);
INSERT INTO `ec_product_cross_sale_relations` VALUES (30, 9, 6);
INSERT INTO `ec_product_cross_sale_relations` VALUES (31, 9, 7);
INSERT INTO `ec_product_cross_sale_relations` VALUES (32, 9, 2);
INSERT INTO `ec_product_cross_sale_relations` VALUES (33, 8, 4);
INSERT INTO `ec_product_cross_sale_relations` VALUES (34, 8, 9);
INSERT INTO `ec_product_cross_sale_relations` VALUES (35, 8, 3);
INSERT INTO `ec_product_cross_sale_relations` VALUES (36, 8, 5);

-- ----------------------------
-- Table structure for ec_product_related_relations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_related_relations`;
CREATE TABLE `ec_product_related_relations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ec_product_related_relations_from_product_id_index`(`from_product_id`) USING BTREE,
  INDEX `ec_product_related_relations_to_product_id_index`(`to_product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_product_tag_product
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_tag_product`;
CREATE TABLE `ec_product_tag_product`  (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`product_id`, `tag_id`) USING BTREE,
  INDEX `ec_product_tag_product_product_id_index`(`product_id`) USING BTREE,
  INDEX `ec_product_tag_product_tag_id_index`(`tag_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_tag_product
-- ----------------------------
INSERT INTO `ec_product_tag_product` VALUES (1, 3);
INSERT INTO `ec_product_tag_product` VALUES (1, 5);
INSERT INTO `ec_product_tag_product` VALUES (2, 5);
INSERT INTO `ec_product_tag_product` VALUES (2, 6);
INSERT INTO `ec_product_tag_product` VALUES (3, 2);
INSERT INTO `ec_product_tag_product` VALUES (3, 3);
INSERT INTO `ec_product_tag_product` VALUES (4, 3);
INSERT INTO `ec_product_tag_product` VALUES (4, 4);
INSERT INTO `ec_product_tag_product` VALUES (5, 3);
INSERT INTO `ec_product_tag_product` VALUES (5, 4);
INSERT INTO `ec_product_tag_product` VALUES (5, 6);
INSERT INTO `ec_product_tag_product` VALUES (6, 4);
INSERT INTO `ec_product_tag_product` VALUES (6, 6);
INSERT INTO `ec_product_tag_product` VALUES (7, 2);
INSERT INTO `ec_product_tag_product` VALUES (7, 4);
INSERT INTO `ec_product_tag_product` VALUES (7, 5);
INSERT INTO `ec_product_tag_product` VALUES (8, 1);
INSERT INTO `ec_product_tag_product` VALUES (8, 4);
INSERT INTO `ec_product_tag_product` VALUES (8, 6);
INSERT INTO `ec_product_tag_product` VALUES (9, 2);
INSERT INTO `ec_product_tag_product` VALUES (9, 3);
INSERT INTO `ec_product_tag_product` VALUES (9, 5);

-- ----------------------------
-- Table structure for ec_product_tags
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_tags`;
CREATE TABLE `ec_product_tags`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_tags
-- ----------------------------
INSERT INTO `ec_product_tags` VALUES (1, 'Electronic', NULL, 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_product_tags` VALUES (2, 'Mobile', NULL, 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_product_tags` VALUES (3, 'Iphone', NULL, 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_product_tags` VALUES (4, 'Printer', NULL, 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_product_tags` VALUES (5, 'Office', NULL, 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_product_tags` VALUES (6, 'IT', NULL, 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');

-- ----------------------------
-- Table structure for ec_product_up_sale_relations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
CREATE TABLE `ec_product_up_sale_relations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ec_product_up_sale_relations_from_product_id_index`(`from_product_id`) USING BTREE,
  INDEX `ec_product_up_sale_relations_to_product_id_index`(`to_product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_product_variation_items
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_variation_items`;
CREATE TABLE `ec_product_variation_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_variation_items
-- ----------------------------
INSERT INTO `ec_product_variation_items` VALUES (1, 3, 1);
INSERT INTO `ec_product_variation_items` VALUES (2, 8, 1);
INSERT INTO `ec_product_variation_items` VALUES (3, 5, 2);
INSERT INTO `ec_product_variation_items` VALUES (4, 6, 2);
INSERT INTO `ec_product_variation_items` VALUES (5, 1, 3);
INSERT INTO `ec_product_variation_items` VALUES (6, 8, 3);
INSERT INTO `ec_product_variation_items` VALUES (7, 2, 4);
INSERT INTO `ec_product_variation_items` VALUES (8, 8, 4);
INSERT INTO `ec_product_variation_items` VALUES (9, 4, 5);
INSERT INTO `ec_product_variation_items` VALUES (10, 10, 5);
INSERT INTO `ec_product_variation_items` VALUES (11, 4, 6);
INSERT INTO `ec_product_variation_items` VALUES (12, 7, 6);
INSERT INTO `ec_product_variation_items` VALUES (13, 2, 7);
INSERT INTO `ec_product_variation_items` VALUES (14, 8, 7);
INSERT INTO `ec_product_variation_items` VALUES (15, 3, 8);
INSERT INTO `ec_product_variation_items` VALUES (16, 7, 8);
INSERT INTO `ec_product_variation_items` VALUES (17, 5, 9);
INSERT INTO `ec_product_variation_items` VALUES (18, 8, 9);
INSERT INTO `ec_product_variation_items` VALUES (19, 1, 10);
INSERT INTO `ec_product_variation_items` VALUES (20, 7, 10);
INSERT INTO `ec_product_variation_items` VALUES (21, 2, 11);
INSERT INTO `ec_product_variation_items` VALUES (22, 8, 11);
INSERT INTO `ec_product_variation_items` VALUES (23, 3, 12);
INSERT INTO `ec_product_variation_items` VALUES (24, 9, 12);
INSERT INTO `ec_product_variation_items` VALUES (25, 4, 13);
INSERT INTO `ec_product_variation_items` VALUES (26, 8, 13);
INSERT INTO `ec_product_variation_items` VALUES (27, 4, 14);
INSERT INTO `ec_product_variation_items` VALUES (28, 8, 14);
INSERT INTO `ec_product_variation_items` VALUES (29, 2, 15);
INSERT INTO `ec_product_variation_items` VALUES (30, 6, 15);
INSERT INTO `ec_product_variation_items` VALUES (31, 4, 16);
INSERT INTO `ec_product_variation_items` VALUES (32, 6, 16);
INSERT INTO `ec_product_variation_items` VALUES (33, 5, 17);
INSERT INTO `ec_product_variation_items` VALUES (34, 6, 17);
INSERT INTO `ec_product_variation_items` VALUES (35, 3, 18);
INSERT INTO `ec_product_variation_items` VALUES (36, 8, 18);
INSERT INTO `ec_product_variation_items` VALUES (37, 1, 19);
INSERT INTO `ec_product_variation_items` VALUES (38, 8, 19);
INSERT INTO `ec_product_variation_items` VALUES (39, 1, 20);
INSERT INTO `ec_product_variation_items` VALUES (40, 7, 20);
INSERT INTO `ec_product_variation_items` VALUES (45, 3, 23);
INSERT INTO `ec_product_variation_items` VALUES (46, 10, 23);
INSERT INTO `ec_product_variation_items` VALUES (47, 5, 24);
INSERT INTO `ec_product_variation_items` VALUES (48, 10, 24);

-- ----------------------------
-- Table structure for ec_product_variations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_variations`;
CREATE TABLE `ec_product_variations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `configurable_product_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_variations
-- ----------------------------
INSERT INTO `ec_product_variations` VALUES (1, 10, 1, 1);
INSERT INTO `ec_product_variations` VALUES (2, 11, 1, 0);
INSERT INTO `ec_product_variations` VALUES (3, 12, 1, 0);
INSERT INTO `ec_product_variations` VALUES (4, 13, 1, 0);
INSERT INTO `ec_product_variations` VALUES (5, 14, 2, 1);
INSERT INTO `ec_product_variations` VALUES (6, 15, 2, 0);
INSERT INTO `ec_product_variations` VALUES (7, 16, 2, 0);
INSERT INTO `ec_product_variations` VALUES (8, 17, 3, 1);
INSERT INTO `ec_product_variations` VALUES (9, 18, 3, 0);
INSERT INTO `ec_product_variations` VALUES (10, 19, 4, 1);
INSERT INTO `ec_product_variations` VALUES (11, 20, 4, 0);
INSERT INTO `ec_product_variations` VALUES (12, 21, 4, 0);
INSERT INTO `ec_product_variations` VALUES (13, 22, 5, 1);
INSERT INTO `ec_product_variations` VALUES (14, 23, 5, 0);
INSERT INTO `ec_product_variations` VALUES (15, 24, 5, 0);
INSERT INTO `ec_product_variations` VALUES (16, 25, 5, 0);
INSERT INTO `ec_product_variations` VALUES (17, 26, 6, 1);
INSERT INTO `ec_product_variations` VALUES (18, 27, 7, 1);
INSERT INTO `ec_product_variations` VALUES (19, 28, 7, 0);
INSERT INTO `ec_product_variations` VALUES (20, 29, 8, 1);
INSERT INTO `ec_product_variations` VALUES (23, 32, 9, 1);
INSERT INTO `ec_product_variations` VALUES (24, 33, 9, 0);

-- ----------------------------
-- Table structure for ec_product_with_attribute
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_with_attribute`;
CREATE TABLE `ec_product_with_attribute`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_with_attribute
-- ----------------------------
INSERT INTO `ec_product_with_attribute` VALUES (1, 5, 1);
INSERT INTO `ec_product_with_attribute` VALUES (2, 6, 1);
INSERT INTO `ec_product_with_attribute` VALUES (3, 2, 2);
INSERT INTO `ec_product_with_attribute` VALUES (4, 8, 2);
INSERT INTO `ec_product_with_attribute` VALUES (5, 3, 3);
INSERT INTO `ec_product_with_attribute` VALUES (6, 7, 3);
INSERT INTO `ec_product_with_attribute` VALUES (7, 5, 4);
INSERT INTO `ec_product_with_attribute` VALUES (8, 7, 4);
INSERT INTO `ec_product_with_attribute` VALUES (9, 5, 5);
INSERT INTO `ec_product_with_attribute` VALUES (10, 10, 5);
INSERT INTO `ec_product_with_attribute` VALUES (11, 4, 6);
INSERT INTO `ec_product_with_attribute` VALUES (12, 10, 6);
INSERT INTO `ec_product_with_attribute` VALUES (13, 5, 7);
INSERT INTO `ec_product_with_attribute` VALUES (14, 7, 7);
INSERT INTO `ec_product_with_attribute` VALUES (15, 3, 8);
INSERT INTO `ec_product_with_attribute` VALUES (16, 9, 8);
INSERT INTO `ec_product_with_attribute` VALUES (17, 3, 9);
INSERT INTO `ec_product_with_attribute` VALUES (18, 9, 9);

-- ----------------------------
-- Table structure for ec_product_with_attribute_set
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
CREATE TABLE `ec_product_with_attribute_set`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_product_with_attribute_set
-- ----------------------------
INSERT INTO `ec_product_with_attribute_set` VALUES (1, 1, 1, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (2, 2, 1, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (3, 1, 2, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (4, 2, 2, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (5, 1, 3, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (6, 2, 3, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (7, 1, 4, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (8, 2, 4, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (9, 1, 5, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (10, 2, 5, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (11, 1, 6, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (12, 2, 6, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (13, 1, 7, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (14, 2, 7, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (15, 1, 8, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (16, 2, 8, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (17, 1, 9, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (18, 2, 9, 0);

-- ----------------------------
-- Table structure for ec_products
-- ----------------------------
DROP TABLE IF EXISTS `ec_products`;
CREATE TABLE `ec_products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NULL DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `category_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `brand_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `is_searchable` tinyint(4) NOT NULL DEFAULT 0,
  `is_show_on_list` tinyint(4) NOT NULL DEFAULT 0,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double UNSIGNED NULL DEFAULT NULL,
  `sale_price` double UNSIGNED NULL DEFAULT NULL,
  `start_date` timestamp(0) NULL DEFAULT NULL,
  `end_date` timestamp(0) NULL DEFAULT NULL,
  `length` double(8, 2) NULL DEFAULT NULL,
  `wide` double(8, 2) NULL DEFAULT NULL,
  `height` double(8, 2) NULL DEFAULT NULL,
  `weight` double(8, 2) NULL DEFAULT NULL,
  `barcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `length_unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `wide_unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `height_unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `weight_unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `tax_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_products
-- ----------------------------
INSERT INTO `ec_products` VALUES (1, 'Dual Camera 20MP', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/5-p.jpg\",\"products\\/hover-4-p.jpg\"]', 'SW-191-A0', 0, 18, 0, 1, 1, NULL, NULL, 7, 0, 0, 0, 0, 80.25, 67.41, NULL, NULL, 20.00, 10.00, 13.00, 804.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-02-17 08:32:17', 1, 194396);
INSERT INTO `ec_products` VALUES (2, 'Smart Watches', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/10-p.jpg\",\"products\\/hover-5-p.jpg\"]', 'SW-141-A0', 0, 15, 0, 1, 1, NULL, NULL, 4, 0, 0, 0, 0, 40.5, 31.995, NULL, NULL, 20.00, 18.00, 11.00, 803.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-02-17 08:32:18', 1, 11432);
INSERT INTO `ec_products` VALUES (3, 'Beat Headphone', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/6-p.jpg\",\"products\\/hover-3-p.jpg\"]', 'SW-179-A0', 0, 15, 0, 1, 1, NULL, NULL, 7, 0, 0, 0, 0, 20, 14.6, NULL, NULL, 19.00, 16.00, 20.00, 841.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-02-17 08:32:18', 1, 186315);
INSERT INTO `ec_products` VALUES (4, 'Red & Black Headphone', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/6-p.jpg\",\"products\\/hover-4-p.jpg\"]', 'SW-177-A0', 0, 17, 0, 1, 0, NULL, NULL, 7, 0, 0, 0, 0, 58, 46.98, NULL, NULL, 18.00, 12.00, 14.00, 800.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-02-17 08:32:18', 1, 96910);
INSERT INTO `ec_products` VALUES (5, 'Smart Watch External', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/7-p.jpg\",\"products\\/hover-1-p.jpg\"]', 'SW-190-A0', 0, 18, 0, 1, 0, NULL, NULL, 3, 0, 0, 0, 0, 80, 62.4, NULL, NULL, 11.00, 17.00, 14.00, 814.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-02-17 08:32:18', 1, 53078);
INSERT INTO `ec_products` VALUES (6, 'Nikon HD camera', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/9-p.jpg\",\"products\\/hover-1-p.jpg\"]', 'SW-181-A0', 0, 20, 0, 1, 0, NULL, NULL, 6, 0, 0, 0, 0, 43, 37.84, NULL, NULL, 11.00, 20.00, 19.00, 550.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-02-17 08:32:18', 1, 173100);
INSERT INTO `ec_products` VALUES (7, 'Audio Equipment', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/6-p.jpg\",\"products\\/hover-8-p.jpg\"]', 'SW-177-A0', 0, 12, 0, 1, 0, NULL, NULL, 2, 0, 0, 0, 0, 56, 49.28, NULL, NULL, 20.00, 12.00, 18.00, 586.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-02-17 08:32:18', 1, 14957);
INSERT INTO `ec_products` VALUES (8, 'Smart Televisions', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\r\n\r\n<p>- Casual unisex fit</p>\r\n\r\n<p>- 64% polyester, 36% polyurethane</p>\r\n\r\n<p>- Water column pressure: 4000 mm</p>\r\n\r\n<p>- Model is 187cm tall and wearing a size S / M</p>\r\n\r\n<p>- Unisex fit</p>\r\n\r\n<p>- Drawstring hood with built-in cap</p>\r\n\r\n<p>- Front placket with snap buttons</p>\r\n\r\n<p>- Ventilation under armpit</p>\r\n\r\n<p>- Adjustable cuffs</p>\r\n\r\n<p>- Double welted front pockets</p>\r\n\r\n<p>- Adjustable elastic string at hempen</p>\r\n\r\n<p>- Ultrasonically welded seams</p>\r\n\r\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"brands\\/4-1.png\"]', 'SW-171-A0', 0, 10, 0, 1, 1, NULL, NULL, 4, 0, 0, 0, 0, 123, 86.1, NULL, NULL, 20.00, 18.00, 14.00, 734.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-05-16 09:00:58', 1, 53773);
INSERT INTO `ec_products` VALUES (9, 'Samsung Smart Phone', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\r\n\r\n<p>- Casual unisex fit</p>\r\n\r\n<p>- 64% polyester, 36% polyurethane</p>\r\n\r\n<p>- Water column pressure: 4000 mm</p>\r\n\r\n<p>- Model is 187cm tall and wearing a size S / M</p>\r\n\r\n<p>- Unisex fit</p>\r\n\r\n<p>- Drawstring hood with built-in cap</p>\r\n\r\n<p>- Front placket with snap buttons</p>\r\n\r\n<p>- Ventilation under armpit</p>\r\n\r\n<p>- Adjustable cuffs</p>\r\n\r\n<p>- Double welted front pockets</p>\r\n\r\n<p>- Adjustable elastic string at hempen</p>\r\n\r\n<p>- Ultrasonically welded seams</p>\r\n\r\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/3-p.jpg\",\"products\\/hover-7-p.jpg\"]', 'SW-113-A0', 0, 19, 0, 1, 1, NULL, NULL, 6, 0, 0, 0, 0, 55, 49.5, NULL, NULL, 16.00, 14.00, 17.00, 772.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-05-16 09:00:15', 1, 120349);
INSERT INTO `ec_products` VALUES (10, 'Dual Camera 20MP', NULL, NULL, 'published', '[\"products\\/5-p.jpg\",\"products\\/hover-4-p.jpg\"]', 'SW-191-A0', 0, 18, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 80.25, 67.41, NULL, NULL, 20.00, 10.00, 13.00, 804.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-02-17 08:32:17', NULL, 0);
INSERT INTO `ec_products` VALUES (11, 'Dual Camera 20MP', NULL, NULL, 'published', '[\"products\\/9-p.jpg\",\"products\\/hover-3-p.jpg\"]', 'SW-191-A0-A1', 0, 18, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 80.25, 69.015, NULL, NULL, 20.00, 10.00, 13.00, 804.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-02-17 08:32:17', NULL, 0);
INSERT INTO `ec_products` VALUES (12, 'Dual Camera 20MP', NULL, NULL, 'published', '[\"products\\/1-p.jpg\",\"products\\/hover-3-p.jpg\"]', 'SW-191-A0-A2', 0, 18, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 80.25, 63.3975, NULL, NULL, 20.00, 10.00, 13.00, 804.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-02-17 08:32:17', NULL, 0);
INSERT INTO `ec_products` VALUES (13, 'Dual Camera 20MP', NULL, NULL, 'published', '[\"products\\/3-p.jpg\",\"products\\/hover-9-p.jpg\"]', 'SW-191-A0-A3', 0, 18, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 80.25, 70.62, NULL, NULL, 20.00, 10.00, 13.00, 804.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:17', '2021-02-17 08:32:17', NULL, 0);
INSERT INTO `ec_products` VALUES (14, 'Smart Watches', NULL, NULL, 'published', '[\"products\\/10-p.jpg\",\"products\\/hover-5-p.jpg\"]', 'SW-141-A0', 0, 15, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 40.5, 31.995, NULL, NULL, 20.00, 18.00, 11.00, 803.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (15, 'Smart Watches', NULL, NULL, 'published', '[\"products\\/5-p.jpg\",\"products\\/hover-10-p.jpg\"]', 'SW-141-A0-A1', 0, 15, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 40.5, 30.375, NULL, NULL, 20.00, 18.00, 11.00, 803.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (16, 'Smart Watches', NULL, NULL, 'published', '[\"products\\/5-p.jpg\",\"products\\/hover-3-p.jpg\"]', 'SW-141-A0-A2', 0, 15, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 40.5, 33.21, NULL, NULL, 20.00, 18.00, 11.00, 803.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (17, 'Beat Headphone', NULL, NULL, 'published', '[\"products\\/6-p.jpg\",\"products\\/hover-3-p.jpg\"]', 'SW-179-A0', 0, 15, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 20, 14.6, NULL, NULL, 19.00, 16.00, 20.00, 841.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (18, 'Beat Headphone', NULL, NULL, 'published', '[\"products\\/9-p.jpg\",\"products\\/hover-1-p.jpg\"]', 'SW-179-A0-A1', 0, 15, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 20, 17.4, NULL, NULL, 19.00, 16.00, 20.00, 841.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (19, 'Red & Black Headphone', NULL, NULL, 'published', '[\"products\\/6-p.jpg\",\"products\\/hover-4-p.jpg\"]', 'SW-177-A0', 0, 17, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 58, 46.98, NULL, NULL, 18.00, 12.00, 14.00, 800.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (20, 'Red & Black Headphone', NULL, NULL, 'published', '[\"products\\/9-p.jpg\",\"products\\/hover-3-p.jpg\"]', 'SW-177-A0-A1', 0, 17, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 58, 48.14, NULL, NULL, 18.00, 12.00, 14.00, 800.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (21, 'Red & Black Headphone', NULL, NULL, 'published', '[\"products\\/5-p.jpg\",\"products\\/hover-5-p.jpg\"]', 'SW-177-A0-A2', 0, 17, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 58, 42.34, NULL, NULL, 18.00, 12.00, 14.00, 800.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (22, 'Smart Watch External', NULL, NULL, 'published', '[\"products\\/7-p.jpg\",\"products\\/hover-1-p.jpg\"]', 'SW-190-A0', 0, 18, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 80, 62.4, NULL, NULL, 11.00, 17.00, 14.00, 814.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (23, 'Smart Watch External', NULL, NULL, 'published', '[\"products\\/9-p.jpg\",\"products\\/hover-7-p.jpg\"]', 'SW-190-A0-A1', 0, 18, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 80, 67.2, NULL, NULL, 11.00, 17.00, 14.00, 814.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (24, 'Smart Watch External', NULL, NULL, 'published', '[\"products\\/8-p.jpg\",\"products\\/hover-10-p.jpg\"]', 'SW-190-A0-A2', 0, 18, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 80, 68.8, NULL, NULL, 11.00, 17.00, 14.00, 814.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (25, 'Smart Watch External', NULL, NULL, 'published', '[\"products\\/3-p.jpg\",\"products\\/hover-10-p.jpg\"]', 'SW-190-A0-A3', 0, 18, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 80, 68, NULL, NULL, 11.00, 17.00, 14.00, 814.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (26, 'Nikon HD camera', NULL, NULL, 'published', '[\"products\\/9-p.jpg\",\"products\\/hover-1-p.jpg\"]', 'SW-181-A0', 0, 20, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 43, 37.84, NULL, NULL, 11.00, 20.00, 19.00, 550.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (27, 'Audio Equipment', NULL, NULL, 'published', '[\"products\\/6-p.jpg\",\"products\\/hover-8-p.jpg\"]', 'SW-177-A0', 0, 12, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 56, 49.28, NULL, NULL, 20.00, 12.00, 18.00, 586.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (28, 'Audio Equipment', NULL, NULL, 'published', '[\"products\\/1-p.jpg\",\"products\\/hover-6-p.jpg\"]', 'SW-177-A0-A1', 0, 12, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 56, 42, NULL, NULL, 20.00, 12.00, 18.00, 586.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (29, 'Smart Televisions', NULL, NULL, 'published', '[\"brands\\/4-1.png\"]', 'SW-171-A0', 0, 10, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 123, 86.1, NULL, NULL, 20.00, 18.00, 14.00, 734.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-05-16 09:00:52', NULL, 0);
INSERT INTO `ec_products` VALUES (32, 'Samsung Smart Phone', NULL, NULL, 'published', '[\"products\\/3-p.jpg\",\"products\\/hover-7-p.jpg\"]', 'SW-113-A0', 0, 19, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 55, 49.5, NULL, NULL, 16.00, 14.00, 17.00, 772.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);
INSERT INTO `ec_products` VALUES (33, 'Samsung Smart Phone', NULL, NULL, 'published', '[\"products\\/7-p.jpg\",\"products\\/hover-3-p.jpg\"]', 'SW-113-A0-A1', 0, 19, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 55, 42.9, NULL, NULL, 16.00, 14.00, 17.00, 772.00, NULL, NULL, NULL, NULL, NULL, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL, 0);

-- ----------------------------
-- Table structure for ec_reviews
-- ----------------------------
DROP TABLE IF EXISTS `ec_reviews`;
CREATE TABLE `ec_reviews`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `star` double(8, 2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_reviews
-- ----------------------------
INSERT INTO `ec_reviews` VALUES (1, 2, 4, 1.00, 'Repellendus ea et laudantium aut. Animi est qui sed sed et et sit. Perspiciatis et impedit qui amet facilis quis rerum.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (2, 6, 7, 2.00, 'Occaecati aut eum perferendis repellendus nesciunt dolore. Veniam qui velit velit a neque id. Qui ab doloribus et ullam non.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (3, 3, 2, 2.00, 'Voluptatibus est repudiandae et a in a in. Necessitatibus eveniet tenetur reprehenderit harum quia. Voluptatem at quidem quaerat neque ab doloremque.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (4, 6, 7, 2.00, 'Placeat sunt dolorem veritatis quis dolorem. Ducimus harum quidem molestiae. Natus iste distinctio perspiciatis qui labore eum ratione.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (5, 10, 9, 1.00, 'Voluptates voluptatem repellendus dolore delectus est et facere. A sed veniam et unde. Deserunt ullam est explicabo autem.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (6, 2, 2, 4.00, 'Facere architecto rerum et et error est qui. Beatae laboriosam unde fugit. Repellendus ratione et mollitia eligendi modi exercitationem ea.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (7, 5, 1, 2.00, 'Soluta dignissimos pariatur aut alias sed consequatur. Dolores magni qui omnis dolores voluptatem.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (8, 9, 8, 4.00, 'Fugiat et officiis voluptatem laudantium. Ea rerum voluptates iusto deleniti. Dicta aut repudiandae totam dolores perferendis autem.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (9, 11, 8, 4.00, 'Autem aut et qui soluta quia. Consequatur consequuntur et sit autem laboriosam quas quia. Odit suscipit distinctio voluptatum.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (10, 9, 10, 5.00, 'Et dolor quam incidunt sed sit. Expedita inventore quia quam natus. Tempora similique totam voluptas eaque blanditiis eligendi sed.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (11, 7, 4, 5.00, 'Qui officiis dolores aut temporibus quas sed omnis. Doloribus aperiam qui quia eum et saepe dicta eligendi. Repellat explicabo labore vel omnis qui.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (12, 11, 1, 3.00, 'Aut quia voluptatem at voluptatem deleniti laudantium libero. Consequatur iure ut aperiam quia qui quis.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (13, 3, 8, 5.00, 'Eveniet nihil ea aut qui. Soluta amet ducimus sunt autem. Exercitationem officiis maiores neque. Iusto quos qui sunt et sunt.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (14, 2, 6, 4.00, 'Numquam recusandae neque quae. Aut et corrupti voluptatum illum voluptatibus est. Placeat sed aut aperiam reiciendis dolorem.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (15, 5, 5, 4.00, 'Sint exercitationem sunt qui. Ratione nulla rem iusto temporibus magni sed velit tenetur. Nostrum sit non voluptatibus consectetur unde praesentium.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (16, 9, 4, 3.00, 'Similique illum voluptatem laudantium maxime est cum unde. Non natus quo et accusamus qui debitis dolores. Omnis ea qui velit natus ullam illo aut.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (17, 4, 5, 1.00, 'Molestiae impedit maiores sed est qui. Voluptatem quasi necessitatibus eius non. Optio suscipit omnis earum aliquam ut est odio sit.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (18, 7, 4, 5.00, 'Consequatur quidem molestias nemo eum. Sit ut cupiditate ut beatae iusto et voluptas. Sed id quos itaque placeat commodi asperiores.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (19, 9, 6, 3.00, 'Quia nostrum doloremque alias eos. Fugit occaecati et est et et temporibus quisquam repellat. Numquam fugiat provident eos dicta delectus amet.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (20, 11, 9, 4.00, 'Eum perferendis laudantium est ut. Suscipit quidem laudantium consequatur vitae corporis ducimus aut. Blanditiis dolorem rem commodi earum fugit.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (21, 6, 10, 4.00, 'Molestiae saepe quidem dolorem natus unde necessitatibus. Voluptate cupiditate dolor ipsum nesciunt. Quas repellendus quis corrupti.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (22, 9, 5, 4.00, 'Dicta et ut ut. Neque modi modi voluptatem qui. Numquam maiores quia dolores odio vel illo dolor. Aut assumenda ab et est ut laudantium aut.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (23, 11, 1, 4.00, 'Consectetur nam totam aliquam aperiam voluptas fugiat non. Laborum labore et vel minima. Fuga quaerat unde qui quae officia sapiente.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (24, 7, 1, 5.00, 'Eos consectetur aut quam autem doloremque. Omnis nobis error sequi.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (25, 7, 7, 3.00, 'Tenetur et non porro natus aut. Et quis facilis qui doloribus at.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (26, 9, 6, 5.00, 'Et sed et dolores qui. In id corrupti a quia delectus. Harum nulla est quisquam molestiae nihil dolorum similique. Impedit velit est et qui.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (27, 4, 6, 4.00, 'Rerum qui impedit dolore quis. Molestiae soluta et harum. Voluptatem ea ut at sunt impedit temporibus hic. Qui odit ratione officia ut rerum id et.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (28, 7, 2, 1.00, 'Odio quo et quia quia incidunt. Enim ex ratione distinctio dolore maiores rerum explicabo. Quidem fuga cupiditate dignissimos eaque ea ipsam.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (29, 4, 3, 3.00, 'Dolorem dolore iure eos reiciendis fugit ex. Corrupti quia fuga itaque eum. Harum maiores alias voluptatum sequi.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (30, 11, 3, 5.00, 'Quidem esse qui porro. Omnis tempore voluptas minima asperiores impedit adipisci. Occaecati quo voluptates magnam iusto autem quae.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (31, 11, 2, 2.00, 'Voluptatem laboriosam labore maiores. Totam tenetur rerum eum dolores molestiae sint. Quibusdam adipisci tenetur sunt veniam.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (32, 7, 1, 4.00, 'Eos rem ipsam et libero laboriosam eum. Ducimus voluptates consequatur hic non eos libero et. Et sint atque sint totam hic illum.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (33, 4, 4, 3.00, 'Cum veritatis tenetur consequuntur molestias reiciendis autem sint veniam. Perspiciatis sed accusamus nemo. Non minus quasi voluptates molestiae cum.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (34, 7, 4, 3.00, 'Eaque sit vel minima incidunt porro. Enim aspernatur voluptatem est mollitia nemo. Consequuntur qui quis assumenda quia qui voluptas praesentium.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (35, 5, 1, 2.00, 'Quia deleniti porro libero voluptatum voluptatibus error fugit. Veniam voluptas est et. Nulla omnis quos rerum. Ut sed est fugit blanditiis.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (36, 9, 3, 1.00, 'Non atque fugit ullam dolores voluptate officia sed. Doloribus aut tempore aliquid dolores a nisi.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (37, 9, 5, 1.00, 'Aspernatur odit qui neque quos alias aliquam ipsum. Sit aliquam hic mollitia.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (38, 5, 5, 5.00, 'Id quae vel id. Earum voluptatem illum dolor vel et sunt. Natus sed asperiores magnam assumenda vero qui nisi aspernatur.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (39, 3, 5, 5.00, 'Inventore error illo provident iste. Rerum eum quaerat quia expedita cum ad. Hic sunt incidunt doloribus maiores.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (40, 10, 6, 1.00, 'Perspiciatis quae velit ea est. Ut qui quidem maxime. Aut nesciunt harum dolores id ea iure.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (41, 8, 9, 4.00, 'Et deserunt at occaecati incidunt sed. Provident sunt animi qui voluptas est.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (42, 7, 8, 1.00, 'Est qui cumque ea magnam voluptatem porro. Quae sit voluptatem corrupti earum. Perferendis culpa ab labore quos eum. Atque consectetur id id.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (43, 4, 8, 3.00, 'Nemo sed molestiae adipisci fuga sint. Sunt possimus placeat accusamus similique. Mollitia voluptatem quam sit soluta expedita et.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (44, 4, 9, 4.00, 'Consequatur odio ut voluptatem rem architecto. Quae iusto nisi qui qui reiciendis quam ad.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (45, 7, 7, 5.00, 'Et sed officia rem inventore neque. Dolore similique ullam ad dignissimos iusto. Similique ab magnam et qui aliquid nam.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (46, 5, 6, 1.00, 'Sint quibusdam qui hic rerum. Qui officiis perferendis ullam est harum et minima. Aut quasi et alias veritatis ut.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (47, 6, 5, 1.00, 'Culpa consequatur velit dicta omnis debitis aut. Nobis officia laboriosam libero qui. Non quia et veritatis explicabo.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (48, 2, 9, 4.00, 'Cumque et voluptatem cumque quas perferendis ipsam. Repudiandae optio dolorum impedit quisquam. Sit similique aut quia quos dolorum dolorem.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (49, 6, 1, 4.00, 'Labore ipsum est illum itaque quasi adipisci enim earum. Assumenda facere aut inventore similique.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_reviews` VALUES (50, 9, 7, 5.00, 'Nemo et tempora quia sapiente omnis non. Perspiciatis voluptas ut ab id qui ea ut. Autem enim sit velit quia.', 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');

-- ----------------------------
-- Table structure for ec_shipment_histories
-- ----------------------------
DROP TABLE IF EXISTS `ec_shipment_histories`;
CREATE TABLE `ec_shipment_histories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_shipments
-- ----------------------------
DROP TABLE IF EXISTS `ec_shipments`;
CREATE TABLE `ec_shipments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `weight` double(8, 2) NULL DEFAULT 0,
  `shipment_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `note` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15, 2) NULL DEFAULT 0,
  `cod_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15, 2) NULL DEFAULT 0,
  `store_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_shipping
-- ----------------------------
DROP TABLE IF EXISTS `ec_shipping`;
CREATE TABLE `ec_shipping`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_shipping
-- ----------------------------
INSERT INTO `ec_shipping` VALUES (1, 'All', NULL, '2021-02-17 08:32:22', '2021-02-17 08:32:22');

-- ----------------------------
-- Table structure for ec_shipping_rule_items
-- ----------------------------
DROP TABLE IF EXISTS `ec_shipping_rule_items`;
CREATE TABLE `ec_shipping_rule_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `adjustment_price` decimal(15, 2) NULL DEFAULT 0,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ec_shipping_rules
-- ----------------------------
DROP TABLE IF EXISTS `ec_shipping_rules`;
CREATE TABLE `ec_shipping_rules`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `type` enum('base_on_price','base_on_weight') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'base_on_price',
  `currency_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `from` decimal(15, 2) NULL DEFAULT 0,
  `to` decimal(15, 2) NULL DEFAULT 0,
  `price` decimal(15, 2) NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_shipping_rules
-- ----------------------------
INSERT INTO `ec_shipping_rules` VALUES (1, 'Delivery', 1, 'base_on_price', NULL, 0.00, NULL, 0.00, '2021-02-17 08:32:22', '2021-02-17 08:32:22');

-- ----------------------------
-- Table structure for ec_store_locators
-- ----------------------------
DROP TABLE IF EXISTS `ec_store_locators`;
CREATE TABLE `ec_store_locators`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_primary` tinyint(1) NULL DEFAULT 0,
  `is_shipping_location` tinyint(1) NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_store_locators
-- ----------------------------
INSERT INTO `ec_store_locators` VALUES (1, 'Shopwise', 'sales@laravel-cms.gistensal.com', '123-456-7890', '123 Street, Old Trafford', 'US', 'New York', 'New York', 1, 1, '2021-02-17 08:32:27', '2021-02-17 08:32:27');

-- ----------------------------
-- Table structure for ec_taxes
-- ----------------------------
DROP TABLE IF EXISTS `ec_taxes`;
CREATE TABLE `ec_taxes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `percentage` double(8, 6) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ec_taxes
-- ----------------------------
INSERT INTO `ec_taxes` VALUES (1, 'VAT', 10.000000, 1, 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `ec_taxes` VALUES (2, 'None', 0.000000, 2, 'published', '2021-02-17 08:32:22', '2021-02-17 08:32:22');

-- ----------------------------
-- Table structure for ec_wish_lists
-- ----------------------------
DROP TABLE IF EXISTS `ec_wish_lists`;
CREATE TABLE `ec_wish_lists`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for field_groups
-- ----------------------------
DROP TABLE IF EXISTS `field_groups`;
CREATE TABLE `field_groups`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of field_groups
-- ----------------------------
INSERT INTO `field_groups` VALUES (1, 'slides', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"home-page\"}]]', 0, 1, 1, 'published', '2021-05-16 06:26:16', '2021-05-16 06:26:16');

-- ----------------------------
-- Table structure for field_items
-- ----------------------------
DROP TABLE IF EXISTS `field_items`;
CREATE TABLE `field_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `field_group_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `order` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of field_items
-- ----------------------------
INSERT INTO `field_items` VALUES (1, 1, NULL, 1, 'banner', 'banner', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (2, 1, NULL, 2, 'slide Chữ', 'slide_text', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (3, 1, 2, 1, 'dòng trên', 'text_top', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (4, 1, 2, 2, 'dòng dưới', 'text_bottom', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (6, 1, 5, 1, 'dòng trên', 'text_top', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (7, 1, 5, 2, 'Dòng Dưới', 'text_bottom', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (8, 1, NULL, 3, 'nút', 'button', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":\"Th\\u00eam n\\u00fat\",\"rows\":null}');
INSERT INTO `field_items` VALUES (9, 1, 8, 1, 'Nút Thứ Nhất', 'button_1', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (10, 1, 8, 2, 'Nút Thứ 2', 'button_2', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (11, 1, NULL, 4, 'banner_2', 'banner_2', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (12, 1, NULL, 5, 'Slide Chữ 2', 'slide_text_2', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (13, 1, 12, 1, 'Dòng trên', 'text_top_2', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (14, 1, 12, 2, 'dòng dưới', 'text_bottom_2', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (15, 1, NULL, 6, 'Nút 2', 'button_2', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (16, 1, 15, 1, 'Nút Thứ Nhất', 'button_one', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
INSERT INTO `field_items` VALUES (17, 1, 15, 2, 'Nút thứ 2', 'button_two', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for media_files
-- ----------------------------
DROP TABLE IF EXISTS `media_files`;
CREATE TABLE `media_files`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `media_files_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of media_files
-- ----------------------------
INSERT INTO `media_files` VALUES (1, 0, '1', 1, 'image/png', 3509, 'brands/1.png', '[]', '2021-02-17 08:32:10', '2021-02-17 08:32:10', NULL);
INSERT INTO `media_files` VALUES (2, 0, '2', 1, 'image/png', 3505, 'brands/2.png', '[]', '2021-02-17 08:32:10', '2021-02-17 08:32:10', NULL);
INSERT INTO `media_files` VALUES (3, 0, '3', 1, 'image/png', 2585, 'brands/3.png', '[]', '2021-02-17 08:32:10', '2021-02-17 08:32:10', NULL);
INSERT INTO `media_files` VALUES (4, 0, '4', 1, 'image/png', 6427, 'brands/4.png', '[]', '2021-02-17 08:32:10', '2021-02-17 08:32:10', NULL);
INSERT INTO `media_files` VALUES (5, 0, '5', 1, 'image/png', 3246, 'brands/5.png', '[]', '2021-02-17 08:32:11', '2021-02-17 08:32:11', NULL);
INSERT INTO `media_files` VALUES (6, 0, '6', 1, 'image/png', 3276, 'brands/6.png', '[]', '2021-02-17 08:32:11', '2021-02-17 08:32:11', NULL);
INSERT INTO `media_files` VALUES (7, 0, '7', 1, 'image/png', 3120, 'brands/7.png', '[]', '2021-02-17 08:32:11', '2021-02-17 08:32:11', NULL);
INSERT INTO `media_files` VALUES (8, 0, 'p-1', 2, 'image/png', 9577, 'product-categories/p-1.png', '[]', '2021-02-17 08:32:11', '2021-02-17 08:32:11', NULL);
INSERT INTO `media_files` VALUES (9, 0, 'p-2', 2, 'image/png', 5510, 'product-categories/p-2.png', '[]', '2021-02-17 08:32:11', '2021-02-17 08:32:11', NULL);
INSERT INTO `media_files` VALUES (10, 0, 'p-3', 2, 'image/png', 16215, 'product-categories/p-3.png', '[]', '2021-02-17 08:32:12', '2021-02-17 08:32:12', NULL);
INSERT INTO `media_files` VALUES (11, 0, 'p-4', 2, 'image/png', 7394, 'product-categories/p-4.png', '[]', '2021-02-17 08:32:12', '2021-02-17 08:32:12', NULL);
INSERT INTO `media_files` VALUES (12, 0, 'p-5', 2, 'image/png', 6714, 'product-categories/p-5.png', '[]', '2021-02-17 08:32:12', '2021-02-17 08:32:12', NULL);
INSERT INTO `media_files` VALUES (13, 0, 'p-6', 2, 'image/png', 9541, 'product-categories/p-6.png', '[]', '2021-02-17 08:32:12', '2021-02-17 08:32:12', NULL);
INSERT INTO `media_files` VALUES (14, 0, 'p-7', 2, 'image/png', 13677, 'product-categories/p-7.png', '[]', '2021-02-17 08:32:13', '2021-02-17 08:32:13', NULL);
INSERT INTO `media_files` VALUES (15, 0, '1-p', 3, 'image/jpeg', 11828, 'products/1-p.jpg', '[]', '2021-02-17 08:32:13', '2021-02-17 08:32:13', NULL);
INSERT INTO `media_files` VALUES (16, 0, '10-p', 3, 'image/jpeg', 12569, 'products/10-p.jpg', '[]', '2021-02-17 08:32:13', '2021-02-17 08:32:13', NULL);
INSERT INTO `media_files` VALUES (17, 0, '11-p', 3, 'image/jpeg', 27107, 'products/11-p.jpg', '[]', '2021-02-17 08:32:13', '2021-02-17 08:32:13', NULL);
INSERT INTO `media_files` VALUES (18, 0, '12-p', 3, 'image/jpeg', 33934, 'products/12-p.jpg', '[]', '2021-02-17 08:32:14', '2021-02-17 08:32:14', NULL);
INSERT INTO `media_files` VALUES (19, 0, '2-p', 3, 'image/jpeg', 13611, 'products/2-p.jpg', '[]', '2021-02-17 08:32:14', '2021-02-17 08:32:14', NULL);
INSERT INTO `media_files` VALUES (20, 0, '3-p', 3, 'image/jpeg', 29315, 'products/3-p.jpg', '[]', '2021-02-17 08:32:14', '2021-02-17 08:32:14', NULL);
INSERT INTO `media_files` VALUES (21, 0, '4-p', 3, 'image/jpeg', 18069, 'products/4-p.jpg', '[]', '2021-02-17 08:32:14', '2021-02-17 08:32:14', NULL);
INSERT INTO `media_files` VALUES (22, 0, '5-p', 3, 'image/jpeg', 18634, 'products/5-p.jpg', '[]', '2021-02-17 08:32:14', '2021-02-17 08:32:14', NULL);
INSERT INTO `media_files` VALUES (23, 0, '6-p', 3, 'image/jpeg', 18243, 'products/6-p.jpg', '[]', '2021-02-17 08:32:14', '2021-02-17 08:32:14', NULL);
INSERT INTO `media_files` VALUES (24, 0, '7-p', 3, 'image/jpeg', 27961, 'products/7-p.jpg', '[]', '2021-02-17 08:32:15', '2021-02-17 08:32:15', NULL);
INSERT INTO `media_files` VALUES (25, 0, '8-p', 3, 'image/jpeg', 10698, 'products/8-p.jpg', '[]', '2021-02-17 08:32:15', '2021-02-17 08:32:15', NULL);
INSERT INTO `media_files` VALUES (26, 0, '9-p', 3, 'image/jpeg', 12576, 'products/9-p.jpg', '[]', '2021-02-17 08:32:15', '2021-02-17 08:32:15', NULL);
INSERT INTO `media_files` VALUES (27, 0, 'f-1', 3, 'image/jpeg', 11106, 'products/f-1.jpg', '[]', '2021-02-17 08:32:15', '2021-02-17 08:32:15', NULL);
INSERT INTO `media_files` VALUES (28, 0, 'f-2', 3, 'image/jpeg', 22667, 'products/f-2.jpg', '[]', '2021-02-17 08:32:15', '2021-02-17 08:32:15', NULL);
INSERT INTO `media_files` VALUES (29, 0, 'hover-1-p', 3, 'image/jpeg', 8682, 'products/hover-1-p.jpg', '[]', '2021-02-17 08:32:15', '2021-02-17 08:32:15', NULL);
INSERT INTO `media_files` VALUES (30, 0, 'hover-10-p', 3, 'image/jpeg', 10286, 'products/hover-10-p.jpg', '[]', '2021-02-17 08:32:16', '2021-02-17 08:32:16', NULL);
INSERT INTO `media_files` VALUES (31, 0, 'hover-11-p', 3, 'image/jpeg', 26283, 'products/hover-11-p.jpg', '[]', '2021-02-17 08:32:16', '2021-02-17 08:32:16', NULL);
INSERT INTO `media_files` VALUES (32, 0, 'hover-12-p', 3, 'image/jpeg', 15533, 'products/hover-12-p.jpg', '[]', '2021-02-17 08:32:16', '2021-02-17 08:32:16', NULL);
INSERT INTO `media_files` VALUES (33, 0, 'hover-2-p', 3, 'image/jpeg', 13085, 'products/hover-2-p.jpg', '[]', '2021-02-17 08:32:16', '2021-02-17 08:32:16', NULL);
INSERT INTO `media_files` VALUES (34, 0, 'hover-3-p', 3, 'image/jpeg', 10054, 'products/hover-3-p.jpg', '[]', '2021-02-17 08:32:16', '2021-02-17 08:32:16', NULL);
INSERT INTO `media_files` VALUES (35, 0, 'hover-4-p', 3, 'image/jpeg', 17089, 'products/hover-4-p.jpg', '[]', '2021-02-17 08:32:16', '2021-02-17 08:32:16', NULL);
INSERT INTO `media_files` VALUES (36, 0, 'hover-5-p', 3, 'image/jpeg', 25924, 'products/hover-5-p.jpg', '[]', '2021-02-17 08:32:17', '2021-02-17 08:32:17', NULL);
INSERT INTO `media_files` VALUES (37, 0, 'hover-6-p', 3, 'image/jpeg', 15654, 'products/hover-6-p.jpg', '[]', '2021-02-17 08:32:17', '2021-02-17 08:32:17', NULL);
INSERT INTO `media_files` VALUES (38, 0, 'hover-7-p', 3, 'image/jpeg', 27890, 'products/hover-7-p.jpg', '[]', '2021-02-17 08:32:17', '2021-02-17 08:32:17', NULL);
INSERT INTO `media_files` VALUES (39, 0, 'hover-8-p', 3, 'image/jpeg', 10509, 'products/hover-8-p.jpg', '[]', '2021-02-17 08:32:17', '2021-02-17 08:32:17', NULL);
INSERT INTO `media_files` VALUES (40, 0, 'hover-9-p', 3, 'image/jpeg', 13379, 'products/hover-9-p.jpg', '[]', '2021-02-17 08:32:17', '2021-02-17 08:32:17', NULL);
INSERT INTO `media_files` VALUES (41, 0, '1', 4, 'image/jpeg', 11752, 'customers/1.jpg', '[]', '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL);
INSERT INTO `media_files` VALUES (42, 0, '10', 4, 'image/jpeg', 27814, 'customers/10.jpg', '[]', '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL);
INSERT INTO `media_files` VALUES (43, 0, '2', 4, 'image/jpeg', 19005, 'customers/2.jpg', '[]', '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL);
INSERT INTO `media_files` VALUES (44, 0, '3', 4, 'image/jpeg', 20400, 'customers/3.jpg', '[]', '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL);
INSERT INTO `media_files` VALUES (45, 0, '4', 4, 'image/jpeg', 26819, 'customers/4.jpg', '[]', '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL);
INSERT INTO `media_files` VALUES (46, 0, '5', 4, 'image/jpeg', 14367, 'customers/5.jpg', '[]', '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL);
INSERT INTO `media_files` VALUES (47, 0, '6', 4, 'image/jpeg', 12367, 'customers/6.jpg', '[]', '2021-02-17 08:32:19', '2021-02-17 08:32:19', NULL);
INSERT INTO `media_files` VALUES (48, 0, '7', 4, 'image/jpeg', 20652, 'customers/7.jpg', '[]', '2021-02-17 08:32:19', '2021-02-17 08:32:19', NULL);
INSERT INTO `media_files` VALUES (49, 0, '8', 4, 'image/jpeg', 21164, 'customers/8.jpg', '[]', '2021-02-17 08:32:19', '2021-02-17 08:32:19', NULL);
INSERT INTO `media_files` VALUES (50, 0, '9', 4, 'image/jpeg', 6084, 'customers/9.jpg', '[]', '2021-02-17 08:32:19', '2021-02-17 08:32:19', NULL);
INSERT INTO `media_files` VALUES (51, 0, '1', 5, 'image/jpeg', 82629, 'news/1.jpg', '[]', '2021-02-17 08:32:22', '2021-02-17 08:32:22', NULL);
INSERT INTO `media_files` VALUES (52, 0, '2', 5, 'image/jpeg', 119904, 'news/2.jpg', '[]', '2021-02-17 08:32:23', '2021-02-17 08:32:23', NULL);
INSERT INTO `media_files` VALUES (53, 0, '3', 5, 'image/jpeg', 89543, 'news/3.jpg', '[]', '2021-02-17 08:32:23', '2021-02-17 08:32:23', NULL);
INSERT INTO `media_files` VALUES (54, 0, '4', 5, 'image/jpeg', 51573, 'news/4.jpg', '[]', '2021-02-17 08:32:23', '2021-02-17 08:32:23', NULL);
INSERT INTO `media_files` VALUES (55, 0, '5', 5, 'image/jpeg', 41164, 'news/5.jpg', '[]', '2021-02-17 08:32:23', '2021-02-17 08:32:23', NULL);
INSERT INTO `media_files` VALUES (56, 0, '6', 5, 'image/jpeg', 80696, 'news/6.jpg', '[]', '2021-02-17 08:32:23', '2021-02-17 08:32:23', NULL);
INSERT INTO `media_files` VALUES (57, 0, '1', 6, 'image/jpeg', 2733, 'testimonials/1.jpg', '[]', '2021-02-17 08:32:24', '2021-02-17 08:32:24', NULL);
INSERT INTO `media_files` VALUES (58, 0, '2', 6, 'image/jpeg', 2840, 'testimonials/2.jpg', '[]', '2021-02-17 08:32:24', '2021-02-17 08:32:24', NULL);
INSERT INTO `media_files` VALUES (59, 0, '3', 6, 'image/jpeg', 3065, 'testimonials/3.jpg', '[]', '2021-02-17 08:32:24', '2021-02-17 08:32:24', NULL);
INSERT INTO `media_files` VALUES (60, 0, '4', 6, 'image/jpeg', 2559, 'testimonials/4.jpg', '[]', '2021-02-17 08:32:24', '2021-02-17 08:32:24', NULL);
INSERT INTO `media_files` VALUES (61, 0, '1', 7, 'image/jpeg', 98636, 'sliders/1.jpg', '[]', '2021-02-17 08:32:24', '2021-02-17 08:32:24', NULL);
INSERT INTO `media_files` VALUES (62, 0, '2', 7, 'image/jpeg', 22560, 'sliders/2.jpg', '[]', '2021-02-17 08:32:24', '2021-02-17 08:32:24', NULL);
INSERT INTO `media_files` VALUES (63, 0, '3', 7, 'image/jpeg', 21630, 'sliders/3.jpg', '[]', '2021-02-17 08:32:25', '2021-02-17 08:32:25', NULL);
INSERT INTO `media_files` VALUES (64, 0, 'american-express', 8, 'image/png', 3209, 'general/american-express.png', '[]', '2021-02-17 08:32:25', '2021-02-17 08:32:25', NULL);
INSERT INTO `media_files` VALUES (65, 0, 'b-1', 8, 'image/jpeg', 20539, 'general/b-1.jpg', '[]', '2021-02-17 08:32:25', '2021-02-17 08:32:25', NULL);
INSERT INTO `media_files` VALUES (66, 0, 'b-2', 8, 'image/jpeg', 18320, 'general/b-2.jpg', '[]', '2021-02-17 08:32:25', '2021-02-17 08:32:25', NULL);
INSERT INTO `media_files` VALUES (67, 0, 'b-3', 8, 'image/jpeg', 42872, 'general/b-3.jpg', '[]', '2021-02-17 08:32:25', '2021-02-17 08:32:25', NULL);
INSERT INTO `media_files` VALUES (68, 0, 'discover', 8, 'image/png', 2494, 'general/discover.png', '[]', '2021-02-17 08:32:25', '2021-02-17 08:32:25', NULL);
INSERT INTO `media_files` VALUES (69, 0, 'favicon', 8, 'image/png', 1803, 'general/favicon.png', '[]', '2021-02-17 08:32:26', '2021-02-17 08:32:26', NULL);
INSERT INTO `media_files` VALUES (70, 0, 'logo-light', 8, 'image/png', 3736, 'general/logo-light.png', '[]', '2021-02-17 08:32:26', '2021-02-17 08:32:26', NULL);
INSERT INTO `media_files` VALUES (71, 0, 'logo', 8, 'image/png', 3927, 'general/logo.png', '[]', '2021-02-17 08:32:26', '2021-02-17 08:32:26', NULL);
INSERT INTO `media_files` VALUES (72, 0, 'master-card', 8, 'image/png', 3407, 'general/master-card.png', '[]', '2021-02-17 08:32:26', '2021-02-17 08:32:26', NULL);
INSERT INTO `media_files` VALUES (73, 0, 'newsletter', 8, 'image/jpeg', 48929, 'general/newsletter.jpg', '[]', '2021-02-17 08:32:26', '2021-02-17 08:32:26', NULL);
INSERT INTO `media_files` VALUES (74, 0, 'paypal', 8, 'image/png', 2670, 'general/paypal.png', '[]', '2021-02-17 08:32:27', '2021-02-17 08:32:27', NULL);
INSERT INTO `media_files` VALUES (75, 0, 'visa', 8, 'image/png', 2841, 'general/visa.png', '[]', '2021-02-17 08:32:27', '2021-02-17 08:32:27', NULL);
INSERT INTO `media_files` VALUES (76, 1, 'slide1', 7, 'image/jpeg', 16176, 'sliders/slide1.jpg', '[]', '2021-05-16 06:27:25', '2021-05-16 06:27:25', NULL);
INSERT INTO `media_files` VALUES (77, 1, '1-1', 1, 'image/png', 6568, 'brands/1-1.png', '[]', '2021-05-16 08:44:13', '2021-05-16 08:44:13', NULL);
INSERT INTO `media_files` VALUES (78, 1, '2-1', 1, 'image/png', 6568, 'brands/2-1.png', '[]', '2021-05-16 08:44:14', '2021-05-16 08:44:14', NULL);
INSERT INTO `media_files` VALUES (79, 1, '3-1', 1, 'image/png', 6568, 'brands/3-1.png', '[]', '2021-05-16 08:44:15', '2021-05-16 08:44:15', NULL);
INSERT INTO `media_files` VALUES (80, 1, '4-1', 1, 'image/png', 6568, 'brands/4-1.png', '[]', '2021-05-16 08:44:16', '2021-05-16 08:44:16', NULL);

-- ----------------------------
-- Table structure for media_folders
-- ----------------------------
DROP TABLE IF EXISTS `media_folders`;
CREATE TABLE `media_folders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `media_folders_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of media_folders
-- ----------------------------
INSERT INTO `media_folders` VALUES (1, 0, 'brands', 'brands', 0, '2021-02-17 08:32:10', '2021-02-17 08:32:10', NULL);
INSERT INTO `media_folders` VALUES (2, 0, 'product-categories', 'product-categories', 0, '2021-02-17 08:32:11', '2021-02-17 08:32:11', NULL);
INSERT INTO `media_folders` VALUES (3, 0, 'products', 'products', 0, '2021-02-17 08:32:13', '2021-02-17 08:32:13', NULL);
INSERT INTO `media_folders` VALUES (4, 0, 'customers', 'customers', 0, '2021-02-17 08:32:18', '2021-02-17 08:32:18', NULL);
INSERT INTO `media_folders` VALUES (5, 0, 'news', 'news', 0, '2021-02-17 08:32:22', '2021-02-17 08:32:22', NULL);
INSERT INTO `media_folders` VALUES (6, 0, 'testimonials', 'testimonials', 0, '2021-02-17 08:32:24', '2021-02-17 08:32:24', NULL);
INSERT INTO `media_folders` VALUES (7, 0, 'sliders', 'sliders', 0, '2021-02-17 08:32:24', '2021-02-17 08:32:24', NULL);
INSERT INTO `media_folders` VALUES (8, 0, 'general', 'general', 0, '2021-02-17 08:32:25', '2021-02-17 08:32:25', NULL);

-- ----------------------------
-- Table structure for media_settings
-- ----------------------------
DROP TABLE IF EXISTS `media_settings`;
CREATE TABLE `media_settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `media_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for menu_locations
-- ----------------------------
DROP TABLE IF EXISTS `menu_locations`;
CREATE TABLE `menu_locations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_locations
-- ----------------------------
INSERT INTO `menu_locations` VALUES (1, 1, 'main-menu', '2021-02-17 08:32:27', '2021-02-17 08:32:27');

-- ----------------------------
-- Table structure for menu_nodes
-- ----------------------------
DROP TABLE IF EXISTS `menu_nodes`;
CREATE TABLE `menu_nodes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `menu_nodes_menu_id_index`(`menu_id`) USING BTREE,
  INDEX `menu_nodes_parent_id_index`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_nodes
-- ----------------------------
INSERT INTO `menu_nodes` VALUES (1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (2, 1, 0, NULL, NULL, '/products', NULL, 0, 'Products', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (3, 1, 0, NULL, NULL, '#', NULL, 0, 'Shop', NULL, '_self', 1, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (4, 1, 3, 1, 'Platform\\Ecommerce\\Models\\ProductCategory', '/product-categories/television', NULL, 0, 'Product Category', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (5, 1, 3, 1, 'Platform\\Ecommerce\\Models\\Brand', '/brands/fashion-live', NULL, 0, 'Brand', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (6, 1, 3, 1, 'Platform\\Ecommerce\\Models\\ProductTag', '/product-tags/electronic', NULL, 0, 'Product Tag', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (7, 1, 3, NULL, NULL, 'products/beat-headphone', NULL, 0, 'Product Single', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (8, 1, 0, 3, 'Platform\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 1, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (9, 1, 8, 3, 'Platform\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog Left Sidebar', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (10, 1, 8, 1, 'Platform\\Blog\\Models\\Category', '/news/ecommerce', NULL, 0, 'Blog Category', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (11, 1, 8, 1, 'Platform\\Blog\\Models\\Tag', '/tags/general', NULL, 0, 'Blog Tag', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (12, 1, 8, NULL, NULL, 'news/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'Blog Single', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (13, 1, 0, 2, 'Platform\\Page\\Models\\Page', '/contact-us', NULL, 0, 'Contact us', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (14, 2, 0, 4, 'Platform\\Page\\Models\\Page', '/about-us', NULL, 0, 'About Us', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (15, 2, 0, 5, 'Platform\\Page\\Models\\Page', '/faq', NULL, 0, 'FAQ', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (16, 2, 0, 6, 'Platform\\Page\\Models\\Page', '/location', NULL, 0, 'Location', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (17, 2, 0, 7, 'Platform\\Page\\Models\\Page', '/affiliates', NULL, 0, 'Affiliates', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (18, 2, 0, 2, 'Platform\\Page\\Models\\Page', '/contact-us', NULL, 0, 'Contact', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (19, 3, 0, 1, 'Platform\\Ecommerce\\Models\\ProductCategory', '/product-categories/television', NULL, 0, 'Television', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (20, 3, 0, 2, 'Platform\\Ecommerce\\Models\\ProductCategory', '/product-categories/mobile', NULL, 0, 'Mobile', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (21, 3, 0, 3, 'Platform\\Ecommerce\\Models\\ProductCategory', '/product-categories/headphone', NULL, 0, 'Headphone', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (22, 3, 0, 4, 'Platform\\Ecommerce\\Models\\ProductCategory', '/product-categories/watches', NULL, 0, 'Watches', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (23, 3, 0, 5, 'Platform\\Ecommerce\\Models\\ProductCategory', '/product-categories/game', NULL, 0, 'Game', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (24, 4, 0, NULL, NULL, '/customer/overview', NULL, 0, 'My profile', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (25, 4, 0, NULL, NULL, '/wishlist', NULL, 0, 'Wishlist', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (26, 4, 0, NULL, NULL, 'customer/orders', NULL, 0, 'Orders', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menu_nodes` VALUES (27, 4, 0, NULL, NULL, '/orders/tracking', NULL, 0, 'Order tracking', NULL, '_self', 0, '2021-02-17 08:32:27', '2021-02-17 08:32:27');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `menus_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'Main menu', 'main-menu', 'published', '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menus` VALUES (2, 'Useful Links', 'useful-links', 'published', '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menus` VALUES (3, 'Categories', 'categories', 'published', '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `menus` VALUES (4, 'My Account', 'my-account', 'published', '2021-02-17 08:32:27', '2021-02-17 08:32:27');

-- ----------------------------
-- Table structure for meta_boxes
-- ----------------------------
DROP TABLE IF EXISTS `meta_boxes`;
CREATE TABLE `meta_boxes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `meta_boxes_reference_id_index`(`reference_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meta_boxes
-- ----------------------------
INSERT INTO `meta_boxes` VALUES (1, 'icon', '[\"flaticon-tv\"]', 1, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (2, 'icon', '[\"flaticon-responsive\"]', 2, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (3, 'icon', '[\"flaticon-headphones\"]', 3, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (4, 'icon', '[\"flaticon-watch\"]', 4, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (5, 'icon', '[\"flaticon-console\"]', 5, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (6, 'icon', '[\"flaticon-camera\"]', 6, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (7, 'icon', '[\"flaticon-music-system\"]', 7, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (8, 'icon', '[\"flaticon-responsive\"]', 8, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (9, 'icon', '[\"flaticon-plugins\"]', 9, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (10, 'icon', '[\"flaticon-music-system\"]', 10, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (11, 'icon', '[\"flaticon-monitor\"]', 11, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (12, 'icon', '[\"flaticon-printer\"]', 12, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (13, 'icon', '[\"flaticon-tv\"]', 13, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (14, 'icon', '[\"flaticon-fax\"]', 14, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (15, 'icon', '[\"flaticon-mouse\"]', 15, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `meta_boxes` VALUES (16, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 10, 'Platform\\Page\\Models\\Page', '2021-05-16 04:59:41', '2021-05-16 04:59:41');
INSERT INTO `meta_boxes` VALUES (17, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 1, 'Platform\\Ecommerce\\Models\\ProductCategory', '2021-05-16 08:44:25', '2021-05-16 08:44:25');
INSERT INTO `meta_boxes` VALUES (18, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 9, 'Platform\\Ecommerce\\Models\\Product', '2021-05-16 09:00:14', '2021-05-16 09:00:14');
INSERT INTO `meta_boxes` VALUES (19, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 8, 'Platform\\Ecommerce\\Models\\Product', '2021-05-16 09:00:58', '2021-05-16 09:00:58');
INSERT INTO `meta_boxes` VALUES (20, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 11, 'Platform\\Page\\Models\\Page', '2021-05-16 09:14:18', '2021-05-16 09:14:18');
INSERT INTO `meta_boxes` VALUES (21, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 12, 'Platform\\Page\\Models\\Page', '2021-05-16 09:14:52', '2021-05-16 09:14:52');
INSERT INTO `meta_boxes` VALUES (22, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 5, 'Platform\\Blog\\Models\\Category', '2021-05-16 09:19:07', '2021-05-16 09:19:07');
INSERT INTO `meta_boxes` VALUES (23, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 6, 'Platform\\Blog\\Models\\Category', '2021-05-16 09:19:59', '2021-05-16 09:19:59');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2013_04_09_032329_create_base_tables', 1);
INSERT INTO `migrations` VALUES (2, '2013_04_09_062329_create_revisions_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (4, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (5, '2015_06_18_033822_create_blog_table', 1);
INSERT INTO `migrations` VALUES (6, '2015_06_29_025744_create_audit_history', 1);
INSERT INTO `migrations` VALUES (7, '2016_06_10_230148_create_acl_tables', 1);
INSERT INTO `migrations` VALUES (8, '2016_06_14_230857_create_menus_table', 1);
INSERT INTO `migrations` VALUES (9, '2016_06_17_091537_create_contacts_table', 1);
INSERT INTO `migrations` VALUES (10, '2016_06_28_221418_create_pages_table', 1);
INSERT INTO `migrations` VALUES (11, '2016_10_05_074239_create_setting_table', 1);
INSERT INTO `migrations` VALUES (12, '2016_10_07_193005_create_translations_table', 1);
INSERT INTO `migrations` VALUES (13, '2016_11_28_032840_create_dashboard_widget_tables', 1);
INSERT INTO `migrations` VALUES (14, '2016_12_16_084601_create_widgets_table', 1);
INSERT INTO `migrations` VALUES (15, '2017_05_09_070343_create_media_tables', 1);
INSERT INTO `migrations` VALUES (16, '2017_05_18_080441_create_payment_tables', 1);
INSERT INTO `migrations` VALUES (17, '2017_07_11_140018_create_simple_slider_table', 1);
INSERT INTO `migrations` VALUES (18, '2017_10_24_154832_create_newsletter_table', 1);
INSERT INTO `migrations` VALUES (19, '2017_11_03_070450_create_slug_table', 1);
INSERT INTO `migrations` VALUES (20, '2018_07_09_214610_create_testimonial_table', 1);
INSERT INTO `migrations` VALUES (21, '2019_01_05_053554_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (22, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (23, '2020_03_05_041139_create_ecommerce_tables', 1);
INSERT INTO `migrations` VALUES (24, '2020_09_22_135635_update_taxes_table', 1);
INSERT INTO `migrations` VALUES (25, '2020_09_29_101006_add_views_into_ec_products_table', 1);
INSERT INTO `migrations` VALUES (26, '2020_10_01_152311_make_column_image_in_product_attributes_table_nullable', 1);
INSERT INTO `migrations` VALUES (27, '2020_10_06_073439_improve_ecommerce_database', 1);
INSERT INTO `migrations` VALUES (28, '2020_10_18_134416_fix_audit_logs_table', 1);
INSERT INTO `migrations` VALUES (29, '2020_11_01_040415_update_table_ec_order_addresses', 1);
INSERT INTO `migrations` VALUES (30, '2020_11_04_091510_make_column_phone_in_order_addresses_nullable', 1);
INSERT INTO `migrations` VALUES (31, '2020_11_30_015801_update_table_ec_product_categories', 1);
INSERT INTO `migrations` VALUES (32, '2021_01_01_044147_ecommerce_create_flash_sale_table', 1);
INSERT INTO `migrations` VALUES (33, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 1);
INSERT INTO `migrations` VALUES (34, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 1);
INSERT INTO `migrations` VALUES (35, '2021_02_16_092633_remove_default_value_for_author_type', 1);
INSERT INTO `migrations` VALUES (36, '2021_02_18_073505_update_table_ec_reviews', 2);
INSERT INTO `migrations` VALUES (37, '2017_03_27_150646_re_create_custom_field_tables', 3);

-- ----------------------------
-- Table structure for newsletters
-- ----------------------------
DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, 'Home', '<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[banners image1=\"general/b-1.jpg\" url1=\"/product-categories/headphone\" image2=\"general/b-2.jpg\" url2=\"/product-categories/camera\" image3=\"general/b-3.jpg\" url3=\"/product-categories/watches\"][/banners]</div><div>[trending-products title=\"Trending Products\"][[/trending-products]</div><div>[product-blocks featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[featured-news title=\"Visit Our Blog\" description=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[testimonials title=\"Our Client Say!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Free Delivery\" description1=\"Free shipping on all US order or order above $200\" icon2=\"flaticon-money-back\" title2=\"30 Day Returns Guarantee\" description2=\"Simply return it within 30 days for an exchange\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" description3=\"Contact us 24 hours a day, 7 days a week\"][/our-features]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" description=\"Register now to get updates on promotions.\"][/newsletter-form]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `pages` VALUES (2, 'Contact us', '<p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `pages` VALUES (3, 'Blog', '<p>---</p>', 1, NULL, 'blog-sidebar', 0, NULL, 'published', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `pages` VALUES (4, 'About us', '<p>In another moment it was looking for them, but they began moving about again, and said, without opening its eyes, for it flashed across her mind that she tipped over the list, feeling very curious to see if she did not like to be sure, this generally happens when one eats cake, but Alice had learnt several things of this rope--Will the roof of the reeds--the rattling teacups would change to tinkling sheep-bells, and the happy summer days. THE.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `pages` VALUES (5, 'FAQ', '<p>After a while she was up to them to be executed for having cheated herself in the sea, some children digging in the other. \'I beg your pardon!\' cried Alice again, in a dreamy sort of way to hear her try and repeat something now. Tell her to speak again. The Mock Turtle went on. \'We had the dish as its share of the court, \'Bring me the truth: did you manage to do that,\' said the Duchess. \'Everything\'s got a moral, if only you can find them.\' As she said to the general conclusion, that wherever.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `pages` VALUES (6, 'Location', '<p>White Rabbit hurried by--the frightened Mouse splashed his way through the little golden key, and unlocking the door and found in it about four feet high. \'Whoever lives there,\' thought Alice, \'or perhaps they won\'t walk the way YOU manage?\' Alice asked. The Hatter was out of the conversation. Alice replied, so eagerly that the Mouse to tell him. \'A nice muddle their slates\'ll be in before the end of the jury had a door leading right into it. \'That\'s very curious.\' \'It\'s all her wonderful.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `pages` VALUES (7, 'Affiliates', '<p>Alice panted as she could see, as she ran; but the tops of the edge of her little sister\'s dream. The long grass rustled at her own child-life, and the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' Last came a little nervous about this; \'for it might end, you know,\' said the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the thimble, saying \'We beg your acceptance of this rope--Will the roof off.\' After a while, finding that nothing more happened, she.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `pages` VALUES (8, 'Brands', '<p>[all-brands][/all-brands]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `pages` VALUES (9, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `pages` VALUES (10, 'Trang chủ', '<p>test</p>', 1, NULL, 'home-page', 0, NULL, 'published', '2021-05-16 04:59:41', '2021-05-16 04:59:41');
INSERT INTO `pages` VALUES (11, 'Về Chúng Tôi', '<p>test</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-05-16 09:14:18', '2021-05-16 09:14:18');
INSERT INTO `pages` VALUES (12, 'Liên Hệ', '<p>test</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-05-16 09:14:52', '2021-05-16 09:14:52');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `amount` decimal(15, 2) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `refunded_amount` decimal(15, 2) UNSIGNED NULL DEFAULT NULL,
  `refund_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for post_categories
-- ----------------------------
DROP TABLE IF EXISTS `post_categories`;
CREATE TABLE `post_categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_categories
-- ----------------------------
INSERT INTO `post_categories` VALUES (1, 1, 1);
INSERT INTO `post_categories` VALUES (2, 1, 2);
INSERT INTO `post_categories` VALUES (3, 4, 3);
INSERT INTO `post_categories` VALUES (4, 3, 4);
INSERT INTO `post_categories` VALUES (5, 4, 5);
INSERT INTO `post_categories` VALUES (6, 2, 6);

-- ----------------------------
-- Table structure for post_tags
-- ----------------------------
DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE `post_tags`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_tags
-- ----------------------------
INSERT INTO `post_tags` VALUES (1, 1, 1);
INSERT INTO `post_tags` VALUES (2, 2, 1);
INSERT INTO `post_tags` VALUES (3, 3, 1);
INSERT INTO `post_tags` VALUES (4, 4, 1);
INSERT INTO `post_tags` VALUES (5, 5, 1);
INSERT INTO `post_tags` VALUES (6, 1, 2);
INSERT INTO `post_tags` VALUES (7, 2, 2);
INSERT INTO `post_tags` VALUES (8, 3, 2);
INSERT INTO `post_tags` VALUES (9, 4, 2);
INSERT INTO `post_tags` VALUES (10, 5, 2);
INSERT INTO `post_tags` VALUES (11, 1, 3);
INSERT INTO `post_tags` VALUES (12, 2, 3);
INSERT INTO `post_tags` VALUES (13, 3, 3);
INSERT INTO `post_tags` VALUES (14, 4, 3);
INSERT INTO `post_tags` VALUES (15, 5, 3);
INSERT INTO `post_tags` VALUES (16, 1, 4);
INSERT INTO `post_tags` VALUES (17, 2, 4);
INSERT INTO `post_tags` VALUES (18, 3, 4);
INSERT INTO `post_tags` VALUES (19, 4, 4);
INSERT INTO `post_tags` VALUES (20, 5, 4);
INSERT INTO `post_tags` VALUES (21, 1, 5);
INSERT INTO `post_tags` VALUES (22, 2, 5);
INSERT INTO `post_tags` VALUES (23, 3, 5);
INSERT INTO `post_tags` VALUES (24, 4, 5);
INSERT INTO `post_tags` VALUES (25, 5, 5);
INSERT INTO `post_tags` VALUES (26, 1, 6);
INSERT INTO `post_tags` VALUES (27, 2, 6);
INSERT INTO `post_tags` VALUES (28, 3, 6);
INSERT INTO `post_tags` VALUES (29, 4, 6);
INSERT INTO `post_tags` VALUES (30, 5, 6);

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Platform\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Platform\\ACL\\Models\\User', 1, 'news/1.jpg', 1835, NULL, '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `posts` VALUES (2, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'There isn’t much a girl can’t handle with the right accessories. That’s why the perfect women’s clutch bag is a wardrobe essential for first dates and spring weddings.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Platform\\ACL\\Models\\User', 1, 'news/2.jpg', 405, NULL, '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `posts` VALUES (3, 'The Top 2020 Handbag Trends to Know', 'For the handbag obsessives, let\'s dive into the latter a little more. This year will bring a fresh array of bag designs, and already we\'ve gotten a sneak peek of what both spring and fall 2020 collections have to offer/', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Platform\\ACL\\Models\\User', 1, 'news/3.jpg', 2421, NULL, '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `posts` VALUES (4, 'How to Match the Color of Your Handbag With an Outfit', 'To match your multi-colored purses with your favorite outfits, simply select a complementary handbag hue that will make your outfit pop for work or the weekend.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Platform\\ACL\\Models\\User', 1, 'news/4.jpg', 1043, NULL, '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `posts` VALUES (5, 'How to Care for Leather Bags', 'A leather bag is a special, near-universally beloved object, appreciated in equal measure by bon-vivants of both sexes, who cherish the supple hand, understated burnish and heady smell that can only emanate from premium quality skin.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Platform\\ACL\\Models\\User', 1, 'news/5.jpg', 1849, NULL, '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `posts` VALUES (6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'Summer is just around the corner, and there\'s no easier way to amp up your new-season look than with a chic, new handbag. Whether you\'re wearing basic sweat shorts and a tank top or a pretty floral maxi dress, a bag is an effortless way to add interest to all your summer ensembles.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Platform\\ACL\\Models\\User', 1, 'news/6.jpg', 802, NULL, '2021-02-17 08:32:24', '2021-02-17 08:32:24');

-- ----------------------------
-- Table structure for revisions
-- ----------------------------
DROP TABLE IF EXISTS `revisions`;
CREATE TABLE `revisions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `revisions_revisionable_id_revisionable_type_index`(`revisionable_id`, `revisionable_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_users_user_id_index`(`user_id`) USING BTREE,
  INDEX `role_users_role_id_index`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_slug_unique`(`slug`) USING BTREE,
  INDEX `roles_created_by_index`(`created_by`) USING BTREE,
  INDEX `roles_updated_by_index`(`updated_by`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `settings_key_unique`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'activated_plugins', '[\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"testimonial\",\"translation\",\"custom-field\"]', NULL, NULL);
INSERT INTO `settings` VALUES (4, 'theme', 'main', NULL, NULL);
INSERT INTO `settings` VALUES (5, 'theme-shopwise-site_title', 'Shopwise - Laravel Ecommerce system', NULL, NULL);
INSERT INTO `settings` VALUES (6, 'theme-shopwise-favicon', 'general/favicon.png', NULL, NULL);
INSERT INTO `settings` VALUES (7, 'theme-shopwise-logo', 'general/logo.png', NULL, NULL);
INSERT INTO `settings` VALUES (8, 'theme-shopwise-logo_footer', 'general/logo-light.png', NULL, NULL);
INSERT INTO `settings` VALUES (9, 'theme-shopwise-address', '123 Street, Old Trafford, NewYork, USA', NULL, NULL);
INSERT INTO `settings` VALUES (10, 'theme-shopwise-hotline', '123-456-7890', NULL, NULL);
INSERT INTO `settings` VALUES (11, 'theme-shopwise-email', 'info@sitename.com', NULL, NULL);
INSERT INTO `settings` VALUES (12, 'theme-shopwise-facebook', 'https://facebook.com', NULL, NULL);
INSERT INTO `settings` VALUES (13, 'theme-shopwise-twitter', 'https://twitter.com', NULL, NULL);
INSERT INTO `settings` VALUES (14, 'theme-shopwise-youtube', 'https://youtube.com', NULL, NULL);
INSERT INTO `settings` VALUES (15, 'theme-shopwise-instagram', 'https://instagram.com', NULL, NULL);
INSERT INTO `settings` VALUES (16, 'theme-shopwise-payment_methods', '[\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]', NULL, NULL);
INSERT INTO `settings` VALUES (17, 'theme-shopwise-newsletter_image', 'general/newsletter.jpg', NULL, NULL);
INSERT INTO `settings` VALUES (18, 'theme-shopwise-homepage_id', '1', NULL, NULL);
INSERT INTO `settings` VALUES (19, 'theme-shopwise-blog_page_id', '3', NULL, NULL);
INSERT INTO `settings` VALUES (20, 'theme-shopwise-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL);
INSERT INTO `settings` VALUES (21, 'theme-shopwise-cookie_consent_learn_more_url', 'http://shopwise.local/cookie-policy', NULL, NULL);
INSERT INTO `settings` VALUES (22, 'theme-shopwise-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL);
INSERT INTO `settings` VALUES (23, 'permalink-botble-blog-models-post', 'news', NULL, NULL);
INSERT INTO `settings` VALUES (24, 'permalink-botble-blog-models-category', 'news', NULL, NULL);
INSERT INTO `settings` VALUES (25, 'permalink-botble-blog-models-tag', 'tags', NULL, NULL);
INSERT INTO `settings` VALUES (26, 'payment_cod_status', '1', NULL, NULL);
INSERT INTO `settings` VALUES (27, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, NULL);
INSERT INTO `settings` VALUES (28, 'payment_bank_transfer_status', '1', NULL, NULL);
INSERT INTO `settings` VALUES (29, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 1990 404 19.', NULL, NULL);
INSERT INTO `settings` VALUES (30, 'plugins_ecommerce_customer_new_order_status', '0', NULL, NULL);
INSERT INTO `settings` VALUES (31, 'plugins_ecommerce_admin_new_order_status', '0', NULL, NULL);
INSERT INTO `settings` VALUES (32, 'ecommerce_store_name', 'Shopwise', NULL, NULL);
INSERT INTO `settings` VALUES (33, 'ecommerce_store_phone', '123-456-7890', NULL, NULL);
INSERT INTO `settings` VALUES (34, 'ecommerce_store_address', '123 Street, Old Trafford', NULL, NULL);
INSERT INTO `settings` VALUES (35, 'New York', 'Singapore', NULL, NULL);
INSERT INTO `settings` VALUES (36, 'ecommerce_store_country', 'US', NULL, NULL);
INSERT INTO `settings` VALUES (38, 'theme-main-copyright', '© 2020 Laravel Technologies. All right reserved.', NULL, NULL);
INSERT INTO `settings` VALUES (39, 'theme-main-site_title', '', NULL, NULL);
INSERT INTO `settings` VALUES (40, 'theme-main-show_site_name', '0', NULL, NULL);
INSERT INTO `settings` VALUES (41, 'theme-main-seo_title', '', NULL, NULL);
INSERT INTO `settings` VALUES (42, 'theme-main-seo_description', '', NULL, NULL);
INSERT INTO `settings` VALUES (43, 'theme-main-seo_og_image', '', NULL, NULL);
INSERT INTO `settings` VALUES (56, 'theme-main-favicon', '', NULL, NULL);
INSERT INTO `settings` VALUES (57, 'theme-main-logo', '', NULL, NULL);
INSERT INTO `settings` VALUES (59, 'theme-main-number_of_posts_in_a_category', '12', NULL, NULL);
INSERT INTO `settings` VALUES (60, 'theme-main-number_of_posts_in_a_tag', '12', NULL, NULL);
INSERT INTO `settings` VALUES (61, 'theme-main-number_of_products_per_page', '12', NULL, NULL);
INSERT INTO `settings` VALUES (62, 'theme-main-max_filter_price', '100000', NULL, NULL);
INSERT INTO `settings` VALUES (64, 'theme-main-cookie_consent_enable', 'yes', NULL, NULL);
INSERT INTO `settings` VALUES (65, 'theme-main-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies.', NULL, NULL);
INSERT INTO `settings` VALUES (66, 'theme-main-cookie_consent_button_text', 'Allow cookies', NULL, NULL);
INSERT INTO `settings` VALUES (67, 'theme-main-cookie_consent_learn_more_url', '', NULL, NULL);
INSERT INTO `settings` VALUES (68, 'theme-main-cookie_consent_learn_more_text', '', NULL, NULL);
INSERT INTO `settings` VALUES (69, 'theme-main-cookie_consent_background_color', '#000000', NULL, NULL);
INSERT INTO `settings` VALUES (70, 'theme-main-cookie_consent_text_color', '#FFFFFF', NULL, NULL);
INSERT INTO `settings` VALUES (71, 'theme-main-cookie_consent_max_width', '1170', NULL, NULL);
INSERT INTO `settings` VALUES (76, 'theme-main-Name_title_7', 'Nhiệm vụ của chúng tôi', NULL, NULL);
INSERT INTO `settings` VALUES (110, 'theme-main-name_about', 'Về Chung Tôi', NULL, NULL);
INSERT INTO `settings` VALUES (111, 'theme-main-name_title', 'Tầm nhìn', NULL, NULL);
INSERT INTO `settings` VALUES (112, 'theme-main-content_title', '1', NULL, NULL);
INSERT INTO `settings` VALUES (113, 'theme-main-name_title_2', 'Nhiệm Vụ', NULL, NULL);
INSERT INTO `settings` VALUES (114, 'theme-main-content_title_2', '2', NULL, NULL);
INSERT INTO `settings` VALUES (115, 'theme-main-name_title_3', 'Thương Hiệu', NULL, NULL);
INSERT INTO `settings` VALUES (116, 'theme-main-content_title_3', '3', NULL, NULL);
INSERT INTO `settings` VALUES (117, 'theme-main-name_title_4', 'Lịch Sử', NULL, NULL);
INSERT INTO `settings` VALUES (118, 'theme-main-content_title_4', '4', NULL, NULL);
INSERT INTO `settings` VALUES (119, 'theme-main-name_title_5', 'Sản Phẩm Của Chúng Tôi', NULL, NULL);
INSERT INTO `settings` VALUES (120, 'theme-main-content_title_5', '5', NULL, NULL);
INSERT INTO `settings` VALUES (121, 'theme-main-name_title_6', 'Tại Sao Chọn Chúng Tôi', NULL, NULL);
INSERT INTO `settings` VALUES (122, 'theme-main-content_title_6', '6', NULL, NULL);
INSERT INTO `settings` VALUES (125, 'theme-main-content_about', 'Chúng tôi luôn cố gắng vì bạn', NULL, NULL);
INSERT INTO `settings` VALUES (128, 'theme-main-link_FB', 'https://www.facebook.com/', NULL, NULL);
INSERT INTO `settings` VALUES (129, 'theme-main-link_instagram', '', NULL, NULL);
INSERT INTO `settings` VALUES (130, 'theme-main-link_linkedin', '', NULL, NULL);
INSERT INTO `settings` VALUES (131, 'theme-main-link_twitter', '', NULL, NULL);
INSERT INTO `settings` VALUES (132, 'theme-main-link_gmail', '', NULL, NULL);
INSERT INTO `settings` VALUES (133, 'theme-main-link_youtobe', '', NULL, NULL);
INSERT INTO `settings` VALUES (140, 'theme-main-name_title_8', 'Theo Dõi Chúng tôi', NULL, NULL);
INSERT INTO `settings` VALUES (141, 'theme-main-content_title_8', 'Nhập Tiếp Nhé', NULL, NULL);

-- ----------------------------
-- Table structure for simple_slider_items
-- ----------------------------
DROP TABLE IF EXISTS `simple_slider_items`;
CREATE TABLE `simple_slider_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of simple_slider_items
-- ----------------------------
INSERT INTO `simple_slider_items` VALUES (1, 1, 'Woman Fashion', 'sliders/1.jpg', '/products', 'Get up to 50% off Today Only!', 1, '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `simple_slider_items` VALUES (2, 1, 'Man Fashion', 'sliders/2.jpg', '/products', '50% off in all products', 2, '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `simple_slider_items` VALUES (3, 1, 'Summer Sale', 'sliders/3.jpg', '/products', 'Taking your Viewing Experience to Next Level', 3, '2021-02-17 08:32:25', '2021-02-17 08:32:25');

-- ----------------------------
-- Table structure for simple_sliders
-- ----------------------------
DROP TABLE IF EXISTS `simple_sliders`;
CREATE TABLE `simple_sliders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of simple_sliders
-- ----------------------------
INSERT INTO `simple_sliders` VALUES (1, 'Home slider', 'home-slider', 'The main slider on homepage', 'published', '2021-02-17 08:32:25', '2021-02-17 08:32:25');

-- ----------------------------
-- Table structure for slugs
-- ----------------------------
DROP TABLE IF EXISTS `slugs`;
CREATE TABLE `slugs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slugs
-- ----------------------------
INSERT INTO `slugs` VALUES (1, 'fashion-live', 1, 'Platform\\Ecommerce\\Models\\Brand', 'brands', '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `slugs` VALUES (2, 'hand-crafted', 2, 'Platform\\Ecommerce\\Models\\Brand', 'brands', '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `slugs` VALUES (3, 'mestonix', 3, 'Platform\\Ecommerce\\Models\\Brand', 'brands', '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `slugs` VALUES (4, 'sunshine', 4, 'Platform\\Ecommerce\\Models\\Brand', 'brands', '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `slugs` VALUES (5, 'pure', 5, 'Platform\\Ecommerce\\Models\\Brand', 'brands', '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `slugs` VALUES (6, 'anfold', 6, 'Platform\\Ecommerce\\Models\\Brand', 'brands', '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `slugs` VALUES (7, 'automotive', 7, 'Platform\\Ecommerce\\Models\\Brand', 'brands', '2021-02-17 08:32:11', '2021-02-17 08:32:11');
INSERT INTO `slugs` VALUES (8, 'television', 1, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (9, 'mobile', 2, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (10, 'headphone', 3, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (11, 'watches', 4, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (12, 'game', 5, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (13, 'camera', 6, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (14, 'audio', 7, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (15, 'mobile-tablet', 8, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (16, 'accessories', 9, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (17, 'home-audio-theater', 10, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (18, 'tv-smart-box', 11, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (19, 'printer', 12, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (20, 'computer', 13, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (21, 'fax-machine', 14, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (22, 'mouse', 15, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (23, 'sed-soluta-et-odio', 16, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (24, 'est-omnis-voluptas-ut', 17, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (25, 'autem-nam-quo-est', 18, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (26, 'est-et-qui-ea-ut-optio', 19, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (27, 'cum-voluptas-et-sit', 20, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (28, 'quaerat-ab-omnis-totam', 21, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (29, 'at-similique-iusto-nemo', 22, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (30, 'expedita-autem-ab-illum', 23, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (31, 'illo-rem-eum-odit', 24, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (32, 'et-nemo-natus-quas', 25, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (33, 'veritatis-cumque-in-aut', 26, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (34, 'quia-hic-quia-magni', 27, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (35, 'non-amet-eos-eligendi', 28, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (36, 'quis-id-nobis-quis', 29, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (37, 'cum-quibusdam-et-nemo', 30, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (38, 'odit-aliquid-culpa-sint', 31, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (39, 'ea-officiis-et-sed', 32, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (40, 'nihil-et-ea-non', 33, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (41, 'ad-amet-est-aliquam', 34, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (42, 'ut-ut-animi-velit-quia', 35, 'Platform\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-02-17 08:32:13', '2021-02-17 08:32:13');
INSERT INTO `slugs` VALUES (43, 'dual-camera-20mp', 1, 'Platform\\Ecommerce\\Models\\Product', 'products', '2021-02-17 08:32:17', '2021-02-17 08:32:17');
INSERT INTO `slugs` VALUES (44, 'smart-watches', 2, 'Platform\\Ecommerce\\Models\\Product', 'products', '2021-02-17 08:32:17', '2021-02-17 08:32:17');
INSERT INTO `slugs` VALUES (45, 'beat-headphone', 3, 'Platform\\Ecommerce\\Models\\Product', 'products', '2021-02-17 08:32:17', '2021-02-17 08:32:17');
INSERT INTO `slugs` VALUES (46, 'red-black-headphone', 4, 'Platform\\Ecommerce\\Models\\Product', 'products', '2021-02-17 08:32:17', '2021-02-17 08:32:17');
INSERT INTO `slugs` VALUES (47, 'smart-watch-external', 5, 'Platform\\Ecommerce\\Models\\Product', 'products', '2021-02-17 08:32:17', '2021-02-17 08:32:17');
INSERT INTO `slugs` VALUES (48, 'nikon-hd-camera', 6, 'Platform\\Ecommerce\\Models\\Product', 'products', '2021-02-17 08:32:17', '2021-02-17 08:32:17');
INSERT INTO `slugs` VALUES (49, 'audio-equipment', 7, 'Platform\\Ecommerce\\Models\\Product', 'products', '2021-02-17 08:32:17', '2021-02-17 08:32:17');
INSERT INTO `slugs` VALUES (50, 'smart-televisions', 8, 'Platform\\Ecommerce\\Models\\Product', 'products', '2021-02-17 08:32:17', '2021-02-17 08:32:17');
INSERT INTO `slugs` VALUES (51, 'samsung-smart-phone', 9, 'Platform\\Ecommerce\\Models\\Product', 'products', '2021-02-17 08:32:17', '2021-02-17 08:32:17');
INSERT INTO `slugs` VALUES (52, 'electronic', 1, 'Platform\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `slugs` VALUES (53, 'mobile', 2, 'Platform\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `slugs` VALUES (54, 'iphone', 3, 'Platform\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `slugs` VALUES (55, 'printer', 4, 'Platform\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `slugs` VALUES (56, 'office', 5, 'Platform\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `slugs` VALUES (57, 'it', 6, 'Platform\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-02-17 08:32:22', '2021-02-17 08:32:22');
INSERT INTO `slugs` VALUES (58, 'general', 1, 'Platform\\Blog\\Models\\Tag', 'tags', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (59, 'design', 2, 'Platform\\Blog\\Models\\Tag', 'tags', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (60, 'jquery', 3, 'Platform\\Blog\\Models\\Tag', 'tags', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (61, 'branding', 4, 'Platform\\Blog\\Models\\Tag', 'tags', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (62, 'modern', 5, 'Platform\\Blog\\Models\\Tag', 'tags', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (63, 'ecommerce', 1, 'Platform\\Blog\\Models\\Category', 'news', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (64, 'fashion', 2, 'Platform\\Blog\\Models\\Category', 'news', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (65, 'electronic', 3, 'Platform\\Blog\\Models\\Category', 'news', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (66, 'commercial', 4, 'Platform\\Blog\\Models\\Category', 'news', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (67, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Platform\\Blog\\Models\\Post', 'news', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (68, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Platform\\Blog\\Models\\Post', 'news', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (69, 'the-top-2020-handbag-trends-to-know', 3, 'Platform\\Blog\\Models\\Post', 'news', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (70, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Platform\\Blog\\Models\\Post', 'news', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (71, 'how-to-care-for-leather-bags', 5, 'Platform\\Blog\\Models\\Post', 'news', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (72, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Platform\\Blog\\Models\\Post', 'news', '2021-02-17 08:32:24', '2021-02-17 08:32:27');
INSERT INTO `slugs` VALUES (73, 'home', 1, 'Platform\\Page\\Models\\Page', '', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `slugs` VALUES (74, 'contact-us', 2, 'Platform\\Page\\Models\\Page', '', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `slugs` VALUES (75, 'blog', 3, 'Platform\\Page\\Models\\Page', '', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `slugs` VALUES (76, 'about-us', 4, 'Platform\\Page\\Models\\Page', '', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `slugs` VALUES (77, 'faq', 5, 'Platform\\Page\\Models\\Page', '', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `slugs` VALUES (78, 'location', 6, 'Platform\\Page\\Models\\Page', '', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `slugs` VALUES (79, 'affiliates', 7, 'Platform\\Page\\Models\\Page', '', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `slugs` VALUES (80, 'brands', 8, 'Platform\\Page\\Models\\Page', '', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `slugs` VALUES (81, 'cookie-policy', 9, 'Platform\\Page\\Models\\Page', '', '2021-02-17 08:32:25', '2021-02-17 08:32:25');
INSERT INTO `slugs` VALUES (82, 'trang-chu', 10, 'Platform\\Page\\Models\\Page', '', '2021-05-16 04:59:41', '2021-05-16 04:59:41');
INSERT INTO `slugs` VALUES (83, 'smart-televisions', 29, 'Platform\\Ecommerce\\Models\\Product', 'products', '2021-05-16 09:00:52', '2021-05-16 09:00:52');
INSERT INTO `slugs` VALUES (84, 've-chung-toi', 11, 'Platform\\Page\\Models\\Page', '', '2021-05-16 09:14:18', '2021-05-16 09:14:18');
INSERT INTO `slugs` VALUES (85, 'lien-he', 12, 'Platform\\Page\\Models\\Page', '', '2021-05-16 09:14:52', '2021-05-16 09:14:52');
INSERT INTO `slugs` VALUES (86, 'tin-tuc', 5, 'Platform\\Blog\\Models\\Category', '', '2021-05-16 09:19:07', '2021-05-16 09:19:07');
INSERT INTO `slugs` VALUES (87, 'san-pham', 6, 'Platform\\Blog\\Models\\Category', '', '2021-05-16 09:19:59', '2021-05-16 09:19:59');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Platform\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, 'General', 1, 'Platform\\ACL\\Models\\User', '', 'published', '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `tags` VALUES (2, 'Design', 1, 'Platform\\ACL\\Models\\User', '', 'published', '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `tags` VALUES (3, 'Jquery', 1, 'Platform\\ACL\\Models\\User', '', 'published', '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `tags` VALUES (4, 'Branding', 1, 'Platform\\ACL\\Models\\User', '', 'published', '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `tags` VALUES (5, 'Modern', 1, 'Platform\\ACL\\Models\\User', '', 'published', '2021-02-17 08:32:24', '2021-02-17 08:32:24');

-- ----------------------------
-- Table structure for testimonials
-- ----------------------------
DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testimonials
-- ----------------------------
INSERT INTO `testimonials` VALUES (1, 'Donald H. Hilixer', 'I\'m quite tired and out of this remark, and.', 'testimonials/1.jpg', 'Founder, Hilix', 'published', '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `testimonials` VALUES (2, 'Rosalina D. William', 'She was looking about for it, he was in.', 'testimonials/2.jpg', 'Founder, qux co.', 'published', '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `testimonials` VALUES (3, 'John Becker', 'I can creep under the door; so either way I\'ll.', 'testimonials/3.jpg', 'CEO, Highlands coffee', 'published', '2021-02-17 08:32:24', '2021-02-17 08:32:24');
INSERT INTO `testimonials` VALUES (4, 'Browfish Dumble', 'New Zealand or Australia?\' (and she tried her.', 'testimonials/4.jpg', 'Founder, Condo', 'published', '2021-02-17 08:32:24', '2021-02-17 08:32:24');

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3871 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of translations
-- ----------------------------
INSERT INTO `translations` VALUES (1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (2, 1, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (3, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (4, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (5, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (7, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (8, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (9, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (10, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (11, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (12, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (13, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (14, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (15, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (16, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (17, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (18, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (19, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (20, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (21, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (22, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (23, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (24, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (25, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (26, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (27, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (28, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (29, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (30, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (31, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (32, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (33, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (34, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (35, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (36, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (37, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (38, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (39, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (40, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (41, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (42, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (43, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (44, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (45, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (46, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (47, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (48, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (49, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (50, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (51, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (52, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (53, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (54, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (55, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (56, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (57, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (58, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (59, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (60, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (61, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (62, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (63, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (64, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (65, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (66, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (67, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (68, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (69, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (70, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (71, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (72, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (73, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (74, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (75, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (76, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (77, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (78, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (79, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (80, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (81, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (82, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (83, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (84, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (85, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (86, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (87, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (88, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (89, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (90, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (91, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (92, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (93, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (94, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (95, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (96, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (97, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (98, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (99, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (100, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (101, 1, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (102, 1, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (103, 1, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (104, 1, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (105, 1, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (106, 1, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (107, 1, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (108, 1, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (109, 1, 'en', 'core/acl/api', 'cancel_delete', 'No', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (110, 1, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (111, 1, 'en', 'core/acl/api', 'name', 'Name', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (112, 1, 'en', 'core/acl/api', 'cancel', 'Cancel', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (113, 1, 'en', 'core/acl/api', 'save', 'Save', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (114, 1, 'en', 'core/acl/api', 'edit', 'Edit', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (115, 1, 'en', 'core/acl/api', 'delete', 'Delete', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (116, 1, 'en', 'core/acl/api', 'client_id', 'Client ID', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (117, 1, 'en', 'core/acl/api', 'secret', 'Secret', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (118, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (119, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (120, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (121, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (122, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (123, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (124, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (125, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (126, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (127, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (128, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (129, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (130, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (131, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (132, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (133, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (134, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (135, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (136, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (137, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (138, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (139, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (140, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (141, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (142, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (143, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (144, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (145, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (146, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (147, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (148, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (149, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (150, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (151, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (152, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (153, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (154, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (155, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (156, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (157, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (158, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (159, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (160, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (161, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (162, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (163, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (164, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (165, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (166, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (167, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (168, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (169, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (170, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (171, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (172, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (173, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (174, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (175, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (176, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (177, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (178, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (179, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (180, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (181, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (182, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (183, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (184, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (185, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (186, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (187, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (188, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (189, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (190, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (191, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (192, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (193, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (194, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (195, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (196, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (197, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (198, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (199, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (200, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (201, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (202, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (203, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (204, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (205, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (206, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (207, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (208, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (209, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (210, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (211, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (212, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (213, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (214, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (215, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (216, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (217, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (218, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (219, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (220, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (221, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (222, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (223, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (224, 1, 'en', 'core/acl/users', 'email', 'Email', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (225, 1, 'en', 'core/acl/users', 'role', 'Role', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (226, 1, 'en', 'core/acl/users', 'username', 'Username', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (227, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (228, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (229, 1, 'en', 'core/acl/users', 'message', 'Message', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (230, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (231, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (232, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (233, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (234, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (235, 1, 'en', 'core/acl/users', 'password', 'Password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (236, 1, 'en', 'core/acl/users', 'save', 'Save', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (237, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (238, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (239, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (240, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (241, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (242, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (243, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (244, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (245, 1, 'en', 'core/acl/users', 'close', 'Close', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (246, 1, 'en', 'core/acl/users', 'update', 'Update', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (247, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (248, 1, 'en', 'core/acl/users', 'users', 'Users', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (249, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (250, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (251, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (252, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (253, 1, 'en', 'core/acl/users', 'info.email', 'Email', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (254, 1, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (255, 1, 'en', 'core/acl/users', 'info.address', 'Address', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (256, 1, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (257, 1, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (258, 1, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (259, 1, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (260, 1, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (261, 1, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (262, 1, 'en', 'core/acl/users', 'info.about', 'About', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (263, 1, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (264, 1, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (265, 1, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (266, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (267, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (268, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (269, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (270, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (271, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (272, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (273, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (274, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (275, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (276, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (277, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (278, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (279, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (280, 1, 'vi', 'core/acl/auth', 'login.username', 'Tên truy cập', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (281, 1, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (282, 1, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (283, 1, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (284, 1, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (285, 1, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (286, 1, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (287, 1, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (288, 1, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (289, 1, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (290, 1, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (291, 1, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (292, 1, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (293, 1, 'vi', 'core/acl/auth', 'login.email', 'Email', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (294, 1, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (295, 1, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (296, 1, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (297, 1, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (298, 1, 'vi', 'core/acl/auth', 'reset.repassword', 'Xác nhận mật khẩu mới', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (299, 1, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (300, 1, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (301, 1, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (302, 1, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (303, 1, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (304, 1, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (305, 1, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (306, 1, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (307, 1, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (308, 1, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (309, 1, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (310, 1, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (311, 1, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (312, 1, 'vi', 'core/acl/auth', 'repassword', 'Xác nhận mật khẩu', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (313, 1, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (314, 1, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (315, 1, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (316, 1, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (317, 1, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (318, 1, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (319, 1, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (320, 1, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (321, 1, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (322, 1, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (323, 1, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (324, 1, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (325, 1, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (326, 1, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (327, 1, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (328, 1, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (329, 1, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (330, 1, 'vi', 'core/acl/permissions', 'list', 'Danh sách phân quyền', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (331, 1, 'vi', 'core/acl/permissions', 'name', 'Tên', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (332, 1, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (333, 1, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (334, 1, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (335, 1, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (336, 1, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (337, 1, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (338, 1, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (339, 1, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (340, 1, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (341, 1, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (342, 1, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (343, 1, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (344, 1, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (345, 1, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (346, 1, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (347, 1, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (348, 1, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (349, 1, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (350, 1, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (351, 1, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (352, 1, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (353, 1, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (354, 1, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (355, 1, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (356, 1, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (357, 1, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (358, 1, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (359, 1, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (360, 1, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (361, 1, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (362, 1, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (363, 1, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (364, 1, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (365, 1, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (366, 1, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (367, 1, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (368, 1, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (369, 1, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (370, 1, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (371, 1, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (372, 1, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (373, 1, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2021-02-24 05:13:28', '2021-02-24 05:13:28');
INSERT INTO `translations` VALUES (374, 1, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (375, 1, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (376, 1, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (377, 1, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (378, 1, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (379, 1, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (380, 1, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (381, 1, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (382, 1, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (383, 1, 'vi', 'core/acl/users', 'email', 'Email', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (384, 1, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (385, 1, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (386, 1, 'vi', 'core/acl/users', 'first_name', 'Họ', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (387, 1, 'vi', 'core/acl/users', 'last_name', 'Tên', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (388, 1, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (389, 1, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (390, 1, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (391, 1, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (392, 1, 'vi', 'core/acl/users', 'save', 'Lưu', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (393, 1, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (394, 1, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (395, 1, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (396, 1, 'vi', 'core/acl/users', 'list', 'Danh sách thành viên', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (397, 1, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (398, 1, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (399, 1, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (400, 1, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (401, 1, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (402, 1, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (403, 1, 'vi', 'core/acl/users', 'close', 'Đóng', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (404, 1, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (405, 1, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (406, 1, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (407, 1, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (408, 1, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (409, 1, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (410, 1, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (411, 1, 'vi', 'core/acl/users', 'info.email', 'Email', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (412, 1, 'vi', 'core/acl/users', 'info.second_email', 'Email dự phòng', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (413, 1, 'vi', 'core/acl/users', 'info.address', 'Địa chỉ', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (414, 1, 'vi', 'core/acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (415, 1, 'vi', 'core/acl/users', 'info.birth_day', 'Ngày sinh', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (416, 1, 'vi', 'core/acl/users', 'info.job', 'Nghề nghiệp', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (417, 1, 'vi', 'core/acl/users', 'info.mobile_number', 'Số điện thoại di động', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (418, 1, 'vi', 'core/acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (419, 1, 'vi', 'core/acl/users', 'info.interes', 'Sở thích', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (420, 1, 'vi', 'core/acl/users', 'info.about', 'Giới thiệu', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (421, 1, 'vi', 'core/acl/users', 'gender.title', 'Giới tính', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (422, 1, 'vi', 'core/acl/users', 'gender.male', 'nam', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (423, 1, 'vi', 'core/acl/users', 'gender.female', 'nữ', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (424, 1, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (425, 1, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (426, 1, 'en', 'core/base/base', 'yes', 'Yes', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (427, 1, 'en', 'core/base/base', 'no', 'No', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (428, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (429, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (430, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (431, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (432, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (433, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (434, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (435, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (436, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (437, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (438, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (439, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (440, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (441, 1, 'en', 'core/base/base', 'image', 'Image', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (442, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (443, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (444, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (445, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (446, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (447, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (448, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (449, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (450, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (451, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (452, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (453, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (454, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (455, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (456, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (457, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (458, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (459, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (460, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (461, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (462, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (463, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (464, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (465, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (466, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (467, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (468, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (469, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (470, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (471, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (472, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (473, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://shopwise.local/admin\">clicking here</a>.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (474, 1, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (475, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (476, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (477, 1, 'en', 'core/base/forms', 'save', 'Save', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (478, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (479, 1, 'en', 'core/base/forms', 'image', 'Image', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (480, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (481, 1, 'en', 'core/base/forms', 'create', 'Create', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (482, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (483, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (484, 1, 'en', 'core/base/forms', 'ok', 'OK', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (485, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (486, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (487, 1, 'en', 'core/base/forms', 'template', 'Template', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (488, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (489, 1, 'en', 'core/base/forms', 'file', 'File', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (490, 1, 'en', 'core/base/forms', 'content', 'Content', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (491, 1, 'en', 'core/base/forms', 'description', 'Description', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (492, 1, 'en', 'core/base/forms', 'name', 'Name', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (493, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (494, 1, 'en', 'core/base/forms', 'title', 'Title', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (495, 1, 'en', 'core/base/forms', 'value', 'Value', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (496, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (497, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (498, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (499, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (500, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (501, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (502, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (503, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (504, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (505, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (506, 1, 'en', 'core/base/forms', 'update', 'Update', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (507, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (508, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (509, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (510, 1, 'en', 'core/base/forms', 'order', 'Order', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (511, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (512, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (513, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (514, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (515, 1, 'en', 'core/base/forms', 'add', 'Add', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (516, 1, 'en', 'core/base/forms', 'link', 'Link', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (517, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (518, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (519, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (520, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (521, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (522, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (523, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (524, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (525, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (526, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (527, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (528, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (529, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (530, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (531, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (532, 1, 'en', 'core/base/layouts', 'home', 'Home', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (533, 1, 'en', 'core/base/layouts', 'search', 'Search', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (534, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (535, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (536, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (537, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (538, 1, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (539, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (540, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (541, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (542, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (543, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (544, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (545, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (546, 1, 'en', 'core/base/notices', 'error', 'Error!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (547, 1, 'en', 'core/base/notices', 'success', 'Success!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (548, 1, 'en', 'core/base/notices', 'info', 'Info!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (549, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (550, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (551, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (552, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (553, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (554, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (555, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (556, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (557, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (558, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (559, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (560, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (561, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (562, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (563, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (564, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (565, 1, 'en', 'core/base/system', 'user.email', 'Email', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (566, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (567, 1, 'en', 'core/base/system', 'user.username', 'Username', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (568, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (569, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (570, 1, 'en', 'core/base/system', 'user.create', 'Create', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (571, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (572, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (573, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (574, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (575, 1, 'en', 'core/base/system', 'options.info', 'System information', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (576, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (577, 1, 'en', 'core/base/system', 'info.title', 'System information', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (578, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (579, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (580, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (581, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (582, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (583, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (584, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (585, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (586, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (587, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (588, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (589, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (590, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (591, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (592, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (593, 1, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (594, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (595, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (596, 1, 'en', 'core/base/system', 'database', 'Database', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (597, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (598, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (599, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (600, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (601, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (602, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (603, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (604, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (605, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (606, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (607, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (608, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (609, 1, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (610, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (611, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (612, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (613, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (614, 1, 'en', 'core/base/system', 'version', 'Version', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (615, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (616, 1, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (617, 1, 'en', 'core/base/tables', 'id', 'ID', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (618, 1, 'en', 'core/base/tables', 'name', 'Name', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (619, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (620, 1, 'en', 'core/base/tables', 'title', 'Title', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (621, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (622, 1, 'en', 'core/base/tables', 'order', 'Order', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (623, 1, 'en', 'core/base/tables', 'status', 'Status', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (624, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (625, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (626, 1, 'en', 'core/base/tables', 'description', 'Description', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (627, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (628, 1, 'en', 'core/base/tables', 'url', 'URL', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (629, 1, 'en', 'core/base/tables', 'author', 'Author', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (630, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (631, 1, 'en', 'core/base/tables', 'column', 'Column', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (632, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (633, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (634, 1, 'en', 'core/base/tables', 'views', 'Views', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (635, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (636, 1, 'en', 'core/base/tables', 'session', 'Session', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (637, 1, 'en', 'core/base/tables', 'activated', 'activated', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (638, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (639, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (640, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (641, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (642, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (643, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (644, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (645, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (646, 1, 'en', 'core/base/tables', 'export', 'Export', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (647, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (648, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (649, 1, 'en', 'core/base/tables', 'print', 'Print', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (650, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (651, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (652, 1, 'en', 'core/base/tables', 'display', 'Display', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (653, 1, 'en', 'core/base/tables', 'all', 'All', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (654, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (655, 1, 'en', 'core/base/tables', 'action', 'Actions', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (656, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (657, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (658, 1, 'en', 'core/base/tables', 'save', 'Save', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (659, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (660, 1, 'en', 'core/base/tables', 'to', 'to', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (661, 1, 'en', 'core/base/tables', 'in', 'in', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (662, 1, 'en', 'core/base/tables', 'records', 'records', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (663, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (664, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (665, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (666, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (667, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (668, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (669, 1, 'en', 'core/base/tables', 'template', 'Template', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (670, 1, 'en', 'core/base/tables', 'email', 'Email', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (671, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (672, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (673, 1, 'en', 'core/base/tables', 'image', 'Image', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (674, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (675, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (676, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (677, 1, 'en', 'core/base/tabs', 'file', 'Files', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (678, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (679, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (680, 1, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (681, 1, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (682, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (683, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (684, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (685, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (686, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (687, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (688, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (689, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (690, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (691, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (692, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (693, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (694, 1, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (695, 1, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (696, 1, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (697, 1, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (698, 1, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (699, 1, 'vi', 'core/base/enums', 'statuses.publish', 'Đã xuất bản', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (700, 1, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (701, 1, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (702, 1, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (703, 1, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (704, 1, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (705, 1, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (706, 1, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (707, 1, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (708, 1, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (709, 1, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (710, 1, 'vi', 'core/base/forms', 'save', 'Lưu', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (711, 1, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (712, 1, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (713, 1, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (714, 1, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (715, 1, 'vi', 'core/base/forms', 'edit', 'Sửa', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (716, 1, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (717, 1, 'vi', 'core/base/forms', 'ok', 'OK', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (718, 1, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (719, 1, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (720, 1, 'vi', 'core/base/forms', 'template', 'Template', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (721, 1, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (722, 1, 'vi', 'core/base/forms', 'file', 'Tập tin', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (723, 1, 'vi', 'core/base/forms', 'content', 'Nội dung', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (724, 1, 'vi', 'core/base/forms', 'description', 'Mô tả', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (725, 1, 'vi', 'core/base/forms', 'name', 'Tên', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (726, 1, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (727, 1, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (728, 1, 'vi', 'core/base/forms', 'parent', 'Cha', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (729, 1, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (730, 1, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (731, 1, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (732, 1, 'vi', 'core/base/forms', 'slug', 'Slug', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (733, 1, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (734, 1, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (735, 1, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (736, 1, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (737, 1, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (738, 1, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (739, 1, 'vi', 'core/base/forms', 'add', 'Thêm', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (740, 1, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (741, 1, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (742, 1, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (743, 1, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (744, 1, 'vi', 'core/base/forms', 'link', 'Liên kết', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (745, 1, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (746, 1, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (747, 1, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (748, 1, 'vi', 'core/base/forms', 'value', 'Giá trị', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (749, 1, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (750, 1, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (751, 1, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (752, 1, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (753, 1, 'vi', 'core/base/layouts', 'appearance', 'Hiển thị', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (754, 1, 'vi', 'core/base/layouts', 'menu', 'Trình đơn', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (755, 1, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (756, 1, 'vi', 'core/base/layouts', 'theme_options', 'Tuỳ chọn giao diện', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (757, 1, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (758, 1, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (759, 1, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (760, 1, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (761, 1, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (762, 1, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (763, 1, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (764, 1, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (765, 1, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (766, 1, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (767, 1, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (768, 1, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (769, 1, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (770, 1, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (771, 1, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (772, 1, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (773, 1, 'vi', 'core/base/mail', 'send-fail', 'Gửi email không thành công', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (774, 1, 'vi', 'core/base/mail', 'happy_birthday', 'Chúc mừng sinh nhật!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (775, 1, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (776, 1, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (777, 1, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (778, 1, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (779, 1, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (780, 1, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (781, 1, 'vi', 'core/base/notices', 'cannot_delete', 'Không thể xóa bản ghi này', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (782, 1, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (783, 1, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (784, 1, 'vi', 'core/base/notices', 'success', 'Thành công!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (785, 1, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (786, 1, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (787, 1, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (788, 1, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (789, 1, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (790, 1, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (791, 1, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (792, 1, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (793, 1, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (794, 1, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (795, 1, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (796, 1, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (797, 1, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (798, 1, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (799, 1, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (800, 1, 'vi', 'core/base/system', 'user.email', 'Email', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (801, 1, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (802, 1, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (803, 1, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (804, 1, 'vi', 'core/base/system', 'user.create', 'Thêm', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (805, 1, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (806, 1, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (807, 1, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (808, 1, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (809, 1, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (810, 1, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (811, 1, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (812, 1, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (813, 1, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (814, 1, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (815, 1, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (816, 1, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2021-02-24 05:13:29', '2021-02-24 05:13:29');
INSERT INTO `translations` VALUES (817, 1, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (818, 1, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (819, 1, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (820, 1, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (821, 1, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (822, 1, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (823, 1, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (824, 1, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (825, 1, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (826, 1, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (827, 1, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (828, 1, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (829, 1, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (830, 1, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (831, 1, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (832, 1, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (833, 1, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (834, 1, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (835, 1, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (836, 1, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (837, 1, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (838, 1, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (839, 1, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (840, 1, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (841, 1, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (842, 1, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (843, 1, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (844, 1, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (845, 1, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (846, 1, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (847, 1, 'vi', 'core/base/system', 'version', 'Phiên bản', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (848, 1, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (849, 1, 'vi', 'core/base/tables', 'filter_enabled', 'Tìm kiếm nâng cao đã được kích hoạt', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (850, 1, 'vi', 'core/base/tables', 'id', 'ID', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (851, 1, 'vi', 'core/base/tables', 'name', 'Tên', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (852, 1, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (853, 1, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (854, 1, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (855, 1, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (856, 1, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (857, 1, 'vi', 'core/base/tables', 'loading_data', 'Đang tải dữ liệu từ server', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (858, 1, 'vi', 'core/base/tables', 'url', 'URL', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (859, 1, 'vi', 'core/base/tables', 'author', 'Người tạo', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (860, 1, 'vi', 'core/base/tables', 'column', 'Cột', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (861, 1, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (862, 1, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (863, 1, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (864, 1, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (865, 1, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (866, 1, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (867, 1, 'vi', 'core/base/tables', 'description', 'Mô tả', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (868, 1, 'vi', 'core/base/tables', 'session', 'Phiên', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (869, 1, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (870, 1, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (871, 1, 'vi', 'core/base/tables', 'edit', 'Sửa', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (872, 1, 'vi', 'core/base/tables', 'delete', 'Xóa', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (873, 1, 'vi', 'core/base/tables', 'action', 'Hành động', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (874, 1, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (875, 1, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (876, 1, 'vi', 'core/base/tables', 'all', 'Tất cả', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (877, 1, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (878, 1, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (879, 1, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (880, 1, 'vi', 'core/base/tables', 'csv', 'CSV', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (881, 1, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (882, 1, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (883, 1, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (884, 1, 'vi', 'core/base/tables', 'excel', 'Excel', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (885, 1, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (886, 1, 'vi', 'core/base/tables', 'filter', 'Nhập từ khóa...', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (887, 1, 'vi', 'core/base/tables', 'filtered_from', 'được lọc từ', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (888, 1, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (889, 1, 'vi', 'core/base/tables', 'loading', 'Đang tải dữ liệu từ hệ thống', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (890, 1, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (891, 1, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (892, 1, 'vi', 'core/base/tables', 'pdf', 'PDF', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (893, 1, 'vi', 'core/base/tables', 'print', 'In', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (894, 1, 'vi', 'core/base/tables', 'records', 'bản ghi', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (895, 1, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (896, 1, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (897, 1, 'vi', 'core/base/tables', 'save', 'Lưu', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (898, 1, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (899, 1, 'vi', 'core/base/tables', 'template', 'Giao diện', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (900, 1, 'vi', 'core/base/tables', 'to', 'đến', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (901, 1, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (902, 1, 'vi', 'core/base/tables', 'email', 'Email', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (903, 1, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (904, 1, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (905, 1, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (906, 1, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (907, 1, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (908, 1, 'vi', 'core/base/tables', 'slug', 'Slug', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (909, 1, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (910, 1, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (911, 1, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (912, 1, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (913, 1, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (914, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (915, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (916, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (917, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (918, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (919, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (920, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (921, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (922, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (923, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (924, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (925, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (926, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (927, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (928, 1, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (929, 1, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (930, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (931, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (932, 1, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (933, 1, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (934, 1, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (935, 1, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (936, 1, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (937, 1, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (938, 1, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (939, 1, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (940, 1, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (941, 1, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (942, 1, 'en', 'core/media/media', 'filter', 'Filter', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (943, 1, 'en', 'core/media/media', 'everything', 'Everything', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (944, 1, 'en', 'core/media/media', 'image', 'Image', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (945, 1, 'en', 'core/media/media', 'video', 'Video', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (946, 1, 'en', 'core/media/media', 'document', 'Document', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (947, 1, 'en', 'core/media/media', 'view_in', 'View in', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (948, 1, 'en', 'core/media/media', 'all_media', 'All media', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (949, 1, 'en', 'core/media/media', 'trash', 'Trash', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (950, 1, 'en', 'core/media/media', 'recent', 'Recent', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (951, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (952, 1, 'en', 'core/media/media', 'upload', 'Upload', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (953, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (954, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (955, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (956, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (957, 1, 'en', 'core/media/media', 'sort', 'Sort', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (958, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (959, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (960, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (961, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (962, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (963, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (964, 1, 'en', 'core/media/media', 'actions', 'Actions', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (965, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (966, 1, 'en', 'core/media/media', 'insert', 'Insert', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (967, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (968, 1, 'en', 'core/media/media', 'create', 'Create', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (969, 1, 'en', 'core/media/media', 'rename', 'Rename', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (970, 1, 'en', 'core/media/media', 'close', 'Close', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (971, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (972, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (973, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (974, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (975, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (976, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (977, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (978, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (979, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (980, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (981, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (982, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (983, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (984, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (985, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (986, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (987, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (988, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (989, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (990, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (991, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (992, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (993, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (994, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (995, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (996, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (997, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (998, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (999, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1000, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1001, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1002, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1003, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1004, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1005, 1, 'en', 'core/media/media', 'add', 'Add media', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1006, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1007, 1, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1008, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1009, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1010, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1011, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1012, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1013, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1014, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1015, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1016, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1017, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1018, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1019, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1020, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1021, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1022, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1023, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1024, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1025, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1026, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1027, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1028, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1029, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1030, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1031, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1032, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1033, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1034, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1035, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1036, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1037, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1038, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1039, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1040, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1041, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1042, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1043, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1044, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1045, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1046, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1047, 1, 'vi', 'core/media/media', 'filter', 'Lọc', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1048, 1, 'vi', 'core/media/media', 'everything', 'Tất cả', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1049, 1, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1050, 1, 'vi', 'core/media/media', 'video', 'Phim', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1051, 1, 'vi', 'core/media/media', 'document', 'Tài liệu', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1052, 1, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1053, 1, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1054, 1, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1055, 1, 'vi', 'core/media/media', 'recent', 'Gần đây', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1056, 1, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1057, 1, 'vi', 'core/media/media', 'upload', 'Tải lên', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1058, 1, 'vi', 'core/media/media', 'add_from', 'Thêm từ', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1059, 1, 'vi', 'core/media/media', 'youtube', 'Youtube', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1060, 1, 'vi', 'core/media/media', 'vimeo', 'Vimeo', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1061, 1, 'vi', 'core/media/media', 'vine', 'Vine', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1062, 1, 'vi', 'core/media/media', 'daily_motion', 'Dailymotion', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1063, 1, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1064, 1, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1065, 1, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1066, 1, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1067, 1, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1068, 1, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1069, 1, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1070, 1, 'vi', 'core/media/media', 'created_date_asc', 'Ngày tạo - ASC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1071, 1, 'vi', 'core/media/media', 'created_date_desc', 'Ngày tạo - DESC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1072, 1, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1073, 1, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1074, 1, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1075, 1, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1076, 1, 'vi', 'core/media/media', 'actions', 'Hành động', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1077, 1, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1078, 1, 'vi', 'core/media/media', 'insert', 'Chèn', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1079, 1, 'vi', 'core/media/media', 'coming_soon', 'Đang phát triển', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1080, 1, 'vi', 'core/media/media', 'add_from_youtube', 'Thêm từ youtube', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1081, 1, 'vi', 'core/media/media', 'playlist', 'Playlist', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1082, 1, 'vi', 'core/media/media', 'add_url', 'Thêm đường dẫn', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1083, 1, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1084, 1, 'vi', 'core/media/media', 'create', 'Tạo', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1085, 1, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1086, 1, 'vi', 'core/media/media', 'close', 'Đóng', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1087, 1, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1088, 1, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1089, 1, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1090, 1, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1091, 1, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1092, 1, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1093, 1, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1094, 1, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1095, 1, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1096, 1, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1097, 1, 'vi', 'core/media/media', 'name_reserved', 'Tên này không được phép đặt', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1098, 1, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1099, 1, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1100, 1, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1101, 1, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1102, 1, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1103, 1, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1104, 1, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1105, 1, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1106, 1, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1107, 1, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1108, 1, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1109, 1, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1110, 1, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1111, 1, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1112, 1, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1113, 1, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1114, 1, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1115, 1, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1116, 1, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1117, 1, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1118, 1, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1119, 1, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1120, 1, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1121, 1, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1122, 1, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1123, 1, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1124, 1, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1125, 1, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1126, 1, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1127, 1, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1128, 1, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1129, 1, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1130, 1, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1131, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.original_msg', 'Vui lòng nhập chính xác đường dẫn Youtube', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1132, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Vui lòng khai báo API key của Youtube', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1133, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Liên kết này không dẫn đến Youtube', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1134, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.error_msg', 'Có lỗi xảy ra trong tiến trình thực hiện...', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1135, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1136, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1137, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1138, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1139, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1140, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1141, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1142, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1143, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1144, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1145, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1146, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1147, 1, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1148, 1, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1149, 1, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1150, 1, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1151, 1, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1152, 1, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1153, 1, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1154, 1, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1155, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1156, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1157, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1158, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1159, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1160, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1161, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1162, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1163, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1164, 1, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1165, 1, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1166, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1167, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1168, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1169, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1170, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1171, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1172, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1173, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1174, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1175, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1176, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1177, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1178, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1179, 1, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1180, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1181, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1182, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1183, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1184, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1185, 1, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1186, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1187, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1188, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1189, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1190, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1191, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1192, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1193, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-02-24 05:13:30', '2021-02-24 05:13:30');
INSERT INTO `translations` VALUES (1194, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1195, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1196, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1197, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1198, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1199, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1200, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1201, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1202, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1203, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1204, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1205, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1206, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1207, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1208, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1209, 1, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1210, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1211, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1212, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Language direction', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1213, 1, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1214, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1215, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1216, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1217, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1218, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1219, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1220, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1221, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1222, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1223, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1224, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1225, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1226, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1227, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1228, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1229, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1230, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1231, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1232, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1233, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1234, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1235, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1236, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1237, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1238, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1239, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1240, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1241, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1242, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1243, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1244, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1245, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1246, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1247, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1248, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1249, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1250, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1251, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1252, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1253, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1254, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1255, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1256, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1257, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1258, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1259, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1260, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1261, 1, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1262, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1263, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1264, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1265, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1266, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1267, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1268, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1269, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1270, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1271, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1272, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1273, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1274, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1275, 1, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1276, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1277, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1278, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1279, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1280, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1281, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1282, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1283, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1284, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1285, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1286, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1287, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1288, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1289, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1290, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1291, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1292, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1293, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1294, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1295, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1296, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1297, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1298, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1299, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1300, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1301, 1, 'en', 'core/setting/setting', 'template', 'Template', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1302, 1, 'en', 'core/setting/setting', 'description', 'Description', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1303, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1304, 1, 'en', 'core/setting/setting', 'send', 'Send', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1305, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1306, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1307, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1308, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1309, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1310, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1311, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1312, 1, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1313, 1, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1314, 1, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1315, 1, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1316, 1, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1317, 1, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1318, 1, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1319, 1, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1320, 1, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1321, 1, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1322, 1, 'vi', 'core/setting/setting', 'general.seo_keywords', 'Từ khoá SEO', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1323, 1, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1324, 1, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1325, 1, 'vi', 'core/setting/setting', 'general.enable_captcha', 'Sử dụng Captcha?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1326, 1, 'vi', 'core/setting/setting', 'general.contact_block', 'Thông tin liên hệ', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1327, 1, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1328, 1, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1329, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1330, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1331, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1332, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1333, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_keywords', 'Từ khoá SEO (tối đa 60 kí tự, phân cách từ khóa bằng dấu phẩy)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1334, 1, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1335, 1, 'vi', 'core/setting/setting', 'general.enable_multi_language_in_admin', 'Cho phép thay đổi ngôn ngữ trang quản trị?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1336, 1, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1337, 1, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1338, 1, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1339, 1, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm (phút)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1340, 1, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1341, 1, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1342, 1, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1343, 1, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1344, 1, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1345, 1, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1346, 1, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1347, 1, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1348, 1, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1349, 1, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1350, 1, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1351, 1, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1352, 1, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1353, 1, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1354, 1, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1355, 1, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1356, 1, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1357, 1, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1358, 1, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1359, 1, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1360, 1, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1361, 1, 'vi', 'core/setting/setting', 'email.driver', 'Loại', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1362, 1, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1363, 1, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1364, 1, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1365, 1, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1366, 1, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1367, 1, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1368, 1, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1369, 1, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1370, 1, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1371, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1372, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1373, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1374, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1375, 1, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1376, 1, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1377, 1, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1378, 1, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1379, 1, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1380, 1, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1381, 1, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1382, 1, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1383, 1, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1384, 1, 'vi', 'core/setting/setting', 'enable', 'Bật', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1385, 1, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1386, 1, 'en', 'core/table/general', 'operations', 'Operations', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1387, 1, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1388, 1, 'en', 'core/table/general', 'display', 'Display', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1389, 1, 'en', 'core/table/general', 'all', 'All', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1390, 1, 'en', 'core/table/general', 'edit_entry', 'Edit', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1391, 1, 'en', 'core/table/general', 'delete_entry', 'Delete', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1392, 1, 'en', 'core/table/general', 'show_from', 'Showing from', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1393, 1, 'en', 'core/table/general', 'to', 'to', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1394, 1, 'en', 'core/table/general', 'in', 'in', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1395, 1, 'en', 'core/table/general', 'records', 'records', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1396, 1, 'en', 'core/table/general', 'no_data', 'No data to display', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1397, 1, 'en', 'core/table/general', 'no_record', 'No record', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1398, 1, 'en', 'core/table/general', 'loading', 'Loading data from server', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1399, 1, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1400, 1, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1401, 1, 'en', 'core/table/general', 'cancel', 'Cancel', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1402, 1, 'en', 'core/table/general', 'delete', 'Delete', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1403, 1, 'en', 'core/table/general', 'close', 'Close', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1404, 1, 'en', 'core/table/general', 'contains', 'Contains', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1405, 1, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1406, 1, 'en', 'core/table/general', 'greater_than', 'Greater than', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1407, 1, 'en', 'core/table/general', 'less_than', 'Less than', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1408, 1, 'en', 'core/table/general', 'value', 'Value', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1409, 1, 'en', 'core/table/general', 'select_field', 'Select field', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1410, 1, 'en', 'core/table/general', 'reset', 'Reset', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1411, 1, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1412, 1, 'en', 'core/table/general', 'apply', 'Apply', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1413, 1, 'en', 'core/table/general', 'filters', 'Filters', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1414, 1, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1415, 1, 'en', 'core/table/general', 'select_option', 'Select option', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1416, 1, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1417, 1, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1418, 1, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1419, 1, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1420, 1, 'en', 'core/table/general', 'search', 'Search...', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1421, 1, 'en', 'core/table/table', 'operations', 'Operations', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1422, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1423, 1, 'en', 'core/table/table', 'display', 'Display', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1424, 1, 'en', 'core/table/table', 'all', 'All', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1425, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1426, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1427, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1428, 1, 'en', 'core/table/table', 'to', 'to', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1429, 1, 'en', 'core/table/table', 'in', 'in', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1430, 1, 'en', 'core/table/table', 'records', 'records', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1431, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1432, 1, 'en', 'core/table/table', 'no_record', 'No record', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1433, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1434, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1435, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1436, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1437, 1, 'en', 'core/table/table', 'delete', 'Delete', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1438, 1, 'en', 'core/table/table', 'close', 'Close', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1439, 1, 'en', 'core/table/table', 'contains', 'Contains', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1440, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1441, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1442, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1443, 1, 'en', 'core/table/table', 'value', 'Value', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1444, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1445, 1, 'en', 'core/table/table', 'reset', 'Reset', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1446, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1447, 1, 'en', 'core/table/table', 'apply', 'Apply', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1448, 1, 'en', 'core/table/table', 'filters', 'Filters', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1449, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1450, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1451, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1452, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1453, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1454, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1455, 1, 'en', 'core/table/table', 'search', 'Search...', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1456, 1, 'vi', 'core/table/general', 'operations', 'Hành động', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1457, 1, 'vi', 'core/table/general', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1458, 1, 'vi', 'core/table/general', 'display', 'Hiển thị', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1459, 1, 'vi', 'core/table/general', 'all', 'Tất cả', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1460, 1, 'vi', 'core/table/general', 'edit_entry', 'Sửa', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1461, 1, 'vi', 'core/table/general', 'delete_entry', 'Xoá', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1462, 1, 'vi', 'core/table/general', 'show_from', 'Hiển thị từ', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1463, 1, 'vi', 'core/table/general', 'to', 'đến', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1464, 1, 'vi', 'core/table/general', 'in', 'trong tổng số', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1465, 1, 'vi', 'core/table/general', 'records', 'bản ghi', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1466, 1, 'vi', 'core/table/general', 'no_data', 'Không có dữ liệu để hiển thị', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1467, 1, 'vi', 'core/table/general', 'no_record', 'không có bản ghi nào', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1468, 1, 'vi', 'core/table/general', 'loading', 'Đang tải dữ liệu từ hệ thống', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1469, 1, 'vi', 'core/table/general', 'confirm_delete', 'Xác nhận xoá', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1470, 1, 'vi', 'core/table/general', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1471, 1, 'vi', 'core/table/general', 'cancel', 'Huỷ bỏ', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1472, 1, 'vi', 'core/table/general', 'delete', 'Xoá', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1473, 1, 'vi', 'core/table/general', 'close', 'Đóng', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1474, 1, 'vi', 'core/table/general', 'is_equal_to', 'Bằng với', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1475, 1, 'vi', 'core/table/general', 'greater_than', 'Lớn hơn', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1476, 1, 'vi', 'core/table/general', 'less_than', 'Nhỏ hơn', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1477, 1, 'vi', 'core/table/general', 'value', 'Giá trị', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1478, 1, 'vi', 'core/table/general', 'select_field', 'Chọn trường', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1479, 1, 'vi', 'core/table/general', 'reset', 'Làm mới', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1480, 1, 'vi', 'core/table/general', 'add_additional_filter', 'Thêm bộ lọc', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1481, 1, 'vi', 'core/table/general', 'apply', 'Áp dụng', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1482, 1, 'vi', 'core/table/general', 'select_option', 'Lựa chọn', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1483, 1, 'vi', 'core/table/general', 'filters', 'Lọc dữ liệu', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1484, 1, 'vi', 'core/table/general', 'bulk_change', 'Thay đổi hàng loạt', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1485, 1, 'vi', 'core/table/general', 'bulk_actions', 'Hành động', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1486, 1, 'vi', 'core/table/general', 'contains', 'Bao gồm', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1487, 1, 'vi', 'core/table/general', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1488, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1489, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1490, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1491, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1492, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1493, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1494, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1495, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1496, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1497, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1498, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1499, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1500, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1501, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1502, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1503, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1504, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1505, 1, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1506, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1507, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1508, 1, 'vi', 'packages/menu/menu', 'name', 'Menu', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1509, 1, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1510, 1, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1511, 1, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1512, 1, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1513, 1, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1514, 1, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1515, 1, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1516, 1, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1517, 1, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1518, 1, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1519, 1, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1520, 1, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1521, 1, 'vi', 'packages/menu/menu', 'target', 'Target', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1522, 1, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1523, 1, 'vi', 'packages/menu/menu', 'url', 'URL', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1524, 1, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1525, 1, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1526, 1, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2021-02-24 05:13:31', '2021-02-24 05:13:31');
INSERT INTO `translations` VALUES (1527, 1, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1528, 1, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1529, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1530, 1, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1531, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1532, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1533, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1534, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1535, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1536, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1537, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1538, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1539, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1540, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1541, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1542, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1543, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1544, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1545, 1, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1546, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1547, 1, 'vi', 'packages/page/pages', 'model', 'Trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1548, 1, 'vi', 'packages/page/pages', 'models', 'Trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1549, 1, 'vi', 'packages/page/pages', 'list', 'Danh sách trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1550, 1, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1551, 1, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1552, 1, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1553, 1, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1554, 1, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1555, 1, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1556, 1, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1557, 1, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1558, 1, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1559, 1, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1560, 1, 'vi', 'packages/page/pages', 'menu', 'Trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1561, 1, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1562, 1, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1563, 1, 'vi', 'packages/page/pages', 'pages', 'Trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1564, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1565, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1566, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1567, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1568, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1569, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1570, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1571, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1572, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1573, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1574, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1575, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1576, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1577, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1578, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1579, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1580, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1581, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1582, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1583, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1584, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1585, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1586, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1587, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1588, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin is removed!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1589, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1590, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1591, 1, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1592, 1, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1593, 1, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1594, 1, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1595, 1, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1596, 1, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1597, 1, 'vi', 'packages/plugin-management/plugin', 'disabled_in_demo_mode', 'Bạn không thể thực hiện hành động này ở chế độ demo', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1598, 1, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1599, 1, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1600, 1, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1601, 1, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các tiện ích mở rộng :plugins trước khi kích hoạt tiện ích này', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1602, 1, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Tiện ích mở rộng', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1603, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1604, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1605, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1606, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1607, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1608, 1, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1609, 1, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1610, 1, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1611, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1612, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1613, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1614, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1615, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1616, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1617, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1618, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1619, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1620, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1621, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1622, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1623, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1624, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1625, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1626, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1627, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1628, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1629, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1630, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1631, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1632, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1633, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1634, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1635, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1636, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1637, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1638, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1639, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1640, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1641, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1642, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1643, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1644, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1645, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1646, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1647, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1648, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1649, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1650, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1651, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1652, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1653, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1654, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1655, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1656, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1657, 1, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1658, 1, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1659, 1, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1660, 1, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1661, 1, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1662, 1, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1663, 1, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1664, 1, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1665, 1, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1666, 1, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1667, 1, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1668, 1, 'en', 'packages/widget/global', 'name', 'Widgets', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1669, 1, 'en', 'packages/widget/global', 'create', 'New widget', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1670, 1, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1671, 1, 'en', 'packages/widget/global', 'delete', 'Delete', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1672, 1, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1673, 1, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1674, 1, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1675, 1, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1676, 1, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1677, 1, 'en', 'packages/widget/global', 'widget_text', 'Text', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1678, 1, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1679, 1, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1680, 1, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1681, 1, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1682, 1, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1683, 1, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1684, 1, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1685, 1, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1686, 1, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1687, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1688, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1689, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1690, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1691, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1692, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1693, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1694, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1695, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1696, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1697, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1698, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1699, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1700, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1701, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1702, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1703, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1704, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1705, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1706, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1707, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1708, 1, 'vi', 'packages/widget/global', 'name', 'Widgets', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1709, 1, 'vi', 'packages/widget/global', 'create', 'New widget', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1710, 1, 'vi', 'packages/widget/global', 'edit', 'Edit widget', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1711, 1, 'vi', 'packages/widget/global', 'available', 'Tiện ích có sẵn', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1712, 1, 'vi', 'packages/widget/global', 'delete', 'Xóa', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1713, 1, 'vi', 'packages/widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1714, 1, 'vi', 'packages/widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1715, 1, 'vi', 'packages/widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1716, 1, 'vi', 'packages/widget/global', 'select_menu', 'Lựa chọn trình đơn', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1717, 1, 'vi', 'packages/widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1718, 1, 'vi', 'packages/widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1719, 1, 'vi', 'packages/widget/global', 'widget_recent_post', 'Bài viết gần đây', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1720, 1, 'vi', 'packages/widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1721, 1, 'vi', 'packages/widget/global', 'widget_tag', 'Thẻ', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1722, 1, 'vi', 'packages/widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1723, 1, 'vi', 'packages/widget/global', 'widget_text', 'Văn bản', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1724, 1, 'vi', 'packages/widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1725, 1, 'vi', 'packages/widget/global', 'delete_success', 'Xoá tiện ích thành công', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1726, 1, 'vi', 'packages/widget/global', 'save_success', 'Lưu tiện ích thành công!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1727, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1728, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1729, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1730, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1731, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1732, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1733, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1734, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1735, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1736, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1737, 1, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics\" target=\"_blank\">https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics</a>', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1738, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics\" target=\"_blank\">https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics</a>', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1739, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1740, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics\" target=\"_blank\">https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics</a>', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1741, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1742, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1743, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1744, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1745, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1746, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1747, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1748, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1749, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1750, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1751, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1752, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1753, 1, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1754, 1, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1755, 1, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1756, 1, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1757, 1, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1758, 1, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1759, 1, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1760, 1, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1761, 1, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"http://laravel-cms.gistensal.com/docs-cms/cms/:version/analytics\" target=\"_blank\">http://laravel-cms.gistensal.com/docs-cms/cms/:version/analytics</a>', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1762, 1, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1763, 1, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1764, 1, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1765, 1, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"http://laravel-cms.gistensal.com/docs-cms/cms/:version/analytics\" target=\"_blank\">http://laravel-cms.gistensal.com/docs-cms/cms/:version/analytics</a>', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1766, 1, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"http://laravel-cms.gistensal.com/docs-cms/cms/:version/analytics\" target=\"_blank\">http://laravel-cms.gistensal.com/docs-cms/cms/:version/analytics</a>', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1767, 1, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1768, 1, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1769, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1770, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1771, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1772, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1773, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1774, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1775, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1776, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1777, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1778, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1779, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1780, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1781, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1782, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1783, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1784, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1785, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1786, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1787, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1788, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1789, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1790, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1791, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1792, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1793, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1794, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1795, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1796, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1797, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1798, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1799, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1800, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1801, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1802, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1803, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1804, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1805, 1, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1806, 1, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1807, 1, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1808, 1, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1809, 1, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1810, 1, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1811, 1, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1812, 1, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1813, 1, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1814, 1, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1815, 1, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1816, 1, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1817, 1, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1818, 1, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1819, 1, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1820, 1, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1821, 1, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1822, 1, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1823, 1, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1824, 1, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1825, 1, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1826, 1, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1827, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1828, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1829, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1830, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1831, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1832, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-02-24 05:13:32', '2021-02-24 05:13:32');
INSERT INTO `translations` VALUES (1833, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1834, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1835, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1836, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1837, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1838, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1839, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1840, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1841, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1842, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1843, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1844, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1845, 1, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1846, 1, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1847, 1, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1848, 1, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1849, 1, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1850, 1, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1851, 1, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1852, 1, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1853, 1, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1854, 1, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1855, 1, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1856, 1, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1857, 1, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1858, 1, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1859, 1, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1860, 1, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1861, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1862, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1863, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1864, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1865, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1866, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1867, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1868, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1869, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1870, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1871, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1872, 1, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1873, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1874, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1875, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1876, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1877, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1878, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1879, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1880, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1881, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1882, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1883, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1884, 1, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1885, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1886, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1887, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1888, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1889, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1890, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1891, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1892, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1893, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1894, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1895, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1896, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1897, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1898, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1899, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1900, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1901, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1902, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1903, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1904, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1905, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1906, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1907, 1, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1908, 1, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1909, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1910, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1911, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1912, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1913, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1914, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1915, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1916, 1, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1917, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1918, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1919, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1920, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1921, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1922, 1, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1923, 1, 'vi', 'plugins/blog/categories', 'model', 'Danh mục', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1924, 1, 'vi', 'plugins/blog/categories', 'models', 'Danh mục', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1925, 1, 'vi', 'plugins/blog/categories', 'list', 'Danh sách danh mục', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1926, 1, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1927, 1, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1928, 1, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1929, 1, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1930, 1, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1931, 1, 'vi', 'plugins/blog/posts', 'model', 'Bài viết', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1932, 1, 'vi', 'plugins/blog/posts', 'models', 'Bài viết', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1933, 1, 'vi', 'plugins/blog/posts', 'list', 'Danh sách bài viết', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1934, 1, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1935, 1, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1936, 1, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1937, 1, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1938, 1, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1939, 1, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1940, 1, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1941, 1, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1942, 1, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1943, 1, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1944, 1, 'vi', 'plugins/blog/posts', 'form.featured', 'Bài viết nổi bật?', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1945, 1, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1946, 1, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1947, 1, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1948, 1, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1949, 1, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1950, 1, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1951, 1, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1952, 1, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1953, 1, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1954, 1, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1955, 1, 'vi', 'plugins/blog/tags', 'model', 'Thẻ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1956, 1, 'vi', 'plugins/blog/tags', 'models', 'Thẻ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1957, 1, 'vi', 'plugins/blog/tags', 'list', 'Danh sách thẻ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1958, 1, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1959, 1, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1960, 1, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1961, 1, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1962, 1, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1963, 1, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1964, 1, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1965, 1, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1966, 1, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1967, 1, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1968, 1, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1969, 1, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1970, 1, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1971, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1972, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1973, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1974, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1975, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1976, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1977, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1978, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1979, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1980, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1981, 1, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1982, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1983, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1984, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1985, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1986, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1987, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1988, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1989, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1990, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1991, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1992, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1993, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1994, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1995, 1, 'en', 'plugins/contact/contact', 'email.success', 'Send message successfully!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1996, 1, 'en', 'plugins/contact/contact', 'email.failed', 'Can\'t send message on this time, please try again later!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1997, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1998, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (1999, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2000, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2001, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2002, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2003, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2004, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2005, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2006, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2007, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2008, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2009, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2010, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2011, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2012, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2013, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2014, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2015, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2016, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2017, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2018, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2019, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2020, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2021, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2022, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2023, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2024, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2025, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2026, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2027, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2028, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2029, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2030, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2031, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2032, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2033, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2034, 1, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2035, 1, 'vi', 'plugins/contact/contact', 'model', 'Liên hệ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2036, 1, 'vi', 'plugins/contact/contact', 'models', 'Liên hệ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2037, 1, 'vi', 'plugins/contact/contact', 'list', 'Danh sách liên hệ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2038, 1, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2039, 1, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2040, 1, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2041, 1, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2042, 1, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2043, 1, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2044, 1, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2045, 1, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2046, 1, 'vi', 'plugins/contact/contact', 'form.is_read', 'Đã xem?', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2047, 1, 'vi', 'plugins/contact/contact', 'form.status', 'Trạng thái', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2048, 1, 'vi', 'plugins/contact/contact', 'notices.no_select', 'Chọn ít nhất 1 liên hệ để thực hiện hành động này!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2049, 1, 'vi', 'plugins/contact/contact', 'notices.update_success_message', 'Cập nhật thành công', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2050, 1, 'vi', 'plugins/contact/contact', 'cannot_delete', 'Không thể xóa liên hệ này', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2051, 1, 'vi', 'plugins/contact/contact', 'deleted', 'Liên hệ đã được xóa', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2052, 1, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2053, 1, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2054, 1, 'vi', 'plugins/contact/contact', 'email.success', 'Gửi tin nhắn thành công!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2055, 1, 'vi', 'plugins/contact/contact', 'email.failed', 'Có lỗi trong quá trình gửi tin nhắn!', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2056, 1, 'vi', 'plugins/contact/contact', 'email.required', 'Email không được để trống', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2057, 1, 'vi', 'plugins/contact/contact', 'email.email', 'Địa chỉ email không hợp lệ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2058, 1, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2059, 1, 'vi', 'plugins/contact/contact', 'name.required', 'Họ tên không được để trống', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2060, 1, 'vi', 'plugins/contact/contact', 'content.required', 'Nội dung tin nhắn không được để trống', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2061, 1, 'vi', 'plugins/contact/contact', 'g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2062, 1, 'vi', 'plugins/contact/contact', 'g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2063, 1, 'vi', 'plugins/contact/contact', 'confirm_not_robot', 'Xác nhận không phải người máy', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2064, 1, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2065, 1, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2066, 1, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2067, 1, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2068, 1, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2069, 1, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2070, 1, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2071, 1, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2072, 1, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2073, 1, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2074, 1, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2075, 1, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2076, 1, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2077, 1, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2078, 1, 'vi', 'plugins/contact/contact', 'mark_as_read', 'Đánh dấu đã đọc', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2079, 1, 'vi', 'plugins/contact/contact', 'mark_as_unread', 'Đánh dấu chưa đọc', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2080, 1, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2081, 1, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2082, 1, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2083, 1, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2084, 1, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2085, 1, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2086, 1, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2087, 1, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2088, 1, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2089, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2090, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2091, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2092, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2093, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2094, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2095, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2096, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2097, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2098, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2099, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2100, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2101, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2102, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2103, 1, 'en', 'plugins/ecommerce/brands', 'name', 'Brands', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2104, 1, 'en', 'plugins/ecommerce/brands', 'create', 'New brand', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2105, 1, 'en', 'plugins/ecommerce/brands', 'edit', 'Edit brand', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2106, 1, 'en', 'plugins/ecommerce/brands', 'form.name', 'Name', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2107, 1, 'en', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Brand\'s name (Maximum 255 characters)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2108, 1, 'en', 'plugins/ecommerce/brands', 'form.description', 'Description', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2109, 1, 'en', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Short description for brand (Maximum 400 characters)', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2110, 1, 'en', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2111, 1, 'en', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2112, 1, 'en', 'plugins/ecommerce/brands', 'form.is_featured', 'Is featured', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2113, 1, 'en', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-02-24 05:13:33', '2021-02-24 05:13:33');
INSERT INTO `translations` VALUES (2114, 1, 'en', 'plugins/ecommerce/brands', 'website', 'Website', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2115, 1, 'en', 'plugins/ecommerce/brands', 'notices.no_select', 'Please select at least one record to take this action!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2116, 1, 'en', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Update successfully', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2117, 1, 'en', 'plugins/ecommerce/brands', 'cannot_delete', 'Brand could not be deleted', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2118, 1, 'en', 'plugins/ecommerce/brands', 'brand_deleted', 'Brand deleted', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2119, 1, 'en', 'plugins/ecommerce/brands', 'menu', 'Brands', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2120, 1, 'en', 'plugins/ecommerce/brands', 'no_brand', 'No brand', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2121, 1, 'en', 'plugins/ecommerce/brands', 'intro.title', 'Manage brands', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2122, 1, 'en', 'plugins/ecommerce/brands', 'intro.description', 'Manage product brands such as Nike, Adidas, Bitis ...', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2123, 1, 'en', 'plugins/ecommerce/brands', 'intro.button_text', 'Create brand', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2124, 1, 'en', 'plugins/ecommerce/currency', 'currencies', 'Currencies', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2125, 1, 'en', 'plugins/ecommerce/currency', 'setting_description', 'List of currencies using on website', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2126, 1, 'en', 'plugins/ecommerce/currency', 'name', 'Name', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2127, 1, 'en', 'plugins/ecommerce/currency', 'symbol', 'Symbol', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2128, 1, 'en', 'plugins/ecommerce/currency', 'number_of_decimals', 'Number of decimals', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2129, 1, 'en', 'plugins/ecommerce/currency', 'exchange_rate', 'Exchange rate', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2130, 1, 'en', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Position of symbol', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2131, 1, 'en', 'plugins/ecommerce/currency', 'is_default', 'Is default?', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2132, 1, 'en', 'plugins/ecommerce/currency', 'remove', 'Remove', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2133, 1, 'en', 'plugins/ecommerce/currency', 'new_currency', 'Add a new currency', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2134, 1, 'en', 'plugins/ecommerce/currency', 'save_settings', 'Save settings', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2135, 1, 'en', 'plugins/ecommerce/currency', 'before_number', 'Before number', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2136, 1, 'en', 'plugins/ecommerce/currency', 'after_number', 'After number', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2137, 1, 'en', 'plugins/ecommerce/customer', 'name', 'Customers', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2138, 1, 'en', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2139, 1, 'en', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2140, 1, 'en', 'plugins/ecommerce/customer', 'email', 'Email', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2141, 1, 'en', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2142, 1, 'en', 'plugins/ecommerce/customer', 'password', 'Password', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2143, 1, 'en', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2144, 1, 'en', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2145, 1, 'en', 'plugins/ecommerce/customer', 'intro.title', 'Manage customers', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2146, 1, 'en', 'plugins/ecommerce/customer', 'intro.description', 'When a customer buy your product(s), you will know their order histories.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2147, 1, 'en', 'plugins/ecommerce/customer', 'intro.button_text', 'Create customer', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2148, 1, 'en', 'plugins/ecommerce/discount', 'name', 'Discounts', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2149, 1, 'en', 'plugins/ecommerce/discount', 'create', 'Create discount', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2150, 1, 'en', 'plugins/ecommerce/discount', 'invalid_coupon', 'This coupon is invalid or expired!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2151, 1, 'en', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Cannot use this coupon in the same time with other discount program!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2152, 1, 'en', 'plugins/ecommerce/discount', 'not_used', 'This coupon is not used yet!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2153, 1, 'en', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2154, 1, 'en', 'plugins/ecommerce/discount', 'used', 'Used', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2155, 1, 'en', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2156, 1, 'en', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2157, 1, 'en', 'plugins/ecommerce/discount', 'intro.title', 'Manage discount/coupon code', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2158, 1, 'en', 'plugins/ecommerce/discount', 'intro.description', 'Create coupon code or promotion for your products.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2159, 1, 'en', 'plugins/ecommerce/discount', 'intro.button_text', 'Create discount', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2160, 1, 'en', 'plugins/ecommerce/discount', 'discount', 'Discount', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2161, 1, 'en', 'plugins/ecommerce/discount', 'expired', 'Expired', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2162, 1, 'en', 'plugins/ecommerce/discount', 'coupon_code', 'Coupon code', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2163, 1, 'en', 'plugins/ecommerce/discount', 'discount_promotion', 'Discount promotion', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2164, 1, 'en', 'plugins/ecommerce/discount', 'can', 'can', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2165, 1, 'en', 'plugins/ecommerce/discount', 'cannot', 'cannot', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2166, 1, 'en', 'plugins/ecommerce/discount', 'use_with_promotion', 'be used with promotion', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2167, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_title_required_if', 'Please enter the name of the promotion', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2168, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_code_required_if', 'Please enter the promotion code', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2169, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_value_required', 'Amount must be greater than 0', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2170, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_target_required', 'No object selected for promotion', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2171, 1, 'en', 'plugins/ecommerce/ecommerce', 'settings', 'Settings', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2172, 1, 'en', 'plugins/ecommerce/ecommerce', 'name', 'Ecommerce', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2173, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2174, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2175, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2176, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2177, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2178, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2179, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2180, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2181, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2182, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2183, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.title', 'Basic information', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2184, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.state', 'State', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2185, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.city', 'City', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2186, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.country', 'Country', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2187, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select country', 'Select a country...', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2188, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_gram', 'Gram (g)', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2189, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_kilogram', 'Kilogram (kg)', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2190, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_cm', 'Centimeter (cm)', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2191, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_m', 'Meter (m)', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2192, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_title', 'Store locators', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2193, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_description', 'All the lists of your chains, main stores, branches, etc. The locations can be used to track sales and to help us configure tax rates to charge when selling products.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2194, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.phone', 'Phone', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2195, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.address', 'Address', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2196, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.is_primary', 'Primary?', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2197, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_new', 'Add new', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2198, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.or', 'Or', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2199, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_store', 'change default store locator', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2200, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings', 'Other settings', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2201, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings_description', 'Settings for cart, review...', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2202, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_cart', 'Enable shopping cart?', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2203, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_tax', 'Enable tax?', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2204, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.display_product_price_including_taxes', 'Display product price including taxes?', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2205, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_review', 'Enable review?', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2206, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_quick_buy_button', 'Enable quick buy button?', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2207, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.quick_buy_target', 'Quick buy target page?', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2208, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.checkout_page', 'Checkout page', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2209, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.cart_page', 'Cart page', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2210, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_location', 'Add location', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2211, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.edit_location', 'Edit location', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2212, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location', 'Delete location', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2213, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_location', 'Change primary location', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2214, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location_confirmation', 'Are you sure you want to delete this location? This action cannot be undo.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2215, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.save_location', 'Save location', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2216, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.accept', 'Accept', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2217, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select_country', 'Select country', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2218, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.zip_code_enabled', 'Enable Zip Code?', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2219, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.thousands_separator', 'Thousands separator', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2220, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.decimal_separator', 'Decimal separator', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2221, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_period', 'Period (.)', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2222, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_comma', 'Comma (,)', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2223, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_space', 'Space ( )', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2224, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.available_countries', 'Available countries', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2225, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.all', 'All', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2226, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_address', 'Store address', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2227, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_phone', 'Store phone', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2228, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_id', 'Order ID', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2229, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_token', 'Order token', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2230, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_name', 'Customer name', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2231, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_email', 'Customer email', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2232, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Customer phone', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2233, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_address', 'Customer address', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2234, 1, 'en', 'plugins/ecommerce/ecommerce', 'product_list', 'List products in order', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2235, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Payment detail', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2236, 1, 'en', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Shipping method', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2237, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_method', 'Payment method', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2238, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Standard & Format', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2239, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Standards and formats are used to calculate things like product prices, shipping weights, and order times.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2240, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Edit order code format (optional)', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2241, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'The default order code starts at: number. You can change the start or end string to create the order code you want, for example \"DH-: number\" or \": number-A\"', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2242, 1, 'en', 'plugins/ecommerce/ecommerce', 'start_with', 'Start with', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2243, 1, 'en', 'plugins/ecommerce/ecommerce', 'end_with', 'End with', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2244, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Your order code will be shown', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2245, 1, 'en', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Unit of weight', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2246, 1, 'en', 'plugins/ecommerce/ecommerce', 'height_unit', 'Unit length / height', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2247, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.name', 'Ecommerce', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2248, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.description', 'Theme options for Ecommerce', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2249, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_products_per_page', 'Number of products per page', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2250, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.max_price_filter', 'Maximum price to filter', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2251, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_title', 'Order confirmation', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2252, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_description', 'Send email confirmation to customer when an order placed', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2253, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_title', 'Order cancellation', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2254, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_description', 'Send to custom when they cancelled order', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2255, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Delivering confirmation', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2256, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Send to customer when order is delivering', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2257, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_title', 'Notice about new order', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2258, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_description', 'Send to administrators when an order placed', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2259, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_title', 'Order confirmation', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2260, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_description', 'Send to customer when they order was confirmed by admins', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2261, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Payment confirmation', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2262, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Send to customer when their payment was confirmed', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2263, 1, 'en', 'plugins/ecommerce/email', 'order_recover_title', 'Incomplete order', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2264, 1, 'en', 'plugins/ecommerce/email', 'order_recover_description', 'Send to custom to remind them about incomplete orders', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2265, 1, 'en', 'plugins/ecommerce/flash-sale', 'name', 'Flash sales', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2266, 1, 'en', 'plugins/ecommerce/flash-sale', 'create', 'New flash sale', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2267, 1, 'en', 'plugins/ecommerce/flash-sale', 'edit', 'Edit flash sale', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2268, 1, 'en', 'plugins/ecommerce/flash-sale', 'products', 'Products', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2269, 1, 'en', 'plugins/ecommerce/messages', 'cart.add_product_success', 'Add product :product to cart successfully!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2270, 1, 'en', 'plugins/ecommerce/messages', 'cart.update_cart_success', 'Update cart successfully!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2271, 1, 'en', 'plugins/ecommerce/messages', 'cart.remove_cart_success', 'Remove item from cart successfully!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2272, 1, 'en', 'plugins/ecommerce/messages', 'cart.empty_cart_success', 'Empty cart successfully!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2273, 1, 'en', 'plugins/ecommerce/messages', 'cart.product_not_found', 'This product is out of stock or not exists!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2274, 1, 'en', 'plugins/ecommerce/messages', 'cart.product_is_out_of_stock', 'Product :product is out of stock!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2275, 1, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_error', 'The order is delivering or completed', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2276, 1, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_success', 'You do cancel the order successful', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2277, 1, 'en', 'plugins/ecommerce/order', 'statuses.pending', 'Pending', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2278, 1, 'en', 'plugins/ecommerce/order', 'statuses.processing', 'Processing', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2279, 1, 'en', 'plugins/ecommerce/order', 'statuses.delivering', 'Delivering', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2280, 1, 'en', 'plugins/ecommerce/order', 'statuses.delivered', 'Delivered', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2281, 1, 'en', 'plugins/ecommerce/order', 'statuses.completed', 'Completed', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2282, 1, 'en', 'plugins/ecommerce/order', 'statuses.canceled', 'Canceled', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2283, 1, 'en', 'plugins/ecommerce/order', 'name', 'Orders', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2284, 1, 'en', 'plugins/ecommerce/order', 'create', 'Create an order', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2285, 1, 'en', 'plugins/ecommerce/order', 'customer.messages.cancel_error', 'The order is delivering or completed', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2286, 1, 'en', 'plugins/ecommerce/order', 'customer.messages.cancel_success', 'You do cancel the order successful', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2287, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order', 'Incomplete orders', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2288, 1, 'en', 'plugins/ecommerce/order', 'order_id', 'Order ID', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2289, 1, 'en', 'plugins/ecommerce/order', 'product_id', 'Product ID', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2290, 1, 'en', 'plugins/ecommerce/order', 'customer_label', 'Customer', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2291, 1, 'en', 'plugins/ecommerce/order', 'amount', 'Amount', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2292, 1, 'en', 'plugins/ecommerce/order', 'tax_amount', 'Tax Amount', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2293, 1, 'en', 'plugins/ecommerce/order', 'shipping_amount', 'Shipping amount', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2294, 1, 'en', 'plugins/ecommerce/order', 'payment_method', 'Payment method', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2295, 1, 'en', 'plugins/ecommerce/order', 'payment_status_label', 'Payment status', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2296, 1, 'en', 'plugins/ecommerce/order', 'manage_orders', 'Manage orders', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2297, 1, 'en', 'plugins/ecommerce/order', 'order_intro_description', 'Once your store has orders, this is where you will process and track those orders.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2298, 1, 'en', 'plugins/ecommerce/order', 'create_new_order', 'Create a new order', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2299, 1, 'en', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Manage incomplete orders', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2300, 1, 'en', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Incomplete order is an order created when a customer adds a product to the cart, proceeds to fill out the purchase information but does not complete the checkout process.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2301, 1, 'en', 'plugins/ecommerce/order', 'invoice_for_order', 'Invoice for order', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2302, 1, 'en', 'plugins/ecommerce/order', 'created', 'Created', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2303, 1, 'en', 'plugins/ecommerce/order', 'invoice', 'Invoice', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2304, 1, 'en', 'plugins/ecommerce/order', 'return', 'Return', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2305, 1, 'en', 'plugins/ecommerce/order', 'total_refund_amount', 'Total refund amount', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2306, 1, 'en', 'plugins/ecommerce/order', 'total_amount_can_be_refunded', 'Total amount can be refunded', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2307, 1, 'en', 'plugins/ecommerce/order', 'refund_reason', 'Refund reason (optional)', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2308, 1, 'en', 'plugins/ecommerce/order', 'products', 'product(s)', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2309, 1, 'en', 'plugins/ecommerce/order', 'see_on_maps', 'See on maps', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2310, 1, 'en', 'plugins/ecommerce/order', 'order', 'Order', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2311, 1, 'en', 'plugins/ecommerce/order', 'order_information', 'Order information', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2312, 1, 'en', 'plugins/ecommerce/order', 'create_new_product', 'Create a new product', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2313, 1, 'en', 'plugins/ecommerce/order', 'out_of_stock', 'Out of stock', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2314, 1, 'en', 'plugins/ecommerce/order', 'products_available', 'product(s) available', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2315, 1, 'en', 'plugins/ecommerce/order', 'no_products_found', 'No products found!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2316, 1, 'en', 'plugins/ecommerce/order', 'default', 'Default', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2317, 1, 'en', 'plugins/ecommerce/order', 'system', 'System', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2318, 1, 'en', 'plugins/ecommerce/order', 'new_order_from', 'New order :order_id from :customer', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2319, 1, 'en', 'plugins/ecommerce/order', 'confirmation_email_was_sent_to_customer', 'The email confirmation was sent to customer', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2320, 1, 'en', 'plugins/ecommerce/order', 'address_name_required', 'The name field is required.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2321, 1, 'en', 'plugins/ecommerce/order', 'address_phone_required', 'The phone field is required.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2322, 1, 'en', 'plugins/ecommerce/order', 'address_email_required', 'The email field is required.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2323, 1, 'en', 'plugins/ecommerce/order', 'address_email_unique', 'The customer with that email is existed, please choose other email or login with this email!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2324, 1, 'en', 'plugins/ecommerce/order', 'address_state_required', 'The state field is required.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2325, 1, 'en', 'plugins/ecommerce/order', 'address_city_required', 'The city field is required.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2326, 1, 'en', 'plugins/ecommerce/order', 'address_address_required', 'The address field is required.', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2327, 1, 'en', 'plugins/ecommerce/order', 'create_order_from_payment_page', 'Order was created from checkout page', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2328, 1, 'en', 'plugins/ecommerce/order', 'order_was_verified_by', 'Order was verified by %user_name%', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2329, 1, 'en', 'plugins/ecommerce/order', 'new_order', 'New order :order_id', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2330, 1, 'en', 'plugins/ecommerce/order', 'payment_was_confirmed_by', 'Payment was confirmed (amount :money) by %user_name%', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2331, 1, 'en', 'plugins/ecommerce/order', 'edit_order', 'Edit order :code', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2332, 1, 'en', 'plugins/ecommerce/order', 'confirm_order_success', 'Confirm order successfully!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2333, 1, 'en', 'plugins/ecommerce/order', 'error_when_sending_email', 'There is an error when sending email', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2334, 1, 'en', 'plugins/ecommerce/order', 'sent_confirmation_email_success', 'Sent confirmation email successfully!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2335, 1, 'en', 'plugins/ecommerce/order', 'order_was_sent_to_shipping_team', 'Order was sent to shipping team', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2336, 1, 'en', 'plugins/ecommerce/order', 'by_username', 'by %user_name%', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2337, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_created_from', 'Shipping was created from order %order_id%', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2338, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_success', 'Shipping was cancelled successfully!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2339, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_by', 'Shipping was cancelled by %user_name%', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2340, 1, 'en', 'plugins/ecommerce/order', 'update_shipping_address_success', 'Update shipping address successfully!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2341, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_by', 'Order was cancelled by %user_name%', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2342, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_success', 'Confirm payment successfully!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2343, 1, 'en', 'plugins/ecommerce/order', 'refund_amount_invalid', 'Refund amount must be lower or equal :price', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2344, 1, 'en', 'plugins/ecommerce/order', 'number_of_products_invalid', 'Number of products refund is not valid!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2345, 1, 'en', 'plugins/ecommerce/order', 'cannot_found_payment_for_this_order', 'Cannot found payment for this order!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2346, 1, 'en', 'plugins/ecommerce/order', 'refund_success_with_price', 'Refund success :price', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2347, 1, 'en', 'plugins/ecommerce/order', 'refund_success', 'Refund successfully!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2348, 1, 'en', 'plugins/ecommerce/order', 'order_is_not_existed', 'Order is not existed!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2349, 1, 'en', 'plugins/ecommerce/order', 'reorder', 'Reorder', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2350, 1, 'en', 'plugins/ecommerce/order', 'sent_email_incomplete_order_success', 'Sent email to remind about incomplete order successfully!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2351, 1, 'en', 'plugins/ecommerce/order', 'applied_coupon_success', 'Applied coupon \":code\" successfully!', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2352, 1, 'en', 'plugins/ecommerce/order', 'new_order_notice', 'You have <span class=\"bold\">:count</span> New Order(s)', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2353, 1, 'en', 'plugins/ecommerce/order', 'view_all', 'View all', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2354, 1, 'en', 'plugins/ecommerce/order', 'cancel_order', 'Cancel order', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2355, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_at', 'Order was canceled at', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2356, 1, 'en', 'plugins/ecommerce/order', 'completed', 'Completed', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2357, 1, 'en', 'plugins/ecommerce/order', 'uncompleted', 'Uncompleted', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2358, 1, 'en', 'plugins/ecommerce/order', 'sku', 'SKU', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2359, 1, 'en', 'plugins/ecommerce/order', 'shipping', 'Shipping', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2360, 1, 'en', 'plugins/ecommerce/order', 'warehouse', 'Warehouse', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2361, 1, 'en', 'plugins/ecommerce/order', 'sub_amount', 'Sub amount', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2362, 1, 'en', 'plugins/ecommerce/order', 'discount', 'Discount', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2363, 1, 'en', 'plugins/ecommerce/order', 'coupon_code', 'Coupon code: \":code\"', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2364, 1, 'en', 'plugins/ecommerce/order', 'shipping_fee', 'Shipping fee', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2365, 1, 'en', 'plugins/ecommerce/order', 'tax', 'Tax', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2366, 1, 'en', 'plugins/ecommerce/order', 'total_amount', 'Total amount', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2367, 1, 'en', 'plugins/ecommerce/order', 'paid_amount', 'Paid amount', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2368, 1, 'en', 'plugins/ecommerce/order', 'refunded_amount', 'Refunded amount', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2369, 1, 'en', 'plugins/ecommerce/order', 'amount_received', 'The amount actually received', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2370, 1, 'en', 'plugins/ecommerce/order', 'download_invoice', 'Download invoice', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2371, 1, 'en', 'plugins/ecommerce/order', 'note', 'Note', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2372, 1, 'en', 'plugins/ecommerce/order', 'add_note', 'Add note...', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2373, 1, 'en', 'plugins/ecommerce/order', 'save', 'Save', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2374, 1, 'en', 'plugins/ecommerce/order', 'order_was_confirmed', 'Order was confirmed', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2375, 1, 'en', 'plugins/ecommerce/order', 'confirm_order', 'Confirm order', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2376, 1, 'en', 'plugins/ecommerce/order', 'confirm', 'Confirm', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2377, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled', 'Order was canceled', '2021-02-24 05:13:34', '2021-02-24 05:13:34');
INSERT INTO `translations` VALUES (2378, 1, 'en', 'plugins/ecommerce/order', 'pending_payment', 'Pending payment', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2379, 1, 'en', 'plugins/ecommerce/order', 'payment_was_accepted', 'Payment :money was accepted', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2380, 1, 'en', 'plugins/ecommerce/order', 'payment_was_refunded', 'Payment was refunded', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2381, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment', 'Confirm payment', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2382, 1, 'en', 'plugins/ecommerce/order', 'refund', 'Refund', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2383, 1, 'en', 'plugins/ecommerce/order', 'all_products_are_not_delivered', 'All products are not delivered', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2384, 1, 'en', 'plugins/ecommerce/order', 'delivery', 'Delivery', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2385, 1, 'en', 'plugins/ecommerce/order', 'history', 'History', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2386, 1, 'en', 'plugins/ecommerce/order', 'order_number', 'Order number', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2387, 1, 'en', 'plugins/ecommerce/order', 'description', 'Description', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2388, 1, 'en', 'plugins/ecommerce/order', 'from', 'from', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2389, 1, 'en', 'plugins/ecommerce/order', 'status', 'Status', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2390, 1, 'en', 'plugins/ecommerce/order', 'successfully', 'Successfully', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2391, 1, 'en', 'plugins/ecommerce/order', 'transaction_type', 'Transaction\'s type', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2392, 1, 'en', 'plugins/ecommerce/order', 'staff', 'Staff', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2393, 1, 'en', 'plugins/ecommerce/order', 'refund_date', 'Refund date', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2394, 1, 'en', 'plugins/ecommerce/order', 'n_a', 'N\\A', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2395, 1, 'en', 'plugins/ecommerce/order', 'payment_date', 'Payment date', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2396, 1, 'en', 'plugins/ecommerce/order', 'payment_gateway', 'Payment gateway', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2397, 1, 'en', 'plugins/ecommerce/order', 'transaction_amount', 'Transaction amount', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2398, 1, 'en', 'plugins/ecommerce/order', 'resend', 'Resend', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2399, 1, 'en', 'plugins/ecommerce/order', 'orders', 'Orders', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2400, 1, 'en', 'plugins/ecommerce/order', 'shipping_address', 'Shipping address', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2401, 1, 'en', 'plugins/ecommerce/order', 'default_store', 'Default store', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2402, 1, 'en', 'plugins/ecommerce/order', 'update_address', 'Update address', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2403, 1, 'en', 'plugins/ecommerce/order', 'cancel', 'Cancel', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2404, 1, 'en', 'plugins/ecommerce/order', 'have_an_account_already', 'Have an account already', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2405, 1, 'en', 'plugins/ecommerce/order', 'dont_have_an_account_yet', 'Don\'t have an account yet', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2406, 1, 'en', 'plugins/ecommerce/order', 'mark_payment_as_confirmed', 'Mark <span>:method</span> as confirmed', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2407, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation', 'Resend order confirmation', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2408, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation_description', 'Confirmation email will be sent to <strong>:email</strong>?', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2409, 1, 'en', 'plugins/ecommerce/order', 'send', 'Send', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2410, 1, 'en', 'plugins/ecommerce/order', 'update', 'Update', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2411, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation', 'Cancel shipping confirmation?', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2412, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation_description', 'Cancel shipping confirmation?', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2413, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation', 'Cancel order confirmation?', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2414, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation_description', 'Are you sure you want to cancel this order? This action cannot rollback', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2415, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_confirmation_description', 'Processed by <strong>:method</strong>. Did you receive payment outside the system? This payment won\'t be saved into system and cannot be refunded', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2416, 1, 'en', 'plugins/ecommerce/order', 'save_note', 'Save note', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2417, 1, 'en', 'plugins/ecommerce/order', 'order_note', 'Order note', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2418, 1, 'en', 'plugins/ecommerce/order', 'order_note_placeholder', 'Note about order, ex: time or shipping instruction.', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2419, 1, 'en', 'plugins/ecommerce/order', 'order_amount', 'Order amount', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2420, 1, 'en', 'plugins/ecommerce/order', 'additional_information', 'Additional information', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2421, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order', 'Notice about incomplete order', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2422, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order_description', 'Remind email about uncompleted order will be send to <strong>:email</strong>?', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2423, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_1', 'An incomplete order is when a potential customer places items in their shopping cart, and goes all the way through to the payment page, but then doesn\'t complete the transaction.', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2424, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_2', 'If you have contacted customers and they want to continue buying, you can help them complete their order by following the link:', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2425, 1, 'en', 'plugins/ecommerce/order', 'send_an_email_to_recover_this_order', 'Send an email to customer to recover this order', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2426, 1, 'en', 'plugins/ecommerce/order', 'see_maps', 'See maps', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2427, 1, 'en', 'plugins/ecommerce/order', 'one_or_more_products_dont_have_enough_quantity', 'One or more products don\'t have enough quantity!', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2428, 1, 'en', 'plugins/ecommerce/payment', 'name', 'Payments', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2429, 1, 'en', 'plugins/ecommerce/payment', 'payment_method', 'Payment methods', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2430, 1, 'en', 'plugins/ecommerce/payment', 'view_payment', 'View payment #', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2431, 1, 'en', 'plugins/ecommerce/payment', 'charge_id', 'Charge ID', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2432, 1, 'en', 'plugins/ecommerce/payment', 'amount', 'Amount', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2433, 1, 'en', 'plugins/ecommerce/payment', 'currency', 'Currency', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2434, 1, 'en', 'plugins/ecommerce/payment', 'user', 'User', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2435, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_required', 'PayPal\'s name is required!', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2436, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_max', 'PayPal\'s name is too long!', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2437, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_required', 'Stripe\'s name is required!', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2438, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_max', 'Stripe\'s name is too long!', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2439, 1, 'en', 'plugins/ecommerce/payment', 'status', 'Status', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2440, 1, 'en', 'plugins/ecommerce/payment', 'enabled', 'Enabled', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2441, 1, 'en', 'plugins/ecommerce/payment', 'disabled', 'Disabled', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2442, 1, 'en', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2443, 1, 'en', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2444, 1, 'en', 'plugins/ecommerce/payment', 'mode', 'Mode', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2445, 1, 'en', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2446, 1, 'en', 'plugins/ecommerce/payment', 'live', 'Live', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2447, 1, 'en', 'plugins/ecommerce/payment', 'enable_payment_log', 'Enable Payment Log', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2448, 1, 'en', 'plugins/ecommerce/payment', 'yes', 'Yes', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2449, 1, 'en', 'plugins/ecommerce/payment', 'no', 'No', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2450, 1, 'en', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2451, 1, 'en', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2452, 1, 'en', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2453, 1, 'en', 'plugins/ecommerce/payment', 'action', 'Action', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2454, 1, 'en', 'plugins/ecommerce/payment', 'go_back', 'Go back', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2455, 1, 'en', 'plugins/ecommerce/payment', 'view', 'View', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2456, 1, 'en', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2457, 1, 'en', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Via bank transfer', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2458, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_cart', 'Payment via card', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2459, 1, 'en', 'plugins/ecommerce/payment', 'card_number', 'Card number', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2460, 1, 'en', 'plugins/ecommerce/payment', 'full_name', 'Full name', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2461, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2462, 1, 'en', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2463, 1, 'en', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2464, 1, 'en', 'plugins/ecommerce/payment', 'details', 'Details', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2465, 1, 'en', 'plugins/ecommerce/payment', 'payer_name', 'Payer Name', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2466, 1, 'en', 'plugins/ecommerce/payment', 'email', 'Email', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2467, 1, 'en', 'plugins/ecommerce/payment', 'phone', 'Phone', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2468, 1, 'en', 'plugins/ecommerce/payment', 'country', 'Country', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2469, 1, 'en', 'plugins/ecommerce/payment', 'shipping_address', 'Shipping Address', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2470, 1, 'en', 'plugins/ecommerce/payment', 'payment_details', 'Payment Details', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2471, 1, 'en', 'plugins/ecommerce/payment', 'card', 'Card', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2472, 1, 'en', 'plugins/ecommerce/payment', 'address', 'Address', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2473, 1, 'en', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2474, 1, 'en', 'plugins/ecommerce/payment', 'new_payment', 'Payment for order :id', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2475, 1, 'en', 'plugins/ecommerce/payment', 'payment_id', 'Payment ID', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2476, 1, 'en', 'plugins/ecommerce/prices', 'name', 'Price', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2477, 1, 'en', 'plugins/ecommerce/prices', 'create', 'New price', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2478, 1, 'en', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2479, 1, 'en', 'plugins/ecommerce/prices', 'list', 'List price', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2480, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2481, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2482, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2483, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2484, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2485, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2486, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2487, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2488, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2489, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2490, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2491, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2492, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2493, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2494, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2495, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2496, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2497, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2498, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2499, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2500, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2501, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2502, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2503, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2504, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2505, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2506, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2507, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2508, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2509, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2510, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2511, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2512, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2513, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2514, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2515, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2516, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2517, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2518, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2519, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2520, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2521, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2522, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2523, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'display_layout', 'Display Layout', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2524, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'searchable', 'Searchable', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2525, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'comparable', 'Comparable', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2526, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_in_product_listing', 'Used in product listing', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2527, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes_list', 'Attributes list', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2528, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'is_default', 'Is default?', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2529, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'title', 'Title', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2530, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'slug', 'Slug', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2531, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'color', 'Color', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2532, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'image', 'Image', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2533, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove', 'Remove', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2534, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_attribute', 'Add new attribute', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2535, 1, 'en', 'plugins/ecommerce/product-attributes', 'name', 'Product attributes', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2536, 1, 'en', 'plugins/ecommerce/product-attributes', 'create', 'New product attribute', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2537, 1, 'en', 'plugins/ecommerce/product-attributes', 'edit', 'Edit product attribute', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2538, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.title', 'Manage product attributes', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2539, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.description', 'Product attribute such as color, width, height ...', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2540, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Create product attribute', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2541, 1, 'en', 'plugins/ecommerce/product-categories', 'name', 'Product categories', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2542, 1, 'en', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2543, 1, 'en', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2544, 1, 'en', 'plugins/ecommerce/product-categories', 'list', 'List product categories', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2545, 1, 'en', 'plugins/ecommerce/product-categories', 'none', 'None', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2546, 1, 'en', 'plugins/ecommerce/product-categories', 'menu', 'Product categories', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2547, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.title', 'Manage product categories', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2548, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.description', 'Such as clothes, shoes, bags, jewelry ...', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2549, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Create product category', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2550, 1, 'en', 'plugins/ecommerce/product-collections', 'name', 'Product collections', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2551, 1, 'en', 'plugins/ecommerce/product-collections', 'create', 'New product collection', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2552, 1, 'en', 'plugins/ecommerce/product-collections', 'edit', 'Edit product collection', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2553, 1, 'en', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2554, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.title', 'Manage product collections', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2555, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.description', 'Group your products into collections to make it easier for customers to find them by category.', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2556, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Create product collection', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2557, 1, 'en', 'plugins/ecommerce/product-tag', 'name', 'Product tags', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2558, 1, 'en', 'plugins/ecommerce/product-tag', 'create', 'New product tag', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2559, 1, 'en', 'plugins/ecommerce/product-tag', 'edit', 'Edit product tag', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2560, 1, 'en', 'plugins/ecommerce/products', 'name', 'Products', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2561, 1, 'en', 'plugins/ecommerce/products', 'create', 'New product', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2562, 1, 'en', 'plugins/ecommerce/products', 'edit', 'Edit product - :name', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2563, 1, 'en', 'plugins/ecommerce/products', 'form.name', 'Name', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2564, 1, 'en', 'plugins/ecommerce/products', 'form.name_placeholder', 'Product\'s name (Maximum 120 characters)', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2565, 1, 'en', 'plugins/ecommerce/products', 'form.description', 'Description', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2566, 1, 'en', 'plugins/ecommerce/products', 'form.description_placeholder', 'Short description for product (Maximum 400 characters)', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2567, 1, 'en', 'plugins/ecommerce/products', 'form.categories', 'Categories', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2568, 1, 'en', 'plugins/ecommerce/products', 'form.content', 'Content', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2569, 1, 'en', 'plugins/ecommerce/products', 'form.price', 'Price', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2570, 1, 'en', 'plugins/ecommerce/products', 'form.quantity', 'Quantity', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2571, 1, 'en', 'plugins/ecommerce/products', 'form.brand', 'Brand', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2572, 1, 'en', 'plugins/ecommerce/products', 'form.width', 'Width', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2573, 1, 'en', 'plugins/ecommerce/products', 'form.height', 'Height', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2574, 1, 'en', 'plugins/ecommerce/products', 'form.weight', 'Weight', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2575, 1, 'en', 'plugins/ecommerce/products', 'form.date.end', 'From date', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2576, 1, 'en', 'plugins/ecommerce/products', 'form.date.start', 'To date', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2577, 1, 'en', 'plugins/ecommerce/products', 'form.image', 'Images', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2578, 1, 'en', 'plugins/ecommerce/products', 'form.label', 'Product collections', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2579, 1, 'en', 'plugins/ecommerce/products', 'form.price_sale', 'Price sale', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2580, 1, 'en', 'plugins/ecommerce/products', 'form.product_type.title', 'Product type', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2581, 1, 'en', 'plugins/ecommerce/products', 'form.product', 'Product', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2582, 1, 'en', 'plugins/ecommerce/products', 'form.total', 'Total', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2583, 1, 'en', 'plugins/ecommerce/products', 'form.sub_total', 'Subtotal', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2584, 1, 'en', 'plugins/ecommerce/products', 'form.shipping_fee', 'Shipping fee', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2585, 1, 'en', 'plugins/ecommerce/products', 'form.discount', 'Discount', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2586, 1, 'en', 'plugins/ecommerce/products', 'form.options', 'Options', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2587, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.height', 'Height', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2588, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.length', 'Length', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2589, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.title', 'Shipping', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2590, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.weight', 'Weight', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2591, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.wide', 'Wide', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2592, 1, 'en', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Allow customer checkout when this product out of stock', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2593, 1, 'en', 'plugins/ecommerce/products', 'form.stock.in_stock', 'In stock', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2594, 1, 'en', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Out stock', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2595, 1, 'en', 'plugins/ecommerce/products', 'form.stock.title', 'Stock status', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2596, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'No storehouse management', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2597, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'With storehouse management', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2598, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.title', 'Storehouse', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2599, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Quantity', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2600, 1, 'en', 'plugins/ecommerce/products', 'form.tax', 'Tax', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2601, 1, 'en', 'plugins/ecommerce/products', 'form.is_default', 'Is default', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2602, 1, 'en', 'plugins/ecommerce/products', 'form.action', 'Action', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2603, 1, 'en', 'plugins/ecommerce/products', 'form.restock_quantity', 'Restock quantity', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2604, 1, 'en', 'plugins/ecommerce/products', 'form.remain', 'Remain', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2605, 1, 'en', 'plugins/ecommerce/products', 'form.choose_discount_period', 'Choose Discount Period', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2606, 1, 'en', 'plugins/ecommerce/products', 'form.cancel', 'Cancel', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2607, 1, 'en', 'plugins/ecommerce/products', 'form.no_results', 'No results!', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2608, 1, 'en', 'plugins/ecommerce/products', 'form.value', 'Value', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2609, 1, 'en', 'plugins/ecommerce/products', 'form.attribute_name', 'Attribute name', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2610, 1, 'en', 'plugins/ecommerce/products', 'form.add_more_attribute', 'Add more attribute', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2611, 1, 'en', 'plugins/ecommerce/products', 'form.continue', 'Continue', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2612, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes', 'Add new attributes', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2613, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes_description', 'Adding new attributes helps the product to have many options, such as size or color.', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2614, 1, 'en', 'plugins/ecommerce/products', 'form.create_product_variations', ':link to create product variations!', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2615, 1, 'en', 'plugins/ecommerce/products', 'form.tags', 'Tags', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2616, 1, 'en', 'plugins/ecommerce/products', 'form.write_some_tags', 'Write some tags', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2617, 1, 'en', 'plugins/ecommerce/products', 'form.variation_existed', 'This variation is existed.', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2618, 1, 'en', 'plugins/ecommerce/products', 'form.no_attributes_selected', 'No attributes selected!', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2619, 1, 'en', 'plugins/ecommerce/products', 'form.added_variation_success', 'Added variation successfully!', '2021-02-24 05:13:35', '2021-02-24 05:13:35');
INSERT INTO `translations` VALUES (2620, 1, 'en', 'plugins/ecommerce/products', 'form.updated_variation_success', 'Updated variation successfully!', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2621, 1, 'en', 'plugins/ecommerce/products', 'form.created_all_variation_success', 'Created all variations successfully!', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2622, 1, 'en', 'plugins/ecommerce/products', 'form.updated_product_attributes_success', 'Updated product attributes successfully!', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2623, 1, 'en', 'plugins/ecommerce/products', 'price', 'Price', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2624, 1, 'en', 'plugins/ecommerce/products', 'quantity', 'Quantity', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2625, 1, 'en', 'plugins/ecommerce/products', 'type', 'Type', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2626, 1, 'en', 'plugins/ecommerce/products', 'image', 'Thumbnail', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2627, 1, 'en', 'plugins/ecommerce/products', 'sku', 'Sku', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2628, 1, 'en', 'plugins/ecommerce/products', 'brand', 'Brand', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2629, 1, 'en', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2630, 1, 'en', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2631, 1, 'en', 'plugins/ecommerce/products', 'product_collections', 'Product collections', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2632, 1, 'en', 'plugins/ecommerce/products', 'products', 'Products', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2633, 1, 'en', 'plugins/ecommerce/products', 'menu', 'Products', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2634, 1, 'en', 'plugins/ecommerce/products', 'control.button_add_image', 'Add image', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2635, 1, 'en', 'plugins/ecommerce/products', 'price_sale', 'Sale price', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2636, 1, 'en', 'plugins/ecommerce/products', 'price_group_title', 'Manager product price', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2637, 1, 'en', 'plugins/ecommerce/products', 'store_house_group_title', 'Manager store house', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2638, 1, 'en', 'plugins/ecommerce/products', 'shipping_group_title', 'Manager shipping', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2639, 1, 'en', 'plugins/ecommerce/products', 'overview', 'Overview', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2640, 1, 'en', 'plugins/ecommerce/products', 'attributes', 'Attributes', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2641, 1, 'en', 'plugins/ecommerce/products', 'product_has_variations', 'Product has variations', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2642, 1, 'en', 'plugins/ecommerce/products', 'manage_products', 'Manage products', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2643, 1, 'en', 'plugins/ecommerce/products', 'add_new_product', 'Add a new product', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2644, 1, 'en', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Start by adding new products.', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2645, 1, 'en', 'plugins/ecommerce/products', 'edit_this_product', 'Edit this product', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2646, 1, 'en', 'plugins/ecommerce/products', 'delete', 'Delete', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2647, 1, 'en', 'plugins/ecommerce/products', 'related_products', 'Related products', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2648, 1, 'en', 'plugins/ecommerce/products', 'cross_selling_products', 'Cross-selling products', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2649, 1, 'en', 'plugins/ecommerce/products', 'up_selling_products', 'Up-selling products', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2650, 1, 'en', 'plugins/ecommerce/products', 'grouped_products', 'Grouped products', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2651, 1, 'en', 'plugins/ecommerce/products', 'search_products', 'Search products', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2652, 1, 'en', 'plugins/ecommerce/products', 'selected_products', 'Selected products', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2653, 1, 'en', 'plugins/ecommerce/products', 'edit_variation_item', 'Edit', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2654, 1, 'en', 'plugins/ecommerce/products', 'variations_box_description', 'Click on \"Edit attribute\" to add/remove attributes of variation or click on \"Add new variation\" to add variation.', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2655, 1, 'en', 'plugins/ecommerce/products', 'save_changes', 'Save changes', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2656, 1, 'en', 'plugins/ecommerce/products', 'continue', 'Continue', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2657, 1, 'en', 'plugins/ecommerce/products', 'edit_attribute', 'Edit attribute', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2658, 1, 'en', 'plugins/ecommerce/products', 'select_attribute', 'Select attribute', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2659, 1, 'en', 'plugins/ecommerce/products', 'add_new_variation', 'Add new variation', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2660, 1, 'en', 'plugins/ecommerce/products', 'edit_variation', 'Edit variation', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2661, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations', 'Generate all variations', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2662, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations_confirmation', 'Are you sure you want to generate all variations for this product?', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2663, 1, 'en', 'plugins/ecommerce/products', 'delete_variation', 'Delete variation?', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2664, 1, 'en', 'plugins/ecommerce/products', 'delete_variation_confirmation', 'Are you sure you want to delete this variation? This action cannot be undo.', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2665, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_name_required', 'Please enter product\'s name', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2666, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_max', 'The discount must be less than the original price', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2667, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_required_if', 'Must enter a discount when you want to schedule a promotion', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2668, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_end_date_after', 'End date must be after start date', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2669, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_start_date_required_if', 'Discount start date cannot be left blank when scheduling is selected', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2670, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price', 'Discounts cannot be left blank when scheduling is selected', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2671, 1, 'en', 'plugins/ecommerce/reports', 'name', 'Report', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2672, 1, 'en', 'plugins/ecommerce/reports', 'widget.order.title', 'Orders', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2673, 1, 'en', 'plugins/ecommerce/reports', 'count.revenue', 'Today revenue', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2674, 1, 'en', 'plugins/ecommerce/reports', 'count.orders', 'Today orders', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2675, 1, 'en', 'plugins/ecommerce/reports', 'count.products', 'Total products', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2676, 1, 'en', 'plugins/ecommerce/reports', 'count.customers', 'Total customers', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2677, 1, 'en', 'plugins/ecommerce/reports', 'product_name', 'Product name', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2678, 1, 'en', 'plugins/ecommerce/reports', 'quantity', 'Quantity', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2679, 1, 'en', 'plugins/ecommerce/reports', 'revenue_statistics', 'Revenue statistics', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2680, 1, 'en', 'plugins/ecommerce/reports', 'top_selling_products', 'Top selling products in this month', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2681, 1, 'en', 'plugins/ecommerce/reports', 'today', 'Today', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2682, 1, 'en', 'plugins/ecommerce/reports', 'this_week', 'This week', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2683, 1, 'en', 'plugins/ecommerce/reports', 'this_month', 'This month', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2684, 1, 'en', 'plugins/ecommerce/reports', 'this_year', 'This year', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2685, 1, 'en', 'plugins/ecommerce/reports', 'revenue_this_month', 'Revenue this month', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2686, 1, 'en', 'plugins/ecommerce/reports', 'order_processing_this_month', 'order(s) processing in this month', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2687, 1, 'en', 'plugins/ecommerce/reports', 'order_completed_this_month', 'order(s) completed in this month', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2688, 1, 'en', 'plugins/ecommerce/reports', 'product_will_be_out_of_stock', 'product(s) will be out of stock soon', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2689, 1, 'en', 'plugins/ecommerce/reports', 'product_out_of_stock', 'product(s) out of stock', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2690, 1, 'en', 'plugins/ecommerce/review', 'name', 'Reviews', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2691, 1, 'en', 'plugins/ecommerce/review', 'add_review', 'Add review', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2692, 1, 'en', 'plugins/ecommerce/review', 'delete_review', 'Delete review', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2693, 1, 'en', 'plugins/ecommerce/review', 'create_review', 'Create Review', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2694, 1, 'en', 'plugins/ecommerce/review', 'please_select_rating', 'Please select rating', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2695, 1, 'en', 'plugins/ecommerce/review', 'comment', 'Comment', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2696, 1, 'en', 'plugins/ecommerce/review', 'approve', 'Approve', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2697, 1, 'en', 'plugins/ecommerce/review', 'approved', 'Approved', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2698, 1, 'en', 'plugins/ecommerce/review', 'disapprove', 'Disapprove', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2699, 1, 'en', 'plugins/ecommerce/review', 'disapproved', 'Disapproved', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2700, 1, 'en', 'plugins/ecommerce/review', 'product', 'Product', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2701, 1, 'en', 'plugins/ecommerce/review', 'user', 'User', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2702, 1, 'en', 'plugins/ecommerce/review', 'star', 'Star', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2703, 1, 'en', 'plugins/ecommerce/review', 'status', 'Status', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2704, 1, 'en', 'plugins/ecommerce/review', 'list_review', 'Customer reviews', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2705, 1, 'en', 'plugins/ecommerce/review', 'intro.title', 'Manage customer reviews', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2706, 1, 'en', 'plugins/ecommerce/review', 'intro.description', 'Customer reviews will be shown here and you can manage it to show/hide in product detail page.', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2707, 1, 'en', 'plugins/ecommerce/shipping', 'name', 'Shipping Rules', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2708, 1, 'en', 'plugins/ecommerce/shipping', 'shipping', 'Shipping', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2709, 1, 'en', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2710, 1, 'en', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2711, 1, 'en', 'plugins/ecommerce/shipping', 'currency', 'Currency', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2712, 1, 'en', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2713, 1, 'en', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2714, 1, 'en', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2715, 1, 'en', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2716, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2717, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping :code', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2718, 1, 'en', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2719, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_methods', 'Shipping methods', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2720, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Create shipping method', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2721, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Edit shipping method', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2722, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Add shipping region', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2723, 1, 'en', 'plugins/ecommerce/shipping', 'country', 'Country', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2724, 1, 'en', 'plugins/ecommerce/shipping', 'state', 'State', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2725, 1, 'en', 'plugins/ecommerce/shipping', 'city', 'City', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2726, 1, 'en', 'plugins/ecommerce/shipping', 'address', 'Address', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2727, 1, 'en', 'plugins/ecommerce/shipping', 'phone', 'Phone', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2728, 1, 'en', 'plugins/ecommerce/shipping', 'email', 'Email', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2729, 1, 'en', 'plugins/ecommerce/shipping', 'zip_code', 'Zip code', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2730, 1, 'en', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2731, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2732, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2733, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2734, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2735, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2736, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2737, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2738, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2739, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2740, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2741, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2742, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2743, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2744, 1, 'en', 'plugins/ecommerce/shipping', 'delete', 'Delete', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2745, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules', 'Shipping Rules', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2746, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules_description', 'Rules to calculate shipping fee.', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2747, 1, 'en', 'plugins/ecommerce/shipping', 'select_country', 'Select country', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2748, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_rule', 'Add shipping rule', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2749, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate', 'Delete shipping rate for area', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2750, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate_confirmation', 'Are you sure you want to delete <strong class=\"region-price-item-label\"></strong> from this shipping area?', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2751, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area', 'Delete shipping area', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2752, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area_confirmation', 'Are you sure you want to delete shipping area <strong class=\"region-item-label\"></strong>?', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2753, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_fee_for_area', 'Add shipping fee for area', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2754, 1, 'en', 'plugins/ecommerce/shipping', 'confirm', 'Confirm', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2755, 1, 'en', 'plugins/ecommerce/shipping', 'save', 'Save', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2756, 1, 'en', 'plugins/ecommerce/shipping', 'greater_than', 'Greater than', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2757, 1, 'en', 'plugins/ecommerce/shipping', 'type', 'Type', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2758, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rule_name', 'Name of shipping rule', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2759, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee', 'Shipping fee', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2760, 1, 'en', 'plugins/ecommerce/shipping', 'cancel', 'Cancel', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2761, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_weight', 'Based on product\'s weight (grams)', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2762, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_price', 'Based on product\'s price', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2763, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_canceled', 'Shipment was canceled', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2764, 1, 'en', 'plugins/ecommerce/shipping', 'at', 'At', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2765, 1, 'en', 'plugins/ecommerce/shipping', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2766, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status', 'Update shipping status', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2767, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status', 'Update COD status', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2768, 1, 'en', 'plugins/ecommerce/shipping', 'history', 'History', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2769, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_information', 'Shipment information', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2770, 1, 'en', 'plugins/ecommerce/shipping', 'order_number', 'Order number', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2771, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_method', 'Shipping method', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2772, 1, 'en', 'plugins/ecommerce/shipping', 'select_shipping_method', 'Select shipping method', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2773, 1, 'en', 'plugins/ecommerce/shipping', 'cod_status', 'COD status', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2774, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_status', 'Shipping status', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2775, 1, 'en', 'plugins/ecommerce/shipping', 'customer_information', 'Customer information', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2776, 1, 'en', 'plugins/ecommerce/shipping', 'sku', 'SKU', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2777, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_title', 'Confirm <span class=\"shipment-status-label\"></span> ?', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2778, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_description', 'Are you sure you want to confirm <span class=\"shipment-status-label\"></span> for this shipment?', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2779, 1, 'en', 'plugins/ecommerce/shipping', 'accept', 'Accept', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2780, 1, 'en', 'plugins/ecommerce/shipping', 'weight_unit', 'Weight (:unit)', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2781, 1, 'en', 'plugins/ecommerce/shipping', 'warehouse', 'Warehouse', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2782, 1, 'en', 'plugins/ecommerce/shipping', 'cod_amount', 'Cash on delivery amount (COD)', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2783, 1, 'en', 'plugins/ecommerce/shipping', 'cancel_shipping', 'Cancel shipping', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2784, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_address', 'Shipping address', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2785, 1, 'en', 'plugins/ecommerce/shipping', 'packages', 'Packages', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2786, 1, 'en', 'plugins/ecommerce/shipping', 'edit', 'Edit', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2787, 1, 'en', 'plugins/ecommerce/shipping', 'fee', 'Fee', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2788, 1, 'en', 'plugins/ecommerce/shipping', 'note', 'Note', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2789, 1, 'en', 'plugins/ecommerce/shipping', 'finish', 'Finish', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2790, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee_cod', 'Shipping fee/COD', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2791, 1, 'en', 'plugins/ecommerce/shipping', 'send_confirmation_email_to_customer', 'Send confirmation email to customer', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2792, 1, 'en', 'plugins/ecommerce/shipping', 'form_name', 'Name', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2793, 1, 'en', 'plugins/ecommerce/shipping', 'changed_shipping_status', 'Changed status of shipping to : :status . Updated by: %user_name%', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2794, 1, 'en', 'plugins/ecommerce/shipping', 'order_confirmed_by', 'Order confirmed by %user_name%', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2795, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_canceled_by', 'Shipping is cancelled by %user_name%', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2796, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status_success', 'Update shipping status successfully!', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2797, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status_success', 'Updated COD status of shipping successfully!', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2798, 1, 'en', 'plugins/ecommerce/shipping', 'updated_cod_status_by', 'Updated COD status to :status . Updated by: %user_name%', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2799, 1, 'en', 'plugins/ecommerce/shipping', 'all', 'All', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2800, 1, 'en', 'plugins/ecommerce/shipping', 'error_when_adding_new_region', 'There is an error when adding new region!', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2801, 1, 'en', 'plugins/ecommerce/shipping', 'delivery', 'Delivery', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2802, 1, 'en', 'plugins/ecommerce/shipping', 'adjustment_price_of', 'Adjustment price of :key', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2803, 1, 'en', 'plugins/ecommerce/store-locator', 'name', 'Store locators', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2804, 1, 'en', 'plugins/ecommerce/store-locator', 'description', 'This address will appear on your invoice and will be used to calculate your shipping price.', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2805, 1, 'en', 'plugins/ecommerce/store-locator', 'shop_name', 'Shop name', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2806, 1, 'en', 'plugins/ecommerce/store-locator', 'phone', 'Phone', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2807, 1, 'en', 'plugins/ecommerce/store-locator', 'email', 'Email', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2808, 1, 'en', 'plugins/ecommerce/store-locator', 'state', 'State', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2809, 1, 'en', 'plugins/ecommerce/store-locator', 'city', 'City', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2810, 1, 'en', 'plugins/ecommerce/store-locator', 'country', 'Country', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2811, 1, 'en', 'plugins/ecommerce/store-locator', 'address', 'Address', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2812, 1, 'en', 'plugins/ecommerce/store-locator', 'primary_store_is', 'Primary store is', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2813, 1, 'en', 'plugins/ecommerce/store-locator', 'store_name', 'Store name', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2814, 1, 'en', 'plugins/ecommerce/store-locator', 'select_country', 'Select country...', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2815, 1, 'en', 'plugins/ecommerce/store-locator', 'default_shipping_location', 'Default shipping location', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2816, 1, 'en', 'plugins/ecommerce/store-locator', 'default_store', 'Default store', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2817, 1, 'en', 'plugins/ecommerce/tax', 'name', 'Taxes', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2818, 1, 'en', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2819, 1, 'en', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2820, 1, 'en', 'plugins/ecommerce/tax', 'title', 'Title', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2821, 1, 'en', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2822, 1, 'en', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2823, 1, 'en', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2824, 1, 'vi', 'plugins/ecommerce/brands', 'name', 'Thương hiệu', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2825, 1, 'vi', 'plugins/ecommerce/brands', 'create', 'Thêm thương hiệu mới', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2826, 1, 'vi', 'plugins/ecommerce/brands', 'edit', 'Sửa thương hiệu', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2827, 1, 'vi', 'plugins/ecommerce/brands', 'list', 'Danh sách thương hiệu', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2828, 1, 'vi', 'plugins/ecommerce/brands', 'form.name', 'Tên', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2829, 1, 'vi', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Tên thương hiệu (tối đa 255 kí tự)', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2830, 1, 'vi', 'plugins/ecommerce/brands', 'form.description', 'Mô tả', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2831, 1, 'vi', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Mô tả ngắn cho thương hiệu này (tối đa 400 kí tự)', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2832, 1, 'vi', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2833, 1, 'vi', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2834, 1, 'vi', 'plugins/ecommerce/brands', 'form.is_featured', 'Nổi bật?', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2835, 1, 'vi', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2836, 1, 'vi', 'plugins/ecommerce/brands', 'website', 'Website', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2837, 1, 'vi', 'plugins/ecommerce/brands', 'notices.no_select', 'Không có bản ghi nào được chọn!', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2838, 1, 'vi', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Cập nhật thành công', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2839, 1, 'vi', 'plugins/ecommerce/brands', 'cannot_delete', 'Xoá không thành công', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2840, 1, 'vi', 'plugins/ecommerce/brands', 'brand_deleted', 'Xoá thương hiệu thành công', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2841, 1, 'vi', 'plugins/ecommerce/brands', 'menu', 'Thương hiệu', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2842, 1, 'vi', 'plugins/ecommerce/brands', 'intro.title', 'Quản lý danh sách thương hiệu', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2843, 1, 'vi', 'plugins/ecommerce/brands', 'intro.description', 'Các thương hiệu của sản phẩm như Nike, Adidas, Bitis ...', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2844, 1, 'vi', 'plugins/ecommerce/brands', 'intro.button_text', 'Tạo thương hiệu', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2845, 1, 'vi', 'plugins/ecommerce/currencies', 'name', 'Tiền tệ', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2846, 1, 'vi', 'plugins/ecommerce/currencies', 'create', 'Thêm loại tiền tệ mới', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2847, 1, 'vi', 'plugins/ecommerce/currencies', 'edit', 'Sửa tiền tệ', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2848, 1, 'vi', 'plugins/ecommerce/currencies', 'list', 'Danh sách tiền tệ', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2849, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.title', 'Tên', '2021-02-24 05:13:36', '2021-02-24 05:13:36');
INSERT INTO `translations` VALUES (2850, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.code', 'Mã', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2851, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.symbol', 'Kí hiệu', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2852, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.is_prefix_symbol', 'Sử dụng ký hiệu trước số tiền', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2853, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.status', 'Trạng thái', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2854, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.order', 'Sắp xếp', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2855, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.title', 'Tiêu đề', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2856, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.code', 'Mã', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2857, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.symbol', 'Kí hiệu', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2858, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.is_prefix_symbol', 'Sử dụng ký hiệu trước số tiền', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2859, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.status', 'Trạng thái', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2860, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.order', 'Sắp xếp', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2861, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.decimals', 'Số kí tự sau dấu phân cách', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2862, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.activated', 'Đã kích hoạt', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2863, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.deactivated', 'Đã bị huỷ kích hoạt', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2864, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.yes', 'Có', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2865, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.no', 'Không', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2866, 1, 'vi', 'plugins/ecommerce/currency', 'currencies', 'Tiền tệ', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2867, 1, 'vi', 'plugins/ecommerce/currency', 'setting_description', 'Các loại tiền tệ được sử dụng trên website.', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2868, 1, 'vi', 'plugins/ecommerce/currency', 'name', 'Tên', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2869, 1, 'vi', 'plugins/ecommerce/currency', 'symbol', 'Ký hiệu', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2870, 1, 'vi', 'plugins/ecommerce/currency', 'number_of_decimals', 'Số thập phân', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2871, 1, 'vi', 'plugins/ecommerce/currency', 'exchange_rate', 'Tỷ giá', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2872, 1, 'vi', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Vị trí ký hiệu', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2873, 1, 'vi', 'plugins/ecommerce/currency', 'is_default', 'Mặc định?', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2874, 1, 'vi', 'plugins/ecommerce/currency', 'remove', 'Xoá', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2875, 1, 'vi', 'plugins/ecommerce/currency', 'new_currency', 'Thêm tiền tệ mới', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2876, 1, 'vi', 'plugins/ecommerce/currency', 'save_settings', 'Lưu cài đặt', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2877, 1, 'vi', 'plugins/ecommerce/currency', 'before_number', 'Trước số', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2878, 1, 'vi', 'plugins/ecommerce/currency', 'after_number', 'Sau số', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2879, 1, 'vi', 'plugins/ecommerce/customer', 'name', 'Khách hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2880, 1, 'vi', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2881, 1, 'vi', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2882, 1, 'vi', 'plugins/ecommerce/customer', 'email', 'Email', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2883, 1, 'vi', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2884, 1, 'vi', 'plugins/ecommerce/customer', 'password', 'Password', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2885, 1, 'vi', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2886, 1, 'vi', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2887, 1, 'vi', 'plugins/ecommerce/customer', 'intro.title', 'Quản lý danh sách khách hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2888, 1, 'vi', 'plugins/ecommerce/customer', 'intro.description', 'Khi khách hàng đặt hàng, bạn sẽ biết được thông tin và lịch sử mua hàng của khách hàng.', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2889, 1, 'vi', 'plugins/ecommerce/customer', 'intro.button_text', 'Tạo khách hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2890, 1, 'vi', 'plugins/ecommerce/discount', 'name', 'Khuyến mãi', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2891, 1, 'vi', 'plugins/ecommerce/discount', 'invalid_coupon', 'Mã khuyến mãi không hợp lệ hoặc đã hết hạn!', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2892, 1, 'vi', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Mã khuyến mãi này không thể sử dụng chung với chương trình khuyến mãi!', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2893, 1, 'vi', 'plugins/ecommerce/discount', 'not_used', 'Chưa sử dụng mã giảm giá này', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2894, 1, 'vi', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2895, 1, 'vi', 'plugins/ecommerce/discount', 'used', 'Used', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2896, 1, 'vi', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2897, 1, 'vi', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2898, 1, 'vi', 'plugins/ecommerce/discount', 'intro.title', 'Chương trình khuyến mãi', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2899, 1, 'vi', 'plugins/ecommerce/discount', 'intro.description', 'Tạo ra các mã coupon, cài đặt một sản phẩm, hoặc một nhóm sản phẩm khuyến mãi dành cho các khách hàng thân thiết của bạn.', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2900, 1, 'vi', 'plugins/ecommerce/discount', 'intro.button_text', 'Tạo khuyến mãi', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2901, 1, 'vi', 'plugins/ecommerce/ecommerce', 'settings', 'Cài đặt', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2902, 1, 'vi', 'plugins/ecommerce/ecommerce', 'name', 'Thương mại điện tử', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2903, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2904, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2905, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2906, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2907, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2908, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2909, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2910, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2911, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2912, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2913, 1, 'vi', 'plugins/ecommerce/ecommerce', 'store_address', 'Địa chỉ cửa hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2914, 1, 'vi', 'plugins/ecommerce/ecommerce', 'store_phone', 'Số điện thoại cửa hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2915, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_id', 'Mã đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2916, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_token', 'Chuỗi mã hoá đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2917, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_name', 'Tên khách hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2918, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_email', 'Email khách hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2919, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Số điện thoại khách hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2920, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_address', 'Địa chỉ khách hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2921, 1, 'vi', 'plugins/ecommerce/ecommerce', 'product_list', 'Danh sách sản phẩm trong đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2922, 1, 'vi', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Chi tiết thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2923, 1, 'vi', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Phương thức vận chuyển', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2924, 1, 'vi', 'plugins/ecommerce/ecommerce', 'payment_method', 'Phương thức thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2925, 1, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Tiêu chuẩn & Định dạng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2926, 1, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Các tiêu chuẩn và các định dạng được sử dụng để tính toán những thứ như giá cả sản phẩm, trọng lượng vận chuyển và thời gian đơn hàng được đặt.', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2927, 1, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Chỉnh sửa định dạng mã đơn hàng (tùy chọn)', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2928, 1, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'Mã đơn hàng mặc định bắt đầu từ :number. Bạn có thể thay đổi chuỗi bắt đầu hoặc kết thúc để tạo mã đơn hàng theo ý bạn, ví dụ \"DH-:number\" hoặc \":number-A\"', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2929, 1, 'vi', 'plugins/ecommerce/ecommerce', 'start_with', 'Bắt đầu bằng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2930, 1, 'vi', 'plugins/ecommerce/ecommerce', 'end_with', 'Kết thúc bằng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2931, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Mã đơn hàng của bạn sẽ hiển thị theo mẫu', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2932, 1, 'vi', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Đơn vị cân nặng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2933, 1, 'vi', 'plugins/ecommerce/ecommerce', 'height_unit', 'Đơn vị chiều dài/chiều cao', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2934, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_title', 'Xác nhận đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2935, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_description', 'Được gửi khi khách hàng tạo đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2936, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_subject', 'Đơn hàng mới {{ order_id }}', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2937, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_title', 'Hủy đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2938, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_description', 'Được gửi khi khách hàng hủy đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2939, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_subject', 'Đơn hàng đã được huỷ {{ order_id }}', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2940, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Xác nhận giao hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2941, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Được gửi đến khách hàng khi bắt đầu giao hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2942, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_subject', 'Đơn hàng đang được giao {{ order_id }}', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2943, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_title', 'Thông báo có đơn hàng mới', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2944, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_description', 'Được gửi cho quản trị viên khi có khách mua hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2945, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_subject', 'Đơn hàng mới {{ order_id }}', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2946, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_title', 'Xác nhận đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2947, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_description', 'Email được gửi đến khách hàng khi đơn hàng xác nhận', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2948, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_subject', 'Đơn hàng đã được xác nhận {{ order_id }}', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2949, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Xác nhận thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2950, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Email được gửi đến khách hàng khi đơn hàng xác nhận thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2951, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_subject', 'Đơn hàng đã được xác nhận thanh toán {{ order_id }}', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2952, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_title', 'Đơn hàng đang chờ hoàn tất', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2953, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_description', 'Email nhắc nhở khách hàng hoàn tất đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2954, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_subject', 'Đơn hàng đang chờ hoàn tất', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2955, 1, 'vi', 'plugins/ecommerce/order', 'statuses.pending', 'Chưa xử lý', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2956, 1, 'vi', 'plugins/ecommerce/order', 'statuses.processing', 'Đang xử lý', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2957, 1, 'vi', 'plugins/ecommerce/order', 'statuses.delivering', 'Đang giao hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2958, 1, 'vi', 'plugins/ecommerce/order', 'statuses.delivered', 'Đã giao hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2959, 1, 'vi', 'plugins/ecommerce/order', 'statuses.completed', 'Hoàn thành', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2960, 1, 'vi', 'plugins/ecommerce/order', 'statuses.canceled', 'Bị huỷ', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2961, 1, 'vi', 'plugins/ecommerce/order', 'name', 'Đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2962, 1, 'vi', 'plugins/ecommerce/order', 'customer.messages.cancel_error', 'Đơn hàng đang được giao hoặc đã hoàn thành', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2963, 1, 'vi', 'plugins/ecommerce/order', 'customer.messages.cancel_success', 'Huỷ đơn hàng thành công', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2964, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_order', 'Đơn hàng chưa hoàn tất', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2965, 1, 'vi', 'plugins/ecommerce/order', 'order_id', 'Mã đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2966, 1, 'vi', 'plugins/ecommerce/order', 'customer_label', 'Khách hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2967, 1, 'vi', 'plugins/ecommerce/order', 'amount', 'Tổng cộng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2968, 1, 'vi', 'plugins/ecommerce/order', 'shipping_amount', 'Phí vận chuyển', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2969, 1, 'vi', 'plugins/ecommerce/order', 'payment_method', 'Phương thức thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2970, 1, 'vi', 'plugins/ecommerce/order', 'payment_status_label', 'Trạng thái thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2971, 1, 'vi', 'plugins/ecommerce/order', 'manage_orders', 'Quản lý đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2972, 1, 'vi', 'plugins/ecommerce/order', 'order_intro_description', 'Một khi cửa hàng của bạn có đơn đặt hàng, đây sẽ là nơi bạn xử lý và theo dõi những đơn đặt hàng đó.', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2973, 1, 'vi', 'plugins/ecommerce/order', 'create_new_order', 'Tạo đơn hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2974, 1, 'vi', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Quản lý đơn hàng chưa hoàn tất', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2975, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Đơn hàng chưa hoàn tất là đơn hàng được tạo khi khách hàng thêm sản phẩm vào giỏ hàng, tiến hành điền thông tin mua hàng nhưng không hoàn tất quá trình thanh toán.', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2976, 1, 'vi', 'plugins/ecommerce/payment', 'name', 'Thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2977, 1, 'vi', 'plugins/ecommerce/payment', 'all_payment', 'Tất cả thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2978, 1, 'vi', 'plugins/ecommerce/payment', 'payment_method', 'Phương thức thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2979, 1, 'vi', 'plugins/ecommerce/payment', 'checkout_success', 'Thanh toán thành công!', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2980, 1, 'vi', 'plugins/ecommerce/payment', 'view_payment', 'Xem thanh toán #', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2981, 1, 'vi', 'plugins/ecommerce/payment', 'charge_id', 'Mã giao dịch', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2982, 1, 'vi', 'plugins/ecommerce/payment', 'amount', 'Số tiền', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2983, 1, 'vi', 'plugins/ecommerce/payment', 'currency', 'Đơn vị tiền tệ', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2984, 1, 'vi', 'plugins/ecommerce/payment', 'user', 'Người dùng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2985, 1, 'vi', 'plugins/ecommerce/payment', 'paypal_name_required', 'Tên của phương thức PayPal là bắt buộc!', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2986, 1, 'vi', 'plugins/ecommerce/payment', 'paypal_name_max', 'Tên của phương thức PayPal quá dài!', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2987, 1, 'vi', 'plugins/ecommerce/payment', 'stripe_name_required', 'Tên của phương thức Stripe là bắt buộc!', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2988, 1, 'vi', 'plugins/ecommerce/payment', 'stripe_name_max', 'Tên của phương thức Stripe quá dài!', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2989, 1, 'vi', 'plugins/ecommerce/payment', 'status', 'Trạng thái', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2990, 1, 'vi', 'plugins/ecommerce/payment', 'enabled', 'Bật', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2991, 1, 'vi', 'plugins/ecommerce/payment', 'disabled', 'Tắt', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2992, 1, 'vi', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2993, 1, 'vi', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2994, 1, 'vi', 'plugins/ecommerce/payment', 'mode', 'Chế độ', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2995, 1, 'vi', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2996, 1, 'vi', 'plugins/ecommerce/payment', 'live', 'Live', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2997, 1, 'vi', 'plugins/ecommerce/payment', 'enable_payment_log', 'Bật lưu nhật ký thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2998, 1, 'vi', 'plugins/ecommerce/payment', 'yes', 'Có', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (2999, 1, 'vi', 'plugins/ecommerce/payment', 'no', 'Không', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3000, 1, 'vi', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3001, 1, 'vi', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3002, 1, 'vi', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3003, 1, 'vi', 'plugins/ecommerce/payment', 'action', 'Hành động', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3004, 1, 'vi', 'plugins/ecommerce/payment', 'go_back', 'Quay lại', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3005, 1, 'vi', 'plugins/ecommerce/payment', 'view', 'Xem', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3006, 1, 'vi', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Thanh toán khi nhận hàng (COD)', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3007, 1, 'vi', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Thông qua chuyển khoản ngân hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3008, 1, 'vi', 'plugins/ecommerce/payment', 'payment_via_cart', 'Thanh toán bằng thẻ', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3009, 1, 'vi', 'plugins/ecommerce/payment', 'card_number', 'Số thẻ', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3010, 1, 'vi', 'plugins/ecommerce/payment', 'full_name', 'Tên trên thẻ', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3011, 1, 'vi', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Thanh toán thông qua PayPal', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3012, 1, 'vi', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3013, 1, 'vi', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3014, 1, 'vi', 'plugins/ecommerce/payment', 'details', 'Chi tiết', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3015, 1, 'vi', 'plugins/ecommerce/payment', 'payer_name', 'Người thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3016, 1, 'vi', 'plugins/ecommerce/payment', 'email', 'Địa chỉ email', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3017, 1, 'vi', 'plugins/ecommerce/payment', 'phone', 'Điện thoại', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3018, 1, 'vi', 'plugins/ecommerce/payment', 'country', 'Quốc gia', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3019, 1, 'vi', 'plugins/ecommerce/payment', 'shipping_address', 'Địa chỉ giao hàng', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3020, 1, 'vi', 'plugins/ecommerce/payment', 'payment_details', 'Chi tiết giao dịch', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3021, 1, 'vi', 'plugins/ecommerce/payment', 'card', 'Thẻ', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3022, 1, 'vi', 'plugins/ecommerce/payment', 'address', 'Địa chỉ', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3023, 1, 'vi', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3024, 1, 'vi', 'plugins/ecommerce/payment', 'new_payment', 'Thanh toán cho đơn hàng :id', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3025, 1, 'vi', 'plugins/ecommerce/payment', 'payment_id', 'Mã thanh toán', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3026, 1, 'vi', 'plugins/ecommerce/prices', 'name', 'Price', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3027, 1, 'vi', 'plugins/ecommerce/prices', 'create', 'New price', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3028, 1, 'vi', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3029, 1, 'vi', 'plugins/ecommerce/prices', 'list', 'List price', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3030, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3031, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3032, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3033, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3034, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3035, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3036, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3037, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3038, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3039, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3040, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3041, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3042, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3043, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3044, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3045, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3046, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3047, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3048, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3049, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3050, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3051, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3052, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3053, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3054, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3055, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3056, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3057, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3058, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3059, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3060, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3061, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3062, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3063, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3064, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3065, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3066, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3067, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3068, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3069, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3070, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3071, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3072, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3073, 1, 'vi', 'plugins/ecommerce/product-attributes', 'name', 'Thuộc tính sản phẩm', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3074, 1, 'vi', 'plugins/ecommerce/product-attributes', 'create', 'Tạo', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3075, 1, 'vi', 'plugins/ecommerce/product-attributes', 'edit', 'Sửa', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3076, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.title', 'Quản lý danh sách thuộc tính sản phẩm', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3077, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.description', 'Các thuộc tính của sản phẩm như màu sắc, kích thước ...', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3078, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Tạo thuộc tính sản phẩm', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3079, 1, 'vi', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3080, 1, 'vi', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-02-24 05:13:37', '2021-02-24 05:13:37');
INSERT INTO `translations` VALUES (3081, 1, 'vi', 'plugins/ecommerce/product-categories', 'name', 'Danh mục sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3082, 1, 'vi', 'plugins/ecommerce/product-categories', 'none', 'Không có', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3083, 1, 'vi', 'plugins/ecommerce/product-categories', 'menu', 'Danh mục sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3084, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.title', 'Quản lý danh sách danh mục sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3085, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.description', 'Danh mục sản phẩm như quần áo, giày dép, linh kiện điện tử ...', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3086, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Tạo danh mục sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3087, 1, 'vi', 'plugins/ecommerce/product-collections', 'name', 'Nhóm sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3088, 1, 'vi', 'plugins/ecommerce/product-collections', 'create', 'Thêm nhóm sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3089, 1, 'vi', 'plugins/ecommerce/product-collections', 'edit', 'Sửa nhóm sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3090, 1, 'vi', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3091, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.title', 'Quản lý nhóm sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3092, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.description', 'Nhóm sản phẩm giúp quản lý sản phẩm và khách hàng tìm kiếm sản phẩm một cách dễ dàng.', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3093, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Tạo nhóm sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3094, 1, 'vi', 'plugins/ecommerce/products', 'name', 'Sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3095, 1, 'vi', 'plugins/ecommerce/products', 'create', 'Thêm sản phẩm mới', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3096, 1, 'vi', 'plugins/ecommerce/products', 'edit', 'Sửa sản phẩm - :name', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3097, 1, 'vi', 'plugins/ecommerce/products', 'form.name', 'Tên sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3098, 1, 'vi', 'plugins/ecommerce/products', 'form.name_placeholder', 'Tên sản phẩm (Tối đa 120 chữ cái)', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3099, 1, 'vi', 'plugins/ecommerce/products', 'form.description', 'Mô tả ngắn', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3100, 1, 'vi', 'plugins/ecommerce/products', 'form.description_placeholder', 'Mô tả ngắn gọn cho sản phẩm (Tối đa 400 chữ cái)', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3101, 1, 'vi', 'plugins/ecommerce/products', 'form.categories', 'Danh mục', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3102, 1, 'vi', 'plugins/ecommerce/products', 'form.content', 'Chi tiết sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3103, 1, 'vi', 'plugins/ecommerce/products', 'form.price', 'Giá cơ bản', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3104, 1, 'vi', 'plugins/ecommerce/products', 'form.price_sale', 'Giá giảm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3105, 1, 'vi', 'plugins/ecommerce/products', 'form.quantity', 'Số lượng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3106, 1, 'vi', 'plugins/ecommerce/products', 'form.brand', 'Thương hiệu', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3107, 1, 'vi', 'plugins/ecommerce/products', 'form.width', 'Rộng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3108, 1, 'vi', 'plugins/ecommerce/products', 'form.height', 'Cao', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3109, 1, 'vi', 'plugins/ecommerce/products', 'form.weight', 'Cân nặng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3110, 1, 'vi', 'plugins/ecommerce/products', 'form.image', 'Hình ảnh', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3111, 1, 'vi', 'plugins/ecommerce/products', 'form.label', 'Nhóm sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3112, 1, 'vi', 'plugins/ecommerce/products', 'form.product_type.title', 'Loại sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3113, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.title', 'Tình trạng kho', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3114, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.in_stock', 'Còn hàng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3115, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Hết hàng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3116, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Cho phép đặt hàng khi hết', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3117, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.title', 'Quản lý kho', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3118, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'Không quản lý kho', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3119, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'Quản lý kho', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3120, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Số lượng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3121, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.title', 'Giao hàng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3122, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.length', 'Chiều dài', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3123, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.wide', 'Chiều rộng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3124, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.height', 'Chiều cao', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3125, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.weight', 'Cân nặng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3126, 1, 'vi', 'plugins/ecommerce/products', 'form.date.start', 'Ngày bắt đầu', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3127, 1, 'vi', 'plugins/ecommerce/products', 'form.date.end', 'Ngày kết thúc', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3128, 1, 'vi', 'plugins/ecommerce/products', 'form.tags', 'Nhãn', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3129, 1, 'vi', 'plugins/ecommerce/products', 'form.tax', 'Thuế', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3130, 1, 'vi', 'plugins/ecommerce/products', 'price', 'Giá cơ bản', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3131, 1, 'vi', 'plugins/ecommerce/products', 'price_sale', 'Giá giảm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3132, 1, 'vi', 'plugins/ecommerce/products', 'quantity', 'Số lượng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3133, 1, 'vi', 'plugins/ecommerce/products', 'type', 'Loại sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3134, 1, 'vi', 'plugins/ecommerce/products', 'image', 'Ảnh', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3135, 1, 'vi', 'plugins/ecommerce/products', 'sku', 'Mã sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3136, 1, 'vi', 'plugins/ecommerce/products', 'brand', 'Thương hiệu', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3137, 1, 'vi', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3138, 1, 'vi', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3139, 1, 'vi', 'plugins/ecommerce/products', 'product_collections', 'Nhóm sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3140, 1, 'vi', 'plugins/ecommerce/products', 'products', 'Sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3141, 1, 'vi', 'plugins/ecommerce/products', 'menu', 'Sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3142, 1, 'vi', 'plugins/ecommerce/products', 'control.button_add_image', 'Thêm hình ảnh', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3143, 1, 'vi', 'plugins/ecommerce/products', 'overview', 'Tổng quan', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3144, 1, 'vi', 'plugins/ecommerce/products', 'attributes', 'Thuộc tính', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3145, 1, 'vi', 'plugins/ecommerce/products', 'product_has_variations', 'Sản phẩm có nhiều phiên bản', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3146, 1, 'vi', 'plugins/ecommerce/products', 'manage_products', 'Quản lý danh sách sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3147, 1, 'vi', 'plugins/ecommerce/products', 'add_new_product', 'Tạo sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3148, 1, 'vi', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Bắt đầu bán hàng bằng việc thêm sản phẩm.', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3149, 1, 'vi', 'plugins/ecommerce/reports', 'name', 'Báo cáo', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3150, 1, 'vi', 'plugins/ecommerce/reports', 'widget.order.title', 'Đơn hàng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3151, 1, 'vi', 'plugins/ecommerce/reports', 'count.revenue', 'Doanh thu hôm nay', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3152, 1, 'vi', 'plugins/ecommerce/reports', 'count.orders', 'Đơn hàng hôm nay', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3153, 1, 'vi', 'plugins/ecommerce/reports', 'count.products', 'Sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3154, 1, 'vi', 'plugins/ecommerce/reports', 'count.customers', 'Khách hàng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3155, 1, 'vi', 'plugins/ecommerce/reports', 'product_name', 'Tên sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3156, 1, 'vi', 'plugins/ecommerce/reports', 'quantity', 'Số lượng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3157, 1, 'vi', 'plugins/ecommerce/reports', 'revenue_statistics', 'Thống kê doanh thu', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3158, 1, 'vi', 'plugins/ecommerce/reports', 'top_selling_products', 'Sản phẩm bán chạy trong tháng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3159, 1, 'vi', 'plugins/ecommerce/review', 'name', 'Đánh giá', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3160, 1, 'vi', 'plugins/ecommerce/review', 'list_review', 'Khách hàng đánh giá', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3161, 1, 'vi', 'plugins/ecommerce/review', 'add_review', 'Thêm đánh giá', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3162, 1, 'vi', 'plugins/ecommerce/review', 'delete_review', 'Xóa đánh giá', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3163, 1, 'vi', 'plugins/ecommerce/review', 'create_review', 'Tạo đánh giá', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3164, 1, 'vi', 'plugins/ecommerce/review', 'please_select_rating', 'Chọn đánh giá', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3165, 1, 'vi', 'plugins/ecommerce/review', 'comment', 'Bình luận', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3166, 1, 'vi', 'plugins/ecommerce/review', 'require_login', 'Hãy :login để đánh giá sản phẩm!', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3167, 1, 'vi', 'plugins/ecommerce/review', 'you_reviewed', 'Bạn đã đánh giá sản phẩm này rồi!', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3168, 1, 'vi', 'plugins/ecommerce/review', 'add_success', 'Đánh giá sản phẩm thành công!', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3169, 1, 'vi', 'plugins/ecommerce/review', 'delete_success', 'Xóa đánh gía thành công!', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3170, 1, 'vi', 'plugins/ecommerce/review', 'approve', 'Chấp thuận', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3171, 1, 'vi', 'plugins/ecommerce/review', 'approved', 'Đã chấp thuận', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3172, 1, 'vi', 'plugins/ecommerce/review', 'disapprove', 'Không chấp thuận', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3173, 1, 'vi', 'plugins/ecommerce/review', 'disapproved', 'Đã không chấp thuận', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3174, 1, 'vi', 'plugins/ecommerce/review', 'product', 'Sản phẩm', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3175, 1, 'vi', 'plugins/ecommerce/review', 'user', 'Người dùng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3176, 1, 'vi', 'plugins/ecommerce/review', 'star', 'Sao', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3177, 1, 'vi', 'plugins/ecommerce/review', 'status', 'Trạng thái', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3178, 1, 'vi', 'plugins/ecommerce/review', 'intro.title', 'Quản lý danh sách nhận xét của khách hàng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3179, 1, 'vi', 'plugins/ecommerce/review', 'intro.description', 'Lưu trữ các nhận xét, đánh giá của khách hàng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3180, 1, 'vi', 'plugins/ecommerce/shipping', 'name', 'Phí vận chuyển', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3181, 1, 'vi', 'plugins/ecommerce/shipping', 'shipping', 'Vận chuyển', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3182, 1, 'vi', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3183, 1, 'vi', 'plugins/ecommerce/shipping', 'country', 'Quốc gia', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3184, 1, 'vi', 'plugins/ecommerce/shipping', 'state', 'State', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3185, 1, 'vi', 'plugins/ecommerce/shipping', 'city', 'City', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3186, 1, 'vi', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3187, 1, 'vi', 'plugins/ecommerce/shipping', 'currency', 'Currency', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3188, 1, 'vi', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3189, 1, 'vi', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3190, 1, 'vi', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3191, 1, 'vi', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3192, 1, 'vi', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3193, 1, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping #', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3194, 1, 'vi', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3195, 1, 'vi', 'plugins/ecommerce/shipping', 'shipping_methods', 'Phương thức vận chuyển', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3196, 1, 'vi', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Tạo phương thức vận chuyển', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3197, 1, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Sửa phương thức vận chuyển', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3198, 1, 'vi', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Thêm khu vực vận chuyển', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3199, 1, 'vi', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3200, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3201, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3202, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3203, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3204, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3205, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3206, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3207, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3208, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3209, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3210, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3211, 1, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3212, 1, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3213, 1, 'vi', 'plugins/ecommerce/store-locator', 'name', 'Địa chỉ cửa hàng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3214, 1, 'vi', 'plugins/ecommerce/store-locator', 'description', 'Địa chỉ này sẽ xuất hiện trên hoá đơn của bạn và sẽ được sử dụng để tính toán mức giá vận chuyển của bạn.', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3215, 1, 'vi', 'plugins/ecommerce/store-locator', 'shop_name', 'Tên cửa hàng', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3216, 1, 'vi', 'plugins/ecommerce/store-locator', 'phone', 'Điện thoại', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3217, 1, 'vi', 'plugins/ecommerce/store-locator', 'address', 'Địa chỉ', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3218, 1, 'vi', 'plugins/ecommerce/tax', 'name', 'Thuế', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3219, 1, 'vi', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3220, 1, 'vi', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3221, 1, 'vi', 'plugins/ecommerce/tax', 'title', 'Title', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3222, 1, 'vi', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3223, 1, 'vi', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3224, 1, 'vi', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3225, 1, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3226, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3227, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3228, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3229, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3230, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3231, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3232, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3233, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3234, 1, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3235, 1, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3236, 1, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3237, 1, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3238, 1, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3239, 1, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3240, 1, 'en', 'plugins/payment/payment', 'user', 'User', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3241, 1, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3242, 1, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3243, 1, 'en', 'plugins/payment/payment', 'action', 'Action', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3244, 1, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3245, 1, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3246, 1, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3247, 1, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3248, 1, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3249, 1, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3250, 1, 'en', 'plugins/payment/payment', 'details', 'Details', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3251, 1, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3252, 1, 'en', 'plugins/payment/payment', 'email', 'Email', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3253, 1, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3254, 1, 'en', 'plugins/payment/payment', 'country', 'Country', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3255, 1, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3256, 1, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3257, 1, 'en', 'plugins/payment/payment', 'card', 'Card', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3258, 1, 'en', 'plugins/payment/payment', 'address', 'Address', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3259, 1, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3260, 1, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3261, 1, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3262, 1, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3263, 1, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3264, 1, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3265, 1, 'en', 'plugins/payment/payment', 'use', 'Use', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3266, 1, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3267, 1, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3268, 1, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3269, 1, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3270, 1, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3271, 1, 'en', 'plugins/payment/payment', 'update', 'Update', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3272, 1, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3273, 1, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3274, 1, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3275, 1, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3276, 1, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3277, 1, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3278, 1, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3279, 1, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3280, 1, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3281, 1, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3282, 1, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3283, 1, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3284, 1, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3285, 1, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3286, 1, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3287, 1, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3288, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3289, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3290, 1, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3291, 1, 'en', 'plugins/payment/payment', 'name', 'Payments', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3292, 1, 'en', 'plugins/payment/payment', 'create', 'New payment', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3293, 1, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3294, 1, 'en', 'plugins/payment/payment', 'information', 'Information', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3295, 1, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3296, 1, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3297, 1, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3298, 1, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2021-02-24 05:13:38', '2021-02-24 05:13:38');
INSERT INTO `translations` VALUES (3299, 1, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3300, 1, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3301, 1, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3302, 1, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3303, 1, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3304, 1, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3305, 1, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3306, 1, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3307, 1, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3308, 1, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3309, 1, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3310, 1, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3311, 1, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3312, 1, 'en', 'plugins/payment/payment', 'total', 'Total', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3313, 1, 'en', 'plugins/payment/payment', 'status', 'Status', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3314, 1, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3315, 1, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3316, 1, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3317, 1, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3318, 1, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3319, 1, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3320, 1, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3321, 1, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3322, 1, 'vi', 'plugins/payment/payment', 'payments', 'Thanh toán', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3323, 1, 'vi', 'plugins/payment/payment', 'checkout_success', 'Thanh toán thành công!', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3324, 1, 'vi', 'plugins/payment/payment', 'view_payment', 'Xem thanh toán #', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3325, 1, 'vi', 'plugins/payment/payment', 'charge_id', 'Mã thanh toán', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3326, 1, 'vi', 'plugins/payment/payment', 'amount', 'Số tiền', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3327, 1, 'vi', 'plugins/payment/payment', 'currency', 'Loại tiền tệ', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3328, 1, 'vi', 'plugins/payment/payment', 'user', 'Người dùng', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3329, 1, 'vi', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3330, 1, 'vi', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3331, 1, 'vi', 'plugins/payment/payment', 'action', 'Hành động', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3332, 1, 'vi', 'plugins/payment/payment', 'payment_via_card', 'Thanh toán qua thẻ', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3333, 1, 'vi', 'plugins/payment/payment', 'card_number', 'Số thẻ', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3334, 1, 'vi', 'plugins/payment/payment', 'full_name', 'Họ tên', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3335, 1, 'vi', 'plugins/payment/payment', 'payment_via_paypal', 'Thanh toán qua PayPal', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3336, 1, 'vi', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3337, 1, 'vi', 'plugins/payment/payment', 'cvc', 'CVC', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3338, 1, 'vi', 'plugins/payment/payment', 'details', 'Chi tiết', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3339, 1, 'vi', 'plugins/payment/payment', 'payer_name', 'Tên người mua', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3340, 1, 'vi', 'plugins/payment/payment', 'email', 'Email', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3341, 1, 'vi', 'plugins/payment/payment', 'phone', 'Điện thoại', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3342, 1, 'vi', 'plugins/payment/payment', 'country', 'Quốc gia', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3343, 1, 'vi', 'plugins/payment/payment', 'shipping_address', 'Địa chỉ giao hàng', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3344, 1, 'vi', 'plugins/payment/payment', 'payment_details', 'Chi tiết thanh toán', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3345, 1, 'vi', 'plugins/payment/payment', 'card', 'Thẻ', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3346, 1, 'vi', 'plugins/payment/payment', 'address', 'Địa chỉ', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3347, 1, 'vi', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán.', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3348, 1, 'vi', 'plugins/payment/payment', 'payment_id', 'Mã thanh toán', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3349, 1, 'vi', 'plugins/payment/payment', 'payment_methods', 'Phương thức thanh toán', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3350, 1, 'vi', 'plugins/payment/payment', 'transactions', 'Lịch sử giao dịch', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3351, 1, 'vi', 'plugins/payment/payment', 'payment_methods_description', 'Cài đặt các phương thức thanh toán cho website', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3352, 1, 'vi', 'plugins/payment/payment', 'paypal_description', 'Khách hàng có thể mua hàng và thanh toán trực tiếp thông qua cổng thanh toán PayPal', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3353, 1, 'vi', 'plugins/payment/payment', 'use', 'Dùng', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3354, 1, 'vi', 'plugins/payment/payment', 'stripe_description', 'Khách hàng có thể mua hàng và thanh toán bằng Visa, Credit card thông qua cổng thanh toán Stripe', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3355, 1, 'vi', 'plugins/payment/payment', 'edit', 'Chỉnh sửa', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3356, 1, 'vi', 'plugins/payment/payment', 'settings', 'Cài đặt', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3357, 1, 'vi', 'plugins/payment/payment', 'activate', 'Kích hoạt', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3358, 1, 'vi', 'plugins/payment/payment', 'deactivate', 'Huỷ kích hoạt', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3359, 1, 'vi', 'plugins/payment/payment', 'update', 'Cập nhật', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3360, 1, 'vi', 'plugins/payment/payment', 'configuration_instruction', 'Hướng dẫn cấu hình :name', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3361, 1, 'vi', 'plugins/payment/payment', 'configuration_requirement', 'Để sử dụng :name bạn cần', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3362, 1, 'vi', 'plugins/payment/payment', 'service_registration', 'Đăng ký dịch vụ với :name', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3363, 1, 'vi', 'plugins/payment/payment', 'after_service_registration_msg', 'Sau khi hoàn tất các bước đăng ký tại :name, bạn sẽ có các thông số Client ID, Client Secret', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3364, 1, 'vi', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Nhập các thông số Client ID, Secret vào ô bên phải', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3365, 1, 'vi', 'plugins/payment/payment', 'method_name', 'Tên phương thức', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3366, 1, 'vi', 'plugins/payment/payment', 'please_provide_information', 'Xin vui lòng cung cấp thông tin', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3367, 1, 'vi', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3368, 1, 'vi', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3369, 1, 'vi', 'plugins/payment/payment', 'stripe_key', 'Stripe Key', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3370, 1, 'vi', 'plugins/payment/payment', 'stripe_secret', 'Stripe Secret', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3371, 1, 'vi', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3372, 1, 'vi', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3373, 1, 'vi', 'plugins/payment/payment', 'secret', 'Secret', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3374, 1, 'vi', 'plugins/payment/payment', 'pay_online_via', 'Thanh toán online qua :name', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3375, 1, 'vi', 'plugins/payment/payment', 'sandbox_mode', 'Chế độ thử nghiệm', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3376, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method', 'Huỷ kích hoạt phương thức', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3377, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Bạn có chắc chắn muốn huỷ phương thức thành toán này?', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3378, 1, 'vi', 'plugins/payment/payment', 'agree', 'Đồng ý', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3379, 1, 'vi', 'plugins/payment/payment', 'name', 'Thanh toán', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3380, 1, 'vi', 'plugins/payment/payment', 'create', 'Thêm thanh toán mới', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3381, 1, 'vi', 'plugins/payment/payment', 'go_back', 'Trở lại', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3382, 1, 'vi', 'plugins/payment/payment', 'information', 'Thông tin', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3383, 1, 'vi', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3384, 1, 'vi', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3385, 1, 'vi', 'plugins/payment/payment', 'methods.cod', 'Thanh toán khi giao hàng (COD)', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3386, 1, 'vi', 'plugins/payment/payment', 'methods.bank_transfer', 'Chuyển khoản qua ngân hàng', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3387, 1, 'vi', 'plugins/payment/payment', 'statuses.pending', 'Chưa hoàn tất', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3388, 1, 'vi', 'plugins/payment/payment', 'statuses.completed', 'Đã hoàn thành', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3389, 1, 'vi', 'plugins/payment/payment', 'statuses.refunding', 'Đang hoàn tiền', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3390, 1, 'vi', 'plugins/payment/payment', 'statuses.refunded', 'Đã hoàn tiền', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3391, 1, 'vi', 'plugins/payment/payment', 'statuses.fraud', 'Gian lận', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3392, 1, 'vi', 'plugins/payment/payment', 'statuses.failed', 'Thất bại', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3393, 1, 'vi', 'plugins/payment/payment', 'payment_methods_instruction', 'Hướng dẫn khách hàng thanh toán trực tiếp. Có thể chọn thanh toán khi giao hàng hoặc chuyển khoản', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3394, 1, 'vi', 'plugins/payment/payment', 'payment_method_description', 'Hướng dẫn thanh toán – (Hiển thị ở trang thông báo mua hàng thành công và trang thanh toán)', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3395, 1, 'vi', 'plugins/payment/payment', 'payment_via_cod', 'Thanh toán khi nhận hàng (COD)', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3396, 1, 'vi', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Chuyển khoản qua ngân hàng', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3397, 1, 'vi', 'plugins/payment/payment', 'payment_pending', 'Thực hiện thành công. Thanh toán của bạn đang được xử lý và sẽ được xác nhận bởi nhân viên.', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3398, 1, 'vi', 'plugins/payment/payment', 'created_at', 'Ngày tạo', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3399, 1, 'vi', 'plugins/payment/payment', 'payment_channel', 'Phương thức thanh toán', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3400, 1, 'vi', 'plugins/payment/payment', 'total', 'Tổng cộng', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3401, 1, 'vi', 'plugins/payment/payment', 'status', 'Trạng thái', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3402, 1, 'vi', 'plugins/payment/payment', 'default_payment_method', 'Phương thức thanh toán mặc định', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3403, 1, 'en', 'plugins/simple-slider/simple-slider', 'create', 'New slider', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3404, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit', 'Edit slider', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3405, 1, 'en', 'plugins/simple-slider/simple-slider', 'menu', 'Simple sliders', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3406, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.title', 'Simple sliders', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3407, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.description', 'Settings for Simple sliders', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3408, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets', 'Using default assets?', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3409, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets_description', 'If using assets option is enabled then below scripts will be auto added to front site.', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3410, 1, 'en', 'plugins/simple-slider/simple-slider', 'add_new', 'Add new', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3411, 1, 'en', 'plugins/simple-slider/simple-slider', 'save_sorting', 'Save sorting', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3412, 1, 'en', 'plugins/simple-slider/simple-slider', 'key', 'Key', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3413, 1, 'en', 'plugins/simple-slider/simple-slider', 'slide_items', 'Slide Items', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3414, 1, 'en', 'plugins/simple-slider/simple-slider', 'update_slide_position_success', 'Updated slide position successfully!', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3415, 1, 'en', 'plugins/simple-slider/simple-slider', 'create_new_slide', 'Create a new slide', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3416, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit_slide', 'Edit slide #:id', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3417, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_name', 'Simple Slider', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3418, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_description', 'Add a simple slider', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3419, 1, 'en', 'plugins/simple-slider/simple-slider', 'select_slider', 'Select a slider', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3420, 1, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3421, 1, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3422, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3423, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3424, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3425, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3426, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3427, 1, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3428, 1, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3429, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3430, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3431, 1, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3432, 1, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3433, 1, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3434, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3435, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3436, 1, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3437, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3438, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3439, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3440, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3441, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3442, 1, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3443, 1, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3444, 1, 'en', 'plugins/testimonial/testimonial', 'name', 'Testimonials', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3445, 1, 'en', 'plugins/testimonial/testimonial', 'create', 'New testimonial', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3446, 1, 'en', 'plugins/testimonial/testimonial', 'edit', 'Edit testimonial', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3447, 1, 'en', 'plugins/testimonial/testimonial', 'company', 'Position/Company', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3448, 1, 'vi', 'plugins/testimonial/testimonial', 'name', 'Nhận xét của khách hàng', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3449, 1, 'vi', 'plugins/testimonial/testimonial', 'create', 'Thêm nhận xét mới', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3450, 1, 'vi', 'plugins/testimonial/testimonial', 'edit', 'Sửa nhận xét', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3451, 1, 'vi', 'plugins/testimonial/testimonial', 'company', 'Chức vụ/Công ty', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3452, 1, 'en', 'plugins/testimonials/forms', 'name', 'Customer name', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3453, 1, 'en', 'plugins/testimonials/forms', 'company', 'Company/Working place', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3454, 1, 'en', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3455, 1, 'en', 'plugins/testimonials/forms', 'title', 'Title', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3456, 1, 'en', 'plugins/testimonials/forms', 'content', 'Content', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3457, 1, 'en', 'plugins/testimonials/forms', 'publish', 'Publish', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3458, 1, 'en', 'plugins/testimonials/forms', 'unpublish', 'Unpublish', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3459, 1, 'en', 'plugins/testimonials/testimonials', 'name', 'Testimonials', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3460, 1, 'en', 'plugins/testimonials/testimonials', 'create', 'New testimonials', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3461, 1, 'en', 'plugins/testimonials/testimonials', 'edit', 'Edit testimonials', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3462, 1, 'vi', 'plugins/testimonials/forms', 'name', 'Tên khách hàng', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3463, 1, 'vi', 'plugins/testimonials/forms', 'company', 'Công ty/Nơi làm việc', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3464, 1, 'vi', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3465, 1, 'vi', 'plugins/testimonials/forms', 'title', 'Tiêu đề', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3466, 1, 'vi', 'plugins/testimonials/forms', 'content', 'Nội dung', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3467, 1, 'vi', 'plugins/testimonials/forms', 'publish', 'Xuất bản', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3468, 1, 'vi', 'plugins/testimonials/forms', 'unpublish', 'Không xuất bản', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3469, 1, 'vi', 'plugins/testimonials/testimonials', 'name', 'Nhận xét khách hàng', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3470, 1, 'vi', 'plugins/testimonials/testimonials', 'create', 'Tạo mới', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3471, 1, 'vi', 'plugins/testimonials/testimonials', 'edit', 'Sửa nhận xét', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3472, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3473, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3474, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3475, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3476, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3477, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3478, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3479, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3480, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3481, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3482, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3483, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3484, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3485, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3486, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3487, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3488, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3489, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Admin translations', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3490, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3491, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3492, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3493, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3494, 1, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3495, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3496, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3497, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3498, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3499, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-02-24 05:13:39', '2021-02-24 05:13:39');
INSERT INTO `translations` VALUES (3500, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3501, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3502, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3503, 1, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3504, 1, 'vi', 'auth', 'failed', 'Không tìm thấy thông tin đăng nhập hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3505, 1, 'vi', 'auth', 'throttle', 'Đăng nhập không đúng quá nhiều lần. Vui lòng thử lại sau :seconds giây.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3506, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3507, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3508, 1, 'vi', 'passwords', 'reset', 'Mật khẩu đã được cập nhật!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3509, 1, 'vi', 'passwords', 'sent', 'Chúng tôi đã gửi cho bạn đường dẫn thay đổi mật khẩu!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3510, 1, 'vi', 'passwords', 'token', 'Mã xác nhận mật khẩu không hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3511, 1, 'vi', 'passwords', 'user', 'Không tìm thấy thành viên với địa chỉ email này.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3512, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3513, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3514, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3515, 1, 'vi', 'validation', 'after_or_equal', 'Trường :attribute phải là một ngày sau hoặc bằng ngày :date.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3516, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3517, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3518, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3519, 1, 'vi', 'validation', 'array', 'Kiểu dữ liệu của trường :attribute phải là dạng mảng.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3520, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3521, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là một ngày trước hoặc bằng ngày :date.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3522, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3523, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3524, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max ký tự.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3525, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3526, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3527, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3528, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3529, 1, 'vi', 'validation', 'date_equals', 'Trường :attribute phải là một ngày bằng với :date.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3530, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3531, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3532, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3533, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3534, 1, 'vi', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3535, 1, 'vi', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3536, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3537, 1, 'vi', 'validation', 'ends_with', 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3538, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3539, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tập tin.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3540, 1, 'vi', 'validation', 'filled', 'Trường :attribute không được bỏ trống.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3541, 1, 'vi', 'validation', 'gt.numeric', 'Trường :attribute phải lớn hơn :max.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3542, 1, 'vi', 'validation', 'gt.file', 'Dung lượng tập tin trong trường :attribute phải lớn hơn :max KB.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3543, 1, 'vi', 'validation', 'gt.string', 'Trường :attribute phải lớn hơn :max ký tự.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3544, 1, 'vi', 'validation', 'gt.array', 'Trường :attribute phải lớn hơn :max phần tử.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3545, 1, 'vi', 'validation', 'gte.numeric', 'Trường :attribute phải lớn hơn hoặc bằng :max.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3546, 1, 'vi', 'validation', 'gte.file', 'Dung lượng tập tin trong trường :attribute phải lớn hơn hoặc bằng :max KB.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3547, 1, 'vi', 'validation', 'gte.string', 'Trường :attribute phải lớn hơn hoặc bằng :max ký tự.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3548, 1, 'vi', 'validation', 'gte.array', 'Trường :attribute phải lớn hơn hoặc bằng :max phần tử.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3549, 1, 'vi', 'validation', 'image', 'Các tập tin trong trường :attribute phải là định dạng hình ảnh.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3550, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3551, 1, 'vi', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3552, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3553, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉa IP.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3554, 1, 'vi', 'validation', 'ipv4', 'Trường :attribute phải là địa chỉ IPv4 hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3555, 1, 'vi', 'validation', 'ipv6', 'Trường :attribute phải là địa chỉ IPv6 hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3556, 1, 'vi', 'validation', 'json', 'Trường :attribute phải là chuỗi JSON hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3557, 1, 'vi', 'validation', 'lt.numeric', 'Trường :attribute phải nhỏ hơn là :min.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3558, 1, 'vi', 'validation', 'lt.file', 'Dung lượng tập tin trong trường :attribute phải nhỏ hơn :min KB.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3559, 1, 'vi', 'validation', 'lt.string', 'Trường :attribute phải có nhỏ hơn :min ký tự.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3560, 1, 'vi', 'validation', 'lt.array', 'Trường :attribute phải có nhỏ hơn :min phần tử.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3561, 1, 'vi', 'validation', 'lte.numeric', 'Trường :attribute phải nhỏ hơn hoặc bằng là :min.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3562, 1, 'vi', 'validation', 'lte.file', 'Dung lượng tập tin trong trường :attribute phải nhỏ hơn hoặc bằng :min KB.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3563, 1, 'vi', 'validation', 'lte.string', 'Trường :attribute phải có nhỏ hơn hoặc bằng :min ký tự.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3564, 1, 'vi', 'validation', 'lte.array', 'Trường :attribute phải có nhỏ hơn hoặc bằng :min phần tử.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3565, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3566, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max KB.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3567, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max ký tự.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3568, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3569, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3570, 1, 'vi', 'validation', 'mimetypes', 'Trường :attribute phải là một tệp có định dạng là: :values.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3571, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3572, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min KB.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3573, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min ký tự.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3574, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3575, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3576, 1, 'vi', 'validation', 'not_regex', 'Trường :attribute định dạng không hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3577, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3578, 1, 'vi', 'validation', 'password', 'Mật khẩu không đúng.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3579, 1, 'vi', 'validation', 'present', 'The :attribute field must be present.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3580, 1, 'vi', 'validation', 'regex', 'Định dạng trường :attribute không hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3581, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3582, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3583, 1, 'vi', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3584, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi trường :values có giá trị.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3585, 1, 'vi', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3586, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi trường :values không có giá trị.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3587, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3588, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3589, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3590, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3591, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size ký tự.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3592, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3593, 1, 'vi', 'validation', 'starts_with', 'Trường :attribute phải được bắt đầu bằng một trong những giá trị sau: :values', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3594, 1, 'vi', 'validation', 'string', 'Trường :attribute phải là một chuỗi.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3595, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3596, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong hệ thống.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3597, 1, 'vi', 'validation', 'uploaded', 'Trường :attribute không thể tải lên.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3598, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3599, 1, 'vi', 'validation', 'uuid', 'Trường :attribute không phải là một chuỗi UUID hợp lẹ.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3600, 1, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3601, 1, 'vi', 'validation', 'attributes.name', 'tên', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3602, 1, 'vi', 'validation', 'attributes.username', 'tên đăng nhập', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3603, 1, 'vi', 'validation', 'attributes.email', 'email', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3604, 1, 'vi', 'validation', 'attributes.first_name', 'tên', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3605, 1, 'vi', 'validation', 'attributes.last_name', 'họ', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3606, 1, 'vi', 'validation', 'attributes.password', 'mật khẩu', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3607, 1, 'vi', 'validation', 'attributes.password_confirmation', 'xác nhận mật khẩu', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3608, 1, 'vi', 'validation', 'attributes.city', 'thành phố', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3609, 1, 'vi', 'validation', 'attributes.country', 'quốc gia', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3610, 1, 'vi', 'validation', 'attributes.address', 'địa chỉ', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3611, 1, 'vi', 'validation', 'attributes.phone', 'số điện thoại', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3612, 1, 'vi', 'validation', 'attributes.mobile', 'di động', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3613, 1, 'vi', 'validation', 'attributes.age', 'tuổi', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3614, 1, 'vi', 'validation', 'attributes.sex', 'giới tính', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3615, 1, 'vi', 'validation', 'attributes.gender', 'giới tính', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3616, 1, 'vi', 'validation', 'attributes.year', 'năm', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3617, 1, 'vi', 'validation', 'attributes.month', 'tháng', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3618, 1, 'vi', 'validation', 'attributes.day', 'ngày', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3619, 1, 'vi', 'validation', 'attributes.hour', 'giờ', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3620, 1, 'vi', 'validation', 'attributes.minute', 'phút', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3621, 1, 'vi', 'validation', 'attributes.second', 'giây', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3622, 1, 'vi', 'validation', 'attributes.title', 'tiêu đề', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3623, 1, 'vi', 'validation', 'attributes.content', 'nội dung', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3624, 1, 'vi', 'validation', 'attributes.body', 'nội dung', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3625, 1, 'vi', 'validation', 'attributes.description', 'mô tả', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3626, 1, 'vi', 'validation', 'attributes.excerpt', 'trích dẫn', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3627, 1, 'vi', 'validation', 'attributes.date', 'ngày', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3628, 1, 'vi', 'validation', 'attributes.time', 'thời gian', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3629, 1, 'vi', 'validation', 'attributes.subject', 'tiêu đề', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3630, 1, 'vi', 'validation', 'attributes.message', 'lời nhắn', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3631, 1, 'vi', 'validation', 'attributes.available', 'có sẵn', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3632, 1, 'vi', 'validation', 'attributes.size', 'kích thước', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3633, 1, 'vi', '_json', 'Home', 'Trang chủ', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3634, 1, 'vi', '_json', 'Oops! The page you requested was not found!', 'Lỗi! Trang bạn yêu cầu không tìm thấy!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3635, 1, 'vi', '_json', 'The page you are looking for was moved, removed, renamed or might never existed.', 'Trang bạn đang tìm kiếm đã bị di chuyển, xóa, đổi tên hoặc có thể chưa bao giờ tồn tại.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3636, 1, 'vi', '_json', 'Page could not be loaded', 'Không thể tải trang', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3637, 1, 'vi', '_json', 'Service Unavailable', 'Service Unavailable', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3638, 1, 'vi', '_json', 'Sorry, we are doing some maintenance. Please check back soon.', 'Xin lỗi, chúng tôi đang thực hiện bảo trì. Vui lòng quay lại sau.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3639, 1, 'vi', '_json', 'Oh no', 'Oh no', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3640, 1, 'vi', '_json', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\":link\">clicking here</a>.', 'Hãy thử lại sau vài phút, hoặc trở về trang chủ bằng cách nhấn <a href=\":link\">vào đây</a>.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3641, 0, 'vi', '_json', 'Sub Total', 'Tạm tính', '2021-02-24 05:13:40', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3642, 0, 'vi', '_json', 'View Cart', 'Xem giỏ hàng', '2021-02-24 05:13:40', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3643, 1, 'vi', '_json', 'Checkout', 'Thanh toán', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3644, 1, 'vi', '_json', 'Your cart is empty!', 'Giỏ hàng của bạn đang trống!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3645, 1, 'vi', '_json', 'Contact Info', 'Thông tin liên hệ', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3646, 1, 'vi', '_json', 'Warning', 'Chú ý', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3647, 1, 'vi', '_json', 'Are you sure you want to remove this product from cart?', 'Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng?', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3648, 1, 'vi', '_json', 'Cancel', 'Hủy', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3649, 1, 'vi', '_json', 'Yes, remove it!', 'Vâng, xóa!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3650, 1, 'vi', '_json', 'Subscribe and Get 25% Discount!', 'Đăng ký và nhận chiết khấu 25%!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3651, 1, 'vi', '_json', 'Subscribe to the newsletter to receive updates about new products.', 'Theo dõi bản tin để nhận thông tin cập nhật về sản phẩm mới.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3652, 1, 'vi', '_json', 'Enter Your Email', 'Nhập email của bạn', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3653, 1, 'vi', '_json', 'Don\'t show this popup again!', 'Không hiện mục này lại nữa!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3654, 1, 'vi', '_json', 'Subscribe', 'Theo dõi', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3655, 1, 'vi', '_json', 'Login', 'Đăng nhập', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3656, 1, 'vi', '_json', 'Logout', 'Đăng xuất', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3657, 1, 'vi', '_json', 'All', 'Tất cả', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3658, 1, 'vi', '_json', 'Search Product', 'Tìm kiếm sản phẩm', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3659, 1, 'vi', '_json', 'All Categories', 'Tất cả danh mục', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3660, 1, 'vi', '_json', 'More Categories', 'Xem thêm', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3661, 1, 'vi', '_json', ':percentage Off', 'Giảm :percentage%', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3662, 0, 'vi', '_json', 'Add To Cart', 'Thêm vào giỏ hàng', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3663, 1, 'vi', '_json', 'Qty', 'Số lượng', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3664, 1, 'vi', '_json', 'SKU', 'Mã sản phẩm', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3665, 1, 'vi', '_json', 'Category', 'Danh mục', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3666, 1, 'vi', '_json', 'Tags', 'Thẻ', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3667, 1, 'vi', '_json', 'Share', 'Chia sẻ', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3668, 1, 'vi', '_json', 'Share on Facebook', 'Chia sẻ lên Facebook', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3669, 1, 'vi', '_json', 'Share on Twitter', 'Chia sẻ lên Twitter', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3670, 1, 'vi', '_json', 'Share on Linkedin', 'Chia sẻ lên Linkedin', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3671, 1, 'vi', '_json', ':count Review For :product', ':count đánh giá cho sản phẩm :product', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3672, 1, 'vi', '_json', 'Address', 'Địa chỉ', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3673, 1, 'vi', '_json', 'Email Address', 'Địa chỉ email', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3674, 1, 'vi', '_json', 'Phone', 'Số điện thoại', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3675, 1, 'vi', '_json', 'Maps', 'Bản đồ', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3676, 1, 'vi', '_json', 'Get In touch', 'Liên lạc', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3677, 1, 'vi', '_json', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3678, 1, 'vi', '_json', 'Name', 'Tên', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3679, 1, 'vi', '_json', 'Email', 'Email', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3680, 1, 'vi', '_json', 'Subject', 'Tiêu đề', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3681, 1, 'vi', '_json', 'Message', 'Nội dung', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3682, 1, 'vi', '_json', 'Send Message', 'Gửi tin nhắn', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3683, 1, 'vi', '_json', 'Shop Now', 'Mua hàng', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3684, 1, 'vi', '_json', 'View All', 'Xem tất cả', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3685, 1, 'vi', '_json', 'Order tracking :code', 'Mã theo dõi đơn hàng :code', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3686, 1, 'vi', '_json', 'Views', 'Lượt xem', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3687, 1, 'vi', '_json', 'Blog', 'Blog', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3688, 0, 'vi', '_json', 'Related posts', 'Bài viết liên quan', '2021-02-24 05:13:40', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3689, 1, 'vi', '_json', 'Search result for:', 'Kết quả tìm kiếm cho từ khóa:', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3690, 1, 'vi', '_json', 'No products!', 'Không có sản phẩm!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3691, 1, 'vi', '_json', 'Read More', 'Xem thêm', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3692, 1, 'vi', '_json', 'Search...', 'Tìm kiếm...', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3693, 1, 'vi', '_json', 'Search', 'Tìm kiếm', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3694, 1, 'vi', '_json', 'Send message successfully!', 'Gửi liên hệ thành công!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3695, 1, 'vi', '_json', 'Can\'t send message on this time, please try again later!', 'Không thể gửi liên hệ lúc này, vui lòng thử lại sau!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3696, 1, 'vi', '_json', 'This product is out of stock or not exists!', 'Sản phẩm đã hết hàng hoặc không tồn tại!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3697, 1, 'vi', '_json', 'Product :product is out of stock!', 'Sản phẩm :product đã hết hàng!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3698, 1, 'vi', '_json', 'Maximum quantity is', 'Số lượng tối đa là', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3699, 1, 'vi', '_json', 'Please choose attributes to buy this product', 'Vui lòng chọn thuộc tính trước khi thêm sản phẩm vào giỏ hàng', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3700, 1, 'vi', '_json', 'Added product :product to cart successfully!', 'Đã thêm thành công sản phẩm :product vào giỏ hàng!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3701, 1, 'vi', '_json', 'One or all products are not enough quantity so cannot update!', 'Một hoặc tất cả sản phẩm không đủ số lượng nên không thể cập nhật!', '2021-02-24 05:13:40', '2021-02-24 05:13:40');
INSERT INTO `translations` VALUES (3702, 1, 'vi', '_json', 'Update cart successfully!', 'Cập nhật giỏ hàng thành công!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3703, 1, 'vi', '_json', 'Cart item is not existed!', 'Sản phẩm không tồn tại!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3704, 1, 'vi', '_json', 'Removed item from cart successfully!', 'Xóa sản phẩm khỏi giỏ hàng thành công!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3705, 1, 'vi', '_json', 'Empty cart successfully!', 'Xóa toàn bộ sản phẩm trong giỏ hàng thành công!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3706, 1, 'vi', '_json', 'No products in cart', 'Không có sản phẩm nào trong giỏ hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3707, 1, 'vi', '_json', 'There is an issue when ordering. Please try again later!', 'Có lỗi trong quá trình đặt hàng, vui lòng thử lại sau!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3708, 1, 'vi', '_json', 'Applied coupon \":code\" successfully!', 'Áp dụng mã giảm giá \":code\" thành công!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3709, 1, 'vi', '_json', 'Removed coupon :code successfully!', 'Xóa mã giảm giá :code thành công!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3710, 1, 'vi', '_json', 'You have reviewed this product already!', 'Bạn đã đánh giá sản phẩm này rồi!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3711, 1, 'vi', '_json', 'Added review successfully!', 'Thêm đánh giá thành công!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3712, 1, 'vi', '_json', 'Deleted review successfully!', 'Xóa đánh giá thành công!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3713, 1, 'vi', '_json', 'Hotline', 'Đường dây nóng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3714, 1, 'vi', '_json', 'Subscribe & Receive 10% off your first order', 'Theo dõi và nhận giảm giá 10% cho đơn hàng đầu tiên', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3715, 1, 'vi', '_json', 'Please enter your email address', 'Vui lòng nhập địa chỉ email của bạn', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3716, 1, 'vi', '_json', 'Go', 'Gửi', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3717, 1, 'vi', '_json', 'Connect with us', 'Liên kết với chúng tôi', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3718, 1, 'vi', '_json', 'Search for', 'Tìm kiếm', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3719, 1, 'vi', '_json', 'Shopping Cart', 'Giỏ hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3720, 1, 'vi', '_json', 'View', 'Xem', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3721, 1, 'vi', '_json', 'Search result for', 'Kết quả tìm kiếm cho từ khóa', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3722, 1, 'vi', '_json', 'There is no data to display!', 'Không có dữ liệu để hiển thị!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3723, 1, 'vi', '_json', 'Enjoy Shopping with us', 'Thỏa sức mua sắm với chúng tôi', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3724, 1, 'vi', '_json', 'Filter Products', 'Lọc sản phẩm', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3725, 1, 'vi', '_json', 'Image', 'Hình ảnh', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3726, 1, 'vi', '_json', 'Price', 'Giá', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3727, 1, 'vi', '_json', 'Quantity', 'Số lượng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3728, 1, 'vi', '_json', 'Discount promotion', 'Chương trình khuyến mãi', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3729, 1, 'vi', '_json', 'Total', 'Tổng cộng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3730, 1, 'vi', '_json', 'It is not include shipping fee', 'Không bao gồm phí vận chuyển', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3731, 1, 'vi', '_json', 'Update cart', 'Cập nhật giỏ hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3732, 1, 'vi', '_json', 'Remove from wishlist', 'Xóa sản phẩm khỏi mục yêu thích', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3733, 1, 'vi', '_json', 'Add to wishlist', 'Thêm vào mục yêu thích', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3734, 1, 'vi', '_json', 'Description', 'Mô tả', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3735, 1, 'vi', '_json', 'Reviews', 'Đánh giá', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3736, 1, 'vi', '_json', 'Review', 'Đánh giá', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3737, 1, 'vi', '_json', 'Please', 'Vui lòng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3738, 1, 'vi', '_json', 'to write review!', 'để viết đánh giá!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3739, 1, 'vi', '_json', 'Add your rate', 'Thêm đánh giá của bạn', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3740, 1, 'vi', '_json', 'Write your review', 'Viết đánh giá của bạn', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3741, 1, 'vi', '_json', 'Submit', 'Gửi', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3742, 1, 'vi', '_json', 'Related Products', 'Sản phẩm liên quan', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3743, 1, 'vi', '_json', 'Search result for \":query\"', 'Kết quả tìm kiếm cho từ khóa \":query\"', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3744, 1, 'vi', '_json', 'Select', 'Lựa chọn', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3745, 1, 'vi', '_json', 'Change password', 'Đổi mật khẩu', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3746, 1, 'vi', '_json', 'Current Password', 'Mật khẩu hiện tại', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3747, 1, 'vi', '_json', 'Password confirmation', 'Xác nhận mật khẩu', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3748, 1, 'vi', '_json', 'New password', 'Mật khẩu mới', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3749, 1, 'vi', '_json', 'Account information', 'Thông tin tài khoản', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3750, 0, 'vi', '_json', 'Full Name', 'Họ và tên', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3751, 1, 'vi', '_json', 'Date of birth', 'Ngày sinh', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3752, 1, 'vi', '_json', 'Update', 'Cập nhật', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3753, 1, 'vi', '_json', 'Please enter your email address and password', 'Vui lòng nhập email và mật khẩu', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3754, 1, 'vi', '_json', 'Password', 'Mật khẩu', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3755, 1, 'vi', '_json', 'Please enter your password', 'Vui lòng nhập mật khẩu của bạn', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3756, 1, 'vi', '_json', 'Forgot password?', 'Quên mật khẩu?', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3757, 1, 'vi', '_json', 'Don\'t have an account?', 'Chưa có tài khoản?', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3758, 1, 'vi', '_json', 'Create one', 'Tạo một tài khoản', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3759, 1, 'vi', '_json', 'Overview', 'Tổng quan', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3760, 1, 'vi', '_json', 'Profile', 'Thông tin cá nhân', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3761, 1, 'vi', '_json', 'Orders', 'Đơn hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3762, 1, 'vi', '_json', 'Address books', 'Sổ địa chỉ', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3763, 1, 'vi', '_json', 'Wishlist', 'Danh sách ưa thích', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3764, 1, 'vi', '_json', 'Profile Image', 'Ảnh đại diện', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3765, 1, 'vi', '_json', 'New image', 'Ảnh mới', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3766, 1, 'vi', '_json', 'Loading', 'Đang tải', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3767, 1, 'vi', '_json', 'Close', 'Đóng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3768, 1, 'vi', '_json', 'Save', 'Lưu', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3769, 1, 'vi', '_json', 'N/A', 'N/A', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3770, 1, 'vi', '_json', 'Register', 'Đăng ký', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3771, 1, 'vi', '_json', 'Please fill in the information below', 'Vui lòng điền các thông tin bên dưới', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3772, 1, 'vi', '_json', 'Please enter your name', 'Vui lòng nhập tên của bạn', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3773, 1, 'vi', '_json', 'Please enter your password confirmation', 'Vui lòng nhập xác nhận mật khẩu', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3774, 1, 'vi', '_json', 'Product', 'Sản phẩm', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3775, 1, 'vi', '_json', 'Remove', 'Xóa', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3776, 1, 'vi', '_json', 'No item in wishlist!', 'Không có sản phẩm nào trong danh sách ưa thích!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3777, 1, 'vi', '_json', 'Add a new address', 'Thêm địa chỉ mới', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3778, 1, 'vi', '_json', 'Country', 'Quốc gia', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3779, 1, 'vi', '_json', 'Select country...', 'Lựa chọn quốc gia...', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3780, 1, 'vi', '_json', 'State', 'Tỉnh/Thành phố', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3781, 1, 'vi', '_json', 'City', 'Quận/Huyện', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3782, 1, 'vi', '_json', 'Use this address as default.', 'Sử dụng làm địa chỉ mặc định.', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3783, 1, 'vi', '_json', 'Default', 'Mặc định', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3784, 1, 'vi', '_json', 'Edit', 'Sửa', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3785, 1, 'vi', '_json', 'You have an account already?', 'Bạn đã có tài khoản?', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3786, 1, 'vi', '_json', 'Select available addresses', 'Lựa chọn địa chỉ', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3787, 1, 'vi', '_json', 'Add new address...', 'Thêm địa chỉ mới...', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3788, 1, 'vi', '_json', 'Order information', 'Thông tin đơn hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3789, 1, 'vi', '_json', 'Order number', 'Mã đơn hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3790, 1, 'vi', '_json', 'Time', 'Thời gian', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3791, 1, 'vi', '_json', 'Order status', 'Trạng thái đơn hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3792, 1, 'vi', '_json', 'Payment method', 'Phương thức thanh toán', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3793, 1, 'vi', '_json', 'Payment status', 'Trạng thái thanh toán', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3794, 1, 'vi', '_json', 'Amount', 'Số tiền', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3795, 1, 'vi', '_json', 'Tax', 'Thuế', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3796, 1, 'vi', '_json', 'Shipping fee', 'Phí giao hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3797, 1, 'vi', '_json', 'Customer information', 'Thông tin khách hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3798, 1, 'vi', '_json', 'Order detail', 'Chi tiết đơn hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3799, 1, 'vi', '_json', 'Print order', 'In đơn hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3800, 1, 'vi', '_json', 'Cancel order', 'Hủy đơn hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3801, 1, 'vi', '_json', 'Reset Password', 'Khôi phục mật khẩu', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3802, 1, 'vi', '_json', 'Send Password Reset Link', 'Gửi liên kết khôi phục mật khẩu', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3803, 1, 'vi', '_json', 'Product Categories', 'Danh mục sản phẩm', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3804, 1, 'vi', '_json', 'All Products', 'Tất cả sản phẩm', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3805, 1, 'vi', '_json', 'Brands', 'Thương hiệu', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3806, 1, 'vi', '_json', 'Product Tags', 'Thẻ', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3807, 1, 'vi', '_json', 'Filter By Price', 'Lọc theo giá', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3808, 1, 'vi', '_json', 'Oldest', 'Cũ nhất', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3809, 1, 'vi', '_json', 'Newest', 'Mới nhất', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3810, 1, 'vi', '_json', 'low to high', 'thấp đến cao', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3811, 1, 'vi', '_json', 'high to low', 'cao đến thấp', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3812, 1, 'vi', '_json', 'ID number', 'Mã', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3813, 1, 'vi', '_json', 'Date', 'Ngày', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3814, 1, 'vi', '_json', 'Status', 'Trạng thái', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3815, 1, 'vi', '_json', 'Tracking your order status', 'Theo dõi trạng thái đơn hàng của bạn', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3816, 1, 'vi', '_json', 'Order not found!', 'Không tìm thấy đơn hàng!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3817, 1, 'vi', '_json', 'Find', 'Tìm kiếm', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3818, 1, 'vi', '_json', 'Sort by', 'Sắp xếp', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3819, 1, 'vi', '_json', 'A-Z', 'A-Z', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3820, 1, 'vi', '_json', 'Z-A', 'Z-A', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3821, 1, 'vi', '_json', 'Products', 'Sản phẩm', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3822, 1, 'vi', '_json', 'By', 'Theo', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3823, 1, 'vi', '_json', 'By Price', 'Theo giá', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3824, 1, 'vi', '_json', 'Shipping information', 'Thông tin vận chuyển', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3825, 1, 'vi', '_json', 'Payment information', 'Thông tin thanh toán', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3826, 1, 'vi', '_json', 'You have a coupon code?', 'Bạn có mã giảm giá?', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3827, 1, 'vi', '_json', 'Subtotal', 'Tạm tính', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3828, 1, 'vi', '_json', 'Back to cart', 'Quay lại trang giỏ hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3829, 1, 'vi', '_json', 'Register an account with above information?', 'Tạo tài khoản với các thông tin trên?', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3830, 1, 'vi', '_json', 'Cart', 'Giỏ hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3831, 1, 'vi', '_json', 'Note', 'Ghi chú', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3832, 1, 'vi', '_json', 'Note...', 'Ghi chú...', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3833, 1, 'vi', '_json', 'Shipping', 'Phương thức vận chuyển', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3834, 1, 'vi', '_json', 'Your order is successfully placed', 'Đặt hàng thành công', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3835, 1, 'vi', '_json', 'Shipping method', 'Phương thức vận chuyển', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3836, 1, 'vi', '_json', 'Thank you for purchasing our products!', 'Cảm ơn bạn đã mua sản phẩm của chúng tôi!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3837, 1, 'vi', '_json', 'Discount', 'Giảm giá', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3838, 1, 'vi', '_json', 'Total amount', 'Tổng cộng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3839, 1, 'vi', '_json', 'Sub amount', 'Tạm tính', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3840, 1, 'vi', '_json', 'Order successfully. Order number :id', 'Đặt hàng thành công, mã đơn hàng :id', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3841, 1, 'vi', '_json', 'Currency', 'Đơn vị', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3842, 1, 'vi', '_json', 'Back To Home', 'Trở lại trang chủ', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3843, 1, 'vi', '_json', 'Have an account already?', 'Bạn đã có tài khoản?', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3844, 1, 'vi', '_json', 'Login with social networks', 'Đăng nhập thông qua mạng xã hội', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3845, 1, 'vi', '_json', 'No orders found!', 'Chưa có đơn hàng nào!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3846, 1, 'vi', '_json', 'Actions', 'Hành động', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3847, 1, 'vi', '_json', 'Customer', 'Khách hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3848, 1, 'vi', '_json', 'Product(s)', 'Sản phẩm', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3849, 1, 'vi', '_json', 'Coupon code', 'Mã giảm giá', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3850, 1, 'vi', '_json', 'Coupon code discount amount', 'Giảm giá sử dụng mã giảm giá', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3851, 1, 'vi', '_json', 'Promotion discount amount', 'Giảm giá chương trình khuyến mãi', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3852, 1, 'vi', '_json', 'No shipping methods available!', 'Không có phương thức vận chuyển phù hợp!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3853, 1, 'vi', '_json', 'No products in cart. :link!', 'Chưa có sản phẩm nào trong giỏ hàng. :link!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3854, 1, 'vi', '_json', 'Enter coupon code...', 'Nhập mã giảm giá...', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3855, 1, 'vi', '_json', 'Apply', 'Áp dụng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3856, 1, 'vi', '_json', 'Coupon code: :code', 'Mã giảm giá: :code', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3857, 1, 'vi', '_json', 'Processing. Please wait...', 'Đang xử lý. Vui lòng đợi...', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3858, 1, 'vi', '_json', 'Continue shopping', 'Tiếp tục mua sắm', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3859, 1, 'vi', '_json', 'Checkout successfully!', 'Đặt hàng thành công!', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3860, 1, 'vi', '_json', 'Page could not be found', 'Không tìm thấy trang yêu cầu', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3861, 1, 'vi', '_json', 'This may have occurred because of several reasons', 'Điều này có thể xảy ra vì một vài lý do', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3862, 1, 'vi', '_json', 'The page you requested does not exist.', 'Trang bạn yêu cầu không tồn tại', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3863, 1, 'vi', '_json', 'The link you clicked is no longer.', 'Liên kết mà bạn nhấn vào không còn được sử dụng nữa', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3864, 1, 'vi', '_json', 'The page may have moved to a new location.', 'Trang này đã được thay đổi sang đường dẫn khác', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3865, 1, 'vi', '_json', 'An error may have occurred.', 'Đã có lỗi hệ thống xảy ra', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3866, 1, 'vi', '_json', 'You are not authorized to view the requested resource.', 'Bạn không có quyền truy cập tới tài nguyên này', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3867, 1, 'vi', '_json', 'Please confirm you are not robot', 'Vui lòng xác nhận không phải là người máy', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3868, 1, 'vi', '_json', 'The field with (<span style=\"color:#FF0000;\">*</span>) is required.', 'Các mục có (<span style=\"color:#FF0000;\">*</span>) là bắt buộc.', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3869, 1, 'vi', '_json', 'Send', 'Gửi', '2021-02-24 05:13:41', '2021-02-24 05:13:41');
INSERT INTO `translations` VALUES (3870, 1, 'vi', '_json', 'Order tracking', 'Theo dõi đơn hàng', '2021-02-24 05:13:41', '2021-02-24 05:13:41');

-- ----------------------------
-- Table structure for user_meta
-- ----------------------------
DROP TABLE IF EXISTS `user_meta`;
CREATE TABLE `user_meta`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_meta_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_login` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin@gistensal.com', NULL, '$2y$10$lZKL3LWN0qQzmvpE08ZHFevJ03KUxZLF3WNhF4vjm7QvClpGHfN4G', 'OkD77cqZ8s9XNYmJYpk1V7UXyTltwaQhjvnDnmbNFAGKxPrkkpxZBaFBCsDt', '2021-02-17 08:32:27', '2021-05-15 17:10:52', 'System', 'Admin', 'botble', NULL, 1, 1, NULL, '2021-05-15 17:10:52');

-- ----------------------------
-- Table structure for widgets
-- ----------------------------
DROP TABLE IF EXISTS `widgets`;
CREATE TABLE `widgets`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of widgets
-- ----------------------------
INSERT INTO `widgets` VALUES (1, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}', '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `widgets` VALUES (2, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"categories\"}', '2021-02-17 08:32:27', '2021-02-17 08:32:27');
INSERT INTO `widgets` VALUES (3, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}', '2021-02-17 08:32:27', '2021-02-17 08:32:27');

SET FOREIGN_KEY_CHECKS = 1;
