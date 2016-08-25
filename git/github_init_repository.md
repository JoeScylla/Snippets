# Init repository in github.com #

	echo "# REPOSITORY_NAME #" >> README.md
	git init
	git add README.md
	git commit -m "Initial commit"
	git remote add origin https://github.com/JoeScylla/REPOSITORY_NAME.git
	git push -u origin master
