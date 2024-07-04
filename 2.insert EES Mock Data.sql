-- Insert data into departments table
INSERT INTO departments (dept_ID, Dept_name)
VALUES 
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Chemistry'),
(5, 'Biology');

-- update head_of_dept after create professors table

UPDATE departments
SET head_of_dept = 1
WHERE dept_ID = 1;

UPDATE departments
SET head_of_dept = 2
WHERE dept_ID = 2;

UPDATE departments
SET head_of_dept = 3
WHERE dept_ID = 3;

UPDATE departments
SET head_of_dept = 4
WHERE dept_ID = 4;

UPDATE departments
SET head_of_dept = 5
WHERE dept_ID = 5;

-- Insert data into professors table
INSERT INTO professors (prof_ID, f_name, l_name, phone, email, dept_ID)
VALUES 
(1, 'John', 'Doe', '123-456-7890', 'john.doe@example.com', 1),
(2, 'Jane', 'Smith', '987-654-3210', 'jane.smith@example.com', 2),
(3, 'Michael', 'Johnson', '567-890-1234', 'michael.johnson@example.com', 3),
(4, 'Emily', 'Williams', '345-678-9012', 'emily.williams@example.com', 4),
(5, 'David', 'Brown', '789-012-3456', 'david.brown@example.com', 5);

-- Insert data into students table
INSERT INTO students (std_ID, f_name, l_name, phone, scientific_degree, faculity, user_name, password, dept_ID)
VALUES 
(1, 'Alice', 'Johnson', '555-111-2222', 'Bachelor of Science', 'Science', 'alicej', 'password1', 1),
(2, 'Bob', 'Smith', '555-333-4444', 'Bachelor of Arts', 'Arts', 'bobsmith', 'password2', 2),
(3, 'Carol', 'Williams', '555-555-6666', 'Bachelor of Engineering', 'Engineering', 'carolw', 'password3', 3),
(4, 'David', 'Brown', '555-777-8888', 'Bachelor of Medicine', 'Medicine', 'davidb', 'password4', 4),
(5, 'Eve', 'Davis', '555-999-0000', 'Bachelor of Business', 'Business', 'eved', 'password5', 5),
(6, 'Frank', 'Miller', '555-123-4567', 'Bachelor of Fine Arts', 'Arts', 'frankm', 'password6', 2),
(7, 'Grace', 'Wilson', '555-234-5678', 'Bachelor of Science', 'Science', 'gracew', 'password7', 1),
(8, 'Hank', 'Moore', '555-345-6789', 'Bachelor of Engineering', 'Engineering', 'hankm', 'password8', 3),
(9, 'Ivy', 'Taylor', '555-456-7890', 'Bachelor of Medicine', 'Medicine', 'ivyt', 'password9', 4),
(10, 'Jack', 'Anderson', '555-567-8901', 'Bachelor of Business', 'Business', 'jacka', 'password10', 5),
(11, 'Karen', 'Thomas', '555-678-9012', 'Bachelor of Science', 'Science', 'karent', 'password11', 1),
(12, 'Leo', 'Jackson', '555-789-0123', 'Bachelor of Arts', 'Arts', 'leoj', 'password12', 2),
(13, 'Mona', 'White', '555-890-1234', 'Bachelor of Engineering', 'Engineering', 'monaw', 'password13', 3),
(14, 'Nate', 'Harris', '555-901-2345', 'Bachelor of Medicine', 'Medicine', 'nateh', 'password14', 4),
(15, 'Olive', 'Martin', '555-012-3456', 'Bachelor of Business', 'Business', 'olivem', 'password15', 5),
(16, 'Paul', 'Lee', '555-123-4560', 'Bachelor of Fine Arts', 'Arts', 'paull', 'password16', 2),
(17, 'Quincy', 'Clark', '555-234-5671', 'Bachelor of Science', 'Science', 'quincyc', 'password17', 1),
(18, 'Rachel', 'Lewis', '555-345-6782', 'Bachelor of Engineering', 'Engineering', 'rachell', 'password18', 3),
(19, 'Sam', 'Walker', '555-456-7893', 'Bachelor of Medicine', 'Medicine', 'samw', 'password19', 4),
(20, 'Tina', 'Hall', '555-567-8904', 'Bachelor of Business', 'Business', 'tinah', 'password20', 5);



-- Insert data into courses table
INSERT INTO courses (course_ID, course_name, dept_ID)
VALUES 
(1, 'Introduction to Programming', 1),
(2, 'Advanced Calculus', 2),
(3, 'Quantum Mechanics I', 3),
(4, 'Organic Chemistry', 4),
(5, 'Genetics and Evolution', 5);

-- Insert data into student_course_professors table

