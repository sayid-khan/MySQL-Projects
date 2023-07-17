-- scranton

insert into employee values(102,'micheal','scott','1963-03-15','M',75000,100,null);
insert into branch values(2,'scranton',102,'1992-04-06');

update employee
set branch_id=2
where emp_id=102;

insert into employee values(103,'angela','martin','1971-06-25','f',63000,102,2);
insert into employee values(104,'kelly','kapoor','1980-02-05','f',55000,102,2);
insert into employee values(105,'stanley','hudson','1958-02-19','m',69000,102,2);
