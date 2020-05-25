select
distinct followee as follower,
count(distinct follower)as num
from follow
where followee in (select follower from follow)
group by followee

