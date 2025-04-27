
-- String functions

select first_name, length(first_name)
from employee_demographics
order by length(first_name);

select first_name, upper(first_name) -- lower()
from employee_demographics;

select trim('   trinm  ');

select *, substring(birth_date, 6, 2) AS birth_month
from employee_demographics;

select first_name, replace(first_name, 'e', 'E') AS 'Replace'
from employee_demographics;

select first_name, locate('M', first_name) AS 'Located'
from employee_demographics;

select first_name, last_name, concat(first_name,' ',last_name)
from employee_demographics;


  