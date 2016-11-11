#!/bin/bash
REAL_CORE_EAP_VERSION="2.1.8.Final-redhat-1"
if [ -f src/wildfly-core-$REAL_CORE_EAP_VERSION.patch ]
        then
            echo "Patching core files"
            echo "=== Patch Core ===" >> work/build.log
            patch -v -p0 < src/wildfly-core-$REAL_CORE_EAP_VERSION.patch
        fi
