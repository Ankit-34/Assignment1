create table emp as (select * from employee);
alter table emp add stars varchar2(50);

set serveroutput on
declare
	s emp.emp_sal%type;
	id emp.emp_no%type; 
	c number;
	str emp.stars%type;
begin
	select emp_no,emp_sal into id,s from emp where emp_no=1018;
	c:=mod(s,1000);
	if c=0 then
	c:=s/1000;
	loop
		str:=str||'*';
		c:=c-1;
		exit when c<1;
	end loop;
	end if;	
	update emp set stars=str where emp_no=id;
end;