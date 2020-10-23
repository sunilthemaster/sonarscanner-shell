#!/bin/bash

set -e

if [ -n ${INPUT_EXCLUSIONS} ]; then
{
    sonar-scanner \
        -Dsonar.host.url=${INPUT_HOST} \
        -Dsonar.login=${INPUT_LOGIN} \
        -Dsonar.projectKey=${INPUT_PROJECTNAME} \
        -Dsonar.projectName=${INPUT_PROJECTNAME} \
        -Dsonar.sources=${INPUT_PROJECTBASEDIR} \
        -Dsonar.exclusions="${INPUT_EXCLUSIONS}"
}
else
{
    sonar-scanner \
        -Dsonar.host.url=${INPUT_HOST} \
        -Dsonar.login=${INPUT_LOGIN} \
        -Dsonar.projectKey=${INPUT_PROJECTNAME} \
        -Dsonar.projectName=${INPUT_PROJECTNAME} \
        -Dsonar.sources${INPUT_PROJECTBASEDIR}
}
fi
