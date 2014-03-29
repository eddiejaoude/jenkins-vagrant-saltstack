python-software-properties:
    pkg:
        - installed

php5_ppa:
  pkgrepo.managed:
    - ppa: ondrej/php5

php5-update:
    cmd.run:
        - name: apt-get update && apt-get dist-upgrade

php5:
    pkg.latest:
        - refresh: True
        - require:
            - pkgrepo: php5_ppa

php5-pkgs:
    pkg.installed:
        - names:
              - php5-mysql
              - php5-curl
              - php5-cli
              - php5-cgi
              - php5-dev
              - php-pear
              - php5-gd
