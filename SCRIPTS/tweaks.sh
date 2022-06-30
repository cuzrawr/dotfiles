#
# This settings are apply only once
#

#
# Test lazytime
#
tune2fs -l
# #tune2fs -E mount_opts="lazytime" /dev/sdXX
debugfs -w -R "set_super_value mount_opts data=writeback,lazytime" /dev/sda5

tune2fs -l

#
# check
#
chattr +i ~/.config/xfce4/xfce4-screenshooter

#
# f2fs hot list
#
# -E "db,rng,pyi,h,save,dic,lck,lock,bin,cc,c,cpp,h,a,o,asm,deps,pl,rb,am,key,dat,conf,cnf,rc,xrdb,gpg,mime,yml,yaml,ssh,dirs,tmp,so"
# as an example:
# mkfs.f2fs -f -E "db,rng,pyi,h,save,dic,lck,lock,bin,cc,c,cpp,h,a,o,asm,deps,pl,rb,am,key,dat,conf,cnf,rc,xrdb,gpg,mime,yml,yaml,ssh,dirs,tmp,so" -l LABEL /dev/sdXX

#
# my rsync variant to clone OS
#
rsync -aHAXvxr --progress /from/ /to/

#
# fix random icons position each boot
#
chattr +i ~/.config/xfce4/desktop

#
# set brightness
#
pkexec /usr/bin/xfpm-power-backlight-helper --set-brightness 1

#
# librewolf install with skipinteg checks
#
yay -S --mflags --skipinteg librewolf-bin
#
#    Remember to check for changes in /usr/lib/librewolf/librewolf.cfg.pacnew
#    as those will not automatically overwrite your existing librewolf.cfg.
#
#    We would encourage you to migrate your own changes to the new overrides file
#    at ~/.librewolf/librewolf.overrides.cfg instead, so making changes directly
#    in your librewolf.cfg is not necessary anymore (in most cases at least).
#
#    Check out https://gitlab.com/librewolf-community/settings/-/merge_requests/13
#    for more information on this.

#
# Arch clean tips
#
rm /var/lib/pacman/db.lck
pacman -Sc
echo "Run this to remove unused packages"
echo 'pacman -R $(pacman -Qtdq)'

#
# disable & mask systemd services
#
systemctl disable lvm2-lvmpolld.socket
systemctl disable systemd-coredump.socket
systemctl mask systemd-coredump.socket
systemctl mask lvm2-lvmpolld.socket

systemctl disable cryptsetup.target
systemctl mask cryptsetup.target

#
# docker clean all
#

# Stopping all the containers returned from the list of IDs, which in this case is all of the actively running containers.
docker stop $(docker ps -q)

# Cleanup the volumes that any the database or related images/containers may have left behind.
docker volune prune

# Removing the containers that are actively running and stopped.
docker rm $(docker ps -aq)

# Removing all of the container images by their respective ID.
docker rmi $(docker images -q)

# Tweak to force remove all images.
docker rmi $(docker images -q) -f

##
##
##

## (see /etc/fstab)
#  this folders should be cleaned:
# rm -Rf /root/.ssr
# rm -Rf /root/.local
# rm -Rf /root/.ssh
# rm -Rf /root/.pki
# rm -Rf /root/.run
# rm -Rf /root/.gnupg
# rm -Rf /root/.cache
# mv /root/.config /root/.config_old
##  (see /etc/fstab)
#
# screnlock
#
# install screen locker
pacman -S i3lock
# and setup in user session
xfconf-query --create -c xfce4-session -p /general/LockCommand -t string -s "i3lock -c 223344 -i /etc/lxdm/background.png -e -p win"

# "/usr/bin/xflock4" is a script.
