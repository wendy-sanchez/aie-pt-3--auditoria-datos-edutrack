-- EduTrack - Database Audit
-- SQL queries
-- 01. Inscripciones en 'Intro to Python'

SELECT
    student_name,
    student_email,
    completion_percentage
FROM enrollments
WHERE course_title = 'Intro to Python';

-- 02. Posibles abandonos

SELECT * FROM enrollments WHERE completion_percentage < 10;

-- 03. Inscripciones sin instructor

SELECT * FROM enrollments WHERE instructor IS NULL;

-- 04. Top 5 de estudiantes con mayor progreso que no han aprobado

SELECT
    student_name,
    student_email,
    course_title,
    completion_percentage,
    passed
FROM enrollments
WHERE passed = false
ORDER BY completion_percentage DESC
LIMIT 5;