INSERT INTO student_course_professors (std_ID, course_ID, prof_ID, course_evaluation_of_5, prof_evaluation_of_5)
VALUES 
(1, 1, 1, 5, 3),
(2, 2, 2, 2, 1),
(3, 3, 3, 5, 5),
(4, 4, 4, 4, 3),
(5, 5, 5, 2, 2),
(1, 3, 1, 4, 4),
(2, 1, 2, 4, 5),
(3, 2, 3, 3, 3);



-- Insert data into questions table
INSERT INTO questions (question_ID, question_text, model_answer, prof_ID)
VALUES 
(1, 'What is a variable?', 'A', 1),
(2, 'Define derivative.', 'B', 2),
(3, 'Explain wave-particle duality.', 'A', 3),
(4, 'Describe SN1 reaction mechanism.', 'B', 4),
(5, 'What are alleles?', 'A', 5);

-- Insert data into exams table

INSERT INTO exams (exam_ID, exam_title, exam_date, exam_prof_ID, exam_course_ID, exam_std_ID)
VALUES 
(1, 'Programming Fundamentals Exam', '2024-06-15', 1, 1, 1),
(2, 'Calculus Exam', '2024-06-16', 2, 2, 2),
(3, 'Quantum Mechanics Quiz', '2024-06-17', 3, 3, 3),
(4, 'Organic Chemistry Test', '2024-06-18', 4, 4, 4),
(5, 'Genetics Midterm', '2024-06-19', 5, 5, 5);

-- Insert data into exam_questions table
INSERT INTO exam_questions (question_ID, exam_ID)
VALUES 
(1, 1),
(2, 1),
(3, 1),
(3, 2),
(4, 2),
(5, 3);

-- Insert data into student_exam_question_answers table

INSERT INTO student_exam_question_answers (std_ID, exam_ID, question_ID, student_answer)
VALUES 
(1, 1, 1, 'A'),
(1, 1, 2, 'B'),
(1, 1, 3, 'A'),
(1, 1, 4, 'B'),
(1, 1, 5, 'A'),

(2, 1, 1, 'B'),
(2, 1, 2, 'A'),
(2, 1, 3, 'B'),
(2, 1, 4, 'A'),
(2, 1, 5, 'B'),

(3, 1, 1, 'A'),
(3, 1, 2, 'A'),
(3, 1, 3, 'B'),
(3, 1, 4, 'A'),
(3, 1, 5, 'B'),

(4, 1, 1, 'B'),
(4, 1, 2, 'B'),
(4, 1, 3, 'A'),
(4, 1, 4, 'A'),
(4, 1, 5, 'A'),

(5, 1, 1, 'A'),
(5, 1, 2, 'A'),
(5, 1, 3, 'B'),
(5, 1, 4, 'B'),
(5, 1, 5, 'A'),

(6, 1, 1, 'B'),
(6, 1, 2, 'A'),
(6, 1, 3, 'A'),
(6, 1, 4, 'A'),
(6, 1, 5, 'B'),

(7, 1, 1, 'A'),
(7, 1, 2, 'B'),
(7, 1, 3, 'B'),
(7, 1, 4, 'A'),
(7, 1, 5, 'A'),

(8, 1, 1, 'B'),
(8, 1, 2, 'A'),
(8, 1, 3, 'B'),
(8, 1, 4, 'A'),
(8, 1, 5, 'B'),

(9, 1, 1, 'A'),
(9, 1, 2, 'B'),
(9, 1, 3, 'A'),
(9, 1, 4, 'B'),
(9, 1, 5, 'B'),

(10, 1, 1, 'B'),
(10, 1, 2, 'A'),
(10, 1, 3, 'B'),
(10, 1, 4, 'A'),
(10, 1, 5, 'A'),

(11, 1, 1, 'A'),
(11, 1, 2, 'A'),
(11, 1, 3, 'B'),
(11, 1, 4, 'B'),
(11, 1, 5, 'A'),

(12, 1, 1, 'B'),
(12, 1, 2, 'B'),
(12, 1, 3, 'A'),
(12, 1, 4, 'A'),
(12, 1, 5, 'B'),

(13, 1, 1, 'A'),
(13, 1, 2, 'B'),
(13, 1, 3, 'A'),
(13, 1, 4, 'B'),
(13, 1, 5, 'A'),

(14, 1, 1, 'B'),
(14, 1, 2, 'A'),
(14, 1, 3, 'B'),
(14, 1, 4, 'A'),
(14, 1, 5, 'B'),

(15, 1, 1, 'A'),
(15, 1, 2, 'B'),
(15, 1, 3, 'A'),
(15, 1, 4, 'B'),
(15, 1, 5, 'A'),

(16, 1, 1, 'B'),
(16, 1, 2, 'A'),
(16, 1, 3, 'A'),
(16, 1, 4, 'B'),
(16, 1, 5, 'B'),

(17, 1, 1, 'A'),
(17, 1, 2, 'B'),
(17, 1, 3, 'B'),
(17, 1, 4, 'A'),
(17, 1, 5, 'A'),

