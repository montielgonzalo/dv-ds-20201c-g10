/*
 Navicat Premium Data Transfer

 Source Server         : dv-ds-20201c-g10
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : dv-ds-20201c-g10

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 12/07/2020 21:51:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cli_apellido` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cli_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cli_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`cli_id`) USING BTREE,
  UNIQUE INDEX `cli_email_UNIQUE`(`cli_email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, 'Juan', 'Perez', 'juan@pp.com', '1234');
INSERT INTO `clientes` VALUES (2, 'Toto', 'Mengano', 'toto.mengano@pp.com', '1234');
INSERT INTO `clientes` VALUES (4, 'Fulano', 'Garcia', 'fulanito@pp.com', '1234');
INSERT INTO `clientes` VALUES (9, 'Pirulo', 'Mengano', 'pirulo.mengano@pp.com', '1234');
INSERT INTO `clientes` VALUES (15, 'Fulanito', 'Black', 'fulanito.black@fulanito.com', '1234');
INSERT INTO `clientes` VALUES (16, 'Fulanito', 'Gregory', 'fulanito.gregory@pp.com', '1234');
INSERT INTO `clientes` VALUES (17, 'el', 'monti', 'Monti_santurron92@yahoo.com', '123456');

-- ----------------------------
-- Table structure for orden_items
-- ----------------------------
DROP TABLE IF EXISTS `orden_items`;
CREATE TABLE `orden_items`  (
  `odi_id` int(11) NOT NULL AUTO_INCREMENT,
  `odi_ord_id` int(11) NOT NULL,
  `odi_prd_id` int(11) NOT NULL,
  `odi_cantidad` decimal(8, 2) NOT NULL,
  PRIMARY KEY (`odi_id`) USING BTREE,
  INDEX `odi_ord_id_fk_idx`(`odi_ord_id`) USING BTREE,
  INDEX `odi_pro_id_fk_idx`(`odi_prd_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ordenes
-- ----------------------------
DROP TABLE IF EXISTS `ordenes`;
CREATE TABLE `ordenes`  (
  `ord_id` int(11) NOT NULL AUTO_INCREMENT,
  `ord_cli_id` int(11) NOT NULL,
  `ord_fecha` datetime(0) NOT NULL,
  PRIMARY KEY (`ord_id`) USING BTREE,
  INDEX `ord_cli_id_fk_idx`(`ord_cli_id`) USING BTREE,
  CONSTRAINT `ord_cli_id_fk` FOREIGN KEY (`ord_cli_id`) REFERENCES `clientes` (`cli_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pro_precio` decimal(8, 2) NOT NULL,
  PRIMARY KEY (`pro_id`) USING BTREE,
  UNIQUE INDEX `pro_nombre_UNIQUE`(`pro_nombre`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
