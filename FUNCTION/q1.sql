drop procedure if EXISTS pro1;
delimiter $
create PROCEDURE pro1(name varchar(20), job VARCHAR(30))
BEGIN
DECLARE a INTEGER ;
set a =0;
set @x=" ";
set a=a+1; 
    SET @X = CONCAT(substring(name,1,1),"(",substring(name,2,LENGTH(name)),")" , " is " , job); 
    SELECT @x;
end $
delimiter ;