use emi;
(use emi)
DELIMITER //
drop procedure if exists oddeven //
create procedure oddeven(in n int)
begin
declare i int;
if(n%2=0) then 
select concat(n,' is even number');
else
select concat(n,' is odd number');
end if;
end //
DELIMITER ;
call oddeven(5);
