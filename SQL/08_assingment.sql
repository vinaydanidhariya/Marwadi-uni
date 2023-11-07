Sequence baki che

-- 1. Create the following tables:
-- EMPLOYEE (emp_id, emp_name, birth_date, gender, dept_no, address, designation, salary,
-- experience, email)
-- DEPARTMENT (dept_no, dept_name, location)

-- 2. Create the EMPLOYEE Table with all necessary constraints such as
-- In EMPLOYEE table: Employee id should be primary key, Department no should be Foreign key,
-- employee age (birth_date) should be greater than 18 years, salary should be greater than zero, email
-- should have (@ and dot) sign in address, designation of employee can be “manager”, “clerk”,
-- “leader”, “analyst”, “designer”, “coder”, “tester”.
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



-- 3. Create DEPARTMENT table with necessary constraint such as
-- Department no should be primary key, department name should be unique.

-- 4. After creation of above tables, modify Employee table by adding the constraints as ‘Male’ or ‘Female’
-- in gender field and display the structure.
ALTER TABLE
    EMPLOYEE
ADD
    CONSTRAINT check_email CHECK (gender IN ('MALE', 'FEMALE'));

-- 5. Insert proper data (at least 5 appropriate records) in all the tables.
INSERT INTO DEPARTMENT VALUES('1','CIVIL','JAIPUR');
INSERT INTO DEPARTMENT VALUES('2','IT','DELHI');
INSERT INTO DEPARTMENT VALUES('3','ENGINEERING','MUMBAI');
INSERT INTO DEPARTMENT VALUES('4','MANAGEMENT','AHMADABAD');
INSERT INTO DEPARTMENT VALUES('D5','HR','RAJKOT');

INSERT INTO EMPLOYEE VALUES('E1','Vinay','07-aug-2003','MALE','2','Ring Road','CODER',3000,5,'vinay@gmail.com');
INSERT INTO EMPLOYEE VALUES('E2','Rahul','08-nov-2003','MALE','4','Ram Park','MANAGER',50000,7,'rahul@gmail.com');
INSERT INTO EMPLOYEE VALUES('E3','Dhruv','09-apr-2003','MALE','2','Jamnagar Road','TESTER',30000,2,'dhruv@gmail.com');
INSERT INTO EMPLOYEE VALUES('E6','Janvi','07-jan-2003','FEMALE','2','SG Road','DESIGNER',40000,0.5,'janvi@gmail.com');
INSERT INTO EMPLOYEE VALUES('E7','Shivani','08-feb-2003','FEMALE','2','Rail Nager Road','ANALYST',90000,3,'shivani@gmail.com');
INSERT INTO EMPLOYEE VALUES('E8','Aditi','08-mar-2003','FEMALE','4','Swati Park','LEADER',70000,3,'aditi@gmail.com');
INSERT INTO EMPLOYEE VALUES('E9','Jay','08-feb-2003','MALE','4','Satyam Park','CLERK',60000,3,'jay@gmail.com');

-- 6. Describe the structure of table created
desc Employee;

--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  EMP_ID                                    NOT NULL VARCHAR2(4)
--  EMP_NAME                                           VARCHAR2(50)
--  BIRTH_DATE                                         DATE
--  GENDER                                             VARCHAR2(10)
--  DEPT_NO                                            NUMBER(2)
--  ADDRESS                                            VARCHAR2(255)
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
-- DEPT DEPT_NAME                 LOCATION
-- ---- ------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1   CIVIL                     JAIPUR
-- 3   ENGINEERING               MUMBAI
-- 5   HR                        RAJKOT
-- 2   IT                        DELHI
-- 4   MANAGEMENT                AHMADABAD


SELECT * FROM Employee ORDER BY emp_name ASC;

-- EMP_ EMP_NAME                                           BIRTH_DAT GENDER     DEPT ADDRESS
-- ---- -------------------------------------------------- --------- ---------- ---- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- E3   Dhruv                                              09-APR-03 MALE       2   Jamnagar Road
-- E6   Janvi                                              07-JAN-03 FEMALE     2   SG Road
-- E9   Jay                                                08-FEB-03 MALE       4   Satyam Park
-- E2   Rahul                                              08-NOV-03 MALE       4   Ram Park
-- E7   Shivani                                            08-FEB-03 FEMALE     2   Rail Nager Road
-- E1   Vinay                                              07-AUG-03 MALE       2   Ring Road
-- E8   aditi                                              08-MAR-03 FEMALE     4   Swati Park

