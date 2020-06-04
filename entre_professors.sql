CREATE DEFINER=`root`@`localhost` PROCEDURE `enter_professor`()
BEGIN
DECLARE num_entre INT DEFAULT 0;
	while num_entre < 12 do 
    set num_entre = num_entre + 1;
	insert into professors (professor_full_name)
    value (concat('prof ', 'lastname', num_entre));
    end while;

END