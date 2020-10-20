delimiter $$

create function exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
returns int reads sql data
begin
declare quantidade int;
select count(*) from hr.employees
where mes = month(hire_date) and ano = year(hire_date)
into quantidade;
return quantidade;
end

$$ delimiter ;
