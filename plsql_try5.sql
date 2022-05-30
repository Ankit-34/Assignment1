set serveroutput on;
declare
	a try.age%type;
	n try.name%type;
	cursor this is select name,age from try where id>5;
begin
	open this;
	loop 
		fetch this into n,a;
		exit when this%notfound;
		dbms_output.put_line('Name is : ' || n || ' and age is : ' || a);
	end loop;
end;
/
		