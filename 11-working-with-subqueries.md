# 使用子查询
## 子查询
* SELECT语句是SQL的查询。
* SQL还允许创建子查询（subquery），即嵌套在其他查询中的查询。

### 利用子查询进行过滤
##### 输入
```
SELECT cust_name, cust_contact
FROM Customers
WHERE cust_id IN (
    SELECT cust_id
    FROM Orders
    WHERE order_num IN (
        SELECT order_num
        FROM OrderItems
        WHERE prod_id = 'RGAN01'
    )
);
```

##### 提示

* 在实际使用时由于性能的限制，不能嵌套太多的子查询。
* 作为子查询的SELECT语句只能查询单个列。企图检索多个列将返回错误。
* 使用子查询并不总是执行这类数据检索的最有效方法。

## 作为计算字段使用子查询
##### 输入
```
SELECT cust_name,
       cust_state,
       (SELECT COUNT(*)
        FROM Orders
        WHERE Orders.cust_id = Customers.cust_id) AS orders
FROM Customers
ORDER BY cust_name;
```

##### 提示
* 该子查询对检索出的每个顾客执行一次。在此例中，该子查询执行了5次，因为检索出了5个顾客。
* 使用完全限定列名来避免歧义。
* 不是解决这种数据检索的最有效方法。
