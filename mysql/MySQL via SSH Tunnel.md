# MySQL via SSH Tunnel #

## Create the SSH tunnel ##

**Syntax:**

	ssh -fNg -i /path/to/private/key -L [LOCAL_PORT]:[DATABASE_HOST]:[DATABASE_HOST] [SSH_USER]@[SSH_HOST]

**Example:**

	ssh -fNg -i ~/.ssh/id_rsa -L 3310:127.0.0.1:3306 root@192.168.1.2

## Test via Telnet ##

	telnet 127.0.0.1 3310

## Connect via MySQL ##

	mysql -u root -p -P 3310 -h 127.0.0.1