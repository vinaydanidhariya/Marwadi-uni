-- Drop tables if they exist
DROP TABLE EJob;
DROP TABLE Employee;
DROP TABLE department;
DROP TABLE Deposit;
DROP TABLE Supplier;
DROP TABLE Sup1;
DROP TABLE Sup2;
DROP TABLE Sup3;

CREATE TABLE EJob (
   job_id VARCHAR2(15),
   dpt_no NUMBER(2),
   job_title VARCHAR2(30),
   min_sal NUMBER(7, 2),
   max_sal NUMBER(7, 2)
);

CREATE TABLE department (
   dpt_no NUMBER(2) PRIMARY KEY,
   d_name VARCHAR2(10)
);

CREATE TABLE Employee (
   emp_no NUMBER(3),
   emp_name VARCHAR2(30),
   emp_sal NUMBER(8, 2),
   emp_comm NUMBER(6, 1),
   dpt_no NUMBER(2) CONSTRAINTS FK_DEPT REFERENCES department(dpt_no)
);

CREATE TABLE Deposit (
   a_no VARCHAR2(5),
   cname VARCHAR2(15),
   bname VARCHAR2(10),
   amount NUMBER(7, 2),
   a_date DATE
);

INSERT INTO department VALUES (10, 'IT');
INSERT INTO department VALUES (15, 'CIVIL');
INSERT INTO department VALUES (20, 'MANAGEMENT');
INSERT INTO department VALUES (25, 'MARKETING');
INSERT INTO department VALUES (30, 'ACCOUNTING');

INSERT INTO Employee  VALUES (101, 'Smith', 800, NULL, 20);
INSERT INTO Employee  VALUES (102, 'Snehal', 1600, 300, 25);
INSERT INTO Employee  VALUES (103, 'Adama', 1100, 0, 20);
INSERT INTO Employee  VALUES (104, 'Aman', 3000, NULL, 15);
INSERT INTO Employee  VALUES (105, 'Anita', 5000, 50000, 10);
INSERT INTO Employee  VALUES (106, 'Sneha', 2450, 24500, 10);
INSERT INTO Employee  VALUES (107, 'Anamika', 2975, NULL, 30);

INSERT INTO EJob VALUES ('IT_PROG',10, 'Programmer', 4000, 10000);
INSERT INTO EJob VALUES ('MK_MGR', 25,'Marketing manager', 9000, 15000);
INSERT INTO EJob VALUES ('FI_MGR',  30,'Finance manager', 8200, 12000);
INSERT INTO EJob VALUES ('FI_ACC',  30,'Account', 4200, 9000);
INSERT INTO EJob VALUES ('LEC',  15,'Lecturer', 6000, 17000);
INSERT INTO EJob VALUES ('COMP_OP', 10,'Computer Operator', 1500, 3000);

INSERT INTO Deposit (a_no, cname, bname, amount, a_date) VALUES ('101', 'Anil', 'andheri', 7000, TO_DATE('01-jan-06', 'DD-MON-YY'));
INSERT INTO Deposit (a_no, cname, bname, amount, a_date) VALUES ('102', 'sunil', 'virar', 5000, TO_DATE('15-jul-06', 'DD-MON-YY'));
INSERT INTO Deposit (a_no, cname, bname, amount, a_date) VALUES ('103', 'jay', 'villeparle', 6500, TO_DATE('12-mar-06', 'DD-MON-YY'));
INSERT INTO Deposit (a_no, cname, bname, amount, a_date) VALUES ('104', 'vijay', 'andheri', 8000, TO_DATE('17-sep-06', 'DD-MON-YY'));
INSERT INTO Deposit (a_no, cname, bname, amount, a_date) VALUES ('105', 'keyur', 'dadar', 7500, TO_DATE('19-nov-06', 'DD-MON-YY'));
INSERT INTO Deposit (a_no, cname, bname, amount, a_date) VALUES ('106', 'mayur', 'borivali', 5500, TO_DATE('21-dec-06', 'DD-MON-YY'));

