create table works_with(
emp_id int,
clientt_id int,
total_sales int,
primary key(emp_id,clientt_id),
foreign key(emp_id) references employee(emp_id) on delete cascade,
foreign key(clientt_id) references clientt(clientt_id) on delete cascade
);