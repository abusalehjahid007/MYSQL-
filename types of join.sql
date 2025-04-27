-- inner join
select * 
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
-- left join
select * 
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
-- right join
select * 
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
-- self join
select emp1.employee_id, emp1.first_name, emp1.last_name,
emp2.employee_id, emp2.first_name, emp2.last_name
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id +1 = emp2.employee_id;
    
    
-- multiple table join
select * 
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id = pd.department_id; 