
create database EES;
use EES;

CREATE TABLE departments(
    dept_ID INT NOT NULL  PRIMARY KEY,
    Dept_name VARCHAR(255) NOT NULL,
    head_of_dept INT UNIQUE
);


CREATE TABLE professors(
    prof_ID INT NOT NULL PRIMARY KEY,
    f_name VARCHAR(255) NOT NULL,
    l_name VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    dept_ID INT NOT NULL,
	CONSTRAINT professors_dept_id_foreign FOREIGN KEY(dept_ID) REFERENCES departments(dept_ID)
);

CREATE TABLE students(
    std_ID INT  NOT NULL PRIMARY KEY,
    f_name VARCHAR(255) NOT NULL,
    l_name VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    scientific_degree VARCHAR(255) NOT NULL,
    faculity VARCHAR(255) NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    dept_ID INT NOT NULL,
    CONSTRAINT students_dept_id_foreign FOREIGN KEY(dept_ID) REFERENCES departments(dept_ID)
);


CREATE TABLE courses(
    course_ID INT  NOT NULL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    dept_ID INT NOT NULL,
    CONSTRAINT courses_dept_id_foreign FOREIGN KEY(dept_ID) REFERENCES departments(dept_ID)
);

CREATE TABLE student_course_professors(
    std_ID INT NOT NULL,
    course_ID INT NOT NULL,
    prof_ID INT NOT NULL,
    course_evaluation_of_5 INT NOT NULL,
    prof_evaluation_of_5 INT NOT NULL,
    PRIMARY KEY(std_ID, course_ID, prof_ID),
    CONSTRAINT student_course_professors_std_id_foreign FOREIGN KEY(std_ID) REFERENCES students(std_ID),
    CONSTRAINT student_course_professors_course_id_foreign FOREIGN KEY(course_ID) REFERENCES courses(course_ID),
    CONSTRAINT student_course_professors_prof_id_foreign FOREIGN KEY(prof_ID) REFERENCES courses(course_ID)
);





CREATE TABLE questions(
    question_ID INT  NOT NULL PRIMARY KEY,
    question_text VARCHAR(255) NOT NULL,
    model_answer VARCHAR(255) NOT NULL,
    prof_ID INT NOT NULL,
    CONSTRAINT questions_prof_id_foreign FOREIGN KEY(prof_ID) REFERENCES professors(prof_ID)
);

CREATE TABLE exams(
    exam_ID INT NOT NULL PRIMARY KEY,
    exam_title VARCHAR(255) NOT NULL,
    exam_date DATE NOT NULL,
    exam_prof_ID INT NOT NULL,
    exam_course_ID INT NOT NULL UNIQUE,
    exam_std_ID INT NOT NULL,
   -- student_answer VARCHAR(255) NOT NULL,
    CONSTRAINT exams_prof_id_foreign FOREIGN KEY(exam_prof_ID) REFERENCES professors(prof_ID),
    CONSTRAINT exam_std_id_foreign FOREIGN KEY(exam_std_ID) REFERENCES students(std_ID),
    CONSTRAINT exam_course_id_foreign FOREIGN KEY(exam_course_ID) REFERENCES students(std_ID)
);



CREATE TABLE exam_questions(
    question_ID INT NOT NULL,
    exam_ID INT NOT NULL,
    PRIMARY KEY(question_ID, exam_ID),
    CONSTRAINT exam_question_ID_foreign FOREIGN KEY(question_ID) REFERENCES questions(question_ID),
    CONSTRAINT exam_exam_ID_foreign FOREIGN KEY(exam_ID) REFERENCES exams(exam_ID)
    
);

CREATE TABLE student_exam_question_answers(
    std_ID INT NOT NULL ,
    exam_ID INT NOT NULL ,
    question_ID INT NOT NULL ,
    student_answer VARCHAR(255) NOT NULL,
    PRIMARY KEY(std_ID, exam_ID, question_ID),
    CONSTRAINT student_exam_question_id_foreign FOREIGN KEY(std_ID) REFERENCES students(std_ID),
    CONSTRAINT exam_student_question_id_foreign FOREIGN KEY(exam_ID) REFERENCES exams(exam_ID),
    CONSTRAINT question_student_exam_id_foreign FOREIGN KEY(question_ID) REFERENCES questions(question_ID)
);





ALTER TABLE
    departments ADD CONSTRAINT head_of_department_id_foreign FOREIGN KEY(head_of_dept) REFERENCES professors(prof_ID) ;


