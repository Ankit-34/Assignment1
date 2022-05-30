set serveroutput on;
DECLARE    
num number; 
BEGIN     
num:=&num;
for k in 1..7 loop
	dbms_output.put_line(num);
	num:=num+5;
end loop;
END;  