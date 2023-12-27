-- 11 Write a trigger to insert the existing values of the EMP table into NEWEMP table when 
-- the record is deleted from EMP table.
-- CREATE TABLE NEWEMP AS SELECT * FROM EMP WHERE 1=0;

CREATE OR REPLACE TRIGGER BACKUP_EMP
BEFORE DELETE ON EMP
FOR EACH ROW
BEGIN       
    INSERT INTO NEWEMP VALUES(:old.EMPNO, :old.ENAME,:old.JOB,:old.MGR, :old.HIREDATE,:old.SAL,:old.COMM,:old.DEPTNO);
END;
/


--Trigger created. 