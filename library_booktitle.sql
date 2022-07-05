
use library;
(use library)
DELIMITER //
drop procedure if exists orderofbooktitle//
create procedure orderofbooktitle()
begin
select * from bookdetails order by bookname asc;
end //
DELIMITER ;
call orderofbooktitle();

