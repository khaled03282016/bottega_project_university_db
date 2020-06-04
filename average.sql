SELECT professor_full_name as 'professor :',  avg (grade_mark) as 'average grade'
from grades g 
join courses c
on c.course_id = g.cur_stu_id
join professors p
on p.professor_id = c.course_prof_id
group by professor_id;



