Branch
============

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

fresh the remote branch

	git remote update origin --prune



Fetch and pull
============

fetch, and then merge

	git fetch origin master:tmp
	git diff tmp
	git merge tmp

fetch and merge at the same time

	git pull origin master



Tag
============

add tag, add by commit-id

	git tag v1.0
	git tag -a v1.2 -m 'v1.2'
	git tag -a v1.2 commit-id -m 'v1.2'

delete tag, remote tag

	git tag -d v1.0
	git push origin :v1.0

list tag

	git tag
	git tag -l

checkout tag

	git checkout v1.0

push to remote, push all at once time

	git push origin v1.0
	git push origin --tags



Status
============

	git status
	git log
	git diff



SSH
============

Step 1, create a ssh key

	$ ssh-keygen -t rsa -C "your@email.com"

Step 2, add the ssh-key to github.

	$ cat ~/.ssh/id_rsa.pub

Step 3, test it

	ssh -T git@github.com

finally, remenber fix the url in .git/config

	url = git@github.com:yourname/repo.git






