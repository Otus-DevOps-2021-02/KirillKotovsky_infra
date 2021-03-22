# KirillKotovsky_infra
KirillKotovsky Infra repository

bastion_IP = 130.193.44.187

someinternalhost_IP = 10.128.0.28

 Connect to remote server (someinternalhost) through jump server (bastion) in one command:<br>
        `ssh -J appuser@130.193.44.187 appuser@10.128.0.28`<br>

 Configure /etc/ssh/ssh_config for add alias to ssh connection<br>
 `Host someinternalhost`<br>
        `Hostname 130.193.44.187`<br>
        `Port 22`<br>
        `User appuser`<br>
        `IdentityFile /home/kot/.ssh/appuser`<br>
        `RemoteCommand ssh 10.128.0.28`<br>
        `RequestTTY force`<br>
        `ForwardAgent yes`
