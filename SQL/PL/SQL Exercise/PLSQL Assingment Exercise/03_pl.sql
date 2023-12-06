-- Write a function that calculates the binary value for the given number.

DECLARE
    N NUMBER(4);
    BINARY NUMBER(4);
    REMAINDER NUMBER(4);
BEGIN
    N:=&N;
    WHILE N>0 LOOP
        REMAINDER:=MOD(N,2);
        BINARY:=BINARY*10+REMAINDER;
        N:=N/2;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('BINARY VALUE IS '||BINARY);
END;
/