
# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
        echo "** Trapped CTRL-C. Please wait."
	tset
	exit 0
}

#echo -ne "** Press mouse button."

neofetch --speed_type scaling_current --crop_mode normal --crop_offset west --size 69% --backend w3m --loop --gap 0 --source ~/Pictures/IMG/sticker.png | lolcat -h 0.2 -v 0 -b -r
