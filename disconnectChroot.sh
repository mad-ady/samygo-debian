#!/mnt/bin/sh -x

#umount TV filesystems
umount /mnt/debian/tv/dtv/usb/sdb1
umount /mnt/debian/tv/dtv
umount /mnt/debian/tv

#umount proc, etc
umount /mnt/debian/proc/bus/usb
umount /mnt/debian/proc
umount /mnt/debian/dev/pts
umount /mnt/debian/sys

#umount image
umount /mnt/debian
