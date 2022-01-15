# Dev Machine Init

This Ansible playbook is used to initially setup a dev machine. It's currently used within WSL2 (Ubuntu 20.04) but should also work on a regular machine/vm and probably on all Debain based distributions.

## Prerequisite

- Ansible (`python3 -m pip install ansible`)
- `sudo`

## Usage

> Be sure to execute the playbook under **your** user and **not** root

```bash
ansible-playbook -K playbook.yml
```

`-K` will foces you to provide your password (`sudo`) to run some tasks
