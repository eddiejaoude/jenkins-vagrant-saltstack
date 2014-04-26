jenkins:
  pkgrepo.managed:
    - humanname: Jenkins Debian
    - name: deb http://pkg.jenkins-ci.org/debian binary/
    - key_url: http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key  
  pkg.latest:
    - refresh: True
    - require:
      - pkgrepo: jenkins
  service.running:
    - enable: True
    - watch:
      - pkg: jenkins
     
jenkins-restart:
  module:
    - wait
    - name: service.restart
    - m_name: jenkins
    - require:
      - pkg: jenkins