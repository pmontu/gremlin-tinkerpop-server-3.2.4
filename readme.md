# Instructions

    docker run -d -h 127.0.0.1 pmontu/gremlin-tinkerpop-server-3.2.4

# Information

## contain gremlin-python drivers for gremlin-server

    bin/gremlin-server.sh -i org.apache.tinkerpop gremlin-python 3.2.4

## entrypoint

    bin/gremlin-server.sh conf/gremlin-server-modern.yaml

## connect from python

    from gremlin_python.structure.graph import Graph
    from gremlin_python.driver.driver_remote_connection import DriverRemoteConnection
    graph = Graph()
    g = graph.traversal().withRemote(DriverRemoteConnection('ws://localhost:8182/gremlin','g')
    g.V().toList()

## connecting from gremlin console

    :remote connect tinkerpop.server conf/remote.yaml
