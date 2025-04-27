UPDATE mysql.user
SET
    host = '%'
WHERE
    user = 'root';

-- DROP DATABASE sams;

-- CREATE DATABASE sams;
USE sams;

CREATE TABLE User (
    id int NOT NULL AUTO_INCREMENT,
    user_name varchar(100),
    email varchar(100) NOT NULL,
    pwd varchar(100) NOT NULL,
    user_role varchar(50),
    PRIMARY KEY (id)
);
CREATE TABLE Course (
    id int NOT NULL AUTO_INCREMENT,
    course_name varchar(100),
    course_code varchar(100),
    PRIMARY KEY (id)
);
CREATE TABLE Teach (
    id int NOT NULL AUTO_INCREMENT,
    teacher_id int NOT NULL,
    course_id int NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE Lesson (
    id int NOT NULL AUTO_INCREMENT,
    lesson_name varchar(100),
    course_id int NOT NULL,
    time_started varchar(50),
    time_ended varchar(50),
    lesson_date varchar(50),
    PRIMARY KEY (id)
);
CREATE TABLE Attendance (
    id int NOT NULL AUTO_INCREMENT,
    student_id int NOT NULL,
    lesson_id int NOT NULL,
    attendance_time varchar(50),
    attendance_date varchar(50),
    attendance_status varchar(50),
    PRIMARY KEY (id)
);

INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Sumiran Dahal", "sumiran@test.com", "12345678", "student");
INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Tarun Regmi", "tarun@test.com", "12345678", "student");
INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Bibek Koirala", "bibek@test.com", "12345678", "student");
INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Suresh Subba", "suresh@test.com", "12345678", "student");
INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Saugat Bhattarai", "saugat@test.com", "12345678", "student");
INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Rizan Bhandari", "rizan@test.com", "12345678", "student");
INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Nischal Bhandari", "nischal@test.com", "12345678", "student");

INSERT INTO User (user_name, email, pwd, user_role) value ("Nawaraj Negi", "nawaraj@test.com", "12345678", "teacher");
INSERT INTO User (user_name, email, pwd, user_role) value ("Yuba Raj Devkota", "yubaraj@test.com", "12345678", "teacher");
INSERT INTO User (user_name, email, pwd, user_role) value ("Santosh Panjiyar", "santosh@test.com", "12345678", "teacher");

INSERT INTO Course (course_code, course_name) value ("BIT253", "Operating System");
INSERT INTO Course (course_code, course_name) value ("BIT252", "Database Management System");
INSERT INTO Course (course_code, course_name) value ("BIT251", "Data Structures and Algorithm");

INSERT INTO Teach (teacher_id, course_id) value (8, 1);
INSERT INTO Teach (teacher_id, course_id) value (9, 2);
INSERT INTO Teach (teacher_id, course_id) value (10, 3);

INSERT INTO Lesson (lesson_name, course_id, time_started, time_ended, lesson_date) value ("CPU Scheduling", 1, "7:00", "8:00", "2025-03-28");
INSERT INTO Attendance (student_id, lesson_id, attendance_time, attendance_date, attendance_status) value (1, 1, "7:20", "2025-02-14", "Present");
