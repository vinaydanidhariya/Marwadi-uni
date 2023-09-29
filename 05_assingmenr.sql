ASSIGNMENT - 5 -- 1. Create the following table named table as CUSTOMER:
-- COLUMN NAME DATATYPES SIZE DESCIPTION
-- CUST_NO NUMBER 4 PRIMARY KEY
-- FIRST_NAME VARCHAR2 20 NOT NULL
-- LAST_NAME VARCHAR2 20 -
-- ADDRESS VARCHAR2 20 -
-- CITY VARCHAR2 8 -
-- STATE VARCHAR2 20 -
-- PIN VARCHAR2 6 -
-- B_DATE DATE - -
-- STATUS CHAR 1 VALUES MUST BE IN (‘V’,’I’,’A’)
CREATE TABLE CUSTOMER (
    CUST_NO NUMBER(4) CONSTRAINT CUST_PK PRIMARY KEY,
    FIRST_NAME VARCHAR2(20) NOT NULL,
    LAST_NAME VARCHAR2(20),
    ADDRESS VARCHAR2(20),
    CITY VARCHAR2(8),
    STATE VARCHAR2(20),
    PIN VARCHAR2(6),
    B_DATE DATE,
    STATUS CHAR(1) CHECK (STATUS IN ('V', 'I', 'A'))
);

-- OUTPUT: Table created.
-- 2. Insert the following data into the CUSTOMER table:
-- 1003 RAJ BAHADUR SHANTI VILLA UDP KARNATAKA 576101 1-AUG-70 V
-- 1004 FELIX SIMON M-J-56 PJM GOA 403002 12-FEB-71 A
-- 1005 RAJAN KUTTY A1 TRADERS KNR KERALA 670001 9-JUN-71 A
-- 1006 SHILPA PAI 12/4B MNG KARNATAKA 574154 11-DEC-70 I
-- 1007 BOSCO RAKSHIT R.K. PLAZA BNG KARNATAKA 576201 1-JAN-71 A
INSERT INTO
    CUSTOMER
VALUES
    (
        & CUST_NO,
        '&FIRST_NAME',
        '&LAST_NAME',
        '&ADDRESS',
        "&CITY",
        '&STATE',
        '&PIN',
        '&B_DATE',
        '&STATUS'
    );

INSERT INTO
    CUSTOMER
VALUES
    (
        1003,
        'RAJ',
        'BAHADUR',
        'SHANTI VILLA',
        'UDP',
        'KARNATAKA',
        '576101',
        '1-AUG-70',
        'V'
    );

INSERT INTO
    CUSTOMER
VALUES
    (
        1004,
        'FELIX',
        'SIMON',
        'M-J-56',
        'PJM',
        'GOA',
        '403002',
        '12-FEB-71',
        'A'
    );

INSERT INTO
    CUSTOMER
VALUES
    (
        1005,
        'RAJAN',
        'KUTTY',
        'A1 TRADERS',
        'KNR',
        'KERALA',
        '670001',
        '9-JUN-71',
        'A'
    );

INSERT INTO
    CUSTOMER
VALUES
    (
        1006,
        'SHILPA',
        'PAI',
        '12/4B',
        'MNG',
        'KARNATAKA',
        '574154',
        '11-DEC-70',
        'I'
    );

INSERT INTO
    CUSTOMER
VALUES
    (
        1007,
        'BOSCO',
        'RAKSHIT',
        'R.K. PLAZA',
        'BNG',
        'KARNATAKA',
        '576201',
        '1-JAN-71',
        'A'
    );

-- 4. Display all the records from the table where state is KARNATAKA.
SELECT
    *
from
    CUSTOMER WHERE STATE='KARNATAKA';

-- 5. Delete the row from the table where PIN CODE is 576201.
DELETE CUSTOMER WHERE PIN=576201;
-- 1 row deleted.

-- 6. Set the PIN CODE equal to 476001 where CUST_NO=1004.
UPDATE CUSTOMER SET PIN='476001' WHERE CUST_NO=1004;
-- 1 row updated.

