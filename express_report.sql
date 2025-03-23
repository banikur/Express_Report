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

 Date: 24/03/2025 03:18:10
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
  `province_code` int NULL DEFAULT NULL,
  `city_code` int NULL DEFAULT NULL,
  `cinema_type_id` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES (3, 'CGV Dmall', 32, 76, NULL, '2025-03-08 14:52:33', '2025-03-08 14:53:42', '2025-03-08 14:53:42');
INSERT INTO `cinema` VALUES (4, 'CGV Dmall', 32, 76, 1, '2025-03-08 14:54:26', '2025-03-08 14:56:44', '2025-03-08 14:56:44');
INSERT INTO `cinema` VALUES (5, 'CGV Dmall', 32, 76, 1, '2025-03-08 14:57:07', '2025-03-08 14:57:07', NULL);
INSERT INTO `cinema` VALUES (6, 'CGV AEON Tanjung Barat', 31, 75, 1, '2025-03-24 00:01:52', '2025-03-24 00:01:52', NULL);
INSERT INTO `cinema` VALUES (71, 'Cinepolis – Senayan Park', 31, 71, 2, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema` VALUES (72, 'Cinepolis - Metro Kebayoran', 31, 74, 2, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema` VALUES (73, 'Cinepolis - Pejaten Village', 31, 74, 2, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema` VALUES (74, 'Cinepolis - Kalibata City', 31, 74, 2, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema` VALUES (75, 'Cinepolis - Tamini Square', 31, 74, 2, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema` VALUES (76, 'Cinepolis - Cibubur Junction', 31, 74, 2, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema` VALUES (77, 'Cinepolis - Depok Town Square', 32, 76, 2, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema` VALUES (78, 'Cinepolis - Gajah Mada Plaza', 31, 71, 2, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema` VALUES (79, 'Cinepolis - Mangga Dua Square', 31, 72, 2, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema` VALUES (80, 'Cinepolis - Pluit Village', 31, 72, 2, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema` VALUES (81, 'Cinepolis - Pondok Kelapa Town Square', 31, 72, 2, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema` VALUES (82, 'Cinepolis - Blu Plaza Bekasi', 32, 75, 2, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);

-- ----------------------------
-- Table structure for cinema_detail
-- ----------------------------
DROP TABLE IF EXISTS `cinema_detail`;
CREATE TABLE `cinema_detail`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cinema_id` int NOT NULL,
  `studio_number` int NOT NULL,
  `normal_price` decimal(10, 2) NOT NULL,
  `holiday_price` decimal(10, 2) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 246 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinema_detail
-- ----------------------------
INSERT INTO `cinema_detail` VALUES (1, 5, 1, 40000.00, 40000.00, '2025-03-08 14:57:07', '2025-03-08 14:57:07', NULL);
INSERT INTO `cinema_detail` VALUES (2, 5, 2, 40000.00, 40000.00, '2025-03-08 14:57:07', '2025-03-08 14:57:07', NULL);
INSERT INTO `cinema_detail` VALUES (3, 6, 1, 40000.00, 55000.00, '2025-03-24 00:01:52', '2025-03-24 00:01:52', NULL);
INSERT INTO `cinema_detail` VALUES (4, 6, 2, 40000.00, 55000.00, '2025-03-24 00:01:52', '2025-03-24 00:01:52', NULL);
INSERT INTO `cinema_detail` VALUES (5, 6, 3, 50000.00, 60000.00, '2025-03-24 00:01:52', '2025-03-24 00:01:52', NULL);
INSERT INTO `cinema_detail` VALUES (198, 71, 1, 50000.00, 60000.00, '2025-03-24 02:43:19', '2025-03-24 03:02:20', NULL);
INSERT INTO `cinema_detail` VALUES (199, 71, 2, 50000.00, 60000.00, '2025-03-24 02:43:19', '2025-03-24 03:02:20', NULL);
INSERT INTO `cinema_detail` VALUES (200, 71, 3, 50000.00, 60000.00, '2025-03-24 02:43:19', '2025-03-24 03:02:20', NULL);
INSERT INTO `cinema_detail` VALUES (201, 71, 4, 50000.00, 60000.00, '2025-03-24 02:43:19', '2025-03-24 03:02:20', NULL);
INSERT INTO `cinema_detail` VALUES (202, 72, 1, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (203, 72, 2, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (204, 72, 3, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (205, 72, 4, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (206, 73, 1, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (207, 73, 2, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (208, 73, 3, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (209, 73, 4, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (210, 74, 1, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (211, 74, 2, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (212, 74, 3, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (213, 74, 4, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (214, 75, 1, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (215, 75, 2, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (216, 75, 3, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (217, 75, 4, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (218, 76, 1, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (219, 76, 2, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (220, 76, 3, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (221, 76, 4, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (222, 77, 1, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (223, 77, 2, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (224, 77, 3, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (225, 77, 4, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (226, 78, 1, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (227, 78, 2, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (228, 78, 3, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (229, 78, 4, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (230, 79, 1, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (231, 79, 2, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (232, 79, 3, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (233, 79, 4, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (234, 80, 1, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (235, 80, 2, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (236, 80, 3, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (237, 80, 4, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (238, 81, 1, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (239, 81, 2, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (240, 81, 3, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (241, 81, 4, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (242, 82, 1, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (243, 82, 2, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (244, 82, 3, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);
INSERT INTO `cinema_detail` VALUES (245, 82, 4, 40.00, 45.00, '2025-03-24 02:43:19', '2025-03-24 02:43:19', NULL);

-- ----------------------------
-- Table structure for cinema_type
-- ----------------------------
DROP TABLE IF EXISTS `cinema_type`;
CREATE TABLE `cinema_type`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinema_type
-- ----------------------------
INSERT INTO `cinema_type` VALUES (1, 'CGV CINEMAS', 'logos/tlg1peSj2dNjpIgLsV1r3mR8DoWfLcbJDM8OJ5F9.png', '2025-03-02 21:46:30', '2025-03-22 04:59:40', NULL);
INSERT INTO `cinema_type` VALUES (2, 'CINEPOLIS CINEMA', NULL, '2025-03-02 21:47:16', '2025-03-02 21:47:16', NULL);
INSERT INTO `cinema_type` VALUES (3, 'PLATINUM CINEMA', NULL, '2025-03-02 21:47:32', '2025-03-02 21:47:32', NULL);
INSERT INTO `cinema_type` VALUES (4, 'KOTA CINEMA', NULL, '2025-03-02 21:47:44', '2025-03-02 21:47:44', NULL);
INSERT INTO `cinema_type` VALUES (5, 'FLIX CINEMA', NULL, '2025-03-02 21:47:53', '2025-03-02 21:47:53', NULL);
INSERT INTO `cinema_type` VALUES (6, 'NEWSTAR CINEMA', NULL, '2025-03-02 21:48:04', '2025-03-02 21:48:04', NULL);
INSERT INTO `cinema_type` VALUES (7, 'MOVIMAX / MOPIC', NULL, '2025-03-02 21:48:26', '2025-03-02 21:48:26', NULL);
INSERT INTO `cinema_type` VALUES (8, 'Lain-Lain', NULL, '2025-03-02 21:51:20', '2025-03-02 21:51:20', NULL);

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for m_kabupaten
-- ----------------------------
DROP TABLE IF EXISTS `m_kabupaten`;
CREATE TABLE `m_kabupaten`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `full_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `provinsi_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_kabupaten
-- ----------------------------
INSERT INTO `m_kabupaten` VALUES ('1', 'Kabupaten', 'Aceh Barat', '05', '1105', '1');
INSERT INTO `m_kabupaten` VALUES ('2', 'Kabupaten', 'Aceh Barat Daya', '12', '1112', '1');
INSERT INTO `m_kabupaten` VALUES ('3', 'Kabupaten', 'Sabu Raijua', '20', '5320', '23');
INSERT INTO `m_kabupaten` VALUES ('4', 'Kota', 'Salatiga', '73', '3373', '10');
INSERT INTO `m_kabupaten` VALUES ('5', 'Kabupaten', 'Aceh Besar', '06', '1106', '1');
INSERT INTO `m_kabupaten` VALUES ('6', 'Kabupaten', 'Aceh Jaya', '14', '1114', '1');
INSERT INTO `m_kabupaten` VALUES ('7', 'Kabupaten', 'Aceh Selatan', '01', '1101', '1');
INSERT INTO `m_kabupaten` VALUES ('8', 'Kabupaten', 'Aceh Singkil', '10', '1110', '1');
INSERT INTO `m_kabupaten` VALUES ('9', 'Kabupaten', 'Aceh Tamiang', '16', '1116', '1');
INSERT INTO `m_kabupaten` VALUES ('10', 'Kabupaten', 'Aceh Tengah', '04', '1104', '1');
INSERT INTO `m_kabupaten` VALUES ('11', 'Kabupaten', 'Aceh Tenggara', '02', '1102', '1');
INSERT INTO `m_kabupaten` VALUES ('12', 'Kabupaten', 'Aceh Timur', '03', '1103', '1');
INSERT INTO `m_kabupaten` VALUES ('13', 'Kabupaten', 'Gorontalo Utara', '05', '7505', '7');
INSERT INTO `m_kabupaten` VALUES ('14', 'Kabupaten', 'Aceh Utara', '08', '1108', '1');
INSERT INTO `m_kabupaten` VALUES ('15', 'Kabupaten', 'Agam', '06', '1306', '36');
INSERT INTO `m_kabupaten` VALUES ('16', 'Kabupaten', 'Alor', '05', '5305', '23');
INSERT INTO `m_kabupaten` VALUES ('17', 'Kota', 'Ambon', '71', '8171', '20');
INSERT INTO `m_kabupaten` VALUES ('18', 'Kabupaten', 'Gowa', '06', '7306', '32');
INSERT INTO `m_kabupaten` VALUES ('19', 'Kota', 'Samarinda', '72', '6472', '15');
INSERT INTO `m_kabupaten` VALUES ('20', 'Kabupaten', 'Asahan', '09', '1209', '38');
INSERT INTO `m_kabupaten` VALUES ('21', 'Kabupaten', 'Sambas', '01', '6101', '12');
INSERT INTO `m_kabupaten` VALUES ('22', 'Kabupaten', 'Asmat', '04', '9304', '28');
INSERT INTO `m_kabupaten` VALUES ('23', 'Kabupaten', 'Samosir', '17', '1217', '38');
INSERT INTO `m_kabupaten` VALUES ('24', 'Kabupaten', 'Badung', '03', '5103', '2');
INSERT INTO `m_kabupaten` VALUES ('25', 'Kabupaten', 'Sampang', '27', '3527', '11');
INSERT INTO `m_kabupaten` VALUES ('26', 'Kabupaten', 'Balangan', '11', '6311', '13');
INSERT INTO `m_kabupaten` VALUES ('27', 'Kabupaten', 'Sanggau', '03', '6103', '12');
INSERT INTO `m_kabupaten` VALUES ('28', 'Kabupaten', 'Sarmi', '10', '9110', '24');
INSERT INTO `m_kabupaten` VALUES ('29', 'Kabupaten', 'Gresik', '25', '3525', '11');
INSERT INTO `m_kabupaten` VALUES ('30', 'Kabupaten', 'Grobogan', '15', '3315', '10');
INSERT INTO `m_kabupaten` VALUES ('31', 'Kabupaten', 'Gunung Mas', '10', '6210', '14');
INSERT INTO `m_kabupaten` VALUES ('32', 'Kabupaten', 'Gunungkidul', '03', '3403', '5');
INSERT INTO `m_kabupaten` VALUES ('33', 'Kabupaten', 'Sarolangun', '03', '1503', '8');
INSERT INTO `m_kabupaten` VALUES ('34', 'Kota', 'Gunungsitoli', '78', '1278', '38');
INSERT INTO `m_kabupaten` VALUES ('35', 'Kota', 'Sawahlunto', '73', '1373', '36');
INSERT INTO `m_kabupaten` VALUES ('36', 'Kabupaten', 'Halmahera Barat', '01', '8201', '21');
INSERT INTO `m_kabupaten` VALUES ('37', 'Kabupaten', 'Sekadau', '09', '6109', '12');
INSERT INTO `m_kabupaten` VALUES ('38', 'Kabupaten', 'Halmahera Selatan', '04', '8204', '21');
INSERT INTO `m_kabupaten` VALUES ('39', 'Kabupaten', 'Seluma', '05', '1705', '4');
INSERT INTO `m_kabupaten` VALUES ('40', 'Kabupaten', 'Halmahera Tengah', '02', '8202', '21');
INSERT INTO `m_kabupaten` VALUES ('41', 'Kabupaten', 'Semarang', '22', '3322', '10');
INSERT INTO `m_kabupaten` VALUES ('42', 'Kota', 'Semarang', '74', '3374', '10');
INSERT INTO `m_kabupaten` VALUES ('43', 'Kabupaten', 'Halmahera Timur', '06', '8206', '21');
INSERT INTO `m_kabupaten` VALUES ('44', 'Kabupaten', 'Seram Bagian Barat', '06', '8106', '20');
INSERT INTO `m_kabupaten` VALUES ('45', 'Kabupaten', 'Halmahera Utara', '03', '8203', '21');
INSERT INTO `m_kabupaten` VALUES ('46', 'Kabupaten', 'Seram Bagian Timur', '05', '8105', '20');
INSERT INTO `m_kabupaten` VALUES ('47', 'Kabupaten', 'Hulu Sungai Selatan', '06', '6306', '13');
INSERT INTO `m_kabupaten` VALUES ('48', 'Kabupaten', 'Hulu Sungai Tengah', '07', '6307', '13');
INSERT INTO `m_kabupaten` VALUES ('49', 'Kabupaten', 'Hulu Sungai Utara', '08', '6308', '13');
INSERT INTO `m_kabupaten` VALUES ('50', 'Kota', 'Serang', '73', '3673', '3');
INSERT INTO `m_kabupaten` VALUES ('51', 'Kabupaten', 'Serang', '04', '3604', '3');
INSERT INTO `m_kabupaten` VALUES ('52', 'Kabupaten', 'Humbang Hasundutan', '16', '1216', '38');
INSERT INTO `m_kabupaten` VALUES ('53', 'Kota', 'Balikpapan', '71', '6471', '15');
INSERT INTO `m_kabupaten` VALUES ('54', 'Kabupaten', 'Indragiri Hilir', '04', '1404', '30');
INSERT INTO `m_kabupaten` VALUES ('55', 'Kabupaten', 'Indragiri Hulu', '02', '1402', '30');
INSERT INTO `m_kabupaten` VALUES ('56', 'Kota', 'Banda Aceh', '71', '1171', '1');
INSERT INTO `m_kabupaten` VALUES ('57', 'Kota', 'Bandar Lampung', '71', '1871', '19');
INSERT INTO `m_kabupaten` VALUES ('58', 'Kota', 'Bandung', '73', '3273', '9');
INSERT INTO `m_kabupaten` VALUES ('59', 'Kabupaten', 'Bandung', '04', '3204', '9');
INSERT INTO `m_kabupaten` VALUES ('60', 'Kabupaten', 'Bandung Barat', '17', '3217', '9');
INSERT INTO `m_kabupaten` VALUES ('61', 'Kabupaten', 'Banggai', '01', '7201', '33');
INSERT INTO `m_kabupaten` VALUES ('62', 'Kabupaten', 'Banggai Kepulauan', '07', '7207', '33');
INSERT INTO `m_kabupaten` VALUES ('63', 'Kabupaten', 'Banggai Laut', '11', '7211', '33');
INSERT INTO `m_kabupaten` VALUES ('64', 'Kabupaten', 'Bangka', '01', '1901', '17');
INSERT INTO `m_kabupaten` VALUES ('65', 'Kabupaten', 'Bangka Barat', '05', '1905', '17');
INSERT INTO `m_kabupaten` VALUES ('66', 'Kabupaten', 'Bangka Selatan', '03', '1903', '17');
INSERT INTO `m_kabupaten` VALUES ('67', 'Kabupaten', 'Bangka Tengah', '04', '1904', '17');
INSERT INTO `m_kabupaten` VALUES ('68', 'Kabupaten', 'Bangkalan', '26', '3526', '11');
INSERT INTO `m_kabupaten` VALUES ('69', 'Kabupaten', 'Bangli', '06', '5106', '2');
INSERT INTO `m_kabupaten` VALUES ('70', 'Kota', 'Banjar', '79', '3279', '9');
INSERT INTO `m_kabupaten` VALUES ('71', 'Kabupaten', 'Banjar', '03', '6303', '13');
INSERT INTO `m_kabupaten` VALUES ('72', 'Kota', 'Banjarbaru', '72', '6372', '13');
INSERT INTO `m_kabupaten` VALUES ('73', 'Kota', 'Banjarmasin', '71', '6371', '13');
INSERT INTO `m_kabupaten` VALUES ('74', 'Kabupaten', 'Banjarnegara', '04', '3304', '10');
INSERT INTO `m_kabupaten` VALUES ('75', 'Kabupaten', 'Bantaeng', '03', '7303', '32');
INSERT INTO `m_kabupaten` VALUES ('76', 'Kabupaten', 'Bantul', '02', '3402', '5');
INSERT INTO `m_kabupaten` VALUES ('77', 'Kabupaten', 'Banyuasin', '07', '1607', '37');
INSERT INTO `m_kabupaten` VALUES ('78', 'Kabupaten', 'Banyumas', '02', '3302', '10');
INSERT INTO `m_kabupaten` VALUES ('79', 'Kabupaten', 'Banyuwangi', '10', '3510', '11');
INSERT INTO `m_kabupaten` VALUES ('80', 'Kabupaten', 'Barito Kuala', '04', '6304', '13');
INSERT INTO `m_kabupaten` VALUES ('81', 'Kabupaten', 'Barito Selatan', '04', '6204', '14');
INSERT INTO `m_kabupaten` VALUES ('82', 'Kabupaten', 'Barito Timur', '13', '6213', '14');
INSERT INTO `m_kabupaten` VALUES ('83', 'Kabupaten', 'Barito Utara', '05', '6205', '14');
INSERT INTO `m_kabupaten` VALUES ('84', 'Kabupaten', 'Barru', '11', '7311', '32');
INSERT INTO `m_kabupaten` VALUES ('85', 'Kota', 'Batam', '71', '2171', '18');
INSERT INTO `m_kabupaten` VALUES ('86', 'Kabupaten', 'Batang', '25', '3325', '10');
INSERT INTO `m_kabupaten` VALUES ('87', 'Kabupaten', 'Batanghari', '04', '1504', '8');
INSERT INTO `m_kabupaten` VALUES ('88', 'Kota', 'Batu', '79', '3579', '11');
INSERT INTO `m_kabupaten` VALUES ('89', 'Kabupaten', 'Batu Bara', '19', '1219', '38');
INSERT INTO `m_kabupaten` VALUES ('90', 'Kota', 'Bau Bau', '72', '7472', '34');
INSERT INTO `m_kabupaten` VALUES ('91', 'Kota', 'Bekasi', '75', '3275', '9');
INSERT INTO `m_kabupaten` VALUES ('92', 'Kabupaten', 'Bekasi', '16', '3216', '9');
INSERT INTO `m_kabupaten` VALUES ('93', 'Kabupaten', 'Belitung', '02', '1902', '17');
INSERT INTO `m_kabupaten` VALUES ('94', 'Kabupaten', 'Belitung Timur', '06', '1906', '17');
INSERT INTO `m_kabupaten` VALUES ('95', 'Kabupaten', 'Belu', '04', '5304', '23');
INSERT INTO `m_kabupaten` VALUES ('96', 'Kabupaten', 'Bener Meriah', '17', '1117', '1');
INSERT INTO `m_kabupaten` VALUES ('97', 'Kabupaten', 'Bengkalis', '03', '1403', '30');
INSERT INTO `m_kabupaten` VALUES ('98', 'Kabupaten', 'Bengkayang', '07', '6107', '12');
INSERT INTO `m_kabupaten` VALUES ('99', 'Kabupaten', 'Serdang Bedagai', '18', '1218', '38');
INSERT INTO `m_kabupaten` VALUES ('100', 'Kota', 'Bengkulu', '71', '1771', '4');
INSERT INTO `m_kabupaten` VALUES ('101', 'Kabupaten', 'Bengkulu Selatan', '01', '1701', '4');
INSERT INTO `m_kabupaten` VALUES ('102', 'Kabupaten', 'Seruyan', '07', '6207', '14');
INSERT INTO `m_kabupaten` VALUES ('103', 'Kabupaten', 'Indramayu', '12', '3212', '9');
INSERT INTO `m_kabupaten` VALUES ('104', 'Kabupaten', 'Siak', '08', '1408', '30');
INSERT INTO `m_kabupaten` VALUES ('105', 'Kabupaten', 'Intan Jaya', '07', '9407', '29');
INSERT INTO `m_kabupaten` VALUES ('106', 'Kota', 'Jakarta Barat', '73', '3173', '6');
INSERT INTO `m_kabupaten` VALUES ('107', 'Kota', 'Sibolga', '73', '1273', '38');
INSERT INTO `m_kabupaten` VALUES ('108', 'Kabupaten', 'Bengkulu Tengah', '09', '1709', '4');
INSERT INTO `m_kabupaten` VALUES ('109', 'Kota', 'Jakarta Pusat', '71', '3171', '6');
INSERT INTO `m_kabupaten` VALUES ('110', 'Kabupaten', 'Sidenreng Rappang', '14', '7314', '32');
INSERT INTO `m_kabupaten` VALUES ('111', 'Kabupaten', 'Bengkulu Utara', '03', '1703', '4');
INSERT INTO `m_kabupaten` VALUES ('112', 'Kota', 'Jakarta Selatan', '74', '3174', '6');
INSERT INTO `m_kabupaten` VALUES ('113', 'Kabupaten', 'Sidoarjo', '15', '3515', '11');
INSERT INTO `m_kabupaten` VALUES ('114', 'Kota', 'Jakarta Timur', '75', '3175', '6');
INSERT INTO `m_kabupaten` VALUES ('115', 'Kabupaten', 'Sigi', '10', '7210', '33');
INSERT INTO `m_kabupaten` VALUES ('116', 'Kabupaten', 'Berau', '03', '6403', '15');
INSERT INTO `m_kabupaten` VALUES ('117', 'Kabupaten', 'Biak Numfor', '06', '9106', '24');
INSERT INTO `m_kabupaten` VALUES ('118', 'Kabupaten', 'Bima', '06', '5206', '22');
INSERT INTO `m_kabupaten` VALUES ('119', 'Kota', 'Jakarta Utara', '72', '3172', '6');
INSERT INTO `m_kabupaten` VALUES ('120', 'Kota', 'Bima', '72', '5272', '22');
INSERT INTO `m_kabupaten` VALUES ('121', 'Kota', 'Jambi', '71', '1571', '8');
INSERT INTO `m_kabupaten` VALUES ('122', 'Kabupaten', 'Sijunjung', '03', '1303', '36');
INSERT INTO `m_kabupaten` VALUES ('123', 'Kota', 'Binjai', '75', '1275', '38');
INSERT INTO `m_kabupaten` VALUES ('124', 'Kabupaten', 'Jayapura', '03', '9103', '24');
INSERT INTO `m_kabupaten` VALUES ('125', 'Kabupaten', 'Bintan', '01', '2101', '18');
INSERT INTO `m_kabupaten` VALUES ('126', 'Kabupaten', 'Sikka', '07', '5307', '23');
INSERT INTO `m_kabupaten` VALUES ('127', 'Kabupaten', 'Bireuen', '11', '1111', '1');
INSERT INTO `m_kabupaten` VALUES ('128', 'Kabupaten', 'Simalungun', '08', '1208', '38');
INSERT INTO `m_kabupaten` VALUES ('129', 'Kota', 'Bitung', '72', '7172', '35');
INSERT INTO `m_kabupaten` VALUES ('130', 'Kota', 'Jayapura', '71', '9171', '24');
INSERT INTO `m_kabupaten` VALUES ('131', 'Kabupaten', 'Simeulue', '09', '1109', '1');
INSERT INTO `m_kabupaten` VALUES ('132', 'Kabupaten', 'Jayawijaya', '01', '9501', '27');
INSERT INTO `m_kabupaten` VALUES ('133', 'Kabupaten', 'Jember', '09', '3509', '11');
INSERT INTO `m_kabupaten` VALUES ('134', 'Kota', 'Singkawang', '72', '6172', '12');
INSERT INTO `m_kabupaten` VALUES ('135', 'Kabupaten', 'Blitar', '05', '3505', '11');
INSERT INTO `m_kabupaten` VALUES ('136', 'Kabupaten', 'Jembrana', '01', '5101', '2');
INSERT INTO `m_kabupaten` VALUES ('137', 'Kabupaten', 'Sinjai', '07', '7307', '32');
INSERT INTO `m_kabupaten` VALUES ('138', 'Kota', 'Blitar', '72', '3572', '11');
INSERT INTO `m_kabupaten` VALUES ('139', 'Kabupaten', 'Jeneponto', '04', '7304', '32');
INSERT INTO `m_kabupaten` VALUES ('140', 'Kabupaten', 'Blora', '16', '3316', '10');
INSERT INTO `m_kabupaten` VALUES ('141', 'Kabupaten', 'Jepara', '20', '3320', '10');
INSERT INTO `m_kabupaten` VALUES ('142', 'Kabupaten', 'Sintang', '05', '6105', '12');
INSERT INTO `m_kabupaten` VALUES ('143', 'Kabupaten', 'Boalemo', '02', '7502', '7');
INSERT INTO `m_kabupaten` VALUES ('144', 'Kabupaten', 'Jombang', '17', '3517', '11');
INSERT INTO `m_kabupaten` VALUES ('145', 'Kabupaten', 'Bogor', '01', '3201', '9');
INSERT INTO `m_kabupaten` VALUES ('146', 'Kabupaten', 'Situbondo', '12', '3512', '11');
INSERT INTO `m_kabupaten` VALUES ('147', 'Kabupaten', 'Kaimana', '08', '9208', '25');
INSERT INTO `m_kabupaten` VALUES ('148', 'Kota', 'Bogor', '71', '3271', '9');
INSERT INTO `m_kabupaten` VALUES ('149', 'Kabupaten', 'Sleman', '04', '3404', '5');
INSERT INTO `m_kabupaten` VALUES ('150', 'Kabupaten', 'Kampar', '01', '1401', '30');
INSERT INTO `m_kabupaten` VALUES ('151', 'Kabupaten', 'Bojonegoro', '22', '3522', '11');
INSERT INTO `m_kabupaten` VALUES ('152', 'Kabupaten', 'Solok', '02', '1302', '36');
INSERT INTO `m_kabupaten` VALUES ('153', 'Kabupaten', 'Bolaang Mongondow', '01', '7101', '35');
INSERT INTO `m_kabupaten` VALUES ('154', 'Kabupaten', 'Bolaang Mongondow Selatan', '11', '7111', '35');
INSERT INTO `m_kabupaten` VALUES ('155', 'Kota', 'Solok', '72', '1372', '36');
INSERT INTO `m_kabupaten` VALUES ('156', 'Kabupaten', 'Kapuas', '03', '6203', '14');
INSERT INTO `m_kabupaten` VALUES ('157', 'Kabupaten', 'Solok Selatan', '11', '1311', '36');
INSERT INTO `m_kabupaten` VALUES ('158', 'Kabupaten', 'Bolaang Mongondow Timur', '10', '7110', '35');
INSERT INTO `m_kabupaten` VALUES ('159', 'Kabupaten', 'Kapuas Hulu', '06', '6106', '12');
INSERT INTO `m_kabupaten` VALUES ('160', 'Kabupaten', 'Karanganyar', '13', '3313', '10');
INSERT INTO `m_kabupaten` VALUES ('161', 'Kabupaten', 'Karangasem', '07', '5107', '2');
INSERT INTO `m_kabupaten` VALUES ('162', 'Kabupaten', 'Bolaang Mongondow Utara', '08', '7108', '35');
INSERT INTO `m_kabupaten` VALUES ('163', 'Kabupaten', 'Karawang', '15', '3215', '9');
INSERT INTO `m_kabupaten` VALUES ('164', 'Kabupaten', 'Bombana', '06', '7406', '34');
INSERT INTO `m_kabupaten` VALUES ('165', 'Kabupaten', 'Karimun', '02', '2102', '18');
INSERT INTO `m_kabupaten` VALUES ('166', 'Kabupaten', 'Bondowoso', '11', '3511', '11');
INSERT INTO `m_kabupaten` VALUES ('167', 'Kabupaten', 'Karo', '06', '1206', '38');
INSERT INTO `m_kabupaten` VALUES ('168', 'Kabupaten', 'Soppeng', '12', '7312', '32');
INSERT INTO `m_kabupaten` VALUES ('169', 'Kabupaten', 'Katingan', '06', '6206', '14');
INSERT INTO `m_kabupaten` VALUES ('170', 'Kabupaten', 'Kaur', '04', '1704', '4');
INSERT INTO `m_kabupaten` VALUES ('171', 'Kabupaten', 'Sorong', '01', '9201', '26');
INSERT INTO `m_kabupaten` VALUES ('172', 'Kabupaten', 'Kayong Utara', '11', '6111', '12');
INSERT INTO `m_kabupaten` VALUES ('173', 'Kota', 'Sorong', '71', '9271', '26');
INSERT INTO `m_kabupaten` VALUES ('174', 'Kabupaten', 'Sorong Selatan', '04', '9204', '26');
INSERT INTO `m_kabupaten` VALUES ('175', 'Kabupaten', 'Kebumen', '05', '3305', '10');
INSERT INTO `m_kabupaten` VALUES ('176', 'Kabupaten', 'Sragen', '14', '3314', '10');
INSERT INTO `m_kabupaten` VALUES ('177', 'Kabupaten', 'Kediri', '06', '3506', '11');
INSERT INTO `m_kabupaten` VALUES ('178', 'Kabupaten', 'Subang', '13', '3213', '9');
INSERT INTO `m_kabupaten` VALUES ('179', 'Kota', 'Subulussalam', '75', '1175', '1');
INSERT INTO `m_kabupaten` VALUES ('180', 'Kota', 'Sukabumi', '72', '3272', '9');
INSERT INTO `m_kabupaten` VALUES ('181', 'Kota', 'Kediri', '71', '3571', '11');
INSERT INTO `m_kabupaten` VALUES ('182', 'Kabupaten', 'Bone', '08', '7308', '32');
INSERT INTO `m_kabupaten` VALUES ('183', 'Kabupaten', 'Keerom', '11', '9111', '24');
INSERT INTO `m_kabupaten` VALUES ('184', 'Kabupaten', 'Sukabumi', '02', '3202', '9');
INSERT INTO `m_kabupaten` VALUES ('185', 'Kabupaten', 'Bone Bolango', '03', '7503', '7');
INSERT INTO `m_kabupaten` VALUES ('186', 'Kabupaten', 'Kendal', '24', '3324', '10');
INSERT INTO `m_kabupaten` VALUES ('187', 'Kota', 'Bontang', '74', '6474', '15');
INSERT INTO `m_kabupaten` VALUES ('188', 'Kota', 'Kendari', '71', '7471', '34');
INSERT INTO `m_kabupaten` VALUES ('189', 'Kabupaten', 'Boven Digoel', '02', '9302', '28');
INSERT INTO `m_kabupaten` VALUES ('190', 'Kabupaten', 'Kepahiang', '08', '1708', '4');
INSERT INTO `m_kabupaten` VALUES ('191', 'Kabupaten', 'Boyolali', '09', '3309', '10');
INSERT INTO `m_kabupaten` VALUES ('192', 'Kabupaten', 'Sukamara', '08', '6208', '14');
INSERT INTO `m_kabupaten` VALUES ('193', 'Kabupaten', 'Kepulauan Anambas', '05', '2105', '18');
INSERT INTO `m_kabupaten` VALUES ('194', 'Kabupaten', 'Sukoharjo', '11', '3311', '10');
INSERT INTO `m_kabupaten` VALUES ('195', 'Kabupaten', 'Sumba Barat', '12', '5312', '23');
INSERT INTO `m_kabupaten` VALUES ('196', 'Kabupaten', 'Brebes', '29', '3329', '10');
INSERT INTO `m_kabupaten` VALUES ('197', 'Kota', 'Bukittinggi', '75', '1375', '36');
INSERT INTO `m_kabupaten` VALUES ('198', 'Kabupaten', 'Buleleng', '08', '5108', '2');
INSERT INTO `m_kabupaten` VALUES ('199', 'Kabupaten', 'Bulukumba', '02', '7302', '32');
INSERT INTO `m_kabupaten` VALUES ('200', 'Kabupaten', 'Sumba Barat Daya', '18', '5318', '23');
INSERT INTO `m_kabupaten` VALUES ('201', 'Kabupaten', 'Sumba Tengah', '17', '5317', '23');
INSERT INTO `m_kabupaten` VALUES ('202', 'Kabupaten', 'Sumba Timur', '11', '5311', '23');
INSERT INTO `m_kabupaten` VALUES ('203', 'Kabupaten', 'Bulungan', '01', '6501', '16');
INSERT INTO `m_kabupaten` VALUES ('204', 'Kabupaten', 'Sumbawa', '04', '5204', '22');
INSERT INTO `m_kabupaten` VALUES ('205', 'Kabupaten', 'Bungo', '08', '1508', '8');
INSERT INTO `m_kabupaten` VALUES ('206', 'Kabupaten', 'Sumbawa Barat', '07', '5207', '22');
INSERT INTO `m_kabupaten` VALUES ('207', 'Kabupaten', 'Buol', '05', '7205', '33');
INSERT INTO `m_kabupaten` VALUES ('208', 'Kabupaten', 'Sumedang', '11', '3211', '9');
INSERT INTO `m_kabupaten` VALUES ('209', 'Kabupaten', 'Buru', '04', '8104', '20');
INSERT INTO `m_kabupaten` VALUES ('210', 'Kabupaten', 'Buru Selatan', '09', '8109', '20');
INSERT INTO `m_kabupaten` VALUES ('211', 'Kabupaten', 'Kepulauan Aru', '07', '8107', '20');
INSERT INTO `m_kabupaten` VALUES ('212', 'Kabupaten', 'Sumenep', '29', '3529', '11');
INSERT INTO `m_kabupaten` VALUES ('213', 'Kabupaten', 'Buton', '04', '7404', '34');
INSERT INTO `m_kabupaten` VALUES ('214', 'Kota', 'Sungai Penuh', '72', '1572', '8');
INSERT INTO `m_kabupaten` VALUES ('215', 'Kabupaten', 'Buton Selatan', '15', '7415', '34');
INSERT INTO `m_kabupaten` VALUES ('216', 'Kabupaten', 'Supiori', '19', '9119', '24');
INSERT INTO `m_kabupaten` VALUES ('217', 'Kabupaten', 'Buton Tengah', '14', '7414', '34');
INSERT INTO `m_kabupaten` VALUES ('218', 'Kabupaten', 'Buton Utara', '10', '7410', '34');
INSERT INTO `m_kabupaten` VALUES ('219', 'Kota', 'Surabaya', '78', '3578', '11');
INSERT INTO `m_kabupaten` VALUES ('220', 'Kabupaten', 'Kepulauan Mentawai', '09', '1309', '36');
INSERT INTO `m_kabupaten` VALUES ('221', 'Kabupaten', 'Ciamis', '07', '3207', '9');
INSERT INTO `m_kabupaten` VALUES ('222', 'Kota', 'Surakarta', '72', '3372', '10');
INSERT INTO `m_kabupaten` VALUES ('223', 'Kabupaten', 'Kepulauan Meranti', '10', '1410', '30');
INSERT INTO `m_kabupaten` VALUES ('224', 'Kabupaten', 'Cianjur', '03', '3203', '9');
INSERT INTO `m_kabupaten` VALUES ('225', 'Kabupaten', 'Tabalong', '09', '6309', '13');
INSERT INTO `m_kabupaten` VALUES ('226', 'Kabupaten', 'Kepulauan Sangihe', '03', '7103', '35');
INSERT INTO `m_kabupaten` VALUES ('227', 'Kabupaten', 'Kepulauan Selayar', '01', '7301', '32');
INSERT INTO `m_kabupaten` VALUES ('228', 'Kabupaten', 'Cilacap', '01', '3301', '10');
INSERT INTO `m_kabupaten` VALUES ('229', 'Kota', 'Cilegon', '72', '3672', '3');
INSERT INTO `m_kabupaten` VALUES ('230', 'Kabupaten', 'Tabanan', '02', '5102', '2');
INSERT INTO `m_kabupaten` VALUES ('231', 'Kota', 'Cimahi', '77', '3277', '9');
INSERT INTO `m_kabupaten` VALUES ('232', 'Kabupaten', 'Kepulauan Seribu', '01', '3101', '6');
INSERT INTO `m_kabupaten` VALUES ('233', 'Kabupaten', 'Takalar', '05', '7305', '32');
INSERT INTO `m_kabupaten` VALUES ('234', 'Kota', 'Cirebon', '74', '3274', '9');
INSERT INTO `m_kabupaten` VALUES ('235', 'Kabupaten', 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '09', '7109', '35');
INSERT INTO `m_kabupaten` VALUES ('236', 'Kabupaten', 'Kepulauan Sula', '05', '8205', '21');
INSERT INTO `m_kabupaten` VALUES ('237', 'Kabupaten', 'Tambrauw', '09', '9209', '26');
INSERT INTO `m_kabupaten` VALUES ('238', 'Kabupaten', 'Kepulauan Talaud', '04', '7104', '35');
INSERT INTO `m_kabupaten` VALUES ('239', 'Kabupaten', 'Kepulauan Tanimbar (Maluku Tenggara Barat)', '03', '8103', '20');
INSERT INTO `m_kabupaten` VALUES ('240', 'Kabupaten', 'Cirebon', '09', '3209', '9');
INSERT INTO `m_kabupaten` VALUES ('241', 'Kabupaten', 'Dairi', '11', '1211', '38');
INSERT INTO `m_kabupaten` VALUES ('242', 'Kabupaten', 'Tana Tidung', '04', '6504', '16');
INSERT INTO `m_kabupaten` VALUES ('243', 'Kabupaten', 'Deiyai', '08', '9408', '29');
INSERT INTO `m_kabupaten` VALUES ('244', 'Kabupaten', 'Kepulauan Yapen', '05', '9105', '24');
INSERT INTO `m_kabupaten` VALUES ('245', 'Kabupaten', 'Deli Serdang', '07', '1207', '38');
INSERT INTO `m_kabupaten` VALUES ('246', 'Kabupaten', 'Tana Toraja', '18', '7318', '32');
INSERT INTO `m_kabupaten` VALUES ('247', 'Kabupaten', 'Demak', '21', '3321', '10');
INSERT INTO `m_kabupaten` VALUES ('248', 'Kabupaten', 'Kerinci', '01', '1501', '8');
INSERT INTO `m_kabupaten` VALUES ('249', 'Kabupaten', 'Tanah Bumbu', '10', '6310', '13');
INSERT INTO `m_kabupaten` VALUES ('250', 'Kota', 'Denpasar', '71', '5171', '2');
INSERT INTO `m_kabupaten` VALUES ('251', 'Kabupaten', 'Ketapang', '04', '6104', '12');
INSERT INTO `m_kabupaten` VALUES ('252', 'Kota', 'Depok', '76', '3276', '9');
INSERT INTO `m_kabupaten` VALUES ('253', 'Kabupaten', 'Tanah Datar', '04', '1304', '36');
INSERT INTO `m_kabupaten` VALUES ('254', 'Kabupaten', 'Klaten', '10', '3310', '10');
INSERT INTO `m_kabupaten` VALUES ('255', 'Kabupaten', 'Dharmasraya', '10', '1310', '36');
INSERT INTO `m_kabupaten` VALUES ('256', 'Kabupaten', 'Tanah Laut', '01', '6301', '13');
INSERT INTO `m_kabupaten` VALUES ('257', 'Kabupaten', 'Dogiyai', '06', '9406', '29');
INSERT INTO `m_kabupaten` VALUES ('258', 'Kabupaten', 'Klungkung', '05', '5105', '2');
INSERT INTO `m_kabupaten` VALUES ('259', 'Kabupaten', 'Kolaka', '01', '7401', '34');
INSERT INTO `m_kabupaten` VALUES ('260', 'Kota', 'Tangerang', '71', '3671', '3');
INSERT INTO `m_kabupaten` VALUES ('261', 'Kabupaten', 'Kolaka Timur', '11', '7411', '34');
INSERT INTO `m_kabupaten` VALUES ('262', 'Kabupaten', 'Tangerang', '03', '3603', '3');
INSERT INTO `m_kabupaten` VALUES ('263', 'Kota', 'Tangerang Selatan', '74', '3674', '3');
INSERT INTO `m_kabupaten` VALUES ('264', 'Kabupaten', 'Tanggamus', '06', '1806', '19');
INSERT INTO `m_kabupaten` VALUES ('265', 'Kabupaten', 'Kolaka Utara', '08', '7408', '34');
INSERT INTO `m_kabupaten` VALUES ('266', 'Kabupaten', 'Konawe', '02', '7402', '34');
INSERT INTO `m_kabupaten` VALUES ('267', 'Kabupaten', 'Konawe Kepulauan', '12', '7412', '34');
INSERT INTO `m_kabupaten` VALUES ('268', 'Kota', 'Tanjung Balai', '74', '1274', '38');
INSERT INTO `m_kabupaten` VALUES ('269', 'Kabupaten', 'Konawe Selatan', '05', '7405', '34');
INSERT INTO `m_kabupaten` VALUES ('270', 'Kabupaten', 'Konawe Utara', '09', '7409', '34');
INSERT INTO `m_kabupaten` VALUES ('271', 'Kabupaten', 'Kotabaru', '02', '6302', '13');
INSERT INTO `m_kabupaten` VALUES ('272', 'Kabupaten', 'Tanjung Jabung Barat', '06', '1506', '8');
INSERT INTO `m_kabupaten` VALUES ('273', 'Kota', 'Kotamobagu', '74', '7174', '35');
INSERT INTO `m_kabupaten` VALUES ('274', 'Kabupaten', 'Tanjung Jabung Timur', '07', '1507', '8');
INSERT INTO `m_kabupaten` VALUES ('275', 'Kabupaten', 'Kotawaringin Barat', '01', '6201', '14');
INSERT INTO `m_kabupaten` VALUES ('276', 'Kabupaten', 'Kotawaringin Timur', '02', '6202', '14');
INSERT INTO `m_kabupaten` VALUES ('277', 'Kota', 'Tanjung Pinang', '72', '2172', '18');
INSERT INTO `m_kabupaten` VALUES ('278', 'Kabupaten', 'Kuantan Singingi', '09', '1409', '30');
INSERT INTO `m_kabupaten` VALUES ('279', 'Kabupaten', 'Tapanuli Selatan', '03', '1203', '38');
INSERT INTO `m_kabupaten` VALUES ('280', 'Kabupaten', 'Kubu Raya', '12', '6112', '12');
INSERT INTO `m_kabupaten` VALUES ('281', 'Kabupaten', 'Kudus', '19', '3319', '10');
INSERT INTO `m_kabupaten` VALUES ('282', 'Kabupaten', 'Tapanuli Tengah', '01', '1201', '38');
INSERT INTO `m_kabupaten` VALUES ('283', 'Kabupaten', 'Tapanuli Utara', '02', '1202', '38');
INSERT INTO `m_kabupaten` VALUES ('284', 'Kabupaten', 'Tapin', '05', '6305', '13');
INSERT INTO `m_kabupaten` VALUES ('285', 'Kota', 'Tarakan', '71', '6571', '16');
INSERT INTO `m_kabupaten` VALUES ('286', 'Kota', 'Tasikmalaya', '78', '3278', '9');
INSERT INTO `m_kabupaten` VALUES ('287', 'Kabupaten', 'Kulon Progo', '01', '3401', '5');
INSERT INTO `m_kabupaten` VALUES ('288', 'Kabupaten', 'Kuningan', '08', '3208', '9');
INSERT INTO `m_kabupaten` VALUES ('289', 'Kabupaten', 'Kupang', '01', '5301', '23');
INSERT INTO `m_kabupaten` VALUES ('290', 'Kota', 'Kupang', '71', '5371', '23');
INSERT INTO `m_kabupaten` VALUES ('291', 'Kabupaten', 'Tasikmalaya', '06', '3206', '9');
INSERT INTO `m_kabupaten` VALUES ('292', 'Kabupaten', 'Kutai Barat', '07', '6407', '15');
INSERT INTO `m_kabupaten` VALUES ('293', 'Kabupaten', 'Kutai Kartanegara', '02', '6402', '15');
INSERT INTO `m_kabupaten` VALUES ('294', 'Kabupaten', 'Kutai Timur', '08', '6408', '15');
INSERT INTO `m_kabupaten` VALUES ('295', 'Kabupaten', 'Labuhanbatu', '10', '1210', '38');
INSERT INTO `m_kabupaten` VALUES ('296', 'Kota', 'Tebing Tinggi', '76', '1276', '38');
INSERT INTO `m_kabupaten` VALUES ('297', 'Kabupaten', 'Labuhanbatu Selatan', '22', '1222', '38');
INSERT INTO `m_kabupaten` VALUES ('298', 'Kabupaten', 'Tebo', '09', '1509', '8');
INSERT INTO `m_kabupaten` VALUES ('299', 'Kabupaten', 'Tegal', '28', '3328', '10');
INSERT INTO `m_kabupaten` VALUES ('300', 'Kota', 'Tegal', '76', '3376', '10');
INSERT INTO `m_kabupaten` VALUES ('301', 'Kabupaten', 'Teluk Bintuni', '06', '9206', '25');
INSERT INTO `m_kabupaten` VALUES ('302', 'Kabupaten', 'Teluk Wondama', '07', '9207', '25');
INSERT INTO `m_kabupaten` VALUES ('303', 'Kabupaten', 'Labuhanbatu Utara', '23', '1223', '38');
INSERT INTO `m_kabupaten` VALUES ('304', 'Kabupaten', 'Temanggung', '23', '3323', '10');
INSERT INTO `m_kabupaten` VALUES ('305', 'Kabupaten', 'Lahat', '04', '1604', '37');
INSERT INTO `m_kabupaten` VALUES ('306', 'Kota', 'Ternate', '71', '8271', '21');
INSERT INTO `m_kabupaten` VALUES ('307', 'Kabupaten', 'Lamandau', '09', '6209', '14');
INSERT INTO `m_kabupaten` VALUES ('308', 'Kabupaten', 'Dompu', '05', '5205', '22');
INSERT INTO `m_kabupaten` VALUES ('309', 'Kabupaten', 'Donggala', '03', '7203', '33');
INSERT INTO `m_kabupaten` VALUES ('310', 'Kota', 'Dumai', '72', '1472', '30');
INSERT INTO `m_kabupaten` VALUES ('311', 'Kabupaten', 'Empat Lawang', '11', '1611', '37');
INSERT INTO `m_kabupaten` VALUES ('312', 'Kabupaten', 'Lamongan', '24', '3524', '11');
INSERT INTO `m_kabupaten` VALUES ('313', 'Kabupaten', 'Ende', '08', '5308', '23');
INSERT INTO `m_kabupaten` VALUES ('314', 'Kabupaten', 'Lampung Barat', '04', '1804', '19');
INSERT INTO `m_kabupaten` VALUES ('315', 'Kota', 'Tidore Kepulauan', '72', '8272', '21');
INSERT INTO `m_kabupaten` VALUES ('316', 'Kabupaten', 'Enrekang', '16', '7316', '32');
INSERT INTO `m_kabupaten` VALUES ('317', 'Kabupaten', 'Lampung Selatan', '01', '1801', '19');
INSERT INTO `m_kabupaten` VALUES ('318', 'Kabupaten', 'Fak Fak', '03', '9203', '25');
INSERT INTO `m_kabupaten` VALUES ('319', 'Kabupaten', 'Timor Tengah Selatan', '02', '5302', '23');
INSERT INTO `m_kabupaten` VALUES ('320', 'Kabupaten', 'Lampung Tengah', '02', '1802', '19');
INSERT INTO `m_kabupaten` VALUES ('321', 'Kabupaten', 'Flores Timur', '06', '5306', '23');
INSERT INTO `m_kabupaten` VALUES ('322', 'Kabupaten', 'Lampung Timur', '07', '1807', '19');
INSERT INTO `m_kabupaten` VALUES ('323', 'Kabupaten', 'Garut', '05', '3205', '9');
INSERT INTO `m_kabupaten` VALUES ('324', 'Kabupaten', 'Timor Tengah Utara', '03', '5303', '23');
INSERT INTO `m_kabupaten` VALUES ('325', 'Kabupaten', 'Lampung Utara', '03', '1803', '19');
INSERT INTO `m_kabupaten` VALUES ('326', 'Kabupaten', 'Toba', '12', '1212', '38');
INSERT INTO `m_kabupaten` VALUES ('327', 'Kabupaten', 'Tojo Una Una', '09', '7209', '33');
INSERT INTO `m_kabupaten` VALUES ('328', 'Kabupaten', 'Gayo Lues', '13', '1113', '1');
INSERT INTO `m_kabupaten` VALUES ('329', 'Kabupaten', 'Landak', '08', '6108', '12');
INSERT INTO `m_kabupaten` VALUES ('330', 'Kabupaten', 'Gianyar', '04', '5104', '2');
INSERT INTO `m_kabupaten` VALUES ('331', 'Kabupaten', 'Langkat', '05', '1205', '38');
INSERT INTO `m_kabupaten` VALUES ('332', 'Kabupaten', 'Gorontalo', '01', '7501', '7');
INSERT INTO `m_kabupaten` VALUES ('333', 'Kota', 'Langsa', '74', '1174', '1');
INSERT INTO `m_kabupaten` VALUES ('334', 'Kabupaten', 'Toli Toli', '04', '7204', '33');
INSERT INTO `m_kabupaten` VALUES ('335', 'Kabupaten', 'Lanny Jaya', '07', '9507', '27');
INSERT INTO `m_kabupaten` VALUES ('336', 'Kabupaten', 'Lebak', '02', '3602', '3');
INSERT INTO `m_kabupaten` VALUES ('337', 'Kota', 'Gorontalo', '71', '7571', '7');
INSERT INTO `m_kabupaten` VALUES ('338', 'Kabupaten', 'Tolikara', '04', '9504', '27');
INSERT INTO `m_kabupaten` VALUES ('339', 'Kota', 'Tomohon', '73', '7173', '35');
INSERT INTO `m_kabupaten` VALUES ('340', 'Kabupaten', 'Lebong', '07', '1707', '4');
INSERT INTO `m_kabupaten` VALUES ('341', 'Kabupaten', 'Toraja Utara', '26', '7326', '32');
INSERT INTO `m_kabupaten` VALUES ('342', 'Kabupaten', 'Lembata', '13', '5313', '23');
INSERT INTO `m_kabupaten` VALUES ('343', 'Kota', 'Lhokseumawe', '73', '1173', '1');
INSERT INTO `m_kabupaten` VALUES ('344', 'Kabupaten', 'Lima Puluh Kota', '07', '1307', '36');
INSERT INTO `m_kabupaten` VALUES ('345', 'Kabupaten', 'Lingga', '04', '2104', '18');
INSERT INTO `m_kabupaten` VALUES ('346', 'Kabupaten', 'Trenggalek', '03', '3503', '11');
INSERT INTO `m_kabupaten` VALUES ('347', 'Kota', 'Tual', '72', '8172', '20');
INSERT INTO `m_kabupaten` VALUES ('348', 'Kabupaten', 'Tuban', '23', '3523', '11');
INSERT INTO `m_kabupaten` VALUES ('349', 'Kabupaten', 'Lombok Barat', '01', '5201', '22');
INSERT INTO `m_kabupaten` VALUES ('350', 'Kabupaten', 'Tulang Bawang', '05', '1805', '19');
INSERT INTO `m_kabupaten` VALUES ('351', 'Kabupaten', 'Lombok Tengah', '02', '5202', '22');
INSERT INTO `m_kabupaten` VALUES ('352', 'Kabupaten', 'Lombok Timur', '03', '5203', '22');
INSERT INTO `m_kabupaten` VALUES ('353', 'Kabupaten', 'Tulang Bawang Barat', '12', '1812', '19');
INSERT INTO `m_kabupaten` VALUES ('354', 'Kabupaten', 'Lombok Utara', '08', '5208', '22');
INSERT INTO `m_kabupaten` VALUES ('355', 'Kota', 'Lubuk Linggau', '73', '1673', '37');
INSERT INTO `m_kabupaten` VALUES ('356', 'Kabupaten', 'Tulungagung', '04', '3504', '11');
INSERT INTO `m_kabupaten` VALUES ('357', 'Kabupaten', 'Lumajang', '08', '3508', '11');
INSERT INTO `m_kabupaten` VALUES ('358', 'Kabupaten', 'Wajo', '13', '7313', '32');
INSERT INTO `m_kabupaten` VALUES ('359', 'Kabupaten', 'Luwu', '17', '7317', '32');
INSERT INTO `m_kabupaten` VALUES ('360', 'Kabupaten', 'Luwu Timur', '24', '7324', '32');
INSERT INTO `m_kabupaten` VALUES ('361', 'Kabupaten', 'Wakatobi', '07', '7407', '34');
INSERT INTO `m_kabupaten` VALUES ('362', 'Kabupaten', 'Waropen', '15', '9115', '24');
INSERT INTO `m_kabupaten` VALUES ('363', 'Kabupaten', 'Way Kanan', '08', '1808', '19');
INSERT INTO `m_kabupaten` VALUES ('364', 'Kabupaten', 'Wonogiri', '12', '3312', '10');
INSERT INTO `m_kabupaten` VALUES ('365', 'Kabupaten', 'Wonosobo', '07', '3307', '10');
INSERT INTO `m_kabupaten` VALUES ('366', 'Kabupaten', 'Yahukimo', '03', '9503', '27');
INSERT INTO `m_kabupaten` VALUES ('367', 'Kabupaten', 'Yalimo', '06', '9506', '27');
INSERT INTO `m_kabupaten` VALUES ('368', 'Kota', 'Yogyakarta', '71', '3471', '5');
INSERT INTO `m_kabupaten` VALUES ('369', 'Kabupaten', 'Luwu Utara', '22', '7322', '32');
INSERT INTO `m_kabupaten` VALUES ('370', 'Kabupaten', 'Madiun', '19', '3519', '11');
INSERT INTO `m_kabupaten` VALUES ('371', 'Kota', 'Madiun', '77', '3577', '11');
INSERT INTO `m_kabupaten` VALUES ('372', 'Kabupaten', 'Magelang', '08', '3308', '10');
INSERT INTO `m_kabupaten` VALUES ('373', 'Kota', 'Magelang', '71', '3371', '10');
INSERT INTO `m_kabupaten` VALUES ('374', 'Kabupaten', 'Magetan', '20', '3520', '11');
INSERT INTO `m_kabupaten` VALUES ('375', 'Kabupaten', 'Mahakam Ulu', '11', '6411', '15');
INSERT INTO `m_kabupaten` VALUES ('376', 'Kabupaten', 'Majalengka', '10', '3210', '9');
INSERT INTO `m_kabupaten` VALUES ('377', 'Kabupaten', 'Majene', '05', '7605', '31');
INSERT INTO `m_kabupaten` VALUES ('378', 'Kota', 'Makassar', '71', '7371', '32');
INSERT INTO `m_kabupaten` VALUES ('379', 'Kabupaten', 'Malaka', '21', '5321', '23');
INSERT INTO `m_kabupaten` VALUES ('380', 'Kabupaten', 'Malang', '07', '3507', '11');
INSERT INTO `m_kabupaten` VALUES ('381', 'Kota', 'Malang', '73', '3573', '11');
INSERT INTO `m_kabupaten` VALUES ('382', 'Kabupaten', 'Malinau', '02', '6502', '16');
INSERT INTO `m_kabupaten` VALUES ('383', 'Kabupaten', 'Maluku Barat Daya', '08', '8108', '20');
INSERT INTO `m_kabupaten` VALUES ('384', 'Kabupaten', 'Maluku Tengah', '01', '8101', '20');
INSERT INTO `m_kabupaten` VALUES ('385', 'Kabupaten', 'Maluku Tenggara', '02', '8102', '20');
INSERT INTO `m_kabupaten` VALUES ('386', 'Kabupaten', 'Mamasa', '03', '7603', '31');
INSERT INTO `m_kabupaten` VALUES ('387', 'Kabupaten', 'Mamberamo Raya', '20', '9120', '24');
INSERT INTO `m_kabupaten` VALUES ('388', 'Kabupaten', 'Mamberamo Tengah', '05', '9505', '27');
INSERT INTO `m_kabupaten` VALUES ('389', 'Kabupaten', 'Mamuju', '02', '7602', '31');
INSERT INTO `m_kabupaten` VALUES ('390', 'Kabupaten', 'Mamuju Tengah', '06', '7606', '31');
INSERT INTO `m_kabupaten` VALUES ('391', 'Kota', 'Manado', '71', '7171', '35');
INSERT INTO `m_kabupaten` VALUES ('392', 'Kabupaten', 'Mandailing Natal', '13', '1213', '38');
INSERT INTO `m_kabupaten` VALUES ('393', 'Kabupaten', 'Manggarai', '10', '5310', '23');
INSERT INTO `m_kabupaten` VALUES ('394', 'Kabupaten', 'Manggarai Barat', '15', '5315', '23');
INSERT INTO `m_kabupaten` VALUES ('395', 'Kabupaten', 'Manggarai Timur', '19', '5319', '23');
INSERT INTO `m_kabupaten` VALUES ('396', 'Kabupaten', 'Manokwari', '02', '9202', '25');
INSERT INTO `m_kabupaten` VALUES ('397', 'Kabupaten', 'Manokwari Selatan', '11', '9211', '25');
INSERT INTO `m_kabupaten` VALUES ('398', 'Kabupaten', 'Mappi', '03', '9303', '28');
INSERT INTO `m_kabupaten` VALUES ('399', 'Kabupaten', 'Maros', '09', '7309', '32');
INSERT INTO `m_kabupaten` VALUES ('400', 'Kota', 'Mataram', '71', '5271', '22');
INSERT INTO `m_kabupaten` VALUES ('401', 'Kabupaten', 'Maybrat', '10', '9210', '26');
INSERT INTO `m_kabupaten` VALUES ('402', 'Kota', 'Medan', '71', '1271', '38');
INSERT INTO `m_kabupaten` VALUES ('403', 'Kabupaten', 'Melawi', '10', '6110', '12');
INSERT INTO `m_kabupaten` VALUES ('404', 'Kabupaten', 'Mempawah', '02', '6102', '12');
INSERT INTO `m_kabupaten` VALUES ('405', 'Kabupaten', 'Merangin', '02', '1502', '8');
INSERT INTO `m_kabupaten` VALUES ('406', 'Kabupaten', 'Merauke', '01', '9301', '28');
INSERT INTO `m_kabupaten` VALUES ('407', 'Kabupaten', 'Mesuji', '11', '1811', '19');
INSERT INTO `m_kabupaten` VALUES ('408', 'Kota', 'Metro', '72', '1872', '19');
INSERT INTO `m_kabupaten` VALUES ('409', 'Kabupaten', 'Mimika', '04', '9404', '29');
INSERT INTO `m_kabupaten` VALUES ('410', 'Kabupaten', 'Minahasa', '02', '7102', '35');
INSERT INTO `m_kabupaten` VALUES ('411', 'Kabupaten', 'Minahasa Selatan', '05', '7105', '35');
INSERT INTO `m_kabupaten` VALUES ('412', 'Kabupaten', 'Minahasa Tenggara', '07', '7107', '35');
INSERT INTO `m_kabupaten` VALUES ('413', 'Kabupaten', 'Minahasa Utara', '06', '7106', '35');
INSERT INTO `m_kabupaten` VALUES ('414', 'Kabupaten', 'Mojokerto', '16', '3516', '11');
INSERT INTO `m_kabupaten` VALUES ('415', 'Kota', 'Mojokerto', '76', '3576', '11');
INSERT INTO `m_kabupaten` VALUES ('416', 'Kabupaten', 'Morowali', '06', '7206', '33');
INSERT INTO `m_kabupaten` VALUES ('417', 'Kabupaten', 'Morowali Utara', '12', '7212', '33');
INSERT INTO `m_kabupaten` VALUES ('418', 'Kabupaten', 'Muara Enim', '03', '1603', '37');
INSERT INTO `m_kabupaten` VALUES ('419', 'Kabupaten', 'Muaro Jambi', '05', '1505', '8');
INSERT INTO `m_kabupaten` VALUES ('420', 'Kabupaten', 'Muko Muko', '06', '1706', '4');
INSERT INTO `m_kabupaten` VALUES ('421', 'Kabupaten', 'Muna', '03', '7403', '34');
INSERT INTO `m_kabupaten` VALUES ('422', 'Kabupaten', 'Muna Barat', '13', '7413', '34');
INSERT INTO `m_kabupaten` VALUES ('423', 'Kabupaten', 'Murung Raya', '12', '6212', '14');
INSERT INTO `m_kabupaten` VALUES ('424', 'Kabupaten', 'Musi Banyuasin', '06', '1606', '37');
INSERT INTO `m_kabupaten` VALUES ('425', 'Kabupaten', 'Musi Rawas', '05', '1605', '37');
INSERT INTO `m_kabupaten` VALUES ('426', 'Kabupaten', 'Musi Rawas Utara', '13', '1613', '37');
INSERT INTO `m_kabupaten` VALUES ('427', 'Kabupaten', 'Nabire', '01', '9401', '29');
INSERT INTO `m_kabupaten` VALUES ('428', 'Kabupaten', 'Nagan Raya', '15', '1115', '1');
INSERT INTO `m_kabupaten` VALUES ('429', 'Kabupaten', 'Nagekeo', '16', '5316', '23');
INSERT INTO `m_kabupaten` VALUES ('430', 'Kabupaten', 'Natuna', '03', '2103', '18');
INSERT INTO `m_kabupaten` VALUES ('431', 'Kabupaten', 'Nduga', '08', '9508', '27');
INSERT INTO `m_kabupaten` VALUES ('432', 'Kabupaten', 'Ngada', '09', '5309', '23');
INSERT INTO `m_kabupaten` VALUES ('433', 'Kabupaten', 'Nganjuk', '18', '3518', '11');
INSERT INTO `m_kabupaten` VALUES ('434', 'Kabupaten', 'Ngawi', '21', '3521', '11');
INSERT INTO `m_kabupaten` VALUES ('435', 'Kabupaten', 'Nias', '04', '1204', '38');
INSERT INTO `m_kabupaten` VALUES ('436', 'Kabupaten', 'Nias Barat', '25', '1225', '38');
INSERT INTO `m_kabupaten` VALUES ('437', 'Kabupaten', 'Nias Selatan', '14', '1214', '38');
INSERT INTO `m_kabupaten` VALUES ('438', 'Kabupaten', 'Nias Utara', '24', '1224', '38');
INSERT INTO `m_kabupaten` VALUES ('439', 'Kabupaten', 'Nunukan', '03', '6503', '16');
INSERT INTO `m_kabupaten` VALUES ('440', 'Kabupaten', 'Ogan Ilir', '10', '1610', '37');
INSERT INTO `m_kabupaten` VALUES ('441', 'Kabupaten', 'Ogan Komering Ilir', '02', '1602', '37');
INSERT INTO `m_kabupaten` VALUES ('442', 'Kabupaten', 'Ogan Komering Ulu', '01', '1601', '37');
INSERT INTO `m_kabupaten` VALUES ('443', 'Kabupaten', 'Ogan Komering Ulu Selatan', '09', '1609', '37');
INSERT INTO `m_kabupaten` VALUES ('444', 'Kabupaten', 'Ogan Komering Ulu Timur', '08', '1608', '37');
INSERT INTO `m_kabupaten` VALUES ('445', 'Kabupaten', 'Pacitan', '01', '3501', '11');
INSERT INTO `m_kabupaten` VALUES ('446', 'Kota', 'Padang', '71', '1371', '36');
INSERT INTO `m_kabupaten` VALUES ('447', 'Kabupaten', 'Padang Lawas', '21', '1221', '38');
INSERT INTO `m_kabupaten` VALUES ('448', 'Kabupaten', 'Padang Lawas Utara', '20', '1220', '38');
INSERT INTO `m_kabupaten` VALUES ('449', 'Kota', 'Padang Panjang', '74', '1374', '36');
INSERT INTO `m_kabupaten` VALUES ('450', 'Kabupaten', 'Padang Pariaman', '05', '1305', '36');
INSERT INTO `m_kabupaten` VALUES ('451', 'Kota', 'Padangsidimpuan', '77', '1277', '38');
INSERT INTO `m_kabupaten` VALUES ('452', 'Kota', 'Pagar Alam', '72', '1672', '37');
INSERT INTO `m_kabupaten` VALUES ('453', 'Kabupaten', 'Pahuwato', '04', '7504', '7');
INSERT INTO `m_kabupaten` VALUES ('454', 'Kabupaten', 'Pakpak Bharat', '15', '1215', '38');
INSERT INTO `m_kabupaten` VALUES ('455', 'Kota', 'Palangkaraya', '71', '6271', '14');
INSERT INTO `m_kabupaten` VALUES ('456', 'Kota', 'Palembang', '71', '1671', '37');
INSERT INTO `m_kabupaten` VALUES ('457', 'Kota', 'Palopo', '73', '7373', '32');
INSERT INTO `m_kabupaten` VALUES ('458', 'Kota', 'Palu', '71', '7271', '33');
INSERT INTO `m_kabupaten` VALUES ('459', 'Kabupaten', 'Pamekasan', '28', '3528', '11');
INSERT INTO `m_kabupaten` VALUES ('460', 'Kabupaten', 'Pandeglang', '01', '3601', '3');
INSERT INTO `m_kabupaten` VALUES ('461', 'Kabupaten', 'Pangandaran', '18', '3218', '9');
INSERT INTO `m_kabupaten` VALUES ('462', 'Kabupaten', 'Pangkajene Kepulauan', '10', '7310', '32');
INSERT INTO `m_kabupaten` VALUES ('463', 'Kota', 'Pangkal Pinang', '71', '1971', '17');
INSERT INTO `m_kabupaten` VALUES ('464', 'Kabupaten', 'Paniai', '03', '9403', '29');
INSERT INTO `m_kabupaten` VALUES ('465', 'Kota', 'Pare Pare', '72', '7372', '32');
INSERT INTO `m_kabupaten` VALUES ('466', 'Kota', 'Pariaman', '77', '1377', '36');
INSERT INTO `m_kabupaten` VALUES ('467', 'Kabupaten', 'Parigi Moutong', '08', '7208', '33');
INSERT INTO `m_kabupaten` VALUES ('468', 'Kabupaten', 'Pasaman', '08', '1308', '36');
INSERT INTO `m_kabupaten` VALUES ('469', 'Kabupaten', 'Pasaman Barat', '12', '1312', '36');
INSERT INTO `m_kabupaten` VALUES ('470', 'Kabupaten', 'Pasangkayu (Mamuju Utara)', '01', '7601', '31');
INSERT INTO `m_kabupaten` VALUES ('471', 'Kabupaten', 'Paser', '01', '6401', '15');
INSERT INTO `m_kabupaten` VALUES ('472', 'Kabupaten', 'Pasuruan', '14', '3514', '11');
INSERT INTO `m_kabupaten` VALUES ('473', 'Kota', 'Pasuruan', '75', '3575', '11');
INSERT INTO `m_kabupaten` VALUES ('474', 'Kabupaten', 'Pati', '18', '3318', '10');
INSERT INTO `m_kabupaten` VALUES ('475', 'Kota', 'Payakumbuh', '76', '1376', '36');
INSERT INTO `m_kabupaten` VALUES ('476', 'Kabupaten', 'Pegunungan Arfak', '12', '9212', '25');
INSERT INTO `m_kabupaten` VALUES ('477', 'Kabupaten', 'Pegunungan Bintang', '02', '9502', '27');
INSERT INTO `m_kabupaten` VALUES ('478', 'Kabupaten', 'Pekalongan', '26', '3326', '10');
INSERT INTO `m_kabupaten` VALUES ('479', 'Kota', 'Pekalongan', '75', '3375', '10');
INSERT INTO `m_kabupaten` VALUES ('480', 'Kota', 'Pekanbaru', '71', '1471', '30');
INSERT INTO `m_kabupaten` VALUES ('481', 'Kabupaten', 'Pelalawan', '05', '1405', '30');
INSERT INTO `m_kabupaten` VALUES ('482', 'Kabupaten', 'Pemalang', '27', '3327', '10');
INSERT INTO `m_kabupaten` VALUES ('483', 'Kota', 'Pematangsiantar', '72', '1272', '38');
INSERT INTO `m_kabupaten` VALUES ('484', 'Kabupaten', 'Penajam Paser Utara', '09', '6409', '15');
INSERT INTO `m_kabupaten` VALUES ('485', 'Kabupaten', 'Penukal Abab Lematang Ilir', '12', '1612', '37');
INSERT INTO `m_kabupaten` VALUES ('486', 'Kabupaten', 'Pesawaran', '09', '1809', '19');
INSERT INTO `m_kabupaten` VALUES ('487', 'Kabupaten', 'Pesisir Barat', '13', '1813', '19');
INSERT INTO `m_kabupaten` VALUES ('488', 'Kabupaten', 'Pesisir Selatan', '01', '1301', '36');
INSERT INTO `m_kabupaten` VALUES ('489', 'Kabupaten', 'Pidie', '07', '1107', '1');
INSERT INTO `m_kabupaten` VALUES ('490', 'Kabupaten', 'Pidie Jaya', '18', '1118', '1');
INSERT INTO `m_kabupaten` VALUES ('491', 'Kabupaten', 'Pinrang', '15', '7315', '32');
INSERT INTO `m_kabupaten` VALUES ('492', 'Kabupaten', 'Polewali Mandar', '04', '7604', '31');
INSERT INTO `m_kabupaten` VALUES ('493', 'Kabupaten', 'Ponorogo', '02', '3502', '11');
INSERT INTO `m_kabupaten` VALUES ('494', 'Kota', 'Pontianak', '71', '6171', '12');
INSERT INTO `m_kabupaten` VALUES ('495', 'Kabupaten', 'Poso', '02', '7202', '33');
INSERT INTO `m_kabupaten` VALUES ('496', 'Kota', 'Prabumulih', '74', '1674', '37');
INSERT INTO `m_kabupaten` VALUES ('497', 'Kabupaten', 'Pringsewu', '10', '1810', '19');
INSERT INTO `m_kabupaten` VALUES ('498', 'Kabupaten', 'Probolinggo', '13', '3513', '11');
INSERT INTO `m_kabupaten` VALUES ('499', 'Kota', 'Probolinggo', '74', '3574', '11');
INSERT INTO `m_kabupaten` VALUES ('500', 'Kabupaten', 'Pulang Pisau', '11', '6211', '14');
INSERT INTO `m_kabupaten` VALUES ('501', 'Kabupaten', 'Pulau Morotai', '07', '8207', '21');
INSERT INTO `m_kabupaten` VALUES ('502', 'Kabupaten', 'Pulau Taliabu', '08', '8208', '21');
INSERT INTO `m_kabupaten` VALUES ('503', 'Kabupaten', 'Puncak', '05', '9405', '29');
INSERT INTO `m_kabupaten` VALUES ('504', 'Kabupaten', 'Puncak Jaya', '02', '9402', '29');
INSERT INTO `m_kabupaten` VALUES ('505', 'Kabupaten', 'Purbalingga', '03', '3303', '10');
INSERT INTO `m_kabupaten` VALUES ('506', 'Kabupaten', 'Purwakarta', '14', '3214', '9');
INSERT INTO `m_kabupaten` VALUES ('507', 'Kabupaten', 'Purworejo', '06', '3306', '10');
INSERT INTO `m_kabupaten` VALUES ('508', 'Kabupaten', 'Raja Ampat', '05', '9205', '26');
INSERT INTO `m_kabupaten` VALUES ('509', 'Kabupaten', 'Rejang Lebong', '02', '1702', '4');
INSERT INTO `m_kabupaten` VALUES ('510', 'Kabupaten', 'Rembang', '17', '3317', '10');
INSERT INTO `m_kabupaten` VALUES ('511', 'Kabupaten', 'Rokan Hilir', '07', '1407', '30');
INSERT INTO `m_kabupaten` VALUES ('512', 'Kabupaten', 'Rokan Hulu', '06', '1406', '30');
INSERT INTO `m_kabupaten` VALUES ('513', 'Kabupaten', 'Rote Ndao', '14', '5314', '23');
INSERT INTO `m_kabupaten` VALUES ('514', 'Kota', 'Sabang', '72', '1172', '1');

-- ----------------------------
-- Table structure for m_provinsi
-- ----------------------------
DROP TABLE IF EXISTS `m_provinsi`;
CREATE TABLE `m_provinsi`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_provinsi
-- ----------------------------
INSERT INTO `m_provinsi` VALUES ('1', 'Aceh (NAD)', '11');
INSERT INTO `m_provinsi` VALUES ('2', 'Bali', '51');
INSERT INTO `m_provinsi` VALUES ('3', 'Banten', '36');
INSERT INTO `m_provinsi` VALUES ('4', 'Bengkulu', '17');
INSERT INTO `m_provinsi` VALUES ('5', 'DI Yogyakarta', '34');
INSERT INTO `m_provinsi` VALUES ('6', 'DKI Jakarta', '31');
INSERT INTO `m_provinsi` VALUES ('7', 'Gorontalo', '75');
INSERT INTO `m_provinsi` VALUES ('8', 'Jambi', '15');
INSERT INTO `m_provinsi` VALUES ('9', 'Jawa Barat', '32');
INSERT INTO `m_provinsi` VALUES ('10', 'Jawa Tengah', '33');
INSERT INTO `m_provinsi` VALUES ('11', 'Jawa Timur', '35');
INSERT INTO `m_provinsi` VALUES ('12', 'Kalimantan Barat', '61');
INSERT INTO `m_provinsi` VALUES ('13', 'Kalimantan Selatan', '63');
INSERT INTO `m_provinsi` VALUES ('14', 'Kalimantan Tengah', '62');
INSERT INTO `m_provinsi` VALUES ('15', 'Kalimantan Timur', '64');
INSERT INTO `m_provinsi` VALUES ('16', 'Kalimantan Utara', '65');
INSERT INTO `m_provinsi` VALUES ('17', 'Kepulauan Bangka Belitung', '19');
INSERT INTO `m_provinsi` VALUES ('18', 'Kepulauan Riau', '21');
INSERT INTO `m_provinsi` VALUES ('19', 'Lampung', '18');
INSERT INTO `m_provinsi` VALUES ('20', 'Maluku', '81');
INSERT INTO `m_provinsi` VALUES ('21', 'Maluku Utara', '82');
INSERT INTO `m_provinsi` VALUES ('22', 'Nusa Tenggara Barat (NTB)', '52');
INSERT INTO `m_provinsi` VALUES ('23', 'Nusa Tenggara Timur (NTT)', '53');
INSERT INTO `m_provinsi` VALUES ('24', 'Papua', '91');
INSERT INTO `m_provinsi` VALUES ('25', 'Papua Barat', '92');
INSERT INTO `m_provinsi` VALUES ('26', 'Papua Barat Daya', '92');
INSERT INTO `m_provinsi` VALUES ('27', 'Papua Pegunungan', '95');
INSERT INTO `m_provinsi` VALUES ('28', 'Papua Selatan', '93');
INSERT INTO `m_provinsi` VALUES ('29', 'Papua Tengah', '94');
INSERT INTO `m_provinsi` VALUES ('30', 'Riau', '14');
INSERT INTO `m_provinsi` VALUES ('31', 'Sulawesi Barat', '76');
INSERT INTO `m_provinsi` VALUES ('32', 'Sulawesi Selatan', '73');
INSERT INTO `m_provinsi` VALUES ('33', 'Sulawesi Tengah', '72');
INSERT INTO `m_provinsi` VALUES ('34', 'Sulawesi Tenggara', '74');
INSERT INTO `m_provinsi` VALUES ('35', 'Sulawesi Utara', '71');
INSERT INTO `m_provinsi` VALUES ('36', 'Sumatera Barat', '13');
INSERT INTO `m_provinsi` VALUES ('37', 'Sumatera Selatan', '16');
INSERT INTO `m_provinsi` VALUES ('38', 'Sumatera Utara', '12');

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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `permissions` VALUES (23, 'delete cinema', 'web', '2025-03-22 00:47:20', '2025-03-22 00:47:20');
INSERT INTO `permissions` VALUES (24, 'update cinema', 'web', '2025-03-22 00:47:20', '2025-03-22 00:47:20');
INSERT INTO `permissions` VALUES (25, 'read cinema', 'web', '2025-03-22 00:47:20', '2025-03-22 00:47:20');
INSERT INTO `permissions` VALUES (26, 'create cinema', 'web', '2025-03-22 00:47:20', '2025-03-22 00:47:20');
INSERT INTO `permissions` VALUES (27, 'preview cinema', 'web', '2025-03-22 05:07:14', NULL);

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `users` VALUES (1, 'Superadmin', 'superadmin@superadmin.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'coZJXGtFkfoNPwsOlKfBnq1I2rt6kbTsRjfO9iDldm0GtdjwDEU0AnzYQtht', '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `users` VALUES (2, 'Admin', 'admin@admin.com', NULL, '$2y$10$2G3TXDWj/AIEyzoJkf5FQO4Uk73Q2gzdWuAEIBqwP.gCWE3QhqDue', NULL, '2025-03-02 18:48:04', '2025-03-02 18:48:04');
INSERT INTO `users` VALUES (3, 'Operator', 'operator@operator.com', NULL, '$2y$10$qI046.XgZ/gJJJ9Uvah3uen6Rv1dFLkqOZOB8NNi3DRD55.051x4W', NULL, '2025-03-02 18:48:04', '2025-03-02 18:48:04');

SET FOREIGN_KEY_CHECKS = 1;
