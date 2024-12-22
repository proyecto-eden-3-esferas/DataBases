# DataBases
Databases in SQL for farming, health, culture, and so on

# WHAT KIND OF PROJECT AND FILES?

This project contains code for defining schema (databases and their tables)
and for filling database structures (tables) with records and such.

## Persistance

The databases in this project are persistent: they are not erased
when the server stops or should the database file be erased or the server updated...
BECAUSE all the structure and all the records or data are held in SQL text files
with extension `.sql` and containing SQL code.

The alternative is for the database administrator to define a schema or structure
and let the users contribute the records/rows/data over time.



# WHAT DATABASES: FARMING-BIOLOGY-HEALTH-CREATION

## Farming
This database project started as a *farming* database. (Actually, I have always had *organic* farming in mind.) It includes tables for phytochemicals, life forms and other relations pertaining to biology, so a *biology* database was started, then a *geology* database. Nevertheless, I have commented out references to either *biology* or *geology* databases.

## General
Early on I deemed it useful to provide a general database with tables for languages and relationships. (The *general* database was born.)

## Health
Later on I saw that farming overlapped with health (nutrition, medicinal plants, chemicals etc.),
and thus the *health* database was born.

Any of *farming*, *biology* and *health* databases can be developed independently as long as no FOREIGN KEY integrity is violated.

## Creation
Now, since alternative farming stems from created theories or approaches, another database arose named *creation* with tables for people (creators of theories, approaches, books etc.), their works and theories, explanations of phenomena etc. Culture at large.

## Dependencies

Some databases here are not self-standing but depend on others.
They have foreign keys that reference *other* databases.

You can find dependencies by inspecting table definitions.
Specifically, foreign keys may reference another table, as in
  FOREIGN KEY (field) REFERENCES general.fields(field)
found in the farming database.
Therefore, database "general", as well as "geology" and "biology" should be loaded
before any others so that no integrety violations take place.

You can thus infer a hierarchy where

1. general, geology and biology are self-standing
2. general precedes farming
3. geology precedes farming
4. general precedes health
5. biology precedes health

NOTE: Future adjustments are likely to make database "biology" and many others dependent on "general"
      as "general" holds tables for languages (such as "English", "Spanish")
      and relationship (such as "is a kind of", "is the same as").
      Also, "farming" is likely to be redefined to depend on "biology",
      which should then be loaded before "farming" is loaded.
      Therefore:
   biology will eventually precede farming


# SWITCH-OVER TO SQLITE

Over the last month or so I have been learning and porting my former MySQL code to SQLite.

I still keep a schema and a data file for each database, plus SQLite files have an `-lite` infix. Since I have started porting the *farming* database, the two associated SQL files are named: *farming-schema-lite.sql* and *farming-data-lite.sql*

Data files mainly contain `INSERT` commands, so they are pretty straightforward to translate.

SQLite schemas are slightly different from MySQL ones. To begin with, I don't think you can reference a database different from the one you last opened, so you should read those foreign schemata as well as data with `.read` In the case of the *farming* database, you first have to bring the *general* database in.

## INITIALIZING A SQLITE FARMING DATABASE
```
$ sqlite farming.db
sqlite> .read general-schema-lite.sql
sqlite> .read general-data.sql
sqlite> .read farming-schema-lite.sql
sqlite> .read farming-data.sql
sqlite> .read farming-data-mason.sql
```


# OTHER (MINOR) DATABASES HERE

- *biological-control.sql*: the SQL code is meant to be run *after* biology-XXX.sql

- *plant_families.sql*: the SQL code is meant to be run *after* biology-XXX.sql

- *geology.sql*: actually no longer required by the "farming" database, as already mentioned

- *notes-schema.sql*: a very immature (sketchy) database for holding notes; not an altogether bad idea, though



# SQL CODE

All SQL code has been tested on MySQL. Besides, I am currently in the process of porting it to SQLite.

Most databases are stored in a *DATABASE-schema.sql* file for its structure,
to be loaded *before* a *DATABASE-data.sql* file containing the rows via INSERT-ions.

