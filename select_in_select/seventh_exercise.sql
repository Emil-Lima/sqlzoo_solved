/*
7. Find the largest country (by area) in each continent, show the continent, the name and the area:
*/

SELECT continent, name, area FROM world AS a
WHERE area >= ALL(SELECT area FROM world AS b
WHERE a.continent = b.continent);
