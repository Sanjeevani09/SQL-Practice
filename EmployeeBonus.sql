/*
Question
https://leetcode.com/problems/employee-bonus/submissions/1356924366/?envType=study-plan-v2&envId=top-sql-50

CODE : 
*/

SELECT e.name, b.bonus FROM Employee e
LEFT JOIN Bonus b ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;