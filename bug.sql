In SQL, a common yet subtle error arises when dealing with `NULL` values and aggregate functions like `AVG`, `SUM`, `MIN`, `MAX`.  Consider this scenario:

```sql
SELECT AVG(column_name) FROM table_name;
```

If `column_name` contains any `NULL` values, the aggregate function might not produce the expected result.  The behavior depends on the specific database system, but often `NULL` values are effectively ignored, leading to an inaccurate average.  For instance, if the column has values (10, 20, NULL, 30), the average might be calculated as (10+20+30)/3 = 20 instead of (10+20+30)/4 = 15, which is more representative (though 15 itself can be debated, but it's more correct in this context).