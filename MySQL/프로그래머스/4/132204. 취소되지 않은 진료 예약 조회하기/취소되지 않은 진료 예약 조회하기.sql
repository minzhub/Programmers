SELECT a.apnt_no, p.pt_name, p.pt_no, a.mcdp_cd, d.dr_name, a.apnt_ymd
FROM appointment a
JOIN patient p ON a.pt_no = p.pt_no
JOIN doctor d ON a.mddr_id = D.dr_id
WHERE DATE_FORMAT(apnt_ymd, '%Y-%m-%d') = '2022-04-13'
      AND a.apnt_cncl_ymd IS NULL
      AND a.mcdp_cd = 'CS'
ORDER BY a.apnt_ymd;
