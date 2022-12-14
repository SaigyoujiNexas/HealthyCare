DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`(
    `cus_id` int(11) NOT NULL AUTO_INCREMENT,
    `cus_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
    `gender` smallint(6) DEFAULT 1 COMMENT '说明：\r\n 0 女 \r\n 1 男',
    `telnum` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
    `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
    `uid`   varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
    `pwd`   varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '登陆密码',
    `status` smallint(6) DEFAULT 1 COMMENT '说明 \r\n 0 禁用\r\n 1 启用',
    `balance` decimal(10, 0) DEFAULT 1000 COMMENT '账户余额',
    `paypwd`  varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '支付密码',
    PRIMARY KEY (`cus_id`) USING BTREE
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

DROP TABLE IF EXISTS `shopcard`;
CREATE TABLE `shopcard`(
    `cus_id` int(11) NOT NULL,
    `card_id` int(11) NOT NULL AUTO_INCREMENT,
    `medicine_id` int(11) NOT NULL,
    `item_num`  int(11)  DEFAULT 1,
    PRIMARY KEY (`card_id`) USING BTREE,
    INDEX `FK_customer_shopcard`(`cus_id`) USING BTREE,
    CONSTRAINT `FK_customer_shopcard` FOREIGN KEY (`cus_id`) REFERENCES `customer`(`cus_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale`(
    `sale_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `cus_id` int(11) DEFAULT NULL,
    `sale_time` datetime DEFAULT NULL,
    `sale_payment` decimal(10, 2) DEFAULT NULL,
    `sale_change` decimal(10, 2) DEFAULT NULL,
    `sale_type` smallint(6) DEFAULT NULL COMMENT '\r\n 1 销售单 \r\n 2 退款单\r\n',
    'sale_status' smallint(6) DEFAULT NULL COMMENT '\r\n 0 待付款 \r\n 1 已付款\r\n',
    PRIMARY KEY (sale_id) USING BTREE,
    INDEX `FK_customer_sale`(`cus_id`) USING BTREE,
    CONSTRAINT `FK_customer_sale` FOREIGN KEY (`cus_id`) REFERENCES `customer`(`cus_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`(
    `doctor_id` int(11) NOT NULL AUTO_INCREMENT
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`(
    `blog_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `title` varchar(100) NOT NULL,
    `title_image` varchar(100) DEFAULT NULL,
    `type` smallint(6) DEFAULT 0 COMMENT '\r\n 0 文本类型 \r\n 1 视频类型 \r\n 2 音频类型',
    `content` varchar(100) DEFAULT NULL,
    `doctor_id` int(11) DEFAULT NULL,
    `post_time` datetime DEFAULT NULL,
    PRIMARY KEY (`blog_id`) USING BTREE,
    INDEX `FK_doctor_blog`(`doctor_id`) USING BTREE,
    CONSTRAINT `FK_doctor_blog` FOREIGN KEY (`doctor_id`) REFERENCES `doctor`(`doctor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

DROP TABLE IF EXISTS `merchandise`;
CREATE TABLE `merchandise`(
    `item_id` int(11) NOT NULL AUTO_INCREMENT,
    `item_name` varchar(100) NOT NULL DEFAULT '',
    `item_price` decimal(10, 2) NOT NULL,
    `effect` varchar(100) DEFAULT NULL,
    `description` varchar(100) DEFAULT NULL,
    `status` smallint(6) DEFAULT 1 COMMENT '\r\n 0: 上架状态 \r\n 1: 下架状态\r\n',
    PRIMARY KEY (`item_id`) USING BTREE
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;
