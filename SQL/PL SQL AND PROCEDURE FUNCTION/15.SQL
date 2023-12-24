-- 15 Write a trigger that identifies the gender of the employee and according to the gender
-- sets MR. in front of MALE employees and MS. in front of FEMALE employee.

SET SERVEROUTPUT ON

CREATE OR REPLACE TRIGGER TR_GENDER
BEFORE
INSERT ON EMP 
FOR EACH ROW 
BEGIN
    IF :NEW.GENDER='M' THEN
        :NEW.ENAME:='MR.' ||:NEW.ENAME;
    ELSE 
        :NEW.ENAME:='MS.' ||:NEW.ENAME;
END IF;
END;
/
-- Trigger created.
