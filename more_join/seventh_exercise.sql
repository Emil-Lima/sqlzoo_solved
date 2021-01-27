/*
7. Obtain the cast list for the film 'Alien'
*/

SELECT name FROM actor
JOIN casting
ON casting.actorid = actor.id
JOIN movie
ON movie.id = casting.movieid
WHERE title = 'Alien';
