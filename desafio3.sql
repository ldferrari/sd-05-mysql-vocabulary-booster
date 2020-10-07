SELECT JOB_TITLE as Cargo,
MAX_SALARY - MIN_SALARY as 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
ORDER BY MAX_SALARY - MIN_SALARY, JOB_TITLE;
