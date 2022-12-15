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

drop trigger if exists `customer_register_check`;
create trigger `customer_register_check` before insert on `customer`
    for each row
begin
    if NEW.telnum<>'' and NEW.telnum in (select telnum from customer)
        then signal sqlstate '42000' set message_text = '该账户已注册';
    end if;
    if NEW.email<>'' and NEW.email in (select email from customer)
        then signal  sqlstate '42000' set message_text = '该账户已注册';
    end if;
end;

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

drop table if exists `department`;
create table `department` (
    `department_id` int(11) NOT NULL AUTO_INCREMENT,
    `department_name` varchar(100) not null default '',
    `department_description` varchar(300) not null default '',
    primary key (`department_id`) using btree
)engine = InnoDB auto_increment = 1 character set = utf8mb4 collate = utf8mb4_bin row_format = COMPACT;

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`(
    `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
    `doctor_name` varchar(100) NOT NUll DEFAULT  '',
    `department_id` int(11) NOT NULL,
    `doctor_description` varchar(200) not null default '',
    `status` smallint(6) default 1 comment '\r\n0 已注销 1 未注销',
    primary key (`doctor_id`) using btree,
    index `FK_department_doctor`(`department_id`) using btree,
    constraint `FK_department_doctor` foreign key (`department_id`) references `department`(`department_id`) on delete restrict on update restrict
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
    `sale_id`int(20) NOT NULL AUTO_INCREMENT,
    `cus_id` int(11) NOT NULL,
    `sale_time` datetime DEFAULT NULL,
    `sale_payment` decimal(10, 2) DEFAULT NULL,
    `sale_change` decimal(10, 2) DEFAULT NULL,
    `sale_type` smallint(6) DEFAULT 1 COMMENT '\r\n 1 销售单 \r\n 2 退款单',
    `sale_status` smallint(6) DEFAULT 1 COMMENT '0 待付款 \r\n 1 已付款',
    PRIMARY KEY (sale_id) USING BTREE,
    INDEX `FK_customer_sale`(`cus_id`) USING BTREE,
    CONSTRAINT `FK_customer_sale` FOREIGN KEY (`cus_id`) REFERENCES `customer`(`cus_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
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

