-- 코드를 입력하세요
WITH hits AS (
    SELECT board_id
    FROM used_goods_board
    ORDER BY views DESC
    LIMIT 1
)

SELECT CONCAT('/home/grep/src/', h.board_id, '/', f.file_id, f.file_name, f.file_ext) AS file_path
FROM hits h JOIN used_goods_file f
ON h.board_id = f.board_id
ORDER BY f.file_id DESC;