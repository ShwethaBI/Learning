/* Q-17.  Write an SQL query to show the top n (say 10) records of a table. */

declare @n as int
set @n=10
select top (@n) * from Worker


/* Q-18. Write an SQL query to determine the nth (say n=5) highest salary from a table. */

declare @h int
set @h=5;

with T1 as (select *, ROW_NUMBER() over(order by Salary desc) as row_no from Worker)
select * from T1
where T1.row_no=@h