-- (1) Retrieve all data from employee, jobs, and deposit.
SELECT * FROM Employee;
--     EMP_NO EMP_NAME                          EMP_SAL   EMP_COMM    DEPT_NO
-- ---------- ------------------------------ ---------- ---------- ----------
--        101 Smith                                 800                    20
--        102 Snehal                               1600        300         25
--        103 Adama                                1100          0         20
--        104 Aman                                 3000                    15
--        105 Anita                                5000      50000         10
--        106 Sneha                                2450      24500         10
--        107 Anamika                              2975                    30

-- 7 rows selected.
SELECT * FROM EJob;
-- JOB_ID              DPT_NO JOB_TITLE                         MIN_SAL    MAX_SAL
-- --------------- ---------- ------------------------------ ---------- ----------
-- IT_PROG                 10 Programmer                           4000      10000
-- MK_MGR                  25 Marketing manager                    9000      15000
-- FI_MGR                  30 Finance manager                      8200      12000
-- FI_ACC                  30 Account                              4200       9000
-- LEC                     15 Lecturer                             6000      17000
-- COMP_OP                 10 Computer Operator                    1500       3000

-- 6 rows selected.
SELECT * FROM Deposit;
-- A_NO  CNAME           BNAME          AMOUNT A_DATE
-- ----- --------------- ---------- ---------- ---------
-- 101   Anil            andheri          7000 01-JAN-06
-- 102   sunil           virar            5000 15-JUL-06
-- 103   jay             villeparle       6500 12-MAR-06
-- 104   vijay           andheri          8000 17-SEP-06
-- 105   keyur           dadar            7500 19-NOV-06
-- 106   mayur           borivali         5500 21-DEC-06

-- 6 rows selected.

-- (2) Give details of account no. and deposited rupees of customers having an account opened between dates 01-01-06 and 25-07-06.
SELECT a_no, cname, amount FROM Deposit WHERE a_date BETWEEN TO_DATE('01-01-06', 'DD-MM-YY') AND TO_DATE('25-07-06', 'DD-MM-YY');

-- A_NO  CNAME               AMOUNT
-- ----- --------------- ----------
-- 101   Anil                  7000
-- 102   sunil                 5000
-- 103   jay                   6500

-- (3) Display all jobs with a minimum salary greater than 4000.
SELECT * FROM EJob WHERE min_sal > 4000;
-- JOB_ID          JOB_TITLE                         MIN_SAL    MAX_SAL
-- --------------- ------------------------------ ---------- ----------
-- MK_MGR          Marketing manager                    9000      15000
-- FI_MGR          Finance manager                      8200      12000
-- FI_ACC          Account                              4200       9000
-- LEC             Lecturer                             6000      17000

-- (4) Display the name and salary of the employee whose department no is 20.
SELECT emp_name, emp_sal FROM Employee WHERE dpt_no = 20;
-- EMP_NAME                          EMP_SAL
-- ------------------------------ ----------
-- Smith                                 800
-- Adama                                1100
-- (5) Display employee no, name, and department details of those employees whose department lies in (10,20).
SELECT emp_no, emp_name, dpt_no FROM Employee WHERE dpt_no IN (10, 20);
--     EMP_NO EMP_NAME                          DPT_NO
-- ---------- ------------------------------ ----------
--        101 Smith                                  20
--        103 Adama                                  20
--        105 Anita                                  10
--        106 Sneha                                  10

-- (6) Display all employees whose name starts with 'A' and the third character is 'a'.
SELECT * FROM Employee WHERE emp_name LIKE 'A_a%';
--     EMP_NO EMP_NAME                          EMP_SAL   EMP_COMM    DEPT_NO
-- ---------- ------------------------------ ---------- ---------- ----------
--        103 Adama                                1100          0         20
--        104 Aman                                 3000                    15
--        107 Anamika                              2975                    30

