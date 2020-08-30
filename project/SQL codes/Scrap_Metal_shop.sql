
ALTER TABLE scrap_metal_shop DROP CONSTRAINT s_m_s_pk;
ALTER TABLE scrap_metal_shop DROP CONSTRAINT s_m_s_uk;


DROP TABLE scrap_metal_shop;

create table scrap_metal_shop
(
	user_no VARCHAR2(10) NOT NULL,
    shop_name VARCHAR2(50) NOT NULL,
	Area_name VARCHAR2(50) NOT NULL,
    trade_license_no VARCHAR2(50) NOT NULL,
	CONSTRAINT s_m_s_pk PRIMARY KEY(user_no),
	CONSTRAINT s_m_s_uk UNIQUE(trade_license_no)
);