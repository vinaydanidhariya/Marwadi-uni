-- Assignment - 3
-- Q1. Create above Table name as item_master.
-- Q2. Insert Data shown in table.
-- Q3. Select information about price,quality and item_pack_date of the item.
-- Q4. Display information about item.
-- Q5. Sort the person by quality.
-- Q6. Display type from table with distinct values.
-- Q7. Change the quality of item from good to verygood.
-- Q8. Display item having quality verygood.
-- Q9. Add new columns item_open_date into table.
-- Q10. Display all information of item having price more than 20.
-- Q11. Delete the item having price=50.
-- Q12. Rename table from person to Item_detail.
-- 1
CREATE TABLE item_master(
    Id varchar2(2),
    Name varchar2(30),
    Type varchar2(30),
    Price number(5),
    Quality varchar2(15),
    item_pack_date Date
);

-- 2
INSERT INTO
    item_master
VALUES
    (
        '&id',
        '&name',
        '&type',
        '&price',
        '&quality',
        '&item_pack_date'
    );

-- 3
SELECT
    Price,
    Quality,
    item_pack_date
FROM
    item_master;

-- 4
SELECT
    *
FROM
    item_master;

-- 5
SELECT
    *
FROM
    item_master
order by
    Quality;

-- 6
SELECT
    DISTINCT(Type)
FROM
    item_master
order by
    Quality;

-- 7 
UPDATE
    TABLE item_master
SET
    Quality = "very good"
WHERE
    Quality = "good";

-- 8 
SELECT
    *
FROM
    item_master
WHERE
    Quality = "very good";

-- 9
ALTER TABLE
    item_master
ADD
    item_open_date Date;

-- 10 
SELECT
    *
FROM
    item_master
WHERE
    Price < 20;

-- 11
DELETE FROM
    item_master
WHERE
    Price = 50;

-- 12
-- 1
ALTER TABLE
    item_master RENAME Item_detail;

-- 2
RENAME TABLE item_master TO Item_detail;