# 使用视图

## 视图
* 视图是虚拟的表，只包含使用时动态检索数据的查询。
* Microsoft Access 不支持视图。
* MySQL 从版本5开始支持视图。
* SQLite 仅支持视图的创建和读取。
* 由于是虚表，每次使用时都要进行查询，如果多表联结或视图嵌套，可能导致性能下降。

* 视图常见的应用：
    * 重用 SQL 语句。
    * 简化复杂的 SQL 操作，在编写查询后，可以重复使用它而不必知道基本细节。
    * 使用一个表的一部分而不是整个表。
    * 保护数据、过滤数据。
    * 更改数据格式和表示。

* 视图的规则和限制
    * 与表一样，视图必须唯一命名。
    * 对于可以创建的视图数目没有限制。
    * 创建视图，必须具有足够的访问权限。这些权限通常由数据库管理人员授予。
    * 视图可以嵌套，即可以利用从其他视图中检索数据的查询来构造视图（注意性能）。
    * 许多DBMS禁止在视图查询中使用ORDER BY子句。
    * 有些DBMS要求对返回的所有列进行命名，如果列是计算字段，则需要使用别名。
    * 视图不能索引，也不能有关联的触发器或默认值。
    * 有些DBMS把视图作为只读的查询，这表示可以从视图检索数据，但不能将数据写回底层表。
    * 有些DBMS允许创建这样的视图，它不能进行导致行不再属于视图的插入或更新。
    * 参阅具体的DBMS文档。

## 创建视图
* 视图使用 `CREATE VIEW viewname AS xxx` 语句来创建。
* 视图使用 `DROP VIEW viewname` 语句来删除。
* 视图的使用：
    * 利用视图简化复杂的联结。
    * 用视图重新格式化检索出的数据。
    * 用视图过滤不想要的数据。
    * 使用视图与计算字段。

##### 代码
```
CREATE VIEW ProductCustomers AS
SELECT cust_name, cust_contact, prod_id
FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id
    AND OrderItems.order_num = Orders.order_num;
```
