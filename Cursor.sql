SET SERVEROUTPUT ON;
DECLARE
NAME VARCHAR(30);
JOB VARCHAR(30);
SAL NUMBER;
CURSOR C(S NUMBER) IS
SELECT FIRST_NAME,JOB_ID,SALARY FROM EMPLOYEES
WHERE SALARY < S;

BEGIN

OPEN C(5000);
LOOP
    FETCH C INTO NAME,JOB,SAL;
    EXIT WHEN C%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(NAME || '    ' || JOB || '    ' || SAL);
END LOOP;
CLOSE C;
END;
