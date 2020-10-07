-- falta ordenar por ordem crescente o salario e
-- se der empate ordenar por nome de cargo

SELECT
job_title AS "Cargo",
max_salary - min_salary AS "Diferença entre salários máximo e mínimo"
FROM hr.jobs
ORDER BY MAX_SALARY ASC, JOB_TITLE ASC;