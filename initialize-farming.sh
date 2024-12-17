#!/bin/bash

# Load database general, then database farming
# No SQL is loaded for non-farming tables

echo "loading general-schema-my.sql at datetime: " && date
sudo mysql -uroot -pmsandbox < ./general-schema-my.sql

echo "loading farming-schema.sql at datetime: " && date
sudo mysql -uroot -pmsandbox < ./farming-schema.sql

echo "done... Loading farming-data.sql at datetime: " && date
sudo mysql -uroot -pmsandbox < ./farming-data.sql

echo "done! at datetime: " && date
