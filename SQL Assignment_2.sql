
/* Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table */

select LEFT(First_name,3) from Worker


/* Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Pooja’ from Worker table */

select CHARINDEX('a',First_name) from Worker
where First_name='Pooja'


/* Q-3. Write an SQL query to print the name of employees having the highest salary in each department */

Select W1.First_name, W1.Salary, W1.Department
from Worker W1
inner join (select max([Salary]) as Max_Salary,[Department] from Worker group by Department) W2
on W1.Department=W2.Department And W1.Salary=W2.Max_Salary