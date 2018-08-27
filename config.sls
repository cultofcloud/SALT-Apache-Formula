# we have to include the apache init state
include:
  - apache  # Name of the salt state folder in /srv/salt

# Set the apache configurations. For Ex: Ports, Permissions and so on.

apache_configuration:
  file.managed:                                        # Use this module in order to work with files
    - name: /etc/apache2/apache2.conf                  # The file on Salt Minions (Debian Systems)
    - source: salt://apache/config/debian-apache2.conf # The salt:// points to the local system which the root dir /srv/salt
    - require:
      - pkg: apache2                                   # To be safe. Making sure that the service is already present on minion before making the conf file changes
