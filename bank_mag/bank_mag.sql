create database bank_mag;

show databases;

use bank_mag;

create table customer_personal_info
(
   customer_id varchar(06),
   customer_name varchar(60),
   date_of_birth date,
   guardian_name varchar(60),
   address varchar(60),
   mail_id varchar(60),
   contact_no varchar(10),
   gender varchar(10),
   marital_status varchar(60),
   identification_doc_type varchar(60),
   id_doc_no varchar(60),
   citizenship varchar(60),
   constraint customer_id_pk primary key (customer_id)
   );
   
   show tables;
   
   
   create table customer_reference_info
   (
      customer_id varchar(06),
      reference_account_name varchar(60),
      reference_account_number varchar(60),
      reference_account_address varchar(60),
      relation varchar(60),
      constraint customer_id_fk foreign key(customer_id) references customer_personal_info(customer_id)
      );
      
      
      create table bank_info
      (
          ifsc_code varchar(15),
          bank_name varchar(60),
          branch_name varchar(60),
          constraint ifsc_code_pk primary key(ifsc_code)
          );
 
      create table account_info
      (  
         account_no varchar(30),
         customer_id varchar(06),
         account_type varchar(30),
         registration_date date,
         activation_date date,
         ifsc_code varchar(15),
         interest varchar(30),
         initial_deposit varchar(30),
         constraint account_no_pk primary key(account_no),
		 constraint customer_id_fk_1 foreign key(customer_id) references customer_personal_info(customer_id),
	     constraint ifsc_code_fk foreign key(ifsc_code) references bank_info(ifsc_code)
         );
         
         

   insert into bank_info values('hdvl0012','hdfc','kanpur');
   insert into bank_info values('sbi0022','sbi','manipur');
   insert into bank_info values('jkl0013','jkbank','kanpur');
    insert into bank_info values('hdvm005','hdfc','kashmir');
            
            select * from bank_info;


insert into customer_personal_info values('C-001','jhon','1984-5-3','peter','14th park avenue london','jhon1@gmail.com',9796564589,'male','married','passport',01,'uk');
insert into customer_personal_info values('C-002','jenny','1996-7-7','kelly','7th sector london','jenny21@gmail.com',9796589456,'female','unmarried','driving license',02,'uk');
insert into customer_personal_info values('C-003','ram','1989-4-13','sharma','manipur india','ram56@gmail.com',9419403256,'male','married','adhaar',03,'india');
insert into customer_personal_info values('C-004','ruby','1999-5-26','root','8th sector london','ruby789@gmail.com',9796589123,'female','unmarried','driving license',04,'uk');



select * from customer_personal_info;