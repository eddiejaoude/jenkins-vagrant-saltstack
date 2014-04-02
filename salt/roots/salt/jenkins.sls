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
