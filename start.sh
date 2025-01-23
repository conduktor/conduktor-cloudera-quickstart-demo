#!/bin/bash

export CDK_STACK="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
#export PYTHONPATH=""${PYTHONPATH}:..""
#. $CDK_STACK/../utils.sh
#. $CDK_STACK/../gw_story_utils.sh
. $CDK_STACK/certificates_utils.sh

clean_certificates
generate_ca_cert
generate_truststore
generate_certificate "conduktor-gateway-passthrough.sni-demo.local" "broker-passthroughmain1546337502.conduktor-gateway-passthrough.sni-demo.local" "broker-passthroughmain1546337526.conduktor-gateway-passthrough.sni-demo.local" "broker-passthroughmain1546337550.conduktor-gateway-passthrough.sni-demo.local"

#docker_login
docker compose up -d --wait

sleep 30

. .env

#kafka-topics --bootstrap-server localhost:6969 --list
