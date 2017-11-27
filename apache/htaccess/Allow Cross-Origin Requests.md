Allow Cross-Origin Requests.
----------------------------------------------------------------------------------------------------

	<IfModule mod_headers.c>
		Header set Access-Control-Allow-Origin "*"
	</IfModule>

See also:

- [MDN: HTTP access control (CORS)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS)
- [enable cross-origin resource sharing](http://enable-cors.org/)
- [W3C: Cross-Origin Resource Sharing](http://www.w3.org/TR/cors/)