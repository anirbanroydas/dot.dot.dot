alias usb1='sudo mkdir /Volumes/usb1'
alias usb2='sudo mkdir /Volumes/usb2'
alias usb3='sudo mkdir /Volumes/usb3'

alias mount1='sudo mount -t ntfs-3g /dev/disk1s2 /Volumes/usb1'
alias mount2='sudo mount -t ntfs-3g /dev/disk2s2 /Volumes/usb2'

alias m1='sudo mount -t ntfs -o rw,auto,nobrowse /dev/disk1s2 /Volumes/usb1/'
alias m2='sudo mount -t ntfs -o rw,auto,nobrowse /dev/disk2s2 /Volumes/usb2/'
alias m3='sudo mount -t ntfs -o rw,auto,nobrowse /dev/disk3s2 /Volumes/usb3/'

alias um1='sudo umount /Volumes/usb1'
alias um2='sudo umount /Volumes/usb2'
alias um3='sudo umount /Volumes/usb3'

alias checkusb='ls /dev/ | grep disk'

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
###  After update to OS X 10.11 EL Capitan, This link is broken and thus removing
###PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

export PATH
_byobu_sourced=1 . /usr/local/bin/byobu-launch 2>/dev/null || true
