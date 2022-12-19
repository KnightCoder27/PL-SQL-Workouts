set SERVEROUTPUT on;
declare
high number := 100;
sal  employees.salary%type;
e employees.employee_id%type;

begin
select employee_id into e from employees where employee_id=high;
while e is not null loop
    select salary into sal from employees where employee_id=high;
    if sal>=7000 then
        dbms_output.put_line(high ||' Salary is good');
    else
         dbms_output.put_line(high ||' Salary is not bad');
    end if;
    high:=high+1;
end loop;
EXCEPTION
   WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('END');
end;
/
