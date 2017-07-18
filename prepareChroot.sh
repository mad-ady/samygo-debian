#!/mnt/bin/sh -x
LO=/dev/loop293
IMG=/dtv/usb/sdb1/debian.img

if [ ! -d "/mnt/debian" ]; then
	mkdir /mnt/debian
fi

losetup $LO $IMG
mount $LO /mnt/debian
cp /mtd_rwarea/resolv.conf /mnt/debian/etc/resolv.conf
cp /etc/hosts /mnt/debian/etc/hosts

#mount TV filesystems
mount -o bind / /mnt/debian/tv
mount -o bind /proc /mnt/debian/proc
mount -o bind /sys /mnt/debian/sys
mount -o bind /dtv /mnt/debian/tv/dtv
mount -o bind /dtv/usb/sdb1 /mnt/debian/tv/dtv/usb/sdb1

echo "*** Run the following command to attach to the chroot environment ***"
echo "chroot /mnt/debian/ /bin/bash"
