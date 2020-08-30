ALTER TABLE salaries DROP CONSTRAINT emp_no_fk_6;
ALTER TABLE salaries DROP CONSTRAINT salaries_pk;
ALTER TABLE titles DROP CONSTRAINT emp_no_fk_5;
ALTER TABLE titles DROP CONSTRAINT titles_pk;
ALTER TABLE area_emp DROP CONSTRAINT emp_no_fk_4;
ALTER TABLE area_emp DROP CONSTRAINT area_no_fk_4;
ALTER TABLE area_emp DROP CONSTRAINT area_emp_pk;
ALTER TABLE area_manager DROP CONSTRAINT emp_no_fk_3;
ALTER TABLE area_manager DROP CONSTRAINT area_no_fk_3;
ALTER TABLE area_manager DROP CONSTRAINT area_manager_pk;
ALTER TABLE areas DROP CONSTRAINT areas_pk;
ALTER TABLE areas DROP CONSTRAINT areas_uk;
ALTER TABLE dept_emp DROP CONSTRAINT emp_no_fk_2;
ALTER TABLE dept_emp DROP CONSTRAINT dept_no_fk_2;
ALTER TABLE dept_emp DROP CONSTRAINT dept_emp_pk;
ALTER TABLE dept_manager DROP CONSTRAINT emp_no_fk_1;
ALTER TABLE dept_manager DROP CONSTRAINT dept_no_fk_1;
ALTER TABLE dept_manager DROP CONSTRAINT dept_manager_pk;
ALTER TABLE departments DROP CONSTRAINT departments_pk;
ALTER TABLE departments DROP CONSTRAINT departments_uk;
ALTER TABLE employees DROP CONSTRAINT employees_pk;
ALTER TABLE employees DROP CONSTRAINT gender_check;
ALTER TABLE employees DROP CONSTRAINT employees_uk;


DROP TABLE salaries;
DROP TABLE titles;
DROP TABLE area_emp;
DROP TABLE area_manager;
DROP TABLE areas;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE departments;
DROP TABLE employees;



CREATE TABLE employees (
    emp_no      NUMBER(10)    NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR2(14)    NOT NULL,
    last_name   VARCHAR2(16)    NOT NULL,
    gender      VARCHAR2(2)     NOT NULL,
    hire_date   DATE            NOT NULL,
    contact     VARCHAR2(15)    NOT NULL,
    CONSTRAINT employees_pk PRIMARY KEY(emp_no),
    CONSTRAINT gender_check CHECK(gender IN('M','F')),
	CONSTRAINT employees_uk UNIQUE(contact)
);

ALTER TABLE employees
ADD CONSTRAINT employees_uk UNIQUE(contact);

CREATE TABLE departments (
    dept_no     VARCHAR2(4)         NOT NULL,
    dept_name   VARCHAR2(40)        NOT NULL,
    CONSTRAINT departments_pk PRIMARY KEY(dept_no),
    CONSTRAINT departments_uk UNIQUE (dept_name)
);


CREATE TABLE dept_manager (
   emp_no       NUMBER(10)      NOT NULL,
   dept_no      VARCHAR2(4)     NOT NULL,
   starting_date    DATE        NOT NULL,
   ending_date      DATE        NOT NULL,
   CONSTRAINT emp_no_fk_1 FOREIGN KEY(emp_no)  REFERENCES employees(emp_no) ON DELETE CASCADE,
   CONSTRAINT dept_no_fk_1 FOREIGN KEY(dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE,
   CONSTRAINT dept_manager_pk PRIMARY KEY(emp_no,dept_no)
); 

CREATE TABLE dept_emp (
    emp_no      NUMBER(10)      NOT NULL,
    dept_no     VARCHAR2(4)     NOT NULL,
    starting_date   DATE        NOT NULL,
    ending_date     DATE        NOT NULL,
    CONSTRAINT emp_no_fk_2 FOREIGN KEY(emp_no)  REFERENCES employees(emp_no)  ON DELETE CASCADE,
    CONSTRAINT dept_no_fk_2 FOREIGN KEY(dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE,
    CONSTRAINT dept_emp_pk PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE areas (
    area_no     VARCHAR2(4)         NOT NULL,
    area_name   VARCHAR2(50)        NOT NULL,
    CONSTRAINT areas_pk PRIMARY KEY(area_no),
    CONSTRAINT areas_uk UNIQUE (area_name)
);

CREATE TABLE area_manager (
   emp_no       NUMBER(10)      NOT NULL,
   area_no      VARCHAR2(4)     NOT NULL,
   starting_date    DATE        NOT NULL,
   ending_date      DATE        NOT NULL,
   CONSTRAINT emp_no_fk_3 FOREIGN KEY(emp_no)  REFERENCES employees(emp_no) ON DELETE CASCADE,
   CONSTRAINT area_no_fk_3 FOREIGN KEY(area_no) REFERENCES areas(area_no) ON DELETE CASCADE,
   CONSTRAINT area_manager_pk PRIMARY KEY(emp_no,area_no)
); 

CREATE TABLE area_emp (
    emp_no      NUMBER(10)      NOT NULL,
    area_no     VARCHAR2(4)     NOT NULL,
    starting_date   DATE        NOT NULL,
    ending_date     DATE        NOT NULL,
    CONSTRAINT emp_no_fk_4 FOREIGN KEY(emp_no)  REFERENCES employees(emp_no)  ON DELETE CASCADE,
    CONSTRAINT area_no_fk_4 FOREIGN KEY(area_no) REFERENCES areas(area_no) ON DELETE CASCADE,
    CONSTRAINT area_emp_pk PRIMARY KEY(emp_no,area_no)
);

CREATE TABLE titles (
    emp_no      NUMBER(10)       NOT NULL,
    title       VARCHAR2(50)     NOT NULL,
    starting_date   DATE         NOT NULL,
    ending_date     DATE,
    CONSTRAINT emp_no_fk_5 FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    CONSTRAINT titles_pk PRIMARY KEY(emp_no,title, starting_date)
);

CREATE TABLE salaries (
    emp_no      NUMBER(10)      NOT NULL,
    salary      NUMBER(10)      NOT NULL,
    starting_date   DATE        NOT NULL,
    ending_date     DATE        NOT NULL,
    CONSTRAINT emp_no_fk_6 FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    CONSTRAINT salaries_pk PRIMARY KEY (emp_no, starting_date)
) ; 

    ​