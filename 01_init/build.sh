#!/bin/bash
# preparation
mkdir -p bin/classes
mkdir -p jar
# javac compile .java file into .class file
javac -sourcepath src -d bin/classes src/HelloWorld.java
# -cp includes classpath
# java runs package.class com.example.HelloWorld
java -cp bin/classes com.example.HelloWorld
# create manifest file
echo "create manifest file..."
echo "Main-Class: com.example.HelloWorld" > myManifest
# create jar
echo "create jar file..."
jar cfm jar/HelloWorld.jar myManifest -C bin/classes .
# java runs jar file
java -jar jar/HelloWorld.jar
# clean
echo "clean build..."
rm -rf bin/classes jar/* -v

