# Undo commit #	

	git commit -m "This is the bad commit"
	git reset HEAD~
	...edit as necessary...
	git add ...
	git commit -c ORIG_HEAD     
