jenkins.plugin.githubplugin:
    cmd:
        - wait
        - name: jenkins-cli -s http://localhost:8080 install-plugin git
        - watch:
            - service: jenkins

jenkins.plugin.greenballs:
    cmd:
        - wait
        - name: jenkins-cli -s http://localhost:8080 install-plugin greenballs
        - watch:
            - service: jenkins

jenkins.restart:
    cmd:
        - wait
        - name: jenkins-cli -s http://localhost:8080 restart
        - watch:
            - service: jenkins
