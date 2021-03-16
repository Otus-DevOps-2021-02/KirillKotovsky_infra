# KirillKotovsky_infra
KirillKotovsky Infra repository

bastion_IP = 178.154.210.3
someinternalhost_IP = 10.128.0.28

# Connect to remote server (someinternalhost) through jump server (bastion) in one command:
#  ssh -J appuser@178.154.210.3 appuser@10.128.0.28
# Configure /etc/ssh/ssh_config for add alias to ssh connection
# Host someinternalhost
#        Hostname 178.154.210.3
#        Port 22
#        User appuser
#        IdentityFile /home/kot/.ssh/appuser
#        RemoteCommand ssh 10.128.0.28
#        RequestTTY force
#        ForwardAgent yes
