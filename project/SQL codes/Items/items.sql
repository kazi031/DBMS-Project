ALTER TABLE all_items DROP CONSTRAINT all_items_pk;
ALTER TABLE all_items DROP CONSTRAINT all_items_uk;

ALTER TABLE gen_items DROP CONSTRAINT gen_items_fk;
ALTER TABLE gen_items DROP CONSTRAINT gen_items_uk;

ALTER TABLE wholesale_items DROP CONSTRAINT wholesale_items_fk;
ALTER TABLE wholesale_items DROP CONSTRAINT wholesale_items_uk;

DROP TABLE all_items;
DROP TABLE gen_items;
DROP TABLE wholesale_items;

CREATE TABLE all_items
(
	item_code VARCHAR2(5) NOT NULL,
	item_name VARCHAR2(50) NOT NULL,
	item_type VARCHAR2(30) NOT NULL,
	CONSTRAINT all_items_pk PRIMARY KEY(item_code),
	CONSTRAINT all_items_uk UNIQUE(item_name)
);
CREATE TABLE gen_items
(
	item_code VARCHAR2(5) NOT NULL,
	item_name VARCHAR2(50) NOT NULL,
	CONSTRAINT gen_items_fk FOREIGN KEY(item_code) REFERENCES all_items(item_code) ON DELETE CASCADE,
	CONSTRAINT gen_items_uk UNIQUE(item_name)
);
ALTER TABLE gen_items ADD CONSTRAINT gen_items_pk PRIMARY KEY(item_code);

CREATE TABLE wholesale_items
(
	item_code VARCHAR2(5) NOT NULL,
	item_name VARCHAR2(50) NOT NULL,
	CONSTRAINT wholesale_items_fk FOREIGN KEY(item_code) REFERENCES all_items(item_code) ON DELETE CASCADE,
	CONSTRAINT wholesale_items_uk UNIQUE(item_name)
);
ALTER TABLE wholesale_items ADD CONSTRAINT wholesale_items_pk PRIMARY KEY(item_code);

INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i001','CPU','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i002','CRT MONITOR','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i003','MULTI PLUG','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i004','LAPTOP','GENERAL & WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i005','RADIO','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i006','LED MONITOR','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i007','LED TV','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i008','CRT TV','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i009','AIR CONDITIONER','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i010','MICROWAVE OVEN','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i011','ELECTRIC OVEN','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i012','BATTERY','GENERAL & WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i013','CELL PHONE','GENERAL & WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i014','TELE-PHONE','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i015','KEYBOARD','GENERAL & WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i016','MOUSE','GENERAL & WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i017','GAMEPAD','GENERAL & WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i018','REFRIGERATOR','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i019','PRINTER','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i020','SCANNER','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i021','XEROX MACHINE','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i022','LED BULBS/LIGHTS','GENERAL');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i023','TUBE LIGHT','GENERAL');

INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i024','ELECTRONIC CABLES','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i025','CIRCUIT BOARDS CATEGORY 1 A','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i026','CIRCUIT BOARDS CATEGORY 1 B','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i027','CIRCUIT BOARDS CATEGORY 1 C','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i028','CIRCUIT BOARDS CATEGORY 2 A','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i029','CIRCUIT BOARDS CATEGORY 2 B','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i030','CIRCUIT BOARDS CATEGORY 3','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i031','REAR BOARDS','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i032','COMPUTER PLUGS','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i033','METAL CONNECTORS','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i034','CELL PHONE CIRCUIT BOARDS','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i035','PROCESSOR','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i036','RAM','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i037','CHIPS','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i038','UNPOPULATED BOARDS','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i039','HARD DRIVES','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i040','DRIVES','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i041','CD/DVD','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i042','POWER SUPPLIES/TRANSFORMER','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i043','COPPER COILS','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i044','RELAYS','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i045','FANS','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i046','NON-FERROUS METAL','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i047','SCRAP STEEL','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i048','SCRAP COPPER','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i049','SCRAP ALUMINIUM','WHOLESALE');
INSERT INTO all_items(item_code,item_name,item_type) VALUES ('i050','MOTHER-BOARD','WHOLESALE');​

