create table clientt(
clientt_id int primary key,
clientt_name varchar(40),
branch_id int,
foreign key(branch_id) references branch(branch_id) on delete set null
);