/*
QUESTION - 

https://leetcode.com/problems/triangle-judgement/?envType=study-plan-v2&envId=top-sql-50

610. Triangle Judgement

Table: Triangle

+-------------+------+
| Column Name | Type |
+-------------+------+
| x           | int  |
| y           | int  |
| z           | int  |
+-------------+------+
In SQL, (x, y, z) is the primary key column for this table.
Each row of this table contains the lengths of three line segments.
 
Report for every three line segments whether they can form a triangle.
Return the result table in any order.

CODE - 
*/
SELECT x, y, z,
CASE
    WHEN (x + y > z AND x + z > y AND z + y > x) THEN "Yes"
    ELSE "No"
END AS triangle
FROM Triangle;
