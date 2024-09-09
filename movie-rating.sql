/*
QUESTION - 
https://leetcode.com/problems/movie-rating/?envType=study-plan-v2&envId=top-sql-50

1341. Movie Rating

Table: Movies

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| movie_id      | int     |
| title         | varchar |
+---------------+---------+
movie_id is the primary key (column with unique values) for this table.
title is the name of the movie.
 

Table: Users

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| user_id       | int     |
| name          | varchar |
+---------------+---------+
user_id is the primary key (column with unique values) for this table.
The column 'name' has unique values.
Table: MovieRating

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| movie_id      | int     |
| user_id       | int     |
| rating        | int     |
| created_at    | date    |
+---------------+---------+
(movie_id, user_id) is the primary key (column with unique values) for this table.
This table contains the rating of a movie by a user in their review.
created_at is the user's review date. 
 
Write a solution to:

Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.

CODE - 
*/
(SELECT name AS results
FROM Users u
JOIN MovieRating mr on u.user_id = mr.user_id
GROUP BY u.user_id
ORDER BY count(mr.rating) DESC, u.name ASC
LIMIT 1)

UNION ALL

(SELECT title AS results
FROM Movies m
JOIN MovieRating mr ON m.movie_id = mr.movie_id
WHERE month(mr.created_at) = 2
AND year(mr.created_at) = 2020
GROUP BY m.movie_id
ORDER BY avg(mr.rating) DESC, m.title ASC
LIMIT 1);
