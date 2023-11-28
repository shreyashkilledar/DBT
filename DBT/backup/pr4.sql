DROP PROCEDURE IF EXISTS addstuddent;
delimiter $
 CREATE PROCEDURE addstudent(  id INT , namefirst varchar(20), namelast varchar(50), dob date, emailid varchar(20) , spID int , number1 varchar(20),isActive  bool,aID int,address varchar(20))
 BEGIN
	 insert into student values ( id,namefirst,namelast,dob, emailid);
	  insert into student_phone values ( spid,id,number1,isactive);
	   insert into student_address values ( aid,id,address);
 end $
delimiter ;