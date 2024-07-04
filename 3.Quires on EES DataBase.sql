
-- Write a query that enables the students to view their results per course
-- ---------------------------------1---------------------------
select
concat(std.f_name," ",std.l_name) as student_full_name,co.course_name,count(case when ans.student_answer = model_answer then 1 end) as result_of_5
from student_exam_question_answers ans, questions ques,students std,exams ex,courses co
where ans.question_ID = ques.question_ID
and ans.std_ID = std.std_ID
and ans.exam_ID = ex.exam_ID
and ex.exam_course_ID = co.course_ID
group by student_full_name,co.course_name;

--  Write a query that enables the head of department to see evaluation of each course and professor
-- -----------------------------------2---------------------------

select co.course_name, scp.course_evaluation_of_5 as course_stars,concat(prof.f_name," ",prof.l_name) as professor_full_name,scp.prof_evaluation_of_5 as  prof_stars
from student_course_professors scp, courses co, professors prof
where scp.course_ID = co.course_ID
and scp.prof_ID = prof.prof_ID;



--  Write a query that enables you to get top 10 high scores per course .
-- ------------------------------------3--------------------------------
SELECT student_full_name, course_name, result_of_5
FROM (

   select
concat(std.f_name," ",std.l_name) as student_full_name,co.course_name,count(case when ans.student_answer = model_answer then 1 end) as result_of_5,
rank() OVER(PARTITION BY co.course_name ORDER BY COUNT(CASE WHEN ans.student_answer = ques.model_answer THEN 1 END) DESC) AS resultRank
from student_exam_question_answers ans, questions ques,students std,exams ex,courses co
where ans.question_ID = ques.question_ID
and ans.std_ID = std.std_ID
and ans.exam_ID = ex.exam_ID
and ex.exam_course_ID = co.course_ID
group by student_full_name,co.course_name

) AS ranked_data
WHERE resultRank <= 10
ORDER BY course_name, result_of_5 DESC;



-- Write a query to get the highest evaluation professor from the set of professors teaching the same course 
-- ------------------------------------4----------------------------
select scp.course_id, co.course_name, scp.prof_id, concat(prof.f_name, " ", prof.l_name) as highest_evaluation_professor, scp.prof_evaluation_of_5
from student_course_professors scp
join professors prof on scp.prof_id = prof.prof_id
join courses co on scp.course_id = co.course_id
join (
    select course_id, max(prof_evaluation_of_5) as max_evaluation
    from student_course_professors
    group by course_id
) max_eval on scp.course_id = max_eval.course_id 
          and scp.prof_evaluation_of_5 = max_eval.max_evaluation;































