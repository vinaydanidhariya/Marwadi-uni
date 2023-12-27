-- 10 Write a function that returns balance for given account number.

-- CREATE TABLE ACCOUNT ( ACCOUNT_NO NUMBER, BALANCE NUMBER);
-- INSERT INTO ACCOUNT VALUES (123,6000);

CREATE OR REPLACE FUNCTION BANK (M_ACNO IN NUMBER)
RETURN NUMBER
IS
    M_BAL   ACCOUNT.BALANCE%TYPE;
BEGIN
    SELECT BALANCE INTO M_BAL FROM ACCOUNT WHERE ACCOUNT_NO = M_ACNO;
    RETURN M_BAL;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END;
/


-- SQL> @ 'C:\xampp\htdocs\Marwadi-uni\SQL\PL SQL AND PROCEDURE FUNCTION\10.SQL'

-- Function created.

-- SQL> execute :num:=bank(123);

-- PL/SQL procedure successfully completed.

-- SQL> print num;

--        NUM
-- ----------
--       6000