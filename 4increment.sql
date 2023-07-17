drop table student;
create table student (
     student_id int primary key auto_increment,
    namee varchar(20) not null,
    major varchar(20) unique

);

select * from student;

insert into student(namee,major) values('jack','biology');
insert into student(namee,major) values('kate','sociology');