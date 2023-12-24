-- 9 Write a function that returns the square of the given number. Execute this function
-- using separate PL/SQL block and also without using PL/SQL block on command line.
CREATE FUNCTION CUBE1(NUM NUMBER)
RETURN NUMBER
AS 
    SQ NUMBER;
BEGIN
    SQ := NUM * NUM;
    RETURN SQ; 
END;
/

DECLARE 
    NUM NUMBER;
BEGIN
    NUM := &NUM; 
    NUM := CUBE1(NUM);
    DBMS_OUTPUT.PUT_LINE(NUM);
END;
/

-- Enter value for num: 5
-- 25

-- PL/SQL procedure successfully completed.