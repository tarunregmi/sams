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

INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Sumiran Dahal", "sumiran@gmail.com", "12345678", "student");
INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Tarun Regmi", "tarun@gmail.com", "12345678", "student");
INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Bibek Koirala", "bibek@gmail.com", "12345678", "student");
INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Suresh Subba", "suresh@gmail.com", "12345678", "student");
INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Saugat Bhattarai", "saugat@gmail.com", "12345678", "student");
INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Rizan Bhandari", "rizan@gmail.com", "12345678", "student");
INSERT INTO User (user_name, email, pwd, user_role) VALUE ("Nischal Bhandari", "nischal@gmail.com", "12345678", "student");

INSERT INTO User (user_name, email, pwd, user_role) value ("Janak Raj Joshi", "jrj@gmail.com", "12345678", "teacher");
INSERT INTO User (user_name, email, pwd, user_role) value ("Yuba Raj Devkota", "yubaraj@gmail.com", "12345678", "teacher");
INSERT INTO User (user_name, email, pwd, user_role) value ("Santosh Panjiyar", "santosh@gmail.com", "12345678", "teacher");

INSERT INTO Course (course_code, course_name) value ("BIT353", "Management Information System");
INSERT INTO Course (course_code, course_name) value ("BIT252", "Database Management System");
INSERT INTO Course (course_code, course_name) value ("BIT251", "Data Structures and Algorithm");

INSERT INTO Teach (teacher_id, course_id) value (8, 1);
INSERT INTO Teach (teacher_id, course_id) value (9, 2);
INSERT INTO Teach (teacher_id, course_id) value (10, 3);

INSERT INTO Lesson (lesson_name, course_id, time_started, time_ended, lesson_date) value ("Business Intelligence", 1, "8:00", "9:00", "2025-02-28");
INSERT INTO Lesson (lesson_name, course_id, time_started, time_ended, lesson_date) value ("Linked List", 3, "7:00", "8:00", "2025-02-28");
INSERT INTO Attendance (student_id, lesson_id, attendance_time, attendance_date, attendance_status) value (1, 1, "8:40", "2025-02-28", "Present");
