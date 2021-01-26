/*
11. For every match involving 'POL', show the matchid, date and the number of goals scored.
*/

SELECT matchid, mdate, COUNT(player) AS num_goals FROM goal
JOIN game
ON game.id = goal.matchid
WHERE game.team1 = 'POL' OR game.team2 = 'POL'
GROUP BY matchid, mdate;
