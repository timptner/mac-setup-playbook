# Mac Setup Ansible Playbook

This playbook installs and configures most of the software for my personal use.

## Installation

1. Install Apple's command line tools

```shell
xcode-select --install
```

2. Upgrade pip & install Ansible via pip

```shell
pip3 install --upgrade pip
pip3 install ansible
```

3. Add python executables to PATH variable

```shell
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
```

_This will only be valid for the current terminal session. We will add it again later with .zshrc files._

4. Clone this repository to local drive

```shell
git clone https://github.com/timptner/mac-setup-playbook
```

5. Pull dependencies from ansible galaxy

```shell
ansible-galaxy install -r requirements.yaml
```

6. Run playbook with sudo priviliges

```shell
ansible-playbook main.yaml --ask-become-pass
```

_This will ask you for "BECOME password:". Enter your account password to proceed._

## Further steps

- Login to 1Password
- Login to Firefox & set as default browser
- Login to MEGAsync
- Login to ProtonBridge & install profile
- Login to PDF Expert
- Login to Spotify
- Activate Magnet in System Preferences
- Login to Telegram

## Pending automations

- [ ] Configure synced folders of MEGAsync
- [ ] Setup ssh keys & add to 1Password + GitHub
- [ ] Setup Time Machine backup (including [TimeMachineEditor](https://tclementdev.com/timemachineeditor/))
- [ ] Add dot-Files (Sublime, Zsh, macOS)
- [ ] Configure Sublime (Install Package Controll, LatexTools, LaTeXYZ)
- [ ] Configure Obsidian (Install Plugins: File Explorer Markdown Titles; Config: Show line numbers)
