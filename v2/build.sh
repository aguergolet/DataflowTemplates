#!/bin/bash
mvn clean install -f ../it/pom.xml

mvn clean package -Dimage=${TARGET_GCR_IMAGE}      \
	-Dbase-container-image=${BASE_CONTAINER_IMAGE}  \
	-Dbase-container-image.version=${BASE_CONTAINER_IMAGE_VERSION} \
	-Dapp-root=${APP_ROOT}        \
	-Dcommand-spec=${COMMAND_SPEC}   \
	-am -pl ${TEMPLATE_MODULE} -DskipTests=true
