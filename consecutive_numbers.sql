/*
QUESTION - 

https://leetcode.com/problems/consecutive-numbers/?envType=study-plan-v2&envId=top-sql-50

180. Consecutive Numbers

Table: Logs

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| num         | varchar |
+-------------+---------+
In SQL, id is the primary key for this table.
id is an autoincrement column starting from 1.
 
Find all numbers that appear at least three times consecutively.

CODE - 
*/
SELECT DISTINCT l1.num AS ConsecutiveNums 
FROM Logs l1, Logs l2, Logs l3
WHERE l1.num = l2.num 
AND l2.num = l3.num
AND l1.id = l2.id - 1
And l2.id = l3.id - 1;