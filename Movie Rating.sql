(SELECT u.name as results
FROM Movie_Rating mr INNER JOIN Users u ON mr.user_id = u.user_id 
GROUP BY mr.user_id
ORDER BY COUNT(mr.movie_id) DESC, u.name ASC
LIMIT 1)

UNION

(SELECT m.title as results
FROM Movie_Rating mr INNER JOIN Movies m ON mr.movie_id = m.movie_id
WHERE mr.created_at BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY mr.movie_id
ORDER BY AVG(mr.rating) DESC, m.title ASC
LIMIT 1)
