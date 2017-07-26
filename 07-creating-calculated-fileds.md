# 创建计算字段

## 计算字段
* 在 `SELECT` 中使用计算字段。
* 数据库上进行格式化会比在客户端快。

## 拼接字段
##### 输入
```
SELECT CONCAT(vend_name, ' (', vend_country, ')') AS vend_title
FROM Vendors
ORDER BY vend_name;
```

##### 提示
* Mysql 和 Mariadb 使用 `concat()`。
* Access 和 SQL Server 使用 `+`。
* DB2、Oracle、PostgreSQL、SQLite和Open Office Base使用 `||` 。
* 使用 `RTRIM()`、`LTRIM()`、`TRIM()` 去除空格。

* `AS` 用来替换一个字段或者值的名称。
* 在很多DBMS中，AS关键字是可选的，不过最好使用它，这被视为一条最佳实践。
* 别名的名字既可以是一个单词也可以是一个字符串。

## 执行算数计算
##### 提示
* `+`、`-`、`*`、`\` 可以用来执行算数计算。
* 使用 `SELECT` 可以测试计算，例如：
    * `SELECT NOW();`
    * `SELECT 2 * 6;`
    * `SELECT TRIM('  abc  ');`
