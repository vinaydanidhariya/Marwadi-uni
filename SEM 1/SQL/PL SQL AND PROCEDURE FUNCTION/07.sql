
-- 7 Write a simple procedure that increases by the salary of employees for the given 
-- department no by percentage inputted by the user using IN parameter.

CREATE OR REPLACE PROCEDURE 
RAISE_SAL2 (VDEPT IN EMP.DEPTNO%TYPE, VPER IN NUMBER)
IS 
    BEGIN UPDATE EMP SET SAL = SAL + SAL*(VPER/100) WHERE DEPTNO=VDEPT; 
END;
/

-- Procedure created.


--  execute RAISE_SAL2(10,10);
-- PL/SQL procedure successfully completed.