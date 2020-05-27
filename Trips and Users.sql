select request_at as Day,round(((sum(case when status like 'cancelled%' Then 1.00 else 0.00 end)) / count(*)),2) as 'Cancellation Rate'
from trips t
join users u on t.client_id=u.users_id
where banned='No' and request_at BETWEEN '2013-10-01' AND '2013-10-03'
group by request_at




