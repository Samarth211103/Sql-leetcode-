# Write your MySQL query statement below
select w.id 
from weather w
cross join weather we
where datediff(w.recordDate, we.recordDate) = 1
and w.temperature > we.temperature;