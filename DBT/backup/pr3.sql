drop procedure if exists getQualification;
delimiter $
create procedure getQualification(_id INTEGER)
BEGIN
	declare v1 bool;
	select true into v1 from student where id=_id;
	if v1 THEN
		select * from student where id=_id;
		select * from student_qualifications where studentid=_id;
	ELSE
		select "Student not found" as r1;
	end if ;
end $
delimiter ;