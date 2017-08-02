# 插入数据

## 数据插入
* 使用 `INSERT`。
* 插入完整的行。
* 插入行的一些部分。
* 插入某些查询结果。

### 插入完整的行
* 尽量不去依赖表自身的结构顺序，这是很不安全的。
* 编写 `INSERT` 语句更加安全。
* `INSERT INTO` 可以不一定需要 `INTO`，但是为了兼容性最好加上。
* `VALUES` 值的数目需要和 提供的列名一样。

### 插入部分行
* 省略的列必须满足以下某个条件：
    * 该列定义允许为 NULL 值。
    * 该列定义时有默认值。

### 插入检索出的数据
##### 输入
```
INSERT INTO Customers(
    cust_id, cust_contact, cust_email, cust_name, cust_address,
    cust_city, cust_state, cust_zip, cust_country)
SELECT cust_id, cust_contact, cust_email, cust_name, cust_address,
       cust_city, cust_state, cust_zip, cust_country
FROM CustNew;
```

##### 说明
* DBMS 不关心 `SELECT` 返回的列名，只关心返回的顺序。
* `INSERT SELECT` 可以插入多行数据， `INSERT` 只能一行行插入。

## 从一个表复制到另一个表
* 使用 `SELECT * INTO tablecopy FROM table`。
* `MariaDB、MySQL、Oracle、PostgreSQL和SQLite` 使用 `CREATE TABLE tablecopy AS SELECT * FROM Customers`。
* 在复制的表上面操作数据是一个好的习惯。
* 任何SELECT选项和子句都可以使用，包括WHERE和GROUP BY。
* 可利用联结从多个表插入数据。
* 不管从多少个表中检索数据，数据都只能插入到一个表中。
