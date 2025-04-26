SELECT * FROM students 
WHERE status = 'Active';

SELECT status, COUNT(*) as count
FROM students
GROUP BY status;


SELECT c.course_code , c.course_name , d.department_name
FROM courses c
JOIN departments d ON c.department_id = d.department_id;

SELECT s.first_name , s.last_name, c.course_code,c.course_name,e.semester
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE s.student_id = 1;

SELECT 
	s.student_id,
    s.first_name,
    s.last_name,
    AVG (
		CASE
			WHEN g.grade_value = 'A' THEN 4
            WHEN g.grade_value = 'B' THEN 3
            WHEN g.grade_value = 'C' THEN 2
            WHEN g.grade_value = 'D' THEN 1
            WHEN g.grade_value = 'F' THEN 0
            ELSE NULL
		END
	) AS GPA
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN grades g ON e.enrollment_id = g.enrollment_id
WHERE g.grade_value != 'Incomplete'
GROUP BY s.student_id,s.first_name,s.last_name;



SELECT i.first_name , i.last_name, d.department_name
FROM instructors i
JOIN departments d ON i.department_id = d.department_id;


SELECT c.course_code, c.course_name,COUNT(e.student_id) as enrollment_count
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id,c.course_code, c.course_name
ORDER BY enrollment_count DESC;

SELECT s.first_name, s.last_name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN grades g ON e.enrollment_id = g.enrollment_id
WHERE g.grade_value = 'Incomplete';


SELECT 
    c.course_code, 
    c.course_name, 
    AVG(g.numeric_grade) as average_grade
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
JOIN grades g ON e.enrollment_id = g.enrollment_id
WHERE g.numeric_grade IS NOT NULL
GROUP BY c.course_id, c.course_code, c.course_name;


START TRANSACTION;

INSERT INTO students (first_name, last_name, date_of_birth, email, phone, address, enrollment_date, status)
VALUES ('Lisa', 'Garcia', '2001-03-18', 'lisa.g@email.com', '555-987-6543', '303 Learning Lane', '2023-01-15', 'Active');

SET @new_student_id = LAST_INSERT_ID();

INSERT INTO enrollments (student_id, course_id, semester, enrollment_date)
VALUES (@new_student_id, 1, 'Spring 2023', '2023-01-15');

COMMIT;


UPDATE students SET status = 'On Leave' WHERE student_id = 4;

DELETE FROM enrollments WHERE student_id = 1 AND course_id = 3;






            