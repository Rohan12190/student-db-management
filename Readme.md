# Student Database Management System

A comprehensive MySQL database system for managing student information, courses, enrollments, and grades.

## Project Overview

This database system is designed to help educational institutions manage key aspects of student administration:
- Student registration and record-keeping
- Course catalog management
- Enrollment tracking
- Grade recording and reporting
- Department and instructor organization

## Database Structure

The database consists of the following tables:

1. **students** - Stores student personal information and enrollment status
2. **departments** - Contains academic department details
3. **courses** - Stores course information including credit hours
4. **enrollments** - Junction table tracking which students are enrolled in which courses
5. **grades** - Records student performance in enrolled courses
6. **instructors** - Contains faculty information
7. **course_instructors** - Junction table mapping instructors to courses

## Entity Relationship

- Students can enroll in multiple courses
- Courses can belong to one department
- Instructors can teach multiple courses
- Courses can have multiple instructors
- Grades are associated with specific enrollments

## Files in this Repository

- `database_setup.sql` - Contains all CREATE TABLE statements
- `sample_data.sql` - Contains sample INSERT statements to populate the database
- `example_queries.sql` - Contains example SELECT queries for common operations

## Example Queries

The `example_queries.sql` file contains queries that demonstrate how to:
- List active students
- Find courses by department
- Calculate student GPAs
- Track course enrollments
- Identify students with incomplete grades
- Calculate average grades per course
- And more!

## Future Enhancements

This project could be extended with:
- Stored procedures for common operations
- Views for reporting
- Attendance tracking
- Financial/tuition management
- Academic calendar integration
- User authentication and role-based access

## License

This project is available under the MIT License.
