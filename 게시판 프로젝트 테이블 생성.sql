#날짜 : 2022/02/14
#이름 : 김유경
#내용 : JSP 게시판 테이블 생성

#약관 테이블
CREATE TABLE `Board_terms` (
	`terms`		TEXT,
	`privacy`	TEXT
);

#회원 테이블
CREATE TABLE `Board_user` (
	`uid`		VARCHAR(20) PRIMARY KEY,
	`pass`	VARCHAR(255),
	`name`	VARCHAR(20),
	`nick`	VARCHAR(20) UNIQUE,
	`email`	VARCHAR(60)	UNIQUE,
	`hp`		CHAR(13)	UNIQUE,
	`grade`	TINYINT DEFAULT 2,
	`zip`		CHAR(5),
	`addr1`	VARCHAR(255),
	`addr2`	VARCHAR(255),
	`regip`	VARCHAR(100),
	`rdate`	DATETIME
);

#게시물 테이블
CREATE TABLE `Board_article` (
	`id`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0,
	`comment`	INT DEFAULT 0,
	`cate`		VARCHAR(20) DEFAULT 'free',
	`title`		VARCHAR(200),
	`content`		TEXT NOT NULL,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`uid`			VARCHAR(20) NOT NULL,
	`regip`		VARCHAR(100) NOT NULL,
	`rdate`		DATETIME
);

#파일 테이블
CREATE TABLE `Board_file` (
	`fid`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT NOT NULL,
	`oName`		VARCHAR(255) NOT NULL,
	`nName`		VARCHAR(255) NOT NULL,
	`download`	INT DEFAULT 0,
	`rdate`		DATETIME
);

SELECT COUNT(`id`) FROM `Board_article`;

INSERT INTO `Board_article` (`title`,`content`,`uid`,`regip`,`rdate`) 
SELECT `title`,`content`,`uid`,`regip`,`rdate` FROM `Board_article`;

SELECT a.*, b.`nick` FROM `Board_article` AS a
JOIN `Board_user` AS b
ORDER BY `id` DESC
LIMIT 0,10;

SELECT * FROM `Board_article` AS a
LEFT JOIN `Board_file` AS b
ON a.id = b.parent
WHERE `id` = '1';

SELECT * FROM `Board_article`
WHERE `parent` = 1
ORDER BY `id` ASC;

SELECT a.*, b.nick FROM `Board_article` AS a 
JOIN `Board_user` AS b ON a.uid = b.uid
WHERE `parent` = 1 ORDER BY `id` ASC;

DELETE FROM `Board_article` WHERE `id` = '1';

UPDATE `Board_article` SET `comment` = `comment` - 1 WHERE `id` = '1';

UPDATE `Board_article` SET `content` = '댓글수정' WHERE `id` = '1';

SELECT COUNT(`uid`) FROM `Board_user` WHERE `uid`='aaa1011';

SELECT COUNT(`nick`) FROM `Board_user` WHERE `nick`='aaa1011';