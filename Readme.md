# university_db
relationship between the tables many to many between students and courses, this goes thru the table grades  the columns grades.stud_cur_id, grades.cur_stu_id both as grades primary keyeach one is a foreign key to each table students and courses.
1 to many between professors and the courses 


list of procedures used to entre the data :

entre_students entre the liste of students 

entre_profossers entre the liste of profossers 

entre_courses entre the liste of courses includ grabing randomly the list of professor as a foreing key from professors table
 
entre_grades entre the liste of grades : getting the liste of students id and courses id from tables students and courses randomly with no duplicates value 