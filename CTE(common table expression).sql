-- CTE

with cte_example as
(
select gender, avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal
from employee_demographics as dem
join employee_salary as sal
		on dem.employee_id = sal.employee_id
group by gender
)
select *
from cte_example;


-- another example 

with cte_1 as
(
select employee_id, first_name, gender, birth_date 
from employee_demographics
where birth_date > '1985-01-01'
),
cte_2 as
(
select employee_id, salary
from employee_salary
where salary > 50000
)
select *
from cte_1 
join cte_2
	on cte_1.employee_id = cte_2.employee_id
;
