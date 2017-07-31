# 组合查询

## 组合查询
* 利用 UNION 操作符将多条 SELECT 语句组合成一个结果集。
* 有两种情况需要使用组合查询:
    * 在一个查询中从不同的表返回结构数据。
    * 对一个表执行多个查询，按一个查询返回数据。

## 创建组合查询
### 使用 UNION

##### 输入
```
--- 使用 WHERE
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL', 'IN', 'MI')
    OR cust_name = 'Fun4All';

--- 使用 UNION
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL', 'IN', 'MI')
UNION
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name LIKE 'Fun4All';
```

##### 提示
* 合理利用 `UNION` 或者 `WHERE` 子句，来达到语句简化。
* UNION 能组合的最大语句数目有限制。
* 注意性能问题，合理使用。

### UNION 规则
* `UNION` 必须用两条或者两条以上的 `SELECT` 语句组成。
* `UNION` 中需要包含相同的列、表达式或聚集函数（顺序无关）。
* 数据类型必须兼容类型：类型可以不同，但是需 DBMS 可以隐含转换的类型。
* `UNION` 默认会去掉重复行，也可以使用 `UNION ALL` 来取消这一行为。
* `UNION ALL` 的重复行可以完成 `WHERE` 完成不了的操作。

### 对组合查询结果排序
* 要在最后一条 `SELECT` 语句后使用 `ORDER BY` 语句。
* 可以利用别名来配合 UNION，来达到不同表的联结。
* 使用UNION可极大地简化复杂的WHERE子句，简化从多个表中检索数据的工作。
