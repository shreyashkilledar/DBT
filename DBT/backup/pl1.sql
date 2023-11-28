drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int)
BEGIN
	if x>10 then 
		select "GOOD";
	else
		select "BAD";
	end if;
end $
delimiter ;