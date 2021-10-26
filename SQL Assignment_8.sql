/* Q-15. Write an SQL query to fetch intersecting records of two tables. */

Insert into Worker_clone values('Giri','Av','2021-11-10','HR','10000','giri.av@inasql.com')
Insert into Worker_clone values('Milan','mh','2021-02-15','Sales','20000','milan.mh@inasql.com')
Insert into Worker_clone values('John','Jn','2021-03-22','Finance','30000','john.jn@inasql.com')

select * from Worker
intersect
select * from Worker_clone


/*  Q-16. Write an SQL query to show records from one table that another table does not have. */

select * from Worker_clone
where ID not in
	(select w.ID from Worker w 
	left join Worker_clone wc on w.ID=wc.ID)