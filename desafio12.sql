SELECT CONCAT(ep.FIRST_NAME,' ',ep.LAST_NAME) AS 'Nome completo funcionário 1',
ep.SALARY AS 'Salário funcionário 1',
ep.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(et.FIRST_NAME,' ',et.LAST_NAME) AS 'Nome completo funcionário 2',
et.SALARY AS 'Salário funcionário 2',
et.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS ep,
hr.employees AS et
WHERE ep.JOB_ID = et.JOB_ID
HAVING `Nome completo funcionário 1` <> `Nome completo funcionário 2`
ORDER BY 1, 4;
