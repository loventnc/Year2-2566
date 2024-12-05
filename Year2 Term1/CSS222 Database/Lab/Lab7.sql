use university;
-- select * from course;
-- select * from instructor;
-- select * from student;
-- select * from advisor;
-- select * from takes;
-- select * from prereq;
-- select * from section;
-- select * from teaches;
-- select * from department;

-- 1
SELECT title FROM course 
WHERE dept_name = 'Comp. Sci.' AND credits = 3;

-- 2
SELECT ID FROM student JOIN takes USING (ID) 
WHERE (course_id, sec_id, semester, year) IN 
(SELECT course_id, sec_id, semester, year 
FROM instructor JOIN teaches USING (ID) WHERE name = 'Einstein');

-- 3
SELECT MAX(salary) AS highest_salary FROM instructor;

-- 4
SELECT name FROM instructor 
WHERE salary = (select max(salary) FROM instructor);

-- 5
SELECT sec_id , count(sec_id) enroll FROM takes 
WHERE semester = "Autumn" AND year = "2009" GROUP BY sec_id;

-- 6
SELECT sum(sec) "All Enroll" FROM (select count(sec_id) sec FROM takes 
WHERE semester = "Autumn" AND year = "2009" GROUP BY sec_id) AS enroll;

-- 7
SELECT count(sec_id) enroll FROM takes WHERE semester = "Autumn" 
AND year = 2009 GROUP BY sec_id ORDER BY enroll DESC LIMIT 1 ;


-- 8
ALTER TABLE course DROP CHECK course_chk_1;
ALTER TABLE course ADD CONSTRAINT course_chk_1 CHECK (credits >= 0);

-- 9
ALTER TABLE section DROP CONSTRAINT section_chk_1;
ALTER TABLE section ADD CONSTRAINT section_chk_1 CHECK 
(semester IN ('Fall', 'Winter', 'Spring', 'Summer' , 'Autumn'));

-- 10
INSERT INTO section(course_id,sec_id,semester,year) 
values ((SELECT course_id FROM course WHERE credits = 0),1 ,'Autumn', 2017);

-- 11
INSERT INTO takes (ID, course_id, sec_id, semester, year) SELECT s.ID,(SELECT course_id FROM course WHERE credits = 0),1 ,'Autumn', 2017
FROM student s WHERE s.dept_name = 'Comp. Sci.';

-- 12
DELETE FROM takes 
WHERE ID = (select ID from student WHERE name = 'Chavez');

-- 13
DELETE FROM course WHERE course_id = 'CS-001';

-- 14 
DELETE FROM takes WHERE course_id IN (SELECT course_id FROM course WHERE LOWER(title) LIKE '%database%');