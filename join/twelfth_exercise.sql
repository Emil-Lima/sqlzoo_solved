/*
12. For every match where 'GER' scored, show matchid, match date and the number of goals scored by 'GER'
*/

SELECT matchid, mdate, COUNT(player) AS num_goals FROM goal
JOIN game
ON game.id = goal.matchid
WHERE goal.teamid = 'GER'
GROUP BY matchid, mdate;
