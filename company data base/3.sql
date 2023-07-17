alter table employee
add foreign key(branch_id)
references branch(branch_id)
on delete set null;

alter table employee
add foreign key(super_id)
references employee(emp_id)
on delete set null;