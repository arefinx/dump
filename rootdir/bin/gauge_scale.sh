#!/vendor/bin/sh

scale=`cat /sys/class/asuslib/fg_soc_remap_scale`

setprop persist.vendor.battery.scale "$scale"

setprop vendor.battery.scale.update "0"

echo "persist.vendor.battery.scale $scale" > /dev/kmsg