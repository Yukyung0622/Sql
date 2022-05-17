CREATE TABLE `Staff`(
	`stf_no` 		INT AUTO_INCREMENT PRIMARY KEY,
	`stf_name` 		VARCHAR(10),
	`stf_birth`  	VARCHAR(20),
	`stf_gender`	TINYINT,
	`stf_hp`			CHAR(13),
	`stf_addr` 		VARCHAR(100),
	`stf_date`		VARCHAR(20)
);

INSERT INTO `Staff` (stf_name, stf_birth, stf_gender, stf_hp, stf_addr, stf_date) VALUES ('김유신', '1983-02-05', '1', '010-1234-1001', '경상남도 김해시', '2021-03-02');
INSERT INTO `Staff` (stf_name, stf_birth, stf_gender, stf_hp, stf_addr, stf_date) VALUES ('김춘추', '1992-03-25', '1', '010-1234-1002', '경상남도 경주시', '2021-04-01');
INSERT INTO `Staff` (stf_name, stf_birth, stf_gender, stf_hp, stf_addr, stf_date) VALUES ('황진이', '1998-12-07', '2', '010-1234-2001', '부산광역시 부산진구', '2019-12-17');

