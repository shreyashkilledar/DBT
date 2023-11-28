drop function if exists autoNumber ;
delimiter $
create function autoNumber() returns int 
deterministic
begin

     declare z int ;

     select max(studentid) + 1 into z from student_new;

     return z;
 
end $
delimiter ;