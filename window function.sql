
select gender, avg(salary) as avg_salary
from employee_salary sal
join employee_demographics dem
	on sal.employee_id = dem.employee_id
group by gender;


-- alternative of group by for individual rows if we want

select dem.first_name, dem.last_name, gender, avg(salary) over(partition by gender)
from employee_salary sal
join employee_demographics dem
	on sal.employee_id = dem.employee_id;
    
    
-- rolling total

select dem.first_name, dem.last_name, gender, salary, 
sum(salary) over(partition by gender order by dem.employee_id) as Rolling_total
from employee_salary sal
join employee_demographics dem
	on sal.employee_id = dem.employee_id;
    

-- row_number, rank, dense_rank 

SELECT dem.employee_id, dem.first_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary desc) as row_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;


SELECT dem.employee_id, dem.first_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary desc) row_num,
Rank() OVER(PARTITION BY gender ORDER BY salary desc) rank_1 
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;
    

SELECT dem.employee_id, dem.first_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary desc) row_num,
Rank() OVER(PARTITION BY gender ORDER BY salary desc) rank_1,
dense_rank() OVER(PARTITION BY gender ORDER BY salary desc) dense_rank_2 -- this is numerically ordered instead of positional like rank
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;