CREATE DEFINER=`root`@`localhost` PROCEDURE `enter_courses`()
BEGIN
DECLARE num_entre INT DEFAULT 0;
	while num_entre < 30 do 
    set num_entre = num_entre + 1;
	insert into courses (course_title, course_prof_id )
    value (concat('course titel', num_entre), (SELECT professor_id from professors order by rand() limit 1));
    end while;

END