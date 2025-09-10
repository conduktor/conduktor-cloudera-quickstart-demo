#!/bin/bash

export CDK_STACK="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# docker compose \
#   --profile kafka \
#   --profile connect \
#   --profile gateway-passthrough \
#   --profile gateway \
#   --profile application \
#   down \
#     --remove-orphans \
#     --volumes

docker compose down

docker compose down \
    --remove-orphans \
    --volumes