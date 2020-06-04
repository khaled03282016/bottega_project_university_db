CREATE DEFINER=`root`@`localhost` PROCEDURE `entre_grade_1`()
BEGIN
  
declare stud int default null;
declare curs int default null;
                
		repeat 
      
				select course_id 
				into curs
				from courses
				order by rand()  limit 1;
                
				select student_id 
				into stud
				from students
				order by rand() limit 1;
                
                
          while (select count(*)
				from grades
				where stud_cur_id = stud and cur_stu_id = curs) = 0 and (select count(*) from grades where cur_stu_id = curs) < 15
                do
                
                
				
                insert into grades (stud_cur_id, cur_stu_id)
				values(stud, curs);
                
                select student_id
                into stud
                from students 
                where student_id 
                not in 
                (select stud_cur_id from grades) limit 1;
				
			end while ;
	until  (select count(*) from grades ) >= 450 and (select count(student_id) from students where student_id not in (select stud_cur_id from grades) ) = 0 end repeat;
 
		SET SQL_SAFE_UPDATES = 0;
		
        update grades 
		set grade_mark = floor(rand()*(90-50)+50)
		where grade_mark is  null ;
       
       SET SQL_SAFE_UPDATES = 1;

END