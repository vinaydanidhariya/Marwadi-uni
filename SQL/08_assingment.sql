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
    emp_id NUMBER(4) PRIMARY KEY,
    emp_name VARCHAR2(50),
    birth_date DATE CONSTRAINTS chk_age CHECK (
        birth_date <= ADD_MONTHS(TO_DATE('23-10-2023', 'DD-MM-YYYY'), -216)
    ),
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


INSERT INTO department VALUES('D1','vinay','adsadcacas');
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
-- 7. List all records of each table in ascending order.
-- 8. Delete the department whose location is Ahmedabad.
-- 9. Display female employee list.
-- 10. Display department-wise employee Names.
-- 11. Find the names of the employee who has salary less than 5000 and greater than 2000.
-- 12. Display the names and the designation of all female employee in descending order.
-- 13. Display the names of all the employees who names starts with ‘A’ ends with ‘A’.
-- 14. Find the name of employee and salary for those who had obtain minimum salary.
-- 15. Add 10% raise in salary of all employees whose department is ‘IT’.
-- 16. Count total NUMBER of employees of ‘IT’ department.
-- 17. List all employees who born in the current month.
-- 18. Print the record of employee and dept table as “Employee works in department ‘MBA’.
-- 19. List names of employees who are fresher’s (less than 1 year of experience).
-- 20. List department wise names of employees who has more than 5 years of experience.
-- 21. Crete Sequence to generate department ID
-- 22. List department having no employees