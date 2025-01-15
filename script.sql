-- 1
-- 1
select exam_year, avg(grade) from grades group by exam_year;

--2 
select student_name, avg(grade) from grades WHERE exam_year=2024 group by student_name ;
--select student_name, avg(grade) from grades group by student_name having exam_year=2024;

-- 3

SELECT exam_year,subject_name, MAX(grade)FROM grades GROUP BY exam_year;

SELECT exam_year,subject_name, MIN(grade)FROM grades GROUP BY exam_year;

-- 4 
--SELECT subject_name,count(subject_name) FROM grades
--SELECT subject_name FROM grades
SELECT exam_year,subject_name, count(subject_name) FROM grades GROUP BY subject_name

-- 5 

--SELECT avg(subject_name=(SELECT grade> 85 FROM grades))from grades;

--SELECT exam_year , subject_name,avg(grade)as yu FROM grades GROUP BY subject_name 

SELECT exam_year , subject_name,avg(grade)as yu FROM grades GROUP BY subject_name having  yu >85;


-- 6
SELECT  grade,count(grade)as on_90 FROM grades GROUP BY grade having grade> 90
