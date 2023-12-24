-- 13 Write a trigger to insert the values into the NEWEMP table when the records are 
-- inserted into the EMP table.

CREATE OR REPLACE TRIGGER BACKUP_INSERT_EMP
AFTER INSERT ON EMP
FOR EACH ROW
BEGIN       
    INSERT INTO NEWEMP VALUES(:old.EMPNO, :old.ENAME,:old.JOB,:old.MGR, :old.HIREDATE,:old.SAL,:old.COMM,:old.DEPTNO);
END;
/
