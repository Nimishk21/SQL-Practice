# Write your MySQL query statement below
select id,month,salary
from
(select id,month,sum(salary) over(partition by id order by month asc rows between 2 preceding and current row) as salary,
                row_number() over(partition by id order by month desc) as rnk
from employee
) a
where a.rnk<>1
order by id asc,month desc
