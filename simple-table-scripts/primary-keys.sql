-- -------------------
-- Define primary keys
-- -------------------
ALTER TABLE customers ADD PRIMARY KEY (cust_id);
ALTER TABLE orderitems ADD PRIMARY KEY (order_num, order_item);
ALTER TABLE orders ADD PRIMARY KEY (order_num);
ALTER TABLE products ADD PRIMARY KEY (prod_id);
ALTER TABLE vendors ADD PRIMARY KEY (vend_id);
