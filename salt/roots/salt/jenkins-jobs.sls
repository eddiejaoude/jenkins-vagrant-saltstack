include:
  - jenkins
  
jenkins.job.opg.core.public.domain.model:
  cmd:
    - wait
    - name: jenkins-cli -s http://localhost:8080 create-job opg-core-public-domain-model < /var/www/jenkins/jobs/opg-core-public-domain-model.xml
    - watch:
      - sls: jenkins
