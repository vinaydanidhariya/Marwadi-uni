-- 14 Write a trigger that restricts the entry of record if salary is greater than Rs.50000.

CREATE OR REPLACE TRIGGER OVER_SAL
BEFORE INSERT ON EMP
FOR EACH ROW
BEGIN
IF (:NEW.SAL > 50000) THEN
    RAISE_APPLICATION_ERROR(-20411,'SALARY GREATER THAN 50000');
END IF;    
END;
/
-- Trigger created.