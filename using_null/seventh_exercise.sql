/*
7. Use COUNT to show the number of teachers and the number of mobile phones.
*/

SELECT COUNT(teacher.name) AS num_teachers, COUNT(teacher.mobile) AS num_numbers FROM teacher;
