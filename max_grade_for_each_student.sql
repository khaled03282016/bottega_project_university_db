select s.student_first_name as 'student name :', max(grade_mark) as 'top grade :'
from grades g
join students s
on g.stud_cur_id = s.student_id
group by student_id;