# KirillKotovsky_infra
KirillKotovsky Infra repository
testapp_IP = 178.154.204.151
testapp_port = 9292
bastion_IP = 178.154.210.3
someinternalhost_IP = 10.128.0.28

Дополнительное задание:
Запуск инстанса с использованием metadata для развертывания приложеньки при первом запуске<br>
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=2 \
  --core-fraction=5 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --zone ru-central1-a \
  --metadata-from-file user-data=/home/kot/otus/infra/KirillKotovsky_infra/metadata.yml

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
