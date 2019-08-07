#!/bin/bash
# ****************************************************************************
# * runs the oldblocks jshop2 example
# ****************************************************************************
cd ${HOME}/git-aicoin/jshop2/examples/oldblocks
export CLASSPATH=${HOME}/git-aicoin/jshop2/target/JSHOP2-1.0.jar:${HOME}/git-aicoin/jshop2/antlr.jar:.
java -classpath $CLASSPATH JSHOP2.InternalDomain oldblocks
java -classpath $CLASSPATH JSHOP2.InternalDomain -r problem
javac -classpath $CLASSPATH *.java
java -classpath $CLASSPATH -Xss4096K -Xmx1024M gui
rm oldblocks.java; rm oldblocks.txt; rm problem.java; rm *.class



