/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : express_report

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 02/03/2025 23:12:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int NOT NULL,
  `cinema_type` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinema
-- ----------------------------

-- ----------------------------
-- Table structure for cinema_type
-- ----------------------------
DROP TABLE IF EXISTS `cinema_type`;
CREATE TABLE `cinema_type`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinema_type
-- ----------------------------
INSERT INTO `cinema_type` VALUES (1, 'CGV CINEMAS', '2025-03-02 21:46:30', '2025-03-02 21:46:59');
INSERT INTO `cinema_type` VALUES (2, 'CINEPOLIS CINEMA', '2025-03-02 21:47:16', '2025-03-02 21:47:16');
INSERT INTO `cinema_type` VALUES (3, 'PLATINUM CINEMA', '2025-03-02 21:47:32', '2025-03-02 21:47:32');
INSERT INTO `cinema_type` VALUES (4, 'KOTA CINEMA', '2025-03-02 21:47:44', '2025-03-02 21:47:44');
INSERT INTO `cinema_type` VALUES (5, 'FLIX CINEMA', '2025-03-02 21:47:53', '2025-03-02 21:47:53');
INSERT INTO `cinema_type` VALUES (6, 'NEWSTAR CINEMA', '2025-03-02 21:48:04', '2025-03-02 21:48:04');
INSERT INTO `cinema_type` VALUES (7, 'MOVIMAX / MOPIC', '2025-03-02 21:48:26', '2025-03-02 21:48:26');
INSERT INTO `cinema_type` VALUES (8, 'Lain-Lain', '2025-03-02 21:51:20', '2025-03-02 21:51:20');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2022_03_19_102456_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (6, '2022_03_29_105225_create_settings_table', 1);
INSERT INTO `migrations` VALUES (7, '2025_03_02_065315_create_cinematype_table', 2);
INSERT INTO `migrations` VALUES (8, '2025_03_02_095232_create_cinema_table', 3);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 3);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'filemanager', 'web', '2025-03-02 18:48:03', '2025-03-02 18:48:03');
INSERT INTO `permissions` VALUES (2, 'read module', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (3, 'delete setting', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (4, 'update setting', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (5, 'read setting', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (6, 'create setting', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (7, 'delete user', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (8, 'update user', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (9, 'read user', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (10, 'create user', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (11, 'delete role', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (12, 'update role', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (13, 'read role', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (14, 'create role', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (15, 'delete permission', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (16, 'update permission', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (17, 'read permission', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (18, 'create permission', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `permissions` VALUES (19, 'delete cinematype', 'web', '2025-03-02 18:53:59', '2025-03-02 18:53:59');
INSERT INTO `permissions` VALUES (20, 'update cinematype', 'web', '2025-03-02 18:53:59', '2025-03-02 18:53:59');
INSERT INTO `permissions` VALUES (21, 'read cinematype', 'web', '2025-03-02 18:53:59', '2025-03-02 18:53:59');
INSERT INTO `permissions` VALUES (22, 'create cinematype', 'web', '2025-03-02 18:53:59', '2025-03-02 18:53:59');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'superadmin', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `roles` VALUES (2, 'admin', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `roles` VALUES (3, 'operator', 'web', '2025-03-02 18:48:04', '2025-03-02 18:48:04');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category` enum('information','contact','payment','email','api') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'information',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `settings_key_unique`(`key` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'app_name', 'Express Report', 'Application Short Name', 'text', NULL, 'information', '2025-03-02 18:48:04', '2025-03-02 18:51:33');
INSERT INTO `settings` VALUES (2, 'app_short_name', 'Express Report', 'Application Name', 'text', NULL, 'information', '2025-03-02 18:48:04', '2025-03-02 18:51:33');
INSERT INTO `settings` VALUES (3, 'app_logo', 'storage/Logo.png', 'Application Logo', 'file', 'png', 'information', '2025-03-02 18:48:04', '2025-03-02 18:51:33');
INSERT INTO `settings` VALUES (4, 'app_favicon', 'storage/Logo.png', 'Application Favicon', 'file', 'png', 'information', '2025-03-02 18:48:04', '2025-03-02 18:51:33');
INSERT INTO `settings` VALUES (5, 'app_loading_gif', 'storage/Logo.png', 'Application Loading Image', 'file', 'gif', 'information', '2025-03-02 18:48:04', '2025-03-02 18:51:33');
INSERT INTO `settings` VALUES (6, 'app_map_loaction', '-', 'Application Map Location', 'textarea', NULL, 'contact', '2025-03-02 18:48:04', '2025-03-02 18:51:58');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Superadmin', 'superadmin@superadmin.com', NULL, '$2y$10$mOw.vkv215x9Z99Ww9BfpuGPph.qXjFINI4vnH8z8Hq2Z3bJRvG6u', '7Y5sHIFEb5NgwaZiBdyJ6LdN9YEr8NduQBoMabiS50vAtSNnpFaoC0C03GHX', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `users` VALUES (2, 'Admin', 'admin@admin.com', NULL, '$2y$10$2G3TXDWj/AIEyzoJkf5FQO4Uk73Q2gzdWuAEIBqwP.gCWE3QhqDue', NULL, '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `users` VALUES (3, 'Operator', 'operator@operator.com', NULL, '$2y$10$qI046.XgZ/gJJJ9Uvah3uen6Rv1dFLkqOZOB8NNi3DRD55.051x4W', NULL, '2025-03-02 18:48:04', '2025-03-02 18:48:04');

SET FOREIGN_KEY_CHECKS = 1;
