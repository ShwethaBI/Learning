/* Q-13. Write an SQL query to show only odd rows from a table. */

With T1 as(select *, ROW_NUMBER() over(order by ID) row_no from Worker)
select * from T1
where T1.row_no%2<>0


/* Q-14. Write an SQL query to clone a new table from another table. */

select * into Worker_clone
from Worker

select * from Worker_clone