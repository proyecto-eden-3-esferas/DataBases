DATABASES
=========
Code for defining schema and for filling database structures with records and such.


SQL DATABASES
=============
All SQL code has been tested on MySQL.
It would take minor changes to get it to run on PostgreSQL,
another free-of-charge open source DBMS (DataBase Management System),
which is to a large extent complementary (far more feature-rich) to MySQL.
Also, my discussion assumes MySQL is run on Linux,
yet most of these instructions apply to Windows, too.


TIP
===
DataBases can be niftily loaded through script "exec-mysql.sh",
whose contents are:
  #!/bin/bash
  # This script executes an SQL file on the local MySQL server
  sudo mysql -uroot -pmsandbox < $1
Further, you first execute the schema (CREATE) file, then the data (INSERT) file,
save for general-schema.sql, which contains both schema definitions and insertions.
For instance:
  exec-mysql.sh general-schema.sql # there is no "general-data.sql" file as yet
  exec-mysql.sh farming-schema.sql
  exec-mysql.sh farming-data.sql



WARNING
=======
These databases depend on database 'general',
which should have been defined and populated before.
Otherwise insertions fail unless commit is suspended
amongst other sleights of hand.


Databases
=========
- general
- farming ("plant_families.sql" can be run after both "farming-*.sql" have)
- health
- creation

On "farming-users.sql"
======================
This file contains some code for creating users specifically for the 'farming' database.
The lines could be easily rewritten to do the same for other tables.
Basically, you get a 'farming-reader' (SELECT) and a 'farming-reader-writer' (all operations)

On Initial and Final SQL Code
=============================
Some SQL files are preceded by code that suspends UNIQUE and FOREIGN KEY constraints,
and delays COMMIT until after all insertions have been scheduled.
After all insertions, previous settings are restored and a general COMMIT is effected.
Maybe it is better to make do without those tricks...

Database 'general'
------------------
It contains some very geeneral tables to be referenced by tables in other databases


Database 'farming'
==================
DataBase 'farming' is so called " because it started as a broad farming database. Broad means that it includes some immediate ramifications like nutrition and the environment. Actually, farming is related to nearly everything else in the human world.

Some extensions are almost independent of farming:
(1) health (files "farming-schema-health.sql" and "farming-data-health.sql") )
(2) other culture, like some general theories, books, relationships (files "neither")
Over time both have been moved to 'health' and to 'creation'

It is meant to be used like this: you run scripts to define the schema, then you run the scripts to input the data. The schemes and the data are in the SQL language and SQL files bear extension, well, "sql".

I am aware that this is unlike a commercial database, which is kept running round the clock. Here all the schema and especially all the data should be written before they are fed into the database.

I am testing the "code" with a MySQL DBMS, but I intend not to rely on MySQL-specific features. I would like to test the code on MariaDB and PostgreSQL and make and document the changes.


How to use
----------
* mysql> SHOW DATABASES;
* USE mydatabase;
* mysql> SHOW TABLES;
* mysql> DESCRIBE aTable;
* You may request to change the output from default (--table) to --html tables or --xml
* To save all ouput in interactive mode to FILE.txt:
    mysql>tee FILE.txt;
* To get information on tables:
  SHOW TABLES;


TODO
----

(0) Modularize: same table in two different databases: "plant_families.sql" (done), TABLE plant_uses (currently in "farming-*.sql")

(0.0) SQL files should be split into smaller files. First, you move dependent-upon code to the fore

(0.1) same table loaded into two databases: the loading script should omit "USE aDataBase;" plus other pre and post code

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


Plant Families from an HTML Table
---------------------------------
The HTML table goes like:

<table SQL-table-"families">
  <caption>Plant Families</caption>
  <thead>
    <tr>
      <th colname-'fname'>Family</th>
      <th colname-'traits'>Characteristics</th>
      <th colname-'description'>Description</th>
      <th colname-'membership'>Membership</th>

      <th colname-'inflorescence_and_flowers'>Inflorescence and Flowers</th>
      <th colname-'fruits_and_seeds'>Fruits and Seeds</th>
      <th colname-'phytochemistry'>Phytochemistry</th>
      <th colname-'photosynthesis'>Photosynthesis</th>
      <th colname-'distribution'>Distribution</th>
      <th colname-'economics'>Economic importance</th>
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



Assorted Items to Add
=====================
(Some additions may have been already effected or just do not apply any more)

Table 'mechanisms/pathways':
'Kranz leaf anatomy'


Table 'relationships':
arity SHORTINT UNSIGNED NOT NULL
'is_subsp' (1), 'is_sp' (1), 'edible' (1)

Table 'terms':

Other
-----
domain > kingdom > phylum > class > order > family > genus > species
Domains - {Archaea,	Bacteria,	Eukaryota}

Microbial Control of Black Flies (Diptera: Simuliidae) With Bacillus thuringiensis subsp. israelensis

Aminoacids (in SoyBeans)
