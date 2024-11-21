/*
QUESTION - 
https://leetcode.com/problems/find-customer-referee/submissions/1459363569/?envType=study-plan-v2&envId=top-sql-50

584. Find Customer Referee

Table: Customer

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
In SQL, id is the primary key column for this table.
Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
 
Find the names of the customer that are not referred by the customer with id = 2.

CODE - 
*/
SELECT name FROM Customer
WHERE referee_id != 2 or referee_id IS NULL;