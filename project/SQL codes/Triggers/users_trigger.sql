-- community workers

CREATE OR REPLACE TRIGGER after_com_workers_ins
AFTER INSERT ON community_worker
FOR EACH ROW
DECLARE 
v_curr_user_no VARCHAR2(10);
BEGIN
    v_curr_user_no := :new.user_no;
    INSERT INTO all_users(user_no) values(v_curr_user_no);
END;


-- scrap metal shops

CREATE OR REPLACE TRIGGER after_sc_met_shop_ins
AFTER INSERT ON scrap_metal_shop
FOR EACH ROW
DECLARE 
v_curr_user_no VARCHAR2(10);
BEGIN
    v_curr_user_no := :new.user_no;
    INSERT INTO all_users(user_no) values(v_curr_user_no);
END;


-- corporate users

CREATE OR REPLACE TRIGGER after_corp_users_ins
AFTER INSERT ON corporate_user
FOR EACH ROW
DECLARE 
v_curr_user_no VARCHAR2(10);
BEGIN
    v_curr_user_no := :new.user_no;
    INSERT INTO all_users(user_no) values(v_curr_user_no);
END;