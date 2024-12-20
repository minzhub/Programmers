SELECT u.user_id,u.NICKNAME,concat(u.CITY," ", u.STREET_ADDRESS1," ", u.STREET_ADDRESS2) 전체주소
        ,concat(substring(u.TLNO,1,3),'-',substring(u.TLNO,4,4),'-',substring(u.TLNO,8,4)) 전화번호
from USED_GOODS_BOARD b join USED_GOODS_USER u on b.WRITER_ID = u.user_id
GROUP BY WRITER_ID
HAVING count(*) >= 3
order by u.user_id desc