# 创建和操纵表
## 创建表
* 两种创建表的方式：
    * 多数DBMS都具有交互式创建和管理数据库表的工具。
    * 表也可以直接用SQL语句操纵。
    * 不同 DBMS 创建表的方法可能有所不同，请参考文档。

### 表创建基础
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
* SQL 会忽略空格分行，利用这个进行SQL语句格式化。
* 创建表的时候，注意指定的表名必须不存在。

### 使用 NULL 值
* 每个表列要么是 `NULL` 列，要么是 `NOT NULL` 列。
* 使用时需要注意，并不是所有 `DBMS` 都有默认指定值。
* `NULL` 列不能作为主键。
* `NULL` 不是空字符串，可以存入空字符串。

### 指定默认值
* SQL 允许指定默认值，使用 `DEFAULT` 关键字。
* 对于用于计算或数据分组的列，最好使用 `DEFAULT` 而不是 `NULL` 列。

## 更新表
* 使用 `ALTER TABLE` 时需要考虑的事情：
    * 理想情况下，不要在表中包含数据时对其进行更新，要提前设计好。
    * 所有的DBMS都允许给现有的表增加列，对所增加列的数据类型（以及NULL和DEFAULT的使用）有所限制。
    * 许多DBMS不允许删除或更改表中的列。
    * 多数DBMS允许重新命名表中的列。
    * 许多DBMS限制对已经填有数据的列进行更改，对未填有数据的列几乎没有限制。

* 复杂的表结构更改步骤：
    * 用新的列布局创建一个新表。
    * 使用 `INSERT SELECT` 语句，从旧表复制数据到新表。
    * 校验包含所需数据的新表。
    * 重命名旧表。
    * 用旧表原来的名字重命名新表。
    * 根据需要,重新创建触发器、存储过程、索引和外键。

* 使用ALTER TABLE更改表结构，必须给出下面的信息：
    * 在ALTER TABLE之后给出要更改的表名。
    * 列出要做哪些更改。
    * 使用 `ALTER TABLE table ADD row type`。
    * 使用 `ALTER TABLE table DROP COLUMN row type`。

* SQLite 不支持 `ALTER TABLE` 定义主键和外键。
* `ALTER TABLE` 操作是不能撤回的，需要做好备份。

## 删除表
* `DROP TABLE tablename`
* 删除表没有提示，也不能撤销。
* 将会永久删除该表。

## 重命名表
* DB2、MariaDB、MySQL、Oracle和PostgreSQL用户使用 `RENAME` 语句。
* SQL Server 用户使用 `sp_rename` 存储过程。
* SQLite 用户使用 `ALTER TABLE` 语句。
