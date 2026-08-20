create table StudentCourse(
	student_id INT,
	student_name VARCHAR(50),
	course_name VARCHAR(50)
);

INSERT INTO StudentCourse VALUES
(1, 'Pratik','Java'),
(1, 'Pratik','SQL'),
(2, 'Amit','Python'),
(2, 'Amit','DBMS');

select * from StudentCourse;

-- 2NF
CREATE TABLE Student(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(50)
);

CREATE TABLE Course(
	course_id INT PRIMARY KEY,
	course_name VARCHAR(50)
);

CREATE TABLE Enrollment(
	student_id INT,
	course_id INT,
	PRIMARY KEY(student_id, course_id),
	FOREIGN KEY(student_id) REFERENCES Student(student_id),
	FOREIGN KEY(course_id) REFERENCES Course(course_id)
);

CREATE TABLE Department(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

