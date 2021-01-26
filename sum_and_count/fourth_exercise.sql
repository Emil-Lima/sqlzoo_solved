/*
4. How many countries have an area of at least 1000000
*/

SELECT COUNT(name) AS num_of_countries FROM world
WHERE area >= 1000000;
