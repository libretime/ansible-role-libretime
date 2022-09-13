# ansible-role-libretime

Deploy `libretime` using Ansible.

> Starting with LibreTime `3.0.0-alpha.12`, the `ansible-role-libretime` role will only support installation for the latest versions and the `main` development branch of LibreTime.

## Requirements

See the `requirements.yml` file for details.

## Role Variables

See the `defaults/main.yml` file for details.

### Important Role Variables

- `libretime_public_url` defines the public url used to access Libretime. This variable **MUST** be updated.
- `libretime_api_key` define the api key. This variable **MUST** be updated.

- `libretime_config_template` defines the path to your configuration template file. This variable **SHOULD** be updated. This is used to let you deploy your own configuration file, you can find an example in `templates/libretime/config.yml.j2`.

- `libretime_allow_restart` defines whether the services should be restarted automatically. This variable **SHOULD** be updated. This flag is mainly used to prevent restarting a LibreTime service running in production.
- `libretime_listen_port` defines the port on which the web server will listen.

#### Icecast

- `libretime_icecast_admin_password` defines the Icecast admin password. This variable **MUST** be updated.
- `libretime_icecast_source_password` defines the Icecast source password. This variable **MUST** be updated.
- `libretime_icecast_relay_password` defines the Icecast relay password. This variable **MUST** be updated.

#### PostgreSQL

- `libretime_postgresql_password` defines the PostgreSQL user password. This variable **SHOULD** be updated.

#### RabbitMQ

- `libretime_rabbitmq_password` defines the RabbitMQ user password. This variable **SHOULD** be updated.

#### Checkout

- `libretime_checkout_url` defines the repository url to clone for the installation.
- `libretime_checkout_version` defines the repository reference (hash/tag) to clone for the installation. This variable **SHOULD** be updated.

## Dependencies

See the `requirements.yml` file for details.

## Example Playbook

```yml
- hosts: server
  roles:
    - role: libretime
      libretime_public_url: https://station.radio.org
      libretime_listen_port: 8080
      libretime_api_key: a182_your_secret_key_c87f
      libretime_icecast_admin_password: 0fd9ba81394a91cd178514e3c6788052
      libretime_icecast_source_password: ee41c264d954b92fce44521e02663d89
      libretime_icecast_relay_password: 9702d35f24d77ce8cb2da75ab2298654
```

## License

See the `LICENSE` file for details.
