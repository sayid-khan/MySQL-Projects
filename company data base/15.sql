-- wildcards

-- find any clients who are an llc
select *
from clientt
where clientt_name like '%llc%';

-- find any branch supplier who are in label buisness
select *
from branch_supplier
where supplier_name like '%label%';

-- find any employee born in october
select *
from employee
where birth_date like '____-10%'

-- find any clients who are schools 
select *
from clientt
where clientt_name like '%school%';



