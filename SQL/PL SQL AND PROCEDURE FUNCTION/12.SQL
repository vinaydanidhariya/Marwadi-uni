-- 12 Write a trigger to insert the existing values of the EMP table into NEWEMP table when 
-- the record is updated in EMP table.

CREATE OR REPLACE TRIGGER BACKUP_UPDATE_EMP
BEFORE UPDATE ON EMP
FOR EACH ROW
BEGIN       
    INSERT INTO NEWEMP VALUES(:old.EMPNO, :old.ENAME,:old.JOB,:old.MGR, :old.HIREDATE,:old.SAL,:old.COMM,:old.DEPTNO);
END;
/
