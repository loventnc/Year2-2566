create schema testPracticeDB;

USE testPracticeDB;

-- 1
create table Course(
	course_id varchar(10),
    course_name varchar(30),
    primary key (course_id)
);

create table Student(
	student_id int,
    first_name varchar(30),
    last_name varchar(30),
    primary key (student_id)
);

create table Difficulty(
	level_id int,
    levelName varchar(16),
    primary key (level_id)
);

create table Assignment(
	course_id varchar(10),
	assignment_id int,
    assignment_detail varchar(50),
    level_id int,
    max_score int,
    due_date date,
    primary key (assignment_id),
    foreign key (course_id) references Course(course_id),
    foreign key (level_id) references Difficulty(level_id)
);

create table Score(
	assignment_id int,
	student_id int,
    submit_date date,
    score int,
	foreign key (assignment_id) references Assignment(assignment_id), 
    foreign key (student_id) references Student(student_id)
);

desc Course;
desc Assignment;
desc Student;
desc Difficulty;
desc Score;


-- 2
insert into Course value ('CSS222', 'Database');
insert into Course value ('CSS232', 'OOP');

insert into Difficulty value (1, 'Easy');
insert into Difficulty value (2, 'Medium');

insert into Student value (123, 'Bob', 'Thebuilder');
insert into Student value (124, 'So', 'Lazy');

insert into Assignment value ('CSS222', 1, 'Practice view', 1, 10, '2023-02-9');
insert into Assignment value ('CSS232', 2, 'Practice inheritance', 2, 5, '2023-02-3');

insert into Score value (1, 123, '2023-02-5', 8);
insert into Score value (2, 123, '2023-02-2', 4);
insert into Score value (1, 124, '2023-02-4', 6);


-- 3
DELIMITER //
CREATE PROCEDURE DisplayAllTable()
BEGIN
	SELECT * FROM Assignment as Assignment;
	SELECT * FROM Course as Course;
	SELECT * FROM Difficulty as Difficulty;
	SELECT * FROM Score as Score;
	SELECT * FROM Student as Student;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS DisplayScore;

DELIMITER //
CREATE PROCEDURE DisplayScore(IN studentID int)
BEGIN
	SELECT student_id, SUM(score) sum_score
    FROM Score s
    WHERE student_id = studentID
    GROUP BY student_id;
END //
DELIMITER ;


CALL DisplayAllTable();
CALL DisplayScore('123');
CALL DisplayScore('124');

-- 4

-- 5
CREATE OR REPLACE VIEW LeaderBoard 
AS
	SELECT ROW_NUMBER() OVER(ORDER BY sumScore DESC) AS 'rank', first_name, last_name, sumScore
    FROM 
		(SELECT inS.student_id, SUM(inS.score) sumScore
        FROM Score inS
		GROUP BY inS.student_id) calScore
    INNER JOIN Student stu
    ON calScore.student_id = stu.student_id;
    
SELECT * FROM LeaderBoard;

-- 6
SELECT course_name, student_id, first_name, last_name, score
FROM (
    SELECT c.course_name, sc.student_id, stu.first_name, stu.last_name, sc.score,
           ROW_NUMBER() OVER (PARTITION BY c.course_id ORDER BY sc.score DESC) AS score_rank
    FROM Course c
    INNER JOIN Assignment a ON c.course_id = a.course_id
    INNER JOIN Score sc ON a.assignment_id = sc.assignment_id
    INNER JOIN Student stu ON sc.student_id = stu.student_id
) AS ranked_scores
WHERE score_rank = 1;