Usually, only the schema files change for different Relational DataBase Management Systems.

It would take minor changes to get it to run on PostgreSQL,
another free-of-charge open source DBMS (DataBase Management System),
which is to a large extent complementary (far more feature-rich) to MySQL.

(I don't know how easy it would be to port my SQL code to MariaDB. Largely painless, most probably.)

Also, my discussion assumes MySQL is run on Linux,
yet nealy all of these instructions apply to Windows, too.


# STEPS and PROCEDURES (for MySQL)

1. Install a DBMS, such as a MySQL server

2. Start it (on Linux it is running by default once installed):
  /etc/init.d/mysql start status
  sudo /etc/init.d/mysql start
  sudo /etc/init.d/mysql stop

3. Create a database with CREATE DATABASE followed by some CREATE TABLE commands

4. Populate its tables with the INSERT command

5. Run queries etc.


## EASY AND PERSISTENT LOADING

DataBases can be easily loaded (third and fourth steps) through script "exec-mysql.sh",
whose contents are:

  #!/bin/bash
  # This script executes an SQL file on the local MySQL server
  sudo mysql -uroot -pmsandbox < $1


For instance:
  exec-mysql.sh general-schema.sql # there is no "general-data.sql" file as yet
  exec-mysql.sh geology.sql
  exec-mysql.sh farming-schema.sql
  exec-mysql.sh farming-data.sql

NOTE:  general-schema.sql, which contains both schema definitions and insertions.



# Databases

- *general*
- *farming* (*plant_families.sql* and *biological-control.sql* can be run after both *farming-*.sql* have)
- *health*
- *creation*


# On *farming-users.sql*

This file contains some code for creating users specifically for the *farming* database.
The lines could be easily rewritten to achieve the same for other tables.
Basically, you get a 'farming-reader' (SELECT) and a 'farming-reader-writer' (all operations)


# On Initial and Final SQL Code

Some SQL files (MySQL, but not SQLite) are preceded by code that suspends UNIQUE and FOREIGN KEY constraints,
and delays COMMIT until after all insertions have been scheduled.

After all insertions, previous settings are restored and a general COMMIT is effected.

Maybe it is better to make do without those tricks...



# The Evolution of Database *farming*

DataBase 'farming' is so called because it started as a broad farming database. Broad means that it includes some immediate ramifications like nutrition and the environment. Actually, farming is related to nearly everything else in the human world.

Some extensions are almost independent of farming:

1. health (files *farming-schema-health.sql* and *farming-data-health.sql*) )
2. other culture, like some general theories, books, relationships (files *neither*)

Over time both have been moved to 'health' and to 'creation'

I am aware that this is unlike a commercial database, which is kept running round the clock. Here all the schema and especially all the data should be written before they are fed into the database.



# HOW to USE a MySQL DATABASE (ONCE SCHEMA AND RECORDS HAVE BEEN LOADED)

* mysql> SHOW DATABASES;
* USE mydatabase;
* mysql> SHOW TABLES;
* mysql> DESCRIBE aTable;
* You may request to change the output from default (--table) to --html tables or --xml
* To save all ouput in interactive mode to FILE.txt:
    mysql>tee FILE.txt;
* To get information on tables:
  SHOW TABLES;


# TODOs

[ ] farming-schema-*.sql `REFERENCES` life_types(life_type),
    which is found in the *biology* database
- Should this constraint be lifted, or?
- Should the biology

[ ] write on pseudocereals like quinoa, buck wheat, chia?

[ ] farming.crop_group.code should be renamed to `language_code`

(0) *general-schema.sql* used to contain its data or `INSERT`-ions, but now it is considered more convenient to keep the schema definition and the data separate, so it is to split into *general-schema.sql* and *general-data.sql*. This means that MySQL code should adapt to the change.

(0) Modularize: same table in two different databases: *plant_families.sql* (done), TABLE plant_uses (currently in *farming-*.sql*)

