sudo su -
echo "starting ebs volume"
lsblk
df -h
echo "=========Drive========="
#Create Mount Directory
mkdir /data
#Format the drive
sudo mkfs -t ext4 /dev/xvdb
#Adding entry in fstab reboot mount
echo "/dev/xvdb       /data   auto    defaults,noatime     0       0" >> /etc/fstab

echo "=========Drive Added===="

#Change to New Drive
pwd
cd /data/
mkdir -p /data/ebsnew/
df -h | grep data
lsblk
pwd
cd /data/ebsnew/
pwd
wget https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/awslogs-agent-setup.py
ls
echo "done"
