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

-- 05. Inscripciones del último año

SELECT *
FROM enrollments
WHERE enrollment_date >= CURRENT_DATE - INTERVAL '1 year'
ORDER BY enrollment_date DESC;

-- Debido a que esta consulta no generaba resultado, porque la base de datos es del año 2025, creé una nueva consulta que genere un resultado
-- Se toma como fecha de referencia la inscripción más reciente del dataset.

SELECT *
FROM enrollments
WHERE enrollment_date >= (
    SELECT MAX(enrollment_date) - INTERVAL '1 year'
    FROM enrollments
)
ORDER BY enrollment_date DESC;

