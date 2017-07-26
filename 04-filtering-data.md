# 过滤数据

## 使用 WHERE 子句
##### 输入
```
SELECT prod_name, prod_price
FROM Products
WHERE prod_price = 3.49;
```

##### 提示
* WHERE子句在表名（FROM子句）之后给出。
* WHERE 又称 搜索条件（search criteria），搜索条件也称为过滤条件（filter condition）。
* 数字精度由 DBMS 指定。

## WHERE 子句操作符
* `=`
* `<>` `!=`
* `<`
* `<=` `!>`
* `>`
* `>=` `!<`
* `BETWEEN` (A AND B)
* `IN`
* `IS NULL`

##### 提示
* 注意：并不是所有平台都有这些操作符。
* NULL 不能被执行，因为未知（unkonwn）有特殊的含义，数据库不知道它们是否匹。
