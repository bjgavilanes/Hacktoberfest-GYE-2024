#!/bin/sh

# We use this script to transform a ods file to a csv one using
# libreoffice. We need this so we can import a .csv with timetable
# information to .adoc

cd "$(realpath ${1} | xargs dirname)"
libreoffice --convert-to csv "$(basename ${1})"
