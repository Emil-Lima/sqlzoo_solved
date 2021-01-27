/*
15. List all the people who have worked with 'Art Garfunkel'.
*/

SELECT name FROM actor
JOIN casting
ON casting.actorid = actor.id
JOIN movie
ON movie.id = casting.movieid
WHERE name != 'Art Garfunkel' AND 
movie.id IN (SELECT movieid FROM casting
            WHERE actorid IN (SELECT id FROM actor
                            WHERE name = 'Art Garfunkel'));
