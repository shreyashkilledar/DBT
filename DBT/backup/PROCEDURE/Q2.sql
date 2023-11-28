drop procedure if exists checkuser;
delimiter $
create procedure checkuser(_emailid varchar(45))
BEGIN
    declare flag boolean;
    select true into flag from login_1 where emailid=_emailid;
    if flag then 
        select username,password from login_1 where emailid=_emailid;
    else
        insert into log_1(curr_date,curr_time,message) values (curdate(),curtime(),"data added successfully");
    end if;
end $
delimiter ;    