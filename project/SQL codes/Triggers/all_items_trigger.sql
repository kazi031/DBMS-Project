

CREATE OR REPLACE TRIGGER after_all_items_ins
AFTER INSERT ON all_items
FOR EACH ROW
DECLARE 
type1 VARCHAR2(30) := 'GENERAL';
type2 VARCHAR2(30) := 'GENERAL & WHOLESALE';
type3 VARCHAR2(30) := 'WHOLESALE';
BEGIN
	IF :new.item_type = type1 THEN
	INSERT INTO gen_items(item_code,item_name) VALUES (:new.item_code,:new.item_name);
	ELSIF :new.item_type = type2 THEN
	INSERT INTO gen_items(item_code,item_name) VALUES (:new.item_code,:new.item_name);
	INSERT INTO wholesale_items(item_code,item_name) VALUES (:new.item_code,:new.item_name);
	ELSE
	INSERT INTO wholesale_items(item_code,item_name) VALUES (:new.item_code,:new.item_name);
	END IF;
END;