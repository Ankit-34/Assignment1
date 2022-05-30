set serveroutput on;
declare
	my_id try.id%type;
	my_age try.age%type;
	cursor c is select id,age from try;
begin
	open c;
	loop
		fetch c into my_id,my_age;
	exit when c%notfound;
	dbms_output.put_line(my_id || ' ' || my_age);
	end loop;
	close c;
end;