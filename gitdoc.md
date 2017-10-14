### brance

create brance

	git checkout -b newbrance

push to remote, pull from remote

	git push origin nenbrance
	git pull origin nenbrance

delete brance

	git brance -d newbrance

delete remote brance

	git push origin :newbrance

see brance

	git brance
	git brance -a
	git brance -v

switch brance

	git checkout newbrance
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
