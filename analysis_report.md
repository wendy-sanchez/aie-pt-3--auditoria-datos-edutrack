# EduTrack — Database Audit Report
## Inscripciones en 'Intro to Python'

Resultado:

- Emily Watson — emily.watson@student.edutrack.com — 85%
- Klaus Weber — klaus.weber@student.edutrack.com — 92%
- Marco Rossi — marco.rossi@student.edutrack.com — 88%
- James Miller — james.miller@test.com — 30%
- Priya Sharma — priya.sharma@student.edutrack.com — 55%

## Posibles abandonos

Resultado:

- Lucia Fernandes — Web Design Basics — 5%
- Lucia Fernandes — Digital Marketing 101 — 3%
- Yuki Nakamura — UI/UX Fundamentals — 0%
- Pierre Dubois — UI/UX Fundamentals — 0%

## Inscripciones sin instructor

Resultado:

- Yuki Nakamura — UI/UX Fundamentals — instructor: NULL
- Pierre Dubois — UI/UX Fundamentals — instructor: NULL

## 5 estudiantes con mayor progreso que no han aprobado

Resultado:

- Emily Watson — Web Design Basics — 60%
- Priya Sharma — Intro to Python — 55%
- Yuki Nakamura — Data Analysis with SQL — 45%
- Emily Watson — Advanced Python — 40%
- James Miller — Intro to Python — 30%

## Inscripciones creadas en el último año

Resultado:

- 0 inscripciones.

Con la nueva consulta, se genera un nuevo resultado:

- 17 inscripciones.

| id | student_id | student_name    | student_email                        | course_id | course_title           | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor   |
| -- | ---------- | --------------- | ------------------------------------ | --------- | ---------------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ------------ |
| 17 | 1          | Emily Watson    | emily.watson@student.edutrack.com    | 5         | Advanced Python        | Programming | 2025-03-05      | 40                    | false  | 69.99            | Carlos Vega  |
| 16 | 6          | Pierre Dubois   | pierre.dubois@student.edutrack.com   | 3         | Data Analysis with SQL | Data        | 2025-02-20      | 20                    | false  | 59.99            | Marta López  |
| 15 | 7          | Priya Sharma    | priya.sharma@student.edutrack.com    | 1         | Intro to Python        | Programming | 2025-01-10      | 55                    | false  | 49.99            | Marta López  |
| 12 | 7          | Priya Sharma    | priya.sharma@student.edutrack.com    | 4         | Digital Marketing 101  | Marketing   | 2024-12-01      | 70                    | true   | 29.99            | Lucia Prades |
| 11 | 6          | Pierre Dubois   | pierre.dubois@student.edutrack.com   | 6         | UI/UX Fundamentals     | Design      | 2024-11-05      | 0                     | false  | 44.99            | null         |
| 10 | 5          | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 6         | UI/UX Fundamentals     | Design      | 2024-10-11      | 0                     | false  | 44.99            | null         |
| 9  | 5          | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 3         | Data Analysis with SQL | Data        | 2024-09-03      | 45                    | false  | 59.99            | Marta López  |
| 8  | 4          | Marco Rossi     | marco.rossi@student.edutrack.com     | 1         | Intro to Python        | Programming | 2024-08-09      | 88                    | true   | 49.99            | Marta López  |
| 6  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 4         | Digital Marketing 101  | Marketing   | 2024-07-01      | 3                     | false  | 29.99            | Lucia Prades |
| 14 | 9          | Alex Chen       | alex.chen@test.com                   | 2         | Web Design Basics      | Design      | 2024-06-30      | 10                    | false  | 39.99            | Carlos Vega  |
| 5  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 2         | Web Design Basics      | Design      | 2024-06-20      | 5                     | false  | 39.99            | Carlos Vega  |
| 13 | 8          | James Miller    | james.miller@test.com                | 1         | Intro to Python        | Programming | 2024-05-22      | 30                    | false  | 49.99            | Marta López  |
| 4  | 2          | Klaus Weber     | klaus.weber@student.edutrack.com     | 3         | Data Analysis with SQL | Data        | 2024-05-01      | 78                    | true   | 59.99            | Marta López  |
| 2  | 1          | Emily Watson    | emily.watson@student.edutrack.com    | 2         | Web Design Basics      | Design      | 2024-04-15      | 60                    | false  | 39.99            | Carlos Vega  |
| 3  | 2          | Klaus Weber     | klaus.weber@student.edutrack.com     | 1         | Intro to Python        | Programming | 2024-03-12      | 92                    | true   | 49.99            | Marta López  |
| 1  | 1          | Emily Watson    | emily.watson@student.edutrack.com    | 1         | Intro to Python        | Programming | 2024-03-10      | 85                    | true   | 49.99            | Marta López  |

## Inscripción faltante

Resultado:

Se añadió correctamente 1 inscripción:

| id | student_id | student_name    | student_email                        | course_id | course_title    | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor  |
| -- | ---------- | --------------- | ------------------------------------ | --------- | --------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ----------- |
| 18 | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 5         | Advanced Python | Programming | 2025-04-01      | 0                     | false  | 69.99            | Carlos Vega |

## Actualización de inscripciones sin instructor

Resultado:

Se actualizaron 2 inscripciones:

| id | student_id | student_name  | student_email                      | course_id | course_title       | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor         |
| -- | ---------- | ------------- | ---------------------------------- | --------- | ------------------ | -------- | --------------- | --------------------- | ------ | ---------------- | ------------------ |
| 10 | 5          | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-10-11      | 0                     | false  | 44.99            | Pending assignment |
| 11 | 6          | Pierre Dubois | pierre.dubois@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-11-05      | 0                     | false  | 44.99            | Pending assignment |

## Eliminación de cuentas de prueba

Resultado:

Se eliminaron 2 inscripciones correspondientes a cuentas de prueba:

- ID 13 — James Miller — james.miller@test.com
- ID 14 — Alex Chen — alex.chen@test.com

La comprobación posterior confirmó que no quedan inscripciones asociadas a cuentas con email @test.com.

## Número de inscripciones por categoría

Resultado:

- Data: 3 inscripciones
- Design: 4 inscripciones
- Marketing: 2 inscripciones
- Programming: 7 inscripciones

Total: 16 inscripciones.

