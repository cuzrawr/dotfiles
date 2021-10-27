mount -t proc /proc proc/
mount -t sysfs /sys sys/
mount --rbind /dev dev/
mount --rbind /run run/
# optional EFI
# mount --rbind /sys/firmware/efi/efivars sys/firmware/efi/efivars/
chroot ${PWD} /bin/bash