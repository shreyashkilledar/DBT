drop function if exists fun1 ;
delimiter $
create function fun1(_sid int) returns int
DETERMINISTIC
begin
   declare x int;
   set x :=0;
   SELECT sum(marks) into x from student s join student_qualifications sq on s.id=sq.studentid where s.id=_sid;
   return x; 
end $
delimiter ;