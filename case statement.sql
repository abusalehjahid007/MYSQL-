-- case statement

select first_name, age,
case
	when age < 30 then 'Young'
    when age between 30 and 50 then 'Middle Age'
    when age >= 50 then 'Old'
end as 'Objection'
from employee_demographics;


-- payment bonus 
-- < 50000 = 8%
-- >= 50000 = 5%
-- finance = 10% 
SELECT *
FROM employee_salary as sal
inner join parks_departments pd
	 on sal.dept_id = pd.department_id
where pd.department_name = 'Finance' ;

select employee_id, first_name, occupation, salary,
case
	when dept_id = 6 then salary+(salary*.1)
	when salary < 50000 then salary+(salary*.08)
    when salary >= 50000 then salary+(salary*.05)
end as Bonus_salary
from employee_salary;