-- NAME VINAY DANIDHARIYA
-- ROLL NO 33
-- CLASS A
-- DIVISION MCA 1
-- ENROLLMENT NO 92300584033

-- SET – 1
-- Q1. Create Following Tables with minimum 5 appropriate records.

-- CUSTOMER (cno, cust_name, cust_phone, location,gender)
DROP TABLE CUSTOMERL;
DROP TABLE ITEM;
DROP TABLE CUST_ITEM;


CREATE TABLE CUSTOMER (
    CNO NUMBER(5) PRIMARY KEY,
    CUST_NAME VARCHAR2(20),
    CUST_PHONE NUMBER(10),
    LOCATION VARCHAR2(20),
    GENDER VARCHAR2(1)
);
 
INSERT INTO CUSTOMER VALUES (1, 'VINAY', 1234567890, 'AHMADABAD', 'M');
INSERT INTO CUSTOMER VALUES (2, 'RAHUL', 1234567890, 'RAJKOT', 'M');
INSERT INTO CUSTOMER VALUES (3, 'SUMIT', 1234567890, 'SURAT', 'M');
INSERT INTO CUSTOMER VALUES (4, 'PUNIT', 1234567890, 'VADODARA', 'M');
INSERT INTO CUSTOMER VALUES (5, 'JAY', 1234567890, 'AHMADABAD', 'M');

-- ITEM (itemno, itemname, color, weight, expire_date, price)
CREATE TABLE ITEM (
    ITEMNO NUMBER(5) PRIMARY KEY,
    ITEMNAME VARCHAR2(20),
    COLOR VARCHAR2(20),
    WEIGHT NUMBER(5),
    EXPIRE_DATE DATE,
    PRICE NUMBER(10)
);

INSERT INTO ITEM VALUES (1, 'MOBILE', 'BLACK', 100, '12-aug-02', 30000);
INSERT INTO ITEM VALUES (2, 'LAPTOP', 'BLUE', 200, '11-nov-03', 100000);
INSERT INTO ITEM VALUES (3, 'TV', 'WHITE', 300, '10-oct-04', 75000);
INSERT INTO ITEM VALUES (4, 'FRIDGE', 'RED', 400, '09-dec-05', 55000);
INSERT INTO ITEM VALUES (5, 'AC', 'GREEN', 500, '08-dec-06', 60000);

-- CUST_ITEM (cno, itemno, quantity_purchased)
CREATE TABLE CUST_ITEM (
    CNO NUMBER(5) PRIMARY KEY,
    ITEMNO NUMBER(5) REFERENCES ITEM(ITEMNO),
    QUANTITY_PURCHASED NUMBER(5)
);

INSERT INTO CUST_ITEM VALUES (1, 1, 10);
INSERT INTO CUST_ITEM VALUES (2, 2, 20);
INSERT INTO CUST_ITEM VALUES (3, 3, 30);
INSERT INTO CUST_ITEM VALUES (4, 4, 40);
INSERT INTO CUST_ITEM VALUES (5, 5, 50);

-- 1. After creation of above tables, modify Item table by adding the constraints
-- that color of item should be black, blue, white, red and green and display the
-- structure.
ALTER TABLE ITEM ADD CONSTRAINT CHECK (COLOR IN ('BLACK', 'BLUE', 'WHITE', 'RED', 'GREEN'));

-- Table altered.

-- 2. Delete the items whose price is more than 50000.
DELETE FROM ITEM WHERE PRICE > 50000;

-- 3. Display the names of all the items whose names lies between ‘p’ and ‘s’.
select * from item where itemname LIKE 'A%' OR itemname LIKE 'F%';

--     ITEMNO ITEMNAME             COLOR                    WEIGHT EXPIRE_DA      PRICE
-- ---------- -------------------- -------------------- ---------- --------- ----------
--          4 FRIDGE               RED                         400 09-DEC-05      55000
--          5 AC                   GREEN                       500 08-DEC-06      60000

-- 4. Find the item which is having less weight.
SELECT * FROM ITEM WHERE WEIGHT = (SELECT MIN(WEIGHT) FROM ITEM);

--     ITEMNO ITEMNAME             COLOR                    WEIGHT EXPIRE_DA      PRICE
-- ---------- -------------------- -------------------- ---------- --------- ----------
--          1 MOBILE               BLACK                       100 12-AUG-02      30000

-- 5. Add one month more to those items whose itemno =4.
UPDATE ITEM SET EXPIRE_DATE = (SELECT ADD_MONTHS(EXPIRE_DATE, 1) FROM ITEM WHERE ITEMNO = 4) 
WHERE ITEMNO=4;
-- 1 row updated.

-- Create a PL/SQL block which will return count total items which will going to expire
-- in current month
SET SERVEROUTPUT ON;

DECLARE 
    COUNT1 NUMBER;
BEGIN
    SELECT COUNT(*) INTO COUNT1 FROM ITEM WHERE 
    TO_CHAR(EXPIRE_DATE ,'MON')= TO_CHAR(SYSDATE,'MON');
    DBMS_OUTPUT.PUT_LINE('TOTAL ITEMS EXPIRE IN NEXT 30 DAYS: ' || COUNT1);
END;
/

-- output
-- TOTAL ITEMS EXPIRE IN NEXT 30 DAYS: 2

-- PL/SQL procedure successfully completed.












