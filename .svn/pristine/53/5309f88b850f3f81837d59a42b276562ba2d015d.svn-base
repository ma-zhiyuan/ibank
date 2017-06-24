--创建通知表
--创建人：张文龙
--创建时间：2017年5月8日 
create table announcement(
	id int auto_increment comment '编号',
	title varchar(255) not null comment '通知标题',
	content varchar(4000) not null comment '通知内容',
	picture varchar(100) comment '通知图片内容',
	update_time datetime not null comment '更新时间',
	create_time datetime not null comment '创建时间',
	constraint announcement_id_pk primary key(id) comment 'id主键'
)engine=InnoDB,default charset= utf8, comment "通知表";


alter table announcement add attribute varchar(255) not null comment '通知属性';

--创建客服回复表
--创建人：孙新召
--创建时间：2017年5月7日 
create table customerreplay(
	id int auto_increment comment '编号',
	customer_id int not null comment '客服编号',
	content varchar(4000) not null comment '回复内容',
	userconsult_id int not null comment '回复咨询的编号',
	replaytime date not null comment '回复时间',
	constraint customerreplay_id_pk primary key(id) comment 'id主键'
)engine=InnoDB,default charset= utf8, comment "客服回复表";

 ALTER TABLE `customerreplay` MODIFY COLUMN `id`  int(11) NOT NULL AUTO_INCREMENT FIRST ;comment '为主键id设置自增'
alter table customerreplay add constraint customerreplay_userconsultid_FK foreign key(userconsult_id) REFERENCES userconsultation(id); comment '回复咨询外键' 

--客服数据表中添加状态和激活码列
--创建人：孙新召
--创建时间：2017年5月6日 

alter table customerServices add state int not null comment '状态';
alter table customerServices add code int not null comment '激活码';
alter table customerServices drop code;
alter table customerServices add code varchar(64) not null comment '激活码';



--客服数据表
--创建人：魏航
--创建时间：2017年4月24日 

create table customerServices(
	no int auto_increment comment '编号',
	name varchar(25) not null comment '姓名',
	age int not null comment '年龄',
	gender tinyint comment '性别： 0： 男 ， 1： 女',
	email varchar(30) not null comment  '邮箱',
	phone varchar(11) not null comment '电话',
	password varchar(32) not null  comment '密码',
	photo varchar(100) comment '照片',
	constraint customerServices_no_pk primary key(no) comment 'no主键',
	constraint customerServices_phone_uk unique (phone) comment '手机号码唯一'
)engine=InnoDB,default charset= utf8, comment "客服表";

ALTER TABLE customerServices ADD email VARCHAR(30) UNIQUE NOT NULL COMMENT '邮箱';
 ALTER TABLE `customerservices` MODIFY COLUMN `no`  int(11) NOT NULL AUTO_INCREMENT FIRST ;comment '为主键no设置自增'

--用户数据表
--创建人：谢世旺
--创建时间：2017年4月21日 
use lanqiaobank;

create table user(
	id int auto_increment comment "id",
	name varchar(50) not null comment "姓名", 
	age tinyint comment "年龄",
	gender tinyint comment "性别： 0： 男 ， 1： 女",
	address varchar(100) comment "地址",
	phone varchar(11) not null comment "手机号码",
	birthplace varchar(20) comment "出生地（籍贯）",
	birthday timestamp default 0 comment "出生日期",
	password varchar(32) not null comment "密码",
	photo varchar(100) comment "照片",
	nickname varchar(50) comment "昵称",
	constraint user_id_pk primary key (id) comment "主键",
	constraint user_phone_uk unique (phone) comment "手机号码唯一"
) engine=InnoDB,default charset= utf8, comment "用户表";

ALTER TABLE USER ADD email VARCHAR(30) UNIQUE NOT NULL COMMENT "邮箱";
alter table user add state int(1) default 1 not null comment '用户状态';


--管理员数据表
--创建人：谢世旺
--创建时间：2017年4月21日 

create table admin(
	id int auto_increment comment "id",
	name varchar(50) not null comment "姓名", 
	phone varchar(11) not null comment "手机号码",
	password varchar(32) not null comment "密码",
	photo varchar(100) comment "照片",
	constraint admin_id_pk primary key (id) comment "主键",
	constraint admin_phone_uk unique (phone) comment "手机号码唯一"
) engine=InnoDB,default charset= utf8, comment "管理员表";

