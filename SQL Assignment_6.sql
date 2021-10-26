/* Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2021. */

select * from Worker
where MONTH(Join_Date)= 2 And YEAR([Join_Date])=2021


/* Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table. */

Insert into Worker values('Veena','Vn','2021-03-20','Finance','30000','veena.vn@inasql.com')
select * from Worker

select * from Worker W1
where W1.Salary in
(select Salary from worker
	group by Salary
	having count(Salary)>1)


/* Q-3. How to remove duplicate rows from Employees table. */

Delete from worker
where ID not in
	(select max(ID) from Worker
	group by First_name)