#!/bin/sh

echo "Starting phoenix server..."
cd /opt/app/docker_test2 && mix phx.server
echo "...and now its Watch has ended."
