DELIMITER $$
create procedure getEmployee()
Begin
select * from employees;
end$$
DELIMITER ;
call getEmployee();

DELIMITER $$
create procedure geEmployee(IN deptname varchar(20))
Begin
select * from employees
where dept=deptname;
end$$
DELIMITER ;
call geEmployee("IT");

DELIMITER $$
create procedure getTotal(out total int)
begin
select sum(salary) into total from employees;
end$$
DELIMITER ;
Drop procedure if exists getTotal;

set @total=0;
call getTotal(@total);
select @total as totalsal;

DELIMITER $$
create procedure getname(in id int,out empname varchar(20))
begin
select name into empname from employees
where emp_id=id;
end$$
DELIMITER ;
set @name="";
call getname(3,@name);
select @name as output;

select * from authors;
Drop procedure if exists gettitle;
DELIMITER $$
create procedure gettitle(in id int,out titlename varchar(20))
begin
select Title into titlename from authors
where authorid=id;
end$$
Delimiter ;

set @title="";
call gettitle(103,@title);
select @title as title_name;

DELIMITER //
create procedure getAuth(out authname varchar(20))
begin
select authorname into authname from authors
where authorid=102;
end//
delimiter ;

set @authname="";
call getAuth(@authname);
select @authname as author;
drop procedure getAuthId;
delimiter //
create procedure getAuthId(inout authname varchar(20))
begin
DECLARE inputName VARCHAR(20);
SET inputName = authname;
select authorid into authname from authors
where authorname=inputName;
end//
delimiter ;
set @autname='Kingusa';
call getAuthId(@autname);
select @autname as output;