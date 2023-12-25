
-- 8 Write a procedure that search‟s whether the given employee number is present or not 
-- in the table. (Use both IN and OUT mode variables) and also Write a PL/SQL block to 
-- call the SEARCH_EMP procedure.

CREATE OR REPLACE PROCEDURE exist_emp
(iempno IN NUMBER,exits OUT VARCHAR2)
IS 
BEGIN
    SELECT ename INTO exits from emp where empno=iempno;
EXCEPTION 
    WHEN OTHERS THEN
         dbms_output.put_line('EMPLOYEE NOT FOUND...');
END;
/ 

DECLARE
    ename VARCHAR2(20); 
BEGIN
    exist_emp(7934,ename);
    dbms_output.put_line('EMPLOYEE NAME IS '||ename);
END;
/

-- EMPLOYEE NAME IS MILLER
-- PL/SQL procedure successfully completed.