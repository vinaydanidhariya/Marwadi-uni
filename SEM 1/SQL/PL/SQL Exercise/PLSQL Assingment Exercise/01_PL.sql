-- Write a PL/SQL block to find the maximum of 3 numbers.
--
SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
    A NUMBER(3);
    B NUMBER(3);
    C NUMBER(3);
    MAXIMUM NUMBER(3);
BEGIN
    A := &A;
    B := &B;
    C := &C;
    
    IF A > B AND A > C THEN
        MAXIMUM := A;
    ELSIF B > A AND B > C THEN
        MAXIMUM := B;
    ELSE
        MAXIMUM := C;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('MAXIMUM OF 3 NUMBERS IS ' || MAXIMUM);
END;
/
-- Enter value for a: 1
-- Enter value for b: 2
-- Enter value for c: 32
-- MAXIMUM OF 3 NUMBERS IS 32

-- PL/SQL procedure successfully completed.