/**
 * Generate drop statments for all tables in a schema.
 * 
 * How to execute the statements:
 * 
 *		SET FOREIGN_KEY_CHECKS = 0;
 *		...drop statements here...
 *		SET FOREIGN_KEY_CHECKS = 1;
 * 
 * Source: http://stackoverflow.com/a/8248281/315363
 */
SELECT
	CONCAT('DROP TABLE IF EXISTS ', table_name, ';')
FROM
	information_schema.tables
WHERE
	table_schema = 'SCHEMA_NAME';