CREATE DEFINER = CURRENT_USER TRIGGER `library`.`issuedetails_AFTER_INSERT` AFTER INSERT ON `issuedetails` FOR EACH ROW
BEGIN
declare id int;
declare stat varchar(20);
set stat='issue';
select bookno into id from issuedetails where issueid=new.issueid;
insert into libhistory values(id,stat);
END