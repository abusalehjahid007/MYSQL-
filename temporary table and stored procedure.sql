-- temporary table

create temporary table salary_over_50k
select *
from employee_salary
where salary > 50000;

select * 
from salary_over_50k;




-- stored Procedures for single select statement.

create procedure large_salary()
select *
from employee_salary
where salary < 51000;

call large_salary();



-- stored procedure form multiple select statement.

DELIMITER $$
create procedure large_salary_2()
begin
	select *
	from employee_salary 
	where salary < 51000;
	select *
	from employee_salary
	where salary > 60000;
end $$
DELIMITER ;

CALL large_salary_2();




-- perimeter

DELIMITER $$
create procedure large_salary_3(p_employee_id int)
begin
	select salary
	from employee_salary 
	where employee_id = p_employee_id;
end $$
DELIMITER ;

CALL large_salary_3(1);

