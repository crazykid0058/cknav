/*
 Navicat Premium Data Transfer

 Source Server         : local_mysql
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 127.0.0.1:3306
 Source Schema         : ck

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 03/07/2021 13:24:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_BLOB_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_CALENDARS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_CRON_TRIGGERS
-- ----------------------------
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
CREATE TABLE `QRTZ_FIRED_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_FIRED_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
CREATE TABLE `QRTZ_JOB_DETAILS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_JOB_DETAILS
-- ----------------------------
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017A4A9631B878707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017A4A9631B878707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017A4A9631B878707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_LOCKS
-- ----------------------------
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SCHEDULER_STATE
-- ----------------------------
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('RuoyiScheduler', 'ckpc1625287336503', 1625289711067, 15000);

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SIMPLE_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SIMPROP_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
CREATE TABLE `QRTZ_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_TRIGGERS
-- ----------------------------
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1625287340000, -1, 5, 'PAUSED', 'CRON', 1625287336000, 0, NULL, 2, '');
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1625287350000, -1, 5, 'PAUSED', 'CRON', 1625287336000, 0, NULL, 2, '');
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1625287340000, -1, 5, 'PAUSED', 'CRON', 1625287336000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????????????????',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '???????????????',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '??????????????????crud???????????? tree???????????? sub??????????????????',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '?????????????????????0zip????????? 1??????????????????',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '??????????????????????????????????????????',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (3, 'sys_kind', '?????????', NULL, NULL, 'Kind', 'crud', 'com.ruoyi.project.system', 'system', 'kind', '??????', 'ruoyi', '0', '/', NULL, 'admin', '2021-06-27 07:23:27', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (4, 'sys_site', '?????????', NULL, NULL, 'Site', 'crud', 'com.ruoyi.project.system', 'system', 'site', '??????', 'ruoyi', '0', '/', NULL, 'admin', '2021-06-27 07:23:27', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA??????',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA?????????',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???????????????1??????',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???????????????1??????',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???????????????1??????',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????????????????1??????',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????????????????????1??????',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????????????????????1??????',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????????????????????1??????',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '???????????????????????????????????????????????????????????????',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????????????????????????????????????????????????????????????????????????????????????????',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `sort` int(11) NULL DEFAULT NULL COMMENT '??????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (7, '3', 'id', '??????id', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-06-27 07:23:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (8, '3', 'name', '????????????', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-06-27 07:23:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (9, '4', 'id', '??????id', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-06-27 07:23:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (10, '4', 'name', '????????????', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-06-27 07:23:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (11, '4', 'url', '????????????', 'varchar(50)', 'String', 'url', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-06-27 07:23:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (12, '4', 'kindid', '????????????', 'int(11)', 'Long', 'kindid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-06-27 07:23:27', '', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '????????????',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '???????????????Y??? N??????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '????????????-????????????????????????', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-06-27 07:09:55', '', NULL, '?????? skin-blue????????? skin-green????????? skin-purple????????? skin-red????????? skin-yellow');
INSERT INTO `sys_config` VALUES (2, '????????????-??????????????????', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????? 123456');
INSERT INTO `sys_config` VALUES (3, '????????????-???????????????', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????theme-dark???????????????theme-light???????????????theme-blue');
INSERT INTO `sys_config` VALUES (4, '????????????-??????????????????????????????', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-06-27 07:09:55', '', NULL, '?????????????????????????????????true?????????false?????????');
INSERT INTO `sys_config` VALUES (5, '????????????-??????????????????', 'sys.account.chrtype', '0', 'Y', 'admin', '2021-06-27 07:09:55', '', NULL, '???????????????????????????0?????????????????????????????????????????????1????????????????????????0-9????????????2??????????????????????????????a-z???A-Z????????????3??????????????????????????????????????????????????????,4??????????????????????????????????????????????????????????????????~!@#$%^&*()-=_+???');
INSERT INTO `sys_config` VALUES (6, '????????????-????????????????????????', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2021-06-27 07:09:55', '', NULL, '0?????????????????????????????????????????????????????????1????????????????????????????????????????????????????????????????????????????????????????????????');
INSERT INTO `sys_config` VALUES (7, '????????????-????????????????????????', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2021-06-27 07:09:55', '', NULL, '?????????????????????????????????????????????????????????0????????????????????????????????????0??????365????????????????????????????????????????????????????????????????????????????????????????????????????????????');
INSERT INTO `sys_config` VALUES (8, '????????????-????????????????????????', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2021-06-27 07:09:55', '', NULL, '???????????????????????????default????????????????????????topnav????????????????????????');
INSERT INTO `sys_config` VALUES (9, '????????????-??????????????????', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2021-06-27 07:09:55', '', NULL, '?????????????????????????????????true?????????false?????????');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '?????????id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '????????????',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '???????????????0???????????? 2???????????????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '?????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '????????????', 0, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-06-27 07:09:55', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '???????????????', 1, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-06-27 07:09:55', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '???????????????', 2, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-06-27 07:09:55', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '????????????', 1, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-06-27 07:09:55', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '????????????', 2, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-06-27 07:09:55', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '????????????', 3, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-06-27 07:09:55', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '????????????', 4, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-06-27 07:09:55', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '????????????', 5, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-06-27 07:09:55', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '????????????', 1, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-06-27 07:09:55', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '????????????', 2, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-06-27 07:09:55', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '????????????',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????????????????????????????',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '???????????????Y??? N??????',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '?????????0?????? 1?????????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '???', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '?????????');
INSERT INTO `sys_dict_data` VALUES (2, 2, '???', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '?????????');
INSERT INTO `sys_dict_data` VALUES (3, 3, '??????', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (4, 1, '??????', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (5, 2, '??????', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (6, 1, '??????', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (7, 2, '??????', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (8, 1, '??????', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (9, 2, '??????', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (10, 1, '??????', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (11, 2, '??????', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (12, 1, '???', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '???????????????');
INSERT INTO `sys_dict_data` VALUES (13, 2, '???', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '???????????????');
INSERT INTO `sys_dict_data` VALUES (14, 1, '??????', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '??????');
INSERT INTO `sys_dict_data` VALUES (15, 2, '??????', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '??????');
INSERT INTO `sys_dict_data` VALUES (16, 1, '??????', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (17, 2, '??????', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (18, 99, '??????', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (19, 1, '??????', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (20, 2, '??????', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (21, 3, '??????', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (22, 4, '??????', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (23, 5, '??????', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (24, 6, '??????', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (25, 7, '??????', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (26, 8, '????????????', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (27, 9, '????????????', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (28, 1, '??????', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');
INSERT INTO `sys_dict_data` VALUES (29, 2, '??????', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '?????????0?????? 1?????????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '????????????', 'sys_user_sex', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_dict_type` VALUES (2, '????????????', 'sys_show_hide', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_dict_type` VALUES (3, '????????????', 'sys_normal_disable', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_dict_type` VALUES (4, '????????????', 'sys_job_status', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_dict_type` VALUES (5, '????????????', 'sys_job_group', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_dict_type` VALUES (6, '????????????', 'sys_yes_no', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_dict_type` VALUES (7, '????????????', 'sys_notice_type', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_dict_type` VALUES (8, '????????????', 'sys_notice_status', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_dict_type` VALUES (9, '????????????', 'sys_oper_type', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_dict_type` VALUES (10, '????????????', 'sys_common_status', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '????????????',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '?????????????????????',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron???????????????',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '???????????????????????????1???????????? 2???????????? 3???????????????',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '?????????????????????0?????? 1?????????',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '?????????0?????? 1?????????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '????????????????????????', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '????????????????????????', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '????????????????????????', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-06-27 07:09:55', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '?????????????????????',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_kind
-- ----------------------------
DROP TABLE IF EXISTS `sys_kind`;
CREATE TABLE `sys_kind`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '?????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_kind
-- ----------------------------
INSERT INTO `sys_kind` VALUES (1, '??????');
INSERT INTO `sys_kind` VALUES (2, '??????');
INSERT INTO `sys_kind` VALUES (3, '??????');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '??????IP??????',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '???????????????',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '??????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2021-06-27 07:18:51');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 07:18:56');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 07:28:12');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 07:47:41');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 08:00:58');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 08:07:58');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 08:20:06');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 08:26:43');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2021-06-27 08:28:01');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 08:28:05');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 08:31:43');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2021-06-27 08:35:30');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 08:35:34');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2021-06-27 08:36:41');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 08:36:43');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 08:40:42');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 08:46:59');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 09:24:00');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 09:25:49');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 09:27:19');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 10:03:25');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 10:10:35');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 14:52:55');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 16:31:10');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 16:35:50');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-27 16:37:33');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 05:09:09');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 05:11:00');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 05:11:05');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 08:00:04');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 08:48:01');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 08:53:31');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 08:57:33');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 08:57:43');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 08:57:50');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2021-06-28 08:57:53');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '??????????????????1???', '2021-06-28 08:57:57');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '??????????????????2???', '2021-06-28 08:58:55');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2021-06-28 08:59:03');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 08:59:07');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 09:03:50');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2021-06-28 09:07:49');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 09:07:54');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 09:10:27');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 09:10:56');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2021-06-28 09:16:37');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 09:16:40');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-06-28 09:18:23');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2021-07-02 18:50:55');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2021-07-02 18:51:02');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-07-02 18:51:05');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-07-02 18:53:32');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2021-07-02 19:07:54');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '?????????ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '????????????',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '????????????',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '???????????????menuItem?????? menuBlank????????????',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '???????????????M?????? C?????? F?????????',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `is_refresh` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '???????????????0?????? 1????????????',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '????????????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '??????',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2024 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '????????????', 0, 1, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (2, '????????????', 0, 2, '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (3, '????????????', 0, 3, '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (4, '????????????', 0, 4, 'https://github.com/crazykid0058/cknav', 'menuBlank', 'C', '0', '1', '', 'fa fa-location-arrow', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (100, '????????????', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (101, '????????????', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (102, '????????????', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (103, '????????????', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (104, '????????????', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (105, '????????????', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (106, '????????????', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (107, '????????????', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (108, '????????????', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (109, '????????????', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (110, '????????????', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (111, '????????????', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (112, '????????????', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (113, '????????????', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (114, '????????????', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (115, '????????????', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (116, '????????????', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (500, '????????????', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (501, '????????????', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2021-06-27 07:09:55', '', NULL, '??????????????????');
INSERT INTO `sys_menu` VALUES (1000, '????????????', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '????????????', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '????????????', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '????????????', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '????????????', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '????????????', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '????????????', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '????????????', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '????????????', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '????????????', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '????????????', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '????????????', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '????????????', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '????????????', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '????????????', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '????????????', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '????????????', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '????????????', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '????????????', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '????????????', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '????????????', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '????????????', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '????????????', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '????????????', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '????????????', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '????????????', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '????????????', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '????????????', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '????????????', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '????????????', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '????????????', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '????????????', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '????????????', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '????????????', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '????????????', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '????????????', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '????????????', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '????????????', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '????????????', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '????????????', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '????????????', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '????????????', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '????????????', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '????????????', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '????????????', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '????????????', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '????????????', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '????????????', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '????????????', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '????????????', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '????????????', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '????????????', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '????????????', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '????????????', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '????????????', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '????????????', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '????????????', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '????????????', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '????????????', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '????????????', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '????????????', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '????????????', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '??????', 3, 1, '/system/kind', '', 'C', '0', '1', 'system:kind:view', '#', 'admin', '2021-06-27 07:25:27', '', NULL, '????????????');
INSERT INTO `sys_menu` VALUES (2013, '????????????', 2012, 1, '#', '', 'F', '0', '1', 'system:kind:list', '#', 'admin', '2021-06-27 07:25:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '????????????', 2012, 2, '#', '', 'F', '0', '1', 'system:kind:add', '#', 'admin', '2021-06-27 07:25:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '????????????', 2012, 3, '#', '', 'F', '0', '1', 'system:kind:edit', '#', 'admin', '2021-06-27 07:25:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '????????????', 2012, 4, '#', '', 'F', '0', '1', 'system:kind:remove', '#', 'admin', '2021-06-27 07:25:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '????????????', 2012, 5, '#', '', 'F', '0', '1', 'system:kind:export', '#', 'admin', '2021-06-27 07:25:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '??????', 3, 1, '/system/site', '', 'C', '0', '1', 'system:site:view', '#', 'admin', '2021-06-27 07:25:55', '', NULL, '????????????');
INSERT INTO `sys_menu` VALUES (2019, '????????????', 2018, 1, '#', '', 'F', '0', '1', 'system:site:list', '#', 'admin', '2021-06-27 07:25:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '????????????', 2018, 2, '#', '', 'F', '0', '1', 'system:site:add', '#', 'admin', '2021-06-27 07:25:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '????????????', 2018, 3, '#', '', 'F', '0', '1', 'system:site:edit', '#', 'admin', '2021-06-27 07:25:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '????????????', 2018, 4, '#', '', 'F', '0', '1', 'system:site:remove', '#', 'admin', '2021-06-27 07:25:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '????????????', 2018, 5, '#', '', 'F', '0', '1', 'system:site:export', '#', 'admin', '2021-06-27 07:25:55', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '???????????????1?????? 2?????????',
  `notice_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '???????????????2018-07-01 ????????????????????????', '2', '???????????????', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '?????????');
INSERT INTO `sys_notice` VALUES (2, '???????????????2018-07-01 ????????????????????????', '1', '????????????', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '?????????');
INSERT INTO `sys_notice` VALUES (3, '??????', '2', '<p>??????</p>', '0', 'admin', '2021-06-28 05:10:35', 'admin', '2021-06-28 05:11:28', NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '???????????????0?????? 1?????? 2?????? 3?????????',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '???????????????0?????? 1???????????? 2??????????????????',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '??????URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `status` int(1) NULL DEFAULT 0 COMMENT '???????????????0?????? 1?????????',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '??????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '????????????', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '????????????', '/tool/gen/importTable', '127.0.0.1', '??????IP', '{\"tables\":[\"sys_site,sys_kind\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 07:19:11');
INSERT INTO `sys_oper_log` VALUES (101, '????????????', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '????????????', '/tool/gen/download/sys_kind', '127.0.0.1', '??????IP', '\"sys_kind\"', NULL, 0, NULL, '2021-06-27 07:19:16');
INSERT INTO `sys_oper_log` VALUES (102, '????????????', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '????????????', '/tool/gen/download/sys_site', '127.0.0.1', '??????IP', '\"sys_site\"', NULL, 0, NULL, '2021-06-27 07:19:22');
INSERT INTO `sys_oper_log` VALUES (103, '????????????', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '????????????', '/tool/gen/remove', '127.0.0.1', '??????IP', '{\"ids\":[\"1,2\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 07:21:13');
INSERT INTO `sys_oper_log` VALUES (104, '????????????', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '????????????', '/tool/gen/importTable', '127.0.0.1', '??????IP', '{\"tables\":[\"sys_site,sys_kind\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 07:23:27');
INSERT INTO `sys_oper_log` VALUES (105, '????????????', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '????????????', '/tool/gen/download/sys_kind', '127.0.0.1', '??????IP', '\"sys_kind\"', NULL, 0, NULL, '2021-06-27 07:23:34');
INSERT INTO `sys_oper_log` VALUES (106, '????????????', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '????????????', '/tool/gen/download/sys_site', '127.0.0.1', '??????IP', '\"sys_site\"', NULL, 0, NULL, '2021-06-27 07:23:36');
INSERT INTO `sys_oper_log` VALUES (107, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"??????????????????\"],\"url\":[\"https://www.ahau.edu.cn/\"],\"kindid\":[\"3\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\????????????\\idea??????\\cknav\\target\\classes\\mybatis\\system\\SiteMapper.xml]\r\n### The error may involve com.ruoyi.project.system.site.mapper.SiteMapper.insertSite-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_site          ( name,             url,             kindid )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-06-27 08:57:08');
INSERT INTO `sys_oper_log` VALUES (108, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"??????????????????\"],\"url\":[\"https://www.ahau.edu.cn/\"],\"kindid\":[\"2\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\????????????\\idea??????\\cknav\\target\\classes\\mybatis\\system\\SiteMapper.xml]\r\n### The error may involve com.ruoyi.project.system.site.mapper.SiteMapper.insertSite-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_site          ( name,             url,             kindid )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-06-27 08:57:14');
INSERT INTO `sys_oper_log` VALUES (109, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"??????????????????\"],\"url\":[\"https://www.ahau.edu.cn/\"],\"kindid\":[\"1\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\????????????\\idea??????\\cknav\\target\\classes\\mybatis\\system\\SiteMapper.xml]\r\n### The error may involve com.ruoyi.project.system.site.mapper.SiteMapper.insertSite-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_site          ( name,             url,             kindid )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-06-27 08:57:18');
INSERT INTO `sys_oper_log` VALUES (110, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"??????????????????\"],\"url\":[\"https://www.ahau.edu.cn/\"],\"kindid\":[\"1\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\????????????\\idea??????\\cknav\\target\\classes\\mybatis\\system\\SiteMapper.xml]\r\n### The error may involve com.ruoyi.project.system.site.mapper.SiteMapper.insertSite-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_site          ( name,             url,             kindid )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-06-27 08:57:26');
INSERT INTO `sys_oper_log` VALUES (111, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"??????????????????\"],\"url\":[\"https://www.ahau.edu.cn/\"],\"kindid\":[\"1\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\????????????\\idea??????\\cknav\\target\\classes\\mybatis\\system\\SiteMapper.xml]\r\n### The error may involve com.ruoyi.project.system.site.mapper.SiteMapper.insertSite-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_site          ( name,             url,             kindid )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-06-27 08:57:38');
INSERT INTO `sys_oper_log` VALUES (112, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"??????????????????\"],\"url\":[\"https://www.ahau.edu.cn/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 08:59:34');
INSERT INTO `sys_oper_log` VALUES (113, '??????', 2, 'com.ruoyi.project.system.site.controller.SiteController.editSave()', 'POST', 1, 'admin', '????????????', '/system/site/edit', '127.0.0.1', '??????IP', '{\"id\":[\"3\"],\"name\":[\"??????????????????\"],\"url\":[\"https://www.ahau.edu.cn/\"],\"kindid\":[\"3\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ck`.`sys_site`, CONSTRAINT `sys_site_ibfk_1` FOREIGN KEY (`kindid`) REFERENCES `sys_kind` (`id`) ON DELETE CASCADE ON UPDATE CASCADE)\r\n### The error may exist in file [E:\\????????????\\idea??????\\cknav\\target\\classes\\mybatis\\system\\SiteMapper.xml]\r\n### The error may involve com.ruoyi.project.system.site.mapper.SiteMapper.updateSite-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_site          SET name = ?,             url = ?,             kindid = ?          where id = ?\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ck`.`sys_site`, CONSTRAINT `sys_site_ibfk_1` FOREIGN KEY (`kindid`) REFERENCES `sys_kind` (`id`) ON DELETE CASCADE ON UPDATE CASCADE)\n; Cannot add or update a child row: a foreign key constraint fails (`ck`.`sys_site`, CONSTRAINT `sys_site_ibfk_1` FOREIGN KEY (`kindid`) REFERENCES `sys_kind` (`id`) ON DELETE CASCADE ON UPDATE CASCADE); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ck`.`sys_site`, CONSTRAINT `sys_site_ibfk_1` FOREIGN KEY (`kindid`) REFERENCES `sys_kind` (`id`) ON DELETE CASCADE ON UPDATE CASCADE)', '2021-06-27 08:59:42');
INSERT INTO `sys_oper_log` VALUES (114, '??????', 2, 'com.ruoyi.project.system.site.controller.SiteController.editSave()', 'POST', 1, 'admin', '????????????', '/system/site/edit', '127.0.0.1', '??????IP', '{\"id\":[\"3\"],\"name\":[\"??????????????????\"],\"url\":[\"https://www.ahau.edu.cn/\"],\"kindid\":[\"2\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 08:59:50');
INSERT INTO `sys_oper_log` VALUES (115, '??????', 2, 'com.ruoyi.project.system.kind.controller.KindController.editSave()', 'POST', 1, 'admin', '????????????', '/system/kind/edit', '127.0.0.1', '??????IP', '{\"id\":[\"1\"],\"name\":[\"??????\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:05:06');
INSERT INTO `sys_oper_log` VALUES (116, '??????', 2, 'com.ruoyi.project.system.site.controller.SiteController.editSave()', 'POST', 1, 'admin', '????????????', '/system/site/edit', '127.0.0.1', '??????IP', '{\"id\":[\"1\"],\"name\":[\"?????????\"],\"url\":[\"http://www.banong.com/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:07:26');
INSERT INTO `sys_oper_log` VALUES (117, '??????', 2, 'com.ruoyi.project.system.site.controller.SiteController.editSave()', 'POST', 1, 'admin', '????????????', '/system/site/edit', '127.0.0.1', '??????IP', '{\"id\":[\"2\"],\"name\":[\"???????????????\"],\"url\":[\"https://www.cctv.com/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:07:45');
INSERT INTO `sys_oper_log` VALUES (118, '??????', 2, 'com.ruoyi.project.system.site.controller.SiteController.editSave()', 'POST', 1, 'admin', '????????????', '/system/site/edit', '127.0.0.1', '??????IP', '{\"id\":[\"3\"],\"name\":[\"?????????\"],\"url\":[\"http://www.aweb.com.cn/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:08:11');
INSERT INTO `sys_oper_log` VALUES (119, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"???????????????\"],\"url\":[\"http://www.moa.gov.cn/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:08:41');
INSERT INTO `sys_oper_log` VALUES (120, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"????????????\"],\"url\":[\"http://www.farmer.com.cn/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:09:09');
INSERT INTO `sys_oper_log` VALUES (121, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"?????????\"],\"url\":[\"https://www.zhue.com.cn/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:09:53');
INSERT INTO `sys_oper_log` VALUES (122, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"???????????????\"],\"url\":[\"https://www.chinabreed.com/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:10:38');
INSERT INTO `sys_oper_log` VALUES (123, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"???????????????\"],\"url\":[\"http://www.gov.cn/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:38:56');
INSERT INTO `sys_oper_log` VALUES (124, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"?????????\"],\"url\":[\"https://www.jinnong.cn/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:39:21');
INSERT INTO `sys_oper_log` VALUES (125, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"???????????????\"],\"url\":[\"http://www.shuichan.cc/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:41:04');
INSERT INTO `sys_oper_log` VALUES (126, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"?????????\"],\"url\":[\"http://www.emushroom.net/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:43:32');
INSERT INTO `sys_oper_log` VALUES (127, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"??????????????????\"],\"url\":[\"https://www.china-flower.com/\"],\"kindid\":[\"1\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:44:24');
INSERT INTO `sys_oper_log` VALUES (128, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"????????????\"],\"url\":[\"http://www.cofeed.com/\"],\"kindid\":[\"2\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:45:26');
INSERT INTO `sys_oper_log` VALUES (129, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"??????????????????\"],\"url\":[\"http://www.abchina.com/cn/default.htm\"],\"kindid\":[\"2\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:46:12');
INSERT INTO `sys_oper_log` VALUES (130, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"365?????????\"],\"url\":[\"http://www.yuanlin365.com/\"],\"kindid\":[\"2\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:47:12');
INSERT INTO `sys_oper_log` VALUES (131, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"????????????\"],\"url\":[\"https://www.99sj.cn/\"],\"kindid\":[\"2\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:48:35');
INSERT INTO `sys_oper_log` VALUES (132, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"???????????????\"],\"url\":[\"https://www.miaomu.com/\"],\"kindid\":[\"2\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:48:58');
INSERT INTO `sys_oper_log` VALUES (133, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"??????????????????\"],\"url\":[\"https://www.ahau.edu.cn/\"],\"kindid\":[\"2\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-27 16:49:41');
INSERT INTO `sys_oper_log` VALUES (134, '????????????', 1, 'com.ruoyi.project.system.notice.controller.NoticeController.addSave()', 'POST', 1, 'admin', '????????????', '/system/notice/add', '127.0.0.1', '??????IP', '{\"noticeTitle\":[\"??????\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<p>??????</p>\"],\"status\":[\"0\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-28 05:10:35');
INSERT INTO `sys_oper_log` VALUES (135, '????????????', 2, 'com.ruoyi.project.system.notice.controller.NoticeController.editSave()', 'POST', 1, 'admin', '????????????', '/system/notice/edit', '127.0.0.1', '??????IP', '{\"noticeId\":[\"3\"],\"noticeTitle\":[\"??????\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"<p>??????</p>\"],\"status\":[\"0\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-28 05:11:28');
INSERT INTO `sys_oper_log` VALUES (136, '????????????', 2, 'com.ruoyi.project.system.user.controller.ProfileController.update()', 'POST', 1, 'admin', '????????????', '/system/user/profile/update', '127.0.0.1', '??????IP', '{\"id\":[\"\"],\"userName\":[\"crazy kid\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"2889672792@qq.com\"],\"sex\":[\"0\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-28 08:55:48');
INSERT INTO `sys_oper_log` VALUES (137, '????????????', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '????????????', '/system/user/profile/updateAvatar', '127.0.0.1', '??????IP', '', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-28 08:56:51');
INSERT INTO `sys_oper_log` VALUES (138, '????????????', 2, 'com.ruoyi.project.system.user.controller.ProfileController.resetPwd()', 'POST', 1, 'admin', '????????????', '/system/user/profile/resetPwd', '127.0.0.1', '??????IP', '{}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-28 08:57:27');
INSERT INTO `sys_oper_log` VALUES (139, '??????', 1, 'com.ruoyi.project.system.kind.controller.KindController.addSave()', 'POST', 1, 'admin', '????????????', '/system/kind/add', '127.0.0.1', '??????IP', '{\"name\":[\"??????\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-28 09:16:59');
INSERT INTO `sys_oper_log` VALUES (140, '??????', 1, 'com.ruoyi.project.system.site.controller.SiteController.addSave()', 'POST', 1, 'admin', '????????????', '/system/site/add', '127.0.0.1', '??????IP', '{\"name\":[\"??????\"],\"url\":[\"https://nextcloud.crazykid.blog\"],\"kindid\":[\"3\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-28 09:17:30');
INSERT INTO `sys_oper_log` VALUES (141, '??????', 2, 'com.ruoyi.project.system.site.controller.SiteController.editSave()', 'POST', 1, 'admin', '????????????', '/system/site/edit', '127.0.0.1', '??????IP', '{\"id\":[\"19\"],\"name\":[\"??????\"],\"url\":[\"https://nextcloud.crazykid.tk\"],\"kindid\":[\"3\"]}', '{\"msg\":\"????????????\",\"code\":0}', 0, NULL, '2021-06-28 09:17:58');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  `post_sort` int(4) NOT NULL COMMENT '????????????',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '?????????0?????? 1?????????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '?????????', 1, '0', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '????????????', 2, '0', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '????????????', 3, '0', 'admin', '2021-06-27 07:09:55', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '????????????', 4, '0', 'admin', '2021-06-27 07:09:55', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '?????????????????????',
  `role_sort` int(4) NOT NULL COMMENT '????????????',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '???????????????1????????????????????? 2????????????????????? 3???????????????????????? 4????????????????????????????????????',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '???????????????0?????? 1?????????',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '???????????????0???????????? 2???????????????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '???????????????', 'admin', 1, '1', '0', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '???????????????');
INSERT INTO `sys_role` VALUES (2, '????????????', 'common', 2, '2', '0', '0', 'admin', '2021-06-27 07:09:55', '', NULL, '????????????');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '??????ID',
  `dept_id` bigint(20) NOT NULL COMMENT '??????ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '??????ID',
  `menu_id` bigint(20) NOT NULL COMMENT '??????ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_site
-- ----------------------------
DROP TABLE IF EXISTS `sys_site`;
CREATE TABLE `sys_site`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  `kindid` int(11) NOT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kind`(`kindid`) USING BTREE,
  CONSTRAINT `sys_site_ibfk_1` FOREIGN KEY (`kindid`) REFERENCES `sys_kind` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '?????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_site
-- ----------------------------
INSERT INTO `sys_site` VALUES (1, '?????????', 'http://www.banong.com/', 1);
INSERT INTO `sys_site` VALUES (2, '???????????????', 'https://www.cctv.com/', 1);
INSERT INTO `sys_site` VALUES (3, '?????????', 'http://www.aweb.com.cn/', 1);
INSERT INTO `sys_site` VALUES (4, '???????????????', 'http://www.moa.gov.cn/', 1);
INSERT INTO `sys_site` VALUES (5, '????????????', 'http://www.farmer.com.cn/', 1);
INSERT INTO `sys_site` VALUES (6, '?????????', 'https://www.zhue.com.cn/', 1);
INSERT INTO `sys_site` VALUES (7, '???????????????', 'https://www.chinabreed.com/', 1);
INSERT INTO `sys_site` VALUES (8, '???????????????', 'http://www.gov.cn/', 1);
INSERT INTO `sys_site` VALUES (9, '?????????', 'https://www.jinnong.cn/', 1);
INSERT INTO `sys_site` VALUES (10, '???????????????', 'http://www.shuichan.cc/', 1);
INSERT INTO `sys_site` VALUES (11, '?????????', 'http://www.emushroom.net/', 1);
INSERT INTO `sys_site` VALUES (12, '??????????????????', 'https://www.china-flower.com/', 1);
INSERT INTO `sys_site` VALUES (13, '????????????', 'http://www.cofeed.com/', 2);
INSERT INTO `sys_site` VALUES (14, '??????????????????', 'http://www.abchina.com/cn/default.htm', 2);
INSERT INTO `sys_site` VALUES (15, '365?????????', 'http://www.yuanlin365.com/', 2);
INSERT INTO `sys_site` VALUES (16, '????????????', 'https://www.99sj.cn/', 2);
INSERT INTO `sys_site` VALUES (17, '???????????????', 'https://www.miaomu.com/', 2);
INSERT INTO `sys_site` VALUES (18, '??????????????????', 'https://www.ahau.edu.cn/', 2);
INSERT INTO `sys_site` VALUES (19, '??????', 'https://nextcloud.crazykid.tk', 3);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '??????ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '???????????????00???????????? 01???????????????',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '???????????????0??? 1??? 2?????????',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '??????',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '???????????????0???????????? 2???????????????',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '??????????????????',
  `pwd_update_date` datetime(0) NULL DEFAULT NULL COMMENT '????????????????????????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'crazy kid', '00', '2889672792@qq.com', '15888888888', '0', '/profile/avatar/2021/06/28/6958a409-0a66-4860-a7c5-03fcff04c4b0.png', '8ef083305acc9d8562a217aa2e6df761', 'ed7ef5', '0', '0', '127.0.0.1', '2021-07-03 02:53:32', '2021-06-28 16:57:27', 'admin', '2021-06-27 07:09:55', '', '2021-07-02 18:53:32', '?????????');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '??????', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2021-06-27 07:09:55', '2021-06-27 07:09:55', 'admin', '2021-06-27 07:09:55', '', NULL, '?????????');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '????????????id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '??????IP??????',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '???????????????',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '????????????on_line??????off_line??????',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session????????????',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session??????????????????',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '??????????????????????????????',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '??????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '??????ID',
  `post_id` bigint(20) NOT NULL COMMENT '??????ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '??????ID',
  `role_id` bigint(20) NOT NULL COMMENT '??????ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
