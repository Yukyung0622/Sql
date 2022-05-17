ALTER TABLE `User3` ADD COLUMN `pass` VARCHAR(255) AFTER `uid`;


UPDATE `Member` SET `name`

	SELECT * FROM `Board_article` AS a 
		WHERE `parent` = 0
		ORDER BY `no` DESC;
		
		SELECT a.*, b.`nick` FROM `Board_article` AS a
		JOIN `Board_user` AS b
		ON a.`uid`=b.`uid` 
		WHERE `parent` = 0
		ORDER BY `no` DESC;
		
SELECT COUNT (`no`) FROM `Board_article` WHERE `parent`=0;


INSERT INTO `Board_article` (`type`, `title`, `content`, `uid`, `regip`, `rdate`)
SELECT `type`, `title`, `content`, `uid`, `regip`, `rdate`
FROM `Board_article` WHERE `parent`=0;

UPDATE `Board_article` SET `title`='aaa', `content`='11aa' WHERE `id`=276 ;

SELECT * FROM `Board_article` AS a LEFT JOIN `Board_file` AS b ON a.id=b.parent WHERE `id`=276;

UPDATE `Board_article` SET `title`=?,`content`=?;

DELETE FROM `Board_article` WHERE `id`=262; 

ALTER TABLE `User3` ADD COLUMN `pass` VARCHAR(255) AFTER `uid`;

UPDATE `Member` SET `name`

	SELECT * FROM `Board_article` AS a 
		WHERE `parent` = 0
		ORDER BY `no` DESC;
		
		SELECT a.*, b.`nick` FROM `Board_article` AS a
		JOIN `Board_user` AS b
		ON a.`uid`=b.`uid` 
		WHERE `parent` = 0
		ORDER BY `no` DESC;
		
SELECT COUNT (`no`) FROM `Board_article` WHERE `parent`=0;


INSERT INTO `Board_article` (`type`, `title`, `content`, `uid`, `regip`, `rdate`)
SELECT `type`, `title`, `content`, `uid`, `regip`, `rdate`
FROM `Board_article` WHERE `parent`=0;

ALTER TABLE `Board_article` CHANGE `cate` `type` VARCHAR(20); 


DELETE FROM `Board_article` WHERE `no`= 38;

UPDATE `Board_file` 
SET `oName`=1, `nName`= 123
WHERE `fid`=13;


UPDATE `Board_article` SET `hit` = hit + 1 WHERE `no`=56;

UPDATE `Board_file` SET `download` = `download` + 1 WHERE `fid`=28;

INSERT INTO `Board_article` SET `parent`=56,`comment`=110, `content`=1100, uid='test', regip='0:0:0:0:0:0:0:1', `rdate`=NOW();	

SELECT * FROM `Customer` WHERE `custid`=1;

INSERT INTO `customer` VALUES (`name`=,?,?);

SELECT * FROM `Customer` ASC;

INSERT INTO `Board_article` (`title`,`content`,`uid`,`regip`,`rdate`)
SELECT `title`, `content`, `uid`,`regip`,`rdate` FROM `Board_article`

UPDATE `Board_article` SET `title`='동', `content`='동' WHERE `no`=33;

DELETE FROM `Board_article` WHERE `parent`=97;


DELETE FROM `Board_article` WHERE `no`=103 AND `parent`=104;
