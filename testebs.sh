sudo su -
echo "starting ebs volume"
lsblk
df -h
echo "=========Drive========="
#Create Mount Directory
mkdir /newdata
#Format the drive
#sudo mkfs -t ext4 /dev/xvdb
#mount
#mount -L /dev/xvdb /newdata
#Adding entry in fstab reboot mount
echo "display blkid file"
#blkid > ne
#cat ne
#uid=$(cat ne | grep /dev/xvdb |awk '{ print $2 }' | cut -f2 -d"=" | sed 's/.$//; s/^.//')
#echo "UUID=$uid /newdata               ext4      defaults     0 0" >> /etc/fstab
#echo $uid
#mount /newdata
echo "=========Drive Added===="

#Change to New Drive
pwd
#cd /newdata/
mkdir -p /newdata/ebsnew/
df -h
#df -h | grep newdata
lsblk
#pwd
cd /newdata/ebsnew/
#pwd
wget https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/awslogs-agent-setup.py
ls
echo "done"
