SELECT country_name AS 'País',
IF(region_id = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
ORDER BY country_name ASC;
