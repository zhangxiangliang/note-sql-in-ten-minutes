# 排序检索数据
## 排序数据
##### 输入
```
SELECT prod_name
FROM Products
ORDER BY prod_name;
```
##### 提示
* 在指定一条ORDER BY子句时，应该保证它是SELECT语句中 `最后一条子句`。
* ORDER BY子句中使用的列将是为显示而选择的列，但是也可以排列为选择列。
* 排序 -> 选择列 -> 输出

## 按多个列排序
##### 输入
```
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price, prod_name;
```

## 按列位置排序
##### 输入
```
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY 2, 3;
```
##### 提示
* 只能对 SELECT 选择列进行按位排序。
* 可以混合使用 `实际列名` 和 `相对列位置`。

## 指定排序方向
##### 输入
```
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price DESC;
```

##### 提示
* 默认为升序。
* 关键字 `DESC` 等同于 `DESCENDING` 用于降序。
* 关键词 `ASC`  等同于 `ASCENDING`  用于升序。
* 大部分数据库 `A` 被视为与 `a` 相同，需要对 DBMS 进行配置。
