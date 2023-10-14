-- Assignment – 06
-- Table Name: Employee
-- Emp_no Emp_name  Emp_street      Emp_city
-- E1     Riya      Ring road-11    Rajkot
-- E2     Shital    CG Raod-02      Ahmedabad
-- E3     Harshid   Boriwali-05     Jamnagar
-- E4     Janak     HJ Road-16      Pune
-- E5     Naman     Mira Nager-20   Mumbai
-- Q1. Create above table.
CREATE TABLE
    Employee (
        Emp_no varchar2 (2),
        Emp_name varchar2 (10),
        Emp_street varchar2 (20),
        Emp_city varchar2 (10)
    );

-- Q2. Insert given data into table.
INSERT INTO
    Employee
values
    ('E1', 'Riya', 'Ring road-11', 'Rajkot');

INSERT INTO
    Employee
values
    ('E2', 'Shital', 'CG Raod-02', 'Ahmedabad');

INSERT INTO
    Employee
values
    ('E3', 'Harshid', 'Boriwali-05', 'Jamnagar');

INSERT INTO
    Employee
values
    ('E4', 'Janak', 'HJ Road-16', 'Pune');

INSERT INTO
    Employee
values
    ('E5', 'Naman', 'Mira Nager-20', 'Mumbai');

-- 1 row created.
-- Q3. Display Emp_no from employee table.
SELECT
    Emp_no
FROM
    Employee;

-- EM
-- --
-- E1
-- E2
-- E3
-- E4
-- E5
-- Q4. Display Emp_name from employee table.
SELECT
    Emp_name
FROM
    Employee;

-- EMP_NAME
-- ----------
-- Riya
-- Shital
-- Harshid
-- Janak
-- Naman
-- Q5. Display Emp_street from employee.
SELECT
    Emp_street
FROM
    Employee;

-- EMP_STREET
-- --------------------
-- Ring road-11
-- CG Raod-02
-- Boriwali-05
-- HJ Road-16
-- Mira Nager-20
-- Q6. Display Employee_city.
SELECT
    Emp_city
FROM
    Employee;

-- EMP_CITY
-- ----------
-- Rajkot
-- Ahmedabad
-- Jamnagar
-- Pune
-- Mumbai
-- Q7. Display Employee_no and Emp_name.
SELECT
    Emp_no,
    Emp_name
FROM
    Employee;

-- EM EMP_NAME
-- -- ----------
-- E1 Riya
-- E2 Shital
-- E3 Harshid
-- E4 Janak
-- E5 Naman
-- Q8. Display Emp_street and Emp_city of all employee.
SELECT
    Emp_street,
    Emp_city
FROM
    Employee;

-- EMP_STREET           EMP_CITY
-- -------------------- ----------
-- Ring road-11         Rajkot
-- CG Raod-02           Ahmedabad
-- Boriwali-05          Jamnagar
-- HJ Road-16           Pune
-- Mira Nager-20        Mumbai
-- Q9. Display all information about employee.
SELECT
    *
FROM
    Employee;

-- EM EMP_NAME   EMP_STREET           EMP_CITY
-- -- ---------- -------------------- ----------
-- E1 Riya       Ring road-11         Rajkot
-- E2 Shital     CG Raod-02           Ahmedabad
-- E3 Harshid    Boriwali-05          Jamnagar
-- E4 Janak      HJ Road-16           Pune
-- E5 Naman      Mira Nager-20        Mumbai
-- Q10. Display employee who belongs to Mira Nager-20.
SELECT
    *
FROM
    Employee
WHERE
    EMP_STREET = 'Mira Nager-20';

-- EM EMP_NAME   EMP_STREET           EMP_CITY
-- -- ---------- -------------------- ----------
-- E5 Naman      Mira Nager-20        Mumbai
-- Q11. Display Employee who belongs to Rajkot.
SELECT
    *
FROM
    Employee
WHERE
    emp_city = 'Rajkot';

-- EM EMP_NAME   EMP_STREET           EMP_CITY
-- -- ---------- -------------------- ----------
-- E1 Riya       Ring road-11         Rajkot
-- Q12. Display Emp_name of employee who belongs to Ahmedabad.
SELECT
    Emp_name
FROM
    Employee
WHERE
    emp_city = 'Ahmedabad';

-- EMP_NAME
-- ----------
-- Shital
-- Q13. Display employee having emp_id=2=e2.
SELECT
    *
FROM
    Employee
WHERE
    emp_no = 'E2';

-- EM EMP_NAME   EMP_STREET           EMP_CITY
-- -- ---------- -------------------- ----------
-- E2 Shital     CG Raod-02           Ahmedabad
-- Q14. Change the emp_id=1 of the employee who belongs to Rajkot.
UPDATE Employee
SET
    emp_no = '1'
WHERE
    emp_city = 'Rajkot';

-- 1 row updated.
-- Q15. Change emp_id=2 of employee who belongs to Mira Nager-20.
UPDATE Employee
SET
    emp_no = '2'
WHERE
    emp_street = 'Mira Nager-20';

-- 1 row updated.
-- Q16. Change emp_id=3 of employee whose emp_name is Shital.
UPDATE Employee
SET
    emp_no = '3'
