#!/bin/bash
source src/functions.sh
build_core 2.1.2.Final-redhat-1 7.0
WORKING_DIR=$PWD
echo "Working DIR $WORKING_DIR"
echo "Patching wildlfy core feature pack to rebuild a version of 2.1.8.Final-redhat-1"
echo "=== Patching wildlfy core feature pack to rebuild a version of 2.1.8.Final-redhat-1 ===" >> work/build.log
patch -p0 < src/missing_dependencies/7.0.2/wildfly-core-2.1.8.Final-redhat-1.patch >> work/build.log || { echo >&2 "Error applying patch.  Aborting."; exit 1; }
cd work/wildfly-core-parent-2.1.2.Final-redhat-1/core-feature-pack
$WORKING_DIR/$1/tools/maven/bin/mvn install -s $WORKING_DIR/src/settings.xml -DskipTests -Dcheckstyle.skip=true | tee -a $WORKING_DIR/work/build.log

