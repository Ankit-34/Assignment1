create table emp as  
select * from employee;

alter table emp   
add stars varchar2(50);


--PL/SQL query

declare

salary emp.emp_sal%type;
star emp.stars%type;
counter number:=0;

begin

select emp_sal,stars 
into salary,star
from emp
where emp_name='Aman';

counter:=salary/1000;

if mod(salary,1000)!=0
then
	counter:=counter+1;
else
	counter:=counter;
end if;

loop
	star:=star||'*';
	counter:=counter-1;
	exit when counter<1;


end loop;

update emp
set stars=star
where emp_name='Aman';

dbms_output.put_line(star);

end;
