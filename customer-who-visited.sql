/*
QUESTION -
https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/submissions/1364990776/?envType=study-plan-v2&envId=top-sql-50


1581. Customer Who Visited but Did Not Make Any Transactions

CODE - 
*/
SELECT v.customer_id, COUNT(*) AS count_no_trans FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE  t.amount IS NULL
GROUP BY 1; 

/* wrong */