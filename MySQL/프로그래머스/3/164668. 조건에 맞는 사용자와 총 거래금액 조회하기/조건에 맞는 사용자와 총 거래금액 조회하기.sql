SELECT u.user_id, u.nickname, b.sum
FROM used_goods_user u JOIN (SELECT writer_id, SUM(price) as sum
                             FROM used_goods_board
                             WHERE status = 'DONE'
                             GROUP BY 1
                             HAVING sum >= 700000) b
ON u.user_id = b.writer_id
ORDER BY 3;