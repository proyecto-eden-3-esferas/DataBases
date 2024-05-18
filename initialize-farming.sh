#!/bin/bash

# This excludes loading SQL for for non-farming tables

echo "loading general-schema.sql at datetime: " && date
sudo mysql -uroot -pmsandbox < ./general-schema.sql

echo "loading farming-schema.sql at datetime: " && date
sudo mysql -uroot -pmsandbox < ./farming-schema.sql

echo "done... Loading farming-data.sql at datetime: " && date
sudo mysql -uroot -pmsandbox < ./farming-data.sql

echo "done! at datetime: " && date
