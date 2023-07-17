-- trigger contd

delimiter $$
create
      trigger my_trigger5 before insert
      on employee
      for each row begin
      if new.sex ='m' then
      insert into trigger_test values('added male employee');
      elseif new.sex ='f' then
      insert into trigger_test value('added female');
      else
      insert into trigger_test values('added other employee');
      end if;
      end$$
delimiter ;

insert into employee
values(111, 'pam','beesly','1988-02-19','f',69000,106,3);

