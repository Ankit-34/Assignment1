DECLARE
str1 VARCHAR2(10); str2 VARCHAR2(10); l NUMBER;
BEGIN
str1:='&str1'; l:=Length(str1);
FOR i IN REVERSE 1..l LOOP
str2:= str2 || Substr(str1,i,1); END LOOP;
dbms_output.put_line ('REVERSE STRING: '||str2);
IF str1=str2 THEN
dbms_output.put_line ('It is a palindrome'); ELSE
dbms_output.put_line ('It is not a palindrome'); END IF;
END;