-- (7) Display name, number, and salary of those employees whose name is 5 characters long and the first three characters are 'Ani'.
SELECT emp_name, emp_no, emp_sal FROM Employee WHERE emp_name LIKE 'Ani__';
-- EMP_NAME                           EMP_NO    EMP_SAL
-- ------------------------------ ---------- ----------
-- Anita                                 105       5000

-- (8) Display the details of the employee whose name the second character should be 'n' and the string should be 5 characters long.
SELECT * FROM Employee WHERE emp_name LIKE '_n___';

--     EMP_NO EMP_NAME                          EMP_SAL   EMP_COMM    DEPT_NO
-- ---------- ------------------------------ ---------- ---------- ----------
--        105 Anita                                5000      50000         10
--        106 Sneha                                2450      24500         10

-- (9) Create table supplier from employee with all the columns.
CREATE TABLE Supplier AS SELECT * FROM Employee;
-- Table created.

-- (10) Create table sup1 from employee with the first two columns.
CREATE TABLE Sup1 AS SELECT emp_no, emp_name FROM Employee;
-- Table created.

-- (11) Create table sup2 from employee with no data.
CREATE TABLE Sup2 AS SELECT * FROM Employee WHERE 1 = 2;
-- Table created.
-- (12) Delete all the rows from sup1.
DELETE FROM Sup1;
-- 7 rows deleted.

-- (13) Delete the detail of the supplier whose sup_no is 103.
DELETE FROM Supplier WHERE emp_no = 103;
-- 1 row deleted.

-- (14) Rename the table sup2.
ALTER TABLE Sup2 RENAME TO Sup3;
-- Table altered.

-- (15) Destroy table sup1 with all the data.
DROP TABLE Sup1;
-- Table dropped.

-- (16) Update the value dept_no to 10 where the second character of emp. name is 'm'.
UPDATE Employee SET dpt_no = 10 WHERE emp_name LIKE '_m%';
-- 2 rows updated.

-- (17) Update the value of the employee name whose employee number is 103.
UPDATE Employee SET emp_name = 'Anamika' WHERE emp_no = 103;
-- 1 row updated.

-- (18) For each employee, display the employee number, employee name, salary, and salary increased by 15% and expressed as a whole number. Label the column New Salary.
SELECT emp_no, emp_name, emp_sal, ROUND(emp_sal * 1.15) AS "New Salary" FROM Employee;
--     EMP_NO EMP_NAME                          EMP_SAL New Salary
-- ---------- ------------------------------ ---------- ----------
--        101 Smith                                 800        920
--        102 Snehal                               1600       1840
--        103 Adama                                1100       1265
--        104 Aman                                 3000       3450
--        105 Anita                                5000       5750
--        106 Sneha                                2450       2818
--        107 Anamika                              2975       3421

-- 7 rows selected.

-- (19) Write a query that displays the employee’s names with the first letter capitalized and all other letters lowercase, and the length of the names, for all employees whose name starts with J, A, or M.
SELECT INITCAP(emp_name), LENGTH(emp_name) FROM Employee WHERE emp_name LIKE 'J%' OR emp_name LIKE 'A%' OR emp_name LIKE 'M%';
-- INITCAP(EMP_NAME)              LENGTH(EMP_NAME)
-- ------------------------------ ----------------
-- Adama                                         5
-- Aman                                          4
-- Anita                                         5
-- Anamika                                       7
-- (20) Write a query that produces the following for each employee: <employee last name> earns <salary> monthly.
SELECT emp_name || ' earns ' || emp_sal || ' monthly.' AS "Salary Statement" FROM Employee;
-- Salary Statement
-- --------------------------------------------------------------------------------
-- Smith earns 800 monthly.
-- Snehal earns 1600 monthly.
-- Adama earns 1100 monthly.
-- Aman earns 3000 monthly.
-- Anita earns 5000 monthly.
-- Sneha earns 2450 monthly.
-- Anamika earns 2975 monthly.

