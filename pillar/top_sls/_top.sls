# ACHTUNG!!!
# Do not edit /srv/pillar/top.sls directly.
# It is being compiled by concatenating all files within /srv/pillar/top_sls directory.
# Compilation is triggered by post-merge git hook.

base:

  # Common pillars by OS
  'G@os:Ubuntu or G@os:Debian or G@os:CentOS':
    - match: compound
    - vim.vim
    - pkg.common
    - sysadmws-utils.v1_latest
    - notify_devilry.__VENDOR__
    - bulk_log.enabled
    - disk_alert.enabled
    - mysql_queries_log.enabled
    - mysql_replica_checker.enabled
    - pkg.__VENDOR__.forward_root_email
    #salt#- pkg.ssh_keys.__CLIENT__.salt_masters
    #salt-ssh#- pkg.ssh_keys.__CLIENT__.salt-ssh_runners
    #salt#- salt.minion
    - ufw_simple.standard
    #salt#- ufw_simple.ssh_from_salt_servers
    #salt-ssh#- ufw_simple.ssh_from_salt-ssh_runners
    - heartbeat_mesh.__VENDOR__.sender
    - bootstrap.__CLIENT__
    - hosts.__VENDOR__
    - cmd_check_alert.common
  
  'G@os:Windows':
    - match: compound
    #salt#- salt.minion
    - heartbeat_mesh.__VENDOR__.sender
    - hosts.__VENDOR__
