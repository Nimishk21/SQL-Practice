select round(Avg(case when order_date=d2 then 1 else 0 end)*100,2) as immediate_percentage
from(
select min(order_date) as order_date,min(customer_pref_delivery_date) as d2,customer_id
from delivery
group by customer_id
)  a
