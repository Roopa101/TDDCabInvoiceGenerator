create database payroll_service
show database
select name from sys.databases
use payroll_service
drop table employee_payroll

create table employee_payroll
(
id  int identity(1,1)primary key,
name varchar(50) not null,
salary money,
start_date date
)


insert into employee_payroll values
('billi',230000.0,'2018_-01-03')

set identity_insert employee_payroll on
insert into employee_payroll (id,name,salary,start_date) values
(3,'Charlie', 240000.0,'2020-01-03')
set identity_insert employee_payroll off

select * from employee_payroll where name= 'Billi'

select * from employee_payroll

Alter table employee_payroll add gender char (1)

update employee_payroll set gender = 'F' where id =1
update employee_payroll set gender = 'M' where id not in (1)
select * from employee_payroll

select sum(salary) 'Total Salary' from employee_payroll

select name,sum(salary) 'Total Salary' from employee_payroll







