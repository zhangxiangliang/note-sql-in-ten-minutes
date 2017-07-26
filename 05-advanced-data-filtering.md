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
* 尽量使用 `圆括号`，不去依赖默认求值顺序。
* `圆括号` > `AND` > `OR` 。

## IN 操作符
##### 输入
```
SELECT prod_name, prod_price
FROM Products
WHERE vend_id IN ( 'DLL01', 'BRS01' )
ORDER BY prod_name;
```
##### 提示
* IN 操作符后跟由 `逗号分隔` 的合法值，这些值必须包括在 `圆括号` 中。
* IN 操作符的语法更清楚，更直观。
* 在与其他AND和OR操作符组合使用IN时，求值顺序更容易管理。
* IN操作符一般比一组OR操作符执行得更快。
* IN的最大优点是可以包含其他SELECT语句，能够更动态地建立WHERE子句。

## NOT 操作符
* NOT 用于 WHERE 子句，否定其后跟定的条件。
* NOT 适合于复杂子句。
* 在与IN操作符联合使用时，NOT可以非常简单地找出与条件列表不匹配的行。
* MariaDB 中 NOT 只能与 `IN`, `BETWEEN` 和 `EXISTS` 子句使用。
