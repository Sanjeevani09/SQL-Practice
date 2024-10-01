/*
QUESTION - 

https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

CODE - 
*/
SELECT SUM(C.POPULATION) FROM CITY C
JOIN COUNTRY CO ON C.COUNTRYCODE = CO.CODE
WHERE CONTINENT = "Asia";
