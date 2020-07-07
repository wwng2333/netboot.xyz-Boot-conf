#!/bin/bash

echo "脚本来自：sm.link"

sleep s 3

yum -y update

curl https://boot.netboot.xyz/ipxe/netboot.xyz.lkrn -o /boot/generic-ipxe.lkrn

echo "
#!ipxe
#/boot/netboot.xyz-initrd
imgfree
dhcp
set dns 8.8.8.8
ifopen net0
chain --autofree https://boot.netboot.xyz
" > /boot/netboot.xyz-initrd

echo "
menuentry 'netboot.xyz' {
set root='hd0,msdos1'
linux16 /boot/generic-ipxe.lkrn
initrd16 /boot/netboot.xyz-initrd
}
" >> /etc/grub.d/40_custom

echo "GRUB_TIMEOUT=60" >> /etc/default/grub

grub2-mkconfig -o /etc/grub2.cfg

echo '配置已完成，请连接VNC后输入重启命令：reboot';
