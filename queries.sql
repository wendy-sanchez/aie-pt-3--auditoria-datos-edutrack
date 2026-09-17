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

-- 06. Insertar la inscripción que falta

INSERT INTO enrollments (
    id,
    student_id,
    student_name,
    student_email,
    course_id,
    course_title,
    category,
    enrollment_date,
    completion_percentage,
    passed,
    monthly_fee_paid,
    instructor
)
VALUES (
    18,
    3,
    'Lucia Fernandes',
    'lucia.fernandes@student.edutrack.com',
    5,
    'Advanced Python',
    'Programming',
    '2025-04-01',
    0,
    FALSE,
    69.99,
    'Carlos Vega'
);

-- 07. Asignar valor por defecto a inscripciones sin instructor

UPDATE enrollments
SET instructor = 'Pending assignment'
WHERE instructor IS NULL;

-- 08. Eliminar inscripciones de cuentas de prueba
-- Primero se confirma:
SELECT *
FROM enrollments
WHERE student_email LIKE '%@test.com';

-- Luego se elimina:
DELETE FROM enrollments
WHERE student_email LIKE '%@test.com';

-- 09. Número de inscripciones por categoría

SELECT
    category,
    COUNT(*) AS enrollment_count
FROM enrollments
GROUP BY category
ORDER BY category;

-- 10. Promedio de completion_percentage por curso

SELECT
    course_title,
    AVG(completion_percentage) AS average_completion
FROM enrollments
GROUP BY course_title
ORDER BY average_completion ASC;

-- 11. Cursos con más de 3 inscripciones

SELECT
    course_title,
    COUNT(*) AS enrollment_count
FROM enrollments
GROUP BY course_title
HAVING COUNT(*) > 3
ORDER BY enrollment_count DESC;

-- 12. Ingresos totales por categoría

SELECT
    category,
    SUM(monthly_fee_paid) AS total_revenue
FROM enrollments
GROUP BY category
ORDER BY total_revenue DESC;
