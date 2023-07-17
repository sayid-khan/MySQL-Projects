-- triggers
create table trigger_test(
     message varchar(200)
     );
     
     
     
delimiter $$
create
      trigger my_trigger before insert
      on employee
      for each row begin
      insert into trigger_test values('added a new employee');
      end$$
delimiter;


insert into employee
values(109, 'oscar','martinez','1968-02-09','m',69000,106,3);

select * from trigger_test; 


delimiter $$
create
      trigger my_trigger3 before insert
      on employee
      for each row begin
      insert into trigger_test values(new.first_name);
      end$$
delimiter ;


insert into employee
values(110, 'kevin','malone','1978-02-19','m',69000,106,3);
select * from trigger_test; 