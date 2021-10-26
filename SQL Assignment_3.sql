
/* Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side */

select RTRIM([First_name]) as FName from Worker


/* Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length */

select distinct([Department]), LEN([Department]) as Lngth
from Worker


/* Q-3. Write an SQL query to fetch nth max salaries from a table */

select Max(Salary) as '4th_Max_Salary'
from Worker
where Salary Not in 
		(select distinct top 3 Salary
		from Worker order by Salary desc)