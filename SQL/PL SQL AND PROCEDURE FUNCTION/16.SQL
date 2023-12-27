-- 16 Write a trigger to restrict user form using the table on Sunday.
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER TR_HOLIDAY
BEFORE INSERT OR UPDATE OR DELETE ON EMP
FOR EACH ROW
BEGIN
      IF TRIM (TO_CHAR (SYSDATE, 'Day')) = 'Sunday' THEN 
      RAISE_APPLICATION_ERROR (-20420, 'You cannot modifydata on Sunday'); 
END IF;
END;
/
-- Trigger created.