select department,employee,salary
from(
select d.name as department,e.name as employee,salary,dense_rank() over(partition by departmentId order by salary desc) as rnk
from employee e
join department d on d.id=e.departmentid 
) a
where rnk<=3
