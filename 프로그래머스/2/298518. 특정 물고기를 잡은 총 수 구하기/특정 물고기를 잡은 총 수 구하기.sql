SELECT COUNT(*) AS fish_count
FROM fish_info i JOIN fish_name_info ni
ON i.fish_type = ni.fish_type
WHERE fish_name = 'BASS' OR fish_name = 'SNAPPER'