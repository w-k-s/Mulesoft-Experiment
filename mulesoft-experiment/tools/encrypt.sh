#!/bin/bash

while getopts k:v: flag
do
    case "${flag}" in
        k) KEY=${OPTARG};;
        v) VALUE=${OPTARG};;
    esac
done

java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool \
string \
encrypt \
Blowfish \
CBC \
${KEY} \
"${VALUE}"
