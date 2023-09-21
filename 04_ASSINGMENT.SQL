-- Branch_id Branch_name   Branch_Address      Branch_City      Branch_State     Branch_Open_Date
-- B001      BOI            Jagnath Road             Rajkot                  Gujarat         22-mar-2015
-- B002      SBI            Boriwali Road             Mumbai                  Maharashtra     12-jan-2000
-- B003      HDFC              Agra Road           Agra               U.P             04-feb-1998
-- B004      Dena Bank         CG Road             Ahmedabad            Gujarat         20-sep-2012
-- B005      ICICI             Majavdi Road         Junagadh        Gujarat         07-may-2011
-- Bank_Branch
-- Q1. Create above table with name Bank_Branch.
CREATE TABLE Bank_Branch(
    Branch_id varchar2(4),
    Branch_name varchar2(30),
    Branch_Address varchar2(255),
    Branch_City varchar2(15),
    Branch_State varchar2(15),
    Branch_Open_Date Date
);

-- Q2. Insert given information into a table.
INSERT INTO
    Bank_Branch(
        Branch_id,
        Branch_name,
        Branch_Address,
        Branch_City,
        Branch_State,
        Branch_Open_Date
    )
VALUES
    (
        '&Branch_id',
        '&Branch_name',
        '&Branch_Address',
        '&Branch_City',
        '&Branch_State',
        '&Branch_Open_Date'
    );

-- Q3. Display all information of Bank_Branch.
SELECT
    *
FROM
    Bank_Branch;

-- Q4. Display Branch_id of branch.
SELECT
    Branch_id
from
    Bank_Branch;

-- Q5. Display Branch_name of Branch table.
SELECT
    Branch_name
from
    Bank_Branch;

-- Q6. Display Branch_address of branch.
SELECT
    Branch_address
from
    Bank_Branch;

-- Q7. Display Branch_city of branch.
SELECT
    Branch_city
from
    Bank_Branch;

-- Q8. Display Branch_state of branch.
SELECT
    Branch_state
from
    Bank_Branch;

-- Q9. Display Branch_open_date of branch.
SELECT
    Branch_open_date
from
    Bank_Branch;

-- Q10. Display Branch_name and Branch_open_date of branch.
SELECT
    Branch_open_date,
    Branch_open_date
from
    Bank_Branch;

-- Q11. Display Branch_id and Branch_address from Branch.
SELECT
    Branch_id,
    Branch_address
from
    Bank_Branch;

-- Q12. Display Branch_name, Branch_addess and Branch_city from branch table.
SELECT
    Branch_name,
    Branch_Address,
    Branch_city
from
    Bank_Branch;

-- Q13. Display Branch_city, Branch_state and Branch_open_date from Branch.
SELECT
    Branch_city,
    Branch_state,
    Branch_open_date
from
    Bank_Branch;

-- Q14. Sort table by Branch_id.
SELECT
    *
from
    Bank_Branch
order by
    Branch_id;

-- Q15. Sort table by Branch_name.
SELECT
    *
from
    Bank_Branch
order by
    Branch_name;

-- Q16. Sort table by Branch_city.
SELECT
    *
from
    Bank_Branch
order by
    Branch_city;

-- Q17. Sort table by Branch_state.
SELECT
    *
from
    Bank_Branch
order by
    Branch_state;

-- Q18. Change the size of Branch_state column.
ALTER TABLE
    Bank_Branch
MODIFY
    (Branch_state varchar2(50));

ALTER TABLE
    Bank_Branch
ALTER COLUMN
    Branch_state varchar2(50);

-- Q19. Change the branch_name=’Union’ where id=B003.
UPDATE
    Bank_Branch
SET
    branch_name = 'Union'
WHERE
    Branch_id = 'B003';

-- Q20. Change the state=’Delhi’ of BOI branch.
UPDATE
    Bank_Branch
SET
    branch_state = 'Delhi'
WHERE
    branch_name = 'BOI';

-- Q21. Change the branch_open_date=04-nov-2015 of Union branch.
UPDATE
    Bank_Branch
SET
    branch_open_date = '04-nov-2015'
WHERE
    branch_name = 'Union';

-- Q22. Add column Pincode in branch.
ALTER TABLE
    Bank_Branch
ADD COLUMN pincode number(6);

-- Q23. Insert pincode=360006 of Dena Bank.
UPDATE
    TABLE Bank_Branch
SET
    pincode = 360006
WHERE
    branch_name = 'Dena Bank';

-- Q24. Insert pincode=360005 of state Delhi.
UPDATE
    TABLE Bank_Branch
SET
    pincode = 360005
WHERE
    Branch_State = 'Delhi';

-- Q25. Delete information of ICICI.
DELETE TABLE Bank_Branch
WHERE
    branch_name = 'ICIC';

-- Q26. Delete information of Branch having branch_open_date=07-may-2011.
DELETE TABLE Bank_Branch
WHERE
    branch_open_date = '07-may-2011';

-- Q27. Rename table Bank_Branch to Branch_master.
ALTER TABLE
    Bank_Branch RENAME TABLE Branch_master;

-- Q28. Display structure of Branch_master.
DESC Branch_master;

-- Q29. Create Banch_info from Branch_master.
CREATE TABLE Banch_info AS
SELECT
    *
FROM
    Branch_master;

-- Q30. Create Branch_detail from Branch_info.
CREATE TABLE Branch_detail as
SELECT
    *
FROM
    Branch_info;