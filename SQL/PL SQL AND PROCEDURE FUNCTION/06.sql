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
    DBMS_OUTPUT.PUT_LINE('RUN update_emp PROCEDURE');
    COMMIT;
END;
/
-- PL/SQL procedure successfully completed.
