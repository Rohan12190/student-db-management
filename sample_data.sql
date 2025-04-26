INSERT INTO departments (department_name, department_head, location) VALUES
('Computer Science', 'Dr. Alan Turing', 'Building A, Floor 3'),
('Mathematics', 'Dr. Katherine Johnson', 'Building B, Floor 2'),
('Physics', 'Dr. Richard Feynman', 'Building C, Floor 1'),
('English', 'Dr. Maya Angelou', 'Building D, Floor 2');

-- Insert students
INSERT INTO students (first_name, last_name, date_of_birth, email, phone, address, enrollment_date, status) VALUES
('John', 'Smith', '2000-05-15', 'john.smith@email.com', '555-123-4567', '123 Campus Drive', '2022-09-01', 'Active'),
('Emily', 'Johnson', '2001-02-20', 'emily.j@email.com', '555-234-5678', '456 University Ave', '2022-09-01', 'Active'),
('Michael', 'Williams', '1999-11-10', 'michael.w@email.com', '555-345-6789', '789 College Blvd', '2021-09-01', 'Active'),
('Sarah', 'Brown', '2002-07-25', 'sarah.b@email.com', '555-456-7890', '101 Academic Way', '2023-01-15', 'Active'),
('David', 'Jones', '2000-09-12', 'david.j@email.com', '555-567-8901', '202 Scholar Street', '2022-01-15', 'On Leave');

-- Insert courses
INSERT INTO courses (course_code, course_name, department_id, credit_hours, description) VALUES
('CS101', 'Introduction to Programming', 1, 3, 'Basic programming concepts using Python'),
('CS201', 'Data Structures', 1, 4, 'Advanced programming concepts and data structures'),
('MATH101', 'Calculus I', 2, 4, 'Introduction to differential calculus'),
('PHYS101', 'Physics Mechanics', 3, 4, 'Introduction to classical mechanics'),
('ENG101', 'Composition', 4, 3, 'Fundamentals of writing and rhetoric');

-- Insert instructors
INSERT INTO instructors (first_name, last_name, email, department_id, hire_date) VALUES
('Robert', 'Davis', 'robert.d@university.edu', 1, '2015-08-15'),
('Jennifer', 'Wilson', 'jennifer.w@university.edu', 2, '2018-01-10'),
('Thomas', 'Moore', 'thomas.m@university.edu', 3, '2010-06-20'),
('Elizabeth', 'Taylor', 'elizabeth.t@university.edu', 4, '2019-07-05'),
('James', 'Anderson', 'james.a@university.edu', 1, '2017-09-12');

-- Assign instructors to courses
INSERT INTO course_instructors (course_id, instructor_id) VALUES
(1, 1), -- CS101 taught by Robert Davis
(2, 1), -- CS201 taught by Robert Davis
(3, 2), -- MATH101 taught by Jennifer Wilson
(4, 3), -- PHYS101 taught by Thomas Moore
(5, 4); -- ENG101 taught by Elizabeth Taylor

-- Enroll students in courses
INSERT INTO enrollments (student_id, course_id, semester, enrollment_date) VALUES
(1, 1, 'Fall 2022', '2022-08-15'), -- John in CS101
(1, 3, 'Fall 2022', '2022-08-15'), -- John in MATH101
(2, 1, 'Fall 2022', '2022-08-16'), -- Emily in CS101
(2, 4, 'Fall 2022', '2022-08-16'), -- Emily in PHYS101
(3, 2, 'Fall 2022', '2022-08-14'), -- Michael in CS201
(3, 3, 'Fall 2022', '2022-08-14'), -- Michael in MATH101
(4, 1, 'Spring 2023', '2023-01-10'), -- Sarah in CS101
(4, 5, 'Spring 2023', '2023-01-10'), -- Sarah in ENG101
(5, 3, 'Spring 2022', '2022-01-12'), -- David in MATH101
(5, 4, 'Spring 2022', '2022-01-12'); -- David in PHYS101

-- Insert grades
INSERT INTO grades (enrollment_id, grade_value, numeric_grade, comments, submission_date) VALUES
(1, 'A', 95.0, 'Excellent work!', '2022-12-15'),
(2, 'B', 85.0, 'Good understanding of concepts', '2022-12-15'),
(3, 'A', 92.0, 'Outstanding performance', '2022-12-16'),
(4, 'C', 75.0, 'Needs improvement in problem-solving', '2022-12-17'),
(5, 'B', 88.0, 'Good analytical skills', '2022-12-15'),
(6, 'A', 94.0, 'Exceptional grasp of mathematical concepts', '2022-12-14'),
(7, 'Incomplete', NULL, 'Assignment pending', NULL),
(8, 'B', 86.0, 'Well-structured writing', '2023-05-20'),
(9, 'C', 78.0, 'Average performance', '2022-05-15'),
(10, 'D', 65.0, 'Poor attendance affected performance', '2022-05-16');