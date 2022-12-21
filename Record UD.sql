SET SERVEROUTPUT ON;

DECLARE

TYPE DPT IS RECORD(
    NAME  VARCHAR2(20),
    D DEPARTMENTS.DEPARTMENT_NAME%TYPE
    );
    V DPT;

BEGIN

SELECT FIRST_NAME,DEPARTMENT_NAME INTO V.NAME, V.D
FROM EMPLOYEES JOIN DEPARTMENTS USING (DEPARTMENT_ID) WHERE EMPLOYEE_ID=100;

DBMS_OUTPUT.PUT_LINE(V.NAME ||' ' || V.D);

END;