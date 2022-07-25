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


#################################### upd2 (notebook)

vsyscal            - disabled
kernel crash dumps - disabled
[ ]   Jailhouse non-root cell support        - disabled                                                     │
[ ]   ACRN Guest support                  - disabled                                                               │
CONFIG_IA32_EMULATION                    - disabled 32 bit legacy programs
CONFIG_KPROBES:        disabled
CONFIG_TRIM_UNUSED_KSYMS:                      enabled
CONFIG_BLK_DEBUG_FS:                 disabled
CONFIG_RXKAD:                      disabled
CONFIG_CFG80211_CRDA_SUPPORT:            enabled
CONFIG_MAC80211_MESSAGE_TRACING:           disabled
CONFIG_EFI_DISABLE_RUNTIME:                                  enabled

