SELECT COUNTRY_NAME, IF(REGION_ID = 1, 'Incluído', 'Não Incluído') as 'Status Inclusão' FROM hr.countries
ORDER BY COUNTRY_NAME;
