# INTRODUCTION

This stash contains JSON documents.

Each %.array.json file contains an array of JSON documents.

They can --and are meant to --be loaded into a database.

You could load all my JSON files about farming, botany and biology into one database or one MongoDB collection,
or only those closely related to farming (crops, herbs).

You could load all my JSON files into one database.


# Viewing and Consulting

You can view my %.json files in a text editor such as kate or notepad++.

Text editors usually have a syntax-highlighting feature,
which makes reading computer languages such as JSON much easier.

Additionally, you can consult and generally manipulate my %.json files through:
- `jq` (JSON query): a command line tool
- `couchdb`: a       JSON DataBase Management System (DBMS)
- `mongodb`: another JSON DataBase Management System (DBMS)
(All three are free of charge.)


# SPECIAL FILES

The latest JSON documents are defined in *assorted.array.json*.

It may hold non-compliant documents or half-finished ones.

JSON templates or schema are held in:
- *templates.json*
- *computing.templates.json*
- *botany.templates.json*
and so on


# ORDINARY FILES

These hold several JSON documents in an array each

## Farming and Biology Files
agricultura.array.json
biology.array.json
botany.terms.array.json
plant_families.array.json
plants.array.json
crops.array.json
herbs.array.json
farming.array.json

## Computing
computing.array.json
linux.array.json
programming.array.json
cpp.array.json

## Other
antropologia.array.json
buddhism.array.json
yoga.array.json


# TODOs

[ ] check up on *farming.crops.json*
[ ] check up on *crops.former.json*

[ ] Is *agricultura.array.json* compliant?

[ ] complete *plant_families.array.json* with all major plant families

[ ] move crops pecan (`"name": "pecan"`) and peanut (`"name": "peanut"`) into *farming.array.json* into *crops.array.json*


# Deviant Formats

Some files hold JSON documents in "deviant" formats, that is they do not adhere to an agreed structure because they were written a long time ago.

Some of them are:
- crops.array.json
- herbs.array.json
