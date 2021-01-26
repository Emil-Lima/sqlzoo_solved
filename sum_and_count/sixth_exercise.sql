/*
6. For each continent show the continent and number of countries.
*/

SELECT continent, COUNT(name) AS number_of_countries FROM world
GROUP BY continent;
