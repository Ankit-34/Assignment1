SIMPLE LOOP:


DECLARE
str1 VARCHAR2(10); str2 VARCHAR2(20); l NUMBER;
BEGIN
str1:='&str1'; l:=Length(str1); LOOP
str2:=str2||Substr(str1,l,1); l:=l-1;
EXIT WHEN l=0; END LOOP;
IF str2=str1 THEN dbms_output.put_line('It is a palindrome'); ELSE
dbms_output.put_line('It is not a palindrome'); END IF;
END;