ALTER TABLE admin ADD email VARCHAR(30) UNIQUE NOT NULL COMMENT "邮箱";


--银行数据表
--创建人：苏杰
--创建时间：2017年4月21日 

create table bank(
	id int auto_increment comment '银行id',
	name varchar(25) not null comment '银行卡名称',
	update_time datetime not null comment '更新时间',
	create_time datetime not null comment '创建时间',
	constraint bank_id_pk primary key(id) comment 'id主键'
);

alter table bank add pic varchar(100) not null comment '照片';

--管理员数据表
--创建人：谢世旺
--创建时间：2017年4月24日 
CREATE  table card(
  id int auto_increment comment "id",
  number varchar(30) not null comment "卡号",
  balance double not null comment "余额",
  bank_id int not null comment "所属银行的id",
  user_id int comment "所属用户的id",
  CONSTRAINT card_id_pk PRIMARY KEY (id) comment "主键",
  CONSTRAINT card_bank_id_fk FOREIGN  KEY (bank_id) REFERENCES bank(id) ,
  CONSTRAINT card_user_id_fk FOREIGN KEY (user_id) REFERENCES user(id)
)engine=InnoDB, default charset=utf8, comment="银行卡表";


--转账数据表
--创建人：谢世旺
--创建时间：2017年4月24日 
CREATE TABLE transfer(
	id INT AUTO_INCREMENT COMMENT "主键",
	user_id INT NOT NULL COMMENT "转账用户Id",
	from_card_id INT NOT NULL COMMENT "转出卡的id",
	to_card_id INT NOT NULL COMMENT "接收卡的id",
	money DOUBLE NOT NULL COMMENT "金额",
	message VARCHAR(100) COMMENT "附加信息",
	create_time TIMESTAMP NOT NULL DEFAULT 0 COMMENT "创建时间",
	CONSTRAINT transfer_id_pk PRIMARY KEY (id) COMMENT "主键",
	CONSTRAINT transfer_user_id_fk FOREIGN KEY (user_id) REFERENCES user(id),
	CONSTRAINT transfer_from_card_id_fk FOREIGN KEY (from_card_id) REFERENCES card(id),
	CONSTRAINT transfer_to_card_fk FOREIGN KEY (to_card_id) REFERENCES card(id)
)engine=InnoDB, default charset=utF8, comment="转账表"



--转账数据表
--创建人：吴安安
--创建时间：2017年5月7日 
CREATE TABLE userconsultation(
	id int AUTO_INCREMENT COMMENT '主键',
	user_id int NOT NULL COMMENT '咨询用户人Id',
	common varchar(4000) NOT NULL COMMENT '咨询内容',
	customer_id int COMMENT '第一个回复的客服ID',
	consultationtime Date not null COMMENT '咨询日期',
	replaystate int not null COMMENT '是否已回复',
	CONSTRAINT userconsultation_id_pk PRIMARY KEY (id) COMMENT '主键',
	CONSTRAINT userconsultation_admin_id_fk FOREIGN KEY (admin_id) REFERENCES customerreplay(id)
)engine=InnoDB, default charset=utF8, comment='用户咨询表'

ALTER TABLE userconsultation ADD id int UNIQUE NOT NULL COMMENT '用户咨询表id';
ALTER TABLE `userconsultation` MODIFY COLUMN `id`  int(11) NOT NULL AUTO_INCREMENT FIRST ;comment '为主键id设置自增'

--删除userconsultation表中的customer_id列
--创建人：孙新召
--创建时间：2017年5月10日 
alter table userconsultation drop column customer_id   
alter table userconsultation drop FOREIGN KEY userconsultation_admin_id_fk

--创建人：谢世旺
--创建时间：2017年5月11日 
ALTER TABLE card ADD credit INT NOT NULL DEFAULT 0 comment "信用度";
ALTER TABLE card ADD is_credit_card INT NOT NULL DEFAULT 0 comment "0:非信用卡， 1:信用卡";

