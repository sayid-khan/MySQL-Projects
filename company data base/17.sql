-- joins

insert into branch values(4,'bufallo',null,null);

select *
from branch;

-- find all branches and the name of their managers(inner joint)
select employee.emp_id,employee.first_name,branch.branch_name
from employee
join branch
on employee.emp_id=branch.mgr_id;

-- find all branches and the name of their managers(left joint)
select employee.emp_id,employee.first_name,branch.branch_name
from employee
left join branch
on employee.emp_id=branch.mgr_id;


-- find all branches and the name of their managers(right joint)
select employee.emp_id,employee.first_name,branch.branch_name
from employee
right join branch
on employee.emp_id=branch.mgr_id;

