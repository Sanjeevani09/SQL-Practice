/*
QUESTION - 

https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true

Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

CODE - 
*/
SELECT C.NAME FROM CITY C
JOIN COUNTRY CO ON C.COUNTRYCODE = CO.CODE
WHERE CONTINENT = "Africa";