drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int)
BEGIN 
	if x>0 then
		select "Number is Positive";
	elseif x<0 then 
		select "Number is negative";
	else
		select "Number is 0";
	end if;
end $
delimiter ;