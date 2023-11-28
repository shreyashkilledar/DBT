drop procedure if exists sk1;
delimiter $
create procedure sk1(username varchar(45), password varchar(45), email varchar(45))
begin
    insert into sk values(username, password, email);
end $
delimiter ;