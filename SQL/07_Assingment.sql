-- -- * ASSIGNMENT – 7 *
drop table DEPARTMENT;

drop table LOCATION;

drop table E_JOB;

drop table EMPLOYEE;

--  Create the Following Tables:
-- 1. Create LOCATION Table with columns Location_Id, Regional_Group.
-- Constraints on LOCATION table: Location_Id Primary Key.
CREATE TABLE
    LOCATION (
        LOCATION_ID NUMBER (3) PRIMARY KEY,
        REGIONAL_GROUP VARCHAR2 (10)
    );

-- 2. Insert the following records into the table LOCATION:
-- LOCATION_ID REGIONAL_GROUP
-- ------------- ------------------------------
-- 122 NEW YORK
-- 123 DALLAS
-- 124 CHICAGO
-- 167 BOSTON
INSERT INTO
    LOCATION
VALUES
    (122, 'NEW YORK');

INSERT INTO
    LOCATION
VALUES
    (123, 'DALLAS');

INSERT INTO
    LOCATION
VALUES
    (124, 'CHICAGO');

INSERT INTO
    LOCATION
VALUES
    (167, 'BOSTON');

-- 3. Create DEPARTMENT Table with columns Department_Id, Name,
-- Location_ID.
-- Constraints on DEPARTMENT table: Department_Id Primary Key, Location_Id
-- references LOCATION table.
CREATE TABLE
    DEPARTMENT (
        DEPARTMENT_ID NUMBER (2) PRIMARY KEY,
        NAME VARCHAR2 (10),
        LOCATION_ID NUMBER (3) REFERENCES LOCATION (LOCATION_ID)
    );

-- 4. Insert the following records into DEPARTMENT table:
-- DEPRATMENT_ID NAME LOCATION_ID
-- ------------------------ --------------------- ---------------------
-- 10 ACCOUNTING 122
-- 20 RESEARCH 124
-- 30 SALES 123
-- 40 OPERATIONS 167
INSERT INTO
    DEPARTMENT
VALUES
    (10, 'ACCOUNTING', 122);

INSERT INTO
    DEPARTMENT
VALUES
    (20, 'RESEARCH', 124);

INSERT INTO
    DEPARTMENT
VALUES
    (30, 'SALES', 123);

INSERT INTO
    DEPARTMENT
VALUES
    (40, 'OPERATIONS', 167);

-- 5. Create JOB Table with columns Job_Id, Funcation.
-- Constraints on JOB table: Job_ID Primary Key.
CREATE TABLE
    E_JOB (
        JOB_ID NUMBER (3) PRIMARY KEY,
        FUNCTION VARCHAR2 (11)
    );

-- 6. Insert the following records into JOB table:
-- JOB_ID FUNCTION
-- ------------------ -------------------
-- 667 CLERK
-- 668 STAFF
-- 669 ANALYST
-- 670 SALESPERSON
-- 671 MANAGER
-- 672 PRESIDENT
INSERT INTO
    E_JOB
VALUES
    (667, 'CLERK');

INSERT INTO
    E_JOB
VALUES
    (668, 'STAFF');

INSERT INTO
    E_JOB
VALUES
    (669, 'ANALYST');

INSERT INTO
    E_JOB
VALUES
    (670, 'SALESPERSON');

INSERT INTO
    E_JOB
VALUES
    (671, 'MANAGER');

INSERT INTO
    E_JOB
VALUES
    (672, 'PRESIDENT');

-- Create EMPLOYEE Table with columns Employee_Id, Last_Name, First_Name,
-- Middle_Name, Job_Id, Manager_Id, Hire_Date, Salary, Comm, Department_ID.
-- Constraints on EMPLOYEE table: Employee_Id Primary Key, Last_Name
-- NotNull, Department_Id references DEPARTMENT table,Job_id references JOB
-- TABLE.
CREATE TABLE EMPLOYEE (
    EMPLOYEE_ID NUMBER(4) CONSTRAINTS employee_id_p_key PRIMARY KEY,
    LAST_NAME VARCHAR2(10) NOT NULL,
    FIRST_NAME VARCHAR2(10),
    MIDDLE_NAME CHAR(1),
    JOB_ID NUMBER(3) CONSTRAINTS job_id_f_key REFERENCES JOB(JOB_ID),
    MANAGER_ID NUMBER(4),
    HIRE_DATE DATE,
    SALARY NUMBER(4),
    COMM NUMBER(3),
    DEPARTMENT_ID NUMBER(2) CONSTRAINTS department_id_f_key REFERENCES DEPARTMENT(DEPARTMENT_ID)
);

