-- Drop tables if they exist
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE EJob';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Employee';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Deposit';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

CREATE TABLE EJob (
    job_id VARCHAR2(15),
    job_title VARCHAR2(30),
    min_sal NUMBER(7,2),
    max_sal NUMBER(7,2)
);
CREATE TABLE Employee (
    emp_no NUMBER(3),
    emp_name VARCHAR2(30),
    emp_sal NUMBER(8,2),
    emp_comm NUMBER(6,1),
    dept_no NUMBER(3)
);
CREATE TABLE Deposit (
    a_no VARCHAR2(5),
    cname VARCHAR2(15),
    bname VARCHAR2(10),
    amount NUMBER(7,2),
    a_date DATE
);



INSERT INTO Employee (emp_no, emp_name, emp_sal, emp_comm, dept_no)
VALUES
(101, 'Smith', 800, 20, NULL),
(102, 'Snehal', 1600, 300, 25),
(103, 'Adama', 1100, 0, 20),
(104, 'Aman', 3000, 15, NULL),
(105, 'Anita', 5000, 50000, 10),
(106, 'Sneha', 2450, 24500, 10),
(107, 'Anamika', 2975, 30, NULL);


INSERT INTO EJob (job_id, job_title, min_sal, max_sal)
VALUES
('IT_PROG', 'Programmer', 4000, 10000),
('MK_MGR', 'Marketing manager', 9000, 15000),
('FI_MGR', 'Finance manager', 8200, 12000),
('FI_ACC', 'Account', 4200, 9000),
('LEC', 'Lecturer', 6000, 17000),
('COMP_OP', 'Computer Operator', 1500, 3000);


INSERT INTO Deposit (a_no, cname, bname, amount, a_date)
VALUES
('101', 'Anil', 'andheri', 7000, TO_DATE('01-jan-06', 'DD-MON-YY')),
('102', 'sunil', 'virar', 5000, TO_DATE('15-jul-06', 'DD-MON-YY')),
('103', 'jay', 'villeparle', 6500, TO_DATE('12-mar-06', 'DD-MON-YY')),
('104', 'vijay', 'andheri', 8000, TO_DATE('17-sep-06', 'DD-MON-YY')),
('105', 'keyur', 'dadar', 7500, TO_DATE('19-nov-06', 'DD-MON-YY')),
('106', 'mayur', 'borivali', 5500, TO_DATE('21-dec-06', 'DD-MON-YY'));


-- (1) Retrieve all data from employee, jobs, and deposit.

SELECT * FROM Employee;
SELECT * FROM EJob;
SELECT * FROM Deposit;

-- (2) Give details of account no. and deposited rupees of customers having an account opened between dates 01-01-06 and 25-07-06.

SELECT a_no, cname, amount FROM Deposit WHERE a_date BETWEEN TO_DATE('01-01-06', 'DD-MM-YY') AND TO_DATE('25-07-06', 'DD-MM-YY');

-- (3) Display all jobs with a minimum salary greater than 4000.

SELECT * FROM EJob WHERE min_sal > 4000;

-- (4) Display the name and salary of the employee whose department no is 20.

SELECT emp_name, emp_sal FROM Employee WHERE dept_no = 20;

-- (5) Display employee no, name, and department details of those employees whose department lies in (10,20).

SELECT emp_no, emp_name, dept_no FROM Employee WHERE dept_no IN (10, 20);


-- (6) Display all employees whose name starts with 'A' and the third character is 'a'.

SELECT * FROM Employee WHERE emp_name LIKE 'A_a%';

-- (7) Display name, number, and salary of those employees whose name is 5 characters long and the first three characters are 'Ani'.

SELECT emp_name, emp_no, emp_sal FROM Employee WHERE emp_name LIKE 'Ani__';


-- (8) Display the details of the employee whose name the second character should be 'n' and the string should be 5 characters long.


SELECT * FROM Employee WHERE emp_name LIKE '_n%';

-- (9) Create table supplier from employee with all the columns.

