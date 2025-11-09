# Write your MySQL query statement below
select e.name
from employee e
join (
    select managerId, count(*)
    from employee
    group by managerId
    having count(*) >= 5
) em
on e.id = em.managerId;