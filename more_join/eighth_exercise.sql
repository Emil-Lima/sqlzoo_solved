/*
8. List the films in which 'Harrison Ford' has appeared
*/

SELECT title FROM movie
JOIN casting
ON casting.movieid = movie.id
JOIN actor
ON actor.id = casting.actorid
WHERE actor.name = 'Harrison Ford';
