select d.name as department,a.name as employee,salary
from (select name,salary,departmentid,dense_rank() over(partition by departmentid order by salary desc) as rnk
     from employee  
     ) a
join department d on d.id=a.departmentid
where rnk=1