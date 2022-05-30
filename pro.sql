create or replace procedure p(n in out number)
is
begin
	n:=n+10;
	dbms_output.put_line('Entered Number is : ' || n);
end;
/