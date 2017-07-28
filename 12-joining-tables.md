# 联结表

## 联结
* 联结是利用SQL的SELECT能执行的 `最重要的操作`。

### 关联表
##### 为什么要分表
* 使得信息不重复，不会浪费时间和空间。
* 如果部分数据变动，只需要改一次。
* 由于数据不重复，容易处理数据和生成报表。

##### 如何拆分
* 拆分各个表 通过 `共同的值` 相互关联。
* 包含各自的 `主键` 来进行关联。

##### 可伸缩
* 能够适应不断增加的工作量而不失败。
* 设计良好的数据库或应用程序称为可伸缩性好。

##### 为什么使用联结
* 使用联结来关联多个表。

## 创建联结
##### 输入
```
SELECT vend_name, prod_name, prod_price
FROM Vendors, Products
WHERE Vendors.vend_id = Products.vend_id
```

### WHERE 子句的重要性
* `WHERE` 和 `FROM` 配合可以创建联结。
* 如果没有 WHERE 来建立连接，将返回笛卡尔积(n * m)。
* 返回笛卡尔积的联结，也称叉联结(cross join)。

### 内联结
##### 输入
```
SELECT vend_name, prod_name, prod_price
FROM Vendors
INNER JOIN Products ON Vendors.vend_id = Products.vend_id;
```

##### 提示
* `WHERE` 和 `FROM` 的联结称为 `等值联结` 也叫做 `内联结`。
* 也可以使用 `INNER JOIN table ON condition` 来进行内联结。

### 联结多个表
##### 代码
```
SELECT cust_name, cust_contact
FROM Orders, OrderItems, Customers
WHERE OrderItems.prod_id = 'RGAN01'
    AND OrderItems.order_num = Orders.order_num
    AND Orders.cust_id = Customers.cust_id
```

##### 提示
* 联结的表越多，性能下降得越厉害。
* 许多DBMS都有限制联结约束中的表的数目。
* 性能可能会受操作类型、所使用的DBMS、表中数据量、是否存在索引或键等条件的影响。
