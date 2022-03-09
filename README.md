# Dev Machine Init

This Ansible playbook is used to initially setup Ubuntu running as wsl.

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
  - [glow](https://github.com/charmbracelet/glow)
- Configurations
  - Change shell to `zsh`
  - Enable [Starship](https://starship.rs)
  - [fzf](https://github.com/junegunn/fzf)
  - `git` config
  - `vim`rc config

## Prerequisite

- Ansible (`apt install -y python3-pip && python3 -m pip install ansible`)
- `sudo`

## Usage

> Be sure to execute the playbook under **your** user and **not** root

```bash
ansible-playbook -K playbook.yml
```

`-K` will force you to provide your password (`sudo`) to run some tasks

