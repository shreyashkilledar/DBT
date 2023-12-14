drop procedure if exists adduser;
delimiter $
create procedure adduser(in _username varchar(45), in _password varchar(45), in _emailid varchar(45))
BEGIN
    insert into login_1 values(_username,_password,_emailid);
end $
delimiter ;