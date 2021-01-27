/*
10. Find the routes involving two buses that can go from Craiglockhart to Lochend.
Show the bus no. and company for the first bus, the name of the stop for the transfer,
and the bus no. and company for the second bus.
*/

SELECT S.num, S.company, S.name, T.num, T.company 
FROM (SELECT DISTINCT a.num, a.company, sb.name 
     FROM route AS a 
     JOIN route AS b ON (a.num = b.num and a.company = b.company) 
     JOIN stops AS sa ON sa.id = a.stop 
     JOIN stops AS sb ON sb.id = b.stop 
     WHERE sa.name = 'Craiglockhart' AND sb.name <> 'Craiglockhart'
) AS S

JOIN (SELECT x.num, x.company, sy.name FROM route AS x 
                  JOIN route AS y ON (x.num = y.num and x.company = y.company) 
                  JOIN stops AS sx ON sx.id = x.stop 
                  JOIN stops AS sy ON sy.id = y.stop 
     WHERE sx.name = 'Lochend' AND sy.name <> 'Lochend'
    ) AS T

ON S.name = T.name
ORDER BY S.num, S.name, T.num;
