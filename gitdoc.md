### branch

create branch

	git checkout -b newbranch

push to remote, pull from remote

	git push origin nenbranch
	git pull origin nenbranch

delete branch

	git branch -d newbranch

delete remote branch

	git push origin :newbranch

see branch

	git branch
	git branch -a
	git branch -v

switch branch

	git checkout newbranch
	git checkout master


### fetch and pull

fetch, and then merge

	git fetch origin master:tmp
	git diff tmp
	git merge tmp

fetch and merge at the same time

	git pull origin master

### status

	git status
	git log
	git diff
