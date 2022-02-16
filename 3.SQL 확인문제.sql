#날짜: 2022/01/10
#이름 : 김유경
#내용 : 3.SQL확인문제

CREATE TABLE `tbl_member`(
	`memberID` 		VARCHAR(10) PRIMARY KEY,  
	`memberName` 	VARCHAR(10) NOT NULL,
	`memberHp`		CHAR(13) UNIQUE,
	`memberAge`		INT,
	`memberAddr`	VARCHAR(20)
);

DROP TABLE `tbl_member`;

INSERT INTO `tbl_member` VALUES ('p101','김유신','010-1234-1001',25,'신라');
INSERT INTO `tbl_member` VALUES ('p102','김춘추','010-1234-1002',23,'신라');
INSERT INTO `tbl_member` (`memberID`,`memberName`,`memberAge`,`memberAddr`) VALUES ('p103','장보고',31,'통일신라');
INSERT INTO `tbl_member` (`memberID`,`memberName`,`memberAddr`) VALUES ('p104','강감찬','고려');
INSERT INTO `tbl_member` (`memberID`,`memberName`,`memberHp`,`memberAge`) VALUES ('p105','이순신','010-1234-1005',50);



CREATE TABLE `tbl_product`(
	`productCode` 	INT AUTO_INCREMENT PRIMARY KEY,
	`productName` 	VARCHAR(10) NOT NULL,
	`price`			INT NOT NULL,
	`amount`			INT DEFAULT 0,
	`company`		VARCHAR(10),
	`makeDate`		DATE
);


DROP TABLE `tbl_product`;

INSERT INTO `tbl_product` SET `productName` = '냉장고', `price`   = 800, `amount`  = 10, `company` = 'LG',`makeDate` = '2022-01-06' ;
INSERT INTO `tbl_product` SET `productName` = '노트북', `price`   = 1200, `amount`  = 20, `company` = '삼성',`makeDate` = '2022-01-06' ;
INSERT INTO `tbl_product` SET `productName` = 'TV', 	  `price`   = 1400, `amount`  = 6, `company` = 'LG',`makeDate` = '2022-01-06' ;
INSERT INTO `tbl_product` SET `productName` = '세탁기', `price`   = 1000, `amount`  = 8, `company` = 'LG',`makeDate` = '2022-01-06' ;
INSERT INTO `tbl_product` SET `productName` = '컴퓨터',`price`   = 1100, `amount`  = 0 ;
INSERT INTO `tbl_product` SET `productName` = '휴대폰', `price`   = 900, `amount`  = 102, `company` = '삼성',`makeDate` = '2022-01-06' ;





SELECT `memberName` FROM `tbl_member`;
SELECT `memberName`,`memberHp` FROM `tbl_member`;
SELECT * FROM `tbl_member` WHERE `memberID` = 'p102';
SELECT * FROM `tbl_member` WHERE `memberID` = 'p104' OR `memberID`='p105';
SELECT * FROM `tbl_member` WHERE `memberAddr` = '신라';
SELECT * FROM `tbl_member` WHERE `memberAge` > 30;
SELECT * FROM `tbl_member` WHERE `memberHp` IS NULL;
UPDATE `tbl_member` SET `memberAge`=42 WHERE `memberID` = 'p104';
UPDATE `tbl_member` SET `memberAddr`= '조선' WHERE `memberID` = 'p105';
DELETE FROM `tbl_member` WHERE `memberID` = 'p103';
SELECT * FROM `tbl_member`;

SELECT `productName` FROM `tbl_product`;
SELECT `prodctName`,`price` FROM `tbl_product`;
SELECT * FROM `tbl_product` WHERE `company` = 'LG';
SELECT * FROM `tbl_product` WHERE `company` = '삼성';
UPDATE `tbl_product` SET
	`company`='삼성',
	`makeDate`='2021-01-01'
	WHERE 
	`productCode` =5;

SELECT * FROM `tbl_product`;
