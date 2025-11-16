# Write your MySQL query statement below
select date_format(trans_date, '%Y-%m') month, country, count(amount) trans_count,
sum(state = 'approved') approved_count, sum(amount) trans_total_amount,
sum((state = 'approved') * amount) approved_total_amount
from transactions
group by month, country