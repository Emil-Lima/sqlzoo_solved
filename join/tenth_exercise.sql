/*
10. Show the stadium and the number of goals scored in each stadium.
*/

SELECT stadium, COUNT(player) AS num_goals FROM game
JOIN goal
ON goal.matchid = game.id
GROUP BY stadium;