-- gen_items

INSERT INTO gen_items(item_code,item_name) VALUES ('i001','CPU');
INSERT INTO gen_items(item_code,item_name) VALUES ('i002','CRT MONITOR');
INSERT INTO gen_items(item_code,item_name) VALUES ('i003','MULTI PLUG');
INSERT INTO gen_items(item_code,item_name) VALUES ('i004','LAPTOP');
INSERT INTO gen_items(item_code,item_name) VALUES ('i005','RADIO');
INSERT INTO gen_items(item_code,item_name) VALUES ('i006','LED MONITOR');
INSERT INTO gen_items(item_code,item_name) VALUES ('i007','LED TV');
INSERT INTO gen_items(item_code,item_name) VALUES ('i008','CRT TV');
INSERT INTO gen_items(item_code,item_name) VALUES ('i009','AIR CONDITIONER');
INSERT INTO gen_items(item_code,item_name) VALUES ('i010','MICROWAVE OVEN');
INSERT INTO gen_items(item_code,item_name) VALUES ('i011','ELECTRIC OVEN');
INSERT INTO gen_items(item_code,item_name) VALUES ('i012','BATTERY');
INSERT INTO gen_items(item_code,item_name) VALUES ('i013','CELL PHONE');
INSERT INTO gen_items(item_code,item_name) VALUES ('i014','TELE-PHONE');
INSERT INTO gen_items(item_code,item_name) VALUES ('i015','KEYBOARD');
INSERT INTO gen_items(item_code,item_name) VALUES ('i016','MOUSE');
INSERT INTO gen_items(item_code,item_name) VALUES ('i017','GAMEPAD');
INSERT INTO gen_items(item_code,item_name) VALUES ('i018','REFRIGERATOR');
INSERT INTO gen_items(item_code,item_name) VALUES ('i019','PRINTER');
INSERT INTO gen_items(item_code,item_name) VALUES ('i020','SCANNER');
INSERT INTO gen_items(item_code,item_name) VALUES ('i021','XEROX MACHINE');
INSERT INTO gen_items(item_code,item_name) VALUES ('i022','LED BULBS/LIGHTS');
INSERT INTO gen_items(item_code,item_name) VALUES ('i023','TUBE LIGHT');


-- wholesale items

INSERT INTO wholesale_items(item_code,item_name) VALUES ('i004','LAPTOP');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i013','CELL PHONE');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i024','ELECTRONIC CABLES');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i025','CIRCUIT BOARDS CATEGORY 1 A');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i026','CIRCUIT BOARDS CATEGORY 1 B');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i027','CIRCUIT BOARDS CATEGORY 1 C');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i028','CIRCUIT BOARDS CATEGORY 2 A');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i029','CIRCUIT BOARDS CATEGORY 2 B');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i030','CIRCUIT BOARDS CATEGORY 3');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i031','REAR BOARDS');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i032','COMPUTER PLUGS');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i033','METAL CONNECTORS');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i034','CELL PHONE CIRCUIT BOARDS');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i035','PROCESSOR');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i036','RAM');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i037','CHIPS');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i038','UNPOPULATED BOARDS');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i039','HARD DRIVES');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i040','DRIVES');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i041','CD/DVD');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i042','POWER SUPPLIES/TRANSFORMER');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i043','COPPER COILS');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i044','RELAYS');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i045','FANS');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i046','NON-FERROUS METAL');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i047','SCRAP STEEL');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i048','SCRAP COPPER');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i049','SCRAP ALUMINIUM');
INSERT INTO wholesale_items(item_code,item_name) VALUES ('i050','MOTHER-BOARD');



