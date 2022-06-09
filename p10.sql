set serveroutput on;
DECLARE
	year number;
begin 
	year:=&year;
	IF MOD(year,4)=0 and MOD(year,100)!=0 or MOD(year,400)=0 then 
		dbms_output.put_line(year|| ' is a leap year');
	else
		dbms_output.put_line(year|| ' is not a leap year');
	end if;
end;
