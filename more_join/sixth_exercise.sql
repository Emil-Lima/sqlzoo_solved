/*
6. Obtain the cast list for 'Casablanca'.

what is a cast list?
Use movieid=11768, (or whatever value you got from the previous question)
*/

SELECT name FROM actor
JOIN casting
ON casting.actorid = actor.id
JOIN movie
ON movie.id = casting.movieid
WHERE movie.id = 11768;
