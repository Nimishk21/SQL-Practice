select distinct l1.id as id,(select name from accounts where id=l1.id) as name
from logins l1,logins l2
where l1.id=l2.id and datediff(l1.login_date,l2.login_date) between 1 and 4
group by l1.id,l1.login_date
having count(distinct l2.login_date)>=4


    
