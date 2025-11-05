# Write your MySQL query statement below
select we.id 
from weather w
cross join weather we
where datediff(we.recordDate, w.recordDate) = 1
and we.temperature > w.temperature;