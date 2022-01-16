#!/bin/bash

#run the code formatter
java -jar /home/r/roald/java-format/google-java-format-1.13.0-all-deps.jar --replace $1

# run the style checker
java -jar ~cs2030s/bin/checkstyle.jar -c ~cs2030s/bin/cs2030_checks.xml *.java 
  
