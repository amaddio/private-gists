# Private GitHub alike Gists

SQL Relations for a private GitHub alike gists app.

## Example SQL Statements
   
### Query a User's Gists:

```sql
SELECT *
FROM gists
WHERE user_id = <user_id>;
```

### Query a Specific Gist:

```sql
SELECT *
FROM gists
WHERE id = <gist_id>;
```


### Query Latest Reviews (comments) of a Gist

```sql
SELECT *
FROM reviews r
WHERE gist_id = <gist_id>
ORDER BY created_at DESC
```
