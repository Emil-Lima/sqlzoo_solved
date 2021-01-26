/*
5. What is the total population of ('Estonia', 'Latvia', 'Lithuania')
*/

SELECT SUM(population) AS sum_of_population FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania');
