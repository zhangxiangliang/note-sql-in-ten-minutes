-- ---------------------
-- Create Products table
-- ---------------------
CREATE TABLE products
(
  prod_id char(10) NOT NULL COMMENT '产品id - orderitems',
  vend_id char(10) NOT NULL COMMENT '产品供应商ID - vendors',
  prod_name  char(255) NOT NULL COMMENT '产品名',
  prod_price decimal(8,2) NOT NULL COMMENT '产品价格',
  prod_desc text NULL COMMENT '产品描述'
);
