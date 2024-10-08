# SQLite: A Full-Featured Embedded DataBase Engine

(My code, databses, and are notes to be hosted as a branch at: https://github.com/proyecto-eden-3-esferas/SQLite/.)

SQLite is both:
- A DataBase Management System (DBMS), and
- A C library to be compiled and linked into executables (no dependencies on dynamic libraries) that go on to become specialized DBMS's.


# SQLite's Good Points

- SQLite distribution code is small, so it can be included in your application. (Below I explain that I just build an SQLite.o object file and link it in.)

- When you run it on the command line, it creates one database file in the current directory by default. This makes your databases absolutely carriable.

- It is written in standard C and used as C code.

- It runs on Linux, Windows MacOS... Yet this project is initially centred on Linux.


# Install(ed) Packages on Debian-Based Linux (`.deb` packages)

1. `sqlite3`
SQLite is a C library that implements an SQL database engine.
Programs that link with the SQLite library can have SQL database
access without running a separate RDBMS process.

2. `sqlite3-doc` (28MB of documentation)
- /usr/share/doc/sqlite3/index.html
- /usr/share/doc/sqlite3/c3ref/

3. `sqlite3-tools`
This package contains various tools such as:
- /usr/bin/showdb
- /usr/bin/showjournal
- /usr/bin/showstat4
- /usr/bin/showwal
- /usr/bin/sqldiff
- /usr/bin/sqlite3_analyzer

9MB downloaded
33MB additional disk space

4. `libsqlite-dev`
- /usr/include/sqlite3.h
- /usr/include/sqlite3ext.h


# Procedures

Create a DB first:

```
  sqlite3   mydata.db
```

Actually, `man sqlite3` provides enough information to get started.


# Compiling as C++ (GNU ToolChain)

Essentially, I create an object file (`sqlite3.o`) and link it into the executable. The main program just includes the header file (`sqlite3.o`).
So I build with a line like:

```
g++ -std=c++11 -o examplepp SQLite.ex00.cpp sqlite3.o
```
This builds an executable (`examplepp`) that already showcases many of the features of SQLite... it executes SQL code.


# Projects

1. Use a database as an object store, only to some extent. Well, the class code should be written carefully to handle serialization. All classes might be made derived from some `SQLObject` class
```
template <typename OBJ>
class SQLObject {
public:
  unsigned int id;
  virtual void load();
  virtual void store();
  bool changed;
  //
  OBJ obj;
  SQLObject(unsigned int id);
};
```

It would be easy to serialize classes without references, pointers o composite members (struct-like objects, containers etc.)


2. A zettelkasten application:
A table would hold the text of the notes. Other tables would handle links from a note to other notes, with some explanation of the relationship between the source and the target note. Another table might hold relationships with their description and their arity ("next", "previous", "is an example of", "contradicts", "relevant quote" and so on.).

At an advanced, further stage, I would like to deal with notes whose text excedes the alloted number of characters, typically through VARCHAR(NNN). This is a general SQL issue. It is inefficient to define a slot size capable of accomodating the largest imaginable piece of text.


3. An INSERT-generator:

Given a database, SQL code for inserting records or rows into a database is generated. The reverse, reading an SQL file and defing and populating a database would be fairly straightforward. (You may name it "SQL-interpreter".) It would be desirable for the code generated to be "pretty": indented consistently, without redundant space characters, and so on.


4. An Intelligent Agenda Manager (*intellegenda*)


- deadlines, appointments, windows or periods (dates)

- forthcoming events, shows etc. which are intesting to attend, view, listen to...

- (intimate/private/public) diary, day by day

- addresses, webpages, and telephone numbers (contacts for people, shops, organizations, websites...)


- view by date, person, field



- notes (texts, free format, they bear a title and a date, zettelkasten-like)

- pieces of advice

- quotes (by others; short and long)


- TODOs (tasks; linked to dates such as deadlines, appointments and periods)

- TOBUYs (prices, features, links to webpages, too; flexible, first come first served or FIFO)


- new words (monolingual)

- word translations between two languages (such as: the German for "home" is "Wohnung")

- texts to translate (into or from your mother tongue or from/into a foreign language)



- Ideas (your own ideas to develop; they may overlap your notes)

- Themes (your own ideas as well as materials from elsewhere, possibly organized in sections and subsections, with a TOC and so on)

- Books to read

- Some outstanding, eternal themes are (one's) health, (one's) food, (one's) religious or spiritual life...


- templates

- a mechanism for including pieces of text or information




5. A RoleGraph:

A RoleGraph is a hypergraph where each link has as many defined roles as its arity. Take a Prolog predicate such as `love/2`. The first argument of `love/2` has role "lover" and the second argument has role "loved".

A relational table holding binary relationships between entities could be built with just three columns: predicate, first_argument, and second_argument.

For n-ary relationships (the general case) you would need:
- a table for holding relationship instances (columns ID, and relationship class, such as "love")
- another table holding three columns: relationship_instance, entity, role (its role in the relationship)
You would also want to have:
- a table for matching relationship class ID to its name or description
- a table for matching a role ID to its name or description


6. A General DataBase (World)

Some tables:

- `to_be_processed`: text (NOT NULL), field

- `fields`: field, description, belongs_in_field

- `terms`: definitions
- `translations`: term, termlang, translation, translationlang
- `languages`: language, code
- `abbreviations`: word, abbreviation

- `objects`: with fields object/name, description...

- `roles`: role name, description, arity (DEFAULT 1)
- `roles_in_relationships`: matches roles to relationships

- `relationships`: name, description, arity

- `binary_related`: left_obj, right_obj, relationship, left_role, right_role
