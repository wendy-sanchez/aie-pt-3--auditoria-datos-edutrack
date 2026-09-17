# Auditoría de Datos en EduTrack
Este repositorio contiene 2 archivos en su raíz que muestran el desarrollo del siguiente proyecto de EduTrack utilizando una base de datos SQL y una cuenta de Supabase.

## Contexto:

EduTrack es una plataforma de aprendizaje online en crecimiento que lleva dos años en operación. Su equipo ha estado registrando inscripciones manualmente a través de distintos canales — un formulario web, un equipo de ventas y una integración con terceros — y la calidad de los datos nunca ha sido revisada formalmente.

Te han contratado como analista de datos externo. La responsable de operaciones de la plataforma te ha enviado el siguiente mensaje (Brief):

```
De: Responsable de Operaciones, EduTrack
Para: Analista de datos (contratado externo)
Asunto: Auditoría de base de datos — Q3

Hola,

Necesitamos hacer una revisión completa de nuestra tabla enrollments antes de comenzar el ciclo de reportes del Q3. Concretamente:

- Sospechamos que hay estudiantes con un progreso muy bajo — nos gustaría identificarlos.
- Algunos registros fueron importados desde un sistema antiguo e incluyen cuentas de prueba (@test.com) cuyas inscripciones deben eliminarse.
- Un lote de inscripciones de una integración con un partner llegó sin el campo del instructor — esos registros deben corregirse.
- También falta al menos una inscripción que fue confirmada por correo pero nunca fue registrada — por favor añádela.
- Necesitamos cifras agregadas por categoría de curso: ingresos totales cobrados, promedio de completado y qué categorías tienen peor rendimiento.

Por favor, documenta todo en un informe de análisis escrito — no solo las consultas, sino los resultados reales. Necesitamos poder compartirlo con el equipo sin que tengan que ejecutar SQL.

Gracias
```

## Estructura básica del repositorio:

```
│
├── queries.sql          → Archivo de consultas en Supabase
└── analysis_report.md   → Documentación de hallazgos
```

## Comprobaciones iniciales:
Se realizaron las siguientes comprobaciones iniciales antes de generar las 12 consultas:
- Ejecución exitosa de la base de datos en Supabase (Captura de pantalla en raíz de repositorio)
- Comprobación inicial con: SELECT * FROM enrollments LIMIT 5; (Captura de pantalla en raíz de repositorio)
- Comprobación students con: SELECT * FROM students LIMIT 5; (Captura de pantalla en raíz de repositorio)
- Comprobación courses con: SELECT * FROM courses LIMIT 5; (Captura de pantalla en raíz de repositorio)