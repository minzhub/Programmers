SELECT member_name, review_text, DATE_FORMAT(review_date, '%Y-%m-%d') AS review_date
FROM rest_review r JOIN member_profile m
ON r.member_id = m.member_id
WHERE r.member_id = (SELECT member_id
                     FROM rest_review
                     GROUP BY member_id
                     ORDER BY COUNT(review_id) DESC
                     LIMIT 1)
ORDER BY 3, 2;