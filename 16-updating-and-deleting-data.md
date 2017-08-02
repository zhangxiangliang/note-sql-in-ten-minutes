# 更新和删除数据

## 更新数据
##### 输入
```
UPDATE Customers
SET cust_contact = 'Sam Roberts',
    cust_email = 'sam@toyland.com'
WHERE cust_id = '1000000006';
```

##### 提示
* UPDATE 的两种使用方式：
    * 更新表中的特定行。
    * 更新表中的所有行。

* UPDATE 语句由三部分组成：
    * 要更新的表名。
    * 列名和它们的新值。
    * 确定要更新哪些行的过滤条件。

* 有的SQL实现支持在UPDATE语句中使用FROM子句，用一个表的数据更新另一个表的行

## 删除数据
* DELETE 的两种使用方式：
    * 从表中删除特定的行。
    * 从表中删除所有的行。

* 删除数据时要注意外键。
* `DELETE` 需要有操作权限。
* 为了可移植最好使用 `DELETE FROM`。
* 不要省略 `WHERE` 子句，很容易误删除表中所有行。
* `DELETE` 不需要列名，`DELETE` 是删除行，如果删除列使用 `UPDATE`。
* 删除表使用 `TRUNCATE TABLE`。

## 更新和删除的指导原则
* 除非确实要更新或删除所有行，否则一定带上 `WHERE` 子句。
* 保证每个表都有主键，方便操作。
* 使用 `DELETE` 或者 `UPDATE` 应该先用 `SELECT` 测试正确性。
* 使用强制实施引用完整性的数据库，这样 DBMS 不允许删除其相关数据。
* 如果 DBMS 拥有能够施加约束，防止执行不带WHERE子句的UPDATE或DELETE语句。
* SQL 如果没有撤销功能，应该非常小心使用。
