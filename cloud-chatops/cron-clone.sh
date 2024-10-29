#!/bin/sh

# When copying the contents of this file, remember to name the new file using only valid characters [a-zA-Z0-9_-]
# Fullstops '.' and file extenstions are not permitted

set -euo pipefail -x

git fetch  && git clean -fxd && git reset --hard origin/main

cd $HOME/cloud-docker-images/cloud-chatops
docker compose up -d

echo "complete"