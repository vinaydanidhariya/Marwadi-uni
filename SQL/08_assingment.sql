DROP TABLE EMPLOYEE;
DROP TABLE DEPARTMENT;
-- 1. Create the following tables:
-- EMPLOYEE (emp_id, emp_name, birth_date, gender, dept_no, address, designation, salary,
-- experience, email)
-- DEPARTMENT (dept_no, dept_name, location)

-- 2. Create the EMPLOYEE Table with all necessary constraints such as
-- In EMPLOYEE table: Employee id should be primary key, Department no should be Foreign key,
-- employee age (birth_date) should be greater than 18 years, salary should be greater than zero, email
-- should have (@ and dot) sign in address, designation of employee can be “manager”, “clerk”,
-- “leader”, “analyst”, “designer”, “coder”, “tester”.

-- 3. Create DEPARTMENT table with necessary constraint such as
-- Department no should be primary key, department name should be unique.
CREATE TABLE DEPARTMENT (
    dept_no NUMBER(2) PRIMARY KEY,
    dept_name VARCHAR2(25) UNIQUE,
    location VARCHAR2(50)
);

CREATE TABLE EMPLOYEE (
    emp_id VARCHAR2(4) PRIMARY KEY,
    emp_name VARCHAR2(20),
    birth_date DATE CONSTRAINTS chk_age CHECK (
        birth_date <= ADD_MONTHS(TO_DATE('23-10-2023', 'DD-MM-YYYY'), -216)
    ),
    gender VARCHAR2(10),
    dept_no NUMBER(2) CONSTRAINTS fk_dept REFERENCES DEPARTMENT(dept_no),
    address VARCHAR2(20),
    designation VARCHAR2(15) CONSTRAINTS chk_designation CHECK (
        designation IN (
            'MANAGER',
            'CLERK',
            'LEADER',
            'ANALYST',
            'DESIGNER',
            'CODER',
            'TESTER'
        )
    ),
    salary NUMBER(10, 2) CONSTRAINTS chk_salary CHECK (salary > 0),
    experience NUMBER(2),
    email VARCHAR2(50) CONSTRAINTS chk_email CHECK (
        INSTR(email, '@') > 0
        AND INSTR(email, '.', INSTR(email, '@')) > 0
        AND LENGTH(email) <= 50
    )
);

-- 4. After creation of above tables, modify Employee table by adding the constraints as ‘Male’ or ‘Female’
-- in gender field and display the structure.
ALTER TABLE
    EMPLOYEE
ADD
    CONSTRAINT check_gender CHECK (gender IN ('MALE', 'FEMALE'));

-- 5. Insert proper data (at least 5 appropriate records) in all the tables.
INSERT INTO DEPARTMENT VALUES('1','CIVIL','JAIPUR');
INSERT INTO DEPARTMENT VALUES('2','IT','DELHI');
INSERT INTO DEPARTMENT VALUES('3','ENGINEERING','AHMADABAD');
INSERT INTO DEPARTMENT VALUES('4','MANAGEMENT','MUMBAI');
INSERT INTO DEPARTMENT VALUES('5','HR','RAJKOT');

INSERT INTO EMPLOYEE VALUES('E1','Vinay','07-aug-2003','MALE','2','Ring Road','CODER',3000,5,'vinay@gmail.com');
INSERT INTO EMPLOYEE VALUES('E2','Rahul','08-nov-2002','MALE','4','Ram Park','MANAGER',50000,7,'rahul@gmail.com');
INSERT INTO EMPLOYEE VALUES('E3','Dhruv','09-apr-2001','MALE','2','Jamnagar Road','TESTER',30000,2,'dhruv@gmail.com');
INSERT INTO EMPLOYEE VALUES('E4','Janvi','07-jan-2003','FEMALE','2','SG Road','DESIGNER',40000,0.5,'janvi@gmail.com');
INSERT INTO EMPLOYEE VALUES('E5','Aradhya','08-feb-2004','FEMALE','2','Rail Nager Road','ANALYST',90000,3,'shivani@gmail.com');

-- 6. Describe the structure of table created
desc Employee;

--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  EMP_ID                                    NOT NULL VARCHAR2(4)
--  EMP_NAME                                           VARCHAR2(20)
--  BIRTH_DATE                                         DATE
--  GENDER                                             VARCHAR2(10)
--  DEPT_NO                                            NUMBER(2)
--  ADDRESS                                            VARCHAR2(20)
--  DESIGNATION                                        VARCHAR2(15)
--  SALARY                                             NUMBER(10,2)
--  EXPERIENCE                                         NUMBER(2)
--  EMAIL                                              VARCHAR2(50)

desc Department;
--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  DEPT_NO                                   NOT NULL NUMBER(2)
--  DEPT_NAME                                          VARCHAR2(25)
--  LOCATION                                           VARCHAR2(255)

-- 7. List all records of each table in ascending order.
SELECT * FROM Department ORDER BY dept_name ASC;
--    DEPT_NO DEPT_NAME                 LOCATION
-- ---------- ------------------------- --------------------------------------------------
--          1 CIVIL                     JAIPUR
--          3 ENGINEERING               AHMADABAD
--          5 HR                        RAJKOT
--          2 IT                        DELHI
--          4 MANAGEMENT                MUMBAI


