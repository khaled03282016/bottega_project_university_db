select c.course_title as 'course title : ', avg (g.grade_mark) as 'average grade'
from courses c
join grades g
on c.course_id = g.cur_stu_id 
group by c.course_id
order by avg(g.grade_mark) asc;