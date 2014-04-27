include:
  - jenkins
  - base

update.jenkins.update.centre:
  cmd.run:
    - name: "curl -L http://updates.jenkins-ci.org/update-center.json | sed '1d;$d' | curl -X POST -H 'Accept: application/json' -d @- http://localhost:8080/updateCenter/byId/default/postBack"
    - require:
      - pkg: curl
      
{% for pluginName in ['git', 'postbuild-task', 'greenballs'] %}

jenkins.plugin.{{ pluginName }}:
  cmd.run:
    - name: jenkins-cli -s http://localhost:8080 install-plugin {{ pluginName }}
    - watch_in:
      - module: jenkins-restart
    - require:
      - pkg: jenkins
      - pkg: jenkins-cli
      - cmd: update.jenkins.update.centre

{% endfor %}
