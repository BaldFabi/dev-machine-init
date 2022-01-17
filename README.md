# Dev Machine Init

This Ansible playbook is used to initially setup a dev machine. It's currently used within WSL2 (Ubuntu 20.04) but should also work on a regular machine/vm and probably on all Debain based distributions.

## What will be configured

> If you want to know what happens in detail please look into the [playbook.yml](playbook.yml) file

- Installing some standard packages
  - zsh
  - git
  - sshpass
  - ca-certificates
  - curl
  - apt-transport-https
  - gnupg
  - jq
- Installing additional packages
  - helm
  - kubectl
  - [k9s](https://github.com/derailed/k9s)
  - [havener](https://github.com/homeport/havener)
  - azure-cli
  - golang-1.17
  - nodejs (v17)
  - terraform
  - packer
  - starship
  - [gohugo](https://gohugo.io)
- Configurations
  - Change shell to `zsh`
  - [Starship](https://starship.rs)
  - [fzf](https://github.com/junegunn/fzf)
  - `git` config
  - `vim`rc config

## Prerequisite

- Ansible (`python3 -m pip install ansible`)
- `sudo`

## Usage

> Be sure to execute the playbook under **your** user and **not** root

```bash
ansible-playbook -K playbook.yml
```

`-K` will forces you to provide your password (`sudo`) to run some tasks
