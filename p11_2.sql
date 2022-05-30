DECLARE
S1 varchar2(20); S2 varchar2(20); l NUMBER;
BEGIN
S1:= '&S1';
l := Length(S1); WHILE l>0 LOOP
S2 := S2 || Substr(S1, l, 1); l:=l-1;
END LOOP;
dbms_output.Put_line('Reverse String: ' || S2);
IF S2 = S1 THEN
dbms_output.Put_line( S1 ||' is a Palindrome');
ELSE

dbms_output.Put_line( S1 ||' is not a Palindrome');
END IF;
END;
