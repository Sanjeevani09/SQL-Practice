/*
QUESTION
https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true

Query a count of the number of cities in CITY having a Population larger than 100000.

CODE - 
*/
SELECT COUNT(*) FROM CITY 
WHERE POPULATION > 100000;