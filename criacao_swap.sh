mkdir /var/swap_area
dd if=/dev/zero of=/var/swap_area/swap bs=8192 count=1024000
ls -lh /var/swap_area
mkswap /var/swap_area/swap
swapon /var/swap_area/swap



