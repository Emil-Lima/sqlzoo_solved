/*
8. The example query shows all goals scored in the Germany-Greece quarterfinal.
Instead show the name of all players who scored a goal against Germany.
*/

SELECT DISTINCT player FROM goal
JOIN game
ON game.id = goal.matchid
WHERE goal.teamid != 'GER' AND (game.team1 = 'GER' OR game.team2 = 'GER');
