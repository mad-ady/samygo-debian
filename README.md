# samygo-debian
Debian chroot for SamyGO (Samsung Smart TV H-Series/2014 models), armel, minimal

# Installation
* Combine back the file parts into a gz archive:
```
cat debian.img.split.aa debian.img.split.ab debian.img.split.ac > debian.img.gz
```
* Gunzip debian.img.gz to the root of your SamyGO USB drive. It takes up about 750MB
```
gunzip debian.img.gz
```
* Copy the *.sh scripts to your TV (I placed them in /mnt/scripts/)

# Activation
* Edit prepareChroot.sh and set the correct path to debian.img
* See if you can find a loopback in /dev. I had /dev/loop293 available
* Run prepareChroot.sh
* If all went well run chroot /mnt/debian/ /bin/bash

# Deactivation
* Run disconnectChroot.sh

