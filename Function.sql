SET SERVEROUTPUT ON;

CREATE FUNCTION LPA(E NUMBER)
RETURN NUMBER IS
TOTAL NUMBER;
BEGIN
SELECT SALARY INTO TOTAL FROM EMPLOYEES WHERE EMPLOYEE_ID=E;
TOTAL := TOTAL*12;
RETURN TOTAL;
END;


DECLARE 
SAL EMPLOYEES.SALARY%TYPE;
ID EMPLOYEES.EMPLOYEE_ID%TYPE := &X;
NAME EMPLOYEES.FIRST_NAME%TYPE;
C NUMBER;
BEGIN
C:=LPA(ID);
SELECT FIRST_NAME INTO NAME FROM EMPLOYEES WHERE EMPLOYEE_ID=ID;
DBMS_OUTPUT.PUT_LINE('TOTAL LPA OF ' || NAME || ' --> ' || ID || ' IS ' || C);
END;
/
