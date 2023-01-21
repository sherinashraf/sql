CREATE DATABASE store;
\c store

CREATE TABLE tbl_stock(
    pk_int_stock_id SERIAL PRIMARY KEY,
    vchr_name VARCHAR(20),
    int_quantity INT,
    int_price INT
);

select * from tbl_stock;
ALTER TABLE tbl_stock ALTER COLUMN int_price TYPE FLOAT;

CREATE TABLE tbl_supplier(
    pk_int_supplier_id SERIAL PRIMARY KEY,
    vchr_supplier_name VARCHAR(25)
);

select * from tbl_supplier;

ALTER TABLE tbl_stock ADD fk_int_supplier INT;

ALTER TABLE tbl_stock ADD constraint fk_supplier
FOREIGN KEY(fk_int_supplier) REFERENCES tbl_supplier(pk_int_supplier_id) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE tbl_dept(
    pk_int_dept_id SERIAL PRIMARY KEY,
    vchr_dept_name VARCHAR(25)
);

CREATE TABLE tbl_classes(
    pk_int_class_id SERIAL PRIMARY KEY,
    vchr_class_name VARCHAR(25),
    fk_int_dept_id INT,
    FOREIGN KEY(fk_int_dept_id) REFERENCES tbl_dept(pk_int_dept_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE tbl_enrollment(
    pk_int_enrollment_id SERIAL PRIMARY KEY,
    int_count INT,
    fk_int_class_id INT,
    FOREIGN KEY(fk_int_class_id) REFERENCES tbl_classes(pk_int_class_id) ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE tbl_classes
ADD CONSTRAINT class_unique UNIQUE (vchr_class_name);

ALTER TABLE tbl_dept ADD vchr_dept_description VARCHAR(20);

INSERT INTO tbl_supplier VALUES(
    1,'Logitech'
);
INSERT INTO tbl_supplier VALUES(
    2,'Samsung'
 );
INSERT INTO tbl_supplier VALUES(
    3,'Iball'
 );
 INSERT INTO tbl_supplier VALUES(
    4,'LG'
 );
 INSERT INTO tbl_supplier VALUES(
    5,'Creative'
 );