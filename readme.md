About
============

	demo scripts and command documents


apache
============

how check the apache that is intalled ?

	# httpd -v
	# php -v

how to install apache, php, mysql ?

	# yum -y install mysql mysql-server mysql-devel
	# yum -y install php php-mysql
	# yum -y install httpd

	# chkconfig httpd on
	# chkconfig mysqld on
	# /etc/init.d/httpd start
	# /etc/init.d/mysqld start

or add the following 

	# vi /etc/rc.d/rc.local
	  /etc/init.d/httpd start
	  /etc/init.d/mysqld start


mysql
============

how to create a database and user in mysql ?

	# mysql
	# create database mydb;

	# create user 'username'@'localhost' identified by 'userpawd';
	# grant all privileges on mydb.* to username@localhost identified by 'userpawd';
	# flush privileges;

how to execute a sql file ?

	# mysql
	# use mydb;
	# source /var/www/data/1701.sql

or

	# mysql -uroot < my.sql


remote
============

how to connect remote server ?

	$ ssh -p 2222 user@host.ip
	$ ssh root@hostip

how to send file/dir form localhost to remote in linux servers ?

	$ scp /var/www/logo.png root@ip_or_domain:/var/www/logo.png
	$ scp -r /var/www/cms/ root@ip_or_domain:/var/www/cms/
	$ scp -r /var/www/cms/ ip_or_domain:/var/www/cms/

how to copy/dir file form remote to localhost ?

	$ scp root@ip:/var/www/test.txt /var/www/test.test
	$ scp -r ip:/var/www/cms/ /var/www/cms/


grep
============

	grep "grep what i need to log" . -ohR > mylog

	grep 'heighlight what i want' . -R --color

	grep "func myfun(.*)" . -R --color


chmod
============

	chmod -R 777 mydir


date
============

	date -s "your current time and format"
	date -s "2017/10/10 13:31:32"
	clock -w

	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


ln
============

	ln -s /var/www/html /home/username/


pkill
============

kill login user

	pkill -kill -t pts/2


chkconfig
============

start when system booting


	chkconfig mysqld on
	chkconfig httpd on



