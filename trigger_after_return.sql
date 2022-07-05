CREATE DEFINER = CURRENT_USER TRIGGER `library`.`returndetails_AFTER_INSERT` AFTER INSERT ON `returndetails` FOR EACH ROW
BEGIN
declare id int;
declare stat varchar(20);
set stat='return';
select bookno into id from returndetails where returnid=new.returnid;
insert into libhistory values(id,stat);

END
