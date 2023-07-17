create table student (
    student_id int,
    namee varchar(20),
    major varchar(20),
    primary key(student_id)
    );
    
    alter table student add gpa decimal(3,2);
    describe student;