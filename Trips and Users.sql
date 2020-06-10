with cte as(
select *
from trips
where client_id not in(select users_id from users where banned='Yes')
      and driver_id  not in(select users_id from users where banned='Yes')
      and request_at between '2013-10-01' and '2013-10-03')

select request_at as Day,round(sum(case when status like 'Cancelled%' then 1 else 0 end)/count(*),2) as 'Cancellation rate'
from cte
group by request_at;
    
    
