#이름 바꾸는 쿼리문
ALTER TABLE `Board_article` CHANGE `cate` `type` VARCHAR(10);
ALTER TABLE `Board_article` CHANGE `no` `no` INT AUTO_INCREMENT;

(SELECT * FROM `Board_article` WHERE `parent`=0 AND `type`='grow' ORDER BY `no` DESC LIMIT 5)
UNION
(SELECT * FROM `Board_article` WHERE `parent`=0 AND `type`='school' ORDER BY `no` DESC LIMIT 5)
UNION
(SELECT * FROM `Board_article` WHERE `parent`=0 AND `type`='story' ORDER BY `no` DESC LIMIT 5);

UPDATE `Member` SET `name`='k', `hp`='010-1234-1234', `pos`='사원', `dep`=101, `rdate`='2022-01-01' WHERE `uid`='aa123';

UPDATE `Member` SET `name`='박혁거세', `hp`='010-1234-10021', `pos`='부장', `dep`=101, `rdate`=NOW() WHERE `uid`='a101';

INSERT INTO `Member` VALUES ('c101','홍길동','010-1234-1234','사원', 101, NOW());