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