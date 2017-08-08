# 使用游标

## 游标
* 游标用在检索出来的行中前进或后退一行或多行。
* 存储了游标，应用可以根据需要滚动或浏览其中数据。

* DBMS 支持：
    * Microsoft Access不支持游标。
    * MySQL 5 已经支持游标。
    * SQLite 支持的游标称为步骤(step)。

* 选项和特性：
    * 能够标记游标为只读，使数据能读取，但不能更新和删除。
    * 能控制可以执行的定向操作。
    * 能标记某些列为可编辑的，某些列为不可编辑的。
    * 规定范围，使游标对创建它的特定请求（如存储过程）或对所有请求可访问。
    * 指示DBMS对检索出的数据（而不是指出表中活动数据）进行复制，使数据在游标打开和访问期间不变化。
    * 游标对基于Web的应用用处不大。

## 使用游标
* 在使用游标前，必须声明（未开始检索）。
* 一旦声明，就必须打开游标以供使用（开始用 SELECT 检索）。
* 对于填有数据的游标，根据需要取出各行。
* 在结束游标使用时，必须关闭游标。

### 创建游标
DB2、MariaDB、MySQL和SQL Server版本：
```
DECLARE CustCursor CURSOR
FOR
SELECT * FROM Customers
WHERE cust_email IS NULL
```

下面是Oracle和PostgreSQL版本：
```
DECLARE CURSOR CustCursor
IS
SELECT * FROM Customers
WHERE cust_email IS NULL
```

### 使用游标
* 打开游标 `OPEN CURSOR tablename`。
* 关闭游标 `CLOSE tablename`。
