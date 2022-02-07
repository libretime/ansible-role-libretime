# ansible-role-libretime

> This tool not yet stable, breaking changes may occur without notice.

Deploy `libretime` using Ansible.

## Requirements

See the `requirements.yml` file for details.

## Role Variables

See the `defaults/main.yml` file for details.

## Dependencies

See the `requirements.yml` file for details.

## Example Playbook

```yml
- hosts: server
  roles:
    - role: libretime
      libretime_root_url: https://station.radio.org
      libretime_listen_port: 8080
      libretime_legacy_api_key: a182_your_secret_key_c87f
```

## License

See the `LICENSE` file for details.
