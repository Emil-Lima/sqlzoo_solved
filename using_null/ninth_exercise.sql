/*
9. Use CASE to show the name of each teacher followed by 'Sci' if the teacher is in dept 1 or 2 and 'Art' otherwise.
*/

SELECT name, CASE WHEN teacher.dept = 1 OR teacher.dept = 2 THEN 'Sci' ELSE 'Art' END AS type_dept FROM teacher;
