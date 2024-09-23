/*
QUESTION - 
https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true

Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.

where LAT_N is the northern latitude and LONG_W is the western longitude.


CODE - 
*/
SELECT ROUND(MAX(LAT_N),4) FROM STATION
WHERE LAT_N < 137.2345;

OR

SELECT TRUNCATE(MAX(LAT_N),4) FROM STATION
WHERE LAT_N < 137.2345;