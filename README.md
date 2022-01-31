# ansible-role-libretime

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
```

## License

See the `LICENSE` file for details.
