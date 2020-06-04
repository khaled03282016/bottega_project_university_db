select s.student_first_name as 'student name :', c.course_title as 'course_title'
from grades g
join students s
on g.stud_cur_id = s.student_id
join courses c
on g.cur_stu_id = c.course_id  
union 
select s.student_first_name as 'student name :', c.course_title as 'course_title'
from grades g
join students s
on g.stud_cur_id = s.student_id
join courses c
on g.cur_stu_id = c.course_id 
group by c.course_id