-- 7. Change the ADDRESS as “KAVI MUDDANNA MARG” AND PIN=576104 where CUST_NO=1003.
UPDATE CUSTOMER SET ADDRESS='KAVI MUDDANNA MARG',PIN=576104 WHERE CUST_NO=1003;
-- 1 row updated.

-- 8. Delete the records of KARNATAKA state from the table and then retrieve all the records back.
DELETE CUSTOMER WHERE  STATE='KARNATAKA';
-- 2 rows deleted.
ROLLBACK;
-- Rollback complete.

SELECT * FROM CUSTOMER;

-- 9. List all the records for INVALID (‘I’) persons.
SELECT * FROM CUSTOMER WHERE STATUS='I';

-- 10. Select all the records with single occurrence (without duplication) of state from the table.
SELECT DISTINCT(STATE) FROM CUSTOMER; 

-- STATE
-- --------------------
-- KERALA
-- KARNATAKA
-- GOA

-- 11. Sort and display the customer data, in the alphabetic order of state.
SELECT * FROM CUSTOMER ORDER BY STATE;  

-- 12. Sort and display the state field in descending order.
SELECT * FROM CUSTOMER ORDER BY STATE DESC;

-- 13. Select the records of KARNATAKA customers who are valid ('V').
SELECT * FROM CUSTOMER WHERE STATE = 'KARNATAKA' AND STATUS = 'V';
-- no rows selected

-- 14. Retrieve records of Karnataka / Kerala customers.
SELECT * FROM CUSTOMER WHERE STATE IN ('KARNATAKA', 'KERALA');

--    CUST_NO FIRST_NAME           LAST_NAME            ADDRESS
-- ---------- -------------------- -------------------- --------------------
-- CITY     STATE                PIN    B_DATE    S
-- -------- -------------------- ------ --------- -
--       1005 RAJAN                KUTTY                A1 TRADERS
-- KNR      KERALA               670001 09-JUN-71 A

--       1006 SHILPA               PAI                  12/4B
-- MNG      KARNATAKA            574154 11-DEC-70 I

--       1007 BOSCO                RAKSHIT              R.K. PLAZA
-- BNG      KARNATAKA            576201 01-JAN-71 A

-- 15. Retrieve records of Karnataka / Kerala customers who are ACTIVE ('A').
SELECT * FROM CUSTOMER WHERE STATE IN ('KARNATAKA', 'KERALA') AND STATUS = 'A';
--  CUST_NO FIRST_NAME           LAST_NAME            ADDRESS
-- ---------- -------------------- -------------------- --------------------
-- CITY     STATE                PIN    B_DATE    S
-- -------- -------------------- ------ --------- -
--       1005 RAJAN                KUTTY                A1 TRADERS
-- KNR      KERALA               670001 09-JUN-71 A

--       1007 BOSCO                RAKSHIT              R.K. PLAZA
-- BNG      KARNATAKA            576201 01-JAN-71 A


-- 16. Retrieve records of Karnataka customers with pin code 576201.
SELECT * FROM CUSTOMER WHERE STATE = 'KARNATAKA' AND PIN = '576201';
--  CUST_NO FIRST_NAME           LAST_NAME            ADDRESS
-- ---------- -------------------- -------------------- --------------------
-- CITY     STATE                PIN    B_DATE    S
-- -------- -------------------- ------ --------- -
--       1007 BOSCO                RAKSHIT              R.K. PLAZA
-- BNG      KARNATAKA            576201 01-JAN-71 A

-- 17. Display all the rows from the table except 1005.
SELECT * FROM CUSTOMER WHERE CUST_NO != 1005;
--    CUST_NO FIRST_NAME           LAST_NAME            ADDRESS
-- ---------- -------------------- -------------------- --------------------
-- CITY     STATE                PIN    B_DATE    S
-- -------- -------------------- ------ --------- -
--       1004 FELIX                SIMON                M-J-56
-- PJM      GOA                  403002 12-FEB-71 A

