
-- union
select first_name, last_name, 'Old Man' as Lavel
from employee_demographics
where age > 40 and gender = 'Male'
union
select first_name, last_name, 'Old Lady' as Lavel
from employee_demographics
where age > 40 and gender = 'Female'
union 
select first_name, last_name, 'High pay salary' as Lavel
from employee_salary
where salary > 70000
order by first_name, last_name

select * 
from employee_demographics