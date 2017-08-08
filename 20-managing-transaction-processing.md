# 管理事务处理

## 事务处理
* 事务处理术语：
    * 事务（transaction）指一组 SQL 语句。
    * 回退（rollback）指撤销指定 SQL 语句的过程。
    * 提交（commit）指将未存储的 SQL 语句结果写入数据库表。
    * 保留点（savepoint）指事务处理中的临时占位符，可以对它发布回退。

* 事务可以回退那些语句：
    * 可以管理 `INSERT`、`UPDATE`、`DELETE` 语句。
    * 不能回退 `SELECT`、`CREATE`、`DROP` 语句。

* 使用 事务处理 来确保 SQL 完全执行，或完成不执行，保证完整性。
* 事务处理是一种机制，用来管理必须成批执行的SQL操作，保证数据库不包含不完整的操作结果。

## 控制事务处理
* SQL Server 标识 `BEGIN TRANSACTION ... COMMIT TRANSACTION`。
* MariaDB、MySQL 标识 `START TRANSACTION ... COMMIT TRANSACTION`。
* Oracle 标识 `SET TRANSACTION ... COMMIT TRANSACTION`。
* PostgreSQL 标识 `BEGIN ... COMMIT TRANSACTION`。

* `COMMIT` 用于保存。
* `ROLLBACK` 用于撤销。

* MariaDB、MySQL 和 Oracle 保留点 `SAVEPOINT point`。
* SQL Server 保留点
* 因为保留点越多，你就越能灵活地进行回退。
