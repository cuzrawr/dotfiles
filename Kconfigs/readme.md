####

	Currently this configs require XanMod kernel.
	
	https://xanmod.org

####
	Intel only!
        Thinkpad Hard Drive Active Protection System (hdaps)    - disabled


####
	unsorted:

	CONFIG_DEVTMPFS_SAFE=y enabled
Sysrq disabled
KGDB  disabled
KFENCE disabled
/proc/sched_debug disabled

CONFIG_IO_STRICT_DEVMEM  eNABLED   =  /dev/mem restrict

CONFIG_PUNIT_ATOM_DEBUG  disabled

ORC unwinder   =  default unwinder set

CONFIG_X86_DEBUG_FPU      disabled

CONFIG_EARLY_PRINTK_USB_XDBC   = disabled
CONFIG_EARLY_PRINTK_DBGP   =  disabled
___
CONFIG_INIT_ON_ALLOC_DEFAULT_ON   =  expiremental  disabled ( less secure )


some industry protocols disabled
CONFIG_X86_MCE_INJECT:   disabled

CONFIG_X86_CHECK_BIOS_CORRUPTION:     enabled


