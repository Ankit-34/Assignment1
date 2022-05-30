set serveroutput on;
declare
	num employee.emp_no%type;
	idd employee.emp_no%type;
	cursor c is select emp_no from employee;
begin
	open c;
	num:=&num;
	loop
		fetch c into idd;
		exit when c%notfound;
		if num=idd then
			change(idd);
		end if;
	end loop;
end;
/