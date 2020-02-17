dnf update -y
#dnf group install -y gnome-desktop-environment
dnf group install -y --allowerasing "Fedora Workstation"
systemctl set-default graphical

