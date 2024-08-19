USE jpa;

CREATE TABLE `user2` (
	`user_id` 	INT(11) 			NOT NULL AUTO_INCREMENT,
	`user_nm` 	VARCHAR(100) 	NULL 		DEFAULT NULL,
	`user_pwd` 	VARCHAR(255) 	NULL 		DEFAULT NULL,
	`del_yn`		BOOLEAN			NOT NULL DEFAULT 0,
	`reg_date` 	DATETIME 		NULL 		DEFAULT CURRENT_TIMESTAMP(),
	`chg_date` 	DATETIME 		NULL 		DEFAULT CURRENT_TIMESTAMP(),
	PRIMARY KEY (`user_id`) USING BTREE,
	UNIQUE INDEX `iUser2UserNm` (`user_nm`) USING BTREE
);

CREATE TABLE `role2` (
	`role_no` 	INT(11) 		NOT NULL AUTO_INCREMENT,
	`role_nm` 	VARCHAR(20) NULL 		DEFAULT NULL,
	PRIMARY KEY (`role_no`) USING BTREE
);

CREATE TABLE `board2` (
	`board_no` 			INT 				NOT NULL AUTO_INCREMENT,
	`board_title` 		VARCHAR(100) 	NOT NULL,
	`board_content` 	TINYTEXT 		NULL 		DEFAULT NULL,
	`del_yn`				BOOLEAN			NOT NULL DEFAULT 0,
	`reg_date` 			DATETIME 		NULL 		DEFAULT CURRENT_TIMESTAMP(),
	`chg_date` 			DATETIME 		NULL 		DEFAULT CURRENT_TIMESTAMP(),
	`user_id` 			INT 				NOT NULL,
	PRIMARY KEY (`board_no`) USING BTREE,
	INDEX `FK_board2_user2` (`user_id`) USING BTREE,
	CONSTRAINT `FK_board2_user2` FOREIGN KEY (`user_id`) REFERENCES `user2` (`user_id`) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE `user_role` (
	`user_id` 	INT(11) NOT NULL,
	`role_no` 	INT(11) NOT NULL,
	PRIMARY KEY (`user_id`, `role_no`) USING BTREE,
	INDEX `FK_user_role_role2` (`role_no`) USING BTREE,
	CONSTRAINT `FK_user_role_role2` FOREIGN KEY (`role_no`) REFERENCES `role2` (`role_no`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `FK_user_role_user2` FOREIGN KEY (`user_id`) REFERENCES `user2` (`user_id`) ON UPDATE NO ACTION ON DELETE NO ACTION
);

SHOW TABLES;

INSERT INTO role2 (`role_nm`) VALUES ('ADMIN');
INSERT INTO role2 (`role_nm`) VALUES ('DEVELOPER');
INSERT INTO role2 (`role_nm`) VALUES ('USER');

INSERT INTO user2 (`user_nm`, `user_pwd`,`reg_date`) VALUES ('관리자','ADMIN', NOW());
INSERT INTO user2 (`user_nm`, `user_pwd`,`reg_date`) VALUES ('개발자','DEV', NOW());
INSERT INTO user2 (`user_nm`, `user_pwd`,`reg_date`) VALUES ('사용자','USER', NOW());

INSERT INTO user2 (`user_nm`, `user_pwd`,`reg_date`) VALUES ('사용자1','USER', NOW());
INSERT INTO user2 (`user_nm`, `user_pwd`,`reg_date`) VALUES ('사용자2','USER', NOW());
INSERT INTO user2 (`user_nm`, `user_pwd`,`reg_date`) VALUES ('사용자3','USER', NOW());
INSERT INTO user2 (`user_nm`, `user_pwd`,`reg_date`) VALUES ('사용자4','USER', NOW());
INSERT INTO user2 (`user_nm`, `user_pwd`,`reg_date`) VALUES ('사용자5','USER', NOW());
INSERT INTO user2 (`user_nm`, `user_pwd`,`reg_date`) VALUES ('사용자6','USER', NOW());
INSERT INTO user2 (`user_nm`, `user_pwd`,`reg_date`) VALUES ('사용자7','USER', NOW());

INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글1',1);
INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글2',2);
INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글3',3);
INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글4',4);
INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글5',5);
INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글6',6);
INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글7',7);
INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글8',8);
INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글9',9);
INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글10',10);
INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글11',1);
INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글12',1);
INSERT INTO board2 (`board_title`, `user_id`) VALUES ('게시글13',2);

COMMIT;

SELECT * FROM user2;
SELECT * FROM role2;
SELECT * FROM board2;
    