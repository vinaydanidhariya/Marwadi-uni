-- 5 Write a program that displays the use of %TYPE variable. This program stores the 
-- values of the columns in the memory variables using %TYPE and %ROWTYPE variables.


DECLARE
    empno emp.empno%TYPE;
    ename emp.ename%TYPE;
    job emp.job%TYPE;
    mgr emp.mgr%TYPE;
    hiredate emp.hiredate%TYPE;
    sal emp.sal%TYPE;
    comm emp.comm%TYPE;
    deptno emp.deptno%TYPE;
BEGIN
    SELECT * INTO empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp WHERE empno = 7369;
    dbms_output.put_line('Empno ' || empno);
    dbms_output.put_line('Ename ' || ename);
    dbms_output.put_line('Job ' || job);
    dbms_output.put_line('Mgr ' || mgr);
    dbms_output.put_line('Hiredate ' || hiredate);
    dbms_output.put_line('Sal ' || sal);
    dbms_output.put_line('Comm ' || comm);
    dbms_output.put_line('Deptno ' || deptno);
END;
/

-- Empno 7369
-- Ename SMITH
-- Job CLERK
-- Mgr 7902
-- Hiredate 17-DEC-80
-- Sal 800
-- Comm
-- Deptno 20