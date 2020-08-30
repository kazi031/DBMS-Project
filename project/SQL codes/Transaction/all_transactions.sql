CREATE TABLE all_transaction
(
    transaction_id VARCHAR2(15) NOT NULL,
    emp_no NUMBER(10)  NOT NULL,
    transaction_date TIMESTAMP NOT NULL,
    total_cost NUMBER(10) NOT NULL,
    CONSTRAINT all_transaction_pk PRIMARY KEY(transaction_id),
    CONSTRAINT all_transaction_fk_1 FOREIGN KEY(emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE
);​