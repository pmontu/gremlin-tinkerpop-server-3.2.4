wget -O /tmp/java/java.tar.gz "http://javadl.oracle.com/webapps/download/AutoDL?BundleId=220305_d54c1d3a095b4ff2b6607d096fa80163"
cd /tmp/java/
tar zxvf java.tar.gz
mv ./jre1.8.0_131 /jre1.8.0_131
ln -s /jre1.8.0_131/bin/java /usr/local/bin/java

cd /apache-tinkerpop-gremlin-server-3.2.4
bin/gremlin-server.sh -i org.apache.tinkerpop gremlin-python 3.2.4
nohup bin/gremlin-server.sh conf/gremlin-server-modern-py.yaml > /dev/null 2>&1 &

cd /apache-tinkerpop-gremlin-server-3.2.4 && nohup bin/gremlin-server.sh conf/gremlin-server-modern-py.yaml > /dev/null 2>&1 &
