apache2:
  pkg.installed

/var/www/html/index.html:
  file.managed:
    - contents: "Hei maailma" 

apache2.service:
  service.running
