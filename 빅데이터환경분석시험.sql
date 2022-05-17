CREATE TABLE `Students` (
	`sid`		VARCHAR(20) PRIMARY KEY,
	`name`	VARCHAR(20),
	`gender`	TINYINT,
	`hp`		CHAR(13)	UNIQUE,
	`grade`	TINYINT DEFAULT 1,
	`regdate`	DATETIME
);

INSERT INTO `Students` VALUES(20220201, '김춘추', 1, '010-1212-1211',1, '2022-03-01');
INSERT INTO `Students` VALUES(20220202, '강감찬', 1, '010-1212-0001',3, '2022-02-06');
INSERT INTO `Students` VALUES(20220203, '허난설헌', 2, '010-1211-1010',2, '2022-02-14');

SELECT DATE_FORMAT(`regdate`, '%Y-%m-%d') FROM `Students`;
