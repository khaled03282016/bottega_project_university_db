CREATE DEFINER=`root`@`localhost` PROCEDURE `entre_data`()
BEGIN
DECLARE num_entre INT DEFAULT 0;
	while num_entre <= 100 do 
    set num_entre = num_entre + 1;
	insert into students (student_first_name, student_last_name)
    value (concat('student', num_entre), concat('lastname', num_entre));
    end while;
END