CREATE TABLE Supplier AS SELECT * FROM Employee;


-- (10) Create table sup1 from employee with the first two columns.

CREATE TABLE Sup1 AS SELECT emp_no, emp_name FROM Employee;


-- (11) Create table sup2 from employee with no data.

CREATE TABLE Sup2 AS SELECT * FROM Employee WHERE 1 = 2;

-- (12) Delete all the rows from sup1.

DELETE FROM Sup1;


-- (13) Delete the detail of the supplier whose sup_no is 103.

DELETE FROM Supplier WHERE emp_no = 103;


-- (14) Rename the table sup2.


ALTER TABLE Sup2 RENAME TO Sup3;

-- (15) Destroy table sup1 with all the data.

DROP TABLE Sup1;

-- (16) Update the value dept_no to 10 where the second character of emp. name is 'm'.


UPDATE Employee SET dept_no = 10 WHERE emp_name LIKE '_m%';

-- (17) Update the value of the employee name whose employee number is 103.


UPDATE Employee SET emp_name = 'Anamika' WHERE emp_no = 103;

-- (18) For each employee, display the employee number, employee name, salary, and salary increased by 15% and expressed as a whole number. Label the column New Salary.


SELECT emp_no, emp_name, emp_sal, ROUND(emp_sal * 1.15) AS "New Salary" FROM Employee;

-- (19) Write a query that displays the employee’s names with the first letter capitalized and all other letters lowercase, and the length of the names, for all employees whose name starts with J, A, or M.


SELECT emp_name, LENGTH(emp_name) FROM Employee WHERE emp_name LIKE 'J%' OR emp_name LIKE 'A%' OR emp_name LIKE 'M%';

-- (20) Write a query that produces the following for each employee: <employee last name> earns <salary> monthly.

SELECT CONCAT(SUBSTR(emp_name, INSTR(emp_name, ' ') + 1), ' earns ', emp_sal, ' monthly.') AS "Salary Statement"
FROM Employee;
-- (21) Display the hiredate of emp in a format that appears as Seventh of June 1994 12:00:00 AM.

SELECT TO_CHAR(hiredate, 'DD "of" MONTH YYYY HH:MI:SS AM') FROM Employee;

-- (22) Write a query to calculate the annual compensation of all employees (sal+comm).

SELECT emp_name, emp_sal + emp_comm AS "Annual Compensation" FROM Employee;

-- (23) Write a query to display the last name, department number, and department name for all employees.

SELECT e.emp_name, e.dept_no, d.dept_name FROM Employee e, Department d WHERE e.dept_no = d.dept_no;

-- (25) Display the highest, lowest, sum, and average salary of all employees. Label the columns Maximum, Minimum, Sum, and Average, respectively. Round your results to the nearest whole number.

SELECT MAX(emp_sal) AS "Maximum", MIN(emp_sal) AS "Minimum", SUM(emp_sal) AS "Sum", ROUND(AVG(emp_sal)) AS "Average" FROM Employee;

-- (26) Write a query that displays the difference between the highest and lowest salaries. Label the column DIFFERENCE.

SELECT MAX(emp_sal) - MIN(emp_sal) AS "Difference" FROM Employee;

-- (27) Create a query to display the employee numbers and last names of all employees who earn more than the average salary.

SELECT emp_no, emp_name FROM Employee WHERE emp_sal > (SELECT AVG(emp_sal) FROM Employee);

-- (28) Display the department number, name, and Ejob for every employee in the Accounting department.

SELECT e.dept_no, d.dept_name, j.job_title FROM Employee e, Department d, EJob j WHERE e.dept_no = d.dept_no AND e.job_id = j.job_id AND d.dept_name = 'Accounting';

-- (29) List the name of the branch having the highest number of depositors.
SELECT bname FROM Deposit GROUP BY bname HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM Deposit GROUP BY bname);

-- (30) Give 10% interest to all depositors.
UPDATE Deposit SET amount = amount * 1.1;








