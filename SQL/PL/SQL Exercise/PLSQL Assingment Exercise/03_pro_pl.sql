-- Write a function that calculates the binary value for the given number.
CREATE
OR REPLACE PROCEDURE PBIN(N NUMBER,BINVAL OUT NUMBER) 
IS
BEGIN 
    WHILE (N > 0) LOOP BINVAL := MOD(N, 2) || BINVAL;

    N := TRUNC(n / 2);

    END LOOP;
END; 
/

SET SERVEROUT OFF
SET FEEDBACE ON 
SET VERIFY ON