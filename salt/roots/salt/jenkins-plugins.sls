include:
  - jenkins

jenkins.plugin.githubplugin:
    cmd.run:
        - name: jenkins-cli -s http://localhost:8080 install-plugin git
        - watch_in:
            - module: jenkins-restart
        - require:
            - pkg: jenkins

jenkins.plugin.greenballs:
    cmd.run:
        - name: jenkins-cli -s http://localhost:8080 install-plugin greenballs
        - watch_in:
            - module: jenkins-restart
        - require:
            - pkg: jenkins

