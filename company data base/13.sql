select * from employee;
select * from works_with;

-- find all employs

select *
from employee;

-- find all cleint

select *
from clientt;

-- find all employees ordered by salary'
select *
from employee
order by salary;

select *
from employee
order by salary desc;

-- order all employees by sex then name

select * from employee
order by sex,first_name,last_name;

-- find first 3 employees from the table

select * from employee
limit 3;


-- find the first and last name of all the employees
select first_name,last_name 
from employee;


-- find the forname and surname of all the employees (here we used the as)
select first_name as forename,last_name as surname
from employee;


-- find out all the different genders (using distinct)
select distinct sex
from employee;

-- find distinct branch_id
select distinct branch_id
from employee;