# 检索数据

## SELECT 语句
* 使用 `SELECT` 必须字少给出两个信息
    * 想选择什么
    * 想从什么地方选

## 检索单个列
##### 输入
```
SELECT prod_name FROM products;
```

##### 提示
* 如果未进行数据排序，输出的顺序是无法预测的可能与创建先后等等有关，结果条数不变。
* SQL 语句 `不区分大小写`，但是表名、类名和值可能会有所不同（与配置有关）。
* 在 SQL 语句中所有的 `空格` 都将被忽略。

## 检索多个列
##### 输入
```
SELECT prod_id, prod_name, prod_price
FROM products;
```
##### 提示
* 多个列应该用 `逗号` 隔开。

## 检索所有列
##### 输入
```
SELECT *
FROM Products;
```
##### 提示
* 列的顺序一般是列在表定义中出现的物理顺序。
* 使用通配符 （`*`）尽量少用，会降低检索和应用程序的性能。

## 检索不同的值
##### 输入
```
SELECT DISTINCT vend_id
FROM Products;
```
##### 提示
* `DISTINCT` 让数据库返回不同值。
* `DISTINCT` 不能单独指定某一列。


## 限制结果
### SQL Server 和 Access
##### 输入
```
SELECT TOP 5 prod_name
FROM Products;
```

### DB2
##### 输入
```
SELECT prod_name
FROM Products
FETCH FIRST 5 ROWS ONLY;
```

### Oracle
##### 输入
```
SELECT prod_name
FROM Products
WHERE ROWNUM <=5;
```

### MySQL、MariaDB、PostgreSQL 和 SQLite
##### 输入
```
SELECT prod_name
FROM Products
LIMIT 5 OFFSET 5;
```

##### 提示
* 可用使用 `LIMIT 5 OFFSET 4` 也可以使用 `LIMIT 4,5`。
* 被检索的第一个是 `第0行`。
* SQL 复杂语句在不同 `DBMS` 上是不一样的。
