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
