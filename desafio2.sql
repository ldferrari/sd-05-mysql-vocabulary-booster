SELECT jobs.JOB_TITLE as Cargo, 
CASE WHEN MAX_SALARY  between 5000 and 10000 then 'Baixo' 
WHEN MAX_SALARY  between 10001 and 20000 then 'Médio' 
WHEN MAX_SALARY between 20001 and 30000 then 'Alto' 
WHEN MAX_SALARY > 30000 then 'Altíssimo' end as Nível from jobs ORDER BY JOB_TITLE;
