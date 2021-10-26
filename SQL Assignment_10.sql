/* Q-19. Write an SQL query to determine the 5th highest salary without using TOP or limit method. */

with T1 as (select *, ROW_NUMBER() over(order by Salary desc) as row_no from Worker)
select * from T1
where T1.row_no=5


/* Q-20. Write an SQL query to fetch the list of employees with the same salary. */

with T1 as (select Salary from Worker
group by Salary having count(*)>1)

select * from Worker
where Salary in (Select * from T1)
order by Salary