
create table student (
     student_id int primary key auto_increment,
    namee varchar(20),
    major varchar(20) default 'undecided'

);

select * from student;

insert into student(namee,major) values('jack','biology');
insert into student(namee,major) values('kate','sociology');
insert into student(namee,major) values('jack','maths');

