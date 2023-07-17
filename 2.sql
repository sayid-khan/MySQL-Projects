
create table student (
     student_id int primary key,
    namee varchar(20) not null,
    major varchar(20) unique

);

select * from student;

insert into student values(1,'jack','biology');
insert into student values(2,'kate','sociology');
insert into student values(3,'claire','biology');
insert into student values(4,'mike','computer science' );
insert into student values(5,'jack','maths');