(0.0) SQL files should definitely be split into smaller files. First, you move dependent-upon code to the fore

(0.1) same table loaded into two databases: the loading script should omit `USE aDataBase;` plus other pre and post code

(0.2) a database ('db1') accesses a table in another database ('db2'): use dot (.) scoping, as in db2.anotherTable

It is possible to connect two different databases in the same MySQL server with each other. This can be done by creating a Foreign Key constraint between tables in different databases. This relationship between tables allows you to enforce referential integrity and ensures that data remains consistent between the two databases.

Here's an example of how you can create a Foreign Key constraint between two databases in the same MySQL server:

    CREATE DATABASE db1;
    CREATE DATABASE db2;
    USE db1;
    CREATE TABLE customers (
      id INT AUTO_INCREMENT PRIMARY KEY,
      name VARCHAR(50)
    );
    USE db2;
    CREATE TABLE orders (
      id INT AUTO_INCREMENT PRIMARY KEY,
      customer_id INT,
      FOREIGN KEY (customer_id) REFERENCES db1.customers(id)
    );

In this example, we create two databases, db1 and db2, and two tables, customers and orders. The orders table has a Foreign Key constraint that references the id field of the customers table in the db1 database. This allows you to maintain referential integrity between the two databases, even though they are in separate databases within the same MySQL server.

(1) Some tables have two fields 'vname' and 'bname', while either should be enough
    (It would be standard to choose 'bname', for "botanical name".)
    This redundancy should be eliminated for the sake of consistency,
    both in "farming-data.sql" and in "farming-schema.sql"

    Possibly through a table named 'bname_to_vname',
    which might include a 'language' field...

    Or the other way round, use a broad term like 'name'
    and then map names to names and unary relationships
    like 'is_sp', 'is_subsp'
(2) What about upper taxa, like families etc.? (Currently being dealt with in 'plant_families')

(2) Table 'plant_varieties' adds information about 'fertilizer' and 'watering'
    Should it not be merged with other tables, such as 'germination'?

(3) Table 'species' only holds plants, as has fields 'climate' and 'soils'
    Should it be renamed 'bspecies' ("botanical species")?

(5) Tables base_dirs and files in 'general' seem to stand apart
    and not bo be related to the others,
    save for their referencing works(title)


## Plant Families from an HTML Table

The HTML table goes like:

<table SQL-table="families">
  <caption>Plant Families</caption>
  <thead>
    <tr>
      <th colname='fname'>Family</th>
      <th colname='traits'>Characteristics</th>
      <th colname='description'>Description</th>
      <th colname='membership'>Membership</th>
      <th colname='inflorescence_and_flowers'>Inflorescence and Flowers</th>
      <th colname='fruits_and_seeds'>Fruits and Seeds</th>
      <th colname='phytochemistry'>Phytochemistry</th>
      <th colname='photosynthesis'>Photosynthesis</th>
      <th colname='distribution'>Distribution</th>
      <th colname='economics'>Economic importance</th>
    </tr>
  </thead>

  <tbody>
    <tr> <td>Rubiaceae</td>
         <td></td>
         <td>
           <p></p>
         </td>
         <td></td>

         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
        </tr>
  </tbody>

</table>

An XSTL script was written in the past to turn all rows into insertions
but now usin HTML tables as source for SQL insertions is DEPRECATED by me,
because, to begin with, MySQL can output to HTML when SELECT is called.



# Assorted Items to Add

(Some additions may have been already effected or just do not apply any more)

Table 'mechanisms/pathways':
'Kranz leaf anatomy'


Table 'relationships':
arity SHORTINT UNSIGNED NOT NULL
'is_subsp' (1), 'is_sp' (1), 'edible' (1)

Table 'terms':

# Other

domain > kingdom > phylum > class > order > family > genus > species
Domains - {Archaea,	Bacteria,	Eukaryota}

Microbial Control of Black Flies (Diptera: Simuliidae) With Bacillus thuringiensis subsp. israelensis

Aminoacids (in SoyBeans)
