/*
9. Show teamname and the total number of goals scored.
*/

SELECT teamname, COUNT(player) as num_goals FROM eteam
JOIN goal
ON goal.teamid = eteam.id
GROUP BY teamname;
