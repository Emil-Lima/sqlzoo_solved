/*
8. Use COUNT and GROUP BY dept.name to show each department and the number of staff. 
Use a RIGHT JOIN to ensure that the Engineering department is listed.
*/

SELECT dept.name, COUNT(teacher.name) AS num_teachers FROM teacher
RIGHT JOIN dept
ON dept.id = teacher.dept
GROUP BY dept.name;
