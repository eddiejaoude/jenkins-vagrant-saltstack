mysql:
    pkg.installed:
        - name: mysql-server
    service.running:
        - enable: True
        - reload: True
#        - watch:
#            - file: /etc/mysql/my.cnf

mysql-client:
    pkg:
        - installed

mysql-conf:
    cmd.run:
        - name: sed -i "s/bind-address.*=.*/bind-address=0.0.0.0/" /etc/mysql/my.cnf
        - name: service mysql restart
        - name: mysql -u root mysql -e "GRANT ALL ON *.* to root@'%' IDENTIFIED BY ''; FLUSH PRIVILEGES;"
