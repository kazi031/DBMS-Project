ALTER TABLE general_online_user DROP CONSTRAINT g_o_u_pk;
ALTER TABLE general_online_user DROP CONSTRAINT status_check;
ALTER TABLE general_online_user DROP CONSTRAINT g_o_u_uk_1;
ALTER TABLE general_online_user DROP CONSTRAINT g_o_u_uk_2;


DROP TABLE general_online_user;

create table general_online_user
(
	user_no VARCHAR2(10) NOT NULL,
	first_name VARCHAR2(14) NOT NULL,
    last_name VARCHAR2(16) NOT NULL,
	Area_name VARCHAR2(50) NOT NULL,
	address VARCHAR2(100) NOT NULL,
	apartment_no VARCHAR2(20) NOT NULL,
	contact VARCHAR2(15) NOT NULL,
	email   VARCHAR2(50) NOT NULL,
	req_date DATE NOT NULL,
	status VARCHAR2(10) NOT NULL,
	CONSTRAINT status_check CHECK(status IN('Pending','Approved','Received')),
	CONSTRAINT g_o_u_pk PRIMARY KEY(user_no),
	CONSTRAINT g_o_u_uk_1 UNIQUE(email,req_date),
	CONSTRAINT g_o_u_uk_2 UNIQUE(contact,req_date)
);



ALTER TABLE all_users DROP CONSTRAINT a_u_pk;

DROP TABLE all_users;

create table all_users
(
    user_no VARCHAR2(10) NOT NULL,
	CONSTRAINT a_u_pk PRIMARY KEY(user_no)
);