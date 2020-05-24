select seller_id
from(select seller_id,dense_rank() over(order by sum(price) desc) as rnk
from sales
group by seller_id) a
where rnk=1
