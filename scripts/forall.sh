#!/bin/bash
# ****************************************************************************
# * runs the forall jshop2 example
# ****************************************************************************
cd ${HOME}/git-aicoin/jshop2/examples/forall
export CLASSPATH=${HOME}/git-aicoin/jshop2/target/JSHOP2-1.0.jar:${HOME}/git-aicoin/jshop2/antlr.jar:.
java -classpath $CLASSPATH JSHOP2.InternalDomain forall
java -classpath $CLASSPATH JSHOP2.InternalDomain -r problem
javac -classpath $CLASSPATH *.java
java -classpath $CLASSPATH -Xss4096K -Xmx1024M gui
rm forallexample.java; rm forallexample.txt; rm problem.java; rm *.class



