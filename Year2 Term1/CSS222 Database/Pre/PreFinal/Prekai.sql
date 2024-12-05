-- Indexing 
-- use sakila;
-- create index actor_idx on actor(first_name);
-- create index actor_idx2 on actor(last_name,first_name);
-- show index from actor;

-- show index from customer;
-- create index actor_idx3 on actor(actor_id, last_name, first_name);
-- create index idx_first_name ON customer(first_name);
-- create index idx_full_name ON customer(last_name,first_name);

-- explain
-- Select customer_id, first_name, last_name
-- FROM customer
-- Where first_name LIKE 'S%';

-- Select c.first_name, c.LAST_NAME, c.address_id, a.address
-- FROM customer c INNER JOIN address a
-- ON c.address_id = a.address_id Where a.address_id = 123;

-- DELETE FROM address Where address_id = 123;

-- UPDATE address Set address_id = 9999 WHERE address_id = 123;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(255) NOT NULL,
    Major VARCHAR(50) NOT NULL
);

-- 1
CREATE TABLE Problems (
    ProblemID INT PRIMARY KEY,
    DifficultyLevel VARCHAR(20) NOT NULL
);

CREATE TABLE Scores (
    ScoreID INT PRIMARY KEY,
    StudentID INT,
    ProblemID INT,
    Score INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ProblemID) REFERENCES Problems(ProblemID)
);

-- 2
INSERT INTO Students (StudentID, StudentName, Major) VALUES
(1, 'John Doe', 'Computer Science'),
(2, 'Jane Smith', 'Information Technology');

INSERT INTO Problems (ProblemID, DifficultyLevel) VALUES
(1, 'Easy'),
(2, 'Medium');

INSERT INTO Scores (ScoreID, StudentID, ProblemID, Score) VALUES
(101, 1, 1, 90),
(102, 1, 2, 85),
(103, 2, 1, 88),
(104, 2, 2, 92);

-- 3
DELIMITER //
CREATE PROCEDURE GetTotalScore_1(IN student_id INT)
BEGIN
    SELECT StudentName, SUM(Score) AS TotalScore
    FROM Students
    JOIN Scores ON Students.StudentID = Scores.StudentID
    WHERE Students.StudentID = student_id
    GROUP BY StudentName;
END //
DELIMITER ;

CALL GetTotalScore_1(2);

-- 4
-- เลือกตาราง Scores และสร้าง index บนคอลัมน์ StudentID เพื่อเพิ่มประสิทธิภาพในการค้นหาข้อมูลของนักศึกษา
CREATE INDEX idx_StudentID ON Scores (StudentID);

-- 5
CREATE VIEW LeaderBoard AS
SELECT Students.StudentName, Scores.Score
FROM Students
JOIN Scores ON Students.StudentID = Scores.StudentID
ORDER BY Scores.Score DESC;
SELECT * FROM LeaderBoard;

-- 6
SELECT Students.StudentName, MAX(Scores.Score) AS MaxScore
FROM Students
JOIN Scores ON Students.StudentID = Scores.StudentID
GROUP BY Students.StudentName;
