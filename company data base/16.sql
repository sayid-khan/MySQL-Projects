-- unions

-- find the list of employee and branch names
select first_name
from employee
union
select branch_name
from branch;


-- find the list of employee and branch names

select first_name
from employee
union
select branch_name
from branch
union
select clientt_name
from clientt
;

-- inorder to change the name of column
select first_name as company_name
from employee
union
select branch_name
from branch
union
select clientt_name
from clientt
;



-- find a list of all client and branch suppliers name
select clientt_name,branch_id
from clientt
union
select supplier_name,branch_id
from branch_supplier;

-- in order to seperate the branch id above
select clientt_name,clientt.branch_id
from clientt
union
select supplier_name,branch_supplier.branch_id
from branch_supplier;



-- find the list of all money earned or spend by the company
select salary
from employee
union
select total_sales
from works_with;