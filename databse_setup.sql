CREATE DATABASE IF NOT EXISTS student_management;
USE student_management;

CREATE TABLE students(
student_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
date_of_birth DATE,
email VARCHAR(50) UNIQUE NOT NULL,
phone VARCHAR(20),
address VARCHAR(255),
enrollment_date DATE NOT NULL,
status ENUM('Active','Inactive','Graduated','On Leave') DEFAULT 'Active'
);

CREATE TABLE departments (
department_id INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(100) NOT NULL,
department_head VARCHAR(100),
location VARCHAR(100)
);


CREATE TABLE courses (
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_code VARCHAR(20) UNIQUE NOT NULL,
course_name VARCHAR(100) NOT NULL,
department_id INT,
credit_hours INT NOT NULL,
description TEXT,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE enrollments (
enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
course_id INT,
semester VARCHAR(20) NOT NULL,
enrollment_date DATE NOT NULL,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id),
UNIQUE (student_id,course_id,semester)
);

CREATE TABLE grades (
grade_id INT PRIMARY KEY AUTO_INCREMENT,
enrollment_id INT,
grade_value ENUM('A','B','C','D','F','Incomplete') NOT NULL,
numeric_grade DECIMAL(3,1),
comments TEXT,
submission_date DATE,
FOREIGN KEY (enrollment_id) REFERENCES enrollments(enrollment_id)
);

CREATE TABLE instructors (
instructor_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
department_id INT,
hire_date DATE,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE course_instructors (
course_id INT,
instructor_id INT,
PRIMARY KEY(course_id , instructor_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id),
FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);


	