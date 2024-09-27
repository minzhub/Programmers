SELECT i.rest_id, i.rest_name, i.food_type, i.favorites, i.address, r.avg_review
FROM rest_info i JOIN (SELECT rest_id, ROUND(AVG(review_score), 2) AS avg_review
                       FROM rest_review
                       GROUP BY 1) r
ON i.rest_id = r.rest_id
WHERE i.address LIKE '서울%'
ORDER BY r.avg_review DESC, i.favorites DESC;