-- sub query

select * 
from employee_demographics
where employee_id in (select employee_id
					 from employee_salary as sal
                     inner join parks_departments as pd
						on sal.dept_id = pd.department_id
					 where pd.department_name = 'parks and Recreation'
					 );
                     
                     
select avg(count_age) 
from                    
(select gender,
avg(age) as avg_age,
max(age) as max_age,
min(age) as min_age,
count(age) as count_age
from employee_demographics
group by gender) as avg_table;