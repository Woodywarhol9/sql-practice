SET @idx = -1;

SELECT ROUND(LAT_N, 4) FROM (SELECT @idx := @idx + 1 as ROW_NUM, LAT_N FROM STATION ORDER BY LAT_N) AS SUB
    WHERE SUB.ROW_NUM in (floor(@idx / 2), ceil(@idx / 2));