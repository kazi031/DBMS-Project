ALTER TABLE corporate_user DROP CONSTRAINT c_u_pk;
ALTER TABLE corporate_user DROP CONSTRAINT c_u_uk;

DROP TABLE corporate_user;

create table corporate_user
(
	user_no VARCHAR2(10) NOT NULL,
    Company_name VARCHAR2(50) NOT NULL,
	head_office_contact VARCHAR2(15) NOT NULL,
	head_office_address VARCHAR2(100) NOT NULL,
	Area_name VARCHAR2(50) NOT NULL,
	trade_license_no VARCHAR2(50) NOT NULL,
	CONSTRAINT c_u_pk PRIMARY KEY(user_no),
	CONSTRAINT c_u_uk UNIQUE(trade_license_no)
);

ALTER TABLE corporate_user ADD CONSTRAINT c_u_uk_2 UNIQUE(Company_name);