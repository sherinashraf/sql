INSERT INTO tbl_stock VALUES(
    1,'Mouse',10,500,1
);
INSERT INTO tbl_stock VALUES(
    2,'Keyboard',5,450,3
);
INSERT INTO tbl_stock VALUES(
    3,'Modem',10,1200,2
);
INSERT INTO tbl_stock VALUES(
    4,'Memory',100,1500,5
);
INSERT INTO tbl_stock VALUES(
    5,'Headphone',50,750,4
);
INSERT INTO tbl_stock VALUES(
    6,'Memory',2,3500,4
);

UPDATE tbl_stock SET int_price = 501.5 WHERE pk_int_stock_id = 1;
UPDATE tbl_stock SET int_price = 451.5 WHERE pk_int_stock_id = 2;
UPDATE tbl_stock SET int_price = 1201.5 WHERE pk_int_stock_id = 3;
UPDATE tbl_stock SET int_price = 1501.5 WHERE pk_int_stock_id = 4;
UPDATE tbl_stock SET int_price = 751.5 WHERE pk_int_stock_id = 5;
UPDATE tbl_stock SET int_price = 3501.5 WHERE pk_int_stock_id = 6;

SELECT * FROM tbl_stock WHERE int_price > 1000;

SELECT * FROM tbl_stock ORDER BY vchr_name ASC;

SELECT * FROM tbl_stock ORDER BY vchr_name ASC LIMIT 3;

SELECT * FROM tbl_stock ORDER BY vchr_name DESC LIMIT 3;

SELECT *,(int_quantity*int_price) AS total_price FROM tbl_stock;

DELETE FROM tbl_stock WHERE fk_int_supplier=5;

INSERT INTO tbl_dept VALUES(
    1,'Computer Science','CS'
);
INSERT INTO tbl_dept VALUES(
    2,'Electronics','EC'
);
INSERT INTO tbl_dept VALUES(
    3,'Commerce','CC'
);
INSERT INTO tbl_dept VALUES(
    4,'Arts','AR'
);