-- EduTrack - Database Audit
-- SQL queries
-- 01. Inscripciones en 'Intro to Python'

SELECT
    student_name,
    student_email,
    completion_percentage
FROM enrollments
WHERE course_title = 'Intro to Python';