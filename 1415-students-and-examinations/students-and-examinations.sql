# Write your MySQL query statement below
select st.student_id, st.student_name, su.subject_name, count(ex.subject_name) as attended_exams
from students st
cross join subjects su 
left join examinations ex on ex.subject_name = su.subject_name
and st.student_id = ex.student_id
group by st.student_id, st.student_name, su.subject_name
order by st.student_id, st.student_name, su.subject_name;