(18, 1, 1, 'B'),
(18, 1, 2, 'A'),
(18, 1, 3, 'B'),
(18, 1, 4, 'A'),
(18, 1, 5, 'B'),

(19, 1, 1, 'A'),
(19, 1, 2, 'B'),
(19, 1, 3, 'A'),
(19, 1, 4, 'B'),
(19, 1, 5, 'A'),

(20, 1, 1, 'B'),
(20, 1, 2, 'A'),
(20, 1, 3, 'B'),
(20, 1, 4, 'A'),
(20, 1, 5, 'A'),
(1, 2, 1, 'B'),
(1, 2, 2, 'A'),
(1, 2, 3, 'B'),
(1, 2, 4, 'A'),
(1, 2, 5, 'B'),

(2, 2, 1, 'A'),
(2, 2, 2, 'B'),
(2, 2, 3, 'A'),
(2, 2, 4, 'B'),
(2, 2, 5, 'A'),

(3, 2, 1, 'B'),
(3, 2, 2, 'B'),
(3, 2, 3, 'B'),
(3, 2, 4, 'A'),
(3, 2, 5, 'B'),

(4, 2, 1, 'B'),
(4, 2, 2, 'A'),
(4, 2, 3, 'B'),
(4, 2, 4, 'A'),
(4, 2, 5, 'A'),

(5, 2, 1, 'B'),
(5, 2, 2, 'B'),
(5, 2, 3, 'A'),
(5, 2, 4, 'A'),
(5, 2, 5, 'B'),

(6, 2, 1, 'A'),
(6, 2, 2, 'B'),
(6, 2, 3, 'B'),
(6, 2, 4, 'A'),
(6, 2, 5, 'B'),

(7, 2, 1, 'B'),
(7, 2, 2, 'A'),
(7, 2, 3, 'A'),
(7, 2, 4, 'B'),
(7, 2, 5, 'A'),

(8, 2, 1, 'A'),
(8, 2, 2, 'B'),
(8, 2, 3, 'B'),
(8, 2, 4, 'A'),
(8, 2, 5, 'A'),

(9, 2, 1, 'B'),
(9, 2, 2, 'A'),
(9, 2, 3, 'A'),
(9, 2, 4, 'B'),
(9, 2, 5, 'B'),

(10, 2, 1, 'A'),
(10, 2, 2, 'B'),
(10, 2, 3, 'A'),
(10, 2, 4, 'B'),
(10, 2, 5, 'A'),

(11, 2, 1, 'B'),
(11, 2, 2, 'A'),
(11, 2, 3, 'B'),
(11, 2, 4, 'A'),
(11, 2, 5, 'B'),

(12, 2, 1, 'A'),
(12, 2, 2, 'A'),
(12, 2, 3, 'B'),
(12, 2, 4, 'B'),
(12, 2, 5, 'A'),

(13, 2, 1, 'B'),
(13, 2, 2, 'B'),
(13, 2, 3, 'A'),
(13, 2, 4, 'A'),
(13, 2, 5, 'B'),

(14, 2, 1, 'A'),
(14, 2, 2, 'A'),
(14, 2, 3, 'B'),
(14, 2, 4, 'B'),
(14, 2, 5, 'A'),

(15, 2, 1, 'B'),
(15, 2, 2, 'B'),
(15, 2, 3, 'A'),
(15, 2, 4, 'A'),
(15, 2, 5, 'B'),

(16, 2, 1, 'A'),
(16, 2, 2, 'A'),
(16, 2, 3, 'B'),
(16, 2, 4, 'B'),
(16, 2, 5, 'A'),

(17, 2, 1, 'B'),
(17, 2, 2, 'B'),
(17, 2, 3, 'A'),
(17, 2, 4, 'A'),
(17, 2, 5, 'B'),

(18, 2, 1, 'A'),
(18, 2, 2, 'A'),
(18, 2, 3, 'B'),
(18, 2, 4, 'B'),
(18, 2, 5, 'A'),

(19, 2, 1, 'B'),
(19, 2, 2, 'A'),
(19, 2, 3, 'A'),
(19, 2, 4, 'B'),
(19, 2, 5, 'A'),

(20, 2, 1, 'A'),
(20, 2, 2, 'B'),
(20, 2, 3, 'A'),
(20, 2, 4, 'B'),
(20, 2, 5, 'B'),

(3, 3, 1, 'B'),
(3, 3, 2, 'A'),
(3, 3, 3, 'A'),
(3, 3, 4, 'B'),
(3, 3, 5, 'A'),
(4, 4, 1, 'B'),
(4, 4, 2, 'B'),
(4, 4, 3, 'B'),
(4, 4, 4, 'B'),
(4, 4, 5, 'B'),
(5, 5, 1, 'A'),
(5, 5, 2, 'A'),
(5, 5, 3, 'A'),
(5, 5, 4, 'A'),
(5, 5, 5, 'A');

-- TRUNCATE TABLE [Table_name];  

