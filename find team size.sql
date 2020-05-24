select a.employee_id, b.team_size 
from employee a
inner join 
(select team_id, count(*) as team_size
from Employee
group by team_id ) b
on a.team_id = b.team_id