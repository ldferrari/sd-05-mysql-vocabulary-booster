SELECT JOB_TITLE AS 'Cargo', CONCAT(MAX_SALARY, ' - ', MIN_SALARY) AS "Diferença entre salários máximo e mínimo" FROM hr.jobs;
