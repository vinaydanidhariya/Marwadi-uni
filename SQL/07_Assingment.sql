-- -- * ASSIGNMENT – 7 *
--  Create the Following Tables:
-- 1. Create LOCATION Table with columns Location_Id, Regional_Group.
-- Constraints on LOCATION table: Location_Id Primary Key.
CREATE TABLE LOCATION(
    LOCATION_ID NUMBER(3) PRIMARY KEY,
    REGIONAL_GROUP VARCHAR2(10)
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
CREATE TABLE DEPARTMENT(
    DEPARTMENT_ID NUMBER(2) PRIMARY KEY,
    NAME VARCHAR2(10),
    LOCATION_ID NUMBER(3) REFERENCES LOCATION(LOCATION_ID)
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
CREATE TABLE JOB(
    JOB_ID NUMBER(3) PRIMARY KEY,
    FUNCTION VARCHAR2(10)
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
    JOB
VALUES
    (667, 'CLERK');

INSERT INTO
    JOB
VALUES
    (668, 'STAFF');

INSERT INTO
    JOB
VALUES
    (669, 'ANALYST');

INSERT INTO
    JOB
VALUES
    (670, 'SALESPERSON');

INSERT INTO
    JOB
VALUES
    (671, 'MANAGER');

INSERT INTO
    JOB
VALUES
    (672, 'PRESIDENT');

-- Create EMPLOYEE Table with columns Employee_Id, Last_Name, First_Name,
-- Middle_Name, Job_Id, Manager_Id, Hire_Date, Salary, Comm, Department_ID.
-- Constraints on EMPLOYEE table: Employee_Id Primary Key, Last_Name
-- NotNull, Department_Id references DEPARTMENT table,Job_id references JOB
-- TABLE.
CREATE TABLE EMPLOYEE (
    EMPLOYEE_ID NUMBER(4) PRIMARY KEY,
    LAST_NAME VARCHAR2(10) NOT NULL,
    FIRST_NAME VARCHAR2(10),
    MIDDLE_NAME CHAR(1),
    JOB_ID NUMBER(3) REFERENCES JOB(JOB_ID),
    MANAGER_ID NUMBER(4),
    HIRE_DATE DATE,
    SALARY NUMBER(4),
    COMM NUMBER(3),
    DEPARTMENT_ID NUMBER(20) REFERENCES DEPARTMENT(DEPARTMENT_ID)
);

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
        671 7839,
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

--  Perform the following queries on the above given table:
-- 1. List all job details.
-- 2. List all the locations.
-- 3. List out first name,last_name,salary, commission for all employees.
-- 4. List out employee_id,last_name,department_id for all employees and
-- rename employee_id as “ID of the employee”, last_name as “Name of the
-- employee”, department_id as “department ID”.
-- 5. List out the employee’s annual salary with their names only.
-- 6. List out the employees who are working in department 20.
-- 7. List out the employees who are earning salary between 3000 and 4500.
-- 8. List out the employees who are working in department 10 or 20.
-- 9. List out the employees whose name starts with “S”.
-- 10. List out the employees whose name length is 4 and start with “S”
-- M.U. M.C.A.
-- Semester - I
-- 05MC0105 – RDBMS
-- * ASSIGNMENT – 7 *
-- Compiled and Prepared By: Dr. Jaypalsinh A. Gohil - 3 -
-- 11. List out the employee id, last name in ascending order based on the employee id.
-- 12. List out the employee id, name in descending order based on salary column.
-- 13. List out the employee details according to their last_name in ascending order and
-- salaries in descending order.
-- 14. List out the employee details according to their last_name in ascending order and
-- then on department_id in descending order.
-- 15. How many employees who are working in different departments wise in the
-- organization.
-- 16. List out the department wise maximum salary, minimum salary, average salary of
-- the employees.
-- 17. List out the department id having at least four employees.
-- 18. How many employees in January month.
-- 19. Display the employee who got the maximum salary.
-- 20. Display the employees who are working in Sales department.
-- 21. Display the employees who are working as “Clerk”.
-- 22. Find out no. of employees working in “Sales” department.
-- 23. List our employees with their department names.
-- 24. Display employees with their designations (jobs).