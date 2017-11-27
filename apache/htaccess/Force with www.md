Force with www
----------------------------------------------------------------------------------------------------

	<IfModule mod_rewrite.c>
		RewriteEngine On
		RewriteCond %{HTTPS} !=on
		RewriteCond %{HTTP_HOST} !^www\. [NC]
		RewriteCond %{SERVER_ADDR} !=127.0.0.1
		RewriteCond %{SERVER_ADDR} !=::1
		RewriteRule ^ %{ENV:PROTO}://www.%{HTTP_HOST}%{REQUEST_URI} [R=301,L]
	</IfModule>
