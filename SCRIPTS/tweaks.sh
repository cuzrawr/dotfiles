# This settings are apply only once

# Test lazytime
tune2fs -l
tune2fs -E mount_opts="lazytime" /dev/sdXX
tune2fs -l

#
#
# check
chattr +i ~/.config/xfce4/xfce4-screenshooter

#
# f2fs hot list
# -E "db,rng,pyi,h,save,dic,lck,lock,bin,cc,c,cpp,h,a,o,asm,deps,pl,rb,am,key,dat,conf,cnf,rc,xrdb,gpg,mime,yml,yaml,ssh,dirs,tmp,so"
# as an example: 
# mkfs.f2fs -f -E "db,rng,pyi,h,save,dic,lck,lock,bin,cc,c,cpp,h,a,o,asm,deps,pl,rb,am,key,dat,conf,cnf,rc,xrdb,gpg,mime,yml,yaml,ssh,dirs,tmp,so" -l LABEL /dev/sdXX


# my rsync variant to clone OS
# rsync -aHAXvxr --progress /from/ /to/

# fix random icons position each boot
chattr +i ~/.config/xfce4/desktop

# set brightness
pkexec /usr/bin/xfpm-power-backlight-helper --set-brightness 1
#

#
#librewolf install
# skipinteg
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
#