-- Table created.
-- 8. Insert the following records into EMPLOYEE table:
-- EMPLOYEE_ID LAST_NAME FIRST_NAME MIDDLE_NAME JOB_ID MANAGER_ID   HIRE_DATE SALARY    COMM   DEPARTMENT_ID
-- - ------- ------- ----- ----- ------- ------- ------ --- ------
-- 7369         SMITH     JOHN          Q        667    7902        17-DEC-84   800     NULL   20
-- 7499         ALLEN     KEVIN          J       670    7698        20-FEB-85   1600    300    30
-- 7505         DOYLE     JEAN          K        671    7839        04-APR-85   2850    NULL   30
-- 7506         DENNIS    LYNN          S        671    7839        15-MAY-85   2750    NULL   30
-- 7507         BAKER     LESLIE        D        671    7839        10-JUN-85   2200    NULL   40
-- 7521         WARK      CYNTHIA       D        670    7698        22-FEB-85   1250    500    30
INSERT INTO
    EMPLOYEE
VALUES
    (
        7369,
        'SMITH',
        'JOHN',
        'Q',
        667,
        7902,
        '17-DEC-84',
        800,
        NULL,
        20
    );

INSERT INTO
    EMPLOYEE
VALUES
    (
        7499,
        'ALLEN',
        'KEVIN',
        'J',
        670,
        7698,
        '20-FEB-85',
        1600,
        300,
        30
    );

INSERT INTO
    EMPLOYEE
VALUES
    (
        7505,
        'DOYLE',
        'JEAN',
        'K',
        671,
        7839,
        '04-APR-85',
        2850,
        NULL,
        30
    );

INSERT INTO
    EMPLOYEE
VALUES
    (
        7506,
        'DENNIS',
        'LYNN',
        'S',
        671,
        7839,
        '15-MAY-85',
        2750,
        NULL,
        30
    );

INSERT INTO
    EMPLOYEE
VALUES
    (
        7507,
        'BAKER',
        'LESLIE',
        'D',
        671,
        7839,
        '10-JUN-85',
        2200,
        NULL,
        40
    );

INSERT INTO
    EMPLOYEE
VALUES
    (
        7521,
        'WARK',
        'CYNTHIA',
        'D',
        670,
        7698,
        '22-FEB-85',
        1250,
        500,
        30
    );

-- 1 row created.
--  Perform the following queries on the above given table:
-- 1. List all job details.
SELECT
    *
FROM
    E_JOB;

--     JOB_ID FUNCTION
-- ---------- -----------
--        667 CLERK
--        668 STAFF
--        669 ANALYST
--        670 SALESPERSON
--        671 MANAGER
--        672 PRESIDENT
-- 2. List all the locations.
SELECT
    *
FROM
    LOCATION;

-- LOCATION_ID REGIONAL_G
-- ----------- ----------
--         122 NEW YORK
--         123 DALLAS
--         124 CHICAGO
--         167 BOSTON
-- 3. List out first name,last_name,salary, commission for all employees.
SELECT
    FIRST_NAME,
    LAST_NAME,
    SALARY,
    COMM
FROM
    EMPLOYEE;

-- FIRST_NAME LAST_NAME      SALARY       COMM
-- ---------- ---------- ---------- ----------
-- JOHN       SMITH             800
-- KEVIN      ALLEN            1600        300
-- JEAN       DOYLE            2850
-- LYNN       DENNIS           2750
-- LESLIE     BAKER            2200
-- CYNTHIA    WARK             1250        500
-- 4. List out employee_id,last_name,department_id for all employees and
-- rename employee_id as “ID of the employee”, last_name as “Name of the
-- employee”, department_id as “department ID”.
SELECT
    employee_id as "ID of the employee",
    last_name as "Name of the employee",
    department_id as "department ID",
    COMM
