-- 6 Write a simple procedure without any parameter that updates the values in the EMP 
-- table.

 SET SERVEROUTPUT ON;
 SET VERIFY ON;
 SET FEEDBACK ON; 

CREATE OR REPLACE 
PROCEDURE update_emp
IS
BEGIN
    UPDATE emp SET sal = sal + 1000;
    DBMS_OUTPUT.PUT_LINE('SALERY UPDATED..');
    COMMIT;
END;
/

-- execute update_emp;
-- SALERY UPDATED..
-- PL/SQL procedure successfully completed.
