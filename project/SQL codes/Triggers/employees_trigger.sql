CREATE OR REPLACE TRIGGER before_emp_ins
BEFORE INSERT ON employees
FOR EACH ROW
DECLARE v_curr_date DATE;
BEGIN
    SELECT SYSDATE INTO v_curr_date FROM dual;
    IF :new.hire_date > v_curr_date THEN
       :new.hire_date := v_curr_date;
    END IF;
END ;

-- FIRST THIS TRIIGGER
DROP sequence employee_id;
CREATE sequence employee_id start with 10301;
CREATE OR REPLACE TRIGGER before_emp_ins_1
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
  SELECT employee_id.NEXTVAL
  INTO   :new.emp_no
  FROM   dual;
END;
