use emi;

DELIMITER //
drop procedure if exists sumofmton //
create procedure sumofmton(in n int,in m int)
begin
declare i,final int;
set i=n;
select concat(n,m);
set final=0;
label:while(i<m)do
set final=final+i;
set i=i+1;
end while label;
select concat('sum from',n,' to ',m,'=',final);
end //
DELIMITER ;
call sumofmton(5,10);

 