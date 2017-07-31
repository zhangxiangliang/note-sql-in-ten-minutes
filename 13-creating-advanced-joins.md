# 创建高级联结

## 使用表别名
* SQL 还允许对 表名 使用 别名。
    * 缩短 SQL 语句。
    * 允许在一条SELECT语句中多次使用相同的表。
    * Oracle 中没有 `AS`，要使用可以使用 `Customers C`。

## 使用不同类型的联结
* 自联结 (self-join)
* 自然联结 (natural join)
* 外联结 (outer join)

### 自联结
* 许多 `DBMS` 处理 `自联结` 会比 `子查询` 快。
* 如果在同一张表做 `子查询` 操作，可以考虑使用 `自联结`。
* 不会自动去掉重复的列。

### 自然联结
* 会自动去掉重复的列。

### 外联结
* `外联结` 联结包含了那些在相关表中没有关联行的行（空行）。
* 使用 `FROM table1 LEFT OUTER JOIN table2`。
* `LEFT` 表示选择左边表的所有行。
* `RIGHT` 表示选择右边表的所有行。
* 左外联结 和 右外联结 可以通过 `FROM` 或者 `WHERE` 来改变。
* SQLite 不支持 `RIGHT OUTER JOIN`。
* `FULL` 全外联结包括两个 左联结 和 右联结 的数据。
* Access、MariaDB、MySQL、Open Office Base和SQLite不支持FULL OUTER JOIN语法。

## 使用带聚集函数的联结
```
-- 左联结
SELECT Customers.cust_id, Count(Orders.order_num) As num_ord
FROM Customers LEFT OUTER JOIN Orders ON Customers.cust_id = Orders.cust_id
GROUP BY Customers.cust_id;

-- 内联结
SELECT Customers.cust_id, COUNT(Orders.order_num) AS num_ord
FROM Customers INNER JOIN Orders
 ON Customers.cust_id = Orders.cust_id
GROUP BY Customers.cust_id;
```

## 使用联结和联结条件
* 注意所使用的联结类型。一般我们使用内联结，但使用外联结也有效。
* 确切的联结语法，需要根据 `DBMS`。
* 使用正确的联结条件。
* 应该总是使用联结条件，否则会得出笛卡尔积。
* 在一个联结中可以包含多个表，甚至可以对每个联结采用不同的联结类型。
