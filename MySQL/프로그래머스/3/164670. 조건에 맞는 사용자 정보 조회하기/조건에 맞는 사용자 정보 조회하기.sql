SELECT user_id, nickname,
       CONCAT_WS(' ', city, street_address1, street_address2) AS '전체주소',
       CONCAT(LEFT(tlno, 3), '-', SUBSTRING(tlno, 4, 4), '-', RIGHT(tlno, 4)) AS '전화번호'
FROM used_goods_user u JOIN (SELECT writer_id
                             FROM used_goods_board
                             GROUP BY 1
                             HAVING count(writer_id) >= 3) b
ON u.user_id = b.writer_id
ORDER BY 1 DESC;