#Reset Caches#

	sudo -u www ./bin/console cache:clear --no-warmup && ./bin/console pimcore:cache:clear
	sudo -u www ./bin/clear-cache
