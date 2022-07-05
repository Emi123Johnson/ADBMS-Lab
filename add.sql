create database emi;
use emi;

DELIMITER //
drop procedure if exists addnum //
create procedure addnum()
begin
declare a int;
declare b int;
declare c int;
set a=10;
set b=20;
set c=a+b;
select concat('sum=',c);
END //
DELIMITER ;
call addnum();

