SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) `Nome completo funcionário 1`,
E.Salary `Salário funcionário 1`,
E.PHONE_NUMBER `Telefone funcionário 1`,
CONCAT(E2.FIRST_NAME, ' ', E2.LAST_NAME) `Nome completo funcionário 2`,
E2.Salary `Salário funcionário 2`,
E2.PHONE_NUMBER `Telefone funcionário 2`
FROM hr.employees AS E
INNER JOIN hr.employees AS E2
ON E.JOB_ID = E2.JOB_ID
AND CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) <> CONCAT(E2.FIRST_NAME, ' ', E2.LAST_NAME)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
