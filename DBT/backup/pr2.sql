drop procedure if exists sk2;
delimiter $
create procedure sk2(_email varchar(45))
begin
    declare s1 boolean;
    select true into s1 from sk where email=_email;
        if s1 THEN
            select username as uname, password as pwd from sk where email=_email;
        ELSE
            insert into sk1(curr_date,curr_time,message) values(curdate(),curtime(),"Data added");
        end if;
    end $
    delimiter ;