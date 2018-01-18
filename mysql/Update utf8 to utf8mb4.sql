/**
 * --
 * 
 * 
 */

/* Set new schema default charset and collation */
ALTER DATABASE [SCHEMA_NAME] CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/* Generate SQL-Statements to set new table default charset and collation and set the field charset and collation */
SET SESSION group_concat_max_len = 100000;
SELECT a.table_name, concat('ALTER TABLE ', a.table_schema, '.', a.table_name, ' DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_unicode_ci, ',
	group_concat(distinct(concat(' MODIFY ',  column_name, ' ', column_type, ' CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ', if (is_nullable = 'NO', ' NOT', ''), ' NULL ',
	if (COLUMN_DEFAULT is not null, CONCAT(' DEFAULT \'', COLUMN_DEFAULT, '\''), ''), if (EXTRA != '', CONCAT(' ', EXTRA), '')))), ';') as alter_statement
	FROM information_schema.columns a
	INNER JOIN INFORMATION_SCHEMA.TABLES b ON a.TABLE_CATALOG = b.TABLE_CATALOG
		AND a.TABLE_SCHEMA = b.TABLE_SCHEMA
		AND a.TABLE_NAME = b.TABLE_NAME
		AND b.table_type != 'view'
	WHERE a.table_schema = '[SCHEMA_NAME]' AND collation_name <> 'utf8mb4_unicode_ci'
	GROUP BY table_name;
/* --- */
SELECT TABLE_NAME, TABLE_COLLATION FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'schiffmann' AND TABLE_COLLATION <> 'utf8mb4_unicode_ci'