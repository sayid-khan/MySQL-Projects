-- functons


-- find the number of employees 
select count(emp_id)
from employee;

-- how many emp have supervisor
select count(super_id)
from employee;

-- find the number of female employees born afetr 1970
select count(emp_id)
from employee
where sex='F' and birth_date>1970;

-- find the aevrage of all employee salaries
select avg(salary)
from employee;


-- find the aevrage of all employee salaries who are male
select avg(salary)
from employee
where sex='m';

-- find the sum of all employee salaries who are male
select sum(salary)
from employee;

-- find out how many males and females are their 
select count(sex),sex
from employee
group by sex;

-- find the total sales of each salesman
select sum(total_sales),emp_id
from works_with
group by emp_id;

-- how much money does each client spend on each branch
select sum(total_sales),clientt_id
from works_with
group by clientt_id;
