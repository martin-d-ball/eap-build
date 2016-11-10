#!/bin/bash
BUILD_ROOT=$PWD
cd src/missing_dependencies/7.0.2/core-feature-pack
$BUILD_ROOT/$1/tools/maven/bin/mvn install -s $BUILD_ROOT/src/settings.xml -DskipTests -Dcheckstyle.skip=true | tee -a ../build.log

