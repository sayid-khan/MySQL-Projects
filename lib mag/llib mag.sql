create database lib_mag;

show databases;

use lib_mag;

create table readers
(
    reader_id varchar(06),
    first_name varchar(60),
    middle_name varchar(60),
    last_name varchar(60),
    city varchar(60),
    mobile_number varchar(10),
    occupation varchar(60),
    dob date,
    constraint reader_pk primary key(reader_id)
    );
    
    drop table readers;
    
    insert into readers values(01,'ramesh','chandra','sharma','delhi',9596123347,'buisness','1990-12-06');
    insert into readers values(02,'suresh',null,null,'jammu',9796123678,'service','1992-11-26');
    insert into readers values(03,'ram',null,'kapoor','delhi',9419023457,'student','1998-06-01');
    
    select * from readers;
    
    select reader_id from readers;
    
    
    create table book
    (
        book_id varchar(06),
        book_name varchar(60),
        book_doamin varchar(60),
        constraint book_pk primary key(book_id)
        );
        
        insert into book values('B0001','A cat in the hat','story');        
        insert into book values('B0002','gulliver and liliput','story');
	    insert into book values('B0003','time machine','story');

        
        
	
	create table active_readers
    (
        account_id varchar(06),
        reader_id varchar(06),
        book_id varchar(06),
        account_type varchar(60),
        account_status varchar(60),
        constraint account_id_pk primary key(account_id),
        constraint account_reader_fk foreign key(reader_id) references readers(reader_id),
        constraint account_book_fk foreign key(book_id) references book(book_id)
        );
        
        insert into active_readers values('A0001',01,'B0001','premium','active');
        insert into active_readers values('A0002',02,'B0002','premium','suspended');
        insert into active_readers values('A0003',03,'B0003','regular','active');
        
        select * from active_readers;
        
       
        create table book_issue_details
        ( 
            issue_number varchar(06),
            account_id varchar(06),
            book_id varchar(06),
            book_name varchar(60),
            numbers_of_book_issued varchar(06),
            constraint issue_number_pk primary key(issue_number),
            constraint account_id_fk foreign key(account_id) references active_readers(account_id),
            constraint book_id_fk foreign key(book_id) references book(book_id)
            );
            
            
		insert into book_issue_details values(01,'A0001','B0001','a cat in the hat',02);
        insert into book_issue_details values(02,'A0002','B0002','gulliver and liliput',02);
        insert into book_issue_details values(03,'A0003','B0003','time machine',02);
		
        
        select * from book_issue_details;
        
        select issue_number from book_issue_details;
        
        show tables;
        
        select * from active_readers where account_status='active';
        select * from active_readers where account_status='suspended';        
        
        select count(account_type) from active_readers where account_type='premium';
        
        