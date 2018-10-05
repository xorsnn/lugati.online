#!/bin/sh

while true
do
  # TODO: let's suppose package.json and yarn.lock are there at the moment
  cp /app/frontend/sources/package.json /app/frontend/package.json && \
    cp /app/frontend/sources/yarn.lock /app/frontend/yarn.lock && \
    cp /app/frontend/sources/server.js /app/frontend/server.js && \
    cd /app/frontend && \
    npm config set prefix "/app/frontend/node_modules" && \
    yarn install && \
    node server.js

  echo "restarting!"
  sleep 5s
done
