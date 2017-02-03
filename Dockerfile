FROM kibana:4.5.4

COPY plugins/logtrail-4.x-0.1.4.tar.gz /tmp

RUN /opt/kibana/bin/kibana plugin --install logtrail -u file:///tmp/logtrail-4.x-0.1.4.tar.gz

COPY plugins/logtrail.json /opt/kibana/installedPlugins/logtrail
