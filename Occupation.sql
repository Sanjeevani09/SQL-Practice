/*Question - 
https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true

CODE - 
*/
SELECT MAX(
CASE 
    WHEN occupation = 'Doctor' THEN name END) AS Doctor,
    MAX(
CASE 
    WHEN occupation = 'Professor' THEN name END) AS Professor,
MAX(
CASE 
    WHEN occupation = 'Singer' THEN name END) AS Singer,    
    MAX(
CASE 
    WHEN occupation = 'Actor' THEN name END) AS Actor
FROM (SELECT Name, Occupation, ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS row_no FROM OCCUPATIONS) AS occup
GROUP BY row_no