--       1006 SHILPA               PAI                  12/4B
-- MNG      KARNATAKA            574154 11-DEC-70 I

--       1007 BOSCO                RAKSHIT              R.K. PLAZA
-- BNG      KARNATAKA            576201 01-JAN-71 A


-- 18. Retrieve rows where the state name begins with K and followed by any other character.
SELECT * FROM CUSTOMER WHERE STATE LIKE 'K%';

--    CUST_NO FIRST_NAME           LAST_NAME            ADDRESS
-- ---------- -------------------- -------------------- --------------------
-- CITY     STATE                PIN    B_DATE    S
-- -------- -------------------- ------ --------- -
--       1005 RAJAN                KUTTY                A1 TRADERS
-- KNR      KERALA               670001 09-JUN-71 A

--       1006 SHILPA               PAI                  12/4B
-- MNG      KARNATAKA            574154 11-DEC-70 I

--       1007 BOSCO                RAKSHIT              R.K. PLAZA
-- BNG      KARNATAKA            576201 01-JAN-71 A


-- 19. Retrieve rows where the name contains the word RAJ embedded in it.
SELECT * FROM CUSTOMER WHERE (FIRST_NAME || ' ' || LAST_NAME) LIKE '%RAJ%';

-- CUST_NO FIRST_NAME           LAST_NAME            ADDRESS
-- ---------- -------------------- -------------------- --------------------
-- CITY     STATE                PIN    B_DATE    S
-- -------- -------------------- ------ --------- -
--       1005 RAJAN                KUTTY                A1 TRADERS
-- KNR      KERALA               670001 09-JUN-71 A


-- 20. Display all the rows whose CUST_NO is from 1003 to 1005.
SELECT * FROM CUSTOMER WHERE CUST_NO BETWEEN 1003 AND 1005;
--  CUST_NO FIRST_NAME           LAST_NAME            ADDRESS
-- ---------- -------------------- -------------------- --------------------
-- CITY     STATE                PIN    B_DATE    S
-- -------- -------------------- ------ --------- -
--       1004 FELIX                SIMON                M-J-56
-- PJM      GOA                  403002 12-FEB-71 A

--       1005 RAJAN                KUTTY                A1 TRADERS
-- KNR      KERALA               670001 09-JUN-71 A

-- 21. Display all the rows whose dates are in the range of 10-JAN-70 and 31-JUL-96.
SELECT * FROM CUST where B_DATE between to_date('15-JAN-70') and to_date('17-JUL-96');
-- 22. Retrieve all the rows where the city column equals to UDP or MNG or BNG or PGN.

--    CUST_NO FIRST_NAME           LAST_NAME            ADDRESS              CITY     STATE                PIN    B_DATE    S
-- ---------- -------------------- -------------------- -------------------- -------- -------------------- ------ --------- -
--       1004 FELIX                SIMON                M-J-56               PJM      GOA                  403002 12-FEB-71 A
--       1005 RAJAN                KUTTY                A1 TRADERS           KNR      KERALA               670001 09-JUN-71 A
--       1006 SHILPA               PAI                  12/4B                MNG      KARNATAKA            574154 11-DEC-70 I
--       1007 BOSCO                RAKSHIT              R.K. PLAZA           BNG      KARNATAKA            576201 01-JAN-71 A

SELECT * FROM CUSTOMER WHERE CITY IN ('UDP', 'MNG', 'BNG', 'PGN');

--    CUST_NO FIRST_NAME           LAST_NAME            ADDRESS              CITY     STATE                PIN    B_DATE    S
-- ---------- -------------------- -------------------- -------------------- -------- -------------------- ------ --------- -
--       1006 SHILPA               PAI                  12/4B                MNG      KARNATAKA            574154 11-DEC-70 I
--       1007 BOSCO                RAKSHIT              R.K. PLAZA           BNG      KARNATAKA            576201 01-JAN-71 A

-- 23. Rename customer table to CUST.
ALTER TABLE CUSTOMER RENAME TO CUST;
-- Table altered.
