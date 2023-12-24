
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


-- SQL> @ 'C:\xampp\htdocs\Marwadi-uni\SQL\PL SQL AND PROCEDURE FUNCTION\08.sql'

-- Procedure created.

-- SQL> VAR EMPNAME VARCHAR2(200);
-- SQL> EXECUTE exist_emp(7369,:EMPNAME)

-- PL/SQL procedure successfully completed.

-- SQL> PRINT EMPNAME

-- EMPNAME
-- --------------------------------------------------------------------------------
-- SMITH


-- not found case
-- EXECUTE exist_emp(739,:EMPNAME)
-- EMPLOYEE NOT FOUND...