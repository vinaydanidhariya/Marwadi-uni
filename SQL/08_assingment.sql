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
    dept_no VARCHAR2(4) PRIMARY KEY,
    dept_name VARCHAR2(25) UNIQUE,
    location VARCHAR2(255)
);

CREATE TABLE EMPLOYEE (
    emp_id VARCHAR2(4) PRIMARY KEY,
    emp_name VARCHAR2(50),


    gender VARCHAR2(10),
    dept_no VARCHAR2(4) CONSTRAINTS fk_dept REFERENCES DEPARTMENT(dept_no),
    address VARCHAR2(255),
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


INSERT INTO DEPARTMENT VALUES('D1','CIVIL','JAIPUR');
INSERT INTO DEPARTMENT VALUES('D2','IT','DELHI');
INSERT INTO DEPARTMENT VALUES('D3','ENGINEERING','MUMBAI');
INSERT INTO DEPARTMENT VALUES('D4','MANAGEMENT','AHMADABAD');
INSERT INTO DEPARTMENT VALUES('D5','HR','RAJKOT');


INSERT INTO EMPLOYEE VALUES('E1','Vinay','07-aug-2003','MALE','D2','Ring Road','CODER',3000,5,'vinay@gmail.com');
INSERT INTO EMPLOYEE VALUES('E2','Rahul','08-jun-2003','MALE','D4','Ram Park','MANAGER',50000,7,'rahul@gmail.com');
INSERT INTO EMPLOYEE VALUES('E3','Dhruv','09-apr-2003','MALE','D2','Jamnagar Road','TESTER',30000,2,'dhruv@gmail.com');
INSERT INTO EMPLOYEE VALUES('E6','Janvi','07-jan-2003','FEMALE','D2','SG Road','DESIGNER',40000,1,'janvi@gmail.com');
INSERT INTO EMPLOYEE VALUES('E7','Shivani','08-feb-2003','FEMALE','D2','Rail Nager Road','ANALYST',90000,3,'shivani@gmail.com');
INSERT INTO EMPLOYEE VALUES('E8','aditi','08-mar-2003','FEMALE','D4','Swati Park','LEADER',70000,3,'aditi@gmail.com');
INSERT INTO EMPLOYEE VALUES('E9','Jay','08-feb-2003','MALE','D4','Satyam Park','CLERK',60000,3,'jay@gmail.com');


-- 3. Create DEPARTMENT table with necessary constraint such as
-- Department no should be primary key, department name should be unique.

-- 4. After creation of above tables, modify Employee table by adding the constraints as ‘Male’ or ‘Female’
-- in gender field and display the structure.
ALTER TABLE
    EMPLOYEE
ADD
    CONSTRAINT check_email CHECK (gender IN ('MALE', 'FEMALE'));

-- 5. Insert proper data (at least 5 appropriate records) in all the tables.
INSERT INTO
    EMPLOYEE (
        emp_id,
        emp_name,
        birth_date,
        gender,
        dept_no,
        address,
        designation,
        salary,
        experience,
        email
    )
VALUES
    (
        1,
        'RAHUL',
        '17-JAN-2003',
        'MALE',
        'D1',
        'shilpan road',
        'CODER',
        50000,
        5,
        'vinaydanidhariya@gmail.com'
    );

-- 6. Describe the structure of table created
desc Employee;
desc department;

--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  EMP_ID                                    NOT NULL VARCHAR2(4)
--  EMP_NAME                                           VARCHAR2(50)
--  BIRTH_DATE                                         DATE
--  GENDER                                             VARCHAR2(10)
--  DEPT_NO                                            VARCHAR2(4)
--  ADDRESS                                            VARCHAR2(255)
--  DESIGNATION                                        VARCHAR2(15)
--  SALARY                                             NUMBER(10,2)
--  EXPERIENCE                                         NUMBER(2)
--  EMAIL                                              VARCHAR2(50)

-- SQL> desc department;
--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  DEPT_NO                                   NOT NULL VARCHAR2(4)
--  DEPT_NAME                                          VARCHAR2(25)
--  LOCATION                                           VARCHAR2(255)

-- 7. List all records of each table in ascending order.
SELECT * FROM Department;
-- DEPT DEPT_NAME                 LOCATION
-- ---- ------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- D1   CIVIL                     JAIPUR
-- D2   IT                        DELHI
-- D3   ENGINEERING               MUMBAI
-- D4   MANAGEMENT                AHMADABAD
-- D5   HR                        RAJKOT

SELECT * FROM Employee;



-- E2   Rahul                                              08-JUN-03 MALE
-- D4
-- Ram Park
-- MANAGER              50000          7
-- rahul@gmail.com

-- E1   Vinay                                              07-AUG-03 MALE
-- D2
-- Ring Road
-- CODER                80000          5
-- vinay@gmail.com

-- E3   Dhruv                                              09-APR-03 MALE
-- D2
-- Jamnagar Road
-- TESTER               30000          2
-- dhruv@gmail.com

-- E6   Janvi                                              07-JAN-03 FEMALE
-- D2
-- SG Road
-- DESIGNER             40000          1
-- janvi@gmail.com

-- E7   Shivani                                            08-FEB-03 FEMALE
-- D2
-- Rail Nager Road
-- ANALYST              90000          3
-- shivani@gmail.com

-- E8   aditi                                              08-MAR-03 FEMALE
-- D4
-- Swati Park
-- LEADER               70000          3
-- aditi@gmail.com

-- E9   Jay                                                08-FEB-03 MALE
-- D4
-- Satyam Park
-- CLERK                60000          3
-- jay@gmail.com


-- 7 rows selected.


-- 8. Delete the department whose location is Ahmedabad.
DELETE FROM  Department where location='AHMADABAD';

-- ERROR at line 1:
-- ORA-02292: integrity constraint (VINAY.FK_DEPT) violated - child record found


-- 9. Display female employee list.
SELECT * FROM Employee WHERE gender='FEMALE';


-- E6   Janvi                                              07-JAN-03 FEMALE
-- D2
-- SG Road
-- DESIGNER             40000          1
-- janvi@gmail.com

-- E7   Shivani                                            08-FEB-03 FEMALE
-- D2
-- Rail Nager Road
-- ANALYST              90000          3
-- shivani@gmail.com

-- E8   aditi                                              08-MAR-03 FEMALE
-- D4
-- Swati Park
-- LEADER               70000          3
-- aditi@gmail.com

-- 10. Display department-wise employee Names.
SELECT
    E.emp_id,
    E.emp_name,
    D.dept_name AS DEPARTMENT_NAME
FROM
    EMPLOYEE E
    INNER JOIN DEPARTMENT D ON E.dept_no = D.dept_no;

-- EMP_ID EMP_NAME                                         DEPT_NAME
-- E2     Rahul                                              MANAGEMENT
-- E1     Vinay                                              IT
-- E3     Dhruv                                              IT
-- E6     Janvi                                              IT
-- E7     Shivani                                            IT
-- E8     aditi                                              MANAGEMENT
-- E9     Jay                                                MANAGEMENT

-- 7 rows selected.

-- 11. Find the names of the employee who has salary less than 5000 and greater than 2000.
SELECT EMP_ID,EMP_NAME FROM EMPLOYEE WHERE SALARY<5000 AND SALARY>2000; 

-- E1 Vinay

-- 12. Display the names and the designation of all female employee in descending order.
SELECT
    emp_id,
    emp_name,
    designation
FROM
    EMPLOYEE where gender='FEMALE';
-- emp_id emp_name                                         designation
-- E6   Janvi                                              DESIGNER
-- E7   Shivani                                            ANALYST
-- E8   aditi                                              LEADER

-- 13. Display the names of all the employees who names starts with ‘A’ ends with ‘A’.
SELECT
    emp_name
FROM
    EMPLOYEE where emp_name LIKE 'a%i';
-- aditi
-- 14. Find the name of employee and salary for those who had obtain minimum salary.
SELECT
   emp_name,min(salary) as salary
FROM
    EMPLOYEE GROUP BY  salary;

-- 15. Add 10% raise in salary of all employees whose department is ‘IT’.

-- 16. Count total NUMBER of employees of ‘IT’ department.\
SELECT Count(*) from employee where dept_no = (SELECT dept_no FROM department where dept_name='IT');

-- 4

-- 17. List all employees who born in the current month.
SELECT EMP_NAME from employee where TO_CHAR(birth_date,'MON') = 'NOV';

-- no rows selected

-- 18. Print the record of employee and dept table as “Employee works in department ‘MBA’.
SELECT
    E.emp_id,
    E.emp_name,
    D.dept_name AS DEPARTMENT_NAME
FROM
    EMPLOYEE E
    INNER JOIN DEPARTMENT D ON E.dept_no = D.dept_no;
    
-- 19. List names of employees who are fresher’s (less than 1 year of experience).

-- 20. List department wise names of employees who has more than 5 years of experience.
-- 21. Crete Sequence to generate department ID
-- 22. List department having no employees