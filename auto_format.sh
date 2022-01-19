#!/bin/bash


SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
#run the code formatter
java -jar $SCRIPTPATH/google-java-format-1.13.0-all-deps.jar --replace $1

# run the style checker
java -jar ~cs2030s/bin/checkstyle.jar -c ~cs2030s/bin/cs2030_checks.xml *.java 


