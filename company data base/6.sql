create table branch_supplier(
branch_id int,
supplier_name varchar(40),
supply_type varchar(40),
primary key(branch_id,supplier_name),
foreign key(branch_id) references branch(branch_id) on delete cascade
);