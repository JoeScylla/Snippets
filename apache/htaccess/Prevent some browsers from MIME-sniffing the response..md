Prevent some browsers from MIME-sniffing the response.
----------------------------------------------------------------------------------------------------

	<IfModule mod_headers.c>
		Header set X-Content-Type-Options "nosniff"
	</IfModule>

See also:

- http://www.slideshare.net/hasegawayosuke/owasp-hasegawa
- http://blogs.msdn.com/b/ie/archive/2008/07/02/ie8-security-part-v-comprehensive-protection.aspx
- https://msdn.microsoft.com/en-us/library/ie/gg622941.aspx
- https://mimesniff.spec.whatwg.org/
