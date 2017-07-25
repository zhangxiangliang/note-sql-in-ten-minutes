-- --------------------
-- Create vendors table
-- --------------------
CREATE TABLE vendors
(
  vend_id char(10) NOT NULL COMMENT '唯一的供应商ID',
  vend_name char(50) NOT NULL COMMENT '供应商名',
  vend_address char(50) NULL COMMENT '供应商的地址',
  vend_city char(50) NULL COMMENT '供应商所在城市',
  vend_state char(5) NULL COMMENT '供应商所在州',
  vend_zip char(10) NULL COMMENT '供应商地址邮政编码',
  vend_country char(50) NULL COMMENT '供应商所在国家'
);

-- ----------------------
-- Populate vendors table
-- ----------------------
INSERT INTO vendors(vend_id, vend_name, vend_address, vend_city, vend_state, vend_zip, vend_country)
VALUES('BRS01','Bears R Us','123 Main Street','Bear Town','MI','44444', 'USA');
INSERT INTO vendors(vend_id, vend_name, vend_address, vend_city, vend_state, vend_zip, vend_country)
VALUES('BRE02','Bear Emporium','500 Park Street','Anytown','OH','44333', 'USA');
INSERT INTO vendors(vend_id, vend_name, vend_address, vend_city, vend_state, vend_zip, vend_country)
VALUES('DLL01','Doll House Inc.','555 High Street','Dollsville','CA','99999', 'USA');
INSERT INTO vendors(vend_id, vend_name, vend_address, vend_city, vend_state, vend_zip, vend_country)
VALUES('FRB01','Furball Inc.','1000 5th Avenue','New York','NY','11111', 'USA');
INSERT INTO vendors(vend_id, vend_name, vend_address, vend_city, vend_state, vend_zip, vend_country)
VALUES('FNG01','Fun and Games','42 Galaxy Road','London', NULL,'N16 6PS', 'England');
INSERT INTO vendors(vend_id, vend_name, vend_address, vend_city, vend_state, vend_zip, vend_country)
VALUES('JTS01','Jouets et ours','1 Rue Amusement','Paris', NULL,'45678', 'France');
