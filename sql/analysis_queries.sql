-- ================================
-- 📊 Student Mental Health Analysis Queries
-- ================================

-- 1.Average depression score by academic year
SELECT academic_year,
       AVG(depression_score) AS avg_depression_score
FROM student_mental_health
GROUP BY academic_year
ORDER BY avg_depression_score DESC;


-- 2.Average stress score by department
SELECT department,
       AVG(stress_score) AS avg_stress_score
FROM student_mental_health
GROUP BY department
ORDER BY avg_stress_score DESC;


-- 3.Distribution of depression labels by gender
SELECT gender,
       depression_label,
       COUNT(*) AS label_count
FROM student_mental_health
GROUP BY gender, depression_label
ORDER BY gender, label_count DESC;


-- 4.Correlation approximation: Average depression score by CGPA range
SELECT cgpa_range,
       AVG(depression_score) AS avg_depression_score
FROM student_mental_health
GROUP BY cgpa_range
ORDER BY avg_depression_score DESC;


-- 5.Average depression score by age group
SELECT age,
       AVG(depression_score) AS avg_depression_score
FROM student_mental_health
GROUP BY age
ORDER BY age;


-- 6.Top 5 departments with highest average anxiety scores
SELECT department,
       AVG(anxiety_score) AS avg_anxiety_score
FROM student_mental_health
GROUP BY department
ORDER BY avg_anxiety_score DESC LIMIT 5;


-- 7.Count of students in each depression label category
SELECT depression_label,
       COUNT(*) AS student_count
FROM student_mental_health
GROUP BY depression_label
ORDER BY student_count DESC;
