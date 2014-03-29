java:
    pkg.installed:
        - name: openjdk-7-jre-headless

elasticsearch:
    cmd.run:
        - name: wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.9.deb
        - unless: dpkg -i elasticsearch-0.90.9.deb
    pkg:
        - installed
    service.running:
        - refresh: True
        - enable: True
        - reload: True