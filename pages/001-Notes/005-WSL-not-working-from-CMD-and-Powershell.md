
# WSL not working from CMD and Powershell


## Problem 

When trying to run WSL commands from Powershell, I encountered this error. I tried running it from Command Prompt, but got the same response:

```bash
PS C:\Users\Eden.Jose> wsl
Failed to attach disk 'C:\Users\Eden Jose\Desktop\Git\5-Devops_Tools\3-Linux\CentOS8\ext4.vhdx' to WSL2: The system cannot find the path specified.
Error code: Wsl/Service/CreateInstance/MountVhd/HCS/ERROR_PATH_NOT_FOUND
```

## Cause 

I've reformatted my laptop from awhile ago and I've changed the user account name and proceeded with the installation of the old applications. Somehow this broke the WSL since it was still pointing to the directory of the old user account.


## Solution 

Unmount the Current WSL Instance (if applicable)

```bash
PS C:\Users\Eden.Jose> wsl -l -v
  NAME                   STATE           VERSION
* Ubuntu                 Running         2 
  CentOS8                Stopped         2
  docker-desktop-data    Stopped         2 
``` 

**NOTE: THIS COMMAND WILL COMPLETELY UNINSTALL YOUR WSL DISTRO.**

```bash
wsl --unregister Ubuntu 
```

Set Up the New WSL Instance with the VHDX File. Make sure to have the VHDX file stored in C Drive.

```bash
wsl --import Ubuntu --vhd "C:\WSL\Ubuntu" "C:\WSL\Ubuntu\ext4.vhdx" --version 2
```

If this still failed, you may need to reinstall the distribution again.