-- 4 Write a program that prints value 1 to 100 numbers using FOR LOOP.
SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE 
    i number(5);
BEGIN
    FOR i IN 1..10 LOOP
        dbms_output.put_line(i);
    END LOOP;
END;
/
-- 1
-- 2
-- 3
-- 4
-- 5
-- 6
-- 7
-- 8
-- 9
-- 10


-- Write a program that prints value 1 to 100 number using LOOP Command.
DECLARE 
    i number(5);
BEGIN
    i := 1;
    LOOP
        dbms_output.put_line(i);
        i := i + 1;
        EXIT WHEN i > 10;
    END LOOP;
END;
/
-- 1
-- 2
-- 3
-- 4
-- 5
-- 6
-- 7
-- 8
-- 9
-- 10

-- Write a program that prints value 1 to 100 number using WHILE LOOP Command.
DECLARE 
    i number(5);
BEGIN
    i := 1;
    WHILE i <= 10 LOOP
        dbms_output.put_line(i);
        i := i + 1;
    END LOOP;
END;
/

-- 1
-- 2
-- 3
-- 4
-- 5
-- 6
-- 7
-- 8
-- 9
-- 10