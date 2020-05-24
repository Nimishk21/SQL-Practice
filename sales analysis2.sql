select s.buyer_id
from sales s
join product p on s.product_id=p.product_id
group by s.buyer_id
having sum(p.product_name='S8')>0 and sum(p.product_name='iPhone')=0

