-- Foi decidido que vamos continuar atendendo apenas à região "Europe".
-- Sendo assim, usando o banco hr como referência, precisamos de um relatório que deve apresentar duas colunas:
-- A primeira coluna deve possuir o alias "País" e exibir o nome do país.
-- A segunda coluna deve possuir o alias "Status Inclusão" e deve exibir "incluído" se o país em questão está incluso em "Europe",
-- ou "não incluído", caso contrário.
-- Os resultados devem estar ordenados pelo nome do país em ordem alfabética.

SELECT
country_name AS 'País',
CASE
WHEN region_id = 1
THEN 'incluído'
ELSE 'não incluído'
END AS 'Status Inclusão'
FROM hr.countries
ORDER BY country_name;
