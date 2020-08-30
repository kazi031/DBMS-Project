CREATE TABLE conversion
(
	conversion_id VARCHAR2(10) NOT NULL,
	item_code  VARCHAR2(5) NOT NULL,
    item_amount_in_piece NUMBER(10) NOT NULL, 
    item_amount_in_kg NUMBER(10) NOT NULL,
	CONSTRAINT c_pk PRIMARY KEY(conversion_id),
	CONSTRAINT c_fk FOREIGN KEY(item_code) REFERENCES gen_items(item_code) ON DELETE CASCADE
)