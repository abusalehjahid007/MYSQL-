select occupation, avg(salary), count(occupation) as 'group of'
from parks_and_recreation.employee_salary
group by occupation;

select gender, avg(age), max(age), min(age), count(gender) as 'group of'
from parks_and_recreation.employee_demographics
group by gender;

select *
from parks_and_recreation.employee_demographics
order by age desc
limit 2, 1;

select gender, avg(age) as 'avg_age'
from parks_and_recreation.employee_demographics
group by gender
having avg_age >= 35;

select *
from parks_and_recreation.employee_demographics
where first_name like 'm%'



