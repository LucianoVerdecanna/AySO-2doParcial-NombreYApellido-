lsblk
sudo fdisk /dev/sdc
lsblk
sudo fdisk /dev/sdc
free -h
sudo mkswap /dev/sdc1
sudo swapon /dev/sdc1
cat /proc/swaps
swapon -s
sudo mkfs.ext4 /dev/sdc1
sudo swapon /dev/sdc2
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc5
sudo mkfs.ext4 /dev/sdc6
sudo fdisk /dev/sdc
sudo fdisk -l
sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
sudo pvs
sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
sudo vgs
sudo pvs
sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
sudo lvcreate -L 1G vgDevelopers -n lvTesters
sudo lvcreate -L .9G vgDevelopers -n lvDevops
sudo lvcreate -L 2G vgAdmin -n lvAdmin
sudo lvs
sudo lvcreate -L 2G vgAdmin -n lvAdmin
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin
sudo lsblk -f
cat /dev/mapper/vgDevelopers-lvDevelopers:
cat /dev/mapper/vgDevelopers-lvDevelopers
sudo cat /dev/mapper/vgDevelopers-lvDevelopers
sudo lvcreate -L 1G vgAdmin -n lvAdmin
sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin
sudo mkdir /mnt/lvDevelopers
sudo mkdir /mnt/lvTesters
sudo mkdir /mnt/lvDevops
sudo mkdir /mnt/lvAdmin
sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin
df -h
lsblk -f