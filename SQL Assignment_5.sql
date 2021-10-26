/* Q-1. Write an SQL query to print details of workers excluding first names, “Vinay” and “Hari” from Worker table. */

select * from Worker
where First_name not in ('Vinay','Hari')


/* Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘l’ and contains six alphabets. */

select * from worker
where First_name like '%l' and len([First_name])=6


/* Q-3. Write a query to validate Email of Employee. */

select * from Worker
where Email like '%@inasql.com'