-- university_schema.sql

-- Drop tables if they exist (useful when re-running script)
DROP TABLE IF EXISTS CourseAssignments;
DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Lecturers;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Departments;

-- Departments Table
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Lecturers Table
CREATE TABLE Lecturers (
    lecturer_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    dept_id INT NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL UNIQUE,
    dept_id INT NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Enrollments Table (MANY-TO-MANY: Students <-> Courses)
CREATE TABLE Enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- CourseAssignments Table (1-M: One Lecturer teaches many Courses)
CREATE TABLE CourseAssignments (
    course_id INT PRIMARY KEY,
    lecturer_id INT NOT NULL UNIQUE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (lecturer_id) REFERENCES Lecturers(lecturer_id)
);
