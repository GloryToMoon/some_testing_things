genfstab -U -p /mnt >> /mnt/etc/fstab
echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8
ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime
hwclock --systohc --utc
systemctl enable dhcpcd.service
useradd -m -g users -G wheel,video -s /bin/bash user
passwd
pacman -S sudo
nano /etc/sudoers
passwd user
bootctl install
echo 'default  arch' >> /boot/loader/loader.conf
echo 'title  BlackArch' > /boot/loader/entries/arch.conf
echo 'linux  /vmlinuz-linux' >> /boot/loader/entries/arch.conf
echo 'initrd  /initramfs-linux.img' >> /boot/loader/entries/arch.conf
echo 'options  root=/dev/sda3 rw' >> /boot/loader/entries/arch.conf

