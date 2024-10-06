/*
QUESTION - 

https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true

CODE - 
*/
SELECT 
    CEIL(ABS(AVG(Salary) - (AVG(CAST(REPLACE(SALARY,0,'') AS UNSIGNED)))))
    FROM EMPLOYEES;