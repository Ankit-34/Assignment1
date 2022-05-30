create or replace procedure p
(id in number, name in varchar2, age in number)
is
begin
	insert into try values(id, name, age);
end;
