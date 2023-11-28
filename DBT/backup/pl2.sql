drop procedure if exists pro2;
delimiter $
create procedure pro2(in y int)
BEGIN
	declare x int;
	set x:=0;
	SET @z :="";
	lbl1:LOOP
		set x:= x + 1;
		if x > 10 THEN
			leave lbl1;
		end if;
		
		SET @z := concat(@z , ' ',x * y);
		
		select x*y;
		
	end loop lbl1;
end $
delimiter ;