WHERE
    emp_name = 'Shital';

-- 1 row updated.
-- Q18. Change emp_id=4 of employee whose emp_name is Janak.
UPDATE Employee
SET
    emp_no = '4'
WHERE
    emp_name = 'Janak';

-- 1 row updated.
-- Q19. Change emp_id=5 of employee whose emp_city=Jamnagar.
UPDATE Employee
SET
    emp_no = '5'
WHERE
    emp_city = 'Jamnagar';

-- 1 row updated.
-- Q20.Change emp_city = Mandvi of employee whose name is Janak.
UPDATE Employee
SET
    emp_city = 'Mandvi'
WHERE
    emp_name = 'Janak';

-- 1 row updated.
-- Q21. Add new Column State into Employee table.
ALTER TABLE Employee Add State VARCHAR2 (15);

-- Table altered.
-- Q22. Add column ph_no of employee.
ALTER TABLE Employee Add ph_no NUMBER (10);

-- Table altered.
-- Q23. Add new column salary into employee table.
ALTER TABLE Employee Add salary number (8);

-- Table altered.
-- Q24. Insert salary=2000 whose emp_name=’Riya’.
UPDATE Employee
SET
    salary = 2000
WHERE
    emp_name = 'Riya';

-- 1 row updated.
-- Q25. Insert salary=5000 whose emp_id=2.
UPDATE Employee
SET
    salary = 5000
WHERE
    emp_no = '2';

-- 1 row updated.
-- Q26. Insert salary=52000 whose emp_id=3.
UPDATE Employee
SET
    salary = 52000
WHERE
    emp_no = '3';

-- 1 row updated.
-- Q27. Insert salary=89000 whose emp_street=mira nager.
UPDATE Employee
SET
    salary = 89000
WHERE
    emp_street = 'Mira Nager-20';

-- 1 row updated.
-- Q28. Insert salary=1500 whose emp_id=4.
UPDATE Employee
SET
    salary = 1500
WHERE
    emp_no = '4';

-- 1 rows updated.
-- Q30. Change emp_city=’banglor’ whose salary more than 60000.
UPDATE Employee
SET
    emp_city = 'banglor'
WHERE
    salary > 60000;

-- 1 row updated.
-- Q31. Create new table emp_detail from Employee.
CREATE TABLE
    emp_detail as
select
    *
from
    Employee;

-- Table created.
-- Q32. Rename employee table by EMP.
RENAME Employee to EMP;

-- Table renamed.
-- Q33. Delete information of employee whose salary more than 60000.
DELETE emp
where
    salary > 60000;

-- 1 row deleted.
-- Q34. Delete column ph_no from EMP.
ALTER TABLE EMP
DROP COLUMN ph_no;

-- *
-- ERROR at line 1:
-- ORA-12988: cannot drop column from table owned by SYS
-- Table altered.
-- Q36.Disvribe structure of emp_detail.
-- Q35. Describe structure of EMP.
--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  EMP_NO                                             VARCHAR2(2)
--  EMP_NAME                                           VARCHAR2(10)
--  EMP_STREET                                         VARCHAR2(20)
--  EMP_CITY                                           VARCHAR2(10)
--  STATE                                              VARCHAR2(20)
--  SALARY                                             NUMBER(20)
-- Q37. Display employee in sorted order by emp_name.
SELECT
    *
FROM
    emp
order by
    emp_name;

--     EM EMP_NAME   EMP_STREET           EMP_CITY   STATE        SALARY
-- -- ---------- -------------------- ---------- --------------- ----------
-- 5  Harshid    Boriwali-05          Jamnagar
-- 4  Janak      HJ Road-16           Mandvi                      1500
-- 1  Riya       Ring road-11         Rajkot                      2000
-- 3  Shital     CG Raod-02           Ahmedabad                   52000
-- Q38. Display employee in sorted order bt city.
SELECT
    *
FROM
    emp
order by
    emp_city;

--     EM EMP_NAME   EMP_STREET           EMP_CITY   STATE        SALARY
-- -- ---------- -------------------- ---------- --------------- ---------- ----------
-- 3  Shital     CG Raod-02           Ahmedabad                  52000
-- 5  Harshid    Boriwali-05          Jamnagar
-- 4  Janak      HJ Road-16           Mandvi                     1500
-- 1  Riya       Ring road-11         Rajkot                     2000
-- Q39.Display employee in sorted order by salary.
SELECT
    Emp_no,
    EMP_NAME,
    EMP_STREET,
    EMP_CITY,
    STATE,
    SALARY
FROM
    emp
order by
    salary;

--     EM EMP_NAME   EMP_STREET           EMP_CITY   STATE               SALARY
-- -- ---------- -------------------- ---------- --------------- ----------
-- 4  Janak      HJ Road-16           Mandvi                           1500
-- 1  Riya       Ring road-11         Rajkot                           2000
-- 3  Shital     CG Raod-02           Ahmedabad                       52000
-- 5  Harshid    Boriwali-05          Jamnagar
-- Q40. Drop table emp_detail.
DROP TABLE emp_detail;
-- Table dropped.