-- 7 rows selected.


-- 8. Delete the department whose location is Ahmedabad.
DELETE FROM  Department where location='AHMADABAD';

-- ERROR at line 1:
-- ORA-02292: integrity constraint (VINAY.FK_DEPT) violated - child record found


-- 9. Display female employee list.
SELECT * FROM Employee WHERE gender='FEMALE';

-- EMP_ EMP_NAME                                           BIRTH_DAT GENDER     DEPT ADDRESS
-- ---- -------------------------------------------------- --------- ---------- ---- ------------------
-- E6   Janvi                                              07-JAN-03 FEMALE     2   SG Road
-- E7   Shivani                                            08-FEB-03 FEMALE     2   Rail Nager Road
-- E8   aditi                                              08-MAR-03 FEMALE     4   Swati Park

-- 10. Display department-wise employee Names.
SELECT
    E.emp_id,
    E.emp_name,
    D.dept_name AS DEPARTMENT_NAME
FROM
    EMPLOYEE E
    INNER JOIN DEPARTMENT D ON E.dept_no = D.dept_no;

-- EMP_ EMP_NAME                                           DEPARTMENT_NAME
-- ---- -------------------------------------------------- -------------------------
-- E1   Vinay                                              IT
-- E2   Rahul                                              MANAGEMENT
-- E3   Dhruv                                              IT
-- E6   Janvi                                              IT
-- E7   Shivani                                            IT
-- E8   aditi                                              MANAGEMENT
-- E9   Jay                                                MANAGEMENT

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
-- EMP_ EMP_NAME                                           DESIGNATION
-- ---- -------------------------------------------------- ---------------
-- E8   aditi                                              LEADER
-- E7   Shivani                                            ANALYST
-- E6   Janvi                                              DESIGNER

-- 13. Display the names of all the employees who names starts with ‘A’ ends with ‘A’.
SELECT
    emp_name
FROM
    EMPLOYEE where emp_name LIKE 'A%I';
-- EMP_NAME
-- --------------------------------------------------
-- Aditi

-- 14. Find the name of employee and salary for those who had obtain minimum salary.
SELECT emp_name, salary
FROM EMPLOYEE
WHERE salary = (SELECT MIN(salary) FROM EMPLOYEE);

-- EMP_NAME                                               SALARY
-- -------------------------------------------------- ----------
-- Vinay                                                    3000

-- 15. Add 10% raise in salary of all employees whose department is ‘IT’.
UPDATE EMPLOYEE
SET salary = salary * 1.1
WHERE dept_no = (SELECT DEPT_NO FROM DEPARTMENT where dept_name='IT');

-- 16. Count total NUMBER of employees of ‘IT’ department.\
SELECT Count(*) from employee where dept_no = (SELECT dept_no FROM department where dept_name='IT');

-- 4

-- 17. List all employees who born in the current month.
SELECT emp_name
FROM EMPLOYEE
WHERE TO_CHAR(birth_date, 'MM') = TO_CHAR(SYSDATE, 'MM');

-- EMP_NAME
-- --------------------------------------------------
-- Rahul

-- 18. Print the record of employee and dept table as “Employee works in department ‘MBA’.

SELECT E.emp_id, E.emp_name, 'Employee works in department ''' || D.dept_name || '''' AS INFO
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D ON E.dept_no = D.dept_no;

-- EMP_ EMP_NAME                                           INFO
-- ---- -------------------------------------------------- --------------------------------------------
-- E1   Vinay                                              Employee works in department 'IT'
-- E2   Rahul                                              Employee works in department 'MANAGEMENT'
-- E3   Dhruv                                              Employee works in department 'IT'
-- E6   Janvi                                              Employee works in department 'IT'
-- E7   Shivani                                            Employee works in department 'IT'
-- E8   aditi                                              Employee works in department 'MANAGEMENT'
-- E9   Jay                                                Employee works in department 'MANAGEMENT'

-- 7 rows selected.
    
-- 19. List names of employees who are fresher’s (less than 1 year of experience).
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
CREATE SEQUENCE dept_id START WITH 5 INCREMENT BY 1 MINIMUM 1 MAXIMUM 999;

-- 22. List department having no employees
-- DEPT_NAME
-- -------------------------
-- CIVIL
-- HR
-- ENGINEERING