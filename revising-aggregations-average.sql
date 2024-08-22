/*
QUESTION - 
https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true

Query the average population of all cities in CITY where District is California.

CODE -
*/
SELECT AVG(POPULATION) FROM CITY
WHERE DISTRICT = "California";