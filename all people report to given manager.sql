select employee_id
from employees
where manager_id=1 and employee_id!=1

union

select employee_id
from employees
where manager_id in
(select employee_id
from employees
where manager_id=1 and employee_id!=1)

union

select employee_id
from employees
where manager_id in
(select employee_id
from employees
where manager_id in
(select employee_id
from employees
where manager_id=1 and employee_id!=1)
)
