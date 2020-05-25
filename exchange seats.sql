select id,ifnull(case when mod(id,2)=1 then lead(student,1) over()
                 else lag(student,1) over() end,student) student
from seat;
