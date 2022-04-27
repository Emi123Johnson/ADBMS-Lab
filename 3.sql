use lab
DELIMITER //
drop  procedure if exists sumofmton //
CREATE procedure sumofmton(in n int,in m int)
begin
declare i, FINAL int;
set i=n;
select concat(n,m);
set final=0;
label:while(i<=m)do 
set final=final+1;
set i=i+1;
end while label;
select concat('sum from',n,'to',m,'=',final);
END //

call sumofmton(5,10);