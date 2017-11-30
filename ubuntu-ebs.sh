sudo su -
du -h
lsblk
echo "=========Drive========="
#Create Mount Directory
mkdir /newdata
#Format the drive
sudo mkfs -t ext4 /dev/xvdb
#Adding entry in fstab reboot mount 
echo "/dev/xvdb       /newdata   auto    defaults,noatime     0       0" >> /etc/fstab

echo "=========Drive Added===="

#Change to New Drive
cd /data/
mkdir -p /data/afsapi/
wget https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/awslogs-agent-setup.py
ls
du -h
lsblk
echo "done"
