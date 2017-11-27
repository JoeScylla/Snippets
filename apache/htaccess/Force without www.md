Force without www
----------------------------------------------------------------------------------------------------

	<IfModule mod_rewrite.c>
		RewriteEngine On
		RewriteCond %{HTTPS} !=on
		RewriteCond %{HTTP_HOST} ^www\.(.+)$ [NC]
		RewriteRule ^ %{ENV:PROTO}://%1%{REQUEST_URI} [R=301,L]
	</IfModule>
