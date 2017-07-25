-- -------------------
-- Create orders table
-- -------------------
CREATE TABLE orders
(
  order_num  int NOT NULL COMMENT '订单号 - orderitems',
  order_date datetime NOT NULL COMMENT '订单日期',
  cust_id char(10) NOT NULL COMMENT '订单ID'
);

-- ---------------------
-- Populate orders table
-- ---------------------
INSERT INTO orders(order_num, order_date, cust_id)
VALUES(20005, '2012-05-01', '1000000001');
INSERT INTO orders(order_num, order_date, cust_id)
VALUES(20006, '2012-01-12', '1000000003');
INSERT INTO orders(order_num, order_date, cust_id)
VALUES(20007, '2012-01-30', '1000000004');
INSERT INTO orders(order_num, order_date, cust_id)
VALUES(20008, '2012-02-03', '1000000005');
INSERT INTO orders(order_num, order_date, cust_id)
VALUES(20009, '2012-02-08', '1000000001');
