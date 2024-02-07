-- 2 Write a program to calculate the square and cube of the given number.
SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE
    num number(5);
    square number(5);
    cube number(5);
BEGIN
    num := &num;
    square := num * num;
    cube := num * num * num;
    dbms_output.put_line('Square of ' || num || ' is ' || square);
    dbms_output.put_line('Cube of ' || num || ' is ' || cube);
END;
/
-- OUTPUT
-- Enter value for num: 5
-- Square of 5 is 25
-- Cube of 5 is 125