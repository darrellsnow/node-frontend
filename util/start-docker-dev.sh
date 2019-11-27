#!/usr/bin/env bash

docker build -f Dockerfile.dev -t latest-dev . \
&& docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app --name frontend latest-dev


