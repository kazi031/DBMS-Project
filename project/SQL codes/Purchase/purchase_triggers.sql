CREATE OR REPLACE TRIGGER after_gen_purchase_ins
AFTER INSERT ON gen_purchase
FOR EACH ROW
DECLARE 
v_curr_date DATE;
v_curr_amount NUMBER(10);
v_curr_area VARCHAR2(4);
v_item_code VARCHAR2(5);
BEGIN
  SELECT SYSDATE INTO v_curr_date FROM DUAL;
 
  SELECT area_no INTO v_curr_area FROM area_emp ae 	
  WHERE ae.emp_no = :new.emp_no AND ending_date > v_curr_date;
  
  v_item_code := :new.item_code;

  SELECT item_amount_in_piece 
           INTO 
		 v_curr_amount 
		   FROM 
		 non_wholesale_storage
           WHERE 
  item_code = v_item_code AND area_no = v_curr_area;

  UPDATE non_wholesale_storage
           SET 
  item_amount_in_piece = v_curr_amount + :new.item_amount_in_piece 
           WHERE 
  item_code = v_item_code and area_no = v_curr_area;
END;​



CREATE OR REPLACE TRIGGER after_wholesale_purchase_ins
AFTER INSERT ON wholesale_purchase
FOR EACH ROW
DECLARE 
v_curr_date DATE;
v_curr_amount NUMBER(10);
v_curr_area VARCHAR2(4);
v_item_code VARCHAR2(5);
BEGIN
  SELECT SYSDATE INTO v_curr_date FROM DUAL;
 
  SELECT area_no INTO v_curr_area FROM area_emp ae 	
  WHERE ae.emp_no = :new.emp_no AND ending_date > v_curr_date;
  
  v_item_code := :new.item_code;

  SELECT item_amount_in_kg
           INTO 
		 v_curr_amount 
		   FROM 
		 wholesale_storage
           WHERE 
  item_code = v_item_code AND area_no = v_curr_area;

  UPDATE wholesale_storage
           SET 
  item_amount_in_kg = v_curr_amount + :new.item_amount_in_kg
           WHERE 
  item_code = v_item_code and area_no = v_curr_area;


END;​