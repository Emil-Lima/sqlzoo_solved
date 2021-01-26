/*
3. Give the total GDP of Africa
*/

SELECT SUM(gdp) AS total_gdp FROM world
WHERE continent = 'Africa';
