SELECT jobs.JOB_TITLE as Cargo, (jobs.MAX_SALARY-jobs.MIN_SALARY) as 'Diferença entre salários máximo e mínimo' from jobs 
ORDER BY `Diferença entre salários máximo e mínimo`, JOB_TITLE ASC;
