#!/mnt/bin/sh -x
losetup /dev/loop293 /dtv/usb/sda1/debian.img
mount /dev/loop293 /mnt/debian
cp /mtd_rwarea/resolv.conf /mnt/debian/etc/resolv.conf
cp /etc/hosts /mnt/debian/etc/hosts

#mount TV filesystems
mount -o bind / /mnt/debian/tv
mount -o bind /dtv /mnt/debian/tv/dtv
