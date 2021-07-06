# This settings are apply only once

# Test lazytime
tune2fs -l
tune2fs -E mount_opts="lazytime" /dev/sdXX
tune2fs -l

#
#
# check
chattr +i ~/.config/xfce4/xfce4-screenshooter
