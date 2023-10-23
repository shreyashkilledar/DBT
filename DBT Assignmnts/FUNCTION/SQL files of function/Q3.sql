drop function if exists fun1;
delimiter $
create function fun1(_emailid varchar(20)) returns varchar(100)
deterministic
begin

declare flag bool;
declare s1 varchar(20);
declare s2 varchar(20);
declare x varchar(1000);

select true into flag from login where emailid=_emailid;
if flag THEN
     select username into s1 from login where emailid=_emailid;
     select password into s2 from login where emailid=_emailid;
     set x:=concat("username : ",s1," password : ",s2);
     return x;
else 
    return "employee not exists";
    end if;

 end $
 delimiter ;