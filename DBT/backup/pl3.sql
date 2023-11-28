drop procedure if exists pro1;
delimiter $
create procedure pro1(in _username varchar(45), in _password varchar(45), in _emailid varchar(45))
BEGIN
	insert into login values(_username, _password, _emailid);
end $
delimiter ;