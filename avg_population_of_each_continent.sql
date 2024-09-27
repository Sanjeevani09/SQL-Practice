/*
QUESTION - 
https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true

CODE - 
*/

SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION)) FROM CITY, COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE 
GROUP BY COUNTRY.CONTINENT;
