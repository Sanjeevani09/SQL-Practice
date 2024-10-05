/*
QUESTION - 

https://leetcode.com/problems/average-time-of-process-per-machine/submissions/1412849014/?envType=study-plan-v2&envId=top-sql-50

CODE - 
*/
SELECT machine_id, 
    ROUND(SUM(IF(activity_type = 'start', -1, 1) * timestamp) / COUNT(DISTINCT process_id),3) AS processing_time 
FROM Activity
GROUP BY machine_id;