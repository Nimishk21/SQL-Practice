select distinct product_id,sum(quantity) as total_quantity
from sales s
group by product_id
