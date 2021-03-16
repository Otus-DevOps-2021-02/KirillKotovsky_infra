# KirillKotovsky_infra
KirillKotovsky Infra repository

bastion_IP = 178.154.210.3<br>
someinternalhost_IP = 10.128.0.28<br>

 Connect to remote server (someinternalhost) through jump server (bastion) in one command:<br>
        `ssh -J appuser@178.154.210.3 appuser@10.128.0.28`<br>

 Configure /etc/ssh/ssh_config for add alias to ssh connection<br>
 `Host someinternalhost`<br>
        `Hostname 178.154.210.3`<br>
        `Port 22`<br>
        `User appuser`<br>
        `IdentityFile /home/kot/.ssh/appuser`<br>
        `RemoteCommand ssh 10.128.0.28`<br>
        `RequestTTY force`<br>
        `ForwardAgent yes`
