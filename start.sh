#!/bin/bash

cd /apache-tinkerpop-gremlin-server-3.2.4
nohup bin/gremlin-server.sh conf/gremlin-server-modern-py.yaml > /dev/null 2>&1 &

exec "$@"
