SELECT board_id, writer_id, title, price,
       CASE status
           WHEN 'sale' THEN '판매중'
           WHEN 'reserved' THEN '예약중'
           ELSE '거래완료'
       END AS status
FROM used_goods_board
WHERE created_date = '2022-10-05'
ORDER BY 1 DESC;