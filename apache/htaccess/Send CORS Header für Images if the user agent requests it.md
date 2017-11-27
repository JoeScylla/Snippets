Send CORS Header für Images if the user agent requests it.
----------------------------------------------------------------------------------------------------

	<IfModule mod_setenvif.c>
		<IfModule mod_headers.c>
			<FilesMatch "\.(bmp|cur|gif|ico|jpe?g|png|svgz?|webp)$">
				SetEnvIf Origin ":" IS_CORS
				Header set Access-Control-Allow-Origin "*" env=IS_CORS
			</FilesMatch>
		</IfModule>
	</IfModule>

See also:

- [MDN: CORS enabled image](https://developer.mozilla.org/en-US/docs/Web/HTML/CORS_enabled_image)
- [Using Cross-domain images in WebGL and Chrome 13](https://blog.chromium.org/2011/07/using-cross-domain-images-in-webgl-and.html)
