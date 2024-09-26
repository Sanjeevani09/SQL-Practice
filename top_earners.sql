/*
QUESTION - 
https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true

CODE - 
*/

SELECT months * salary AS earnings, COUNT(employee_id) FROM Employee
GROUP BY earnings 
HAVING earnings = (SELECT MAX(salary * months) FROM Employee);
