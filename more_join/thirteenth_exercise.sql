/*
13. Obtain a list, in alphabetical order, of actors who've had at least 15 starring roles.
*/

SELECT DISTINCT name FROM actor AS a
JOIN casting
ON casting.actorid = a.id
WHERE (SELECT COUNT(actorid) FROM casting AS b
    WHERE b.actorid = a.id AND b.ord = 1) >= 15
ORDER BY name;
