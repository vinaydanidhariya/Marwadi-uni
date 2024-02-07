-- 2 Write a program to calculate the square and cube of the given number.
-- Write a program that accepts a value from the user then print that value with and 
-- without using third variable.



SET SERVEROUTPUT ON
-- cspell:ignore
EXEC DBMS_OUTPUT.ENABLE;

-- ACCEPT V1 PROMPT "ENTER FIRST NUMBER: "
-- ACCEPT V2 PROMPT "ENTER SECOND NUMBER: "

-- DECLARE
--     V1 NUMBER(9);
--     V2 NUMBER(9);
-- BEGIN
--     V1 := &V1;
--     V2 := &V2;
--     DBMS_OUTPUT.PUT_LINE('Sum of the two numbers is: ' || V2+V1 || '.');
-- END;
/



-- Write a program that accepts a value from the user then print that value with and 
-- without using third variable.

-- ACCEPT V1 PROMPT "ENTER FIRST NUMBER: "
-- ACCEPT V2 PROMPT "ENTER SECOND NUMBER: "

-- DECLARE
--     V1 NUMBER(9);
--     V2 NUMBER(9);

-- BEGIN
--     V1 := &V1;
--     V2 := &V2;
--     DBMS_OUTPUT.PUT_LINE('Sum of the two numbers is: ' || V2+V1 || '.');
-- END;
-- /


DECLARE
    -- Declare variables
    num1 NUMBER;
    num2 NUMBER;
BEGIN
    -- Accept values from the user
    DBMS_OUTPUT.PUT_LINE('Enter the first number:');
    num1 := TO_NUMBER(&&num1);

    DBMS_OUTPUT.PUT_LINE('Enter the second number:');
    num2 := TO_NUMBER(&&num2);

    -- Display original values
    DBMS_OUTPUT.PUT_LINE('Original values:');
    DBMS_OUTPUT.PUT_LINE('First number: ' || num1);
    DBMS_OUTPUT.PUT_LINE('Second number: ' || num2);

    -- Swap values without using a third variable
    num1 := num1 + num2;
    num2 := num1 - num2;
    num1 := num1 - num2;

    -- Display swapped values
    DBMS_OUTPUT.PUT_LINE('Swapped values without using a third variable:');
    DBMS_OUTPUT.PUT_LINE('First number: ' || num1);
    DBMS_OUTPUT.PUT_LINE('Second number: ' || num2);
END;
/
