jenkins:
    cmd.run:
        - name: wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
        - name: sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
    pkg:
        - installed
    service.running:
        - refresh: True
        - enable: True
        - reload: True

jenkins.plugin.githubplugin:
    cmd.run:
        - name: jenkins-cli -s http://localhost:8080 install-plugin github
jenkins.plugin.greenballs:
    cmd.run:
        - name: jenkins-cli -s http://localhost:8080 install-plugin greenballs
jenkins.restart:
    cmd.run:
        - name: jenkins-cli -s http://localhost:8080 restart