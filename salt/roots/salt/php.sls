python-software-properties:
    pkg.installed

php5_ppa:
  pkgrepo.managed:
    - ppa: ondrej/php5

php5-update:
    cmd.run:
        - name: apt-get update && apt-get -y dist-upgrade

pkgs-webserver:
  pkg.latest:
    - pkgs:
      - php5
      - apache2