-- 코드를 입력하세요
SELECT b.writer_id AS USER_ID, u.nickname AS NICKNAME, SUM(b.price) AS TOTAL_SALES
FROM used_goods_user u JOIN (SELECT writer_id, price
                             FROM used_goods_board
                             WHERE status = 'DONE') b
ON u.user_id = b.writer_id
GROUP BY 1
HAVING SUM(b.price)>=700000
ORDER BY 3