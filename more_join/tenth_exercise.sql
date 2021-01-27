/*
10. List the films together with the leading star for all 1962 films.
*/

SELECT title, name FROM movie
JOIN casting
ON casting.movieid = movie.id
JOIN actor
ON actor.id = casting.actorid
WHERE casting.ord = 1 AND movie.yr = 1962;
