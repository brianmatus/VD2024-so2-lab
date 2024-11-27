#!/bin/bash

rm -rf /boot/config-$(make kernelversion)
rm -rf /boot/initrd.img-$(make kernelversion)
rm -rf /boot/System.map-$(make kernelversion)
rm -rf /boot/vmlinuz-$(make kernelversion)
rm -rf /boot/vmlinuz-$(make kernelversion).old
rm -rf /lib/modules/$(make kernelversion)

sudo update-grub2

# TODO remove (*.old, initrd.img, vmlinuz) symlinks maybe?