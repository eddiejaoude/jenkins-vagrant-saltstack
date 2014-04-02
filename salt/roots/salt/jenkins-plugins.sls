jenkins.plugin.githubplugin:
    salt.states.cmd.wait:
        - name: jenkins
        - onlyif: jenkins
    cmd.run:
        - name: jenkins-cli -s http://localhost:8080 install-plugin git
jenkins.plugin.greenballs:
    cmd.run:
        - name: jenkins-cli -s http://localhost:8080 install-plugin greenballs

jenkins.jobs:
    cmd.run:
        - name: jenkins-cli -s http://localhost:8080 create-job Initial < /var/www/github/jenkins-vagrant-saltstack/jenkins/job-config.xml

jenkins.restart:
    cmd.run:
        - name: jenkins-cli -s http://localhost:8080 restart
