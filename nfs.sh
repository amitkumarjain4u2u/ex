install -d -m 770 -o nfsnobody -g nfsnobody /OSE_{registry,mysql,wordpress,cassandra}
echo "/OSE_cassandra *(rw,async,all_squash)" >> /etc/exports
echo "/OSE_wordpress *(rw,async,all_squash)" >> /etc/exports
echo "/OSE_registry *(rw,async,all_squash)" >> /etc/exports
echo "/OSE_mysql *(rw,async,all_squash)" >> /etc/exports
systemctl start nfs-server
systemctl enable nfs-server
firewall-cmd --permanent --add-service=nfs
firewall-cmd --reload

