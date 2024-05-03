
# Setting up New Development Laptop 

Personal notes for setting up development laptop.


- [Create new Admin account in Windows Laptop](#create-new-admin-account-in-windows-laptop)
- [Tools](#tools)
    - [Install via Microsoft Store](#install-via-microsoft-store)
    - [Install via Website](#install-via-website)
- [Set Admin Privileges for Powershell in Windows Terminal](#set-admin-privileges-for-powershell-in-windows-terminal)
- [Install WSL](#install-wsl)
- [Customize bashrc file](#customize-bashrc-file)
- [Sync VS Code Settings](#sync-vs-code-settings)
- [Set Default Browser](#set-default-browser)


## Create new Admin account in Windows Laptop 

Create a new user account in your laptop. 
Link: [Create a local user or administrator account in Windows](https://support.microsoft.com/en-us/windows/create-a-local-user-or-administrator-account-in-windows-20de74e0-ac7f-3502-a866-32915af2a34d#:~:text=check%20your%20version.-,Create%20a%20local%20user%20account,user%20without%20a%20Microsoft%20account.)

If your account was created by another, change the password:

```bash
Start > Settings > Accounts > Sign-in options > Password > Change and follow directions 
```

## Tools  

- Visual Studio Code IDE 
- Windows Terminal 
    - Ubuntu
    - CentOS
    - Azure Shell 
    - Powershell  (with admin privileges)
- Drawio
- Wireshark 
- Winrar
- Adobe Acrobat Reader DC
- WSL
- Messaging (Optional)
    - Slack
    - WhatsApp 

### Install via Microsoft Store 

- Visual Studio Code 
- Windows Terminal 
- Adobe Acrobat Reader DC 

### Install via Website 

- Drawio: https://www.drawio.com/ 
- Wireshark: https://www.wireshark.org/download.html
- Winrar: https://www.win-rar.com/download.html?&L=0 


## Set Admin Privileges for Powershell in Windows Terminal 

Open Windows Terminal and follow the steps below:

```bash
Settings > Profiles > Windows Powershell > Run this profile as Administrator > Turn On 
```

## Install WSL 

Install WSL through Windows Terminal. Open Powershell as Administrator.
Link: [How to install Linux on Windows with WSL](https://learn.microsoft.com/en-us/windows/wsl/install) 

```powershell 
wsl --install
```

Output:

```bash
Installing: Virtual Machine Platform
Virtual Machine Platform has been installed.
Installing: Windows Subsystem for Linux
Windows Subsystem for Linux has been installed.
Installing: Windows Subsystem for Linux
Windows Subsystem for Linux has been installed.
Installing: Ubuntu
Ubuntu has been installed.
The requested operation is successful. Changes will not be effective until the system is rebooted. 
```

Reboot laptop. After reboot, search for Ubuntu and click it.
You'll be prompted to enter a new UNIX username and password. 

```bash
Ubuntu is already installed.
Launching Ubuntu...
Installing, this may take a few minutes...
Please create a default UNIX user account. The username does not need to match your Windows username.
For more information visit: https://aka.ms/wslusers
Enter new UNIX username: johnsmith
New password:
Retype new password:
passwd: password updated successfully
Installation successful!
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

Welcome to Ubuntu 22.04.2 LTS (GNU/Linux 5.15.133.1-microsoft-standard-WSL2 x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage


This message is shown once a day. To disable it please create the
/home/johnsmith/.hushlogin file. 
```


## Customize bashrc file

Add the following in the ~/.bashrc file.

```bash

##########################################################################
#### Any added parameters by admin should be placed below.

#### E: Sets the color of the symlinks to yellow text
LS_COLORS+=':ow=01;33'
#LS_COLORS+=:ow=

#### E: Virtual Env
export WORKON_HOME="~/.virtualenvs"
[[ -x "/usr/local/bin/virtualenvwrapper.sh" ]] && source "/usr/local/bin/virtualenvwrapper.sh"

#### E: Setting bash prompt
PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '

#### E: Aliases
alias ld='ll -d */'
alias lf='ll -p | grep -v /'
alias cl='clear'
alias histgrep='history | grep'
alias gitacp='git add -A; git commit; git push'
alias gitac='git add -A; git commit'
alias gitst='git status'
# alias prodeks='export AWS_PROFILE=specify-name-here'  
alias addalias='vi ~/.bashrc'
alias sr='source ~/.bashrc'
alias dtop='cd /mnt/c/Users/johnsmith/Desktop'
alias dloads='cd /mnt/c/Users/johnsmith/Downloads'
alias gitdir='cd /mnt/c/Users/johnsmith/Desktop/Git'
alias awscreds="sudo vi ~/.aws/credentials"
alias k="kubectl"

# SSH Key
eval `ssh-agent`
ssh-add ~/.ssh/id_rsa
# ssh-add ~/.ssh/add-another-key-here

# NodeJS. NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# kubectl, terraform, ansible, aws
source <(kubectl completion bash)
complete -C '/usr/local/bin/aws_completer' aws
complete -C /usr/bin/terraform terraform
complete -C /usr/local/bin/terraform terraform 
```



## Sync VS Code Settings

Use built-in **Settings Sync** in VS Code. 

For the account, use Github account. 

Link: [Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync#:~:text=You%20can%20turn%20on%20Settings,and%20UI%20State%20are%20supported)


## Set Default Browser 

Set Google Chrome as default browser. 

Link: [Make Chrome your default browser](https://support.google.com/chrome/answer/95417?hl=en&co=GENIE.Platform=Desktop)
