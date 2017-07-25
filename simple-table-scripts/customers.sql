-- ------------------------
-- Create customers table
-- ------------------------
CREATE TABLE customers
(
    cust_id char(10)       NOT NULL COMENT '唯一顾客ID',
    cust_name char(50)     NOT NULL COMMENT '顾客名',
    cust_address char(50)  NULL COMMENT '顾客的地址',
    cust_city char(50)     NULL COMMENT '顾客所在城市',
    cust_state char(5)     NULL COMMENT '顾客所在州',
    cust_zip char(10)      NULL COMMENT '顾客地址邮政编码',
    cust_country char(50)  NULL CMOMMET '顾客所在国家',
    cust_contact char(50)  NULL CMOMMET '顾客的联系电话',
    cust_email   char(255) NULL CMOMMET '顾客的电子邮件'
)

-- ------------------------
-- Populate customers table
-- ------------------------
INSERT INTO customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact, cust_email)
VALUES('1000000001', 'Village Toys', '200 Maple Lane', 'Detroit', 'MI', '44444', 'USA', 'John Smith', 'sales@villagetoys.com');
INSERT INTO customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact)
VALUES('1000000002', 'Kids Place', '333 South Lake Drive', 'Columbus', 'OH', '43333', 'USA', 'Michelle Green');
INSERT INTO customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact, cust_email)
VALUES('1000000003', 'Fun4All', '1 Sunny Place', 'Muncie', 'IN', '42222', 'USA', 'Jim Jones', 'jjones@fun4all.com');
INSERT INTO customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact, cust_email)
VALUES('1000000004', 'Fun4All', '829 Riverside Drive', 'Phoenix', 'AZ', '88888', 'USA', 'Denise L. Stephens', 'dstephens@fun4all.com');
INSERT INTO customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact)
VALUES('1000000005', 'The Toy Store', '4545 53rd Street', 'Chicago', 'IL', '54545', 'USA', 'Kim Howard');
