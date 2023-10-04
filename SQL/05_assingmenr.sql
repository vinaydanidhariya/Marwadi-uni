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

OUTPUT: Table created.-- 2. Insert the following data into the CUSTOMER table:
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
-- 6. Set the PIN CODE equal 476001 where CUST_NO=1004.

-- 7. Change the ADDRESS as “KAVI MUDDANNA MARG” AND PIN=576104 where CUST_NO=1003.
UPDATE CUSTOMER SET ADDRESS='KAVI MUDDANNA MARG',PIN=576104 WHERE CUST_NO=1003;

-- 8. Delete the records of KARNATAKA state from the table and then retrieve all the records
-- back.
DELETE CUSTOMER WHERE  STATE='KARNATAKA';
-- 2 rows deleted.
RALLBACK;

-- Rollback complete.

SELECT * FROM CUSTOMER;

-- 9. List all the records for INVALID (‘I’) persons.
SELECT * FROM CUSTOMER WHERE STATUS='I';
-- 10. Select all the records with single occurrence (without duplication) of state from the table.
SELECT DISTINCT(state) FROM CUSTOMER; 

STATE
--------------------
KERALA
KARNATAKA
GOA
-- 11. Sort and display the customer data, in the alphabetic order of state.
SELECT * FROM CUSTOMER ORDER BY STATE; 
-- 12. Sort and display the state field in the in descending order.
SELECT * FROM CUSTOMER ORDER BY STATE; 
-- 13. Select the records of KARNATAKA customers who are valid (‘V’).

-- 14. Retrieve records of Karnataka / Kerala customers.
-- 15. Retrieve records of Karnataka / Kerala customers who are ACTIVE (‘A’).
-- 16. Retrieve records of Karnataka customers with pin code 576201.
-- 17. Display all the rows from the table except 1005.
-- 18. Retrieve rows where the state name begins with K and following by any other character.
-- 19. Retrieve rows where name contains the word RAJ embedded it.
-- 20. Display all the row who’s CUST_NO is from 1003 to 1005.
-- 21. Display all the rows whose dates are in the range of 10-JAN-70 and 31-JUL-96.
-- 22. Retrieve all the rows where city column equals to UDP or MNG or BNG or PGN.
-- 23. Rename customer table to CUST.