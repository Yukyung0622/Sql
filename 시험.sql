CREATE TABLE `Employee` (
	`uid` 	VARCHAR(10) PRIMARY KEY,
	`name` 	VARCHAR(10),
	`gender`	TINYINT,
	`hp`		CHAR(13),
	`email`	VARCHAR(100),
	`pos`		VARCHAR(10),
	`dep`		INT,
	`rdate`	DATETIME
);


INSERT INTO `Employee` VALUES ('a101', '김유신', '1','010-1234-1111','kysin@naver.com', '과장', '102',NOW());
INSERT INTO `Employee` VALUES ('a102', '김춘추', '1','010-1234-1002','kimcc@gmail.com', '대리', '105',NOW());


