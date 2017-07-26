# 高级数据过滤

## 组合 WHERE 子句
* WHERE 子句允许使用 `OR` 或 `AND` 组合。

### AND 操作符
##### 输入
```
SELECT prod_id, prod_price, prod_name
FROM Products
WHERE vend_id = 'DLL01' AND prod_price <= 4;
```

### OR 操作符
##### 输入
```
SELECT *
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01';
```

### 求值顺序
##### 输入
```
SELECT *
FROM Products
WHERE (vend_id = 'BRS01' OR vend_id = 'DLL01')
AND prod_price >= 10;
```
##### 提示
* SQL 中 `AND` 优先度高于 `OR`。
* 使用 `圆括号` 可以对操作分组。
