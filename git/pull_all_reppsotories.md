# Pull all git repositories in a folder #

	find . -maxdepth 1 -type d -exec sh -c '(cd {} && git pull)' ';'
