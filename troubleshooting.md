
```
# chsh -s /bin/sh
-bash: chsh: command not found
```
Resolution:
```
# sudo dnf -q provides '*/chsh'
util-linux-user-2.32.1-8.el8.x86_64 : libuser based util-linux utilities
Repo        : Local-Base
Matched from:
Filename    : /etc/pam.d/chsh
Filename    : /usr/bin/chsh
Filename    : /usr/share/bash-completion/completions/chsh
```

```
# sudo dnf install util-linux-user -y 
```
Refer:  https://forums.centos.org/viewtopic.php?f=54&t=73864