CREATE DATABASE teachers_portal;

USE teachers_portal;

CREATE TABLE students (
  studentId int NOT NULL AUTO_INCREMENT,
  studentName varchar(45) NOT NULL,
  enrolledInCourseID int DEFAULT 1,
  grade float DEFAULT NULL,
  PRIMARY KEY (studentId)
);

CREATE TABLE courses (
  courseId int NOT NULL AUTO_INCREMENT,
  courseName varchar(45) NOT NULL,
  PRIMARY KEY (courseId)
);
INSERT INTO students (studentName, enrolledInCourseID, grade)
VALUES ("Maria Jozef", 1, 90); 
INSERT INTO students (studentName, enrolledInCourseID, grade) 
VALUES ("Linda Jones", 2, 89);
INSERT INTO students (studentName, enrolledInCourseID, grade)
VALUES ("John McGrail", 1, 98);
INSERT INTO students (studentName, enrolledInCourseID, grade) 
VALUES ("Patty Luna", 2, 78);

INSERT INTO courses (courseName)
VALUES ("Database Design"); 
INSERT INTO courses (courseName)
VALUES("Calculus"); 
INSERT INTO courses (courseName)
VALUES("Physics I");

DELIMITER //
CREATE PROCEDURE studentsWithGrade()

BEGIN
  SELECT s..c.
  FROM students s
  LEFT JOIN courses c ON c.courseId = s.enrolledInCourseID;
END //