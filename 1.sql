create database lab;
use lab;
DELIMITER //
CREATE procedure addnum()
BEGIN
DECLARE a int;
DECLARE b INT;
DECLARE c INT;
SET a=10;
SET b=20;
SET c=a+b;
SELECT CONCAT('sum=',c);
END// 
DELIMITER;
call addnum();

