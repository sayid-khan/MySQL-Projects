-- nested queries

-- find the name of all employees who have sold over to a single client
select works_with.emp_id
from works_with
where total_sales>30000;

  -- in above we only got emp_ids 
select employee.first_name,employee.last_name
from employee
where employee.emp_id in (
select works_with.emp_id
from works_with
where total_sales>30000
);



-- find all the clients who are handled by the branch that micheal scott manages
-- assume you know micheals id
select branch.branch_id
from branch
where mgr_id=102;

-- from above we get only the branch id so,
select clientt.clientt_name
from clientt
where clientt.branch_id=(
select branch.branch_id
from branch
where mgr_id=102);