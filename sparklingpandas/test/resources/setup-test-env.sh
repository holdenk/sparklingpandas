#!/bin/bash
if [ -z "$SPARK_HOME" ]; then
   echo "$(tput setaf 1)Error: SPARK_HOME is not set, can not run tests.$(tput sgr0)"
   exit -1
fi

JARS=`ls ./target/scala-2.10/*.jar`
if [ -z "$JARS" ]; then
    echo "No Sparkling pandas assembly jar found, please build with sbt/sbt assembly"
fi
PYSPARK_SUBMIT_ARGS="--jars $JARS --driver-class-path $JARS pyspark-shell"
PYTHON_PATH=./../../../..
