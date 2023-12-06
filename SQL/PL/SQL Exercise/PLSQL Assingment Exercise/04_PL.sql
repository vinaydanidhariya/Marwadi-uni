-- Write a procedure which takes temperature in Fahrenheit and show it in Celsius.
SET SERVEROUTPUT ON;
DECLARE
    F NUMBER(4);
    C NUMBER(4);
BEGIN
    F:=&F;
    C:=(F-32)*5/9;
    DBMS_OUTPUT.PUT_LINE('TEMPERATURE IN CELSIUS IS '||C);
END;
/


-- Enter value for f: 65
-- old   5:     F:=&F;
-- new   5:     F:=65;
-- TEMPERATURE IN CELSIUS IS 18