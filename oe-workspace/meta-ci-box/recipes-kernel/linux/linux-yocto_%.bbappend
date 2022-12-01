FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# Enable BTF support
#
# With CONFIG_DEBUG_INFO_BTF=y then the kernel build requires pahole. For
# some reason the kernel class sets PAHOLE to false so, in addition to
# sorting out the dependencies, we also have to fixup the crazy in the
# kernel class.
#
SRC_URI += "file://debug_info_btf.cfg"
DEPENDS:append = " pahole-native"
EXTRA_OEMAKE:remove = "PAHOLE=false"

# Enable IKHEADERS
# For: core-image test (required by some BCC cc test suite)
SRC_URI += "file://ikheaders_bcc.cfg"
