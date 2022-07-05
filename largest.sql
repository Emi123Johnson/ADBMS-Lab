use emi;
(use emi)
DELIMITER //
drop procedure if exists largestofthree //
create procedure largestofthree()
begin
declare a,b,c int;
set a=10;
set b=20;
set c=30;
if(a>b) then 
if(a>c) then
select concat(a,'is the largest number');
end if;
else 
if(b>=c) then
select concat(b,'is the largest number');
else
select concat(c,'is the largest number');
end if;
end if;
END //
DELIMITER ;
call largestofthree();