CREATE TABLE interest(
  id INT AUTO_INCREMENT COMMENT "id",
  rate DOUBLE NOT NULL COMMENT "利息",
  duration INT NOT NULL DEFAULT 1 COMMENT "贷款时长（单位天）",
  bank_id INT NOT NULL COMMENT "银行id",
  is_deposit INT NOT NULL DEFAULT 1 COMMENT "是否为存款： 1是， 0 否",
  CONSTRAINT loan_interest_id_pk PRIMARY KEY (id),
  CONSTRAINT loan_interest_bank_id_fk FOREIGN KEY (bank_id) REFERENCES bank(id)
)engine=InnoDB, DEFAULT CHARSET=utf8, COMMENT "利率数据表";

CREATE TABLE deposit(
  id INT AUTO_INCREMENT COMMENT "id",
  create_time DATETIME NOT NULL COMMENT "创建时间",
  update_time DATETIME NOT NULL COMMENT "更新时间",
  money DOUBLE NOT NULL COMMENT "金额",
  is_take_out INT DEFAULT 0 NOT NULL COMMENT "是否取出",
  user_id INT NOT NULL COMMENT "用户id",
  card_id INT NOT NULL COMMENT "银行卡id",
  interest_id INT NOT NULL COMMENT "利率id",
  CONSTRAINT deposit_id_pk PRIMARY KEY (id),
  CONSTRAINT deposit_user_id_fk FOREIGN KEY (user_id) REFERENCES user(id),
  CONSTRAINT deposit_card_id_fk FOREIGN KEY (card_id) REFERENCES card(id),
  CONSTRAINT deposit_interest_id_fk FOREIGN KEY (interest_id) REFERENCES interest(id)
)engine=InnoDB, DEFAULT CHARSET=utf8, COMMENT "存款数据表";

CREATE TABLE loan(
  id INT AUTO_INCREMENT COMMENT "id",
  create_time DATETIME NOT NULL COMMENT "创建时间",
  update_time DATETIME NOT NULL COMMENT "更新时间",
  money DOUBLE NOT NULL COMMENT "金额",
  is_pay_back INT DEFAULT 0 NOT NULL COMMENT "是否归还",
  user_id INT NOT NULL COMMENT "用户id",
  card_id INT NOT NULL COMMENT "银行卡id",
  interest_id INT NOT NULL COMMENT "利率id",
  CONSTRAINT loan_id_pk PRIMARY KEY (id),
  CONSTRAINT loan_user_id_fk FOREIGN KEY (user_id) REFERENCES user(id),
  CONSTRAINT loan_card_id_fk FOREIGN KEY (card_id) REFERENCES card(id),
  CONSTRAINT loan_interest_id_fk FOREIGN KEY (interest_id) REFERENCES interest(id)
)engine=InnoDB, DEFAULT CHARSET=utf8, COMMENT "贷款数据表";



--创建人：王泽华
--创建时间：2017年5月21日 
CREATE TABLE repayment(
  id INT AUTO_INCREMENT COMMENT "id",
  create_time DATETIME NOT NULL COMMENT "创建时间",
  money DOUBLE NOT NULL COMMENT "金额",
  user_id INT NOT NULL COMMENT "用户id",
  card_id INT NOT NULL COMMENT "银行卡id",
  loan_id INT NOT NULL COMMENT "贷款id",
  CONSTRAINT repa_id_pk PRIMARY KEY (id),
  CONSTRAINT repa_user_id_fk FOREIGN KEY (user_id) REFERENCES user(id),
  CONSTRAINT repa_card_id_fk FOREIGN KEY (card_id) REFERENCES card(id),
  CONSTRAINT repa_id_fk FOREIGN KEY (loan_id) REFERENCES loan(id)
)engine=InnoDB, DEFAULT CHARSET=utf8, COMMENT "还贷款数据表";

create table enterprise_regist(
id int auto_increment comment 'id',
token varchar(32) not null comment '令牌',
name varchar(30) not null comment '名字',
person_name varchar(30) comment '法人名字',
location varchar(30) comment '地址',
email varchar(30) comment '邮箱',
card_id int comment '银行卡id',
create_time datetime comment '创建时间',
constraint enterprise_regist_id_pk primary key (id),
constraint enterprise_regist_card_id_fk foreign key (card_id) references card(id)
)engine=InnoDB, DEFAULT CHARSET=utf8, COMMENT "企业注册数据表";

create table status_indentify(
id int auto_increment,
identify_code varchar(32) not null comment '识别码',
constraint status_indentify_id_pk primary key (id)
)engine=InnoDB, DEFAULT CHARSET=utf8, COMMENT "身份认证数据表";

