# Write your MySQL query statement below
select round(count(distinct player_id) / (select count(distinct player_id) from activity), 2) fraction
from activity
where (player_id, date_sub(event_date, interval 1 day)) in (
    select player_id, min(event_date) first_login
    from activity
    group by player_id
)
