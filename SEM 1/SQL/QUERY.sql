-- INSERT QUERY
INSERT INTO
    CUST_MASTER (ID, NAME, ITEM, PRICE, CITY, STATE, PINCODE)
VALUES
    (
        & ID,
        & NAME,
        & ITEM,
        & PRICE,
        & CITY,
        & STATE,
        & PINCODE
    );

-- SELECT QUERY
SELECT
    table_name,
    owner
FROM
    dba_tables;

CREATE TABLE Cust_master (
    Cust_no varchar2(2),
    Cust_name varchar2(7),
    Address1 varchar2(50),
    Address2 varchar2(50),
    City varchar2(10),
    State varchar2(15),
    Ph_no number(10)
);

INSERT INTO
    Cust_master
VALUES
    (
        '&CUST_No',
        '&Cust_name',
        '&Address1',
        '&Address2',
        '&city',
        '&state',
        & phone_numebr
    );


