set -ux

if [ "$guest_additions_mode" = "disable" ]; then
    exit 0
fi

#
# packages need to install VBGA
#
dnf -y install bzip2 perl kernel-devel-`uname -r` gcc dkms

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
cd /tmp
mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /home/vagrant/VBoxGuestAdditions_*.iso

