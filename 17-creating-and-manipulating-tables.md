# 创建和操纵表
## 创建表
* 两种创建表的方式：
    * 多数DBMS都具有交互式创建和管理数据库表的工具。
    * 表也可以直接用SQL语句操纵。
    * 不同 DBMS 创建表的方法可能有所不同，请参考文档。

## 表创建基础
##### 基础
* 新表的名字，在关键字 `CREATE TABLE` 之后。
* 表列的名字和定义，用逗号分隔。
* 有的DBMS还要求指定表的位置。

##### 输入
```
CREATE TABLE Products
(
    prod_id       CHAR(10)          NOT NULL,
    vend_id       CHAR(10)          NOT NULL,
    prod_name     CHAR(254)         NOT NULL,
    prod_price    DECIMAL(8,2)      NOT NULL,
    prod_desc     VARCHAR(1000)     NULL
);
```

##### 提示
* 上面输入在 Oracle、PostgreSQL、SQL Server和SQLite中有效。
* 上面输入在 MySQL，varchar必须替换为text。
* 上面输入在 DB2，需要去掉最后一列的 NULL。