FROM
    EMPLOYEE;

-- ID of the employee Name of the employee department ID       COMM
-- ------------------ ----------            ------------- ----------
--               7369     SMITH                 20
--               7499     ALLEN                 30          300
--               7505     DOYLE                 30
--               7506     DENNIS                30
--               7507     BAKER                 40
--               7521     WARK                  30          500
-- 6 rows selected.
-- 5. List out the employee’s annual salary with their names only.
SELECT
    EMPLOYEE_ID,
    LAST_NAME,
    FIRST_NAME,
    MIDDLE_NAME,
    SALARY * 12 AS "ANNUAL_SALARY"
FROM
    EMPLOYEE;

-- EMPLOYEE_ID LAST_NAME  FIRST_NAME M ANNUAL_SALARY
-- ----------- ---------- ---------- - -------------
--        7369 SMITH      JOHN       Q          9600
--        7499 ALLEN      KEVIN      J         19200
--        7505 DOYLE      JEAN       K         34200
--        7506 DENNIS     LYNN       S         33000
--        7507 BAKER      LESLIE     D         26400
--        7521 WARK       CYNTHIA    D         15000
-- 6 rows selected.
-- 6. List out the employees who are working in department 20.
SELECT
    *
FROM
    EMPLOYEE
where
    DEPARTMENT_ID = 20;

-- EMPLOYEE_ID LAST_NAME  FIRST_NAME M     JOB_ID MANAGER_ID HIRE_DATE     SALARY       COMM DEPARTMENT_ID
-- ----------- ---------- ---------- - ---------- ---------- --------- ---------- ---------- -------------
--        7369 SMITH      JOHN       Q        667       7902 17-DEC-84        800                       20
-- 7. List out the employees who are earning salary between 1000 and 2000.
SELECT
    *
FROM
    EMPLOYEE
where
    SALARY BETWEEN 1000 AND 2000;

--     EMPLOYEE_ID LAST_NAME  FIRST_NAME M     JOB_ID MANAGER_ID HIRE_DATE     SALARY       COMM DEPARTMENT_ID
-- ----------- ---------- ---------- - ---------- ---------- --------- ---------- ---------- -------------
--        7499 ALLEN      KEVIN      J        670       7698 20-FEB-85       1600        300            30
--        7521 WARK       CYNTHIA    D        670       7698 22-FEB-85       1250        500            30
-- 8. List out the employees who are working in department 10 or 20.
SELECT
    *
FROM
    EMPLOYEE
where
    DEPARTMENT_ID IN (10, 20);

-- EMPLOYEE_ID LAST_NAME  FIRST_NAME M     JOB_ID MANAGER_ID HIRE_DATE     SALARY       COMM DEPARTMENT_ID
-- ----------- ---------- ---------- - ---------- ---------- --------- ---------- ---------- -------------
--        7369 SMITH      JOHN       Q        667       7902 17-DEC-84        800                       20
-- 9. List out the employees whose name starts with “S”.
SELECT
    *
FROM
    EMPLOYEE
where
    Last_Name LIKE 'S%';

-- EMPLOYEE_ID LAST_NAME  FIRST_NAME M     JOB_ID MANAGER_ID HIRE_DATE     SALARY       COMM DEPARTMENT_ID
-- ----------- ---------- ---------- - ---------- ---------- --------- ---------- ---------- -------------
--        7369 SMITH      JOHN       Q        667       7902 17-DEC-84        800                       20
-- 10. List out the employees whose name length is 5 and start with “S”
SELECT
    *
FROM
    EMPLOYEE
where
    -- here four _ _ _ _ underscore are there
    Last_Name LIKE 'S____';

-- EMPLOYEE_ID LAST_NAME  FIRST_NAME M     JOB_ID MANAGER_ID HIRE_DATE     SALARY       COMM DEPARTMENT_ID
-- ----------- ---------- ---------- - ---------- ---------- --------- ---------- ---------- -------------
--        7369 SMITH      JOHN       Q        667       7902 17-DEC-84        800                       20
-- 11. List out the employee id, last name in ascending order based on the employee id.
SELECT
    EMPLOYEE_ID,
    LAST_NAME
FROM
    EMPLOYEE