-- 7 rows selected.

-- (21) Display the hiredate of emp in a format that appears as Seventh of June 1994 12:00:00 AM.
SELECT TO_CHAR(a_date, 'DDTH MONTH YYYY HH:MI:SS AM') as hiredate FROM deposit;
-- HIREDATE
-- ----------------------------------------------------------
-- 01ST JANUARY   2006 12:00:00 AM
-- 15TH JULY      2006 12:00:00 AM
-- 12TH MARCH     2006 12:00:00 AM
-- 17TH SEPTEMBER 2006 12:00:00 AM
-- 19TH NOVEMBER  2006 12:00:00 AM
-- 21ST DECEMBER  2006 12:00:00 AM
-- 6 rows selected.

-- (22) Write a query to calculate the annual compensation of all employees (sal+comm).
SELECT emp_name, emp_sal + emp_comm AS "Annual Compensation" FROM Employee;

-- EMP_NAME                       Annual Compensation
-- ------------------------------ -------------------
-- Smith
-- Snehal                                        1900
-- Adama                                         1100
-- Aman
-- Anita                                        55000
-- Sneha                                        26950

-- 7 rows selected.
-- (23) Write a query to display the last name, department number, and department name for all employees.
SELECT e.emp_name, e.dpt_no, d.d_name FROM Employee e, Department d WHERE e.dpt_no = d.dpt_no;
-- EMP_NAME                           DPT_NO D_NAME
-- ------------------------------ ---------- ----------
-- Smith                                  20 MANAGEMENT
-- Snehal                                 25 MARKETING
-- Adama                                  20 MANAGEMENT
-- Aman                                   15 CIVIL
-- Anita                                  10 IT
-- Sneha                                  10 IT
-- Anamika                                30 ACCOUNTING

-- 7 rows selected.


-- (25) Display the highest, lowest, sum, and average salary of all employees. Label the columns Maximum, Minimum, Sum, and Average, respectively. Round your results to the nearest whole number.
SELECT MAX(emp_sal) AS "Maximum", MIN(emp_sal) AS "Minimum", SUM(emp_sal) AS "Sum", ROUND(AVG(emp_sal)) AS "Average" FROM Employee;

--    Maximum    Minimum        Sum    Average
-- ---------- ---------- ---------- ----------
--       5000        800      16925       2418

-- (26) Write a query that displays the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(emp_sal) - MIN(emp_sal) AS "Difference" FROM Employee;
-- Difference
-- ----------
--       4200

-- (27) Create a query to display the employee numbers and last names of all employees who earn more than the average salary.
SELECT emp_no, emp_name FROM Employee WHERE emp_sal > (SELECT AVG(emp_sal) FROM Employee);
--     EMP_NO EMP_NAME
-- ---------- ------------------------------
--        104 Aman
--        105 Anita
--        106 Sneha
--        107 Anamika

-- (28) Display the department number, name, and Ejob for every employee in the Accounting department.
SELECT e.dpt_no,e.emp_name, d.d_name, j.job_title 
FROM Employee e 
INNER JOIN Department d ON e.dpt_no = d.dpt_no 
INNER JOIN Ejob j ON e.dpt_no = j.dpt_no 
WHERE d.d_name = 'ACCOUNTING';

--     DPT_NO EMP_NAME                       D_NAME     JOB_TITLE
-- ---------- ------------------------------ ---------- ------------------------------
--         30 Anamika                        ACCOUNTING Account
--         30 Anamika                        ACCOUNTING Finance manager

-- (29) List the name of the branch having the highest number of depositors.
SELECT bname FROM Deposit GROUP BY bname HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM Deposit GROUP BY bname);
-- BNAME
-- ----------
-- andheri

-- (30) Give 10% interest to all depositors.
UPDATE Deposit SET amount = amount * 1.1;
-- 6 rows updated.