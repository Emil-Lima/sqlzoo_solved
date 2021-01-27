/*
3. Give the id and the name for the stops on the '4' 'LRT' service.
*/

SELECT id, name FROM stops
JOIN route
ON route.stop = stops.id
WHERE route.num = 4 AND route.company = 'LRT';
