-- coorporate
insert into employee values(100,'david','wallace','1967-11-17','M',250000,null,null);
insert into branch values(1,'corporate',100,'2006-02-09');

update employee 
set branch_id=1
where emp_id=100;

insert into employee values(101,'jan','levinson','1961-05-11','M',110000,100,1);


