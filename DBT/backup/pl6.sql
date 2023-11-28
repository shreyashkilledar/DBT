drop procedure if exists checkuser;
delimiter $
create procedure checkuser(_email varchar(100))
begin
	declare v1 bool;
	select true into v1 from user_1 where email=_email;
	if v1 THEN
		select username as uname,password as pwd from user_1 where email=_email; 
	ELSE
		insert into table_login(curr_date,curr_time,message) values(curdate(),curtime(),"data added successfully");
	end if ;
end $
delimiter ;