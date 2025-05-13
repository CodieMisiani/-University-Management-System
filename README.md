🎓 University Management System
📋 Description
This project sets up a relational database system for managing a university's departments, students, lecturers, and courses. It includes relationships such as:

One-to-Many between Departments and Students

One-to-Many between Departments and Lecturers

One-to-Many between Departments and Courses

One-to-One between Lecturers and Course Assignments

Many-to-Many between Students and Courses (via Enrollments)

🚀 How to Run/Setup the Project
Install a Database: Install MySQL or PostgreSQL, or any other relational database of your choice.

For MySQL: Download MySQL

For PostgreSQL: Download PostgreSQL

Set up the Database:

Open your SQL editor or terminal and create a new database where you'll import the schema.

Example for MySQL:

sql
Copy
Edit
CREATE DATABASE university_db;
USE university_db;
Run the SQL File:

Run the provided university_schema.sql file to set up the tables, constraints, and relationships.

Example for MySQL or PostgreSQL:

bash
Copy
Edit
source university_schema.sql;
This will create the following tables:

Departments

Students

Lecturers

Courses

Enrollments

CourseAssignments

Verify the Setup:

Once the script is executed successfully, you can check if the tables are created with:

sql
Copy
Edit
SHOW TABLES;
You should see the listed tables: Departments, Students, Lecturers, Courses, Enrollments, and CourseAssignments.

🔗 ERD (Entity-Relationship Diagram)
You can view the Entity-Relationship Diagram (ERD) for this database schema at the link below or check the image included:

Or view it online: ERD on dbdiagram.io

📂 Project Structure
Your project repository should look like this:

pgsql
Copy
Edit
📁 University-Database/
├── 📄 university_schema.sql ✅ One single SQL file (well-commented)
├── 📄 README.md ✅ Project title, description, setup instructions, ERD screenshot/link
🧑‍💻 Contributing
If you'd like to contribute to this project, feel free to fork the repository and submit a pull request with improvements or fixes!