ORDER BY
    EMPLOYEE_ID;

-- EMPLOYEE_ID LAST_NAME
-- ----------- ----------
--        7369 SMITH
--        7499 ALLEN
--        7505 DOYLE
--        7506 DENNIS
--        7507 BAKER
--        7521 WARK
-- 6 rows selected.
-- 12. List out the employee id, name in descending order based on salary column.
SELECT
    EMPLOYEE_ID,
    LAST_NAME
FROM
    EMPLOYEE
ORDER BY
    SALARY;

-- EMPLOYEE_ID LAST_NAME
-- ----------- ----------
--        7369 SMITH
--        7521 WARK
--        7499 ALLEN
--        7507 BAKER
--        7506 DENNIS
--        7505 DOYLE
-- 6 rows selected.
-- 13. List out the employee details according to their last_name in ascending order and
-- salaries in descending order.
SELECT
    *
FROM
    EMPLOYEE
ORDER BY
    LAST_NAME asc,
    SALARY desc;

-- EMPLOYEE_ID LAST_NAME  FIRST_NAME M     JOB_ID MANAGER_ID HIRE_DATE     SALARY       COMM DEPARTMENT_ID
-- ----------- ---------- ---------- - ---------- ---------- --------- ---------- ---------- -------------
--        7499 ALLEN      KEVIN      J        670       7698 20-FEB-85       1600        300            30
--        7507 BAKER      LESLIE     D        671       7839 10-JUN-85       2200                       40
--        7506 DENNIS     LYNN       S        671       7839 15-MAY-85       2750                       30
--        7505 DOYLE      JEAN       K        671       7839 04-APR-85       2850                       30
--        7369 SMITH      JOHN       Q        667       7902 17-DEC-84        800                       20
--        7521 WARK       CYNTHIA    D        670       7698 22-FEB-85       1250        500            30
-- 6 rows selected.
-- 14. List out the employee details according to their last_name in ascending order and
-- then on department_id in descending order.
SELECT
    *
FROM
    EMPLOYEE
ORDER BY
    LAST_NAME asc,
    DEPARTMENT_ID desc;

-- EMPLOYEE_ID LAST_NAME  FIRST_NAME M     JOB_ID MANAGER_ID HIRE_DATE     SALARY       COMM DEPARTMENT_ID
-- ----------- ---------- ---------- - ---------- ---------- --------- ---------- ---------- -------------
--        7499 ALLEN      KEVIN      J        670       7698 20-FEB-85       1600        300            30
--        7507 BAKER      LESLIE     D        671       7839 10-JUN-85       2200                       40
--        7506 DENNIS     LYNN       S        671       7839 15-MAY-85       2750                       30
--        7505 DOYLE      JEAN       K        671       7839 04-APR-85       2850                       30
--        7369 SMITH      JOHN       Q        667       7902 17-DEC-84        800                       20
--        7521 WARK       CYNTHIA    D        670       7698 22-FEB-85       1250        500            30
-- 6 rows selected.
-- 15. How many employees who are working in different departments wise in the
-- organization.
SELECT
    COUNT(*) AS EMPLOYEES,
    DEPARTMENT_ID
FROM
    EMPLOYEE
GROUP BY
    DEPARTMENT_ID;

--  EMPLOYEES DEPARTMENT_ID
-- ---------- -------------
--          4            30
--          1            20
--          1            40
-- 16. List out the department wise maximum salary, minimum salary, average salary of
-- the employees.
SELECT
    DEPARTMENT_ID,
    MAX(SALARY),
    MIN(SALARY),
    AVG(SALARY)
FROM
    EMPLOYEE
GROUP BY
    DEPARTMENT_ID;

-- DEPARTMENT_ID MAX(SALARY) MIN(SALARY) AVG(SALARY)
-- ------------- ----------- ----------- -----------
--            30        2850        1250      2112.5
--            20         800         800         800
--            40        2200        2200        2200
-- 17. List out the department id having at least four employees.
SELECT
    DEPARTMENT_ID
FROM
    EMPLOYEE
GROUP BY
    DEPARTMENT_ID
HAVING
    COUNT(*) >= 4;

