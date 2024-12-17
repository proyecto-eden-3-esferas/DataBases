MYSQL_PRE  = mysql.pre.sql
MYSQL_POST = mysql.post.sql

%-data-my.sql: %-data.sql $(MYSQL_PRE) $(MYSQL_POST)
	cat $(MYSQL_PRE) %-data.sql $(MYSQL_POST) > %-data-my.sql

farming-data-my.sql: farming-data.sql $(MYSQL_PRE) $(MYSQL_POST)
	cat $(MYSQL_PRE) farming-data.sql $(MYSQL_POST) > farming-data-my.sql
