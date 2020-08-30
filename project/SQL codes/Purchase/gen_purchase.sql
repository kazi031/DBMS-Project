DROP TABLE gen_purchase;
DROP TABLE wholesale_purchase;

ALTER TABLE gen_purchase DROP CONSTRAINT gen_purchase_pk;
ALTER TABLE gen_purchase DROP CONSTRAINT gen_purchase_fk_1;
ALTER TABLE gen_purchase DROP CONSTRAINT gen_purchase_fk_2;
ALTER TABLE gen_purchase DROP CONSTRAINT gen_purchase_fk_3;
ALTER TABLE gen_purchase DROP CONSTRAINT gen_purchase_fk_4;

CREATE TABLE gen_purchase
(
    purchase_id VARCHAR2(15) NOT NULL,
    emp_no      NUMBER(10)    NOT NULL,
    user_no VARCHAR2(10) NOT NULL,
    item_code VARCHAR2(5) NOT NULL,
    item_amount_in_piece NUMBER(10) NOT NULL,
    price NUMBER(10) NOT NULL,
    purchase_date DATE NOT NULL,
    CONSTRAINT gen_purchase_fk_1 FOREIGN KEY(emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE,
    CONSTRAINT gen_purchase_fk_2 FOREIGN KEY(item_code) REFERENCES gen_items(item_code) ON DELETE CASCADE,
    CONSTRAINT gen_purchase_fk_3 FOREIGN KEY(user_no) REFERENCES gen_user(user_no) ON DELETE CASCADE
);



ALTER TABLE wholesale_purchase DROP CONSTRAINT wholesale_purchase_fk_1;
ALTER TABLE wholesale_purchase DROP CONSTRAINT wholesale_purchase_fk_2;
ALTER TABLE wholesale_purchase DROP CONSTRAINT wholesale_purchase_fk_3;



CREATE TABLE wholesale_purchase
(
    purchase_id VARCHAR2(15) NOT NULL,
    emp_no   NUMBER(10)    NOT NULL,
    user_no VARCHAR2(10) NOT NULL,
    item_code VARCHAR2(5) NOT NULL,
    item_amount_in_kg NUMBER(10) NOT NULL,
    price NUMBER(10) NOT NULL,
    purchase_date DATE NOT NULL,
    CONSTRAINT wholesale_purchase_fk_1 FOREIGN KEY(emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE,
    CONSTRAINT wholesale_purchase_fk_2 FOREIGN KEY(item_code) REFERENCES wholesale_items(item_code) ON DELETE CASCADE,
    CONSTRAINT wholesale_purchase_fk_3 FOREIGN KEY(user_no) REFERENCES wholesale_user(user_no) ON DELETE CASCADE
);​