SELECT jbs.JOB_TITLE AS 'Cargo',
(jbs.MAX_SALARY - jbs.MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs as jbs
ORDER BY (jbs.MAX_SALARY - jbs.MIN_SALARY), jbs.JOB_TITLE;
