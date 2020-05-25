SELECT SUM(TIV_2016) AS TIV_2016
FROM
(
SELECT PID, TIV_2016,
COUNT(PID) OVER (PARTITION BY TIV_2015) AS cnt_TIV2015,
COUNT(PID) OVER (PARTITION BY LAT, LON) AS cnt_latlon
FROM insurance
) AS t1
WHERE cnt_TIV2015 > 1 AND cnt_latlon = 1;