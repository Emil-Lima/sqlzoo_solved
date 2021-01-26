/*
6. Which countries have a GDP greater than every country in Europe? [Give the name only.] 
(Some countries may have NULL gdp values)
*/

SELECT name FROM world
WHERE gdp > ALL(SELECT MAX(gdp) FROM world WHERE continent = 'Europe');
