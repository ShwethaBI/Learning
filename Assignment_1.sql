create database SQLAssignment

use SQLAssignment

create table Worker (ID int not null Primary key identity(1,1), First_name varchar(20), Last_name varchar(20),
Join_Date date, Department varchar(20), Salary int, Email varchar(30))

Insert into Worker values('Siri','Raj','2021-01-10','HR','10000','siri.raj@inasql.com')
Insert into Worker values('Mohit','mh','2021-02-10','Sales','20000','mohit.mh@inasql.com')
Insert into Worker values('Veena','Vn','2021-03-20','Finance','30000','veena.vn@inasql.com')
Insert into Worker values('Hari','Pr','2021-04-08','HR','15000','hari.pr@inasql.com')
Insert into Worker values('Kajol','Aj','2021-05-10','Finance','17000','kajol.aj@inasql.com')
Insert into Worker values('Deepa','KP','2021-06-13','Sales','40000','deepa.kp@inasql.com')
Insert into Worker values('Priya','Pawar','2021-07-10','Technical','80000','priya.pawar@inasql.com')
Insert into Worker values('Ayushi','kanna','2021-08-16','Finance','90000','ayushi.kanna@inasql.com')
Insert into Worker values('Anil','Kar','2021-09-07','Sales','45000','anil.kar@inasql.com')
Insert into Worker values('Vinay','Vy','2021-10-22','HR','50000','vinay.vy@inasql.com')
Insert into Worker values('Vishal','Trivedi','2021-11-25','Technical','30000','vishal.trivedi@inasql.com')
Insert into Worker values('Pooja','Bhat','2021-12-10','Sales','60000','pooja.bhat@inasql.com')

select * from Worker


/* Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>  */

select First_name as WORKER_NAME from Worker


/* Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table  */

select distinct [Department] from Worker


/* Q-3. Write an SQL query to show the last 5 record from a table  */

select top 5 * from Worker
order by ID desc