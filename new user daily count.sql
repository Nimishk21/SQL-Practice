# Write your MySQL query statement below
select login_date,count(*) as user_count
from( select user_id,min(activity_date) as login_date
      from traffic
      where activity='login'
      group by user_id) t
where datediff('2019-06-30',login_date) <= 90
group by login_date

