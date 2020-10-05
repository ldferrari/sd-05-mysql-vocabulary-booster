select COUNTRY_NAME as País ,  case WHEN REGION_ID = 1 THEN 'incluído' ELSE 'não incluído' END AS 'Status Inclusão'from countries ;
