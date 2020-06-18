SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE (product_id, year) IN (
SELECT product_id, MIN(year) as year
FROM Sales
GROUP BY product_id)


select product_id, year as first_year, quantity, price from
(
select 
    product_id, year, quantity, price, dense_rank() over (partition by product_id order by year) as rank1
from Sales) tmp
where rank1 = 1;
