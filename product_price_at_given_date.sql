/*
QUESTION -

https://leetcode.com/problems/product-price-at-a-given-date/submissions/1409637947/?envType=study-plan-v2&envId=top-sql-50

1164. Product Price at a Given Date

Table: Products

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| new_price     | int     |
| change_date   | date    |
+---------------+---------+
(product_id, change_date) is the primary key (combination of columns with unique values) of this table.
Each row of this table indicates that the price of some product was changed to a new price at some date.

Write a solution to find the prices of all products on 2019-08-16. Assume the price of all products before any change is 10.

Return the result table in any order.

CODE - 
*/
SELECT product_id,
    COALESCE(
        (SELECT new_price
         FROM Products
         WHERE p.product_id = product_id
         AND change_date <= '2019-08-16'
         ORDER BY change_date DESC
         LIMIT 1),
    10) AS price
FROM Products p
GROUP BY product_id;