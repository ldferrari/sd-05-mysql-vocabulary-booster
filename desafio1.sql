SELECT c.country_name AS País, 
(SELECT 
IF (r.region_name = 'Europe', 'incluído', 'não incluído')
FROM hr.regions AS r
WHERE c.region_id = r.region_id
) AS 'Status Inclusão'
FROM hr.countries AS c 
ORDER BY c.country_name;