SELECT * FROM Employee ORDER BY emp_name ASC;
-- EMP_ EMP_NAME                                           BIRTH_DAT GENDER     DEPT ADDRESS
-- ---- -------------------------------------------------- --------- ---------- ---- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- E5   Aradhya                                            08-FEB-03 FEMALE     2   Rail Nager Road
-- E3   Dhruv                                              09-APR-03 MALE       2   Jamnagar Road
-- E4   Janvi                                              07-JAN-03 FEMALE     2   SG Road
-- E2   Rahul                                              08-NOV-03 MALE       4   Ram Park
-- E1   Vinay                                              07-AUG-03 MALE       2   Ring Road

-- 5 rows selected.

-- 8. Delete the department whose location is Ahmedabad.
delete from employee where dept_no=(SELECT dept_no FROM department WHERE location='AHMEDABAD');

-- 0 rows deleted.

DELETE FROM Department WHERE location='AHMADABAD';
-- 1 row deleted.

-- YOU CAN USE DELETE CASCADE ON TABLE CREATE 

-- 9. Display female employee list.
SELECT * FROM Employee WHERE gender='FEMALE';

-- EMP_ EMP_NAME                                           BIRTH_DAT GENDER     DEPT ADDRESS
-- ---- -------------------------------------------------- --------- ---------- ---- ------------------
-- E4   Janvi                                              07-JAN-03 FEMALE     2   SG Road
-- E5   Aradhya                                            08-FEB-03 FEMALE     2   Rail Nager Road

-- 10. Display department-wise employee Names.
SELECT
    E.emp_id,
    E.emp_name,
    D.dept_name AS DEPARTMENT_NAME
FROM
    EMPLOYEE E
    INNER JOIN DEPARTMENT D ON E.dept_no = D.dept_no;

-- EMP_ EMP_NAME             DEPARTMENT_NAME
-- ---- -------------------- -------------------------
-- E1   Vinay                IT
-- E2   Rahul                MANAGEMENT
-- E3   Dhruv                IT
-- E4   Janvi                IT
-- E5   Aradhaya             IT

-- 7 rows selected.

-- 11. Find the names of the employee who has salary less than 5000 and greater than 2000.
SELECT EMP_ID,EMP_NAME FROM EMPLOYEE WHERE SALARY<5000 AND SALARY>2000; 

-- EMP_ EMP_NAME
-- ---- --------------------------------------------------
-- E1   Vinay

-- 12. Display the names and the designation of all female employee in descending order.
SELECT
    emp_id,
    emp_name,
    designation
FROM
    EMPLOYEE where gender='FEMALE' ORDER BY emp_name DESC;
-- EMP_ EMP_NAME             DESIGNATION
-- ---- -------------------- ---------------
-- E4   Janvi                DESIGNER
-- E5   Aradhaya             ANALYST

-- 13. Display the names of all the employees who names starts with ‘A’ ends with ‘A’.
SELECT
    emp_name
FROM
    EMPLOYEE where emp_name LIKE 'A%a';
-- EMP_NAME
-- --------------------
-- Aradhaya

-- 14. Find the name of employee and salary for those who had obtain minimum salary.
SELECT emp_name, salary
FROM EMPLOYEE
WHERE salary = (SELECT MIN(salary) FROM EMPLOYEE);

-- EMP_NAME                 SALARY
-- -------------------- ----------
-- Vinay                      3000

-- 15. Add 10% raise in salary of all employees whose department is ‘IT’.
UPDATE EMPLOYEE
SET salary = salary * 1.1
WHERE dept_no = (SELECT DEPT_NO FROM DEPARTMENT where dept_name='IT');

-- 4 rows updated.

-- 16. Count total NUMBER of employees of ‘IT’ department.\
SELECT Count(*) as "NUM OF EMPLOYEE OF IT DEPT" from employee where dept_no = (SELECT dept_no FROM department where dept_name='IT');

-- NUM OF EMPLOYEE OF IT DEPT
-- 4

-- 17. List all employees who born in the current month.
SELECT emp_name
FROM EMPLOYEE
WHERE TO_CHAR(birth_date, 'MM') = TO_CHAR(SYSDATE, 'MM');

-- EMP_NAME
-- --------------------------------------------------
-- Rahul

-- 18. Print the record of employee and dept table as “Employee works in department ‘MBA’.

SELECT E.emp_name || ' works in ' || D.dept_name || ' department.' AS INFO
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D ON E.dept_no = D.dept_no
WHERE D.dept_name = 'MANAGEMENT';

-- INFO
-- -------------------------------------------------------------------
-- Rahul works in MANAGEMENT department.

-- 19. List names of employees who are fresher’s (less than 2 year of experience).
SELECT emp_name FROM Employee where experience < 1;

-- EMP_NAME
-- --------------------------------------------------
-- Janvi

-- 20. List department wise names of employees who has more than 5 years of experience.
SELECT E.emp_name, D.dept_name
FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.dept_no = D.dept_no
WHERE E.experience > 5;

-- EMP_NAME                                           DEPT_NAME
-- -------------------------------------------------- -------------------------
-- Rahul                                              MANAGEMENT

-- 21. Crete Sequence to generate department ID
CREATE SEQUENCE dept_no START WITH 6 INCREMENT BY 1 MINIMUM 1 MAXIMUM 999;

-- 22. List department having no employees
SELECT D.dept_name FROM DEPARTMENT D LEFT JOIN EMPLOYEE E ON D.dept_no = E.dept_no WHERE E.emp_id IS NULL;

-- DEPT_NAME
-- -------------------------
-- CIVIL
-- HR