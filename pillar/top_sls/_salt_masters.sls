  '__SALT_MASTER_1_NAME__':
    - pkg.ssh_keys.__VENDOR__.backup_servers
    - pkg.tz.__DEFAULT_TZ__
    - pkg.locale.en_US_UTF-8
    - users.__VENDOR__.admins
    - ufw_simple.salt_master_non_std_ports
    - rsnapshot_backup.__CLIENT__.salt_masters_local
    - cmd_check_alert.salt-master
    - cmd_check_alert.salt-minion
    - salt.master
  
  '__SALT_MASTER_2_NAME__':
    - pkg.ssh_keys.__VENDOR__.backup_servers
    - pkg.tz.__DEFAULT_TZ__
    - pkg.locale.en_US_UTF-8
    - users.__VENDOR__.admins
    - ufw_simple.salt_master_non_std_ports
    - rsnapshot_backup.__CLIENT__.salt_masters_local
    - cmd_check_alert.salt-master
    - cmd_check_alert.salt-minion
    - salt.master
