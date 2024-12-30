-- 코드를 입력하세요
SELECT m.member_name, r.review_text,
       DATE_FORMAT(r.review_date, '%Y-%m-%d') AS review_date
FROM rest_review r
JOIN member_profile m ON r.member_id = m.member_id
JOIN (SELECT member_id
      FROM rest_review
      GROUP BY member_id
      ORDER BY COUNT(*) DESC
      LIMIT 1) t ON r.member_id = t.member_id
ORDER BY review_date, r.review_text;