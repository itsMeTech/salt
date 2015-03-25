apache2:
  pkg.installed: []
  service.running:
    - required:
      - pkg: apache2

/var/www/index.html:
  file:
    - managed
    - source: salt://webserver/index.html
    - require:
      - pkg: apache2