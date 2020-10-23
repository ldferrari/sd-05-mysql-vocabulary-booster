SELECT CONCAT(ef.FIRST_NAME, ' ', ef.LAST_NAME) AS 'Nome completo funcionário 1', ef.SALARY AS 'Salário funcionário 1', ef.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(es.FIRST_NAME, ' ', es.LAST_NAME) AS 'Nome completo funcionário 2', es.SALARY AS 'Salário funcionário 2', es.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS ef, hr.employees AS es
WHERE ef.JOB_ID = es.JOB_ID
HAVING `Nome completo funcionário 1` <> `Nome completo funcionário 2`
ORDER BY 1, 4;
