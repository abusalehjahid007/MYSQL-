
-- Triggers  (that active after/before doing somethind, that could be for insert, alter, update or delete)

delimiter $$
create trigger employee_insert
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics (employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
end $$
delimiter ;

insert into  employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values ( 13, 'Saleh', 'Jahid', 'Data analyst', 60000, null);

select * 
from employee_salary;

select * 
from employee_demographics;





-- Events (happened automatic after cretain period of time)

delimiter $$
create event delete_retires
on schedule every 1 minute
do
begin
	delete 
    from employee_demographics
    where age >= 60;
end $$
delimiter ;


show variables like 'event%'

