drop function if exists fun1;
delimiter $
create function fun1() returns int
deterministic
BEGIN
    select FLOOR(rand()*900000)+100000 INTO @x;
     return @x; 
end $
delimiter ;