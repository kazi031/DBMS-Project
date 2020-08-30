CREATE OR REPLACE TRIGGER before_gen_online_user_ins
BEFORE INSERT ON general_online_user
FOR EACH ROW
DECLARE 
v_curr_date DATE;
BEGIN
   SELECT SYSDATE INTO v_curr_date FROM DUAL;
   :new.req_date := v_curr_date;
END;



CREATE OR REPLACE TRIGGER after_gen_online_user_ins
AFTER INSERT ON general_online_user
FOR EACH ROW
DECLARE 
v_curr_user_no VARCHAR2(10);
BEGIN
    v_curr_user_no := :new.user_no;
    INSERT INTO all_users(user_no) values(v_curr_user_no);
END;