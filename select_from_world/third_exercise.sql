/*
3. Give the name and the per capita GDP for those countries with a population of at least 200 million.
*/

SELECT name, gdp / population AS per_capita_gdp FROM world
WHERE population >= 200000000;
