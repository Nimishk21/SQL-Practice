select a.country_name,
    CASE when b.state <= 15 then 'Cold'
         when b.state >= 25 then 'Hot'
         else 'Warm'
    end
    as weather_type
from countries a
inner join 

( select country_id, avg(weather_state) as state
from weather
where day between "2019-11-01" and "2019-11-30"
group by country_id) b

on a.country_id = b.country_id



