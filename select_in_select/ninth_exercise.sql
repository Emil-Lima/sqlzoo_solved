/*
9. Find the continents where all countries have a population <= 25000000. Then find the names 
of the countries associated with these continents. Show name, continent and population.
*/

SELECT name, continent, population FROM world AS a
WHERE 25000000 >= ALL(SELECT population FROM world AS b WHERE a.continent = b.continent);
