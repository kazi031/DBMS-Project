DROP TABLE purchase_transaction;

CREATE TABLE purchase_transaction
(
    transaction_id VARCHAR2(15) NOT NULL,
    emp_no NUMBER(10)  NOT NULL,
    user_no VARCHAR2(10) NOT NULL,
    transaction_date TIMESTAMP NOT NULL,
    total_cost NUMBER(10) NOT NULL,
    CONSTRAINT purchase_transaction_pk PRIMARY KEY(transaction_id),
    CONSTRAINT purchase_transaction_fk_1 FOREIGN KEY(emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE,
    CONSTRAINT gen_transaction_fk_2 FOREIGN KEY(user_no) REFERENCES all_users(user_no) ON DELETE CASCADE
);​

-- purchase transaction trigger

CREATE OR REPLACE TRIGGER after_purchase_transaction_ins
AFTER INSERT ON purchase_transaction
FOR EACH ROW
BEGIN
INSERT INTO all_transaction(transaction_id,emp_no,transaction_date,total_cost) VALUES(:new.transaction_id,:new.emp_no,:new.transaction_date,:new.total_cost);
END;