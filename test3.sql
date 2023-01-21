SELECT SUM(int_quantity*int_price) AS totalcost FROM tbl_stock;

SELECT SUM(int_quantity) AS total_no_products FROM tbl_stock;

SELECT UPPER(vchr_name) FROM tbl_stock;
SELECT ROUND(int_price) FROM tbl_stock;

SELECT COUNT(vchr_name) AS items FROM tbl_stock;

SELECT vchr_name,int_price FROM tbl_stock WHERE int_price = (SELECT MAX(int_price) FROM tbl_stock);



INSERT INTO tbl_classes VALUES(
    1,'CS100',1
);
INSERT INTO tbl_classes VALUES(
    2,'CS101',1
);
INSERT INTO tbl_classes VALUES(
    3,'CS102',1
);
INSERT INTO tbl_classes VALUES(
    4,'CS103',1
);
INSERT INTO tbl_classes VALUES(
    5,'EC200',2
);
INSERT INTO tbl_classes VALUES(
    6,'CC300',3
);
INSERT INTO tbl_classes VALUES(
    7,'AT400',4
);


INSERT INTO tbl_enrollment VALUES(
    1,40,1
);
INSERT INTO tbl_enrollment VALUES(
    2,15,2
);
INSERT INTO tbl_enrollment VALUES(
    3,10,3
);
INSERT INTO tbl_enrollment VALUES(
    4,12,4
);
INSERT INTO tbl_enrollment VALUES(
    5,60,2
);
INSERT INTO tbl_enrollment VALUES(
    6,14,6
);
INSERT INTO tbl_enrollment VALUES(
    7,200,7
);


SELECT SUM(int_count) AS total_enrollment FROM tbl_enrollment;

SELECT COUNT(*) AS no_of_classes FROM tbl_classes;

DELETE FROM tbl_stock WHERE fk_int_supplier=5;

SELECT CONCAT(vchr_name,int_price) AS product_price FROM tbl_stock;


CREATE TABLE tbl_student(
    EnRl_No INT,
    Roll_No INT PRIMARY KEY,
    st_Name VARCHAR(20),
    city VARCHAR(20),
    mobile VARCHAR(20),
    Dob DATE
);

INSERT INTO tbl_student VALUES(
    11,2,'Akhil','Delhi','98756579','12-01-1986'
);
INSERT INTO tbl_student VALUES(
    6,4,'Maya','Bangalore','98734534','12-11-1987'
);
INSERT INTO tbl_student VALUES(
    1,8,'Anoop','Bangalore','93456535','22-12-1990'
);
INSERT INTO tbl_student VALUES(
    20,1,'Paul','Cochin','96754555','13-08-1991'
);
INSERT INTO tbl_student VALUES(
    3,5,'Sandeep','Delhi','84865644','14-06-1993'
);


CREATE TABLE tbl_grade(
    Roll_No INT,
    course VARCHAR(20),
    grade VARCHAR(5),
    FOREIGN KEY(Roll_No) REFERENCES tbl_student(Roll_No) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO tbl_grade VALUES(
    2,'C','A'
);
INSERT INTO tbl_grade VALUES(
    2,'Java','B'
);
INSERT INTO tbl_grade VALUES(
    1,'C','B'
);
INSERT INTO tbl_grade VALUES(
    1,'Java','A'
);
INSERT INTO tbl_grade VALUES(
    4,'PHP','A'
);
INSERT INTO tbl_grade VALUES(
    4,'Java','A'
);
INSERT INTO tbl_grade VALUES(
    4,'C','B'
);
INSERT INTO tbl_grade VALUES(
    8,'Java','B'
);
INSERT INTO tbl_grade VALUES(
    5,'PHP','A'
);
INSERT INTO tbl_grade VALUES(
    5,'Java','D'
);

SELECT st_Name FROM tbl_student WHERE Roll_No IN(SELECT Roll_No FROM tbl_grade WHERE grade = 'A');

SELECT COUNT(grade) AS no_std_with_Bgrade FROM tbl_grade WHERE grade='B';