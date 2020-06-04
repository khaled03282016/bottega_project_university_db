select  p.professor_full_name as 'Professor : ' , s.student_first_name as 'Studentent name : ', count(*) as 'Course number'
from students s
join grades g 
on g.stud_cur_id = s.student_id
join courses c
on c.course_id = g.cur_stu_id
join professors p 
on p.professor_id = c.course_prof_id
group by s.student_id
order by  count(p.professor_id) desc limit 1;