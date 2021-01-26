/*
8. List each continent and the name of the country that comes first alphabetically.
*/

SELECT DISTINCT continent, name FROM world AS a
WHERE name <= ALL(SELECT name FROM world AS b
WHERE a.continent = b.continent);