-- DEPARTMENT_ID
-- -------------
--            30
-- 18. How many employees in JUNE month.
SELECT
    *
FROM
    EMPLOYEE
WHERE
    TRIM(TO_CHAR (HIRE_DATE, 'MONTH')) = 'JUNE';

-- EMPLOYEE_ID LAST_NAME  FIRST_NAME M     JOB_ID MANAGER_ID HIRE_DATE     SALARY       COMM DEPARTMENT_ID
-- ----------- ---------- ---------- - ---------- ---------- --------- ---------- ---------- -------------
--        7507 BAKER      LESLIE     D        671       7839 10-JUN-85       2200                       40
-- 19. Display the employee who got the maximum salary.
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY = (
        SELECT
            MAX(SALARY)
        FROM
            EMPLOYEE
    );

-- EMPLOYEE_ID LAST_NAME  FIRST_NAME M     JOB_ID MANAGER_ID HIRE_DATE     SALARY       COMM DEPARTMENT_ID
-- ----------- ---------- ---------- - ---------- ---------- --------- ---------- ---------- -------------
--        7505 DOYLE      JEAN       K        671       7839 04-APR-85       2850                       30
-- 20. Display the employees who are working in Sales department.
SELECT
    *
FROM
    EMPLOYEE
WHERE
    DEPARTMENT_ID = 30;

-- EMPLOYEE_ID LAST_NAME  FIRST_NAME M     JOB_ID MANAGER_ID HIRE_DATE     SALARY       COMM DEPARTMENT_ID
-- ----------- ---------- ---------- - ---------- ---------- --------- ---------- ---------- -------------
--        7499 ALLEN      KEVIN      J        670       7698 20-FEB-85       1600        300            30
--        7505 DOYLE      JEAN       K        671       7839 04-APR-85       2850                       30
--        7506 DENNIS     LYNN       S        671       7839 15-MAY-85       2750                       30
--        7521 WARK       CYNTHIA    D        670       7698 22-FEB-85       1250        500            30
-- 21. Display the employees who are working as “Clerk”.
SELECT
    *
FROM
    EMPLOYEE
WHERE
    JOB_ID = 667;

-- 22. Find out no. of employees working in “Sales” department.
SELECT
    COUNT(*)
FROM
    EMPLOYEE
WHERE
    DEPARTMENT_ID = 30;

-- 23. List our employees with their department names.
SELECT
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    E.LAST_NAME,
    D.NAME AS DEPARTMENT_NAME
FROM
    EMPLOYEE E
    INNER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- OLD SYNTAX
SELECT
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    E.LAST_NAME,
    D.NAME AS DEPARTMENT_NAME
FROM
    EMPLOYEE E,
    DEPARTMENT D
WHERE
    E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- EMPLOYEE_ID FIRST_NAME LAST_NAME  DEPARTMENT
-- ----------- ---------- ---------- ----------
--        7369 JOHN       SMITH      RESEARCH
--        7499 KEVIN      ALLEN      SALES
--        7505 JEAN       DOYLE      SALES
--        7506 LYNN       DENNIS     SALES
--        7507 LESLIE     BAKER      OPERATIONS
--        7521 CYNTHIA    WARK       SALES
-- 6 rows selected.
-- 24. Display employees with their designations (jobs).
SELECT
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    E.LAST_NAME,
    J.FUNCTION AS JOB_TITLE
FROM
    EMPLOYEE E
    INNER JOIN E_JOB J ON E.JOB_ID = J.JOB_ID;

-- OLD SYNTAX
SELECT
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    E.LAST_NAME,
    J.FUNCTION AS JOB_TITLE
FROM
    EMPLOYEE E,
    E_JOB J
WHERE
    E.JOB_ID = J.JOB_ID;

-- EMPLOYEE_ID FIRST_NAME LAST_NAME  JOB_TITLE
-- ----------- ---------- ---------- -----------
--        7369 JOHN       SMITH      CLERK
--        7521 CYNTHIA    WARK       SALESPERSON
--        7499 KEVIN      ALLEN      SALESPERSON
--        7507 LESLIE     BAKER      MANAGER
--        7506 LYNN       DENNIS     MANAGER
--        7505 JEAN       DOYLE      MANAGER
-- 6 rows selected.