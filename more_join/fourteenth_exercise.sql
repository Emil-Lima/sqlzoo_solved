/*
14. List the films released in the year 1978 ordered by the number of actors in the cast, then by title.
*/

SELECT title, COUNT(actorid) AS num_actors FROM movie
JOIN casting
ON casting.movieid = movie.id
WHERE yr = 1978
GROUP BY title
ORDER BY num_actors DESC, title;
