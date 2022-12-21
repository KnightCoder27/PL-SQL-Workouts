ALTER TABLE EMPLOYEES
ADD PACKAGE NUMBER;

CREATE PROCEDURE ANNUM_PACKAGE(LPA NUMBER, ID NUMBER)
IS
BEGIN
UPDATE EMPLOYEES SET PACKAGE = LPA 
WHERE EMPLOYEE_ID = ID;
END;

SET SERVEROUTPUT ON;
DECLARE 
ID EMPLOYEES.EMPLOYEE_ID%TYPE := &X;
C NUMBER;
BEGIN
C:=LPA(ID);
--DBMS_OUTPUT.PUT_LINE(C);
ANNUM_PACKAGE(C,ID);
DBMS_OUTPUT.PUT_LINE('INSERTED SUCCESSFULLY');
END;
/
