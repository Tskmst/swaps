SELECT 
    'sec_cumulative_equities_old' AS table_name, 
    COUNT(*) AS total_rows 
FROM 
    sec_cumulative_equities_old
UNION ALL
SELECT 
    'sec_cumulative_equities_new' AS table_name, 
    COUNT(*) AS total_rows 
FROM 
    sec_cumulative_equities_new
UNION ALL
SELECT 
    'Total' AS table_name, 
    (SELECT COUNT(*) FROM sec_cumulative_equities_old) + (SELECT COUNT(*) FROM sec_cumulative_equities_new) AS total_rows;
