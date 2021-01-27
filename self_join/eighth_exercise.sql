/*
8. Give a list of the services which connect the stops 'Craiglockhart' and 'Tollcross'
*/

SELECT DISTINCT a.company, a.num FROM route AS a
JOIN route AS b
ON (b.company = a.company AND b.num = a.num)
JOIN stops AS stopa
ON stopa.id = a.stop
JOIN stops AS stopb
ON stopb.id = b.stop
WHERE stopa.name = 'Craiglockhart' AND stopb.name = 'Tollcross';
