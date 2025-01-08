-- 코드를 입력하세요
SELECT b.title, b.board_id, r.reply_id, r.writer_id, r.contents,
       LEFT(r.created_date, 10) AS created_date
FROM used_goods_board b JOIN used_goods_reply r
ON b.board_id = r.board_id
WHERE b.created_date LIKE '2022-10%'
ORDER BY r.created_date, b.title;