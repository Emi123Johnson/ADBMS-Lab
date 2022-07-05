use emi;
(use emi)
DELIMITER //
drop procedure if exists fact //
create procedure fact(in n int)
begin
declare num,fact int;
set num=n;
set fact=1;
label:while(num>0)do
set fact=num*fact;
set num=num-1;
end while label;
select concat('fact=',fact);
end //
DELIMITER ;
call fact(4);