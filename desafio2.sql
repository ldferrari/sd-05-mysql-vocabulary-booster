SELECT jbs.JOB_TITLE AS 'Cargo',
  CASE
    WHEN jbs.MAX_SALARY <= 10000 THEN 'Baixo'
    WHEN jbs.MAX_SALARY > 10000
    AND jbs.MAX_SALARY <= 20000 THEN 'Médio'
    WHEN jbs.MAX_SALARY > 20000
    AND jbs.MAX_SALARY <= 30000 THEN 'Alto'
    WHEN jbs.MAX_SALARY > 30000 THEN 'Altíssimo'
  END AS 'Nível'
FROM hr.jobs AS jbs
ORDER BY jbs.JOB_TITLE;
