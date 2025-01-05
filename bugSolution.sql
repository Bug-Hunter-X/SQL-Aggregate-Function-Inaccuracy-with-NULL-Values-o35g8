To rectify this, use functions like `COALESCE` (standard SQL) or `ISNULL` (SQL Server) to replace `NULL` values with a suitable substitute before applying the aggregate function:

```sql
SELECT AVG(COALESCE(column_name, 0)) FROM table_name; -- Replaces NULL with 0
-- Or
SELECT AVG(ISNULL(column_name, 0)) FROM table_name; -- Replaces NULL with 0 (SQL Server)
```

This ensures all rows are considered in the calculation, providing a more accurate average.  The choice of substitute (0 in this case) depends on the context and how `NULL` should be interpreted within the data.  If using 0 is not appropriate, consider other default values or apply a conditional logic to handle the NULL value in a way that is aligned with business needs.  For example, you might choose to ignore these rows, or to use the average of the non-null values,  but replacing with a value close to other values might be the best option.