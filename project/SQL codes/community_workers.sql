ALTER TABLE community_worker DROP CONSTRAINT c_w_pk;
ALTER TABLE community_worker DROP CONSTRAINT c_w_uk;


DROP TABLE community_worker;


create table community_worker
(
	user_no VARCHAR2(10) NOT NULL,
    community_Name VARCHAR2(50) NOT NULL,
    contact VARCHAR2(15) NOT NULL,
    Area_name VARCHAR2(50) NOT NULL,
	CONSTRAINT c_w_pk PRIMARY KEY(user_no),
	CONSTRAINT c_w_uk UNIQUE(contact)
);