#Since the Config file will be updated, it is necessary to restart the apache service for the changes to take effect

restart_apache:
  module.wait:                  #
  - name: service.restart       # This specifies to restart the service
  - m_name: apache2             # Apache 2 service to be restarted when --
  - watch:
    - apache_configuration      # -- there is change to the apache_configuration state in config.sls
