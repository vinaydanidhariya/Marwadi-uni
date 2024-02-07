-- 1 Write a program to calculate the AREA of a circle and store that value in the table.
-- area = 3.14 * r^2;

CREATE TABLE C_AREA (RADIUS NUMBER (5), AREA NUMBER (14,2));
SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;


DECLARE
    RADIUS NUMBER(5);
    AREA   NUMBER(14, 2);
BEGIN
    RADIUS := &RADIUS;
    AREA := 3.14 * RADIUS * RADIUS;
    INSERT INTO C_AREA VALUES (
        RADIUS,
        AREA
    );
    DBMS_OUTPUT.PUT_LINE('AREA OF CIRCLE IS '||AREA);
    COMMIT;
END;
/
-- OUTPUT
-- Enter value for radius: 5
-- AREA OF CIRCLE IS 78.5