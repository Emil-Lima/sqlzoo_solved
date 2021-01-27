/*
12. List the film title and the leading actor for all of the films 'Julie Andrews' played in.
*/

SELECT title, name FROM movie
JOIN casting
ON (casting.movieid = movie.id AND casting.ord = 1)
JOIN actor
ON actor.id = casting.actorid
WHERE movie.id IN (SELECT movieid FROM casting
    WHERE actorid IN (SELECT id FROM actor
        WHERE name = 'Julie Andrews'));
