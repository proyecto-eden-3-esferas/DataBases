#!/bin/bash
# This script executes an SQL file on the local MySQL server

sudo mysql -uroot -pmsandbox < $1
