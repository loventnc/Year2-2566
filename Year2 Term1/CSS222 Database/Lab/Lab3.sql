use university;

-- ข้อ 1..
SELECT * FROM student NATURAL LEFT JOIN takes;

-- ข้อ 2..
SELECT * FROM student NATURAL RIGHT JOIN takes;

-- ข้อ 3.
SELECT instructor.ID,instructor.name,teaches.course_id,teaches.sec_id
FROM instructor INNER JOIN teaches
ON instructor.ID = teaches.ID; 

-- ช้อ 4.
SELECT teaches.ID, instructor.name, teaches.course_id, teaches.sec_id, teaches.semester, teaches.year 
FROM teaches INNER JOIN instructor ON teaches.ID = instructor.ID AND semester = 'Spring' AND year = 2010;

-- -ช้อ 5.
SELECT department.dept_name ,COUNT(instructor.id) FROM department LEFT JOIN instructor ON department.dept_name = instructor.dept_name GROUP BY department.dept_name;