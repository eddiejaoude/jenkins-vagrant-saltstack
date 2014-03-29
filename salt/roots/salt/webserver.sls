apache2:
    pkg:
        - installed
    service:
        - running
        - enable: True
        - reload: True

apache2-modrewrite:
    cmd.run:
        - name: |
            a2enmod rewrite
            service apache2 restart
