select project_id
from
(
select 
p.project_id,
rank() over (order by count(employee_id) desc) as rnk
from project p
group by p.project_id
    )m
    where rnk=1
