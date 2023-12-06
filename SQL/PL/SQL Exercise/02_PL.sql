-- Write a PL/SQL block to show the name of employee for given employee number.

DECLARE
    E_ID NUMBER(4);
    E_NAME VARCHAR2(20);
BEGIN
    E_ID:=&E_ID;
    SELECT EMP_NAME INTO E_NAME FROM EMPLOYEE WHERE EMP_NO=E_ID;
    DBMS_OUTPUT.PUT_LINE('NAME OF EMPLOYEE IS '||E_NAME);
END;
/

-- Enter value for e_id: 101
-- NAME OF EMPLOYEE IS Smith

-- PL/SQL procedure successfully completed.