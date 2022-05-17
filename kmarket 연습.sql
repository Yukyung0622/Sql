SELECT 
	c2.cate1, 
	c2.cate2, 
	c1.title AS tit1,
	c2.title AS tit2
FROM `km_product_cate1` AS c1
JOIN `km_product_cate2` AS c2
ON c1.cate1 = c2.cate1
ORDER BY c2.cate1, c2.cate2;

SELECT * FROM `km_product` ORDER BY `hit` DESC LIMIT 8;

SELECT *, FLOOR (`price` * (1 - `discount`/100)) AS `salePrice` FROM `km_product` ORDER BY `hit ` DESC LIMIT 8;

SELECT *, FLOOR (`price` * (1 - `discount`/100)) AS `salePrice` FROM `km_product` 
WHERE `cate1` = 6 AND `cate2` =1

ORDER BY `sold` DESC
ORDER BY `salePrice` ASC
ORDER BY `salePrice` DESC
ORDER BY `score` DESC
ORDER BY `review` DESC
ORDER BY `rdate` DESC

LIMIT 0, 10;


SELECT c1.title AS t1, c2.title AS t2 
FROM `km_product_cate1` AS c1
JOIN `km_product_cate2` AS c2
ON c1.cate1 = c2.cate1
WHERE c2.cate1=2 AND c2.cate2=1;

SELECT c2.cate1, c2.cate2, c1.title AS t1, c2.title AS t2 
FROM `km_product_cate1` AS c1
JOIN `km_product_cate2` AS c2
ON c1.cate1 = c2.cate1
WHERE c2.cate1=2 AND c2.cate2=1;


SELECT a.*, b.cate1, b.cate2, b.name, b.desc, b.thumb1 
FROM `km_product_cart` AS a 
JOIN `km_product` AS b
ON a.pid = b.pid
WHERE `uid`='test' ;


SELECT 
	a.*, 
	b.pid,
	b.cnt,
	c.cate1,
	c.cate2, 
	c.name AS pName,
	c.desc AS pDesc,
	c.thumb1 AS pThumb1,
	c.price AS pPrice,
	c.discount AS pDiscount,
	c.point AS pPoint,
	c.delivery AS pDelivery,
	FLOOR(c.price * (1 - c.discount/100)) AS `salePrice`,
	d.name AS uName,
	d.hp AS uHp,
	d.zip AS uZip,
	d.addr1 AS uAddr1,
	d.addr2 AS uAddr2,
	d.point AS uPoint
FROM `km_product_order` AS a
JOIN `km_product_order_detail` AS b
ON a.oid = b.oid
JOIN `km_product` AS c 
ON b.pid = c.pid
JOIN `km_member` AS d
ON a.uid = d.uid
WHERE a.oid=1;
