/*
10. Some countries have populations more than three times that of any of their neighbours (in the same continent). 
Give the countries and continents.
*/

SELECT name, continent FROM world AS a
WHERE a.population / 3 >= ALL(SELECT population FROM world AS b WHERE a.continent = b.continent AND a.name != b.name);
