# Instructions for using PostgreSQL in Cloud9 with DBC assignments

In order for PostgreSQL to work in the Cloud9 environment (based on the Ubuntu operating system), the following things need to be done.

1. Create a version of Ruby on Rails with Postgres
  ```gem install rails```
  ```rails new <project_name> -d postgresql -T```
2. In the ```database.yml``` file, change the encoding to ```SQL_ASCII``` without any quotes.
3. Start the PostgreSQL service by running ```sudo service postgresql start```
4. Run ```rails server -b $IP -p $PORT```

From here the app should install correctly


# Changing the Encoding of the database template

In order to get the right template database when generating the database either through ```rails``` or through ```bundle exec```, please do the following steps to reset the template.  This can be done after step 1 (?) in the above directions.

```$ sudo sudo -u postgres psql```

```postgres# UPDATE pg_database SET datistemplate = FALSE WHERE datname = 'template1';```

```postgres# DROP DATABASE template1;```

```postgres# CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UNICODE';```

```postgres# UPDATE pg_database SET datistemplate = TRUE WHERE datname = 'template1';```

```postgres# \c template1```

```postgres# VACUUM FREEZE;```

```postgres# \q```