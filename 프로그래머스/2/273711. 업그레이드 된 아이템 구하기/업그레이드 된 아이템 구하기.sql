-- 코드를 작성해주세요
SELECT i.item_id, i.item_name, i.rarity
FROM item_info i JOIN item_tree t
ON i.item_id = t.item_id
WHERE parent_item_id in (SELECT item_id
                      FROM item_info
                      WHERE rarity = 'RARE')
ORDER BY 1 DESC