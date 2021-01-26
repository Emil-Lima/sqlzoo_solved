/*
7. List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'
*/

SELECT player FROM goal
JOIN game
ON game.id = goal.matchid
WHERE game.stadium = 'National Stadium, Warsaw';
