Force Client-Side SSL Redirection
----------------------------------------------------------------------------------------------------

	<IfModule mod_headers.c>
		Header always set Strict-Transport-Security "max-age=16070400; includeSubDomains"
	</IfModule>

See also:

- http://www.html5rocks.com/en/tutorials/security/transport-layer-security/
- https://tools.ietf.org/html/draft-ietf-websec-strict-transport-sec-14#section-6.1
- http://blogs.msdn.com/b/ieinternals/archive/2014/08/18/hsts-strict-transport-security-attacks-mitigations-deployment-https.aspx
