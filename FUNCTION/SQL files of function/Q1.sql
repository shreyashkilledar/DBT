drop function if exists fun1;
delimiter $
create function fun1(_id int) returns int
deterministic
begin
    declare z int;
    select sum(salary) into z from emp where id=_id;
    return z;
end $
delimiter ;

