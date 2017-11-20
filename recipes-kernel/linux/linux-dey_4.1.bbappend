FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}-${PV}:"

SRC_URI_append = " \
    file://0001-Add-r1701-device-trees-to-the-kernel-makefile.patch \
    file://0002-Adding-sharp-mip-display-support.patch \
    file://0003-ccimx6ul-defconfig-configure-imx-sdhci-as-module.patch \
    file://0004-ARM-dts-ccimx6ulstarter-remove-all-interfaces-except.patch \
    file://0005-dts-r1701-Remove-all-unused-interfaces.patch \
    file://0006-dts-r1701-Configure-usbotg1-as-OTG-instead-of-host.patch \
"
KERNEL_MODULE_AUTOLOAD += "g_ether"
KERNEL_MODULE_PROBECONF += "g_ether"
module_conf_g_ether = "options g_ether iProduct=ConnectCore-6UL iManufacturer=Digi"
