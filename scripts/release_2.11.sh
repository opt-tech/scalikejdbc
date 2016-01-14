#!/bin/sh

cd `dirname $0`/..
rm -rf */target

sbt 'set scalaVersion := "2.11.7"' \
  clean \
  "project core" 'set scalaVersion := "2.11.7"' publish \
  "project config" 'set scalaVersion := "2.11.7"' publish \
  "project interpolation-macro" 'set scalaVersion := "2.11.7"' publish \
  "project interpolation" 'set scalaVersion := "2.11.7"' publish \
  "project library" 'set scalaVersion := "2.11.7"' publish \
  "project jsr310" 'set scalaVersion := "2.11.7"' publish \
  "project syntax-support-macro" 'set scalaVersion := "2.11.7"' publish \
  "project test" 'set scalaVersion := "2.11.7"' publish \
  "project mapper-generator-core" 'set scalaVersion := "2.11.7"' publish 

