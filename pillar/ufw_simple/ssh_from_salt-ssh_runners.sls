ufw_simple:
  enabled: True
  logging: 'off'
  allow:
    salt-ssh_runners:
      proto: 'tcp'
      from:
        salt-ssh_runner_1: '__SALTSSH_RUNNER_SOURCE_IP__'
      to_port: '22'
