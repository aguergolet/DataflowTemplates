#!/bin/bash
mvn clean package -Dimage=${TARGET_GCR_IMAGE}      \
	-Dbase-container-image=${BASE_CONTAINER_IMAGE}  \
	-Dbase-container-image.version=${BASE_CONTAINER_IMAGE_VERSION}           \
	-Dapp-root=${APP_ROOT}        \
	-Dcommand-spec=${COMMAND_SPEC}   \
	-am -pl ${TEMPLATE_MODULE} -DskipTests=true  -Pvalidaterelease \
	-Dbeam.version=2.42.0 \
	-Dbeam.release.repo=https://repository.apache.org/content/repositories/orgapachebeam-1286
