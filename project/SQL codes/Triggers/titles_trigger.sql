CREATE OR REPLACE TRIGGER after_titles_ins
BEFORE INSERT ON titles
FOR EACH ROW
DECLARE 
v_max_date DATE;
v_curr_date DATE;
BEGIN
    SELECT MAX(ending_date) INTO v_max_date FROM titles WHERE emp_no = :new.emp_no GROUP BY emp_no;
	SELECT SYSDATE INTO v_curr_date FROM dual;
    IF :new.starting_date > v_curr_date THEN
       :new.starting_date := v_curr_date;
    END IF;
    update titles set ending_date = (select sysdate from dual) 
    where emp_no = :new.emp_no and ending_date = (select max(ending_date) from titles where emp_no = :new.emp_no group by emp_no);
    IF v_max_date IS NOT NULL THEN
       :new.ending_date := v_max_date;    
    END IF;
END;​




