SET SERVEROUTPUT ON;

DECLARE

CURSOR C IS
SELECT FIRST_NAME, DEPARTMENT_ID FROM EMPLOYEES
WHERE EMPLOYEE_ID=150;

EMP C%ROWTYPE;

BEGIN

OPEN C;
FETCH C INTO EMP;
DBMS_OUTPUT.PUT_LINE(EMP.FIRST_NAME);
DBMS_OUTPUT.PUT_LINE(EMP.DEPARTMENT_ID);
END;
