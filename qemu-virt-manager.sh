#!/bin/sh

sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat libvirt-dinit
sudo dinitctl enable libvirtd
sudo sed -i '$a unix_sock_group = \"libvirt\"' /etc/libvirt/libvirtd.conf
sudo sed -i '$a unix_sock_ro_perms = \"0777\"' /etc/libvirt/libvirtd.conf
sudo sed -i '$a unix_sock_rw_perms = \"0770\"' /etc/libvirt/libvirtd.conf
sudo usermod -aG libvirt docfaizal
sudo dinitctl restart libvirtd
