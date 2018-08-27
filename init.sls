# In init file we specify what services needs to be installed. After installation, we make sure that the service is running

install_apache:
  pkg.installed:
    - name: apache2
  service.running:
    - name: apache2
    - enable: true      # This makes sure that the apache2 service is running