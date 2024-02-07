-- 3 Write a program of mark sheet with displays the SEAT_NO, NAME OF STUDENT, marks 
-- of 5 subjects, total of 5 subjects and percentage, also display the class of student
-- based on the value of percentage.
SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

ACCEPT seat_no NUMBER  PROMPT 'Enter Seat No.: '
ACCEPT name CHAR PROMPT 'Enter Student Name: '
ACCEPT RDBMS NUMBER  PROMPT 'Enter Marks for RDBMS: '
ACCEPT OS NUMBER  PROMPT 'Enter Marks for OS: '
ACCEPT JAVA NUMBER  PROMPT 'Enter Marks for JAVA: '
ACCEPT DS NUMBER  PROMPT 'Enter Marks for DS: '
ACCEPT PHP NUMBER  PROMPT 'Enter Marks for PHP: '

DECLARE
    total NUMBER(5);
    percentage NUMBER(5);
    class VARCHAR2(20);
BEGIN
    total := &RDBMS + &OS + &JAVA + &DS + &PHP;

    percentage := total / 5;

    IF percentage >= 80 THEN
        class := 'Distinction';
    ELSIF percentage >= 60 AND percentage < 80 THEN
        class := 'First Class';
    ELSIF percentage >= 40 AND percentage < 60 THEN
        class := 'Second Class';
    ELSE
        class := 'Fail';
    END IF;

    -- Outputting the mark sheet
    DBMS_OUTPUT.PUT_LINE('Seat No. ' || &seat_no);
    DBMS_OUTPUT.PUT_LINE('Name ' || '&name');
    DBMS_OUTPUT.PUT_LINE('RDBMS ' || &RDBMS);
    DBMS_OUTPUT.PUT_LINE('OS ' || &OS);
    DBMS_OUTPUT.PUT_LINE('JAVA ' || &JAVA);
    DBMS_OUTPUT.PUT_LINE('DS ' || &DS);
    DBMS_OUTPUT.PUT_LINE('PHP ' || &PHP);
    DBMS_OUTPUT.PUT_LINE('Total ' || total);
    DBMS_OUTPUT.PUT_LINE('Percentage ' || percentage || '%');
    DBMS_OUTPUT.PUT_LINE('Class ' || class);
END;
/

-- Enter Seat No.: 1236
-- Enter Student Name: vinay danidhariya
-- Enter Marks for RDBMS: 65
-- Enter Marks for OS: 65
-- Enter Marks for JAVA: 65
-- Enter Marks for DS: 65
-- Enter Marks for PHP: 65
-- Seat No. 1236
-- Name vinay danidhariya
-- RDBMS 65
-- OS 65
-- JAVA 65
-- DS 65
-- PHP 65
-- Total 325
-- Percentage 65%
-- Class First Class
